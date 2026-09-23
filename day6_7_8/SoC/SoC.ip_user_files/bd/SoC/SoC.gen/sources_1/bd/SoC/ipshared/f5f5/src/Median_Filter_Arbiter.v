`timescale 1ns/1ps

module Median_Filter_Arbiter #(
    parameter MEM_ADDR_BITS = 12,
    parameter BUS_ADDR_BITS = MEM_ADDR_BITS + 1,
    parameter DIM_BITS      = 16
)(
    input  wire                     CLK,
    input  wire                     RST,

    input  wire                     w_addr_valid_i,
    input  wire [31:0]              w_data_i,
    input  wire [BUS_ADDR_BITS-1:0] w_addr_i,

    input  wire                     r_addr_valid_i,
    input  wire [BUS_ADDR_BITS-1:0] r_addr_i,
    output reg  [31:0]              r_data_o,

    // Host -> current input LOAD bank.
    output wire                     input_mem_write_enable_o,
    output wire [MEM_ADDR_BITS-1:0] input_mem_write_addr_o,
    output wire [7:0]               input_mem_write_data_o,

    // Separate Output Memory -> host.
    output wire                     output_mem_read_enable_o,
    output wire [MEM_ADDR_BITS-1:0] output_mem_read_addr_o,
    input  wire [7:0]               output_mem_read_data_i,

    // Command pulses toward FSM & CTRL.
    output wire                     arbiter_load_o,
    output wire                     arbiter_start_o,
    output wire                     arbiter_stop_o,

    output wire [DIM_BITS-1:0]      image_width_o,
    output wire [DIM_BITS-1:0]      image_height_o,
    output wire                     image_config_valid_o,

    // Status from FSM & CTRL.
    input  wire                     LOAD_ready_i,
    input  wire                     READ_ready_i,
    input  wire                     busy_i,
    input  wire                     done_i,
    input  wire [1:0]               load_bank_i,
    input  wire [1:0]               work_session_i,
    input  wire                     datapath_median_mode_i,
    input  wire [DIM_BITS-1:0]      output_row_index_i,
    input  wire [2:0]               state_i
);

    // Address-space convention:
    //   MSB = 0 : pixel memory space, address 0..4095
    //             write -> active Input Bank
    //             read  -> separate Output Memory
    //   MSB = 1 : control/status registers
    localparam [MEM_ADDR_BITS-1:0] WIDTH_REG_ADDR       = 12'h000;
    localparam [MEM_ADDR_BITS-1:0] HEIGHT_REG_ADDR      = 12'h001;
    localparam [MEM_ADDR_BITS-1:0] LOAD_REG_ADDR        = 12'h002;
    localparam [MEM_ADDR_BITS-1:0] START_REG_ADDR       = 12'h003;
    localparam [MEM_ADDR_BITS-1:0] STOP_REG_ADDR        = 12'h004;

    localparam [MEM_ADDR_BITS-1:0] READ_READY_REG_ADDR  = 12'h000;
    localparam [MEM_ADDR_BITS-1:0] BUSY_REG_ADDR        = 12'h001;
    localparam [MEM_ADDR_BITS-1:0] READ_WIDTH_REG_ADDR  = 12'h002;
    localparam [MEM_ADDR_BITS-1:0] READ_HEIGHT_REG_ADDR = 12'h003;
    localparam [MEM_ADDR_BITS-1:0] LOAD_READY_REG_ADDR  = 12'h004;
    localparam [MEM_ADDR_BITS-1:0] DONE_REG_ADDR        = 12'h005;
    localparam [MEM_ADDR_BITS-1:0] LOAD_BANK_REG_ADDR   = 12'h006;
    localparam [MEM_ADDR_BITS-1:0] SESSION_REG_ADDR     = 12'h007;
    localparam [MEM_ADDR_BITS-1:0] MODE_REG_ADDR        = 12'h008;
    localparam [MEM_ADDR_BITS-1:0] OUTPUT_ROW_REG_ADDR  = 12'h009;
    localparam [MEM_ADDR_BITS-1:0] STATE_REG_ADDR       = 12'h00A;

    reg [DIM_BITS-1:0] image_width_r;
    reg [DIM_BITS-1:0] image_height_r;

    reg                     r_addr_valid_r;
    reg                     r_control_space_r;
    reg [MEM_ADDR_BITS-1:0] r_addr_low_r;

    assign input_mem_write_enable_o = w_addr_valid_i &&
                                      !w_addr_i[BUS_ADDR_BITS-1];
    assign input_mem_write_addr_o   = w_addr_i[MEM_ADDR_BITS-1:0];
    assign input_mem_write_data_o   = w_data_i[7:0];

    assign output_mem_read_enable_o = r_addr_valid_i &&
                                      !r_addr_i[BUS_ADDR_BITS-1];
    assign output_mem_read_addr_o   = r_addr_i[MEM_ADDR_BITS-1:0];

    assign arbiter_load_o = w_addr_valid_i &&
                            w_addr_i[BUS_ADDR_BITS-1] &&
                            (w_addr_i[MEM_ADDR_BITS-1:0] == LOAD_REG_ADDR) &&
                            w_data_i[0];

    assign arbiter_start_o = w_addr_valid_i &&
                             w_addr_i[BUS_ADDR_BITS-1] &&
                             (w_addr_i[MEM_ADDR_BITS-1:0] == START_REG_ADDR) &&
                             w_data_i[0];

    assign arbiter_stop_o = w_addr_valid_i &&
                            w_addr_i[BUS_ADDR_BITS-1] &&
                            (w_addr_i[MEM_ADDR_BITS-1:0] == STOP_REG_ADDR) &&
                            w_data_i[0];

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            image_width_r  <= {DIM_BITS{1'b0}};
            image_height_r <= {DIM_BITS{1'b0}};
        end
        else if (w_addr_valid_i && w_addr_i[BUS_ADDR_BITS-1]) begin
            case (w_addr_i[MEM_ADDR_BITS-1:0])
                WIDTH_REG_ADDR:
                    image_width_r <= w_data_i[DIM_BITS-1:0];

                HEIGHT_REG_ADDR:
                    image_height_r <= w_data_i[DIM_BITS-1:0];

                default: begin
                    image_width_r  <= image_width_r;
                    image_height_r <= image_height_r;
                end
            endcase
        end
    end

    assign image_width_o  = image_width_r;
    assign image_height_o = image_height_r;

    // Only WIDTH is constrained by the 4096-deep row bank. HEIGHT is tiled.
    assign image_config_valid_o =
                    (image_width_r  != {DIM_BITS{1'b0}}) &&
                    (image_width_r  <= (1 << MEM_ADDR_BITS)) &&
                    (image_height_r != {DIM_BITS{1'b0}});

    // Read request pipeline. BRAM is synchronous, therefore the request is
    // delayed one cycle before r_data_o consumes output_mem_read_data_i.
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            r_addr_valid_r    <= 1'b0;
            r_control_space_r <= 1'b0;
            r_addr_low_r      <= {MEM_ADDR_BITS{1'b0}};
        end
        else begin
            r_addr_valid_r    <= r_addr_valid_i;
            r_control_space_r <= r_addr_i[BUS_ADDR_BITS-1];
            r_addr_low_r      <= r_addr_i[MEM_ADDR_BITS-1:0];
        end
    end

	always @(*) begin
		r_data_o = 32'b0;

		if (r_addr_valid_r) begin
			if (!r_control_space_r) begin
				r_data_o = {24'b0, output_mem_read_data_i};
			end
			else begin
				case (r_addr_low_r)

					READ_READY_REG_ADDR:
						r_data_o = {31'b0, READ_ready_i};

					BUSY_REG_ADDR:
						r_data_o = {31'b0, busy_i};

					READ_WIDTH_REG_ADDR:
						r_data_o = {{(32-DIM_BITS){1'b0}},
									image_width_r};

					READ_HEIGHT_REG_ADDR:
						r_data_o = {{(32-DIM_BITS){1'b0}},
									image_height_r};

					LOAD_READY_REG_ADDR:
						r_data_o = {31'b0, LOAD_ready_i};

					DONE_REG_ADDR:
						r_data_o = {31'b0, done_i};

					LOAD_BANK_REG_ADDR:
						r_data_o = {30'b0, load_bank_i};

					SESSION_REG_ADDR:
						r_data_o = {30'b0, work_session_i};

					MODE_REG_ADDR:
						r_data_o = {31'b0,
									datapath_median_mode_i};

					OUTPUT_ROW_REG_ADDR:
						r_data_o =
							{{(32-DIM_BITS){1'b0}},
							 output_row_index_i};

					STATE_REG_ADDR:
						r_data_o = {29'b0, state_i};

					default:
						r_data_o = 32'b0;

				endcase
			end
		end
	end

endmodule

`timescale 1ns/1ps

module Median_Filter_Core #(
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
    output wire [31:0]              r_data_o
);

	//ila_debug debug(
	//.clk(CLK),
    //
    //
	//.probe0(w_addr_valid_i),
	//.probe1(w_data_i),
	//.probe2(w_addr_i),
	//.probe3(r_addr_valid_i),
	//.probe4(r_addr_i),
	//.probe5(r_data_o)
	//);

    // ================================================================
    // Arbiter / host side
    // ================================================================
    wire                     input_mem_write_enable_w;
    wire [MEM_ADDR_BITS-1:0] input_mem_write_addr_w;
    wire [7:0]               input_mem_write_data_w;

    wire                     output_mem_host_read_enable_w;
    wire [MEM_ADDR_BITS-1:0] output_mem_host_read_addr_w;
    wire [7:0]               output_mem_host_read_data_w;

    wire arbiter_load_w;
    wire arbiter_start_w;
    wire arbiter_stop_w;

    wire [DIM_BITS-1:0] image_width_w;
    wire [DIM_BITS-1:0] image_height_w;
    wire                image_config_valid_w;

    // ================================================================
    // FSM & CTRL
    // ================================================================
    wire                     datapath_start_w;
    wire                     datapath_median_mode_w;

    wire [1:0]               load_bank_w;
    wire [1:0]               work_top_bank_w;
    wire [1:0]               work_mid_bank_w;
    wire [1:0]               work_bot_bank_w;
    wire [1:0]               copy_bank_w;
    wire [1:0]               work_session_w;
    wire [DIM_BITS-1:0]      output_row_index_w;

    wire LOAD_ready_w;
    wire READ_ready_w;
    wire busy_w;
    wire done_w;
    wire [2:0] state_w;

    // ================================================================
    // Datapath side
    // ================================================================
    wire                     dp_banks_read_enable_w;
    wire [MEM_ADDR_BITS-1:0] dp_banks_read_addr_w;

    wire                     dp_output_write_enable_w;
    wire [MEM_ADDR_BITS-1:0] dp_output_write_addr_w;
    wire [7:0]               dp_output_write_data_w;
    wire                     datapath_done_w;

    reg [7:0] dp_top_data_r;
    reg [7:0] dp_mid_data_r;
    reg [7:0] dp_bot_data_r;
    reg [7:0] dp_copy_data_r;

    // ================================================================
    // Three input BRAM banks
    // ================================================================
    reg                      bank0_we_r, bank1_we_r, bank2_we_r;
    reg [MEM_ADDR_BITS-1:0]  bank0_wa_r, bank1_wa_r, bank2_wa_r;
    reg [7:0]                bank0_wd_r, bank1_wd_r, bank2_wd_r;

    reg                      bank0_re_r, bank1_re_r, bank2_re_r;
    reg [MEM_ADDR_BITS-1:0]  bank0_ra_r, bank1_ra_r, bank2_ra_r;
    wire [7:0]               bank0_rd_w, bank1_rd_w, bank2_rd_w;

    // ================================================================
    // Arbiter
    // ================================================================
    Median_Filter_Arbiter #(
        .MEM_ADDR_BITS (MEM_ADDR_BITS),
        .BUS_ADDR_BITS (BUS_ADDR_BITS),
        .DIM_BITS      (DIM_BITS)
    ) u_Median_Filter_Arbiter (
        .CLK                         (CLK),
        .RST                         (RST),

        .w_addr_valid_i              (w_addr_valid_i),
        .w_data_i                    (w_data_i),
        .w_addr_i                    (w_addr_i),

        .r_addr_valid_i              (r_addr_valid_i),
        .r_addr_i                    (r_addr_i),
        .r_data_o                    (r_data_o),

        .input_mem_write_enable_o    (input_mem_write_enable_w),
        .input_mem_write_addr_o      (input_mem_write_addr_w),
        .input_mem_write_data_o      (input_mem_write_data_w),

        .output_mem_read_enable_o    (output_mem_host_read_enable_w),
        .output_mem_read_addr_o      (output_mem_host_read_addr_w),
        .output_mem_read_data_i      (output_mem_host_read_data_w),

        .arbiter_load_o              (arbiter_load_w),
        .arbiter_start_o             (arbiter_start_w),
        .arbiter_stop_o              (arbiter_stop_w),

        .image_width_o               (image_width_w),
        .image_height_o              (image_height_w),
        .image_config_valid_o        (image_config_valid_w),

        .LOAD_ready_i                (LOAD_ready_w),
        .READ_ready_i                (READ_ready_w),
        .busy_i                      (busy_w),
        .done_i                      (done_w),
        .load_bank_i                 (load_bank_w),
        .work_session_i              (work_session_w),
        .datapath_median_mode_i      (datapath_median_mode_w),
        .output_row_index_i          (output_row_index_w),
        .state_i                     (state_w)
    );

    // ================================================================
    // FSM & CTRL
    // ================================================================
    Median_Filter_FSM_CTRL #(
        .DIM_BITS (DIM_BITS)
    ) u_Median_Filter_FSM_CTRL (
        .CLK                       (CLK),
        .RST                       (RST),

        .arbiter_load_i            (arbiter_load_w),
        .arbiter_start_i           (arbiter_start_w),
        .arbiter_stop_i            (arbiter_stop_w),

        .image_config_valid_i      (image_config_valid_w),
        .image_width_i             (image_width_w),
        .image_height_i            (image_height_w),
        .datapath_done_i           (datapath_done_w),

        .datapath_start_o          (datapath_start_w),
        .datapath_median_mode_o    (datapath_median_mode_w),

        .load_bank_o               (load_bank_w),
        .work_top_bank_o           (work_top_bank_w),
        .work_mid_bank_o           (work_mid_bank_w),
        .work_bot_bank_o           (work_bot_bank_w),
        .copy_bank_o               (copy_bank_w),
        .work_session_o            (work_session_w),

        .output_row_index_o        (output_row_index_w),
        .LOAD_ready_o              (LOAD_ready_w),
        .READ_ready_o              (READ_ready_w),
        .busy_o                    (busy_w),
        .done_o                    (done_w),
        .state_o                   (state_w)
    );

    // ================================================================
    // Input Bank Memories
    //
    // Host writes selected bank during LOAD.
    // During WORK, BRAM outputs go DIRECTLY to Datapath. There is no
    // Memory -> Arbiter -> Datapath return path.
    // ================================================================
    always @(*) begin
        bank0_we_r = 1'b0; bank1_we_r = 1'b0; bank2_we_r = 1'b0;
        bank0_wa_r = {MEM_ADDR_BITS{1'b0}};
        bank1_wa_r = {MEM_ADDR_BITS{1'b0}};
        bank2_wa_r = {MEM_ADDR_BITS{1'b0}};
        bank0_wd_r = 8'b0; bank1_wd_r = 8'b0; bank2_wd_r = 8'b0;

        bank0_re_r = 1'b0; bank1_re_r = 1'b0; bank2_re_r = 1'b0;
        bank0_ra_r = {MEM_ADDR_BITS{1'b0}};
        bank1_ra_r = {MEM_ADDR_BITS{1'b0}};
        bank2_ra_r = {MEM_ADDR_BITS{1'b0}};

        if (LOAD_ready_w && input_mem_write_enable_w) begin
            case (load_bank_w)
                2'd0: begin
                    bank0_we_r = 1'b1;
                    bank0_wa_r = input_mem_write_addr_w;
                    bank0_wd_r = input_mem_write_data_w;
                end

                2'd1: begin
                    bank1_we_r = 1'b1;
                    bank1_wa_r = input_mem_write_addr_w;
                    bank1_wd_r = input_mem_write_data_w;
                end

                default: begin
                    bank2_we_r = 1'b1;
                    bank2_wa_r = input_mem_write_addr_w;
                    bank2_wd_r = input_mem_write_data_w;
                end
            endcase
        end

        if (busy_w && dp_banks_read_enable_w) begin
            bank0_re_r = 1'b1;
            bank1_re_r = 1'b1;
            bank2_re_r = 1'b1;

            bank0_ra_r = dp_banks_read_addr_w;
            bank1_ra_r = dp_banks_read_addr_w;
            bank2_ra_r = dp_banks_read_addr_w;
        end
    end

    Median_Filter_Input_Bank_Memories #(
        .ADDR_BITS (MEM_ADDR_BITS),
        .DATA_BITS (8)
    ) u_Median_Filter_Input_Bank_Memories (
        .CLK                  (CLK),

        .bank0_write_enable_i (bank0_we_r),
        .bank0_write_addr_i   (bank0_wa_r),
        .bank0_write_data_i   (bank0_wd_r),
        .bank0_read_enable_i  (bank0_re_r),
        .bank0_read_addr_i    (bank0_ra_r),
        .bank0_read_data_o    (bank0_rd_w),

        .bank1_write_enable_i (bank1_we_r),
        .bank1_write_addr_i   (bank1_wa_r),
        .bank1_write_data_i   (bank1_wd_r),
        .bank1_read_enable_i  (bank1_re_r),
        .bank1_read_addr_i    (bank1_ra_r),
        .bank1_read_data_o    (bank1_rd_w),

        .bank2_write_enable_i (bank2_we_r),
        .bank2_write_addr_i   (bank2_wa_r),
        .bank2_write_data_i   (bank2_wd_r),
        .bank2_read_enable_i  (bank2_re_r),
        .bank2_read_addr_i    (bank2_ra_r),
        .bank2_read_data_o    (bank2_rd_w)
    );

    // Physical BRAM banks -> logical top/middle/bottom/copy inputs.
    always @(*) begin
        case (work_top_bank_w)
            2'd0: dp_top_data_r = bank0_rd_w;
            2'd1: dp_top_data_r = bank1_rd_w;
            default: dp_top_data_r = bank2_rd_w;
        endcase

        case (work_mid_bank_w)
            2'd0: dp_mid_data_r = bank0_rd_w;
            2'd1: dp_mid_data_r = bank1_rd_w;
            default: dp_mid_data_r = bank2_rd_w;
        endcase

        case (work_bot_bank_w)
            2'd0: dp_bot_data_r = bank0_rd_w;
            2'd1: dp_bot_data_r = bank1_rd_w;
            default: dp_bot_data_r = bank2_rd_w;
        endcase

        case (copy_bank_w)
            2'd0: dp_copy_data_r = bank0_rd_w;
            2'd1: dp_copy_data_r = bank1_rd_w;
            default: dp_copy_data_r = bank2_rd_w;
        endcase
    end

    // ================================================================
    // Datapath
    // ================================================================
    Median_Filter_Datapath #(
        .MEM_ADDR_BITS (MEM_ADDR_BITS),
        .DIM_BITS      (DIM_BITS)
    ) u_Median_Filter_Datapath (
        .CLK                     (CLK),
        .RST                     (RST),

        .image_width_i           (image_width_w),
        .start_i                 (datapath_start_w),
        .median_mode_i           (datapath_median_mode_w),

        .top_bank_data_i         (dp_top_data_r),
        .mid_bank_data_i         (dp_mid_data_r),
        .bot_bank_data_i         (dp_bot_data_r),
        .copy_bank_data_i        (dp_copy_data_r),

        .banks_read_enable_o     (dp_banks_read_enable_w),
        .banks_read_addr_o       (dp_banks_read_addr_w),

        .output_write_enable_o   (dp_output_write_enable_w),
        .output_write_addr_o     (dp_output_write_addr_w),
        .output_write_data_o     (dp_output_write_data_w),

        .done_o                  (datapath_done_w)
    );

    // ================================================================
    // Separate Output Memory
    //
    // This is the key change from the old in-place RTL. Median results are
    // written here, never back into Input Bank Memories. The output BRAM is
    // reused one row at a time after software/TB consumes the row.
    // ================================================================
    Median_Filter_Output_Memory #(
        .ADDR_BITS (MEM_ADDR_BITS),
        .DATA_BITS (8)
    ) u_Median_Filter_Output_Memory (
        .CLK            (CLK),

        .write_enable_i (busy_w && dp_output_write_enable_w),
        .write_addr_i   (dp_output_write_addr_w),
        .write_data_i   (dp_output_write_data_w),

        .read_enable_i  (READ_ready_w && output_mem_host_read_enable_w),
        .read_addr_i    (output_mem_host_read_addr_w),
        .read_data_o    (output_mem_host_read_data_w)
    );

endmodule

`timescale 1ns/1ps

module Median_Filter_Datapath #(
    parameter MEM_ADDR_BITS = 12,
    parameter DIM_BITS      = 16
)(
    input  wire                     CLK,
    input  wire                     RST,

    input  wire [DIM_BITS-1:0]      image_width_i,
    input  wire                     start_i,
    input  wire                     median_mode_i,

    // Input Bank Memories -> Datapath directly.
    input  wire [7:0]               top_bank_data_i,
    input  wire [7:0]               mid_bank_data_i,
    input  wire [7:0]               bot_bank_data_i,
    input  wire [7:0]               copy_bank_data_i,

    output reg                      banks_read_enable_o,
    output reg  [MEM_ADDR_BITS-1:0] banks_read_addr_o,

    // Datapath -> separate Output Memory directly.
    output reg                      output_write_enable_o,
    output reg  [MEM_ADDR_BITS-1:0] output_write_addr_o,
    output reg  [7:0]               output_write_data_o,

    output reg                      done_o
);

    localparam [3:0] DP_IDLE        = 4'd0;
    localparam [3:0] DP_READ_REQ    = 4'd1;
    localparam [3:0] DP_READ_WAIT   = 4'd2;
    localparam [3:0] DP_CAPTURE     = 4'd3;
    localparam [3:0] DP_WRITE_COPY  = 4'd4;
    localparam [3:0] DP_WRITE_LEFT  = 4'd5;
    localparam [3:0] DP_WRITE_MED   = 4'd6;
    localparam [3:0] DP_WRITE_RIGHT = 4'd7;
    localparam [3:0] DP_DONE        = 4'd8;

    reg [3:0] state_r;

    reg [DIM_BITS-1:0]      width_r;
    reg [MEM_ADDR_BITS-1:0] col_r;
    reg                     median_mode_r;
    reg [7:0]               copy_data_r;

    // Three-column sliding window. After CAPTURE of column c:
    // *_0 = c-2, *_1 = c-1, *_2 = c.
    reg [7:0] top_0_r, top_1_r, top_2_r;
    reg [7:0] mid_0_r, mid_1_r, mid_2_r;
    reg [7:0] bot_0_r, bot_1_r, bot_2_r;

    wire [7:0] median_w;

    Median_Filter_Median9 u_Median_Filter_Median9 (
        .p0_i     (top_0_r),
        .p1_i     (top_1_r),
        .p2_i     (top_2_r),
        .p3_i     (mid_0_r),
        .p4_i     (mid_1_r),
        .p5_i     (mid_2_r),
        .p6_i     (bot_0_r),
        .p7_i     (bot_1_r),
        .p8_i     (bot_2_r),
        .median_o (median_w)
    );

    always @(*) begin
        banks_read_enable_o  = 1'b0;
        banks_read_addr_o    = col_r;

        output_write_enable_o = 1'b0;
        output_write_addr_o   = {MEM_ADDR_BITS{1'b0}};
        output_write_data_o   = 8'b0;

        done_o = 1'b0;

        case (state_r)
            DP_READ_REQ: begin
                // All three input banks may read in parallel. COPY mode uses
                // only copy_bank_data_i; MEDIAN mode uses top/mid/bottom.
                banks_read_enable_o = 1'b1;
                banks_read_addr_o   = col_r;
            end

            DP_WRITE_COPY: begin
                output_write_enable_o = 1'b1;
                output_write_addr_o   = col_r;
                output_write_data_o   = copy_data_r;
            end

            DP_WRITE_LEFT: begin
                // Left border pixel is copied unchanged from original middle row.
                output_write_enable_o = 1'b1;
                output_write_addr_o   = {MEM_ADDR_BITS{1'b0}};
                output_write_data_o   = mid_2_r;
            end

            DP_WRITE_MED: begin
                // After column c is captured, window center is c-1.
                output_write_enable_o = 1'b1;
                output_write_addr_o   = col_r - 1'b1;
                output_write_data_o   = median_w;
            end

            DP_WRITE_RIGHT: begin
                // Right border pixel is copied unchanged from original middle row.
                output_write_enable_o = 1'b1;
                output_write_addr_o   = col_r;
                output_write_data_o   = mid_2_r;
            end

            DP_DONE: begin
                done_o = 1'b1;
            end

            default: begin
                banks_read_enable_o   = 1'b0;
                output_write_enable_o = 1'b0;
            end
        endcase
    end

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            state_r       <= DP_IDLE;
            width_r       <= {DIM_BITS{1'b0}};
            col_r         <= {MEM_ADDR_BITS{1'b0}};
            median_mode_r <= 1'b0;
            copy_data_r   <= 8'b0;

            top_0_r <= 8'b0; top_1_r <= 8'b0; top_2_r <= 8'b0;
            mid_0_r <= 8'b0; mid_1_r <= 8'b0; mid_2_r <= 8'b0;
            bot_0_r <= 8'b0; bot_1_r <= 8'b0; bot_2_r <= 8'b0;
        end
        else begin
            case (state_r)
                DP_IDLE: begin
                    if (start_i) begin
                        width_r       <= image_width_i;
                        col_r         <= {MEM_ADDR_BITS{1'b0}};
                        median_mode_r <= median_mode_i;
                        copy_data_r   <= 8'b0;

                        top_0_r <= 8'b0; top_1_r <= 8'b0; top_2_r <= 8'b0;
                        mid_0_r <= 8'b0; mid_1_r <= 8'b0; mid_2_r <= 8'b0;
                        bot_0_r <= 8'b0; bot_1_r <= 8'b0; bot_2_r <= 8'b0;

                        state_r <= DP_READ_REQ;
                    end
                end

                // Synchronous BRAM read sequence.
                DP_READ_REQ: begin
                    state_r <= DP_READ_WAIT;
                end

                DP_READ_WAIT: begin
                    state_r <= DP_CAPTURE;
                end

                DP_CAPTURE: begin
                    copy_data_r <= copy_bank_data_i;

                    top_0_r <= top_1_r;
                    top_1_r <= top_2_r;
                    top_2_r <= top_bank_data_i;

                    mid_0_r <= mid_1_r;
                    mid_1_r <= mid_2_r;
                    mid_2_r <= mid_bank_data_i;

                    bot_0_r <= bot_1_r;
                    bot_1_r <= bot_2_r;
                    bot_2_r <= bot_bank_data_i;

                    if (!median_mode_r) begin
                        state_r <= DP_WRITE_COPY;
                    end
                    else if (col_r == 0) begin
                        state_r <= DP_WRITE_LEFT;
                    end
                    else if (col_r >= 2) begin
                        state_r <= DP_WRITE_MED;
                    end
                    else begin
                        col_r   <= col_r + 1'b1;
                        state_r <= DP_READ_REQ;
                    end
                end

                DP_WRITE_COPY: begin
                    if (col_r == (width_r - 1'b1)) begin
                        state_r <= DP_DONE;
                    end
                    else begin
                        col_r   <= col_r + 1'b1;
                        state_r <= DP_READ_REQ;
                    end
                end

                DP_WRITE_LEFT: begin
                    if (width_r <= 1) begin
                        state_r <= DP_DONE;
                    end
                    else begin
                        col_r   <= col_r + 1'b1;
                        state_r <= DP_READ_REQ;
                    end
                end

                DP_WRITE_MED: begin
                    if (col_r == (width_r - 1'b1)) begin
                        state_r <= DP_WRITE_RIGHT;
                    end
                    else begin
                        col_r   <= col_r + 1'b1;
                        state_r <= DP_READ_REQ;
                    end
                end

                DP_WRITE_RIGHT: begin
                    state_r <= DP_DONE;
                end

                DP_DONE: begin
                    state_r <= DP_IDLE;
                end

                default: begin
                    state_r <= DP_IDLE;
                end
            endcase
        end
    end

endmodule

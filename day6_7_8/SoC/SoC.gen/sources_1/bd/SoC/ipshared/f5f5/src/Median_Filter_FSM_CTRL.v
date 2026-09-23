`timescale 1ns/1ps

module Median_Filter_FSM_CTRL #(
    parameter DIM_BITS = 16
)(
    input  wire                CLK,
    input  wire                RST,

    input  wire                arbiter_load_i,
    input  wire                arbiter_start_i,
    input  wire                arbiter_stop_i,

    input  wire                image_config_valid_i,
    input  wire [DIM_BITS-1:0] image_width_i,
    input  wire [DIM_BITS-1:0] image_height_i,
    input  wire                datapath_done_i,

    output reg                 datapath_start_o,
    output wire                datapath_median_mode_o,

    output reg  [1:0]          load_bank_o,
    output wire [1:0]          work_top_bank_o,
    output wire [1:0]          work_mid_bank_o,
    output wire [1:0]          work_bot_bank_o,
    output wire [1:0]          copy_bank_o,
    output wire [1:0]          work_session_o,

    output wire [DIM_BITS-1:0] output_row_index_o,
    output wire                LOAD_ready_o,
    output wire                READ_ready_o,
    output wire                busy_o,
    output wire                done_o,
    output wire [2:0]          state_o
);

    localparam [2:0] IDLE = 3'd0;
    localparam [2:0] LOAD = 3'd1;
    localparam [2:0] WORK = 3'd2;
    localparam [2:0] READ = 3'd3;
    localparam [2:0] DONE = 3'd4;

    localparam MODE_COPY   = 1'b0;
    localparam MODE_MEDIAN = 1'b1;

    reg [2:0] state_r;

    // loaded_rows_r  = number of original input rows already loaded.
    // output_rows_r  = number of output rows already consumed by host.
    reg [DIM_BITS-1:0] loaded_rows_r;
    reg [DIM_BITS-1:0] output_rows_r;

    // Current original three-row window mapping.
    // session 0 : B0=top, B1=middle, B2=bottom
    // session 1 : B1=top, B2=middle, B0=bottom
    // session 2 : B2=top, B0=middle, B1=bottom
    reg [1:0] session_mod3_r;

    reg       datapath_median_mode_r;
    reg [1:0] copy_bank_r;

    wire filter_enabled_w;

    assign filter_enabled_w = (image_width_i >= 3) &&
                              (image_height_i >= 3);

    assign work_top_bank_o = session_mod3_r;
    assign work_mid_bank_o = (session_mod3_r == 2'd2) ? 2'd0 :
                             (session_mod3_r + 2'd1);
    assign work_bot_bank_o = (session_mod3_r == 2'd0) ? 2'd2 :
                             (session_mod3_r - 2'd1);

    assign copy_bank_o             = copy_bank_r;
    assign work_session_o          = session_mod3_r;
    assign datapath_median_mode_o  = datapath_median_mode_r;
    assign output_row_index_o      = output_rows_r;

    assign LOAD_ready_o = (state_r == LOAD);
    assign READ_ready_o = (state_r == READ);
    assign busy_o       = (state_r == WORK);
    assign done_o       = (state_r == DONE);
    assign state_o      = state_r;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            state_r                   <= IDLE;
            loaded_rows_r             <= {DIM_BITS{1'b0}};
            output_rows_r             <= {DIM_BITS{1'b0}};
            session_mod3_r            <= 2'd0;
            load_bank_o               <= 2'd0;
            copy_bank_r               <= 2'd0;
            datapath_median_mode_r    <= MODE_COPY;
            datapath_start_o          <= 1'b0;
        end
        else begin
            // One-clock command pulse toward Datapath.
            datapath_start_o <= 1'b0;

            case (state_r)
                IDLE: begin
                    loaded_rows_r          <= {DIM_BITS{1'b0}};
                    output_rows_r          <= {DIM_BITS{1'b0}};
                    session_mod3_r         <= 2'd0;
                    load_bank_o            <= 2'd0;
                    copy_bank_r            <= 2'd0;
                    datapath_median_mode_r <= MODE_COPY;

                    if (arbiter_load_i && image_config_valid_i)
                        state_r <= LOAD;
                end

                LOAD: begin
                    // START means the current original input row has been
                    // completely written into load_bank_o.
                    if (arbiter_start_i) begin
                        loaded_rows_r <= loaded_rows_r + 1'b1;

                        if (!filter_enabled_w) begin
                            // C model behavior for WIDTH<3 or HEIGHT<3:
                            // no complete 3x3 window exists, so every row is
                            // copied unchanged into the separate output BRAM.
                            copy_bank_r            <= load_bank_o;
                            datapath_median_mode_r <= MODE_COPY;
                            state_r                <= WORK;
                            datapath_start_o       <= 1'b1;
                        end
                        else if (loaded_rows_r < 2) begin
                            // Initial fill: row0->B0, row1->B1, row2->B2.
                            load_bank_o <= load_bank_o + 1'b1;
                        end
                        else if (loaded_rows_r == 2) begin
                            // Third original row is now present. First produce
                            // top border row0 unchanged into Output Memory.
                            session_mod3_r         <= 2'd0;
                            copy_bank_r            <= 2'd0;
                            datapath_median_mode_r <= MODE_COPY;
                            state_r                <= WORK;
                            datapath_start_o       <= 1'b1;
                        end
                        else begin
                            // One new bottom row was loaded into the bank that
                            // held the old top row. Advance the logical window.
                            if (session_mod3_r == 2'd2)
                                session_mod3_r <= 2'd0;
                            else
                                session_mod3_r <= session_mod3_r + 1'b1;

                            datapath_median_mode_r <= MODE_MEDIAN;
                            state_r                <= WORK;
                            datapath_start_o       <= 1'b1;
                        end
                    end
                end

                WORK: begin
                    if (datapath_done_i)
                        state_r <= READ;
                end

                READ: begin
                    // Host reads the separate Output Memory only in READ.
                    // STOP means the complete current output row was consumed.
                    if (arbiter_stop_i) begin
                        output_rows_r <= output_rows_r + 1'b1;

                        // Current output row is the last row.
                        if ((output_rows_r + 1'b1) >= image_height_i) begin
                            state_r <= DONE;
                        end
                        else if (!filter_enabled_w) begin
                            // Pass-through mode: reuse one input bank row by row.
                            load_bank_o <= 2'd0;
                            state_r     <= LOAD;
                        end
                        else if (output_rows_r == 0) begin
                            // Top border row0 has just been consumed. The three
                            // original rows B0/B1/B2 are still intact, so now
                            // compute filtered row1 exactly like the C model.
                            datapath_median_mode_r <= MODE_MEDIAN;
                            state_r                <= WORK;
                            datapath_start_o       <= 1'b1;
                        end
                        else if (loaded_rows_r < image_height_i) begin
                            // The current top row is no longer needed after its
                            // corresponding middle row has been produced. Reuse
                            // only that oldest bank for the next ORIGINAL row.
                            load_bank_o <= work_top_bank_o;
                            state_r     <= LOAD;
                        end
                        else begin
                            // No more original rows remain to load. The last
                            // median row (HEIGHT-2) was just consumed. Copy the
                            // original bottom border row HEIGHT-1 unchanged.
                            copy_bank_r            <= work_bot_bank_o;
                            datapath_median_mode_r <= MODE_COPY;
                            state_r                <= WORK;
                            datapath_start_o       <= 1'b1;
                        end
                    end
                end

                DONE: begin
                    if (arbiter_load_i && image_config_valid_i) begin
                        state_r                   <= LOAD;
                        loaded_rows_r             <= {DIM_BITS{1'b0}};
                        output_rows_r             <= {DIM_BITS{1'b0}};
                        session_mod3_r            <= 2'd0;
                        load_bank_o               <= 2'd0;
                        copy_bank_r               <= 2'd0;
                        datapath_median_mode_r    <= MODE_COPY;
                    end
                end

                default: begin
                    state_r <= IDLE;
                end
            endcase
        end
    end

endmodule

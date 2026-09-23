`timescale 1ns/1ps

module Median_Filter_Compare_Swap (
    input  wire [7:0] a_i,
    input  wire [7:0] b_i,
    output wire [7:0] min_o,
    output wire [7:0] max_o
);

    assign min_o = (a_i <= b_i) ? a_i : b_i;
    assign max_o = (a_i <= b_i) ? b_i : a_i;

endmodule

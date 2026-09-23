`timescale 1ns/1ps

module Median_Filter_Median9 (
    input  wire [7:0] p0_i,
    input  wire [7:0] p1_i,
    input  wire [7:0] p2_i,
    input  wire [7:0] p3_i,
    input  wire [7:0] p4_i,
    input  wire [7:0] p5_i,
    input  wire [7:0] p6_i,
    input  wire [7:0] p7_i,
    input  wire [7:0] p8_i,

    output wire [7:0] median_o
);

    // ================================================================
    // Fixed odd-even transposition sorting network for 9 pixels.
    //
    // The C reference model sorts all 9 values and returns sorted[4].
    // This RTL expresses the sort as a fixed compare-swap network rather
    // than a behavioral loop, making the hardware structure explicit.
    // ================================================================

    wire [7:0] s1_0;
    wire [7:0] s1_1;
    wire [7:0] s1_2;
    wire [7:0] s1_3;
    wire [7:0] s1_4;
    wire [7:0] s1_5;
    wire [7:0] s1_6;
    wire [7:0] s1_7;
    wire [7:0] s1_8;

    wire [7:0] s2_0;
    wire [7:0] s2_1;
    wire [7:0] s2_2;
    wire [7:0] s2_3;
    wire [7:0] s2_4;
    wire [7:0] s2_5;
    wire [7:0] s2_6;
    wire [7:0] s2_7;
    wire [7:0] s2_8;

    wire [7:0] s3_0;
    wire [7:0] s3_1;
    wire [7:0] s3_2;
    wire [7:0] s3_3;
    wire [7:0] s3_4;
    wire [7:0] s3_5;
    wire [7:0] s3_6;
    wire [7:0] s3_7;
    wire [7:0] s3_8;

    wire [7:0] s4_0;
    wire [7:0] s4_1;
    wire [7:0] s4_2;
    wire [7:0] s4_3;
    wire [7:0] s4_4;
    wire [7:0] s4_5;
    wire [7:0] s4_6;
    wire [7:0] s4_7;
    wire [7:0] s4_8;

    wire [7:0] s5_0;
    wire [7:0] s5_1;
    wire [7:0] s5_2;
    wire [7:0] s5_3;
    wire [7:0] s5_4;
    wire [7:0] s5_5;
    wire [7:0] s5_6;
    wire [7:0] s5_7;
    wire [7:0] s5_8;

    wire [7:0] s6_0;
    wire [7:0] s6_1;
    wire [7:0] s6_2;
    wire [7:0] s6_3;
    wire [7:0] s6_4;
    wire [7:0] s6_5;
    wire [7:0] s6_6;
    wire [7:0] s6_7;
    wire [7:0] s6_8;

    wire [7:0] s7_0;
    wire [7:0] s7_1;
    wire [7:0] s7_2;
    wire [7:0] s7_3;
    wire [7:0] s7_4;
    wire [7:0] s7_5;
    wire [7:0] s7_6;
    wire [7:0] s7_7;
    wire [7:0] s7_8;

    wire [7:0] s8_0;
    wire [7:0] s8_1;
    wire [7:0] s8_2;
    wire [7:0] s8_3;
    wire [7:0] s8_4;
    wire [7:0] s8_5;
    wire [7:0] s8_6;
    wire [7:0] s8_7;
    wire [7:0] s8_8;

    wire [7:0] s9_0;
    wire [7:0] s9_1;
    wire [7:0] s9_2;
    wire [7:0] s9_3;
    wire [7:0] s9_4;
    wire [7:0] s9_5;
    wire [7:0] s9_6;
    wire [7:0] s9_7;
    wire [7:0] s9_8;

    // ================================================================
    // Stage 1: compare (0,1), (2,3), (4,5), (6,7)
    // ================================================================
    Median_Filter_Compare_Swap u_s1_01 (
        .a_i   (p0_i),
        .b_i   (p1_i),
        .min_o (s1_0),
        .max_o (s1_1)
    );

    Median_Filter_Compare_Swap u_s1_23 (
        .a_i   (p2_i),
        .b_i   (p3_i),
        .min_o (s1_2),
        .max_o (s1_3)
    );

    Median_Filter_Compare_Swap u_s1_45 (
        .a_i   (p4_i),
        .b_i   (p5_i),
        .min_o (s1_4),
        .max_o (s1_5)
    );

    Median_Filter_Compare_Swap u_s1_67 (
        .a_i   (p6_i),
        .b_i   (p7_i),
        .min_o (s1_6),
        .max_o (s1_7)
    );

    assign s1_8 = p8_i;

    // ================================================================
    // Stage 2: compare (1,2), (3,4), (5,6), (7,8)
    // ================================================================
    assign s2_0 = s1_0;

    Median_Filter_Compare_Swap u_s2_12 (
        .a_i   (s1_1),
        .b_i   (s1_2),
        .min_o (s2_1),
        .max_o (s2_2)
    );

    Median_Filter_Compare_Swap u_s2_34 (
        .a_i   (s1_3),
        .b_i   (s1_4),
        .min_o (s2_3),
        .max_o (s2_4)
    );

    Median_Filter_Compare_Swap u_s2_56 (
        .a_i   (s1_5),
        .b_i   (s1_6),
        .min_o (s2_5),
        .max_o (s2_6)
    );

    Median_Filter_Compare_Swap u_s2_78 (
        .a_i   (s1_7),
        .b_i   (s1_8),
        .min_o (s2_7),
        .max_o (s2_8)
    );

    // ================================================================
    // Stage 3
    // ================================================================
    Median_Filter_Compare_Swap u_s3_01 (
        .a_i   (s2_0),
        .b_i   (s2_1),
        .min_o (s3_0),
        .max_o (s3_1)
    );

    Median_Filter_Compare_Swap u_s3_23 (
        .a_i   (s2_2),
        .b_i   (s2_3),
        .min_o (s3_2),
        .max_o (s3_3)
    );

    Median_Filter_Compare_Swap u_s3_45 (
        .a_i   (s2_4),
        .b_i   (s2_5),
        .min_o (s3_4),
        .max_o (s3_5)
    );

    Median_Filter_Compare_Swap u_s3_67 (
        .a_i   (s2_6),
        .b_i   (s2_7),
        .min_o (s3_6),
        .max_o (s3_7)
    );

    assign s3_8 = s2_8;

    // ================================================================
    // Stage 4
    // ================================================================
    assign s4_0 = s3_0;

    Median_Filter_Compare_Swap u_s4_12 (
        .a_i   (s3_1),
        .b_i   (s3_2),
        .min_o (s4_1),
        .max_o (s4_2)
    );

    Median_Filter_Compare_Swap u_s4_34 (
        .a_i   (s3_3),
        .b_i   (s3_4),
        .min_o (s4_3),
        .max_o (s4_4)
    );

    Median_Filter_Compare_Swap u_s4_56 (
        .a_i   (s3_5),
        .b_i   (s3_6),
        .min_o (s4_5),
        .max_o (s4_6)
    );

    Median_Filter_Compare_Swap u_s4_78 (
        .a_i   (s3_7),
        .b_i   (s3_8),
        .min_o (s4_7),
        .max_o (s4_8)
    );

    // ================================================================
    // Stage 5
    // ================================================================
    Median_Filter_Compare_Swap u_s5_01 (
        .a_i   (s4_0),
        .b_i   (s4_1),
        .min_o (s5_0),
        .max_o (s5_1)
    );

    Median_Filter_Compare_Swap u_s5_23 (
        .a_i   (s4_2),
        .b_i   (s4_3),
        .min_o (s5_2),
        .max_o (s5_3)
    );

    Median_Filter_Compare_Swap u_s5_45 (
        .a_i   (s4_4),
        .b_i   (s4_5),
        .min_o (s5_4),
        .max_o (s5_5)
    );

    Median_Filter_Compare_Swap u_s5_67 (
        .a_i   (s4_6),
        .b_i   (s4_7),
        .min_o (s5_6),
        .max_o (s5_7)
    );

    assign s5_8 = s4_8;

    // ================================================================
    // Stage 6
    // ================================================================
    assign s6_0 = s5_0;

    Median_Filter_Compare_Swap u_s6_12 (
        .a_i   (s5_1),
        .b_i   (s5_2),
        .min_o (s6_1),
        .max_o (s6_2)
    );

    Median_Filter_Compare_Swap u_s6_34 (
        .a_i   (s5_3),
        .b_i   (s5_4),
        .min_o (s6_3),
        .max_o (s6_4)
    );

    Median_Filter_Compare_Swap u_s6_56 (
        .a_i   (s5_5),
        .b_i   (s5_6),
        .min_o (s6_5),
        .max_o (s6_6)
    );

    Median_Filter_Compare_Swap u_s6_78 (
        .a_i   (s5_7),
        .b_i   (s5_8),
        .min_o (s6_7),
        .max_o (s6_8)
    );

    // ================================================================
    // Stage 7
    // ================================================================
    Median_Filter_Compare_Swap u_s7_01 (
        .a_i   (s6_0),
        .b_i   (s6_1),
        .min_o (s7_0),
        .max_o (s7_1)
    );

    Median_Filter_Compare_Swap u_s7_23 (
        .a_i   (s6_2),
        .b_i   (s6_3),
        .min_o (s7_2),
        .max_o (s7_3)
    );

    Median_Filter_Compare_Swap u_s7_45 (
        .a_i   (s6_4),
        .b_i   (s6_5),
        .min_o (s7_4),
        .max_o (s7_5)
    );

    Median_Filter_Compare_Swap u_s7_67 (
        .a_i   (s6_6),
        .b_i   (s6_7),
        .min_o (s7_6),
        .max_o (s7_7)
    );

    assign s7_8 = s6_8;

    // ================================================================
    // Stage 8
    // ================================================================
    assign s8_0 = s7_0;

    Median_Filter_Compare_Swap u_s8_12 (
        .a_i   (s7_1),
        .b_i   (s7_2),
        .min_o (s8_1),
        .max_o (s8_2)
    );

    Median_Filter_Compare_Swap u_s8_34 (
        .a_i   (s7_3),
        .b_i   (s7_4),
        .min_o (s8_3),
        .max_o (s8_4)
    );

    Median_Filter_Compare_Swap u_s8_56 (
        .a_i   (s7_5),
        .b_i   (s7_6),
        .min_o (s8_5),
        .max_o (s8_6)
    );

    Median_Filter_Compare_Swap u_s8_78 (
        .a_i   (s7_7),
        .b_i   (s7_8),
        .min_o (s8_7),
        .max_o (s8_8)
    );

    // ================================================================
    // Stage 9
    // ================================================================
    Median_Filter_Compare_Swap u_s9_01 (
        .a_i   (s8_0),
        .b_i   (s8_1),
        .min_o (s9_0),
        .max_o (s9_1)
    );

    Median_Filter_Compare_Swap u_s9_23 (
        .a_i   (s8_2),
        .b_i   (s8_3),
        .min_o (s9_2),
        .max_o (s9_3)
    );

    Median_Filter_Compare_Swap u_s9_45 (
        .a_i   (s8_4),
        .b_i   (s8_5),
        .min_o (s9_4),
        .max_o (s9_5)
    );

    Median_Filter_Compare_Swap u_s9_67 (
        .a_i   (s8_6),
        .b_i   (s8_7),
        .min_o (s9_6),
        .max_o (s9_7)
    );

    assign s9_8 = s8_8;

    assign median_o = s9_4;

endmodule

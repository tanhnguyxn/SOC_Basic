`timescale 1ns/1ps

module Median_Filter_Input_Bank_Memories #(
    parameter ADDR_BITS = 12,
    parameter DATA_BITS = 8
)(
    input  wire                  CLK,

    input  wire                  bank0_write_enable_i,
    input  wire [ADDR_BITS-1:0]  bank0_write_addr_i,
    input  wire [DATA_BITS-1:0]  bank0_write_data_i,
    input  wire                  bank0_read_enable_i,
    input  wire [ADDR_BITS-1:0]  bank0_read_addr_i,
    output wire [DATA_BITS-1:0]  bank0_read_data_o,

    input  wire                  bank1_write_enable_i,
    input  wire [ADDR_BITS-1:0]  bank1_write_addr_i,
    input  wire [DATA_BITS-1:0]  bank1_write_data_i,
    input  wire                  bank1_read_enable_i,
    input  wire [ADDR_BITS-1:0]  bank1_read_addr_i,
    output wire [DATA_BITS-1:0]  bank1_read_data_o,

    input  wire                  bank2_write_enable_i,
    input  wire [ADDR_BITS-1:0]  bank2_write_addr_i,
    input  wire [DATA_BITS-1:0]  bank2_write_data_i,
    input  wire                  bank2_read_enable_i,
    input  wire [ADDR_BITS-1:0]  bank2_read_addr_i,
    output wire [DATA_BITS-1:0]  bank2_read_data_o
);

    // Three independent 4096x8 BRAM banks when ADDR_BITS=12.
    Median_Filter_BRAM_Bank #(
        .ADDR_BITS (ADDR_BITS),
        .DATA_BITS (DATA_BITS)
    ) u_Bank0 (
        .CLK            (CLK),
        .write_enable_i (bank0_write_enable_i),
        .write_addr_i   (bank0_write_addr_i),
        .write_data_i   (bank0_write_data_i),
        .read_enable_i  (bank0_read_enable_i),
        .read_addr_i    (bank0_read_addr_i),
        .read_data_o    (bank0_read_data_o)
    );

    Median_Filter_BRAM_Bank #(
        .ADDR_BITS (ADDR_BITS),
        .DATA_BITS (DATA_BITS)
    ) u_Bank1 (
        .CLK            (CLK),
        .write_enable_i (bank1_write_enable_i),
        .write_addr_i   (bank1_write_addr_i),
        .write_data_i   (bank1_write_data_i),
        .read_enable_i  (bank1_read_enable_i),
        .read_addr_i    (bank1_read_addr_i),
        .read_data_o    (bank1_read_data_o)
    );

    Median_Filter_BRAM_Bank #(
        .ADDR_BITS (ADDR_BITS),
        .DATA_BITS (DATA_BITS)
    ) u_Bank2 (
        .CLK            (CLK),
        .write_enable_i (bank2_write_enable_i),
        .write_addr_i   (bank2_write_addr_i),
        .write_data_i   (bank2_write_data_i),
        .read_enable_i  (bank2_read_enable_i),
        .read_addr_i    (bank2_read_addr_i),
        .read_data_o    (bank2_read_data_o)
    );

endmodule

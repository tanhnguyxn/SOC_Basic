`timescale 1ns/1ps

module Median_Filter_Output_Memory #(
    parameter ADDR_BITS = 12,
    parameter DATA_BITS = 8
)(
    input  wire                  CLK,

    // Datapath write port
    input  wire                  write_enable_i,
    input  wire [ADDR_BITS-1:0]  write_addr_i,
    input  wire [DATA_BITS-1:0]  write_data_i,

    // Host/Arbiter read port
    input  wire                  read_enable_i,
    input  wire [ADDR_BITS-1:0]  read_addr_i,
    output wire [DATA_BITS-1:0]  read_data_o
);

    // Separate output row buffer. Median results never overwrite the three
    // input banks, which preserves the out-of-place behavior of median_filter.c.
    Median_Filter_BRAM_Bank #(
        .ADDR_BITS (ADDR_BITS),
        .DATA_BITS (DATA_BITS)
    ) u_Output_BRAM (
        .CLK            (CLK),
        .write_enable_i (write_enable_i),
        .write_addr_i   (write_addr_i),
        .write_data_i   (write_data_i),
        .read_enable_i  (read_enable_i),
        .read_addr_i    (read_addr_i),
        .read_data_o    (read_data_o)
    );

endmodule

`timescale 1ns/1ps

module Median_Filter_BRAM_Bank #(
    parameter ADDR_BITS = 12,
    parameter DATA_BITS = 8
)(
    input  wire                  CLK,

    // Port A - synchronous write
    input  wire                  write_enable_i,
    input  wire [ADDR_BITS-1:0]  write_addr_i,
    input  wire [DATA_BITS-1:0]  write_data_i,

    // Port B - synchronous read
    input  wire                  read_enable_i,
    input  wire [ADDR_BITS-1:0]  read_addr_i,
    output wire [DATA_BITS-1:0]  read_data_o
);

    localparam DEPTH = (1 << ADDR_BITS);

    // Xilinx/AMD block RAM inference template style.
    // Do not reset or clear this array in an RTL loop. Keeping the memory
    // array free of reset logic allows Vivado to infer RAMB18/RAMB36 instead
    // of implementing the storage with FF/LUTRAM.
    (* ram_style = "block" *) reg [DATA_BITS-1:0] mem [0:DEPTH-1];

    reg [DATA_BITS-1:0] read_data_r;

    always @(posedge CLK) begin
        if (write_enable_i)
            mem[write_addr_i] <= write_data_i;
    end

    always @(posedge CLK) begin
        if (read_enable_i)
            read_data_r <= mem[read_addr_i];
    end

    assign read_data_o = read_data_r;

endmodule

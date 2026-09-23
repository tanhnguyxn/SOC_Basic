vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../edit_H_Acceleration_IP_v1_0.gen/sources_1/ip/ila_debug/hdl/verilog" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edit_H_Acceleration_IP_v1_0.gen/sources_1/ip/ila_debug/hdl/verilog" \
"../../../../edit_H_Acceleration_IP_v1_0.gen/sources_1/ip/ila_debug/sim/ila_debug.v" \

vlog -work xil_defaultlib \
"glbl.v"


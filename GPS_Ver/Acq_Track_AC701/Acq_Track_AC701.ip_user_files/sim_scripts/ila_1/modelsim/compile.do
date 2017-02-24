vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_1/hdl/verilog" "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_1/hdl/verilog" \
"E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_1/hdl/verilog" "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_1/hdl/verilog" \
"../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_1/sim/ila_1.v" \

vlog -work xil_defaultlib "glbl.v"


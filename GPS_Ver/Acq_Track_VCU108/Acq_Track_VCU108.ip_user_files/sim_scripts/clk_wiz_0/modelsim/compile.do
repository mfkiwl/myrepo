vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic/clk_wiz_v5_3_0" "+incdir+../../../ipstatic/clk_wiz_v5_3_0" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 -93 \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/clk_wiz_v5_3_0" "+incdir+../../../ipstatic/clk_wiz_v5_3_0" \
"../../../ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib "glbl.v"


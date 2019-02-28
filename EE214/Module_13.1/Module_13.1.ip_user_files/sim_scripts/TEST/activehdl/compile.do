vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" \
"../../../bd/TEST/ip/TEST_VGA_PORCH_0_0/sim/TEST_VGA_PORCH_0_0.v" \
"../../../bd/TEST/ip/TEST_VGA_SYNC_0_0/sim/TEST_VGA_SYNC_0_0.v" \
"../../../bd/TEST/ip/TEST_VGA_COLOR_0_0/sim/TEST_VGA_COLOR_0_0.v" \
"../../../bd/TEST/ip/TEST_clk_wiz_0/TEST_clk_wiz_0_clk_wiz.v" \
"../../../bd/TEST/ip/TEST_clk_wiz_0/TEST_clk_wiz_0.v" \
"../../../bd/TEST/sim/TEST.v" \

vlog -work xil_defaultlib \
"glbl.v"


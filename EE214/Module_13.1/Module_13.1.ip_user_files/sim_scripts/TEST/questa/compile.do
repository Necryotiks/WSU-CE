vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" "+incdir+../../../../Module_13.1.srcs/sources_1/bd/TEST/ipshared/b65a" \
"../../../bd/TEST/ip/TEST_VGA_PORCH_0_0/sim/TEST_VGA_PORCH_0_0.v" \
"../../../bd/TEST/ip/TEST_VGA_SYNC_0_0/sim/TEST_VGA_SYNC_0_0.v" \
"../../../bd/TEST/ip/TEST_VGA_COLOR_0_0/sim/TEST_VGA_COLOR_0_0.v" \
"../../../bd/TEST/ip/TEST_clk_wiz_0/TEST_clk_wiz_0_clk_wiz.v" \
"../../../bd/TEST/ip/TEST_clk_wiz_0/TEST_clk_wiz_0.v" \
"../../../bd/TEST/sim/TEST.v" \

vlog -work xil_defaultlib \
"glbl.v"


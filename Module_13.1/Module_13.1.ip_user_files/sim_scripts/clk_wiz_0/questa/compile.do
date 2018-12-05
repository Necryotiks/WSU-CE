vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../Module_13.1.srcs/sources_1/bd/YEET/ip/YEET_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.1.srcs/sources_1/ip/clk_wiz_0" "+incdir+../../../../Module_13.1.srcs/sources_1/bd/YEET/ip/YEET_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.1.srcs/sources_1/ip/clk_wiz_0" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \


vlog -work xil_defaultlib \
"glbl.v"


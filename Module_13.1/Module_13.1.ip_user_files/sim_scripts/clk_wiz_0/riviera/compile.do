vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_13.1.srcs/sources_1/bd/YEET/ip/YEET_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.1.srcs/sources_1/ip/clk_wiz_0" "+incdir+../../../../Module_13.1.srcs/sources_1/bd/YEET/ip/YEET_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.1.srcs/sources_1/ip/clk_wiz_0" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \


vlog -work xil_defaultlib \
"glbl.v"


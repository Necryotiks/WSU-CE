vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/sim/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/sim/clk_wiz_0/clk_wiz_0.v" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/encode.v" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/serdes_10_to_1.v" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/srldelay.v" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/hdmi_tx_v1_0.v" \
"../../../ipstatic/xil_defaultlib/sim/hdmi_tx_tb.v" \
"../../../ipstatic/xil_defaultlib/sim/wrapper.v" \
"../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/sim/hdmi_tx_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


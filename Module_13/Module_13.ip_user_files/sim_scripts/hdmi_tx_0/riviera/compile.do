vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
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


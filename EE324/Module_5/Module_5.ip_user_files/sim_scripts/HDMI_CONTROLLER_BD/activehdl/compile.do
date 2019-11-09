vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/ipshared/c923" \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/ipshared/c923" \
"../../../bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_VGA_controller_0_0/sim/HDMI_CONTROLLER_BD_VGA_controller_0_0.v" \
"../../../bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_clk_wiz_0_0/HDMI_CONTROLLER_BD_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_clk_wiz_0_0/HDMI_CONTROLLER_BD_clk_wiz_0_0.v" \
"../../../bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_color_logic_0_0/sim/HDMI_CONTROLLER_BD_color_logic_0_0.v" \
"../../../bd/HDMI_CONTROLLER_BD/ipshared/afa8/hdl/encode.v" \
"../../../bd/HDMI_CONTROLLER_BD/ipshared/afa8/hdl/serdes_10_to_1.v" \
"../../../bd/HDMI_CONTROLLER_BD/ipshared/afa8/hdl/srldelay.v" \
"../../../bd/HDMI_CONTROLLER_BD/ipshared/afa8/hdl/hdmi_tx_v1_0.v" \
"../../../bd/HDMI_CONTROLLER_BD/ip/HDMI_CONTROLLER_BD_hdmi_tx_0_0/sim/HDMI_CONTROLLER_BD_hdmi_tx_0_0.v" \
"../../../bd/HDMI_CONTROLLER_BD/sim/HDMI_CONTROLLER_BD.v" \

vlog -work xil_defaultlib \
"glbl.v"


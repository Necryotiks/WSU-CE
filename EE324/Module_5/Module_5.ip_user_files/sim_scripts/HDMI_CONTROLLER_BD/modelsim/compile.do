vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_5.srcs/sources_1/bd/HDMI_CONTROLLER_BD/ipshared/85a3" \
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


vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/xlslice_v1_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0/clk_wiz_0.v" \
"../../../bd/HDMI_CTRL/ipshared/cb76/hdl/encode.v" \
"../../../bd/HDMI_CTRL/ipshared/cb76/hdl/serdes_10_to_1.v" \
"../../../bd/HDMI_CTRL/ipshared/cb76/hdl/srldelay.v" \
"../../../bd/HDMI_CTRL/ipshared/cb76/hdl/hdmi_tx_v1_0.v" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/cb76/sim/hdmi_tx_tb.v" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/cb76/sim/wrapper.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/HDMI_CTRL_hdmi_tx_0_0.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_clk_wiz_0/HDMI_CTRL_clk_wiz_0_clk_wiz.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_clk_wiz_0/HDMI_CTRL_clk_wiz_0.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_VGA_controller_0_0/sim/HDMI_CTRL_VGA_controller_0_0.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_color_logic_0_0/sim/HDMI_CTRL_color_logic_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_proc_sys_reset_0_0/sim/HDMI_CTRL_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" \
"../../../bd/HDMI_CTRL/sim/HDMI_CTRL.v" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ip/HDMI_CTRL_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_CTRL/ipshared/b65a" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_xlslice_0_0/sim/HDMI_CTRL_xlslice_0_0.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_xlslice_0_1/sim/HDMI_CTRL_xlslice_0_1.v" \
"../../../bd/HDMI_CTRL/ip/HDMI_CTRL_xlslice_0_2/sim/HDMI_CTRL_xlslice_0_2.v" \

vlog -work xil_defaultlib \
"glbl.v"


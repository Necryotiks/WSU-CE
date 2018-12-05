vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/xlslice_v1_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_VGA_controller_0_0/sim/HDMI_VGA_VGA_controller_0_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_color_logic_0_0/sim/HDMI_VGA_color_logic_0_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0/clk_wiz_0.v" \
"../../../bd/HDMI_VGA/ipshared/cb76/hdl/encode.v" \
"../../../bd/HDMI_VGA/ipshared/cb76/hdl/serdes_10_to_1.v" \
"../../../bd/HDMI_VGA/ipshared/cb76/hdl/srldelay.v" \
"../../../bd/HDMI_VGA/ipshared/cb76/hdl/hdmi_tx_v1_0.v" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/cb76/sim/hdmi_tx_tb.v" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/cb76/sim/wrapper.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/HDMI_VGA_hdmi_tx_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_proc_sys_reset_0_0/sim/HDMI_VGA_proc_sys_reset_0_0.vhd" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_0/sim/HDMI_VGA_xlslice_0_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_1_0/sim/HDMI_VGA_xlslice_1_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_2_0/sim/HDMI_VGA_xlslice_2_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_clk_wiz_0_0/HDMI_VGA_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_clk_wiz_0_0/HDMI_VGA_clk_wiz_0_0.v" \
"../../../bd/HDMI_VGA/sim/HDMI_VGA.v" \

vlog -work xil_defaultlib \
"glbl.v"


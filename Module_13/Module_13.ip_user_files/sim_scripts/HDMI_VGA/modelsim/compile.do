vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xlslice_v1_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_VGA_controller_0_0/sim/HDMI_VGA_VGA_controller_0_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_clk_wiz_0_0/HDMI_VGA_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_clk_wiz_0_0/HDMI_VGA_clk_wiz_0_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_color_logic_0_0/sim/HDMI_VGA_color_logic_0_0.v" \

vlog -work xlslice_v1_0_1 -64 -incr "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" "+incdir+../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/b65a" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_0/sim/HDMI_VGA_xlslice_0_0.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_1/sim/HDMI_VGA_xlslice_0_1.v" \
"../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_2/sim/HDMI_VGA_xlslice_0_2.v" \
"../../../bd/HDMI_VGA/sim/HDMI_VGA.v" \

vlog -work xil_defaultlib \
"glbl.v"


-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_VGA_controller_0_0/sim/HDMI_VGA_VGA_controller_0_0.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_clk_wiz_0_0/HDMI_VGA_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_clk_wiz_0_0/HDMI_VGA_clk_wiz_0_0.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_color_logic_0_0/sim/HDMI_VGA_color_logic_0_0.v" \
-endlib
-makelib ies_lib/xlslice_v1_0_1 \
  "../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_0/sim/HDMI_VGA_xlslice_0_0.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_1/sim/HDMI_VGA_xlslice_0_1.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_xlslice_0_2/sim/HDMI_VGA_xlslice_0_2.v" \
  "../../../bd/HDMI_VGA/sim/HDMI_VGA.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


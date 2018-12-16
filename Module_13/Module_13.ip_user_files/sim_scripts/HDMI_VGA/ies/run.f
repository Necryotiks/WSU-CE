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
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/clk_wiz_0/clk_wiz_0.v" \
  "../../../bd/HDMI_VGA/ipshared/cb76/hdl/encode.v" \
  "../../../bd/HDMI_VGA/ipshared/cb76/hdl/serdes_10_to_1.v" \
  "../../../bd/HDMI_VGA/ipshared/cb76/hdl/srldelay.v" \
  "../../../bd/HDMI_VGA/ipshared/cb76/hdl/hdmi_tx_v1_0.v" \
  "../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/cb76/sim/hdmi_tx_tb.v" \
  "../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/cb76/sim/wrapper.v" \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_hdmi_tx_0_0/sim/HDMI_VGA_hdmi_tx_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../Module_13.srcs/sources_1/bd/HDMI_VGA/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/HDMI_VGA/ip/HDMI_VGA_proc_sys_reset_0_0/sim/HDMI_VGA_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


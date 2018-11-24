-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/sim/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/sim/clk_wiz_0/clk_wiz_0.v" \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/encode.v" \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/serdes_10_to_1.v" \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/srldelay.v" \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/hdl/hdmi_tx_v1_0.v" \
  "../../../ipstatic/xil_defaultlib/sim/hdmi_tx_tb.v" \
  "../../../ipstatic/xil_defaultlib/sim/wrapper.v" \
  "../../../../Module_13.srcs/sources_1/ip/hdmi_tx_0/sim/hdmi_tx_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


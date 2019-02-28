-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/TEST/ip/TEST_VGA_PORCH_0_0/sim/TEST_VGA_PORCH_0_0.v" \
  "../../../bd/TEST/ip/TEST_VGA_SYNC_0_0/sim/TEST_VGA_SYNC_0_0.v" \
  "../../../bd/TEST/ip/TEST_VGA_COLOR_0_0/sim/TEST_VGA_COLOR_0_0.v" \
  "../../../bd/TEST/ip/TEST_clk_wiz_0/TEST_clk_wiz_0_clk_wiz.v" \
  "../../../bd/TEST/ip/TEST_clk_wiz_0/TEST_clk_wiz_0.v" \
  "../../../bd/TEST/sim/TEST.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


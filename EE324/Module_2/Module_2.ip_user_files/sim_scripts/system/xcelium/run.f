-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_sim_netlist.v" \
  "../../../bd/system/ipshared/e63d/hdl/myLED_v1_0_S00_AXI.v" \
  "../../../bd/system/ipshared/e63d/hdl/myLED_v1_0.v" \
  "../../../bd/system/ip/system_myLED_0_0/sim/system_myLED_0_0.v" \
  "../../../bd/system/ip/system_rst_ps7_0_50M_0/system_rst_ps7_0_50M_0_sim_netlist.v" \
  "../../../bd/system/sim/system.v" \
  "../../../bd/system/ipshared/3e65/hdl/my_RGB_LED_v1_0_S00_AXI.v" \
  "../../../bd/system/ipshared/3e65/hdl/my_RGB_LED_v1_0.v" \
  "../../../bd/system/ip/system_my_RGB_LED_0_0/sim/system_my_RGB_LED_0_0.v" \
  "../../../bd/system/ip/system_xbar_0/system_xbar_0_sim_netlist.v" \
  "../../../bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


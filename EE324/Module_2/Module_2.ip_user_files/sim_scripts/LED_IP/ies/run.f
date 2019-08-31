-makelib ies_lib/xilinx_vip -sv \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/necryotiks/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/LED_IP/ip/LED_IP_processing_system7_0_0/sim/LED_IP_processing_system7_0_0.v" \
  "../../../bd/LED_IP/ipshared/9e04/hdl/LED_CONTROLLER_v1_0_S00_AXI.v" \
  "../../../bd/LED_IP/ipshared/9e04/hdl/LED_CONTROLLER_v1_0.v" \
  "../../../bd/LED_IP/ip/LED_IP_LED_CONTROLLER_0_0/sim/LED_IP_LED_CONTROLLER_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/LED_IP/ip/LED_IP_rst_ps7_0_50M_0/sim/LED_IP_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/LED_IP/ipshared/b814/hdl/RGB_CONTROLLER_v1_0_S00_AXI.v" \
  "../../../bd/LED_IP/ipshared/b814/hdl/RGB_CONTROLLER_v1_0.v" \
  "../../../bd/LED_IP/ip/LED_IP_RGB_CONTROLLER_0_0/sim/LED_IP_RGB_CONTROLLER_0_0.v" \
  "../../../bd/LED_IP/ipshared/4f6c/hdl/SW_BUTTON_INTERFACE_v1_0_S00_AXI.v" \
  "../../../bd/LED_IP/ipshared/4f6c/hdl/SW_BUTTON_INTERFACE_v1_0.v" \
  "../../../bd/LED_IP/ip/LED_IP_SW_BUTTON_INTERFACE_0_0/sim/LED_IP_SW_BUTTON_INTERFACE_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/LED_IP/ip/LED_IP_xbar_0/sim/LED_IP_xbar_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../Module_2.srcs/sources_1/bd/LED_IP/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/LED_IP/ip/LED_IP_auto_pc_0/sim/LED_IP_auto_pc_0.v" \
  "../../../bd/LED_IP/sim/LED_IP.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


-makelib ies_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_processing_system7_0_0/sim/AXI_DEBUG_BD_processing_system7_0_0.v" \
  "../../../bd/AXI_DEBUG_BD/ipshared/9e04/hdl/LED_CONTROLLER_v1_0_S00_AXI.v" \
  "../../../bd/AXI_DEBUG_BD/ipshared/9e04/hdl/LED_CONTROLLER_v1_0.v" \
  "../../../bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_LED_CONTROLLER_0_0/sim/AXI_DEBUG_BD_LED_CONTROLLER_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_rst_ps7_0_50M_0/sim/AXI_DEBUG_BD_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AXI_DEBUG_BD/sim/AXI_DEBUG_BD.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../Module_3.srcs/sources_1/bd/AXI_DEBUG_BD/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AXI_DEBUG_BD/ip/AXI_DEBUG_BD_auto_pc_0/sim/AXI_DEBUG_BD_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


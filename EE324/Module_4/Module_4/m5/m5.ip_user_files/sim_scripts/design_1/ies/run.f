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
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_DUTY_CYCLE_0_4/sim/design_1_DUTY_CYCLE_0_4.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
  "../../../bd/design_1/ipshared/baf8/hdl/PWM_CONTROLLER_v1_0_S00_AXI.v" \
  "../../../bd/design_1/ipshared/baf8/hdl/PWM_CONTROLLER_v1_0.v" \
  "../../../bd/design_1/ip/design_1_PWM_CONTROLLER_0_1/sim/design_1_PWM_CONTROLLER_0_1.v" \
  "../../../bd/design_1/ip/design_1_DUTY_CYCLE_0_5/sim/design_1_DUTY_CYCLE_0_5.v" \
  "../../../bd/design_1/ip/design_1_DUTY_CYCLE_0_6/sim/design_1_DUTY_CYCLE_0_6.v" \
  "../../../bd/design_1/ip/design_1_DUTY_CYCLE_0_7/sim/design_1_DUTY_CYCLE_0_7.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_50M_2/sim/design_1_rst_ps7_0_50M_2.vhd" \
-endlib
-makelib ies_lib/xlslice_v1_0_2 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
  "../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
  "../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
  "../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_20 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/sim/bd_36cd.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_0/sim/bd_36cd_ila_lib_0.v" \
  "../../../bd/design_1/ip/design_1_system_ila_0_1/sim/design_1_system_ila_0_1.v" \
  "../../../bd/design_1/ip/design_1_HZ_Counter_0_0/sim/design_1_HZ_Counter_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../m5.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


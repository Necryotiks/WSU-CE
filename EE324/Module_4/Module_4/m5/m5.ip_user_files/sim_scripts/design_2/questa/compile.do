vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_5
vlib questa_lib/msim/processing_system7_vip_v1_0_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_4
vlib questa_lib/msim/axi_data_fifo_v2_1_18
vlib questa_lib/msim/axi_register_slice_v2_1_19
vlib questa_lib/msim/axi_protocol_converter_v2_1_19

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 questa_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 questa_lib/msim/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_4 questa_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 questa_lib/msim/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 questa_lib/msim/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 questa_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_processing_system7_0_0/sim/design_2_processing_system7_0_0.v" \
"../../../bd/design_2/ipshared/f40d/hdl/RGB_PWM_v1_0_S00_AXI.v" \
"../../../bd/design_2/ipshared/f40d/hdl/RGB_PWM_v1_0.v" \
"../../../bd/design_2/ip/design_2_RGB_PWM_0_0/sim/design_2_RGB_PWM_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_2/ip/design_2_rst_ps7_0_50M_0/sim/design_2_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_2/sim/design_2.v" \
"../../../bd/design_2/ip/design_2_PWM_CLK_EN_0_0/sim/design_2_PWM_CLK_EN_0_0.v" \
"../../../bd/design_2/ip/design_2_PWM_CLK_EN_0_3/sim/design_2_PWM_CLK_EN_0_3.v" \
"../../../bd/design_2/ip/design_2_PWM_CLK_EN_0_4/sim/design_2_PWM_CLK_EN_0_4.v" \
"../../../bd/design_2/ip/design_2_DUTY_CYCLE_0_0/sim/design_2_DUTY_CYCLE_0_0.v" \
"../../../bd/design_2/ip/design_2_DUTY_CYCLE_0_1/sim/design_2_DUTY_CYCLE_0_1.v" \
"../../../bd/design_2/ip/design_2_DUTY_CYCLE_0_2/sim/design_2_DUTY_CYCLE_0_2.v" \

vlog -work xlslice_v1_0_2 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_xlslice_0_0/sim/design_2_xlslice_0_0.v" \
"../../../bd/design_2/ip/design_2_xlslice_0_1/sim/design_2_xlslice_0_1.v" \
"../../../bd/design_2/ip/design_2_xlslice_0_2/sim/design_2_xlslice_0_2.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../m5.srcs/sources_1/bd/design_2/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ipshared/8c62/hdl" "+incdir+../../../../m5.srcs/sources_1/bd/design_2/ip/design_2_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_auto_pc_0/sim/design_2_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


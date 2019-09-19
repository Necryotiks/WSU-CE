vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_19
vlib activehdl/fifo_generator_v13_2_4
vlib activehdl/axi_data_fifo_v2_1_18
vlib activehdl/axi_crossbar_v2_1_20
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/gigantic_mux
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/axi_protocol_converter_v2_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 activehdl/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 activehdl/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 activehdl/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 activehdl/axi_crossbar_v2_1_20
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap gigantic_mux activehdl/gigantic_mux
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap axi_protocol_converter_v2_1_19 activehdl/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ipshared/11a6/hdl/LED_CONTROLLER_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/11a6/hdl/LED_CONTROLLER_v1_0.v" \
"../../../bd/design_1/ip/design_1_LED_CONTROLLER_0_0/sim/design_1_LED_CONTROLLER_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/28be/hdl/SW_BTN_INTERFACE_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/28be/hdl/SW_BTN_INTERFACE_v1_0.v" \
"../../../bd/design_1/ip/design_1_SW_BTN_INTERFACE_0_0/sim/design_1_SW_BTN_INTERFACE_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_2/sim/bd_f60c_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_3/sim/bd_f60c_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_4/sim/bd_f60c_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_5/sim/bd_f60c_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_6/sim/bd_f60c_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/6887/hdl/verilog" "+incdir+../../../../MOD_3.srcs/sources_1/bd/design_1/ipshared/9623/hdl/verilog" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

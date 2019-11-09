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
vlib activehdl/xlconstant_v1_1_6
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
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6
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

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_VGA_controller_0_0/sim/CHAR_ROM_DISPLAY_VGA_controller_0_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/CHAR_ROM_DISPLAY_clk_wiz_0_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_family_support.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_family.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_soft_reset.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_pselect_f.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_address_decoder.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_slave_attachment.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/CHAR_ROM_DISPLAY_clk_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/CHAR_ROM_DISPLAY_clk_wiz_0_0_clk_wiz_drp.vhd" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/CHAR_ROM_DISPLAY_clk_wiz_0_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/CHAR_ROM_DISPLAY_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_clk_wiz_0_0/CHAR_ROM_DISPLAY_clk_wiz_0_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/afa8/hdl/encode.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/afa8/hdl/serdes_10_to_1.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/afa8/hdl/srldelay.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/afa8/hdl/hdmi_tx_v1_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_hdmi_tx_0_0/sim/CHAR_ROM_DISPLAY_hdmi_tx_0_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_ASCII_addr_gen_0_0/sim/CHAR_ROM_DISPLAY_ASCII_addr_gen_0_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_char_rom_0_0/sim/CHAR_ROM_DISPLAY_char_rom_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0/sim/CHAR_ROM_DISPLAY_processing_system7_0_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/c8ce/hdl/CHAR_ROM_CONTROLLER_v1_0_S00_AXI.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/c8ce/hdl/CHAR_ROM_CONTROLLER_v1_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_CHAR_ROM_CONTROLLER_0_0/sim/CHAR_ROM_DISPLAY_CHAR_ROM_CONTROLLER_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_xbar_0/sim/CHAR_ROM_DISPLAY_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_rst_ps7_0_50M_0/sim/CHAR_ROM_DISPLAY_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_C_ROM_LOGIC_0_0/sim/CHAR_ROM_DISPLAY_C_ROM_LOGIC_0_0.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_xlconstant_0_0/sim/CHAR_ROM_DISPLAY_xlconstant_0_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_xlconstant_0_1/sim/CHAR_ROM_DISPLAY_xlconstant_0_1.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_xlconstant_1_0/sim/CHAR_ROM_DISPLAY_xlconstant_1_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_xlconstant_1_1/sim/CHAR_ROM_DISPLAY_xlconstant_1_1.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_xlconstant_3_0/sim/CHAR_ROM_DISPLAY_xlconstant_3_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/fd33/hdl/RESOLUTION_CONTROLLER_v1_0_S00_AXI.v" \
"../../../bd/CHAR_ROM_DISPLAY/ipshared/fd33/hdl/RESOLUTION_CONTROLLER_v1_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_RESOLUTION_CONTROLLER_0_0/sim/CHAR_ROM_DISPLAY_RESOLUTION_CONTROLLER_0_0.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/c923" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/ec67/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ipshared/8c62/hdl" "+incdir+../../../../Module_5.srcs/sources_1/bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_processing_system7_0_0" "+incdir+/opt/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/CHAR_ROM_DISPLAY/ip/CHAR_ROM_DISPLAY_auto_pc_0/sim/CHAR_ROM_DISPLAY_auto_pc_0.v" \
"../../../bd/CHAR_ROM_DISPLAY/sim/CHAR_ROM_DISPLAY.v" \

vlog -work xil_defaultlib \
"glbl.v"


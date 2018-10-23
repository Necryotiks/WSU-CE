vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/gigantic_mux
vlib riviera/xlconcat_v2_1_1

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap gigantic_mux riviera/gigantic_mux
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_sim_netlist.v" \
"../../../bd/system/ipshared/1643/hdl/myLED_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/1643/hdl/myLED_v1_0.v" \
"../../../bd/system/ip/system_myLED_0_0/sim/system_myLED_0_0.v" \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/system_rst_ps7_0_50M_0_sim_netlist.v" \
"../../../bd/system/ipshared/3e65/hdl/my_RGB_LED_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/3e65/hdl/my_RGB_LED_v1_0.v" \
"../../../bd/system/ip/system_my_RGB_LED_0_0/sim/system_my_RGB_LED_0_0.v" \
"../../../bd/system/ip/system_xbar_0/system_xbar_0_sim_netlist.v" \
"../../../bd/system/sim/system.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/sim/bd_d5b8.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d5b8_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_2.srcs/sources_1/bd/system/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0_gigantic_mux.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/sim/bd_d5b8_g_inst_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_2.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_2/sim/bd_d5b8_slot_0_aw_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_3/sim/bd_d5b8_slot_0_w_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_4/sim/bd_d5b8_slot_0_b_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_5/sim/bd_d5b8_slot_0_ar_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_6/sim/bd_d5b8_slot_0_r_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/sim/system_system_ila_0_0.v" \
"../../../bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"


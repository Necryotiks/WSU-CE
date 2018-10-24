vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/xlconcat_v2_1_1

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_sim_netlist.v" \
"../../../bd/system/ipshared/9f7e/hdl/myLED_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/9f7e/hdl/myLED_v1_0.v" \
"../../../bd/system/ip/system_myLED_0_0/sim/system_myLED_0_0.v" \
"../../../bd/system/ip/system_rst_ps7_0_50M_0/system_rst_ps7_0_50M_0_sim_netlist.v" \
"../../../bd/system/ipshared/3e65/hdl/my_RGB_LED_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/3e65/hdl/my_RGB_LED_v1_0.v" \
"../../../bd/system/ip/system_my_RGB_LED_0_0/sim/system_my_RGB_LED_0_0.v" \
"../../../bd/system/ip/system_xbar_0/system_xbar_0_sim_netlist.v" \
"../../../bd/system/sim/system.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/sim/bd_d5b8.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_0/sim/bd_d5b8_ila_lib_0.v" \

vlog -work gigantic_mux -64 -incr "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_2.srcs/sources_1/bd/system/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/bd_d5b8_g_inst_0_gigantic_mux.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_1/sim/bd_d5b8_g_inst_0.v" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Module_2.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/6180/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/a08d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0a8d/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/0000/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_2/sim/bd_d5b8_slot_0_aw_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_3/sim/bd_d5b8_slot_0_w_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_4/sim/bd_d5b8_slot_0_b_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_5/sim/bd_d5b8_slot_0_ar_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/bd_0/ip/ip_6/sim/bd_d5b8_slot_0_r_0.v" \
"../../../bd/system/ip/system_system_ila_0_0/sim/system_system_ila_0_0.v" \
"../../../bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"


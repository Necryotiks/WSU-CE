vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib \
"glbl.v"


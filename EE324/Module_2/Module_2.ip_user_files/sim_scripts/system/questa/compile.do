vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_sim_netlist.v" \
"../../../bd/system/ipshared/c85a/hdl/myLED_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/c85a/hdl/myLED_v1_0.v" \
"../../../bd/system/ip/system_myLED_0_0/sim/system_myLED_0_0.v" \
"c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_rst_ps7_0_50M_0/system_rst_ps7_0_50M_0_sim_netlist.v" \
"c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"


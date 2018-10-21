vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Module_2.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0_sim_netlist.v" \
"../../../bd/system/ipshared/c85a/hdl/myLED_v1_0_S00_AXI.v" \
"../../../bd/system/ipshared/c85a/hdl/myLED_v1_0.v" \
"../../../bd/system/ip/system_myLED_0_0/sim/system_myLED_0_0.v" \
"c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_rst_ps7_0_50M_0/system_rst_ps7_0_50M_0_sim_netlist.v" \
"c:/Users/Sergaljerk/WSU-CPTE/EE324/Module_2/Module_2.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_sim_netlist.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"


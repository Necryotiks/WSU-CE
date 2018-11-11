vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib -64 -incr \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_SerialAdder_0_0/sim/SERIAL_ADDER_SerialAdder_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Module_11.srcs/sources_1/bd/SERIAL_ADDER/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../Module_11.srcs/sources_1/bd/SERIAL_ADDER/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_rst_clk_100MHz_100M_0/sim/SERIAL_ADDER_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/SERIAL_ADDER/sim/SERIAL_ADDER.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_SIPO_0_0/sim/SERIAL_ADDER_SIPO_0_0.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_PISO_0_0/sim/SERIAL_ADDER_PISO_0_0.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_dff_0_0/sim/SERIAL_ADDER_dff_0_0.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_PISO_0_1/sim/SERIAL_ADDER_PISO_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"


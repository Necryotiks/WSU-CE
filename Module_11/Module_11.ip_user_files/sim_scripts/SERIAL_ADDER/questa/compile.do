vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib -64 \
"../../../bd/SERIAL_ADDER/sim/SERIAL_ADDER.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_SerialAdder_0_1/sim/SERIAL_ADDER_SerialAdder_0_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Module_11.srcs/sources_1/bd/SERIAL_ADDER/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../Module_11.srcs/sources_1/bd/SERIAL_ADDER/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_rst_clk_100MHz_100M_1/sim/SERIAL_ADDER_rst_clk_100MHz_100M_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_SerialAdder_0_0/sim/SERIAL_ADDER_SerialAdder_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_11.srcs/sources_1/bd/SERIAL_ADDER/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_11.srcs/sources_1/bd/SERIAL_ADDER/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_rst_clk_100MHz_100M_0/sim/SERIAL_ADDER_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SERIAL_ADDER/sim/SERIAL_ADDER.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_SIPO_0_0/sim/SERIAL_ADDER_SIPO_0_0.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_PISO_0_0/sim/SERIAL_ADDER_PISO_0_0.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_dff_0_0/sim/SERIAL_ADDER_dff_0_0.v" \
"../../../bd/SERIAL_ADDER/ip/SERIAL_ADDER_PISO_0_1/sim/SERIAL_ADDER_PISO_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"


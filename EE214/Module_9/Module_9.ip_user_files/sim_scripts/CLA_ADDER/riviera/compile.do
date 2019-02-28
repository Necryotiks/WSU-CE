vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CLA_ADDER/ip/CLA_ADDER_CLA_0_0/sim/CLA_ADDER_CLA_0_0.v" \
"../../../bd/CLA_ADDER/ip/CLA_ADDER_ssd_dec_0_0/sim/CLA_ADDER_ssd_dec_0_0.v" \
"../../../bd/CLA_ADDER/ip/CLA_ADDER_temp_mux_input_0_0/sim/CLA_ADDER_temp_mux_input_0_0.v" \
"../../../bd/CLA_ADDER/ip/CLA_ADDER_ssd_mux_0_0/sim/CLA_ADDER_ssd_mux_0_0.v" \
"../../../bd/CLA_ADDER/sim/CLA_ADDER.v" \


vlog -work xil_defaultlib \
"glbl.v"


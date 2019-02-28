vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/test/ip/test_SIPO_0_0/sim/test_SIPO_0_0.v" \
"../../../bd/test/sim/test.v" \


vlog -work xil_defaultlib \
"glbl.v"


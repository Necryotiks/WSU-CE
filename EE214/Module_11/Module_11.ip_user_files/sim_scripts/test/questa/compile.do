vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/test/ip/test_SIPO_0_0/sim/test_SIPO_0_0.v" \
"../../../bd/test/sim/test.v" \


vlog -work xil_defaultlib \
"glbl.v"


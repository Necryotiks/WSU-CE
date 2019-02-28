vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/ARITH/ip/ARITH_ALU_0_0/sim/ARITH_ALU_0_0.v" \
"../../../bd/ARITH/sim/ARITH.v" \


vlog -work xil_defaultlib \
"glbl.v"


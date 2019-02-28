vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/ARITH/ip/ARITH_ALU_0_0/sim/ARITH_ALU_0_0.v" \
"../../../bd/ARITH/sim/ARITH.v" \


vlog -work xil_defaultlib \
"glbl.v"


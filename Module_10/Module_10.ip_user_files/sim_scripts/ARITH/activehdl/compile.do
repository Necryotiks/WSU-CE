vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/ARITH/ip/ARITH_ALU_0_0/sim/ARITH_ALU_0_0.v" \
"../../../bd/ARITH/sim/ARITH.v" \


vlog -work xil_defaultlib \
"glbl.v"


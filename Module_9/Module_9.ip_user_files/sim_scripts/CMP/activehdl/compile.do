vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CMP/ip/CMP_Multiplier_0_1/sim/CMP_Multiplier_0_1.v" \
"../../../bd/CMP/ip/CMP_PIPO_0_1/sim/CMP_PIPO_0_1.v" \
"../../../bd/CMP/ip/CMP_PIPO_1_0/sim/CMP_PIPO_1_0.v" \
"../../../bd/CMP/ip/CMP_PIPO_1_1/sim/CMP_PIPO_1_1.v" \
"../../../bd/CMP/ip/CMP_Comparator_0_0/sim/CMP_Comparator_0_0.v" \
"../../../bd/CMP/sim/CMP.v" \


vlog -work xil_defaultlib \
"glbl.v"


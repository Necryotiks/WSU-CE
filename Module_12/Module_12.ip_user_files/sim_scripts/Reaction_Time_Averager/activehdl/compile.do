vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_LFSR_0_0/sim/Reaction_Time_Averager_LFSR_0_0.v" \
"../../../bd/Reaction_Time_Averager/sim/Reaction_Time_Averager.v" \


vlog -work xil_defaultlib \
"glbl.v"


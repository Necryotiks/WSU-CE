vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_LFSR_0_0/sim/Reaction_Time_Averager_LFSR_0_0.v" \
"../../../bd/Reaction_Time_Averager/sim/Reaction_Time_Averager.v" \


vlog -work xil_defaultlib \
"glbl.v"


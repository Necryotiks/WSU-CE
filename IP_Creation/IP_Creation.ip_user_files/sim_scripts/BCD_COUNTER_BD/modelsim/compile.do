vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/BCD_COUNTER_BD/ip/BCD_COUNTER_BD_BCD_Counter_0_0/sim/BCD_COUNTER_BD_BCD_Counter_0_0.v" \
"../../../bd/BCD_COUNTER_BD/sim/BCD_COUNTER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


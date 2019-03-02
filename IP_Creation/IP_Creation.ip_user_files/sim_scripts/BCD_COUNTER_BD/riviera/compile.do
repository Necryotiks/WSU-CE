vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BCD_COUNTER_BD/ip/BCD_COUNTER_BD_BCD_Counter_0_0/sim/BCD_COUNTER_BD_BCD_Counter_0_0.v" \
"../../../bd/BCD_COUNTER_BD/sim/BCD_COUNTER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


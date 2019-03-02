vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BCD_COUNTER_BD/ip/BCD_COUNTER_BD_BCD_Counter_0_0/sim/BCD_COUNTER_BD_BCD_Counter_0_0.v" \
"../../../bd/BCD_COUNTER_BD/sim/BCD_COUNTER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


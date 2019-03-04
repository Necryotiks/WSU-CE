vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SVD_DRIVER_BD/ip/SVD_DRIVER_BD_SVD_DRIVER_0_0/sim/SVD_DRIVER_BD_SVD_DRIVER_0_0.v" \
"../../../bd/SVD_DRIVER_BD/sim/SVD_DRIVER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


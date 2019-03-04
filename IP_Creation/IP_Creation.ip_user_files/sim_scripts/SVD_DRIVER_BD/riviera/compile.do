vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SVD_DRIVER_BD/ip/SVD_DRIVER_BD_SVD_DRIVER_0_0/sim/SVD_DRIVER_BD_SVD_DRIVER_0_0.v" \
"../../../bd/SVD_DRIVER_BD/sim/SVD_DRIVER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


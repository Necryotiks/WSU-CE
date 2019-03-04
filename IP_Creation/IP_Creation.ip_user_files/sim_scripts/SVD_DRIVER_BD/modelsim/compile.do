vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/SVD_DRIVER_BD/ip/SVD_DRIVER_BD_SVD_DRIVER_0_0/sim/SVD_DRIVER_BD_SVD_DRIVER_0_0.v" \
"../../../bd/SVD_DRIVER_BD/sim/SVD_DRIVER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


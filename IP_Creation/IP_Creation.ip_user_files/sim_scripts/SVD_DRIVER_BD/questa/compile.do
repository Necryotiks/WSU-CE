vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/SVD_DRIVER_BD/ip/SVD_DRIVER_BD_SVD_DRIVER_0_0/sim/SVD_DRIVER_BD_SVD_DRIVER_0_0.v" \
"../../../bd/SVD_DRIVER_BD/sim/SVD_DRIVER_BD.v" \


vlog -work xil_defaultlib \
"glbl.v"


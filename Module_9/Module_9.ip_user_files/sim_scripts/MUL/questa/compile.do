vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xlslice_v1_0_1
vlib questa_lib/msim/xil_defaultlib

vmap xlslice_v1_0_1 questa_lib/msim/xlslice_v1_0_1
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xlslice_v1_0_1 -64 \
"../../../../Module_9.srcs/sources_1/bd/MUL/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/MUL/ip/MUL_Digit_1_0/sim/MUL_Digit_1_0.v" \
"../../../bd/MUL/ip/MUL_Digit_2_0/sim/MUL_Digit_2_0.v" \
"../../../bd/MUL/ip/MUL_Digit_3_0/sim/MUL_Digit_3_0.v" \
"../../../bd/MUL/ip/MUL_Digit_4_0/sim/MUL_Digit_4_0.v" \
"../../../bd/MUL/ip/MUL_Multiplier_0_0/sim/MUL_Multiplier_0_0.v" \
"../../../bd/MUL/ip/MUL_ssd_dec_0_0/sim/MUL_ssd_dec_0_0.v" \
"../../../bd/MUL/ip/MUL_ssd_mux_0_0/sim/MUL_ssd_mux_0_0.v" \
"../../../bd/MUL/sim/MUL.v" \
"../../../bd/MUL/ip/MUL_PIPO_0_0/sim/MUL_PIPO_0_0.v" \
"../../../bd/MUL/ip/MUL_PIPO_0_1/sim/MUL_PIPO_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"


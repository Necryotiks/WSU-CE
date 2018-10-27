vlib work
vlib riviera

vlib riviera/xlslice_v1_0_1
vlib riviera/xil_defaultlib

vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../Module_9.srcs/sources_1/bd/MUL/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/MUL/ip/MUL_Digit_1_0/sim/MUL_Digit_1_0.v" \
"../../../bd/MUL/ip/MUL_Digit_2_0/sim/MUL_Digit_2_0.v" \
"../../../bd/MUL/ip/MUL_Digit_3_0/sim/MUL_Digit_3_0.v" \
"../../../bd/MUL/ip/MUL_Digit_4_0/sim/MUL_Digit_4_0.v" \
"../../../bd/MUL/ip/MUL_Multiplier_0_0/sim/MUL_Multiplier_0_0.v" \
"../../../bd/MUL/ip/MUL_ssd_dec_0_0/sim/MUL_ssd_dec_0_0.v" \
"../../../bd/MUL/ip/MUL_ssd_mux_0_0/sim/MUL_ssd_mux_0_0.v" \
"../../../bd/MUL/sim/MUL.v" \

vlog -work xil_defaultlib \
"glbl.v"


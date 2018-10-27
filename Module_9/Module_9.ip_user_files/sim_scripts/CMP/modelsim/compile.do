vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1

vlog -work xil_defaultlib -64 -incr \
"../../../bd/CMP/ip/CMP_Multiplier_0_1/sim/CMP_Multiplier_0_1.v" \
"../../../bd/CMP/ip/CMP_PIPO_0_1/sim/CMP_PIPO_0_1.v" \
"../../../bd/CMP/ip/CMP_PIPO_1_0/sim/CMP_PIPO_1_0.v" \
"../../../bd/CMP/ip/CMP_PIPO_1_1/sim/CMP_PIPO_1_1.v" \
"../../../bd/CMP/ip/CMP_Comparator_0_0/sim/CMP_Comparator_0_0.v" \
"../../../bd/CMP/sim/CMP.v" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../Module_9.srcs/sources_1/bd/CMP/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/CMP/ip/CMP_Digit_1_0/sim/CMP_Digit_1_0.v" \
"../../../bd/CMP/ip/CMP_Digit_2_0/sim/CMP_Digit_2_0.v" \
"../../../bd/CMP/ip/CMP_Digit_3_0/sim/CMP_Digit_3_0.v" \
"../../../bd/CMP/ip/CMP_Digit_4_0/sim/CMP_Digit_4_0.v" \
"../../../bd/CMP/ip/CMP_ssd_dec_0_0/sim/CMP_ssd_dec_0_0.v" \
"../../../bd/CMP/ip/CMP_ssd_mux_0_0/sim/CMP_ssd_mux_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


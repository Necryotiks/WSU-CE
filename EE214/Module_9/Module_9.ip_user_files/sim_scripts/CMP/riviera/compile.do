vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CMP/ip/CMP_Multiplier_0_1/sim/CMP_Multiplier_0_1.v" \
"../../../bd/CMP/ip/CMP_PIPO_0_1/sim/CMP_PIPO_0_1.v" \
"../../../bd/CMP/ip/CMP_PIPO_1_0/sim/CMP_PIPO_1_0.v" \
"../../../bd/CMP/ip/CMP_PIPO_1_1/sim/CMP_PIPO_1_1.v" \
"../../../bd/CMP/ip/CMP_Comparator_0_0/sim/CMP_Comparator_0_0.v" \
"../../../bd/CMP/sim/CMP.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../Module_9.srcs/sources_1/bd/CMP/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/CMP/ip/CMP_Digit_1_0/sim/CMP_Digit_1_0.v" \
"../../../bd/CMP/ip/CMP_Digit_2_0/sim/CMP_Digit_2_0.v" \
"../../../bd/CMP/ip/CMP_Digit_3_0/sim/CMP_Digit_3_0.v" \
"../../../bd/CMP/ip/CMP_Digit_4_0/sim/CMP_Digit_4_0.v" \
"../../../bd/CMP/ip/CMP_ssd_dec_0_0/sim/CMP_ssd_dec_0_0.v" \
"../../../bd/CMP/ip/CMP_ssd_mux_0_0/sim/CMP_ssd_mux_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_1 questa_lib/msim/xlslice_v1_0_1

vlog -work xil_defaultlib -64 \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_ALU_0_0/sim/ARITHMETIC_LOGIC_UNIT_ALU_0_0.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_PIPO_0_0/sim/ARITHMETIC_LOGIC_UNIT_PIPO_0_0.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_PIPO_0_1/sim/ARITHMETIC_LOGIC_UNIT_PIPO_0_1.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_ssd_mux_0_0/sim/ARITHMETIC_LOGIC_UNIT_ssd_mux_0_0.v" \

vlog -work xlslice_v1_0_1 -64 \
"../../../../Module_10.srcs/sources_1/bd/ARITHMETIC_LOGIC_UNIT/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_xlslice_0_0/sim/ARITHMETIC_LOGIC_UNIT_xlslice_0_0.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_ssd_dec_0_0/sim/ARITHMETIC_LOGIC_UNIT_ssd_dec_0_0.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_xlslice_1_0/sim/ARITHMETIC_LOGIC_UNIT_xlslice_1_0.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/ip/ARITHMETIC_LOGIC_UNIT_xlslice_1_1/sim/ARITHMETIC_LOGIC_UNIT_xlslice_1_1.v" \
"../../../bd/ARITHMETIC_LOGIC_UNIT/sim/ARITHMETIC_LOGIC_UNIT.v" \

vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/S_A_FSM/ip/S_A_FSM_SerialAdder_0_0/sim/S_A_FSM_SerialAdder_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/S_A_FSM/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_11_Alt.srcs/sources_1/bd/S_A_FSM/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/S_A_FSM/ip/S_A_FSM_rst_clk_100MHz_100M_0/sim/S_A_FSM_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/S_A_FSM/ip/S_A_FSM_SIPO_0_0/sim/S_A_FSM_SIPO_0_0.v" \
"../../../bd/S_A_FSM/ip/S_A_FSM_PISO_0_0/sim/S_A_FSM_PISO_0_0.v" \
"../../../bd/S_A_FSM/ip/S_A_FSM_PISO_0_1/sim/S_A_FSM_PISO_0_1.v" \
"../../../bd/S_A_FSM/sim/S_A_FSM.v" \
"../../../bd/S_A_FSM/ip/S_A_FSM_dff_0_0/sim/S_A_FSM_dff_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


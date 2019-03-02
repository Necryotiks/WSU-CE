vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlslice_v1_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_1 activehdl/xlslice_v1_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_LSFR_0_0/sim/Reaction_Time_Averager_LSFR_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_RTM_FSM_0_0/sim/Reaction_Time_Averager_RTM_FSM_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_stopwatch_ssd_driver_0_0/sim/Reaction_Time_Averager_stopwatch_ssd_driver_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_ssd_mux_0_0/sim/Reaction_Time_Averager_ssd_mux_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_ssd_dec_0_0/sim/Reaction_Time_Averager_ssd_dec_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_1.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Module_1.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_proc_sys_reset_0_0/sim/Reaction_Time_Averager_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Accumuator_0_0/sim/Reaction_Time_Averager_Accumuator_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_BCD_TO_BINARY_0_0/sim/Reaction_Time_Averager_BCD_TO_BINARY_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_BINARY_TO_BCD_0_0/sim/Reaction_Time_Averager_BINARY_TO_BCD_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_EXTRA_THICC_MUX_0_0/sim/Reaction_Time_Averager_EXTRA_THICC_MUX_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../Module_1.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_0/sim/Reaction_Time_Averager_xlslice_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_1/sim/Reaction_Time_Averager_xlslice_0_1.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_2/sim/Reaction_Time_Averager_xlslice_0_2.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_xlslice_0_3/sim/Reaction_Time_Averager_xlslice_0_3.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Divider_0_0/sim/Reaction_Time_Averager_Divider_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Debounce_RTM_0_0/sim/Reaction_Time_Averager_Debounce_RTM_0_0.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Debounce_RTM_0_1/sim/Reaction_Time_Averager_Debounce_RTM_0_1.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Debounce_RTM_0_2/sim/Reaction_Time_Averager_Debounce_RTM_0_2.v" \
"../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_HZ_Counter_0_0/sim/Reaction_Time_Averager_HZ_Counter_0_0.v" \
"../../../bd/Reaction_Time_Averager/sim/Reaction_Time_Averager.v" \

vlog -work xil_defaultlib \
"glbl.v"


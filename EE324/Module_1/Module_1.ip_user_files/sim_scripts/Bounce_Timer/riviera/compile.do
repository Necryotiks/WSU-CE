vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlslice_v1_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_dec_0_0/sim/Bounce_Timer_ssd_dec_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_mux_0_0/sim/Bounce_Timer_ssd_mux_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_HZ_Counter_0_0/sim/Bounce_Timer_HZ_Counter_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_rst_clk_100MHz_100M_0/sim/Bounce_Timer_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_Bounce_Counter_FSM_0_0/sim/Bounce_Timer_Bounce_Counter_FSM_0_0.v" \
"../../../bd/Bounce_Timer/sim/Bounce_Timer.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_BINARY_TO_BCD_0_0/sim/Bounce_Timer_BINARY_TO_BCD_0_0.v" \

vlog -work xlslice_v1_0_1  -v2k5 \
"../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_xlslice_0_0/sim/Bounce_Timer_xlslice_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_xlslice_1_0/sim/Bounce_Timer_xlslice_1_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_xlslice_2_0/sim/Bounce_Timer_xlslice_2_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_xlslice_3_0/sim/Bounce_Timer_xlslice_3_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13

vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_dec_0_0/sim/Bounce_Timer_ssd_dec_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_mux_0_0/sim/Bounce_Timer_ssd_mux_0_0.v" \
"../../../bd/Bounce_Timer/ip/Bounce_Timer_stopwatch_ssd_driver_0_0/sim/Bounce_Timer_stopwatch_ssd_driver_0_0.v" \
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

vlog -work xil_defaultlib \
"glbl.v"


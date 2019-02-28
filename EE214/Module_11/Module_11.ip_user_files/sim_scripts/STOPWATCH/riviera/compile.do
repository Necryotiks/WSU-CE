vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/STOPWATCH/ip/STOPWATCH_stopwatchFSM_0_0/sim/STOPWATCH_stopwatchFSM_0_0.v" \
"../../../bd/STOPWATCH/ip/STOPWATCH_HZ_Counter_0_0/sim/STOPWATCH_HZ_Counter_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_11.srcs/sources_1/bd/STOPWATCH/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_11.srcs/sources_1/bd/STOPWATCH/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/STOPWATCH/ip/STOPWATCH_rst_clk_100MHz_100M_0/sim/STOPWATCH_rst_clk_100MHz_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/STOPWATCH/ip/STOPWATCH_ssd_mux_0_0/sim/STOPWATCH_ssd_mux_0_0.v" \
"../../../bd/STOPWATCH/ip/STOPWATCH_ssd_dec_0_0/sim/STOPWATCH_ssd_dec_0_0.v" \
"../../../bd/STOPWATCH/sim/STOPWATCH.v" \
"../../../bd/STOPWATCH/ip/STOPWATCH_timer_ssd_driver_0_0/sim/STOPWATCH_timer_ssd_driver_0_0.v" \
"../../../bd/STOPWATCH/ip/STOPWATCH_SW_T_MUX_0_0/sim/STOPWATCH_SW_T_MUX_0_0.v" \
"../../../bd/STOPWATCH/ip/STOPWATCH_stopwatch_ssd_driver_0_0/sim/STOPWATCH_stopwatch_ssd_driver_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SSD_TEST/ip/SSD_TEST_HZ_Counter_0_0/sim/SSD_TEST_HZ_Counter_0_0.v" \
"../../../bd/SSD_TEST/ip/SSD_TEST_RTM_FSM_0_0/sim/SSD_TEST_RTM_FSM_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Module_12.srcs/sources_1/bd/SSD_TEST/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../Module_12.srcs/sources_1/bd/SSD_TEST/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SSD_TEST/ip/SSD_TEST_proc_sys_reset_0_0/sim/SSD_TEST_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/SSD_TEST/ip/SSD_TEST_stopwatch_ssd_driver_0_0/sim/SSD_TEST_stopwatch_ssd_driver_0_0.v" \
"../../../bd/SSD_TEST/ip/SSD_TEST_LSFR_0_0/sim/SSD_TEST_LSFR_0_0.v" \
"../../../bd/SSD_TEST/sim/SSD_TEST.v" \

vlog -work xil_defaultlib \
"glbl.v"


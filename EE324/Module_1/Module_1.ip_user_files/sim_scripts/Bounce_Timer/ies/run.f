-makelib ies_lib/xil_defaultlib \
  "../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_dec_0_0/sim/Bounce_Timer_ssd_dec_0_0.v" \
  "../../../bd/Bounce_Timer/ip/Bounce_Timer_ssd_mux_0_0/sim/Bounce_Timer_ssd_mux_0_0.v" \
  "../../../bd/Bounce_Timer/ip/Bounce_Timer_stopwatch_ssd_driver_0_0/sim/Bounce_Timer_stopwatch_ssd_driver_0_0.v" \
  "../../../bd/Bounce_Timer/ip/Bounce_Timer_HZ_Counter_0_0/sim/Bounce_Timer_HZ_Counter_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Module_1.srcs/sources_1/bd/Bounce_Timer/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Bounce_Timer/ip/Bounce_Timer_rst_clk_100MHz_100M_0/sim/Bounce_Timer_rst_clk_100MHz_100M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Bounce_Timer/ip/Bounce_Timer_Bounce_Counter_FSM_0_0/sim/Bounce_Timer_Bounce_Counter_FSM_0_0.v" \
  "../../../bd/Bounce_Timer/sim/Bounce_Timer.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


-makelib ies_lib/xil_defaultlib \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_LSFR_0_0/sim/Reaction_Time_Averager_LSFR_0_0.v" \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_HZ_Counter_0_0/sim/Reaction_Time_Averager_HZ_Counter_0_0.v" \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_RTM_FSM_0_0/sim/Reaction_Time_Averager_RTM_FSM_0_0.v" \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_stopwatch_ssd_driver_0_0/sim/Reaction_Time_Averager_stopwatch_ssd_driver_0_0.v" \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_ssd_mux_0_0/sim/Reaction_Time_Averager_ssd_mux_0_0.v" \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_ssd_dec_0_0/sim/Reaction_Time_Averager_ssd_dec_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_proc_sys_reset_0_0/sim/Reaction_Time_Averager_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Reaction_Time_Averager/sim/Reaction_Time_Averager.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


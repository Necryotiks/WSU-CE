# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL-1065} -limit 10000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param chipscope.maxJobs 2
  reset_param project.defaultXPMLibraries 
  open_checkpoint /home/necryotiks/WSU-CPTE/EE324/Module_5/Module_5.runs/impl_2/CHAR_ROM_DISPLAY_wrapper.dcp
  set_property webtalk.parent_dir /home/necryotiks/WSU-CPTE/EE324/Module_5/Module_5.cache/wt [current_project]
  set_property parent.project_path /home/necryotiks/WSU-CPTE/EE324/Module_5/Module_5.xpr [current_project]
  set_property ip_repo_paths {
  /home/necryotiks/WSU-CPTE/EE324/ip_repo/RESOLUTION_CONTROLLER_1.0
  /home/necryotiks/WSU-CPTE/EE324/ip_repo/CHAR_ROM_CONTROLLER_1.0
  /home/necryotiks/WSU-CPTE/IP_REPOS
} [current_project]
  update_ip_catalog
  set_property ip_output_repo /home/necryotiks/WSU-CPTE/EE324/Module_5/Module_5.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design -directive Explore
  write_checkpoint -force CHAR_ROM_DISPLAY_wrapper_opt.dcp
  create_report "impl_2_opt_report_drc_0" "report_drc -file CHAR_ROM_DISPLAY_wrapper_drc_opted.rpt -pb CHAR_ROM_DISPLAY_wrapper_drc_opted.pb -rpx CHAR_ROM_DISPLAY_wrapper_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  if { [llength [get_debug_cores -quiet] ] > 0 }  { 
    implement_debug_core 
  } 
  place_design 
  write_checkpoint -force CHAR_ROM_DISPLAY_wrapper_placed.dcp
  create_report "impl_2_place_report_io_0" "report_io -file CHAR_ROM_DISPLAY_wrapper_io_placed.rpt"
  create_report "impl_2_place_report_utilization_0" "report_utilization -file CHAR_ROM_DISPLAY_wrapper_utilization_placed.rpt -pb CHAR_ROM_DISPLAY_wrapper_utilization_placed.pb"
  create_report "impl_2_place_report_control_sets_0" "report_control_sets -verbose -file CHAR_ROM_DISPLAY_wrapper_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step phys_opt_design
set ACTIVE_STEP phys_opt_design
set rc [catch {
  create_msg_db phys_opt_design.pb
  phys_opt_design -directive AggressiveExplore
  write_checkpoint -force CHAR_ROM_DISPLAY_wrapper_physopt.dcp
  close_msg_db -file phys_opt_design.pb
} RESULT]
if {$rc} {
  step_failed phys_opt_design
  return -code error $RESULT
} else {
  end_step phys_opt_design
  unset ACTIVE_STEP 
}

  set_msg_config -source 4 -id {Route 35-39} -severity "critical warning" -new_severity warning
start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design -directive AggressiveExplore
  write_checkpoint -force CHAR_ROM_DISPLAY_wrapper_routed.dcp
  create_report "impl_2_route_report_drc_0" "report_drc -file CHAR_ROM_DISPLAY_wrapper_drc_routed.rpt -pb CHAR_ROM_DISPLAY_wrapper_drc_routed.pb -rpx CHAR_ROM_DISPLAY_wrapper_drc_routed.rpx"
  create_report "impl_2_route_report_methodology_0" "report_methodology -file CHAR_ROM_DISPLAY_wrapper_methodology_drc_routed.rpt -pb CHAR_ROM_DISPLAY_wrapper_methodology_drc_routed.pb -rpx CHAR_ROM_DISPLAY_wrapper_methodology_drc_routed.rpx"
  create_report "impl_2_route_report_power_0" "report_power -file CHAR_ROM_DISPLAY_wrapper_power_routed.rpt -pb CHAR_ROM_DISPLAY_wrapper_power_summary_routed.pb -rpx CHAR_ROM_DISPLAY_wrapper_power_routed.rpx"
  create_report "impl_2_route_report_route_status_0" "report_route_status -file CHAR_ROM_DISPLAY_wrapper_route_status.rpt -pb CHAR_ROM_DISPLAY_wrapper_route_status.pb"
  create_report "impl_2_route_report_timing_summary_0" "report_timing_summary -max_paths 10 -file CHAR_ROM_DISPLAY_wrapper_timing_summary_routed.rpt -pb CHAR_ROM_DISPLAY_wrapper_timing_summary_routed.pb -rpx CHAR_ROM_DISPLAY_wrapper_timing_summary_routed.rpx"
  create_report "impl_2_route_report_incremental_reuse_0" "report_incremental_reuse -file CHAR_ROM_DISPLAY_wrapper_incremental_reuse_routed.rpt"
  create_report "impl_2_route_report_clock_utilization_0" "report_clock_utilization -file CHAR_ROM_DISPLAY_wrapper_clock_utilization_routed.rpt"
  create_report "impl_2_route_report_bus_skew_0" "report_bus_skew -warn_on_violation -file CHAR_ROM_DISPLAY_wrapper_bus_skew_routed.rpt -pb CHAR_ROM_DISPLAY_wrapper_bus_skew_routed.pb -rpx CHAR_ROM_DISPLAY_wrapper_bus_skew_routed.rpx"
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force CHAR_ROM_DISPLAY_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step post_route_phys_opt_design
set ACTIVE_STEP post_route_phys_opt_design
set rc [catch {
  set tool_flow [get_property -quiet TOOL_FLOW [current_project -quiet]]
  if {$tool_flow eq {SDx}} {send_msg_id {101-1} {status} {Starting optional post-route physical design optimization.} }
  create_msg_db post_route_phys_opt_design.pb
  phys_opt_design -directive AggressiveExplore
  write_checkpoint -force CHAR_ROM_DISPLAY_wrapper_postroute_physopt.dcp
  create_report "impl_2_post_route_phys_opt_report_timing_summary_0" "report_timing_summary -max_paths 10 -warn_on_violation -file CHAR_ROM_DISPLAY_wrapper_timing_summary_postroute_physopted.rpt -pb CHAR_ROM_DISPLAY_wrapper_timing_summary_postroute_physopted.pb -rpx CHAR_ROM_DISPLAY_wrapper_timing_summary_postroute_physopted.rpx"
  create_report "impl_2_post_route_phys_opt_report_bus_skew_0" "report_bus_skew -warn_on_violation -file CHAR_ROM_DISPLAY_wrapper_bus_skew_postroute_physopted.rpt -pb CHAR_ROM_DISPLAY_wrapper_bus_skew_postroute_physopted.pb -rpx CHAR_ROM_DISPLAY_wrapper_bus_skew_postroute_physopted.rpx"
  close_msg_db -file post_route_phys_opt_design.pb
  set tool_flow [get_property TOOL_FLOW [current_project]]
  if {$tool_flow eq {SDx}} {send_msg_id {101-1} {status} {Finished optional post-route physical design optimization.} }
} RESULT]
if {$rc} {
  step_failed post_route_phys_opt_design
  return -code error $RESULT
} else {
  end_step post_route_phys_opt_design
  unset ACTIVE_STEP 
}


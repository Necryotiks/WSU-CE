
################################################################
# This is a generated script based on design: STOPWATCH
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source STOPWATCH_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# HZ_Counter, SW_T_MUX, ssd_dec, ssd_mux, stopwatchFSM, stopwatch_ssd_driver, timer_ssd_driver

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z007sclg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name STOPWATCH

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set i_CLK [ create_bd_port -dir I -type clk i_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $i_CLK
  set i_Inc_0 [ create_bd_port -dir I i_Inc_0 ]
  set i_RST_0 [ create_bd_port -dir I -type rst i_RST_0 ]
  set i_Start_0 [ create_bd_port -dir I i_Start_0 ]
  set i_Stop_0 [ create_bd_port -dir I i_Stop_0 ]
  set i_TIMER_0 [ create_bd_port -dir I i_TIMER_0 ]
  set o_Anodes_0 [ create_bd_port -dir O -from 3 -to 0 o_Anodes_0 ]
  set o_Cathodes_0 [ create_bd_port -dir O -from 6 -to 0 o_Cathodes_0 ]

  # Create instance: HZ_Counter_0, and set properties
  set block_name HZ_Counter
  set block_cell_name HZ_Counter_0
  if { [catch {set HZ_Counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $HZ_Counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.c_NUM {500000} \
 ] $HZ_Counter_0

  # Create instance: SW_T_MUX_0, and set properties
  set block_name SW_T_MUX
  set block_cell_name SW_T_MUX_0
  if { [catch {set SW_T_MUX_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SW_T_MUX_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_clk_100MHz_100M, and set properties
  set rst_clk_100MHz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_100MHz_100M ]

  # Create instance: ssd_dec_0, and set properties
  set block_name ssd_dec
  set block_cell_name ssd_dec_0
  if { [catch {set ssd_dec_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ssd_dec_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ssd_mux_0, and set properties
  set block_name ssd_mux
  set block_cell_name ssd_mux_0
  if { [catch {set ssd_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ssd_mux_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: stopwatchFSM_0, and set properties
  set block_name stopwatchFSM
  set block_cell_name stopwatchFSM_0
  if { [catch {set stopwatchFSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $stopwatchFSM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: stopwatch_ssd_driver_0, and set properties
  set block_name stopwatch_ssd_driver
  set block_cell_name stopwatch_ssd_driver_0
  if { [catch {set stopwatch_ssd_driver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $stopwatch_ssd_driver_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: timer_ssd_driver_0, and set properties
  set block_name timer_ssd_driver
  set block_cell_name timer_ssd_driver_0
  if { [catch {set timer_ssd_driver_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $timer_ssd_driver_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net HZ_Counter_0_o_Out [get_bd_pins HZ_Counter_0/o_Out] [get_bd_pins stopwatchFSM_0/i_CLK1KHZ]
  connect_bd_net -net SW_T_MUX_0_o_Digit_1 [get_bd_pins SW_T_MUX_0/o_Digit_1] [get_bd_pins ssd_mux_0/i_Digit_1]
  connect_bd_net -net SW_T_MUX_0_o_Digit_2 [get_bd_pins SW_T_MUX_0/o_Digit_2] [get_bd_pins ssd_mux_0/i_Digit_2]
  connect_bd_net -net SW_T_MUX_0_o_Digit_3 [get_bd_pins SW_T_MUX_0/o_Digit_3] [get_bd_pins ssd_mux_0/i_Digit_3]
  connect_bd_net -net SW_T_MUX_0_o_Digit_4 [get_bd_pins SW_T_MUX_0/o_Digit_4] [get_bd_pins ssd_mux_0/i_Digit_4]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports i_CLK] [get_bd_pins HZ_Counter_0/i_CLK] [get_bd_pins SW_T_MUX_0/i_CLK] [get_bd_pins rst_clk_100MHz_100M/slowest_sync_clk] [get_bd_pins ssd_dec_0/i_CLK] [get_bd_pins ssd_mux_0/i_CLK]
  connect_bd_net -net i_Inc_0_1 [get_bd_ports i_Inc_0] [get_bd_pins stopwatchFSM_0/i_Inc]
  connect_bd_net -net i_RST_0_1 [get_bd_ports i_RST_0] [get_bd_pins rst_clk_100MHz_100M/ext_reset_in] [get_bd_pins stopwatchFSM_0/i_RST]
  connect_bd_net -net i_Start_0_1 [get_bd_ports i_Start_0] [get_bd_pins stopwatchFSM_0/i_Start]
  connect_bd_net -net i_Stop_0_1 [get_bd_ports i_Stop_0] [get_bd_pins stopwatchFSM_0/i_Stop]
  connect_bd_net -net i_TIMER_0_1 [get_bd_ports i_TIMER_0] [get_bd_pins SW_T_MUX_0/i_Sel]
  connect_bd_net -net rst_clk_100MHz_100M_peripheral_aresetn [get_bd_pins HZ_Counter_0/i_RST] [get_bd_pins rst_clk_100MHz_100M/peripheral_aresetn] [get_bd_pins stopwatch_ssd_driver_0/i_RST] [get_bd_pins timer_ssd_driver_0/i_RST]
  connect_bd_net -net ssd_dec_0_o_Cathodes [get_bd_ports o_Cathodes_0] [get_bd_pins ssd_dec_0/o_Cathodes]
  connect_bd_net -net ssd_mux_0_o_Anodes [get_bd_ports o_Anodes_0] [get_bd_pins ssd_mux_0/o_Anodes]
  connect_bd_net -net ssd_mux_0_o_Out [get_bd_pins ssd_dec_0/i_Num] [get_bd_pins ssd_mux_0/o_Out]
  connect_bd_net -net stopwatchFSM_0_o_ENABLE [get_bd_pins stopwatchFSM_0/o_ENABLE] [get_bd_pins stopwatch_ssd_driver_0/i_SUBCLK] [get_bd_pins timer_ssd_driver_0/i_SUBCLK]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_1_val [get_bd_pins SW_T_MUX_0/i_SW_Digit_1] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_1_val]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_2_val [get_bd_pins SW_T_MUX_0/i_SW_Digit_2] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_2_val]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_3_val [get_bd_pins SW_T_MUX_0/i_SW_Digit_3] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_3_val]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_4_val [get_bd_pins SW_T_MUX_0/i_SW_Digit_4] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_4_val]
  connect_bd_net -net timer_ssd_driver_0_o_Digit_1_val [get_bd_pins SW_T_MUX_0/i_T_Digit_1] [get_bd_pins timer_ssd_driver_0/o_Digit_1_val]
  connect_bd_net -net timer_ssd_driver_0_o_Digit_2_val [get_bd_pins SW_T_MUX_0/i_T_Digit_2] [get_bd_pins timer_ssd_driver_0/o_Digit_2_val]
  connect_bd_net -net timer_ssd_driver_0_o_Digit_3_val [get_bd_pins SW_T_MUX_0/i_T_Digit_3] [get_bd_pins timer_ssd_driver_0/o_Digit_3_val]
  connect_bd_net -net timer_ssd_driver_0_o_Digit_4_val [get_bd_pins SW_T_MUX_0/i_T_Digit_4] [get_bd_pins timer_ssd_driver_0/o_Digit_4_val]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



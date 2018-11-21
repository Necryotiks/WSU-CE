
################################################################
# This is a generated script based on design: Reaction_Time_Averager
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
# source Reaction_Time_Averager_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Accumuator, BCD_TO_BINARY, BINARY_TO_BCD, EXTRA_THICC_MUX, HZ_Counter, LSFR, RTM_FSM, ssd_dec, ssd_mux, stopwatch_ssd_driver

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
set design_name Reaction_Time_Averager

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
  set i_RST [ create_bd_port -dir I -type rst i_RST ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $i_RST
  set i_React_0 [ create_bd_port -dir I i_React_0 ]
  set i_Start_0 [ create_bd_port -dir I i_Start_0 ]
  set o_Anodes_0 [ create_bd_port -dir O -from 3 -to 0 o_Anodes_0 ]
  set o_Cathodes_0 [ create_bd_port -dir O -from 6 -to 0 o_Cathodes_0 ]
  set o_Ready_0 [ create_bd_port -dir O -from 1 -to 0 o_Ready_0 ]
  set o_T_NUM_0 [ create_bd_port -dir O -from 2 -to 0 o_T_NUM_0 ]

  # Create instance: Accumuator_0, and set properties
  set block_name Accumuator
  set block_cell_name Accumuator_0
  if { [catch {set Accumuator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Accumuator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: BCD_TO_BINARY_0, and set properties
  set block_name BCD_TO_BINARY
  set block_cell_name BCD_TO_BINARY_0
  if { [catch {set BCD_TO_BINARY_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $BCD_TO_BINARY_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: BINARY_TO_BCD_0, and set properties
  set block_name BINARY_TO_BCD
  set block_cell_name BINARY_TO_BCD_0
  if { [catch {set BINARY_TO_BCD_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $BINARY_TO_BCD_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: EXTRA_THICC_MUX_0, and set properties
  set block_name EXTRA_THICC_MUX
  set block_cell_name EXTRA_THICC_MUX_0
  if { [catch {set EXTRA_THICC_MUX_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $EXTRA_THICC_MUX_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
   CONFIG.c_NUM {50000} \
 ] $HZ_Counter_0

  # Create instance: LSFR_0, and set properties
  set block_name LSFR
  set block_cell_name LSFR_0
  if { [catch {set LSFR_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $LSFR_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RTM_FSM_0, and set properties
  set block_name RTM_FSM
  set block_cell_name RTM_FSM_0
  if { [catch {set RTM_FSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $RTM_FSM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

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
  
  # Create port connections
  connect_bd_net -net Accumuator_0_o_OUT [get_bd_pins Accumuator_0/o_OUT] [get_bd_pins BINARY_TO_BCD_0/i_DATA]
  connect_bd_net -net BCD_TO_BINARY_0_o_DATA [get_bd_pins Accumuator_0/i_DATA] [get_bd_pins BCD_TO_BINARY_0/o_DATA]
  connect_bd_net -net BINARY_TO_BCD_0_o_Digit1 [get_bd_pins BINARY_TO_BCD_0/o_Digit1] [get_bd_pins EXTRA_THICC_MUX_0/i_T_Digit_1]
  connect_bd_net -net BINARY_TO_BCD_0_o_Digit2 [get_bd_pins BINARY_TO_BCD_0/o_Digit2] [get_bd_pins EXTRA_THICC_MUX_0/i_T_Digit_2]
  connect_bd_net -net BINARY_TO_BCD_0_o_Digit3 [get_bd_pins BINARY_TO_BCD_0/o_Digit3] [get_bd_pins EXTRA_THICC_MUX_0/i_T_Digit_3]
  connect_bd_net -net BINARY_TO_BCD_0_o_Digit4 [get_bd_pins BINARY_TO_BCD_0/o_Digit4] [get_bd_pins EXTRA_THICC_MUX_0/i_T_Digit_4]
  connect_bd_net -net EXTRA_THICC_MUX_0_o_Digit_1 [get_bd_pins EXTRA_THICC_MUX_0/o_Digit_1] [get_bd_pins ssd_mux_0/i_Digit_1]
  connect_bd_net -net EXTRA_THICC_MUX_0_o_Digit_2 [get_bd_pins EXTRA_THICC_MUX_0/o_Digit_2] [get_bd_pins ssd_mux_0/i_Digit_2]
  connect_bd_net -net EXTRA_THICC_MUX_0_o_Digit_3 [get_bd_pins EXTRA_THICC_MUX_0/o_Digit_3] [get_bd_pins ssd_mux_0/i_Digit_3]
  connect_bd_net -net EXTRA_THICC_MUX_0_o_Digit_4 [get_bd_pins EXTRA_THICC_MUX_0/o_Digit_4] [get_bd_pins ssd_mux_0/i_Digit_4]
  connect_bd_net -net HZ_Counter_0_o_Out [get_bd_pins HZ_Counter_0/o_Out] [get_bd_pins RTM_FSM_0/i_CLK1KHZ] [get_bd_pins stopwatch_ssd_driver_0/i_SUBCLK]
  connect_bd_net -net LSFR_0_o_OUT [get_bd_pins LSFR_0/o_OUT] [get_bd_pins RTM_FSM_0/i_CVAL]
  connect_bd_net -net RTM_FSM_0_o_ACC_EN [get_bd_pins Accumuator_0/i_CLK_EN] [get_bd_pins RTM_FSM_0/o_ACC_EN]
  connect_bd_net -net RTM_FSM_0_o_CEN [get_bd_pins LSFR_0/i_EN] [get_bd_pins RTM_FSM_0/o_CEN]
  connect_bd_net -net RTM_FSM_0_o_DONE [get_bd_pins EXTRA_THICC_MUX_0/i_Sel] [get_bd_pins RTM_FSM_0/o_DONE]
  connect_bd_net -net RTM_FSM_0_o_Ready [get_bd_ports o_Ready_0] [get_bd_pins RTM_FSM_0/o_Ready]
  connect_bd_net -net RTM_FSM_0_o_SRST [get_bd_pins RTM_FSM_0/o_SRST] [get_bd_pins stopwatch_ssd_driver_0/i_SRST]
  connect_bd_net -net RTM_FSM_0_o_SWEN [get_bd_pins RTM_FSM_0/o_SWEN] [get_bd_pins stopwatch_ssd_driver_0/i_CLK_EN]
  connect_bd_net -net RTM_FSM_0_o_T_NUM [get_bd_ports o_T_NUM_0] [get_bd_pins RTM_FSM_0/o_T_NUM]
  connect_bd_net -net i_CLK_1 [get_bd_ports i_CLK] [get_bd_pins Accumuator_0/i_CLK] [get_bd_pins BCD_TO_BINARY_0/i_CLK] [get_bd_pins EXTRA_THICC_MUX_0/i_CLK] [get_bd_pins HZ_Counter_0/i_CLK] [get_bd_pins LSFR_0/i_CLK] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins ssd_dec_0/i_CLK] [get_bd_pins ssd_mux_0/i_CLK]
  connect_bd_net -net i_RST_1 [get_bd_ports i_RST] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net i_React_0_1 [get_bd_ports i_React_0] [get_bd_pins RTM_FSM_0/i_React]
  connect_bd_net -net i_Start_0_1 [get_bd_ports i_Start_0] [get_bd_pins RTM_FSM_0/i_Start]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins Accumuator_0/i_RST] [get_bd_pins HZ_Counter_0/i_RST] [get_bd_pins LSFR_0/i_RST] [get_bd_pins RTM_FSM_0/i_RST] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins stopwatch_ssd_driver_0/i_RST]
  connect_bd_net -net ssd_dec_0_o_Cathodes [get_bd_ports o_Cathodes_0] [get_bd_pins ssd_dec_0/o_Cathodes]
  connect_bd_net -net ssd_mux_0_o_Anodes [get_bd_ports o_Anodes_0] [get_bd_pins ssd_mux_0/o_Anodes]
  connect_bd_net -net ssd_mux_0_o_Out [get_bd_pins ssd_dec_0/i_Num] [get_bd_pins ssd_mux_0/o_Out]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_1_val [get_bd_pins BCD_TO_BINARY_0/i_Digit1] [get_bd_pins EXTRA_THICC_MUX_0/i_SW_Digit_1] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_1_val]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_2_val [get_bd_pins BCD_TO_BINARY_0/i_Digit2] [get_bd_pins EXTRA_THICC_MUX_0/i_SW_Digit_2] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_2_val]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_3_val [get_bd_pins BCD_TO_BINARY_0/i_Digit3] [get_bd_pins EXTRA_THICC_MUX_0/i_SW_Digit_3] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_3_val]
  connect_bd_net -net stopwatch_ssd_driver_0_o_Digit_4_val [get_bd_pins BCD_TO_BINARY_0/i_Digit4] [get_bd_pins EXTRA_THICC_MUX_0/i_SW_Digit_4] [get_bd_pins stopwatch_ssd_driver_0/o_Digit_4_val]

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



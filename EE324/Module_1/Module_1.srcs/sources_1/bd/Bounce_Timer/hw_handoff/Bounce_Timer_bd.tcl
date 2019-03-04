
################################################################
# This is a generated script based on design: Bounce_Timer
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
set scripts_vivado_version 2018.3
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
# source Bounce_Timer_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# BINARY_TO_BCD, Bounce_Counter_FSM, HZ_Counter, ssd_dec, ssd_mux

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
set design_name Bounce_Timer

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
  set i_RST [ create_bd_port -dir I -type rst i_RST ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $i_RST
  set i_Signal [ create_bd_port -dir I i_Signal ]
  set o_Anodes_0 [ create_bd_port -dir O -from 3 -to 0 o_Anodes_0 ]
  set o_Cathodes_0 [ create_bd_port -dir O -from 6 -to 0 o_Cathodes_0 ]

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
  
  # Create instance: Bounce_Counter_FSM_0, and set properties
  set block_name Bounce_Counter_FSM
  set block_cell_name Bounce_Counter_FSM_0
  if { [catch {set Bounce_Counter_FSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Bounce_Counter_FSM_0 eq "" } {
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
  
  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {12} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_3

  # Create port connections
  connect_bd_net -net BINARY_TO_BCD_0_o_BCD [get_bd_pins BINARY_TO_BCD_0/o_BCD] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net Bounce_Counter_FSM_0_o_CEN [get_bd_pins BINARY_TO_BCD_0/i_Start] [get_bd_pins Bounce_Counter_FSM_0/o_CEN]
  connect_bd_net -net Bounce_Counter_FSM_0_o_DATA [get_bd_pins BINARY_TO_BCD_0/i_Binary] [get_bd_pins Bounce_Counter_FSM_0/o_DATA]
  connect_bd_net -net HZ_Counter_0_o_Out [get_bd_pins BINARY_TO_BCD_0/i_Clock] [get_bd_pins Bounce_Counter_FSM_0/i_1KHZCLK] [get_bd_pins HZ_Counter_0/o_Out] [get_bd_pins ssd_dec_0/i_CLK] [get_bd_pins ssd_mux_0/i_CLK]
  connect_bd_net -net i_CLK [get_bd_ports i_CLK] [get_bd_pins Bounce_Counter_FSM_0/i_100MHZCLK] [get_bd_pins HZ_Counter_0/i_CLK] [get_bd_pins rst_clk_100MHz_100M/slowest_sync_clk]
  connect_bd_net -net i_RST [get_bd_ports i_RST] [get_bd_pins rst_clk_100MHz_100M/ext_reset_in]
  connect_bd_net -net i_Signal_0_1 [get_bd_ports i_Signal] [get_bd_pins Bounce_Counter_FSM_0/i_Signal]
  connect_bd_net -net rst_clk_100MHz_100M_peripheral_aresetn [get_bd_pins Bounce_Counter_FSM_0/i_RST] [get_bd_pins HZ_Counter_0/i_RST] [get_bd_pins rst_clk_100MHz_100M/peripheral_aresetn]
  connect_bd_net -net ssd_dec_0_o_Cathodes [get_bd_ports o_Cathodes_0] [get_bd_pins ssd_dec_0/o_Cathodes]
  connect_bd_net -net ssd_mux_0_o_Anodes [get_bd_ports o_Anodes_0] [get_bd_pins ssd_mux_0/o_Anodes]
  connect_bd_net -net ssd_mux_0_o_Out [get_bd_pins ssd_dec_0/i_Num] [get_bd_pins ssd_mux_0/o_Out]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins ssd_mux_0/i_Digit_1] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins ssd_mux_0/i_Digit_2] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins ssd_mux_0/i_Digit_3] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins ssd_mux_0/i_Digit_4] [get_bd_pins xlslice_3/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



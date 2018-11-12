
################################################################
# This is a generated script based on design: S_A_FSM
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
# source S_A_FSM_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# PISO, PISO, SIPO, SerialAdder, dff

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
set design_name S_A_FSM

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
  set clk_100MHz [ create_bd_port -dir I -type clk clk_100MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk_100MHz
  set i_IN_0 [ create_bd_port -dir I -from 7 -to 0 i_IN_0 ]
  set i_IN_1 [ create_bd_port -dir I -from 7 -to 0 i_IN_1 ]
  set i_SFT_LD_0 [ create_bd_port -dir I i_SFT_LD_0 ]
  set o_OUT_0 [ create_bd_port -dir O -from 7 -to 0 o_OUT_0 ]
  set reset_rtl_0 [ create_bd_port -dir I -type rst reset_rtl_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset_rtl_0

  # Create instance: PISO_0, and set properties
  set block_name PISO
  set block_cell_name PISO_0
  if { [catch {set PISO_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PISO_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PISO_1, and set properties
  set block_name PISO
  set block_cell_name PISO_1
  if { [catch {set PISO_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $PISO_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SIPO_0, and set properties
  set block_name SIPO
  set block_cell_name SIPO_0
  if { [catch {set SIPO_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SIPO_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: SerialAdder_0, and set properties
  set block_name SerialAdder
  set block_cell_name SerialAdder_0
  if { [catch {set SerialAdder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SerialAdder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dff_0, and set properties
  set block_name dff
  set block_cell_name dff_0
  if { [catch {set dff_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dff_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_clk_100MHz_100M, and set properties
  set rst_clk_100MHz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_100MHz_100M ]

  # Create port connections
  connect_bd_net -net PISO_0_o_OUT [get_bd_pins PISO_0/o_OUT] [get_bd_pins SerialAdder_0/i_A]
  connect_bd_net -net PISO_1_o_OUT [get_bd_pins PISO_1/o_OUT] [get_bd_pins SerialAdder_0/i_B]
  connect_bd_net -net SIPO_0_o_OUT [get_bd_ports o_OUT_0] [get_bd_pins SIPO_0/o_OUT]
  connect_bd_net -net SerialAdder_0_o_Cout [get_bd_pins SerialAdder_0/o_Cout] [get_bd_pins dff_0/i_D]
  connect_bd_net -net SerialAdder_0_o_Sum [get_bd_pins SIPO_0/i_SDI] [get_bd_pins SerialAdder_0/o_Sum]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports clk_100MHz] [get_bd_pins PISO_0/i_CLK] [get_bd_pins PISO_1/i_CLK] [get_bd_pins SIPO_0/i_CLK] [get_bd_pins SerialAdder_0/i_CLK] [get_bd_pins dff_0/i_CLK] [get_bd_pins rst_clk_100MHz_100M/slowest_sync_clk]
  connect_bd_net -net dff_0_o_Q [get_bd_pins SerialAdder_0/i_Cin] [get_bd_pins dff_0/o_Q]
  connect_bd_net -net i_IN_0_1 [get_bd_ports i_IN_0] [get_bd_pins PISO_0/i_IN]
  connect_bd_net -net i_IN_1_1 [get_bd_ports i_IN_1] [get_bd_pins PISO_1/i_IN]
  connect_bd_net -net i_SFT_LD_0_1 [get_bd_ports i_SFT_LD_0] [get_bd_pins PISO_0/i_SFT_LD] [get_bd_pins PISO_1/i_SFT_LD] [get_bd_pins SIPO_0/i_SFT]
  connect_bd_net -net reset_rtl_0_1 [get_bd_ports reset_rtl_0] [get_bd_pins rst_clk_100MHz_100M/ext_reset_in]
  connect_bd_net -net rst_clk_100MHz_100M_peripheral_aresetn [get_bd_pins SerialAdder_0/i_RST] [get_bd_pins dff_0/i_RST] [get_bd_pins rst_clk_100MHz_100M/peripheral_aresetn]

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




################################################################
# This is a generated script based on design: HDMI_CTRL
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
# source HDMI_CTRL_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# VGA_controller, color_logic

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
set design_name HDMI_CTRL

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
  set hdmi_tx_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:hdmi_rtl:2.0 hdmi_tx_0 ]

  # Create ports
  set i_CLK [ create_bd_port -dir I -type clk i_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $i_CLK
  set i_RST [ create_bd_port -dir I -type rst i_RST ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $i_RST

  # Create instance: VGA_controller_0, and set properties
  set block_name VGA_controller
  set block_cell_name VGA_controller_0
  if { [catch {set VGA_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $VGA_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {175.402} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {125.247} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {125.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {40.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {8} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {MMCM} \
 ] $clk_wiz

  # Create instance: color_logic_0, and set properties
  set block_name color_logic
  set block_cell_name color_logic_0
  if { [catch {set color_logic_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $color_logic_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hdmi_tx_0, and set properties
  set hdmi_tx_0 [ create_bd_cell -type ip -vlnv realdigital.org:realdigital:hdmi_tx:1.0 hdmi_tx_0 ]
  set_property -dict [ list \
   CONFIG.MODE {HDMI} \
 ] $hdmi_tx_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net hdmi_tx_0_hdmi_tx [get_bd_intf_ports hdmi_tx_0] [get_bd_intf_pins hdmi_tx_0/hdmi_tx]

  # Create port connections
  connect_bd_net -net VGA_controller_0_o_HSYNC [get_bd_pins VGA_controller_0/o_HSYNC] [get_bd_pins hdmi_tx_0/hsync]
  connect_bd_net -net VGA_controller_0_o_VDE [get_bd_pins VGA_controller_0/o_VDE] [get_bd_pins hdmi_tx_0/vde]
  connect_bd_net -net VGA_controller_0_o_VSYNC [get_bd_pins VGA_controller_0/o_VSYNC] [get_bd_pins hdmi_tx_0/vsync]
  connect_bd_net -net VGA_controller_0_o_X_COORD [get_bd_pins VGA_controller_0/o_X_COORD] [get_bd_pins color_logic_0/i_X_COORD]
  connect_bd_net -net VGA_controller_0_o_Y_COORD [get_bd_pins VGA_controller_0/o_Y_COORD] [get_bd_pins color_logic_0/i_Y_COORD]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports i_CLK] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins VGA_controller_0/i_CLK25MHZ] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins color_logic_0/i_CLK] [get_bd_pins hdmi_tx_0/pix_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_clk_out2 [get_bd_pins clk_wiz/clk_out2] [get_bd_pins hdmi_tx_0/pix_clkx5]
  connect_bd_net -net clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins hdmi_tx_0/pix_clk_locked]
  connect_bd_net -net color_logic_0_o_BLUE [get_bd_pins color_logic_0/o_BLUE] [get_bd_pins hdmi_tx_0/blue]
  connect_bd_net -net color_logic_0_o_GREEN [get_bd_pins color_logic_0/o_GREEN] [get_bd_pins hdmi_tx_0/green]
  connect_bd_net -net color_logic_0_o_RED [get_bd_pins color_logic_0/o_RED] [get_bd_pins hdmi_tx_0/red]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins hdmi_tx_0/rst] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net reset_rtl_0_1 [get_bd_ports i_RST] [get_bd_pins clk_wiz/reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]

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



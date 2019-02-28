# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ACTIVE_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ACTIVE_ROWS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TOTAL_ROWS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VIDEO_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ACTIVE_COLS { PARAM_VALUE.ACTIVE_COLS } {
	# Procedure called to update ACTIVE_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACTIVE_COLS { PARAM_VALUE.ACTIVE_COLS } {
	# Procedure called to validate ACTIVE_COLS
	return true
}

proc update_PARAM_VALUE.ACTIVE_ROWS { PARAM_VALUE.ACTIVE_ROWS } {
	# Procedure called to update ACTIVE_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ACTIVE_ROWS { PARAM_VALUE.ACTIVE_ROWS } {
	# Procedure called to validate ACTIVE_ROWS
	return true
}

proc update_PARAM_VALUE.TOTAL_COLS { PARAM_VALUE.TOTAL_COLS } {
	# Procedure called to update TOTAL_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_COLS { PARAM_VALUE.TOTAL_COLS } {
	# Procedure called to validate TOTAL_COLS
	return true
}

proc update_PARAM_VALUE.TOTAL_ROWS { PARAM_VALUE.TOTAL_ROWS } {
	# Procedure called to update TOTAL_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TOTAL_ROWS { PARAM_VALUE.TOTAL_ROWS } {
	# Procedure called to validate TOTAL_ROWS
	return true
}

proc update_PARAM_VALUE.VIDEO_WIDTH { PARAM_VALUE.VIDEO_WIDTH } {
	# Procedure called to update VIDEO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VIDEO_WIDTH { PARAM_VALUE.VIDEO_WIDTH } {
	# Procedure called to validate VIDEO_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.VIDEO_WIDTH { MODELPARAM_VALUE.VIDEO_WIDTH PARAM_VALUE.VIDEO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VIDEO_WIDTH}] ${MODELPARAM_VALUE.VIDEO_WIDTH}
}

proc update_MODELPARAM_VALUE.TOTAL_COLS { MODELPARAM_VALUE.TOTAL_COLS PARAM_VALUE.TOTAL_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_COLS}] ${MODELPARAM_VALUE.TOTAL_COLS}
}

proc update_MODELPARAM_VALUE.TOTAL_ROWS { MODELPARAM_VALUE.TOTAL_ROWS PARAM_VALUE.TOTAL_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TOTAL_ROWS}] ${MODELPARAM_VALUE.TOTAL_ROWS}
}

proc update_MODELPARAM_VALUE.ACTIVE_COLS { MODELPARAM_VALUE.ACTIVE_COLS PARAM_VALUE.ACTIVE_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACTIVE_COLS}] ${MODELPARAM_VALUE.ACTIVE_COLS}
}

proc update_MODELPARAM_VALUE.ACTIVE_ROWS { MODELPARAM_VALUE.ACTIVE_ROWS PARAM_VALUE.ACTIVE_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ACTIVE_ROWS}] ${MODELPARAM_VALUE.ACTIVE_ROWS}
}


# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "v_END_OF_LINE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_END_OF_SCREEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_HA_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_HA_START" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_VA_END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "v_VA_START" -parent ${Page_0}


}

proc update_PARAM_VALUE.v_END_OF_LINE { PARAM_VALUE.v_END_OF_LINE } {
	# Procedure called to update v_END_OF_LINE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_END_OF_LINE { PARAM_VALUE.v_END_OF_LINE } {
	# Procedure called to validate v_END_OF_LINE
	return true
}

proc update_PARAM_VALUE.v_END_OF_SCREEN { PARAM_VALUE.v_END_OF_SCREEN } {
	# Procedure called to update v_END_OF_SCREEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_END_OF_SCREEN { PARAM_VALUE.v_END_OF_SCREEN } {
	# Procedure called to validate v_END_OF_SCREEN
	return true
}

proc update_PARAM_VALUE.v_HA_END { PARAM_VALUE.v_HA_END } {
	# Procedure called to update v_HA_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_HA_END { PARAM_VALUE.v_HA_END } {
	# Procedure called to validate v_HA_END
	return true
}

proc update_PARAM_VALUE.v_HA_START { PARAM_VALUE.v_HA_START } {
	# Procedure called to update v_HA_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_HA_START { PARAM_VALUE.v_HA_START } {
	# Procedure called to validate v_HA_START
	return true
}

proc update_PARAM_VALUE.v_VA_END { PARAM_VALUE.v_VA_END } {
	# Procedure called to update v_VA_END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_VA_END { PARAM_VALUE.v_VA_END } {
	# Procedure called to validate v_VA_END
	return true
}

proc update_PARAM_VALUE.v_VA_START { PARAM_VALUE.v_VA_START } {
	# Procedure called to update v_VA_START when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.v_VA_START { PARAM_VALUE.v_VA_START } {
	# Procedure called to validate v_VA_START
	return true
}


proc update_MODELPARAM_VALUE.v_END_OF_LINE { MODELPARAM_VALUE.v_END_OF_LINE PARAM_VALUE.v_END_OF_LINE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_END_OF_LINE}] ${MODELPARAM_VALUE.v_END_OF_LINE}
}

proc update_MODELPARAM_VALUE.v_END_OF_SCREEN { MODELPARAM_VALUE.v_END_OF_SCREEN PARAM_VALUE.v_END_OF_SCREEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_END_OF_SCREEN}] ${MODELPARAM_VALUE.v_END_OF_SCREEN}
}

proc update_MODELPARAM_VALUE.v_HA_START { MODELPARAM_VALUE.v_HA_START PARAM_VALUE.v_HA_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_HA_START}] ${MODELPARAM_VALUE.v_HA_START}
}

proc update_MODELPARAM_VALUE.v_VA_START { MODELPARAM_VALUE.v_VA_START PARAM_VALUE.v_VA_START } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_VA_START}] ${MODELPARAM_VALUE.v_VA_START}
}

proc update_MODELPARAM_VALUE.v_HA_END { MODELPARAM_VALUE.v_HA_END PARAM_VALUE.v_HA_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_HA_END}] ${MODELPARAM_VALUE.v_HA_END}
}

proc update_MODELPARAM_VALUE.v_VA_END { MODELPARAM_VALUE.v_VA_END PARAM_VALUE.v_VA_END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.v_VA_END}] ${MODELPARAM_VALUE.v_VA_END}
}


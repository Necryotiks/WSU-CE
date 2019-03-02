# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "DISPLAY_MODE" -widget comboBox

}

proc update_PARAM_VALUE.DISPLAY_MODE { PARAM_VALUE.DISPLAY_MODE } {
	# Procedure called to update DISPLAY_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DISPLAY_MODE { PARAM_VALUE.DISPLAY_MODE } {
	# Procedure called to validate DISPLAY_MODE
	return true
}



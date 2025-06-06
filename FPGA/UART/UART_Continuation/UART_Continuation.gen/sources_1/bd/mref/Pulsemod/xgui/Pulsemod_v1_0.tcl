# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "PULSE_LENGTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.PULSE_LENGTH { PARAM_VALUE.PULSE_LENGTH } {
	# Procedure called to update PULSE_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PULSE_LENGTH { PARAM_VALUE.PULSE_LENGTH } {
	# Procedure called to validate PULSE_LENGTH
	return true
}


proc update_MODELPARAM_VALUE.PULSE_LENGTH { MODELPARAM_VALUE.PULSE_LENGTH PARAM_VALUE.PULSE_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PULSE_LENGTH}] ${MODELPARAM_VALUE.PULSE_LENGTH}
}


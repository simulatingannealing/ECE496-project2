# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUF_IN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BUF_OUT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BYTE_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CIRCULAR_BUFFER_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CODE_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CODE_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_BACKPRESSURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INST_MEM_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PACKET_MEM_BYTES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PESS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SN_FWD_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TAG_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.BUF_IN { PARAM_VALUE.BUF_IN } {
	# Procedure called to update BUF_IN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUF_IN { PARAM_VALUE.BUF_IN } {
	# Procedure called to validate BUF_IN
	return true
}

proc update_PARAM_VALUE.BUF_OUT { PARAM_VALUE.BUF_OUT } {
	# Procedure called to update BUF_OUT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUF_OUT { PARAM_VALUE.BUF_OUT } {
	# Procedure called to validate BUF_OUT
	return true
}

proc update_PARAM_VALUE.BYTE_ADDR_WIDTH { PARAM_VALUE.BYTE_ADDR_WIDTH } {
	# Procedure called to update BYTE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BYTE_ADDR_WIDTH { PARAM_VALUE.BYTE_ADDR_WIDTH } {
	# Procedure called to validate BYTE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.CIRCULAR_BUFFER_SIZE { PARAM_VALUE.CIRCULAR_BUFFER_SIZE } {
	# Procedure called to update CIRCULAR_BUFFER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CIRCULAR_BUFFER_SIZE { PARAM_VALUE.CIRCULAR_BUFFER_SIZE } {
	# Procedure called to validate CIRCULAR_BUFFER_SIZE
	return true
}

proc update_PARAM_VALUE.CODE_ADDR_WIDTH { PARAM_VALUE.CODE_ADDR_WIDTH } {
	# Procedure called to update CODE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CODE_ADDR_WIDTH { PARAM_VALUE.CODE_ADDR_WIDTH } {
	# Procedure called to validate CODE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.CODE_DATA_WIDTH { PARAM_VALUE.CODE_DATA_WIDTH } {
	# Procedure called to update CODE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CODE_DATA_WIDTH { PARAM_VALUE.CODE_DATA_WIDTH } {
	# Procedure called to validate CODE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.ENABLE_BACKPRESSURE { PARAM_VALUE.ENABLE_BACKPRESSURE } {
	# Procedure called to update ENABLE_BACKPRESSURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_BACKPRESSURE { PARAM_VALUE.ENABLE_BACKPRESSURE } {
	# Procedure called to validate ENABLE_BACKPRESSURE
	return true
}

proc update_PARAM_VALUE.INST_MEM_DEPTH { PARAM_VALUE.INST_MEM_DEPTH } {
	# Procedure called to update INST_MEM_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INST_MEM_DEPTH { PARAM_VALUE.INST_MEM_DEPTH } {
	# Procedure called to validate INST_MEM_DEPTH
	return true
}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}

proc update_PARAM_VALUE.PACKET_MEM_BYTES { PARAM_VALUE.PACKET_MEM_BYTES } {
	# Procedure called to update PACKET_MEM_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PACKET_MEM_BYTES { PARAM_VALUE.PACKET_MEM_BYTES } {
	# Procedure called to validate PACKET_MEM_BYTES
	return true
}

proc update_PARAM_VALUE.PESS { PARAM_VALUE.PESS } {
	# Procedure called to update PESS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PESS { PARAM_VALUE.PESS } {
	# Procedure called to validate PESS
	return true
}

proc update_PARAM_VALUE.SN_FWD_DATA_WIDTH { PARAM_VALUE.SN_FWD_DATA_WIDTH } {
	# Procedure called to update SN_FWD_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SN_FWD_DATA_WIDTH { PARAM_VALUE.SN_FWD_DATA_WIDTH } {
	# Procedure called to validate SN_FWD_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.TAG_WIDTH { PARAM_VALUE.TAG_WIDTH } {
	# Procedure called to update TAG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TAG_WIDTH { PARAM_VALUE.TAG_WIDTH } {
	# Procedure called to validate TAG_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

proc update_MODELPARAM_VALUE.PACKET_MEM_BYTES { MODELPARAM_VALUE.PACKET_MEM_BYTES PARAM_VALUE.PACKET_MEM_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PACKET_MEM_BYTES}] ${MODELPARAM_VALUE.PACKET_MEM_BYTES}
}

proc update_MODELPARAM_VALUE.INST_MEM_DEPTH { MODELPARAM_VALUE.INST_MEM_DEPTH PARAM_VALUE.INST_MEM_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INST_MEM_DEPTH}] ${MODELPARAM_VALUE.INST_MEM_DEPTH}
}

proc update_MODELPARAM_VALUE.SN_FWD_DATA_WIDTH { MODELPARAM_VALUE.SN_FWD_DATA_WIDTH PARAM_VALUE.SN_FWD_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SN_FWD_DATA_WIDTH}] ${MODELPARAM_VALUE.SN_FWD_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.BUF_IN { MODELPARAM_VALUE.BUF_IN PARAM_VALUE.BUF_IN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUF_IN}] ${MODELPARAM_VALUE.BUF_IN}
}

proc update_MODELPARAM_VALUE.BUF_OUT { MODELPARAM_VALUE.BUF_OUT PARAM_VALUE.BUF_OUT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUF_OUT}] ${MODELPARAM_VALUE.BUF_OUT}
}

proc update_MODELPARAM_VALUE.PESS { MODELPARAM_VALUE.PESS PARAM_VALUE.PESS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PESS}] ${MODELPARAM_VALUE.PESS}
}

proc update_MODELPARAM_VALUE.ENABLE_BACKPRESSURE { MODELPARAM_VALUE.ENABLE_BACKPRESSURE PARAM_VALUE.ENABLE_BACKPRESSURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_BACKPRESSURE}] ${MODELPARAM_VALUE.ENABLE_BACKPRESSURE}
}

proc update_MODELPARAM_VALUE.CODE_ADDR_WIDTH { MODELPARAM_VALUE.CODE_ADDR_WIDTH PARAM_VALUE.CODE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CODE_ADDR_WIDTH}] ${MODELPARAM_VALUE.CODE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.CODE_DATA_WIDTH { MODELPARAM_VALUE.CODE_DATA_WIDTH PARAM_VALUE.CODE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CODE_DATA_WIDTH}] ${MODELPARAM_VALUE.CODE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.BYTE_ADDR_WIDTH { MODELPARAM_VALUE.BYTE_ADDR_WIDTH PARAM_VALUE.BYTE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BYTE_ADDR_WIDTH}] ${MODELPARAM_VALUE.BYTE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.TAG_WIDTH { MODELPARAM_VALUE.TAG_WIDTH PARAM_VALUE.TAG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TAG_WIDTH}] ${MODELPARAM_VALUE.TAG_WIDTH}
}

proc update_MODELPARAM_VALUE.CIRCULAR_BUFFER_SIZE { MODELPARAM_VALUE.CIRCULAR_BUFFER_SIZE PARAM_VALUE.CIRCULAR_BUFFER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CIRCULAR_BUFFER_SIZE}] ${MODELPARAM_VALUE.CIRCULAR_BUFFER_SIZE}
}

proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}


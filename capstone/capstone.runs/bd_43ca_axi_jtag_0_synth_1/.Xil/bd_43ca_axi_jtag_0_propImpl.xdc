set_property SRC_FILE_INFO {cfile:/home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_debug_bridge_0_0/bd_0/ip/ip_0/constraints/axi_jtag.xdc rfile:../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_debug_bridge_0_0/bd_0/ip/ip_0/constraints/axi_jtag.xdc id:1 order:LATE scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 20.0 -from [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tdi_output_reg[0]"}] -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 20.0 -from [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tms_output_reg[0]"}] -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id CDC-1 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter {NAME =~ "*/u_jtag_proc/tdi_output_reg[0]*"}]]  -user maheshs -description {CDC is handled through handshake process}
set_property src_info {type:SCOPED_XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id CDC-1 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter {NAME =~ "*/u_jtag_proc/tms_output_reg[0]*"}]]  -user maheshs -description {CDC is handled through handshake process}

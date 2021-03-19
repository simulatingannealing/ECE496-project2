# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xczu19eg-ffvc1760-2-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/tianyi/capstone/capstone.cache/wt [current_project]
set_property parent.project_path /home/tianyi/capstone/capstone.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/tianyi/ip_repo/input_1.0
  /home/tianyi/capstone/input_packets_1.0
  /home/tianyi/ip_repo/ARM_control_1.0
  /home/tianyi/ECE496-project2/vivado_scripts/axistream_packetfilt
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/tianyi/capstone/capstone.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0.xci
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_0/bd_cf25_arinsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_1/bd_cf25_rinsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_2/bd_cf25_awinsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_3/bd_cf25_winsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_4/bd_cf25_binsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_5/bd_cf25_aroutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_6/bd_cf25_routsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_7/bd_cf25_awoutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_8/bd_cf25_woutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_9/bd_cf25_boutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_10/bd_cf25_arni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_11/bd_cf25_rni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_12/bd_cf25_awni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_13/bd_cf25_wni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_14/bd_cf25_bni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_18/bd_cf25_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_19/bd_cf25_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_20/bd_cf25_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_21/bd_cf25_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_22/bd_cf25_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_23/bd_cf25_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_24/bd_cf25_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_25/bd_cf25_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_26/bd_cf25_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_27/bd_cf25_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_28/bd_cf25_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_29/bd_cf25_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_31/bd_cf25_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_32/bd_cf25_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_33/bd_cf25_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_34/bd_cf25_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_35/bd_cf25_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_36/bd_cf25_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_38/bd_cf25_m02s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_39/bd_cf25_m02arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_40/bd_cf25_m02rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_41/bd_cf25_m02awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_42/bd_cf25_m02wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_43/bd_cf25_m02bn_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1 -new_name capstone_smartconnect_0_0 -ip [get_ips capstone_smartconnect_0_0]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top capstone_smartconnect_0_0 -part xczu19eg-ffvc1760-2-i -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix capstone_smartconnect_0_0_ capstone_smartconnect_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ capstone_smartconnect_0_0_stub.v
 lappend ipCachedFiles capstone_smartconnect_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ capstone_smartconnect_0_0_stub.vhdl
 lappend ipCachedFiles capstone_smartconnect_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ capstone_smartconnect_0_0_sim_netlist.v
 lappend ipCachedFiles capstone_smartconnect_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ capstone_smartconnect_0_0_sim_netlist.vhdl
 lappend ipCachedFiles capstone_smartconnect_0_0_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp capstone_smartconnect_0_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips capstone_smartconnect_0_0]
}

rename_ref -prefix_all capstone_smartconnect_0_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef capstone_smartconnect_0_0.dcp
create_report "capstone_smartconnect_0_0_synth_1_synth_report_utilization_0" "report_utilization -file capstone_smartconnect_0_0_utilization_synth.rpt -pb capstone_smartconnect_0_0_utilization_synth.pb"

if { [catch {
  file copy -force /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1/capstone_smartconnect_0_0.dcp /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1/capstone_smartconnect_0_0.dcp /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1/capstone_smartconnect_0_0_stub.v /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1/capstone_smartconnect_0_0_stub.vhdl /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1/capstone_smartconnect_0_0_sim_netlist.v /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/tianyi/capstone/capstone.runs/capstone_smartconnect_0_0_synth_1/capstone_smartconnect_0_0_sim_netlist.vhdl /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/tianyi/capstone/capstone.ip_user_files/ip/capstone_smartconnect_0_0]} {
  catch { 
    file copy -force /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_stub.v /home/tianyi/capstone/capstone.ip_user_files/ip/capstone_smartconnect_0_0
  }
}

if {[file isdir /home/tianyi/capstone/capstone.ip_user_files/ip/capstone_smartconnect_0_0]} {
  catch { 
    file copy -force /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/capstone_smartconnect_0_0_stub.vhdl /home/tianyi/capstone/capstone.ip_user_files/ip/capstone_smartconnect_0_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]

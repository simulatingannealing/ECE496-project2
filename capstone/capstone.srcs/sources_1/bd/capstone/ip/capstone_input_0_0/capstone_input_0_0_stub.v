// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 18 21:06:35 2021
// Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tianyi/capstone/capstone.srcs/sources_1/bd/capstone/ip/capstone_input_0_0/capstone_input_0_0_stub.v
// Design      : capstone_input_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "input_v1_0,Vivado 2018.3" *)
module capstone_input_0_0(input_enable_ffshark, m00_axis_tdata, 
  m00_axis_tstrb, m00_axis_tlast, m00_axis_tvalid, m00_axis_tready, m00_axis_aclk, 
  m00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="input_enable_ffshark,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn" */;
  input input_enable_ffshark;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  input m00_axis_tready;
  input m00_axis_aclk;
  input m00_axis_aresetn;
endmodule

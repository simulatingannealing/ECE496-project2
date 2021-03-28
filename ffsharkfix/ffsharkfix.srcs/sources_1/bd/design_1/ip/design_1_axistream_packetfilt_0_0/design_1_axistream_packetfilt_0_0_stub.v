// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Mar 26 21:09:05 2021
// Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tianyi/ffsharkfix/ffsharkfix.srcs/sources_1/bd/design_1/ip/design_1_axistream_packetfilt_0_0/design_1_axistream_packetfilt_0_0_stub.v
// Design      : design_1_axistream_packetfilt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axistream_packetfilt,Vivado 2018.3" *)
module design_1_axistream_packetfilt_0_0(clk, rst, sn_TDATA, sn_TKEEP, sn_TREADY, 
  sn_bp_TREADY, sn_TVALID, sn_TLAST, cb_TDATA, cb_reorder_tag, cb_TKEEP, cb_TLAST, cb_TVALID, 
  cb_TREADY, status_table, control_start_debug, num_packets_dropped, cpu_byte_rd_addr, 
  cpu_rd_en, cpu_resized_mem_data, cpu_resized_mem_data_valid, cpu_acc, cpu_rej, 
  cpu_inst_rd_addr, cpu_inst_rd_en, cpu_inst_rd_data, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, 
  s_axi_rvalid, s_axi_rready, s_axi_bresp, s_axi_bvalid, s_axi_bready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,sn_TDATA[31:0],sn_TKEEP[3:0],sn_TREADY,sn_bp_TREADY,sn_TVALID,sn_TLAST,cb_TDATA[31:0],cb_reorder_tag[5:0],cb_TKEEP[3:0],cb_TLAST,cb_TVALID,cb_TREADY,status_table[99:0],control_start_debug,num_packets_dropped[15:0],cpu_byte_rd_addr[43:0],cpu_rd_en[3:0],cpu_resized_mem_data[127:0],cpu_resized_mem_data_valid[3:0],cpu_acc[3:0],cpu_rej[3:0],cpu_inst_rd_addr[35:0],cpu_inst_rd_en[3:0],cpu_inst_rd_data[255:0],s_axi_awaddr[11:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_araddr[11:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready" */;
  input clk;
  input rst;
  input [31:0]sn_TDATA;
  input [3:0]sn_TKEEP;
  input sn_TREADY;
  output sn_bp_TREADY;
  input sn_TVALID;
  input sn_TLAST;
  output [31:0]cb_TDATA;
  output [5:0]cb_reorder_tag;
  output [3:0]cb_TKEEP;
  output cb_TLAST;
  output cb_TVALID;
  input cb_TREADY;
  output [99:0]status_table;
  output control_start_debug;
  output [15:0]num_packets_dropped;
  output [43:0]cpu_byte_rd_addr;
  output [3:0]cpu_rd_en;
  output [127:0]cpu_resized_mem_data;
  output [3:0]cpu_resized_mem_data_valid;
  output [3:0]cpu_acc;
  output [3:0]cpu_rej;
  output [35:0]cpu_inst_rd_addr;
  output [3:0]cpu_inst_rd_en;
  output [255:0]cpu_inst_rd_data;
  input [11:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  input [11:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
endmodule

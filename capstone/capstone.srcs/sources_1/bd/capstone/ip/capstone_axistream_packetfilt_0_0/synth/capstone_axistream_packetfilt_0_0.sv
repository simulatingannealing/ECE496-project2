// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: Marco_Merlini:fpga_bpf:axistream_packetfilt:1.0
// IP Revision: 1

(* X_CORE_INFO = "axistream_packetfilt,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "capstone_axistream_packetfilt_0_0,axistream_packetfilt,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module capstone_axistream_packetfilt_0_0 (
  clk,
  rst,
  sn_TDATA,
  sn_TKEEP,
  sn_TREADY,
  sn_bp_TREADY,
  sn_TVALID,
  sn_TLAST,
  cb_TDATA,
  cb_reorder_tag,
  cb_TKEEP,
  cb_TLAST,
  cb_TVALID,
  cb_TREADY,
  status_table,
  control_start_debug,
  num_packets_dropped,
  cpu_byte_rd_addr,
  cpu_rd_en,
  cpu_resized_mem_data,
  cpu_resized_mem_data_valid,
  cpu_acc,
  cpu_rej,
  cpu_inst_rd_addr,
  cpu_inst_rd_en,
  cpu_inst_rd_data,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF cb:sn:s_axi, ASSOCIATED_RESET rst, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN capstone_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sn TDATA" *)
input wire [31 : 0] sn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sn TKEEP" *)
input wire [3 : 0] sn_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sn TREADY" *)
input wire sn_TREADY;
output wire sn_bp_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sn TVALID" *)
input wire sn_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sn, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN capstone_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sn TLAST" *)
input wire sn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cb TDATA" *)
output wire [31 : 0] cb_TDATA;
output wire [5 : 0] cb_reorder_tag;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cb TKEEP" *)
output wire [3 : 0] cb_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cb TLAST" *)
output wire cb_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cb TVALID" *)
output wire cb_TVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cb, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN capstone_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cb TREADY" *)
input wire cb_TREADY;
output wire [99 : 0] status_table;
output wire control_start_debug;
output wire [15 : 0] num_packets_dropped;
output wire [43 : 0] cpu_byte_rd_addr;
output wire [3 : 0] cpu_rd_en;
output wire [127 : 0] cpu_resized_mem_data;
output wire [3 : 0] cpu_resized_mem_data_valid;
output wire [3 : 0] cpu_acc;
output wire [3 : 0] cpu_rej;
output wire [35 : 0] cpu_inst_rd_addr;
output wire [3 : 0] cpu_inst_rd_en;
output wire [255 : 0] cpu_inst_rd_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [11 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [11 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN capstone_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;

  axistream_packetfilt #(
    .N(4),
    .PACKET_MEM_BYTES(2048),
    .INST_MEM_DEPTH(512),
    .SN_FWD_DATA_WIDTH(32),
    .BUF_IN(0),
    .BUF_OUT(0),
    .PESS(0),
    .ENABLE_BACKPRESSURE(1),
    .CODE_ADDR_WIDTH(9),
    .CODE_DATA_WIDTH(64),
    .BYTE_ADDR_WIDTH(11),
    .TAG_WIDTH(6),
    .CIRCULAR_BUFFER_SIZE(50),
    .AXI_ADDR_WIDTH(12)
  ) inst (
    .clk(clk),
    .rst(rst),
    .sn_TDATA(sn_TDATA),
    .sn_TKEEP(sn_TKEEP),
    .sn_TREADY(sn_TREADY),
    .sn_bp_TREADY(sn_bp_TREADY),
    .sn_TVALID(sn_TVALID),
    .sn_TLAST(sn_TLAST),
    .cb_TDATA(cb_TDATA),
    .cb_reorder_tag(cb_reorder_tag),
    .cb_TKEEP(cb_TKEEP),
    .cb_TLAST(cb_TLAST),
    .cb_TVALID(cb_TVALID),
    .cb_TREADY(cb_TREADY),
    .status_table(status_table),
    .control_start_debug(control_start_debug),
    .num_packets_dropped(num_packets_dropped),
    .cpu_byte_rd_addr(cpu_byte_rd_addr),
    .cpu_rd_en(cpu_rd_en),
    .cpu_resized_mem_data(cpu_resized_mem_data),
    .cpu_resized_mem_data_valid(cpu_resized_mem_data_valid),
    .cpu_acc(cpu_acc),
    .cpu_rej(cpu_rej),
    .cpu_inst_rd_addr(cpu_inst_rd_addr),
    .cpu_inst_rd_en(cpu_inst_rd_en),
    .cpu_inst_rd_data(cpu_inst_rd_data),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready)
  );
endmodule

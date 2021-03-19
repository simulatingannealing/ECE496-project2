//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Fri Mar 19 03:42:40 2021
//Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target capstone.bd
//Design      : capstone
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "capstone,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=capstone,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "capstone.hwdef" *) 
module capstone
   ();

  wire [11:0]PS_to_PL_M00_AXI_ARADDR;
  wire [2:0]PS_to_PL_M00_AXI_ARPROT;
  wire PS_to_PL_M00_AXI_ARREADY;
  wire PS_to_PL_M00_AXI_ARVALID;
  wire [11:0]PS_to_PL_M00_AXI_AWADDR;
  wire [2:0]PS_to_PL_M00_AXI_AWPROT;
  wire PS_to_PL_M00_AXI_AWREADY;
  wire PS_to_PL_M00_AXI_AWVALID;
  wire PS_to_PL_M00_AXI_BREADY;
  wire [1:0]PS_to_PL_M00_AXI_BRESP;
  wire PS_to_PL_M00_AXI_BVALID;
  wire [31:0]PS_to_PL_M00_AXI_RDATA;
  wire PS_to_PL_M00_AXI_RREADY;
  wire [1:0]PS_to_PL_M00_AXI_RRESP;
  wire PS_to_PL_M00_AXI_RVALID;
  wire [31:0]PS_to_PL_M00_AXI_WDATA;
  wire PS_to_PL_M00_AXI_WREADY;
  wire [3:0]PS_to_PL_M00_AXI_WSTRB;
  wire PS_to_PL_M00_AXI_WVALID;
  wire [31:0]PS_to_PL_M01_AXI_ARADDR;
  wire PS_to_PL_M01_AXI_ARREADY;
  wire PS_to_PL_M01_AXI_ARVALID;
  wire [31:0]PS_to_PL_M01_AXI_AWADDR;
  wire PS_to_PL_M01_AXI_AWREADY;
  wire PS_to_PL_M01_AXI_AWVALID;
  wire PS_to_PL_M01_AXI_BREADY;
  wire [1:0]PS_to_PL_M01_AXI_BRESP;
  wire PS_to_PL_M01_AXI_BVALID;
  wire [31:0]PS_to_PL_M01_AXI_RDATA;
  wire PS_to_PL_M01_AXI_RREADY;
  wire [1:0]PS_to_PL_M01_AXI_RRESP;
  wire PS_to_PL_M01_AXI_RVALID;
  wire [31:0]PS_to_PL_M01_AXI_WDATA;
  wire PS_to_PL_M01_AXI_WREADY;
  wire [3:0]PS_to_PL_M01_AXI_WSTRB;
  wire PS_to_PL_M01_AXI_WVALID;
  wire [15:0]PS_to_PL_M02_AXI_ARADDR;
  wire [2:0]PS_to_PL_M02_AXI_ARPROT;
  wire PS_to_PL_M02_AXI_ARREADY;
  wire PS_to_PL_M02_AXI_ARVALID;
  wire [15:0]PS_to_PL_M02_AXI_AWADDR;
  wire [2:0]PS_to_PL_M02_AXI_AWPROT;
  wire PS_to_PL_M02_AXI_AWREADY;
  wire PS_to_PL_M02_AXI_AWVALID;
  wire PS_to_PL_M02_AXI_BREADY;
  wire [1:0]PS_to_PL_M02_AXI_BRESP;
  wire PS_to_PL_M02_AXI_BVALID;
  wire [31:0]PS_to_PL_M02_AXI_RDATA;
  wire PS_to_PL_M02_AXI_RREADY;
  wire [1:0]PS_to_PL_M02_AXI_RRESP;
  wire PS_to_PL_M02_AXI_RVALID;
  wire [31:0]PS_to_PL_M02_AXI_WDATA;
  wire PS_to_PL_M02_AXI_WREADY;
  wire [3:0]PS_to_PL_M02_AXI_WSTRB;
  wire PS_to_PL_M02_AXI_WVALID;
  (* CONN_BUS_INFO = "ffshark_cb xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]ffshark_cb_TDATA;
  (* CONN_BUS_INFO = "ffshark_cb xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [3:0]ffshark_cb_TKEEP;
  (* CONN_BUS_INFO = "ffshark_cb xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire ffshark_cb_TLAST;
  (* CONN_BUS_INFO = "ffshark_cb xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ffshark_cb_TREADY;
  (* CONN_BUS_INFO = "ffshark_cb xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ffshark_cb_TVALID;
  wire ffshark_control_start_debug;
  (* CONN_BUS_INFO = "input_packets_0_M00_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [31:0]input_packets_0_M00_AXIS_TDATA;
  (* CONN_BUS_INFO = "input_packets_0_M00_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire input_packets_0_M00_AXIS_TLAST;
  (* CONN_BUS_INFO = "input_packets_0_M00_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire input_packets_0_M00_AXIS_TREADY;
  (* CONN_BUS_INFO = "input_packets_0_M00_AXIS xilinx.com:interface:axis:1.0 None TSTRB" *) (* DONT_TOUCH *) wire [3:0]input_packets_0_M00_AXIS_TSTRB;
  (* CONN_BUS_INFO = "input_packets_0_M00_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire input_packets_0_M00_AXIS_TVALID;
  wire [39:0]ps_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]ps_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]ps_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]ps_M_AXI_HPM0_FPD_ARID;
  wire [7:0]ps_M_AXI_HPM0_FPD_ARLEN;
  wire ps_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]ps_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]ps_M_AXI_HPM0_FPD_ARQOS;
  wire ps_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]ps_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]ps_M_AXI_HPM0_FPD_ARUSER;
  wire ps_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]ps_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]ps_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]ps_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]ps_M_AXI_HPM0_FPD_AWID;
  wire [7:0]ps_M_AXI_HPM0_FPD_AWLEN;
  wire ps_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]ps_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]ps_M_AXI_HPM0_FPD_AWQOS;
  wire ps_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]ps_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]ps_M_AXI_HPM0_FPD_AWUSER;
  wire ps_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]ps_M_AXI_HPM0_FPD_BID;
  wire ps_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]ps_M_AXI_HPM0_FPD_BRESP;
  wire ps_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]ps_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]ps_M_AXI_HPM0_FPD_RID;
  wire ps_M_AXI_HPM0_FPD_RLAST;
  wire ps_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]ps_M_AXI_HPM0_FPD_RRESP;
  wire ps_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]ps_M_AXI_HPM0_FPD_WDATA;
  wire ps_M_AXI_HPM0_FPD_WLAST;
  wire ps_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]ps_M_AXI_HPM0_FPD_WSTRB;
  wire ps_M_AXI_HPM0_FPD_WVALID;
  wire ps_pl_clk0;
  wire [0:0]rst_ps_99M_peripheral_aresetn;

  capstone_smartconnect_0_0 PS_to_PL
       (.M00_AXI_araddr(PS_to_PL_M00_AXI_ARADDR),
        .M00_AXI_arprot(PS_to_PL_M00_AXI_ARPROT),
        .M00_AXI_arready(PS_to_PL_M00_AXI_ARREADY),
        .M00_AXI_arvalid(PS_to_PL_M00_AXI_ARVALID),
        .M00_AXI_awaddr(PS_to_PL_M00_AXI_AWADDR),
        .M00_AXI_awprot(PS_to_PL_M00_AXI_AWPROT),
        .M00_AXI_awready(PS_to_PL_M00_AXI_AWREADY),
        .M00_AXI_awvalid(PS_to_PL_M00_AXI_AWVALID),
        .M00_AXI_bready(PS_to_PL_M00_AXI_BREADY),
        .M00_AXI_bresp(PS_to_PL_M00_AXI_BRESP),
        .M00_AXI_bvalid(PS_to_PL_M00_AXI_BVALID),
        .M00_AXI_rdata(PS_to_PL_M00_AXI_RDATA),
        .M00_AXI_rready(PS_to_PL_M00_AXI_RREADY),
        .M00_AXI_rresp(PS_to_PL_M00_AXI_RRESP),
        .M00_AXI_rvalid(PS_to_PL_M00_AXI_RVALID),
        .M00_AXI_wdata(PS_to_PL_M00_AXI_WDATA),
        .M00_AXI_wready(PS_to_PL_M00_AXI_WREADY),
        .M00_AXI_wstrb(PS_to_PL_M00_AXI_WSTRB),
        .M00_AXI_wvalid(PS_to_PL_M00_AXI_WVALID),
        .M01_AXI_araddr(PS_to_PL_M01_AXI_ARADDR),
        .M01_AXI_arready(PS_to_PL_M01_AXI_ARREADY),
        .M01_AXI_arvalid(PS_to_PL_M01_AXI_ARVALID),
        .M01_AXI_awaddr(PS_to_PL_M01_AXI_AWADDR),
        .M01_AXI_awready(PS_to_PL_M01_AXI_AWREADY),
        .M01_AXI_awvalid(PS_to_PL_M01_AXI_AWVALID),
        .M01_AXI_bready(PS_to_PL_M01_AXI_BREADY),
        .M01_AXI_bresp(PS_to_PL_M01_AXI_BRESP),
        .M01_AXI_bvalid(PS_to_PL_M01_AXI_BVALID),
        .M01_AXI_rdata(PS_to_PL_M01_AXI_RDATA),
        .M01_AXI_rready(PS_to_PL_M01_AXI_RREADY),
        .M01_AXI_rresp(PS_to_PL_M01_AXI_RRESP),
        .M01_AXI_rvalid(PS_to_PL_M01_AXI_RVALID),
        .M01_AXI_wdata(PS_to_PL_M01_AXI_WDATA),
        .M01_AXI_wready(PS_to_PL_M01_AXI_WREADY),
        .M01_AXI_wstrb(PS_to_PL_M01_AXI_WSTRB),
        .M01_AXI_wvalid(PS_to_PL_M01_AXI_WVALID),
        .M02_AXI_araddr(PS_to_PL_M02_AXI_ARADDR),
        .M02_AXI_arprot(PS_to_PL_M02_AXI_ARPROT),
        .M02_AXI_arready(PS_to_PL_M02_AXI_ARREADY),
        .M02_AXI_arvalid(PS_to_PL_M02_AXI_ARVALID),
        .M02_AXI_awaddr(PS_to_PL_M02_AXI_AWADDR),
        .M02_AXI_awprot(PS_to_PL_M02_AXI_AWPROT),
        .M02_AXI_awready(PS_to_PL_M02_AXI_AWREADY),
        .M02_AXI_awvalid(PS_to_PL_M02_AXI_AWVALID),
        .M02_AXI_bready(PS_to_PL_M02_AXI_BREADY),
        .M02_AXI_bresp(PS_to_PL_M02_AXI_BRESP),
        .M02_AXI_bvalid(PS_to_PL_M02_AXI_BVALID),
        .M02_AXI_rdata(PS_to_PL_M02_AXI_RDATA),
        .M02_AXI_rready(PS_to_PL_M02_AXI_RREADY),
        .M02_AXI_rresp(PS_to_PL_M02_AXI_RRESP),
        .M02_AXI_rvalid(PS_to_PL_M02_AXI_RVALID),
        .M02_AXI_wdata(PS_to_PL_M02_AXI_WDATA),
        .M02_AXI_wready(PS_to_PL_M02_AXI_WREADY),
        .M02_AXI_wstrb(PS_to_PL_M02_AXI_WSTRB),
        .M02_AXI_wvalid(PS_to_PL_M02_AXI_WVALID),
        .S00_AXI_araddr(ps_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(ps_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(ps_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(ps_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(ps_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(ps_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(ps_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(ps_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(ps_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(ps_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(ps_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(ps_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(ps_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(ps_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(ps_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(ps_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(ps_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(ps_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(ps_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(ps_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(ps_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(ps_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(ps_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(ps_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(ps_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(ps_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(ps_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(ps_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(ps_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(ps_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(ps_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(ps_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(ps_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(ps_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(ps_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(ps_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(ps_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(ps_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(ps_M_AXI_HPM0_FPD_WVALID),
        .aclk(ps_pl_clk0));
  capstone_debug_bridge_0_0 debug_bridge_0
       (.S_AXI_araddr(PS_to_PL_M02_AXI_ARADDR[4:0]),
        .S_AXI_arprot(PS_to_PL_M02_AXI_ARPROT),
        .S_AXI_arready(PS_to_PL_M02_AXI_ARREADY),
        .S_AXI_arvalid(PS_to_PL_M02_AXI_ARVALID),
        .S_AXI_awaddr(PS_to_PL_M02_AXI_AWADDR[4:0]),
        .S_AXI_awprot(PS_to_PL_M02_AXI_AWPROT),
        .S_AXI_awready(PS_to_PL_M02_AXI_AWREADY),
        .S_AXI_awvalid(PS_to_PL_M02_AXI_AWVALID),
        .S_AXI_bready(PS_to_PL_M02_AXI_BREADY),
        .S_AXI_bresp(PS_to_PL_M02_AXI_BRESP),
        .S_AXI_bvalid(PS_to_PL_M02_AXI_BVALID),
        .S_AXI_rdata(PS_to_PL_M02_AXI_RDATA),
        .S_AXI_rready(PS_to_PL_M02_AXI_RREADY),
        .S_AXI_rresp(PS_to_PL_M02_AXI_RRESP),
        .S_AXI_rvalid(PS_to_PL_M02_AXI_RVALID),
        .S_AXI_wdata(PS_to_PL_M02_AXI_WDATA),
        .S_AXI_wready(PS_to_PL_M02_AXI_WREADY),
        .S_AXI_wstrb(PS_to_PL_M02_AXI_WSTRB),
        .S_AXI_wvalid(PS_to_PL_M02_AXI_WVALID),
        .s_axi_aclk(ps_pl_clk0),
        .s_axi_aresetn(rst_ps_99M_peripheral_aresetn));
  capstone_axistream_packetfilt_0_0 ffshark
       (.cb_TDATA(ffshark_cb_TDATA),
        .cb_TKEEP(ffshark_cb_TKEEP),
        .cb_TLAST(ffshark_cb_TLAST),
        .cb_TREADY(ffshark_cb_TREADY),
        .cb_TVALID(ffshark_cb_TVALID),
        .clk(ps_pl_clk0),
        .control_start_debug(ffshark_control_start_debug),
        .rst(rst_ps_99M_peripheral_aresetn),
        .s_axi_araddr(PS_to_PL_M00_AXI_ARADDR),
        .s_axi_arprot(PS_to_PL_M00_AXI_ARPROT),
        .s_axi_arready(PS_to_PL_M00_AXI_ARREADY),
        .s_axi_arvalid(PS_to_PL_M00_AXI_ARVALID),
        .s_axi_awaddr(PS_to_PL_M00_AXI_AWADDR),
        .s_axi_awprot(PS_to_PL_M00_AXI_AWPROT),
        .s_axi_awready(PS_to_PL_M00_AXI_AWREADY),
        .s_axi_awvalid(PS_to_PL_M00_AXI_AWVALID),
        .s_axi_bready(PS_to_PL_M00_AXI_BREADY),
        .s_axi_bresp(PS_to_PL_M00_AXI_BRESP),
        .s_axi_bvalid(PS_to_PL_M00_AXI_BVALID),
        .s_axi_rdata(PS_to_PL_M00_AXI_RDATA),
        .s_axi_rready(PS_to_PL_M00_AXI_RREADY),
        .s_axi_rresp(PS_to_PL_M00_AXI_RRESP),
        .s_axi_rvalid(PS_to_PL_M00_AXI_RVALID),
        .s_axi_wdata(PS_to_PL_M00_AXI_WDATA),
        .s_axi_wready(PS_to_PL_M00_AXI_WREADY),
        .s_axi_wstrb(PS_to_PL_M00_AXI_WSTRB),
        .s_axi_wvalid(PS_to_PL_M00_AXI_WVALID),
        .sn_TDATA(input_packets_0_M00_AXIS_TDATA),
        .sn_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .sn_TLAST(input_packets_0_M00_AXIS_TLAST),
        .sn_TREADY(1'b1),
        .sn_TVALID(input_packets_0_M00_AXIS_TVALID));
  capstone_input_0_0 input_0
       (.input_enable_ffshark(ffshark_control_start_debug),
        .m00_axis_aclk(ps_pl_clk0),
        .m00_axis_aresetn(rst_ps_99M_peripheral_aresetn),
        .m00_axis_tdata(input_packets_0_M00_AXIS_TDATA),
        .m00_axis_tlast(input_packets_0_M00_AXIS_TLAST),
        .m00_axis_tready(input_packets_0_M00_AXIS_TREADY),
        .m00_axis_tstrb(input_packets_0_M00_AXIS_TSTRB),
        .m00_axis_tvalid(input_packets_0_M00_AXIS_TVALID));
  capstone_axi_fifo_mm_s_0_0 packet_output
       (.axi_str_rxd_tdata(ffshark_cb_TDATA),
        .axi_str_rxd_tlast(ffshark_cb_TLAST),
        .axi_str_rxd_tready(ffshark_cb_TREADY),
        .axi_str_rxd_tvalid(ffshark_cb_TVALID),
        .axi_str_txd_tready(1'b1),
        .s_axi_aclk(ps_pl_clk0),
        .s_axi_araddr(PS_to_PL_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_ps_99M_peripheral_aresetn),
        .s_axi_arready(PS_to_PL_M01_AXI_ARREADY),
        .s_axi_arvalid(PS_to_PL_M01_AXI_ARVALID),
        .s_axi_awaddr(PS_to_PL_M01_AXI_AWADDR),
        .s_axi_awready(PS_to_PL_M01_AXI_AWREADY),
        .s_axi_awvalid(PS_to_PL_M01_AXI_AWVALID),
        .s_axi_bready(PS_to_PL_M01_AXI_BREADY),
        .s_axi_bresp(PS_to_PL_M01_AXI_BRESP),
        .s_axi_bvalid(PS_to_PL_M01_AXI_BVALID),
        .s_axi_rdata(PS_to_PL_M01_AXI_RDATA),
        .s_axi_rready(PS_to_PL_M01_AXI_RREADY),
        .s_axi_rresp(PS_to_PL_M01_AXI_RRESP),
        .s_axi_rvalid(PS_to_PL_M01_AXI_RVALID),
        .s_axi_wdata(PS_to_PL_M01_AXI_WDATA),
        .s_axi_wready(PS_to_PL_M01_AXI_WREADY),
        .s_axi_wstrb(PS_to_PL_M01_AXI_WSTRB),
        .s_axi_wvalid(PS_to_PL_M01_AXI_WVALID));
  capstone_zynq_ultra_ps_e_0_0 ps
       (.maxigp0_araddr(ps_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(ps_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(ps_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(ps_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(ps_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(ps_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(ps_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(ps_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(ps_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(ps_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(ps_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(ps_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(ps_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(ps_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(ps_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(ps_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(ps_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(ps_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(ps_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(ps_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(ps_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(ps_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(ps_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(ps_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(ps_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(ps_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(ps_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(ps_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(ps_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(ps_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(ps_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(ps_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(ps_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(ps_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(ps_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(ps_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(ps_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(ps_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(ps_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(ps_pl_clk0),
        .pl_clk0(ps_pl_clk0),
        .pl_ps_irq0(1'b0),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arburst({1'b0,1'b1}),
        .saxigp2_arcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlock(1'b0),
        .saxigp2_arprot({1'b0,1'b0,1'b0}),
        .saxigp2_arqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arsize({1'b1,1'b0,1'b0}),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(1'b0),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awburst({1'b0,1'b1}),
        .saxigp2_awcache({1'b0,1'b0,1'b1,1'b1}),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlock(1'b0),
        .saxigp2_awprot({1'b0,1'b0,1'b0}),
        .saxigp2_awqos({1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awsize({1'b1,1'b0,1'b0}),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(1'b0),
        .saxigp2_bready(1'b0),
        .saxigp2_rready(1'b0),
        .saxigp2_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_wlast(1'b0),
        .saxigp2_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .saxigp2_wvalid(1'b0),
        .saxihp0_fpd_aclk(ps_pl_clk0));
  capstone_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(input_packets_0_M00_AXIS_TDATA),
        .SLOT_0_AXIS_tlast(input_packets_0_M00_AXIS_TLAST),
        .SLOT_0_AXIS_tready(input_packets_0_M00_AXIS_TREADY),
        .SLOT_0_AXIS_tstrb(input_packets_0_M00_AXIS_TSTRB),
        .SLOT_0_AXIS_tvalid(input_packets_0_M00_AXIS_TVALID),
        .SLOT_1_AXIS_tdata(ffshark_cb_TDATA),
        .SLOT_1_AXIS_tkeep(ffshark_cb_TKEEP),
        .SLOT_1_AXIS_tlast(ffshark_cb_TLAST),
        .SLOT_1_AXIS_tready(ffshark_cb_TREADY),
        .SLOT_1_AXIS_tvalid(ffshark_cb_TVALID),
        .clk(ps_pl_clk0),
        .resetn(rst_ps_99M_peripheral_aresetn));
  capstone_xlconstant_0_0 zero
       (.dout(rst_ps_99M_peripheral_aresetn));
endmodule

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Mar 26 21:49:51 2021
// Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_input_0_0_sim_netlist.v
// Design      : design_1_input_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_input_0_0,input_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "input_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (input_enable_ffshark,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tvalid,
    m00_axis_tready,
    m00_axis_aclk,
    m00_axis_aresetn);
  input input_enable_ffshark;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire input_enable_ffshark;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]\^m00_axis_tdata ;
  wire m00_axis_tready;
  wire m00_axis_tvalid;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \^m00_axis_tdata [0];
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0 inst
       (.input_enable_ffshark(input_enable_ffshark),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0
   (m00_axis_tdata,
    m00_axis_tvalid,
    input_enable_ffshark,
    m00_axis_aresetn,
    m00_axis_tready,
    m00_axis_aclk);
  output [0:0]m00_axis_tdata;
  output m00_axis_tvalid;
  input input_enable_ffshark;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input m00_axis_aclk;

  wire input_enable_ffshark;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0_M00_AXIS input_v1_0_M00_AXIS_inst
       (.input_enable_ffshark(input_enable_ffshark),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0_M00_AXIS
   (m00_axis_tdata,
    m00_axis_tvalid,
    input_enable_ffshark,
    m00_axis_aresetn,
    m00_axis_tready,
    m00_axis_aclk);
  output [0:0]m00_axis_tdata;
  output m00_axis_tvalid;
  input input_enable_ffshark;
  input m00_axis_aresetn;
  input m00_axis_tready;
  input m00_axis_aclk;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire [7:7]NUMBER_OF_OUTPUT_WORDS;
  wire \NUMBER_OF_OUTPUT_WORDS[7]_i_1_n_0 ;
  wire axis_tvalid;
  wire axis_tvalid0;
  wire axis_tvalid0_carry_i_1_n_0;
  wire axis_tvalid0_carry_i_2_n_0;
  wire axis_tvalid0_carry_i_3_n_0;
  wire axis_tvalid0_carry_i_4_n_0;
  wire axis_tvalid0_carry_i_5_n_0;
  wire axis_tvalid0_carry_n_4;
  wire axis_tvalid0_carry_n_5;
  wire axis_tvalid0_carry_n_6;
  wire axis_tvalid0_carry_n_7;
  wire input_enable_ffshark;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [8:5]read_pointer;
  wire read_pointer1;
  wire read_pointer1__1_carry__0_n_1;
  wire read_pointer1__1_carry__0_n_2;
  wire read_pointer1__1_carry__0_n_3;
  wire read_pointer1__1_carry__0_n_4;
  wire read_pointer1__1_carry__0_n_5;
  wire read_pointer1__1_carry__0_n_6;
  wire read_pointer1__1_carry__0_n_7;
  wire read_pointer1__1_carry_i_1_n_0;
  wire read_pointer1__1_carry_i_2_n_0;
  wire read_pointer1__1_carry_i_3_n_0;
  wire read_pointer1__1_carry_i_4_n_0;
  wire read_pointer1__1_carry_i_5_n_0;
  wire read_pointer1__1_carry_n_0;
  wire read_pointer1__1_carry_n_1;
  wire read_pointer1__1_carry_n_2;
  wire read_pointer1__1_carry_n_3;
  wire read_pointer1__1_carry_n_4;
  wire read_pointer1__1_carry_n_5;
  wire read_pointer1__1_carry_n_6;
  wire read_pointer1__1_carry_n_7;
  wire \read_pointer[5]_i_1_n_0 ;
  wire \read_pointer[6]_i_1_n_0 ;
  wire \read_pointer[7]_i_1_n_0 ;
  wire \read_pointer[8]_i_1_n_0 ;
  wire \read_pointer[8]_i_2_n_0 ;
  wire \stream_data_out[0]_i_1_n_0 ;
  wire \stream_data_out[0]_i_2_n_0 ;
  wire \stream_data_out[0]_i_3_n_0 ;
  wire tx_done;
  wire tx_done_i_1_n_0;
  wire [7:5]NLW_axis_tvalid0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_axis_tvalid0_carry_O_UNCONNECTED;
  wire [7:0]NLW_read_pointer1__1_carry_O_UNCONNECTED;
  wire [7:0]NLW_read_pointer1__1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(input_enable_ffshark),
        .I2(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3404)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(tx_done),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(input_enable_ffshark),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \NUMBER_OF_OUTPUT_WORDS[7]_i_1 
       (.I0(m00_axis_aresetn),
        .O(\NUMBER_OF_OUTPUT_WORDS[7]_i_1_n_0 ));
  FDRE \NUMBER_OF_OUTPUT_WORDS_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\NUMBER_OF_OUTPUT_WORDS[7]_i_1_n_0 ),
        .D(\stream_data_out[0]_i_1_n_0 ),
        .Q(NUMBER_OF_OUTPUT_WORDS),
        .R(1'b0));
  CARRY8 axis_tvalid0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_axis_tvalid0_carry_CO_UNCONNECTED[7:5],axis_tvalid0,axis_tvalid0_carry_n_4,axis_tvalid0_carry_n_5,axis_tvalid0_carry_n_6,axis_tvalid0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,axis_tvalid0_carry_i_1_n_0,axis_tvalid0_carry_i_2_n_0,1'b1,1'b0}),
        .O(NLW_axis_tvalid0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,axis_tvalid0_carry_i_3_n_0,axis_tvalid0_carry_i_4_n_0,axis_tvalid0_carry_i_5_n_0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h22B2)) 
    axis_tvalid0_carry_i_1
       (.I0(NUMBER_OF_OUTPUT_WORDS),
        .I1(read_pointer[7]),
        .I2(NUMBER_OF_OUTPUT_WORDS),
        .I3(read_pointer[6]),
        .O(axis_tvalid0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hD)) 
    axis_tvalid0_carry_i_2
       (.I0(read_pointer[5]),
        .I1(NUMBER_OF_OUTPUT_WORDS),
        .O(axis_tvalid0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid0_carry_i_3
       (.I0(read_pointer[8]),
        .O(axis_tvalid0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry_i_4
       (.I0(NUMBER_OF_OUTPUT_WORDS),
        .I1(read_pointer[6]),
        .I2(NUMBER_OF_OUTPUT_WORDS),
        .I3(read_pointer[7]),
        .O(axis_tvalid0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    axis_tvalid0_carry_i_5
       (.I0(NUMBER_OF_OUTPUT_WORDS),
        .I1(read_pointer[5]),
        .O(axis_tvalid0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axis_tvalid_delay_i_1
       (.I0(mst_exec_state[1]),
        .I1(axis_tvalid0),
        .I2(mst_exec_state[0]),
        .O(axis_tvalid));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(\stream_data_out[0]_i_1_n_0 ));
  CARRY8 read_pointer1__1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({read_pointer1__1_carry_n_0,read_pointer1__1_carry_n_1,read_pointer1__1_carry_n_2,read_pointer1__1_carry_n_3,read_pointer1__1_carry_n_4,read_pointer1__1_carry_n_5,read_pointer1__1_carry_n_6,read_pointer1__1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,read_pointer1__1_carry_i_1_n_0,read_pointer1__1_carry_i_2_n_0,1'b1,1'b1}),
        .O(NLW_read_pointer1__1_carry_O_UNCONNECTED[7:0]),
        .S({1'b1,1'b1,1'b1,read_pointer1__1_carry_i_3_n_0,read_pointer1__1_carry_i_4_n_0,read_pointer1__1_carry_i_5_n_0,1'b0,1'b0}));
  CARRY8 read_pointer1__1_carry__0
       (.CI(read_pointer1__1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({read_pointer1,read_pointer1__1_carry__0_n_1,read_pointer1__1_carry__0_n_2,read_pointer1__1_carry__0_n_3,read_pointer1__1_carry__0_n_4,read_pointer1__1_carry__0_n_5,read_pointer1__1_carry__0_n_6,read_pointer1__1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_read_pointer1__1_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  LUT4 #(
    .INIT(16'h50D4)) 
    read_pointer1__1_carry_i_1
       (.I0(read_pointer[7]),
        .I1(NUMBER_OF_OUTPUT_WORDS),
        .I2(NUMBER_OF_OUTPUT_WORDS),
        .I3(read_pointer[6]),
        .O(read_pointer1__1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    read_pointer1__1_carry_i_2
       (.I0(NUMBER_OF_OUTPUT_WORDS),
        .I1(read_pointer[5]),
        .O(read_pointer1__1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    read_pointer1__1_carry_i_3
       (.I0(read_pointer[8]),
        .O(read_pointer1__1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1__1_carry_i_4
       (.I0(NUMBER_OF_OUTPUT_WORDS),
        .I1(read_pointer[7]),
        .I2(NUMBER_OF_OUTPUT_WORDS),
        .I3(read_pointer[6]),
        .O(read_pointer1__1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    read_pointer1__1_carry_i_5
       (.I0(NUMBER_OF_OUTPUT_WORDS),
        .I1(read_pointer[5]),
        .O(read_pointer1__1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[5]_i_1 
       (.I0(read_pointer[5]),
        .O(\read_pointer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[6]_i_1 
       (.I0(read_pointer[5]),
        .I1(read_pointer[6]),
        .O(\read_pointer[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \read_pointer[7]_i_1 
       (.I0(read_pointer[7]),
        .I1(read_pointer[6]),
        .I2(read_pointer[5]),
        .O(\read_pointer[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \read_pointer[8]_i_1 
       (.I0(read_pointer1),
        .I1(mst_exec_state[1]),
        .I2(axis_tvalid0),
        .I3(mst_exec_state[0]),
        .I4(m00_axis_tready),
        .O(\read_pointer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \read_pointer[8]_i_2 
       (.I0(read_pointer[8]),
        .I1(read_pointer[5]),
        .I2(read_pointer[6]),
        .I3(read_pointer[7]),
        .O(\read_pointer[8]_i_2_n_0 ));
  FDRE \read_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(\read_pointer[5]_i_1_n_0 ),
        .Q(read_pointer[5]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(\read_pointer[6]_i_1_n_0 ),
        .Q(read_pointer[6]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(\read_pointer[7]_i_1_n_0 ),
        .Q(read_pointer[7]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(\read_pointer[8]_i_2_n_0 ),
        .Q(read_pointer[8]),
        .R(\stream_data_out[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(m00_axis_aresetn),
        .O(\stream_data_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF20000000)) 
    \stream_data_out[0]_i_2 
       (.I0(m00_axis_tready),
        .I1(mst_exec_state[0]),
        .I2(axis_tvalid0),
        .I3(mst_exec_state[1]),
        .I4(\stream_data_out[0]_i_3_n_0 ),
        .I5(m00_axis_tdata),
        .O(\stream_data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEC81)) 
    \stream_data_out[0]_i_3 
       (.I0(read_pointer[6]),
        .I1(read_pointer[5]),
        .I2(read_pointer[7]),
        .I3(read_pointer[8]),
        .O(\stream_data_out[0]_i_3_n_0 ));
  FDSE \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\stream_data_out[0]_i_2_n_0 ),
        .Q(m00_axis_tdata),
        .S(\stream_data_out[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    tx_done_i_1
       (.I0(m00_axis_aresetn),
        .I1(tx_done),
        .I2(\read_pointer[8]_i_1_n_0 ),
        .O(tx_done_i_1_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

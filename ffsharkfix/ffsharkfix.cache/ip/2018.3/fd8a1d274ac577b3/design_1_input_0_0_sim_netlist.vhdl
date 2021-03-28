-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Mar 27 00:33:07 2021
-- Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_input_0_0_sim_netlist.vhdl
-- Design      : design_1_input_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0_M00_AXIS is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    input_enable_ffshark : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0_M00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0_M00_AXIS is
  signal \FSM_onehot_mst_exec_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_mst_exec_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \__2/i__n_0\ : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid0 : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal p_0_in_0 : STD_LOGIC;
  signal read_pointer : STD_LOGIC;
  signal read_pointer1 : STD_LOGIC;
  signal \read_pointer[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_4_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_3_n_7\ : STD_LOGIC;
  signal \read_pointer_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 5 );
  signal \stream_data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \stream_data_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \stream_data_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \stream_data_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \NLW_read_pointer_reg[8]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_read_pointer_reg[8]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_stream_data_out_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_stream_data_out_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:010,SEND_STREAM:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:010,SEND_STREAM:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_mst_exec_state_reg[2]\ : label is "INIT_COUNTER:010,SEND_STREAM:100,IDLE:001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_pointer[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_pointer[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_pointer[8]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stream_data_out0 : label is "soft_lutpair0";
begin
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
\FSM_onehot_mst_exec_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      O => \FSM_onehot_mst_exec_state[2]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axis_aclk,
      CE => \__2/i__n_0\,
      D => '0',
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      S => \stream_data_out[0]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \__2/i__n_0\,
      D => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      R => \stream_data_out[0]_i_1_n_0\
    );
\FSM_onehot_mst_exec_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => \__2/i__n_0\,
      D => \FSM_onehot_mst_exec_state[2]_i_1_n_0\,
      Q => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      R => \stream_data_out[0]_i_1_n_0\
    );
\__2/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      O => \__2/i__n_0\
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I1 => axis_tvalid0,
      O => axis_tvalid
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => m00_axis_tvalid,
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_pointer_reg__0\(5),
      O => \read_pointer[5]_i_1_n_0\
    );
\read_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_pointer_reg__0\(5),
      I1 => \read_pointer_reg__0\(6),
      O => p_0_in(6)
    );
\read_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_pointer_reg__0\(6),
      I1 => \read_pointer_reg__0\(5),
      I2 => \read_pointer_reg__0\(7),
      O => \read_pointer[7]_i_1_n_0\
    );
\read_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => read_pointer1,
      I1 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I2 => axis_tvalid0,
      I3 => m00_axis_tready,
      O => read_pointer
    );
\read_pointer[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_pointer_reg__0\(5),
      I1 => \read_pointer_reg__0\(6),
      I2 => \read_pointer_reg__0\(7),
      I3 => \read_pointer_reg__0\(8),
      O => p_0_in(8)
    );
\read_pointer[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \read_pointer_reg__0\(6),
      I1 => \read_pointer_reg__0\(7),
      O => \read_pointer[8]_i_4_n_0\
    );
\read_pointer[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_pointer_reg__0\(8),
      O => \read_pointer[8]_i_5_n_0\
    );
\read_pointer[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \read_pointer_reg__0\(6),
      I1 => \read_pointer_reg__0\(7),
      O => \read_pointer[8]_i_6_n_0\
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer[5]_i_1_n_0\,
      Q => \read_pointer_reg__0\(5),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => p_0_in(6),
      Q => \read_pointer_reg__0\(6),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer[7]_i_1_n_0\,
      Q => \read_pointer_reg__0\(7),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => p_0_in(8),
      Q => \read_pointer_reg__0\(8),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[8]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_read_pointer_reg[8]_i_3_CO_UNCONNECTED\(7 downto 2),
      CO(1) => read_pointer1,
      CO(0) => \read_pointer_reg[8]_i_3_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \read_pointer[8]_i_4_n_0\,
      O(7 downto 0) => \NLW_read_pointer_reg[8]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7 downto 2) => B"000000",
      S(1) => \read_pointer[8]_i_5_n_0\,
      S(0) => \read_pointer[8]_i_6_n_0\
    );
stream_data_out0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA81"
    )
        port map (
      I0 => \read_pointer_reg__0\(5),
      I1 => \read_pointer_reg__0\(6),
      I2 => \read_pointer_reg__0\(7),
      I3 => \read_pointer_reg__0\(8),
      O => p_0_in_0
    );
\stream_data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => input_enable_ffshark,
      O => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => p_0_in_0,
      I1 => m00_axis_tready,
      I2 => axis_tvalid0,
      I3 => \FSM_onehot_mst_exec_state_reg_n_0_[2]\,
      I4 => \^m00_axis_tdata\(0),
      O => \stream_data_out[0]_i_2_n_0\
    );
\stream_data_out[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \read_pointer_reg__0\(6),
      I1 => \read_pointer_reg__0\(7),
      O => \stream_data_out[0]_i_4_n_0\
    );
\stream_data_out[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_pointer_reg__0\(8),
      O => \stream_data_out[0]_i_5_n_0\
    );
\stream_data_out[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \read_pointer_reg__0\(6),
      I1 => \read_pointer_reg__0\(7),
      O => \stream_data_out[0]_i_6_n_0\
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \stream_data_out[0]_i_2_n_0\,
      Q => \^m00_axis_tdata\(0),
      S => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_stream_data_out_reg[0]_i_3_CO_UNCONNECTED\(7 downto 2),
      CO(1) => axis_tvalid0,
      CO(0) => \stream_data_out_reg[0]_i_3_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \stream_data_out[0]_i_4_n_0\,
      O(7 downto 0) => \NLW_stream_data_out_reg[0]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7 downto 2) => B"000000",
      S(1) => \stream_data_out[0]_i_5_n_0\,
      S(0) => \stream_data_out[0]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0 is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    input_enable_ffshark : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0 is
begin
input_v1_0_M00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0_M00_AXIS
     port map (
      input_enable_ffshark => input_enable_ffshark,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_tdata(0) => m00_axis_tdata(0),
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    input_enable_ffshark : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_input_0_0,input_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "input_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
begin
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
  m00_axis_tlast <= \<const0>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_v1_0
     port map (
      input_enable_ffshark => input_enable_ffshark,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_tdata(0) => \^m00_axis_tdata\(0),
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
end STRUCTURE;

-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Mar 18 21:48:30 2021
-- Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ capstone_axistream_packetfilt_0_0_stub.vhdl
-- Design      : capstone_axistream_packetfilt_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sn_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sn_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sn_TREADY : in STD_LOGIC;
    sn_bp_TREADY : out STD_LOGIC;
    sn_TVALID : in STD_LOGIC;
    sn_TLAST : in STD_LOGIC;
    cb_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cb_reorder_tag : out STD_LOGIC_VECTOR ( 5 downto 0 );
    cb_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cb_TLAST : out STD_LOGIC;
    cb_TVALID : out STD_LOGIC;
    cb_TREADY : in STD_LOGIC;
    status_table : out STD_LOGIC_VECTOR ( 99 downto 0 );
    num_packets_dropped : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpu_byte_rd_addr : out STD_LOGIC_VECTOR ( 43 downto 0 );
    cpu_rd_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_resized_mem_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    cpu_resized_mem_data_valid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_acc : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_rej : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_inst_rd_addr : out STD_LOGIC_VECTOR ( 35 downto 0 );
    cpu_inst_rd_en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_inst_rd_data : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,sn_TDATA[31:0],sn_TKEEP[3:0],sn_TREADY,sn_bp_TREADY,sn_TVALID,sn_TLAST,cb_TDATA[31:0],cb_reorder_tag[5:0],cb_TKEEP[3:0],cb_TLAST,cb_TVALID,cb_TREADY,status_table[99:0],num_packets_dropped[15:0],cpu_byte_rd_addr[43:0],cpu_rd_en[3:0],cpu_resized_mem_data[127:0],cpu_resized_mem_data_valid[3:0],cpu_acc[3:0],cpu_rej[3:0],cpu_inst_rd_addr[35:0],cpu_inst_rd_en[3:0],cpu_inst_rd_data[255:0],s_axi_awaddr[11:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_araddr[11:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axistream_packetfilt,Vivado 2018.3";
begin
end;

-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Mar 27 02:26:32 2021
-- Host        : capstone running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tianyi/ffsharkfix/ffsharkfix.srcs/sources_1/bd/design_1/ip/design_1_axi_fifo_mm_s_0_0/design_1_axi_fifo_mm_s_0_0_stub.vhdl
-- Design      : design_1_axi_fifo_mm_s_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axi_fifo_mm_s_0_0 is
  Port ( 
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tready : in STD_LOGIC;
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_axi_fifo_mm_s_0_0;

architecture stub of design_1_axi_fifo_mm_s_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "interrupt,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,mm2s_prmry_reset_out_n,axi_str_txd_tvalid,axi_str_txd_tready,axi_str_txd_tlast,axi_str_txd_tkeep[3:0],axi_str_txd_tdata[31:0],s2mm_prmry_reset_out_n,axi_str_rxd_tvalid,axi_str_rxd_tready,axi_str_rxd_tlast,axi_str_rxd_tkeep[3:0],axi_str_rxd_tdata[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_fifo_mm_s,Vivado 2018.3";
begin
end;

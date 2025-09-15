--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Sep 15 14:59:52 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target fetch_gnns_1.bd
--Design      : fetch_gnns_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fetch_gnns_1 is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of fetch_gnns_1 : entity is "fetch_gnns_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fetch_gnns_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of fetch_gnns_1 : entity is "fetch_gnns_1.hwdef";
end fetch_gnns_1;

architecture STRUCTURE of fetch_gnns_1 is
  component fetch_gnns_1_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component fetch_gnns_1_Switchmod_0_0;
  component fetch_gnns_1_UART_RXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component fetch_gnns_1_UART_RXmod_0_0;
  component fetch_gnns_1_GNSS_Fetcher_mod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_RX_drive : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component fetch_gnns_1_GNSS_Fetcher_mod_0_0;
  component fetch_gnns_1_GNSS_Sender_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component fetch_gnns_1_GNSS_Sender_0_0;
  component fetch_gnns_1_Packet_chopper_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    i_DV : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led2 : out STD_LOGIC
  );
  end component fetch_gnns_1_Packet_chopper_0_0;
  component fetch_gnns_1_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component fetch_gnns_1_UART_TXmod_0_0;
  signal \^gnss_en\ : STD_LOGIC;
  signal GNSS_Fetcher_mod_0_o_gnss_data : STD_LOGIC_VECTOR ( 383 downto 0 );
  signal GNSS_Fetcher_mod_0_o_gnss_drive : STD_LOGIC;
  signal GNSS_Sender_0_o_gnss_data : STD_LOGIC_VECTOR ( 383 downto 0 );
  signal GNSS_Sender_0_o_gnss_drive : STD_LOGIC;
  signal Packet_chopper_0_o_TX_DV : STD_LOGIC;
  signal Packet_chopper_0_o_TX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RXmod_0_o_RX_DV : STD_LOGIC;
  signal UART_RXmod_0_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_TXmod_0_o_TX_Done : STD_LOGIC;
  signal NLW_GNSS_Fetcher_mod_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_Packet_chopper_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
begin
  GNSS_EN <= \^gnss_en\;
GNSS_Fetcher_mod_0: component fetch_gnns_1_GNSS_Fetcher_mod_0_0
     port map (
      i_RX_drive => UART_RXmod_0_o_RX_DV,
      i_gnss_data(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      led1 => NLW_GNSS_Fetcher_mod_0_led1_UNCONNECTED,
      o_gnss_data(383 downto 0) => GNSS_Fetcher_mod_0_o_gnss_data(383 downto 0),
      o_gnss_drive => GNSS_Fetcher_mod_0_o_gnss_drive,
      reset_n => \^gnss_en\,
      sysclk => sysclk
    );
GNSS_Sender_0: component fetch_gnns_1_GNSS_Sender_0_0
     port map (
      data_ready => GNSS_Fetcher_mod_0_o_gnss_drive,
      i_gnss_data(383 downto 0) => GNSS_Fetcher_mod_0_o_gnss_data(383 downto 0),
      led1 => led1,
      o_gnss_data(383 downto 0) => GNSS_Sender_0_o_gnss_data(383 downto 0),
      o_gnss_drive => GNSS_Sender_0_o_gnss_drive,
      reset_n => \^gnss_en\,
      sysclk => sysclk
    );
Packet_chopper_0: component fetch_gnns_1_Packet_chopper_0_0
     port map (
      clk => sysclk,
      i_DV => GNSS_Sender_0_o_gnss_drive,
      i_TX_done => UART_TXmod_0_o_TX_Done,
      i_data(383 downto 0) => GNSS_Sender_0_o_gnss_data(383 downto 0),
      led2 => NLW_Packet_chopper_0_led2_UNCONNECTED,
      o_TX_DV => Packet_chopper_0_o_TX_DV,
      o_TX_byte(7 downto 0) => Packet_chopper_0_o_TX_byte(7 downto 0),
      rst => \^gnss_en\
    );
Switchmod_0: component fetch_gnns_1_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => \^gnss_en\,
      sysclk => sysclk
    );
UART_RXmod_0: component fetch_gnns_1_UART_RXmod_0_0
     port map (
      i_RX_Serial => GNSS_TX,
      o_RX_DV => UART_RXmod_0_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_TXmod_0: component fetch_gnns_1_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => Packet_chopper_0_o_TX_byte(7 downto 0),
      i_TX_DV => Packet_chopper_0_o_TX_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => UART_TXmod_0_o_TX_Done,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
end STRUCTURE;

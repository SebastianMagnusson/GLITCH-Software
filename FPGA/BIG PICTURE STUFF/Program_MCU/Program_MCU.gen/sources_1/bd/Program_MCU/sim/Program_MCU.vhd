--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Sep 22 14:12:30 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Program_MCU.bd
--Design      : Program_MCU
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Program_MCU is
  port (
    MCU_rx : out STD_LOGIC;
    MCU_tx : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of Program_MCU : entity is "Program_MCU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Program_MCU,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of Program_MCU : entity is "Program_MCU.hwdef";
end Program_MCU;

architecture STRUCTURE of Program_MCU is
  component Program_MCU_UART_RXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Program_MCU_UART_RXmod_0_0;
  component Program_MCU_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Program_MCU_UART_TXmod_0_0;
  component Program_MCU_UART_RXmod_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Program_MCU_UART_RXmod_1_0;
  component Program_MCU_UART_TXmod_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Program_MCU_UART_TXmod_1_0;
  signal UART_RXmod_0_o_RX_DV : STD_LOGIC;
  signal UART_RXmod_0_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RXmod_1_o_RX_DV : STD_LOGIC;
  signal UART_RXmod_1_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_1_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_1_o_TX_Done_UNCONNECTED : STD_LOGIC;
begin
UART_RXmod_0: component Program_MCU_UART_RXmod_0_0
     port map (
      i_RX_Serial => MCU_tx,
      o_RX_DV => UART_RXmod_0_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_RXmod_1: component Program_MCU_UART_RXmod_1_0
     port map (
      i_RX_Serial => uart_txd_in,
      o_RX_DV => UART_RXmod_1_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RXmod_1_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_TXmod_0: component Program_MCU_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => UART_RXmod_0_o_RX_byte(7 downto 0),
      i_TX_DV => UART_RXmod_0_o_RX_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_0_o_TX_Done_UNCONNECTED,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
UART_TXmod_1: component Program_MCU_UART_TXmod_1_0
     port map (
      i_TX_Byte(7 downto 0) => UART_RXmod_1_o_RX_byte(7 downto 0),
      i_TX_DV => UART_RXmod_1_o_RX_DV,
      o_TX_Active => NLW_UART_TXmod_1_o_TX_Active_UNCONNECTED,
      o_TX_Done => NLW_UART_TXmod_1_o_TX_Done_UNCONNECTED,
      o_TX_Serial => MCU_rx,
      sysclk => sysclk
    );
end STRUCTURE;

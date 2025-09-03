--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Sep  3 10:55:47 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Main_Blocks.bd
--Design      : Main_Blocks
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main_Blocks is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WE_n : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Main_Blocks : entity is "Main_Blocks,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Main_Blocks,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Main_Blocks : entity is "Main_Blocks.hwdef";
end Main_Blocks;

architecture STRUCTURE of Main_Blocks is
  component Main_Blocks_sram_ctrl_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    done : out STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CE_n : out STD_LOGIC;
    OE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    CE2 : out STD_LOGIC;
    LB_n : out STD_LOGIC;
    UB_n : out STD_LOGIC
  );
  end component Main_Blocks_sram_ctrl_0_0;
  component Main_Blocks_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component Main_Blocks_Switchmod_0_0;
  component Main_Blocks_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Main_Blocks_UART_TXmod_0_0;
  signal Switchmod_0_o_signal : STD_LOGIC;
  signal UART_TXmod_0_o_TX_Done : STD_LOGIC;
  signal sram_ctrl_0_o_TX_DV : STD_LOGIC;
  signal sram_ctrl_0_o_TX_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
  signal NLW_sram_ctrl_0_CE2_UNCONNECTED : STD_LOGIC;
  signal NLW_sram_ctrl_0_LB_n_UNCONNECTED : STD_LOGIC;
  signal NLW_sram_ctrl_0_OE_n_UNCONNECTED : STD_LOGIC;
  signal NLW_sram_ctrl_0_UB_n_UNCONNECTED : STD_LOGIC;
  signal NLW_sram_ctrl_0_done_UNCONNECTED : STD_LOGIC;
begin
Switchmod_0: component Main_Blocks_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => Switchmod_0_o_signal,
      sysclk => sysclk
    );
UART_TXmod_0: component Main_Blocks_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => sram_ctrl_0_o_TX_data(7 downto 0),
      i_TX_DV => sram_ctrl_0_o_TX_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => UART_TXmod_0_o_TX_Done,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
sram_ctrl_0: component Main_Blocks_sram_ctrl_0_0
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE2 => NLW_sram_ctrl_0_CE2_UNCONNECTED,
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      LB_n => NLW_sram_ctrl_0_LB_n_UNCONNECTED,
      OE_n => NLW_sram_ctrl_0_OE_n_UNCONNECTED,
      UB_n => NLW_sram_ctrl_0_UB_n_UNCONNECTED,
      WE_n => WE_n,
      done => NLW_sram_ctrl_0_done_UNCONNECTED,
      i_TX_done => UART_TXmod_0_o_TX_Done,
      o_TX_DV => sram_ctrl_0_o_TX_DV,
      o_TX_data(7 downto 0) => sram_ctrl_0_o_TX_data(7 downto 0),
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
end STRUCTURE;

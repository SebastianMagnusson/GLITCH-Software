--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Sep 10 15:39:42 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target loop_test.bd
--Design      : loop_test
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity loop_test is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WE_n : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of loop_test : entity is "loop_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=loop_test,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of loop_test : entity is "loop_test.hwdef";
end loop_test;

architecture STRUCTURE of loop_test is
  component loop_test_RW_ROUTER4_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Toggle : in STD_LOGIC;
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_write : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_read : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component loop_test_RW_ROUTER4_0_0;
  component loop_test_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component loop_test_Switchmod_0_0;
  component loop_test_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component loop_test_UART_TXmod_0_0;
  component loop_test_Read555_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    read_complete : out STD_LOGIC;
    write_complete : in STD_LOGIC;
    i_TX_active : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component loop_test_Read555_0_0;
  component loop_test_Write555_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    write_complete : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component loop_test_Write555_0_0;
  signal Read555_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Read555_0_CE_n : STD_LOGIC;
  signal Read555_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read555_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read555_0_WE_n : STD_LOGIC;
  signal Read555_0_o_TX_DV : STD_LOGIC;
  signal Read555_0_o_TX_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Switchmod_0_o_signal : STD_LOGIC;
  signal UART_TXmod_0_o_TX_Active : STD_LOGIC;
  signal UART_TXmod_0_o_TX_Done : STD_LOGIC;
  signal Write555_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Write555_0_CE_n : STD_LOGIC;
  signal Write555_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write555_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write555_0_WE_n : STD_LOGIC;
  signal Write555_0_write_complete : STD_LOGIC;
  signal NLW_Read555_0_read_complete_UNCONNECTED : STD_LOGIC;
begin
RW_ROUTER4_0: component loop_test_RW_ROUTER4_0_0
     port map (
      A(21 downto 0) => A(21 downto 0),
      A_read(21 downto 0) => Read555_0_A(21 downto 0),
      A_write(21 downto 0) => Write555_0_A(21 downto 0),
      CE_n => CE_n,
      CE_n_read => Read555_0_CE_n,
      CE_n_write => Write555_0_CE_n,
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_o_read(15 downto 0) => Read555_0_DQ_o(15 downto 0),
      DQ_o_write(15 downto 0) => Write555_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => Read555_0_DQ_t(15 downto 0),
      DQ_t_write(15 downto 0) => Write555_0_DQ_t(15 downto 0),
      Toggle => Write555_0_write_complete,
      WE_n => WE_n,
      WE_n_read => Read555_0_WE_n,
      WE_n_write => Write555_0_WE_n,
      led1 => led1,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
Read555_0: component loop_test_Read555_0_0
     port map (
      A(21 downto 0) => Read555_0_A(21 downto 0),
      CE_n => Read555_0_CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => Read555_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Read555_0_DQ_t(15 downto 0),
      WE_n => Read555_0_WE_n,
      i_TX_active => UART_TXmod_0_o_TX_Active,
      i_TX_done => UART_TXmod_0_o_TX_Done,
      o_TX_DV => Read555_0_o_TX_DV,
      o_TX_data(7 downto 0) => Read555_0_o_TX_data(7 downto 0),
      read_complete => NLW_Read555_0_read_complete_UNCONNECTED,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write555_0_write_complete
    );
Switchmod_0: component loop_test_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => Switchmod_0_o_signal,
      sysclk => sysclk
    );
UART_TXmod_0: component loop_test_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => Read555_0_o_TX_data(7 downto 0),
      i_TX_DV => Read555_0_o_TX_DV,
      o_TX_Active => UART_TXmod_0_o_TX_Active,
      o_TX_Done => UART_TXmod_0_o_TX_Done,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
Write555_0: component loop_test_Write555_0_0
     port map (
      A(21 downto 0) => Write555_0_A(21 downto 0),
      CE_n => Write555_0_CE_n,
      DQ_o(15 downto 0) => Write555_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Write555_0_DQ_t(15 downto 0),
      WE_n => Write555_0_WE_n,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write555_0_write_complete
    );
end STRUCTURE;

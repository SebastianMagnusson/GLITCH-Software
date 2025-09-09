--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Sep  9 12:37:42 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Error_correction.bd
--Design      : Error_correction
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Error_correction is
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
  attribute CORE_GENERATION_INFO of Error_correction : entity is "Error_correction,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Error_correction,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Error_correction : entity is "Error_correction.hwdef";
end Error_correction;

architecture STRUCTURE of Error_correction is
  component Error_correction_Read4_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    read_complete : out STD_LOGIC;
    write_complete : in STD_LOGIC;
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
  end component Error_correction_Read4_0_0;
  component Error_correction_RW_ROUTER4_0_0 is
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
  end component Error_correction_RW_ROUTER4_0_0;
  component Error_correction_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component Error_correction_Switchmod_0_0;
  component Error_correction_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Error_correction_UART_TXmod_0_0;
  component Error_correction_Write4_0_0 is
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
  end component Error_correction_Write4_0_0;
  signal Read4_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Read4_0_CE_n : STD_LOGIC;
  signal Read4_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read4_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read4_0_WE_n : STD_LOGIC;
  signal Read4_0_o_TX_DV : STD_LOGIC;
  signal Read4_0_o_TX_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Switchmod_0_o_signal : STD_LOGIC;
  signal UART_TXmod_0_o_TX_Done : STD_LOGIC;
  signal Write4_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Write4_0_CE_n : STD_LOGIC;
  signal Write4_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write4_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write4_0_WE_n : STD_LOGIC;
  signal Write4_0_write_complete : STD_LOGIC;
  signal NLW_Read4_0_read_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
begin
RW_ROUTER4_0: component Error_correction_RW_ROUTER4_0_0
     port map (
      A(21 downto 0) => A(21 downto 0),
      A_read(21 downto 0) => Read4_0_A(21 downto 0),
      A_write(21 downto 0) => Write4_0_A(21 downto 0),
      CE_n => CE_n,
      CE_n_read => Read4_0_CE_n,
      CE_n_write => Write4_0_CE_n,
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_o_read(15 downto 0) => Read4_0_DQ_o(15 downto 0),
      DQ_o_write(15 downto 0) => Write4_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => Read4_0_DQ_t(15 downto 0),
      DQ_t_write(15 downto 0) => Write4_0_DQ_t(15 downto 0),
      Toggle => Write4_0_write_complete,
      WE_n => WE_n,
      WE_n_read => Read4_0_WE_n,
      WE_n_write => Write4_0_WE_n,
      led1 => led1,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
Read4_0: component Error_correction_Read4_0_0
     port map (
      A(21 downto 0) => Read4_0_A(21 downto 0),
      CE_n => Read4_0_CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => Read4_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Read4_0_DQ_t(15 downto 0),
      WE_n => Read4_0_WE_n,
      i_TX_done => UART_TXmod_0_o_TX_Done,
      o_TX_DV => Read4_0_o_TX_DV,
      o_TX_data(7 downto 0) => Read4_0_o_TX_data(7 downto 0),
      read_complete => NLW_Read4_0_read_complete_UNCONNECTED,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write4_0_write_complete
    );
Switchmod_0: component Error_correction_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => Switchmod_0_o_signal,
      sysclk => sysclk
    );
UART_TXmod_0: component Error_correction_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => Read4_0_o_TX_data(7 downto 0),
      i_TX_DV => Read4_0_o_TX_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => UART_TXmod_0_o_TX_Done,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
Write4_0: component Error_correction_Write4_0_0
     port map (
      A(21 downto 0) => Write4_0_A(21 downto 0),
      CE_n => Write4_0_CE_n,
      DQ_o(15 downto 0) => Write4_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Write4_0_DQ_t(15 downto 0),
      WE_n => Write4_0_WE_n,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write4_0_write_complete
    );
end STRUCTURE;

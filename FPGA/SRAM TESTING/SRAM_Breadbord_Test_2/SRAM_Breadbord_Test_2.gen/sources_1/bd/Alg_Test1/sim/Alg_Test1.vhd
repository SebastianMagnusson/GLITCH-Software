--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Thu Sep  4 15:06:44 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Alg_Test1.bd
--Design      : Alg_Test1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Alg_Test1 is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    WE_n : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Alg_Test1 : entity is "Alg_Test1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Alg_Test1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Alg_Test1 : entity is "Alg_Test1.hwdef";
end Alg_Test1;

architecture STRUCTURE of Alg_Test1 is
  component Alg_Test1_Write_All_Adresses_0_0 is
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
  end component Alg_Test1_Write_All_Adresses_0_0;
  component Alg_Test1_Read_When_Push_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Alg_Test1_Read_When_Push_0_0;
  component Alg_Test1_UART_TXmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component Alg_Test1_UART_TXmod_0_0;
  component Alg_Test1_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component Alg_Test1_Switchmod_0_0;
  component Alg_Test1_RW_ROUTER_0_0 is
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
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Alg_Test1_RW_ROUTER_0_0;
  signal Read_When_Push_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Read_When_Push_0_CE_n : STD_LOGIC;
  signal Read_When_Push_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read_When_Push_0_WE_n : STD_LOGIC;
  signal Read_When_Push_0_o_TX_DV : STD_LOGIC;
  signal Read_When_Push_0_o_TX_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Switchmod_0_o_signal : STD_LOGIC;
  signal UART_TXmod_0_o_TX_Done : STD_LOGIC;
  signal Write_All_Adresses_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Write_All_Adresses_0_CE_n : STD_LOGIC;
  signal Write_All_Adresses_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write_All_Adresses_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write_All_Adresses_0_WE_n : STD_LOGIC;
  signal Write_All_Adresses_0_write_complete : STD_LOGIC;
  signal NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED : STD_LOGIC;
begin
RW_ROUTER_0: component Alg_Test1_RW_ROUTER_0_0
     port map (
      A(21 downto 0) => A(21 downto 0),
      A_read(21 downto 0) => Read_When_Push_0_A(21 downto 0),
      A_write(21 downto 0) => Write_All_Adresses_0_A(21 downto 0),
      CE_n => CE_n,
      CE_n_read => Read_When_Push_0_CE_n,
      CE_n_write => Write_All_Adresses_0_CE_n,
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_o_write(15 downto 0) => Write_All_Adresses_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => Read_When_Push_0_DQ_t(15 downto 0),
      DQ_t_write(15 downto 0) => Write_All_Adresses_0_DQ_t(15 downto 0),
      Toggle => Write_All_Adresses_0_write_complete,
      WE_n => WE_n,
      WE_n_read => Read_When_Push_0_WE_n,
      WE_n_write => Write_All_Adresses_0_WE_n,
      led1 => led1,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
Read_When_Push_0: component Alg_Test1_Read_When_Push_0_0
     port map (
      A(21 downto 0) => Read_When_Push_0_A(21 downto 0),
      CE_n => Read_When_Push_0_CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_t(15 downto 0) => Read_When_Push_0_DQ_t(15 downto 0),
      WE_n => Read_When_Push_0_WE_n,
      btn1 => btn1,
      i_TX_done => UART_TXmod_0_o_TX_Done,
      o_TX_DV => Read_When_Push_0_o_TX_DV,
      o_TX_data(7 downto 0) => Read_When_Push_0_o_TX_data(7 downto 0),
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
Switchmod_0: component Alg_Test1_Switchmod_0_0
     port map (
      i_signal => btn0,
      led0 => led0,
      o_signal => Switchmod_0_o_signal,
      sysclk => sysclk
    );
UART_TXmod_0: component Alg_Test1_UART_TXmod_0_0
     port map (
      i_TX_Byte(7 downto 0) => Read_When_Push_0_o_TX_data(7 downto 0),
      i_TX_DV => Read_When_Push_0_o_TX_DV,
      o_TX_Active => NLW_UART_TXmod_0_o_TX_Active_UNCONNECTED,
      o_TX_Done => UART_TXmod_0_o_TX_Done,
      o_TX_Serial => uart_rxd_out,
      sysclk => sysclk
    );
Write_All_Adresses_0: component Alg_Test1_Write_All_Adresses_0_0
     port map (
      A(21 downto 0) => Write_All_Adresses_0_A(21 downto 0),
      CE_n => Write_All_Adresses_0_CE_n,
      DQ_o(15 downto 0) => Write_All_Adresses_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Write_All_Adresses_0_DQ_t(15 downto 0),
      WE_n => Write_All_Adresses_0_WE_n,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write_All_Adresses_0_write_complete
    );
end STRUCTURE;

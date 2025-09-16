--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Sep 16 11:18:46 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target BK_HK_Combined_Test1_wrapper.bd
--Design      : BK_HK_Combined_Test1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity BK_HK_Combined_Test1_wrapper is
  port (
    A            : out   STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n         : out   STD_LOGIC;
    DQ           : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    GNSS_TX      : in    STD_LOGIC;
    WE_n         : out   STD_LOGIC;
    btn0         : in    STD_LOGIC;
    led0         : out   STD_LOGIC;
    SCL          : inout STD_LOGIC;
    SDA          : inout STD_LOGIC;
    sysclk       : in    STD_LOGIC;
    uart_rxd_out : out   STD_LOGIC
  );
end BK_HK_Combined_Test1_wrapper;

architecture STRUCTURE of BK_HK_Combined_Test1_wrapper is

  -- Internal signals for DQ tri-state (For IOBUF instatiation)
  signal DQ_i : STD_LOGIC_VECTOR(15 downto 0);
  signal DQ_o : STD_LOGIC_VECTOR(15 downto 0);
  signal DQ_t : STD_LOGIC_VECTOR(15 downto 0);

  -- Same for SCL
  signal scl_i : STD_LOGIC;
  signal scl_o : STD_LOGIC;
  signal scl_t : STD_LOGIC;
  
  -- Same for SDA
  signal sda_i : STD_LOGIC;
  signal sda_o : STD_LOGIC;
  signal sda_t : STD_LOGIC;

  component BK_HK_Combined_Test1 is
  port (
    sysclk       : in STD_LOGIC;
    DQ_i         : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A            : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n         : out STD_LOGIC;
    WE_n         : out STD_LOGIC;
    DQ_o         : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t         : out STD_LOGIC_VECTOR ( 15 downto 0 );
    GNSS_TX      : in STD_LOGIC;
    btn0         : in STD_LOGIC;
    led0         : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    sda_i        : in STD_LOGIC;
    scl_i        : in STD_LOGIC;
    sda_o        : out STD_LOGIC;
    sda_t        : out STD_LOGIC;
    scl_o        : out STD_LOGIC;
    scl_t        : out STD_LOGIC
  );
  end component BK_HK_Combined_Test1;
  
begin

BK_HK_Combined_Test1_i: component BK_HK_Combined_Test1
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      GNSS_TX => GNSS_TX,
      WE_n => WE_n,
      btn0 => btn0,
      led0 => led0,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
    
  -- IOBUF generation for all relevant pins (DQ)
  gen_iobuf : for i in 0 to 15 generate    
    iobuf_inst : IOBUF    
      port map (    
        I  => DQ_o(i),  -- FPGA → SRAM    
        O  => DQ_i(i),  -- SRAM → FPGA    
        T  => DQ_t(i),  -- Tristate control: '1' = high-Z    
        IO => DQ(i)     -- Physical bidirectional pin    
      );    
  end generate;    
      
  -- Connect physical bidirectional SDA to IOBUF    
  SDA_iobuf : IOBUF    
    port map (    
      I  => sda_o,    
      O  => sda_i,    
      T  => sda_t,    
      IO => SDA    
    );    
    
  -- Connect physical bidirectional SCL to IOBUF    
  SCL_iobuf : IOBUF    
    port map (    
      I  => scl_o,    
      O  => scl_i,    
      T  => scl_t,    
      IO => SCL    
    );    
    
end STRUCTURE;

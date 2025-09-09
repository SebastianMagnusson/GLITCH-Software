--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Sep  8 15:03:52 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Error_correction_wrapper.bd
--Design      : Error_correction_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Error_correction_wrapper is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ   : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    WE_n : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end Error_correction_wrapper;

architecture STRUCTURE of Error_correction_wrapper is

  -- Internal signals for DQ tri-state (For IOBUF instatiation)
  signal DQ_i : STD_LOGIC_VECTOR(15 downto 0);
  signal DQ_o : STD_LOGIC_VECTOR(15 downto 0);
  signal DQ_t : STD_LOGIC_VECTOR(15 downto 0);

  component Error_correction is
  port (
    sysclk : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led0 : out STD_LOGIC
  );
  end component Error_correction;
  
begin

Error_correction_i: component Error_correction
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      WE_n => WE_n,
      btn0 => btn0,
      led0 => led0,
      led1 => led1,
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
    
end STRUCTURE;

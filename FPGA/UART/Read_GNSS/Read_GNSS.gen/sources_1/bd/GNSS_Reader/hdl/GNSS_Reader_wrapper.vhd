--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Apr  7 12:59:31 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target GNSS_Reader_wrapper.bd
--Design      : GNSS_Reader_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GNSS_Reader_wrapper is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end GNSS_Reader_wrapper;

architecture STRUCTURE of GNSS_Reader_wrapper is
  component GNSS_Reader is
  port (
    sysclk : in STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    GNSS_RX : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    GNSS_EN : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component GNSS_Reader;
begin
GNSS_Reader_i: component GNSS_Reader
     port map (
      GNSS_EN => GNSS_EN,
      GNSS_RX => GNSS_RX,
      GNSS_TX => GNSS_TX,
      btn0 => btn0,
      led0 => led0,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
end STRUCTURE;

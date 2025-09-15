--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Sep 15 14:59:52 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target fetch_gnns_1_wrapper.bd
--Design      : fetch_gnns_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fetch_gnns_1_wrapper is
  port (
    GNSS_EN : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end fetch_gnns_1_wrapper;

architecture STRUCTURE of fetch_gnns_1_wrapper is
  component fetch_gnns_1 is
  port (
    sysclk : in STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    GNSS_EN : out STD_LOGIC;
    led1 : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
  end component fetch_gnns_1;
begin
fetch_gnns_1_i: component fetch_gnns_1
     port map (
      GNSS_EN => GNSS_EN,
      GNSS_TX => GNSS_TX,
      btn0 => btn0,
      led0 => led0,
      led1 => led1,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
end STRUCTURE;

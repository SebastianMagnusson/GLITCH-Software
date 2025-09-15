--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Sep 15 15:21:21 2025
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
    SCL  : inout STD_LOGIC;
    SDA  : inout STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end fetch_gnns_1_wrapper;

architecture STRUCTURE of fetch_gnns_1_wrapper is

  -- Same for SCL
  signal scl_i : STD_LOGIC;
  signal scl_o : STD_LOGIC;
  signal scl_t : STD_LOGIC;
  
  -- Same for SDA
  signal sda_i : STD_LOGIC;
  signal sda_o : STD_LOGIC;
  signal sda_t : STD_LOGIC;


  component fetch_gnns_1 is
  port (
    sysclk : in STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    GNSS_EN : out STD_LOGIC;
    led1 : out STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC
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
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
    
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

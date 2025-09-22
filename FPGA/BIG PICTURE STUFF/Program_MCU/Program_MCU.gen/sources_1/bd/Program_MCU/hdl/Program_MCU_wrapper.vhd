--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Sep 22 14:12:30 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Program_MCU_wrapper.bd
--Design      : Program_MCU_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Program_MCU_wrapper is
  port (
    MCU_rx : out STD_LOGIC;
    MCU_tx : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
end Program_MCU_wrapper;

architecture STRUCTURE of Program_MCU_wrapper is
  component Program_MCU is
  port (
    sysclk : in STD_LOGIC;
    MCU_tx : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    MCU_rx : out STD_LOGIC
  );
  end component Program_MCU;
begin
Program_MCU_i: component Program_MCU
     port map (
      MCU_rx => MCU_rx,
      MCU_tx => MCU_tx,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out,
      uart_txd_in => uart_txd_in
    );
end STRUCTURE;

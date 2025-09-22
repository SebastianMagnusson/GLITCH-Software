--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Fri Sep 19 15:18:06 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target Fpga_and_MCU_Test1_wrapper.bd
--Design      : Fpga_and_MCU_Test1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Fpga_and_MCU_Test1_wrapper is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    GNSS_TX : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rx_from_mcu : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    uart_tx_to_mcu : out STD_LOGIC
  );
end Fpga_and_MCU_Test1_wrapper;

architecture STRUCTURE of Fpga_and_MCU_Test1_wrapper is
  component Fpga_and_MCU_Test1 is
  port (
    sysclk : in STD_LOGIC;
    led0 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led1 : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    uart_rxd_out : out STD_LOGIC;
    uart_tx_to_mcu : out STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    uart_rx_from_mcu : in STD_LOGIC
  );
  end component Fpga_and_MCU_Test1;
begin
Fpga_and_MCU_Test1_i: component Fpga_and_MCU_Test1
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      GNSS_TX => GNSS_TX,
      led0 => led0,
      led1 => led1,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk,
      uart_rx_from_mcu => uart_rx_from_mcu,
      uart_rxd_out => uart_rxd_out,
      uart_tx_to_mcu => uart_tx_to_mcu
    );
end STRUCTURE;

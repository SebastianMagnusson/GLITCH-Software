--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Oct  1 14:37:39 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target PCB_All_SRAM_wrapper.bd
--Design      : PCB_All_SRAM_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_wrapper is
  port (
    GNSS_TX : in STD_LOGIC;
    HEATER_1 : out STD_LOGIC;
    HEATER_2 : out STD_LOGIC;
    SRAM1A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM1DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM1DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1_EN : out STD_LOGIC;
    SRAM1_WE : out STD_LOGIC;
    SRAM2A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM2DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM2DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2_EN : out STD_LOGIC;
    SRAM2_WE : out STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    UART_RAD_TX : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end PCB_All_SRAM_wrapper;

architecture STRUCTURE of PCB_All_SRAM_wrapper is
  component PCB_All_SRAM is
  port (
    sysclk : in STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC;
    SRAM1A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM1_EN : out STD_LOGIC;
    SRAM1_WE : out STD_LOGIC;
    SRAM1DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led1 : out STD_LOGIC;
    GNSS_TX : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    UART_RAD_TX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    HEATER_1 : out STD_LOGIC;
    HEATER_2 : out STD_LOGIC;
    SRAM1DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led0 : out STD_LOGIC;
    SRAM2DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM2_EN : out STD_LOGIC;
    SRAM2_WE : out STD_LOGIC;
    SRAM2DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC
  );
  end component PCB_All_SRAM;
begin
PCB_All_SRAM_i: component PCB_All_SRAM
     port map (
      GNSS_TX => GNSS_TX,
      HEATER_1 => HEATER_1,
      HEATER_2 => HEATER_2,
      SRAM1A(21 downto 0) => SRAM1A(21 downto 0),
      SRAM1DEC(2 downto 0) => SRAM1DEC(2 downto 0),
      SRAM1DQ_i(15 downto 0) => SRAM1DQ_i(15 downto 0),
      SRAM1DQ_o(15 downto 0) => SRAM1DQ_o(15 downto 0),
      SRAM1DQ_t(15 downto 0) => SRAM1DQ_t(15 downto 0),
      SRAM1_EN => SRAM1_EN,
      SRAM1_WE => SRAM1_WE,
      SRAM2A(21 downto 0) => SRAM2A(21 downto 0),
      SRAM2DEC(2 downto 0) => SRAM2DEC(2 downto 0),
      SRAM2DQ_i(15 downto 0) => SRAM2DQ_i(15 downto 0),
      SRAM2DQ_o(15 downto 0) => SRAM2DQ_o(15 downto 0),
      SRAM2DQ_t(15 downto 0) => SRAM2DQ_t(15 downto 0),
      SRAM2_EN => SRAM2_EN,
      SRAM2_WE => SRAM2_WE,
      UART_MCU_RX => UART_MCU_RX,
      UART_MCU_TX => UART_MCU_TX,
      UART_RAD_TX => UART_RAD_TX,
      led0 => led0,
      led1 => led1,
      led2 => led2,
      led3 => led3,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
end STRUCTURE;

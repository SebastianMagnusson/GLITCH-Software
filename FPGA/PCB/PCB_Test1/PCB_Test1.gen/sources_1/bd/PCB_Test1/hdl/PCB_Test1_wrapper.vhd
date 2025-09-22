--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Sun Sep 21 13:59:13 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target PCB_Test1_wrapper.bd
--Design      : PCB_Test1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_Test1_wrapper is
  port (
    GNSS_RX : in STD_LOGIC;
    SRAM1A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM1DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM1DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1_EN : out STD_LOGIC;
    SRAM1_WE : out STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end PCB_Test1_wrapper;

architecture STRUCTURE of PCB_Test1_wrapper is
  component PCB_Test1 is
  port (
    sysclk : in STD_LOGIC;
    SRAM1DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM1DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1_WE : out STD_LOGIC;
    SRAM1_EN : out STD_LOGIC;
    SRAM1A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    sda_i : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    GNSS_RX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC
  );
  end component PCB_Test1;
begin
PCB_Test1_i: component PCB_Test1
     port map (
      GNSS_RX => GNSS_RX,
      SRAM1A(21 downto 0) => SRAM1A(21 downto 0),
      SRAM1DEC(2 downto 0) => SRAM1DEC(2 downto 0),
      SRAM1DQ_i(15 downto 0) => SRAM1DQ_i(15 downto 0),
      SRAM1DQ_o(15 downto 0) => SRAM1DQ_o(15 downto 0),
      SRAM1DQ_t(15 downto 0) => SRAM1DQ_t(15 downto 0),
      SRAM1_EN => SRAM1_EN,
      SRAM1_WE => SRAM1_WE,
      UART_MCU_RX => UART_MCU_RX,
      UART_MCU_TX => UART_MCU_TX,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
end STRUCTURE;

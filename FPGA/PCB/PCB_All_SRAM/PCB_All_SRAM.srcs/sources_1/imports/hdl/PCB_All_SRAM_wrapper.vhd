--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Sat Oct  4 10:12:45 2025
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
    SRAM1DQ  : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1_EN : out STD_LOGIC;
    SRAM1_WE : out STD_LOGIC;
    SRAM2A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM2DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM2DQ : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2_EN : out STD_LOGIC;
    SRAM2_WE : out STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    SCL : inout STD_LOGIC;
    SDA : inout STD_LOGIC;
    sysclk : in STD_LOGIC
  );
end PCB_All_SRAM_wrapper;

architecture STRUCTURE of PCB_All_SRAM_wrapper is

  -- Internal signals for DQ tri-state (For IOBUF instatiation)
  signal SRAM1DQ_i : STD_LOGIC_VECTOR(15 downto 0);
  signal SRAM1DQ_o : STD_LOGIC_VECTOR(15 downto 0);
  signal SRAM1DQ_t : STD_LOGIC_VECTOR(15 downto 0);

  -- Internal signals for DQ tri-state (For IOBUF instatiation)
  signal SRAM2DQ_i : STD_LOGIC_VECTOR(15 downto 0);
  signal SRAM2DQ_o : STD_LOGIC_VECTOR(15 downto 0);
  signal SRAM2DQ_t : STD_LOGIC_VECTOR(15 downto 0);

  -- Same for SCL
  signal scl_i : STD_LOGIC;
  signal scl_o : STD_LOGIC;
  signal scl_t : STD_LOGIC;
  
  -- Same for SDA
  signal sda_i : STD_LOGIC;
  signal sda_o : STD_LOGIC;
  signal sda_t : STD_LOGIC;

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
    led2 : out STD_LOGIC
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
      led0 => led0,
      led1 => led1,
      led2 => led2,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
    
    -- IOBUF generation for all relevant pins (DQ)
  gen_iobuf0 : for i in 0 to 15 generate    
    iobuf_inst : IOBUF    
      port map (    
        I  => SRAM1DQ_o(i),  -- FPGA → SRAM    
        O  => SRAM1DQ_i(i),  -- SRAM → FPGA    
        T  => SRAM1DQ_t(i),  -- Tristate control: '1' = high-Z    
        IO => SRAM1DQ(i)     -- Physical bidirectional pin    
      );    
  end generate;       
    
    -- IOBUF generation for all relevant pins (DQ)
  gen_iobuf1 : for i in 0 to 15 generate    
    iobuf_inst : IOBUF    
      port map (    
        I  => SRAM2DQ_o(i),  -- FPGA → SRAM    
        O  => SRAM2DQ_i(i),  -- SRAM → FPGA    
        T  => SRAM2DQ_t(i),  -- Tristate control: '1' = high-Z    
        IO => SRAM2DQ(i)     -- Physical bidirectional pin    
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

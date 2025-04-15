--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Apr 15 09:01:21 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target I2C_Test_wrapper.bd
--Design      : I2C_Test_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_Test_wrapper is
  port (
    SCL : inout STD_LOGIC;
    SDA : inout STD_LOGIC;
    btn0 : in STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC
  );
end I2C_Test_wrapper;

architecture STRUCTURE of I2C_Test_wrapper is
  component I2C_Test is
  port (
    sysclk : in STD_LOGIC;
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    btn0 : in STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC
  );
  end component I2C_Test;
begin
I2C_Test_i: component I2C_Test
     port map (
      SCL => SCL,
      SDA => SDA,
      btn0 => btn0,
      led1 => led1,
      led2 => led2,
      sysclk => sysclk,
      uart_rxd_out => uart_rxd_out
    );
end STRUCTURE;

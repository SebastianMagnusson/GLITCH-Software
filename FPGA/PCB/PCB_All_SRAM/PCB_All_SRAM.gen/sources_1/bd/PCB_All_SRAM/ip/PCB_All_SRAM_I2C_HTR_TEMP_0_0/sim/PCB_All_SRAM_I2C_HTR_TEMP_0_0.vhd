-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:I2C_HTR_TEMP:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY PCB_All_SRAM_I2C_HTR_TEMP_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    HTR_rst : IN STD_LOGIC;
    i_busy : IN STD_LOGIC;
    i_data_read : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_TX_done_HTR : IN STD_LOGIC;
    i_HTR_TEMP_request : IN STD_LOGIC;
    o_i2c_ena : OUT STD_LOGIC;
    o_i2c_address : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    o_i2c_rw : OUT STD_LOGIC;
    o_i2c_data_wr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_TX_DV_HTR : OUT STD_LOGIC;
    o_TX_TEMP_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    led1 : OUT STD_LOGIC;
    led2 : OUT STD_LOGIC;
    led3 : OUT STD_LOGIC
  );
END PCB_All_SRAM_I2C_HTR_TEMP_0_0;

ARCHITECTURE PCB_All_SRAM_I2C_HTR_TEMP_0_0_arch OF PCB_All_SRAM_I2C_HTR_TEMP_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF PCB_All_SRAM_I2C_HTR_TEMP_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT I2C_HTR_TEMP IS
    GENERIC (
      Clockfrequency : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      HTR_rst : IN STD_LOGIC;
      i_busy : IN STD_LOGIC;
      i_data_read : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_TX_done_HTR : IN STD_LOGIC;
      i_HTR_TEMP_request : IN STD_LOGIC;
      o_i2c_ena : OUT STD_LOGIC;
      o_i2c_address : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      o_i2c_rw : OUT STD_LOGIC;
      o_i2c_data_wr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_TX_DV_HTR : OUT STD_LOGIC;
      o_TX_TEMP_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      led1 : OUT STD_LOGIC;
      led2 : OUT STD_LOGIC;
      led3 : OUT STD_LOGIC
    );
  END COMPONENT I2C_HTR_TEMP;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF HTR_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 HTR_rst RST";
  ATTRIBUTE X_INTERFACE_MODE OF HTR_rst: SIGNAL IS "slave HTR_rst";
  ATTRIBUTE X_INTERFACE_PARAMETER OF HTR_rst: SIGNAL IS "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF clk: SIGNAL IS "slave clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
BEGIN
  U0 : I2C_HTR_TEMP
    GENERIC MAP (
      Clockfrequency => 100000000
    )
    PORT MAP (
      clk => clk,
      HTR_rst => HTR_rst,
      i_busy => i_busy,
      i_data_read => i_data_read,
      i_TX_done_HTR => i_TX_done_HTR,
      i_HTR_TEMP_request => i_HTR_TEMP_request,
      o_i2c_ena => o_i2c_ena,
      o_i2c_address => o_i2c_address,
      o_i2c_rw => o_i2c_rw,
      o_i2c_data_wr => o_i2c_data_wr,
      o_TX_DV_HTR => o_TX_DV_HTR,
      o_TX_TEMP_data => o_TX_TEMP_data,
      led1 => led1,
      led2 => led2,
      led3 => led3
    );
END PCB_All_SRAM_I2C_HTR_TEMP_0_0_arch;

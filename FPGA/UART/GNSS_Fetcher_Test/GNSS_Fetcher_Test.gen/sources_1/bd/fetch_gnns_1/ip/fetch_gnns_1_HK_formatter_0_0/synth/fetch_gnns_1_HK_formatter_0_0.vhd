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

-- IP VLNV: xilinx.com:module_ref:HK_formatter:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fetch_gnns_1_HK_formatter_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    HK_packet_got : IN STD_LOGIC;
    GNSS_data_DV : IN STD_LOGIC;
    GNSS_data : IN STD_LOGIC_VECTOR(383 DOWNTO 0);
    RTC_data_DV : IN STD_LOGIC;
    RTC_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    RTC_request : OUT STD_LOGIC;
    ALT_data_DV : IN STD_LOGIC;
    ALT_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    ALT_request : OUT STD_LOGIC;
    TEMP_data_DV : IN STD_LOGIC;
    TEMP_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    TEMP_request : OUT STD_LOGIC;
    I2C_read_done : OUT STD_LOGIC;
    HK_packet_DV : OUT STD_LOGIC;
    HK_packet : OUT STD_LOGIC_VECTOR(471 DOWNTO 0);
    led1 : OUT STD_LOGIC
  );
END fetch_gnns_1_HK_formatter_0_0;

ARCHITECTURE fetch_gnns_1_HK_formatter_0_0_arch OF fetch_gnns_1_HK_formatter_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF fetch_gnns_1_HK_formatter_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT HK_formatter IS
    GENERIC (
      Clockfrequency : INTEGER;
      Baud_Rate : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      HK_packet_got : IN STD_LOGIC;
      GNSS_data_DV : IN STD_LOGIC;
      GNSS_data : IN STD_LOGIC_VECTOR(383 DOWNTO 0);
      RTC_data_DV : IN STD_LOGIC;
      RTC_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      RTC_request : OUT STD_LOGIC;
      ALT_data_DV : IN STD_LOGIC;
      ALT_data : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      ALT_request : OUT STD_LOGIC;
      TEMP_data_DV : IN STD_LOGIC;
      TEMP_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      TEMP_request : OUT STD_LOGIC;
      I2C_read_done : OUT STD_LOGIC;
      HK_packet_DV : OUT STD_LOGIC;
      HK_packet : OUT STD_LOGIC_VECTOR(471 DOWNTO 0);
      led1 : OUT STD_LOGIC
    );
  END COMPONENT HK_formatter;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF fetch_gnns_1_HK_formatter_0_0_arch: ARCHITECTURE IS "HK_formatter,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF fetch_gnns_1_HK_formatter_0_0_arch : ARCHITECTURE IS "fetch_gnns_1_HK_formatter_0_0,HK_formatter,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF fetch_gnns_1_HK_formatter_0_0_arch: ARCHITECTURE IS "fetch_gnns_1_HK_formatter_0_0,HK_formatter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HK_formatter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000,Baud_Rate=400000}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF fetch_gnns_1_HK_formatter_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF clk: SIGNAL IS "slave clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_MODE OF rst: SIGNAL IS "slave rst";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : HK_formatter
    GENERIC MAP (
      Clockfrequency => 12000000,
      Baud_Rate => 400000
    )
    PORT MAP (
      clk => clk,
      rst => rst,
      HK_packet_got => HK_packet_got,
      GNSS_data_DV => GNSS_data_DV,
      GNSS_data => GNSS_data,
      RTC_data_DV => RTC_data_DV,
      RTC_data => RTC_data,
      RTC_request => RTC_request,
      ALT_data_DV => ALT_data_DV,
      ALT_data => ALT_data,
      ALT_request => ALT_request,
      TEMP_data_DV => TEMP_data_DV,
      TEMP_data => TEMP_data,
      TEMP_request => TEMP_request,
      I2C_read_done => I2C_read_done,
      HK_packet_DV => HK_packet_DV,
      HK_packet => HK_packet,
      led1 => led1
    );
END fetch_gnns_1_HK_formatter_0_0_arch;

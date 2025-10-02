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

-- IP VLNV: xilinx.com:module_ref:HTR_ROUTER:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY PCB_All_SRAM_HTR_ROUTER_0_0 IS
  PORT (
    sysclk : IN STD_LOGIC;
    reset_n : IN STD_LOGIC;
    HTR_rst : IN STD_LOGIC;
    led1 : OUT STD_LOGIC;
    HTR_request : IN STD_LOGIC;
    I2C_read_done : IN STD_LOGIC;
    HTR_request_normal : OUT STD_LOGIC;
    I2C_read_done_normal : OUT STD_LOGIC;
    temp_data_normal : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    temp_DV_normal : IN STD_LOGIC;
    HTR_request_heater : OUT STD_LOGIC;
    I2C_read_done_heater : OUT STD_LOGIC;
    temp_data_heater : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    temp_DV_heater : IN STD_LOGIC;
    temp_DV : OUT STD_LOGIC;
    temp_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END PCB_All_SRAM_HTR_ROUTER_0_0;

ARCHITECTURE PCB_All_SRAM_HTR_ROUTER_0_0_arch OF PCB_All_SRAM_HTR_ROUTER_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF PCB_All_SRAM_HTR_ROUTER_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT HTR_ROUTER IS
    GENERIC (
      CLK_FREQ : INTEGER
    );
    PORT (
      sysclk : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      HTR_rst : IN STD_LOGIC;
      led1 : OUT STD_LOGIC;
      HTR_request : IN STD_LOGIC;
      I2C_read_done : IN STD_LOGIC;
      HTR_request_normal : OUT STD_LOGIC;
      I2C_read_done_normal : OUT STD_LOGIC;
      temp_data_normal : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      temp_DV_normal : IN STD_LOGIC;
      HTR_request_heater : OUT STD_LOGIC;
      I2C_read_done_heater : OUT STD_LOGIC;
      temp_data_heater : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      temp_DV_heater : IN STD_LOGIC;
      temp_DV : OUT STD_LOGIC;
      temp_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT HTR_ROUTER;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF PCB_All_SRAM_HTR_ROUTER_0_0_arch: ARCHITECTURE IS "HTR_ROUTER,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF PCB_All_SRAM_HTR_ROUTER_0_0_arch : ARCHITECTURE IS "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF PCB_All_SRAM_HTR_ROUTER_0_0_arch: ARCHITECTURE IS "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HTR_ROUTER,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,CLK_FREQ=100000000}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF PCB_All_SRAM_HTR_ROUTER_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF HTR_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 HTR_rst RST";
  ATTRIBUTE X_INTERFACE_MODE OF HTR_rst: SIGNAL IS "slave HTR_rst";
  ATTRIBUTE X_INTERFACE_PARAMETER OF HTR_rst: SIGNAL IS "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_n RST";
  ATTRIBUTE X_INTERFACE_MODE OF reset_n: SIGNAL IS "slave reset_n";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_n: SIGNAL IS "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : HTR_ROUTER
    GENERIC MAP (
      CLK_FREQ => 100000000
    )
    PORT MAP (
      sysclk => sysclk,
      reset_n => reset_n,
      HTR_rst => HTR_rst,
      led1 => led1,
      HTR_request => HTR_request,
      I2C_read_done => I2C_read_done,
      HTR_request_normal => HTR_request_normal,
      I2C_read_done_normal => I2C_read_done_normal,
      temp_data_normal => temp_data_normal,
      temp_DV_normal => temp_DV_normal,
      HTR_request_heater => HTR_request_heater,
      I2C_read_done_heater => I2C_read_done_heater,
      temp_data_heater => temp_data_heater,
      temp_DV_heater => temp_DV_heater,
      temp_DV => temp_DV,
      temp_data => temp_data
    );
END PCB_All_SRAM_HTR_ROUTER_0_0_arch;

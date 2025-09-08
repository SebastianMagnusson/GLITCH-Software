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

-- IP VLNV: xilinx.com:module_ref:Read_WithError:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Error_Test_Read_WithError_0_0 IS
  PORT (
    sysclk : IN STD_LOGIC;
    reset_n : IN STD_LOGIC;
    read_complete : OUT STD_LOGIC;
    write_complete : IN STD_LOGIC;
    i_TX_done : IN STD_LOGIC;
    o_TX_DV : OUT STD_LOGIC;
    o_TX_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    A : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    CE_n : OUT STD_LOGIC;
    WE_n : OUT STD_LOGIC;
    DQ_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    DQ_t : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END Error_Test_Read_WithError_0_0;

ARCHITECTURE Error_Test_Read_WithError_0_0_arch OF Error_Test_Read_WithError_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Error_Test_Read_WithError_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Read_WithError IS
    GENERIC (
      ADDR_WIDTH : INTEGER;
      DATA_WIDTH : INTEGER;
      CLK_FREQ : INTEGER
    );
    PORT (
      sysclk : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      read_complete : OUT STD_LOGIC;
      write_complete : IN STD_LOGIC;
      i_TX_done : IN STD_LOGIC;
      o_TX_DV : OUT STD_LOGIC;
      o_TX_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      A : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      CE_n : OUT STD_LOGIC;
      WE_n : OUT STD_LOGIC;
      DQ_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      DQ_t : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT Read_WithError;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Error_Test_Read_WithError_0_0_arch: ARCHITECTURE IS "Read_WithError,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Error_Test_Read_WithError_0_0_arch : ARCHITECTURE IS "Error_Test_Read_WithError_0_0,Read_WithError,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Error_Test_Read_WithError_0_0_arch: ARCHITECTURE IS "Error_Test_Read_WithError_0_0,Read_WithError,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Read_WithError,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=12000000}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Error_Test_Read_WithError_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_n RST";
  ATTRIBUTE X_INTERFACE_MODE OF reset_n: SIGNAL IS "slave reset_n";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_n: SIGNAL IS "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : Read_WithError
    GENERIC MAP (
      ADDR_WIDTH => 22,
      DATA_WIDTH => 16,
      CLK_FREQ => 12000000
    )
    PORT MAP (
      sysclk => sysclk,
      reset_n => reset_n,
      read_complete => read_complete,
      write_complete => write_complete,
      i_TX_done => i_TX_done,
      o_TX_DV => o_TX_DV,
      o_TX_data => o_TX_data,
      A => A,
      CE_n => CE_n,
      WE_n => WE_n,
      DQ_i => DQ_i,
      DQ_t => DQ_t
    );
END Error_Test_Read_WithError_0_0_arch;

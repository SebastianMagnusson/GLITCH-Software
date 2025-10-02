-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Sep 29 13:56:45 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_SET_RTC_switchmod_0_0/PCB_All_SRAM_SET_RTC_switchmod_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_SET_RTC_switchmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_SET_RTC_switchmod_0_0_SET_RTC_switchmod is
  port (
    led0 : out STD_LOGIC;
    CMD5 : in STD_LOGIC;
    SET_RTC_done : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_SET_RTC_switchmod_0_0_SET_RTC_switchmod : entity is "SET_RTC_switchmod";
end PCB_All_SRAM_SET_RTC_switchmod_0_0_SET_RTC_switchmod;

architecture STRUCTURE of PCB_All_SRAM_SET_RTC_switchmod_0_0_SET_RTC_switchmod is
  signal CMD5_prev : STD_LOGIC;
  signal CMD5_prev_i_1_n_0 : STD_LOGIC;
  signal SET_RTC_request_i_1_n_0 : STD_LOGIC;
  signal State_i_1_n_0 : STD_LOGIC;
  signal State_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SET_RTC_request_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of State_i_1 : label is "soft_lutpair0";
begin
CMD5_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CMD5,
      I1 => State_reg_n_0,
      I2 => CMD5_prev,
      O => CMD5_prev_i_1_n_0
    );
CMD5_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => CMD5_prev_i_1_n_0,
      Q => CMD5_prev,
      R => '0'
    );
SET_RTC_request_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => CMD5,
      I1 => CMD5_prev,
      I2 => State_reg_n_0,
      I3 => SET_RTC_done,
      O => SET_RTC_request_i_1_n_0
    );
SET_RTC_request_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => SET_RTC_request_i_1_n_0,
      Q => led0,
      R => '0'
    );
State_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFD0"
    )
        port map (
      I0 => CMD5,
      I1 => CMD5_prev,
      I2 => State_reg_n_0,
      I3 => SET_RTC_done,
      O => State_i_1_n_0
    );
State_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => State_i_1_n_0,
      Q => State_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_SET_RTC_switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    CMD5 : in STD_LOGIC;
    SET_RTC_done : in STD_LOGIC;
    SET_RTC_request : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_SET_RTC_switchmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_SET_RTC_switchmod_0_0 : entity is "PCB_All_SRAM_SET_RTC_switchmod_0_0,SET_RTC_switchmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_SET_RTC_switchmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_SET_RTC_switchmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_SET_RTC_switchmod_0_0 : entity is "SET_RTC_switchmod,Vivado 2024.2";
end PCB_All_SRAM_SET_RTC_switchmod_0_0;

architecture STRUCTURE of PCB_All_SRAM_SET_RTC_switchmod_0_0 is
  signal \^led0\ : STD_LOGIC;
begin
  SET_RTC_request <= \^led0\;
  led0 <= \^led0\;
U0: entity work.PCB_All_SRAM_SET_RTC_switchmod_0_0_SET_RTC_switchmod
     port map (
      CMD5 => CMD5,
      SET_RTC_done => SET_RTC_done,
      led0 => \^led0\,
      sysclk => sysclk
    );
end STRUCTURE;

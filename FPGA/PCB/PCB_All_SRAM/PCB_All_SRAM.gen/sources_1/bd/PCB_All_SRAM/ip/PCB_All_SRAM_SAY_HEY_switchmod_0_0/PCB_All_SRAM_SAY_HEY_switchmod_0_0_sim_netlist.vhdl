-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Sep 29 13:56:45 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_SAY_HEY_switchmod_0_0/PCB_All_SRAM_SAY_HEY_switchmod_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_SAY_HEY_switchmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod is
  port (
    led0 : out STD_LOGIC;
    CMD6 : in STD_LOGIC;
    SAY_HEY_done : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod : entity is "SAY_HEY_switchmod";
end PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod;

architecture STRUCTURE of PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod is
  signal CMD6_prev : STD_LOGIC;
  signal CMD6_prev_i_1_n_0 : STD_LOGIC;
  signal SAY_HEY_request_i_1_n_0 : STD_LOGIC;
  signal State_i_1_n_0 : STD_LOGIC;
  signal State_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SAY_HEY_request_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of State_i_1 : label is "soft_lutpair0";
begin
CMD6_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CMD6,
      I1 => State_reg_n_0,
      I2 => CMD6_prev,
      O => CMD6_prev_i_1_n_0
    );
CMD6_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => CMD6_prev_i_1_n_0,
      Q => CMD6_prev,
      R => '0'
    );
SAY_HEY_request_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => CMD6,
      I1 => CMD6_prev,
      I2 => State_reg_n_0,
      I3 => SAY_HEY_done,
      O => SAY_HEY_request_i_1_n_0
    );
SAY_HEY_request_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => SAY_HEY_request_i_1_n_0,
      Q => led0,
      R => '0'
    );
State_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFD0"
    )
        port map (
      I0 => CMD6,
      I1 => CMD6_prev,
      I2 => State_reg_n_0,
      I3 => SAY_HEY_done,
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
entity PCB_All_SRAM_SAY_HEY_switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    CMD6 : in STD_LOGIC;
    SAY_HEY_done : in STD_LOGIC;
    SAY_HEY_request : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_SAY_HEY_switchmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_SAY_HEY_switchmod_0_0 : entity is "PCB_All_SRAM_SAY_HEY_switchmod_0_0,SAY_HEY_switchmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_SAY_HEY_switchmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_SAY_HEY_switchmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_SAY_HEY_switchmod_0_0 : entity is "SAY_HEY_switchmod,Vivado 2024.2";
end PCB_All_SRAM_SAY_HEY_switchmod_0_0;

architecture STRUCTURE of PCB_All_SRAM_SAY_HEY_switchmod_0_0 is
  signal \^led0\ : STD_LOGIC;
begin
  SAY_HEY_request <= \^led0\;
  led0 <= \^led0\;
U0: entity work.PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod
     port map (
      CMD6 => CMD6,
      SAY_HEY_done => SAY_HEY_done,
      led0 => \^led0\,
      sysclk => sysclk
    );
end STRUCTURE;

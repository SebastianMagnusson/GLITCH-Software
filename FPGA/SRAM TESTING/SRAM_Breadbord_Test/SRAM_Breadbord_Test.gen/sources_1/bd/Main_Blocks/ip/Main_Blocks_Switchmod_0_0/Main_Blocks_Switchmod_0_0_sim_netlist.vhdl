-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Sep  3 10:56:52 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/I2C/SRAM_Breadbord_Test/SRAM_Breadbord_Test.gen/sources_1/bd/Main_Blocks/ip/Main_Blocks_Switchmod_0_0/Main_Blocks_Switchmod_0_0_sim_netlist.vhdl
-- Design      : Main_Blocks_Switchmod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main_Blocks_Switchmod_0_0_Switchmod is
  port (
    led0 : out STD_LOGIC;
    i_signal : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Main_Blocks_Switchmod_0_0_Switchmod : entity is "Switchmod";
end Main_Blocks_Switchmod_0_0_Switchmod;

architecture STRUCTURE of Main_Blocks_Switchmod_0_0_Switchmod is
  signal State_i_1_n_0 : STD_LOGIC;
  signal State_reg_n_0 : STD_LOGIC;
  signal i_signal_prev : STD_LOGIC;
  signal o_signal_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of State_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_signal_i_1 : label is "soft_lutpair0";
begin
State_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => i_signal,
      I1 => i_signal_prev,
      I2 => State_reg_n_0,
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
i_signal_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => i_signal,
      Q => i_signal_prev,
      R => '0'
    );
o_signal_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => State_reg_n_0,
      I1 => i_signal,
      I2 => i_signal_prev,
      O => o_signal_i_1_n_0
    );
o_signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => o_signal_i_1_n_0,
      Q => led0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main_Blocks_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Main_Blocks_Switchmod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Main_Blocks_Switchmod_0_0 : entity is "Main_Blocks_Switchmod_0_0,Switchmod,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Main_Blocks_Switchmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Main_Blocks_Switchmod_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Main_Blocks_Switchmod_0_0 : entity is "Switchmod,Vivado 2024.2";
end Main_Blocks_Switchmod_0_0;

architecture STRUCTURE of Main_Blocks_Switchmod_0_0 is
  signal \^led0\ : STD_LOGIC;
begin
  led0 <= \^led0\;
  o_signal <= \^led0\;
U0: entity work.Main_Blocks_Switchmod_0_0_Switchmod
     port map (
      i_signal => i_signal,
      led0 => \^led0\,
      sysclk => sysclk
    );
end STRUCTURE;

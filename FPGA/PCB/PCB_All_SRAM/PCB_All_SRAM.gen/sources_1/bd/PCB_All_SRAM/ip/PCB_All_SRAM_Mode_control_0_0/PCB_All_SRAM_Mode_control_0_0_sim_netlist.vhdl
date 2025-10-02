-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:44:14 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Mode_control_0_0/PCB_All_SRAM_Mode_control_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_Mode_control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Mode_control_0_0_Mode_control is
  port (
    led0 : out STD_LOGIC;
    o_signal : out STD_LOGIC;
    o_htr : out STD_LOGIC;
    Set_power_save : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    Set_power_on : in STD_LOGIC;
    Set_cutoff : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_Mode_control_0_0_Mode_control : entity is "Mode_control";
end PCB_All_SRAM_Mode_control_0_0_Mode_control;

architecture STRUCTURE of PCB_All_SRAM_Mode_control_0_0_Mode_control is
  signal \FSM_sequential_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_State[1]_i_2_n_0\ : STD_LOGIC;
  signal Set_cutoff_prev : STD_LOGIC;
  signal Set_power_on_prev : STD_LOGIC;
  signal Set_power_save_prev : STD_LOGIC;
  signal State : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \State__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^led0\ : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal led0_i_2_n_0 : STD_LOGIC;
  signal o_htr_i_1_n_0 : STD_LOGIC;
  signal o_htr_i_2_n_0 : STD_LOGIC;
  signal \^o_signal\ : STD_LOGIC;
  signal o_signal_i_1_n_0 : STD_LOGIC;
  signal o_signal_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_State[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_State[1]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_State_reg[0]\ : label is "power_save:00,cutoff:10,power_on:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_State_reg[1]\ : label is "power_save:00,cutoff:10,power_on:01";
begin
  led0 <= \^led0\;
  o_signal <= \^o_signal\;
\FSM_sequential_State[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCECC0000C8CC"
    )
        port map (
      I0 => State(1),
      I1 => State(0),
      I2 => Set_power_save_prev,
      I3 => Set_power_save,
      I4 => \FSM_sequential_State[1]_i_2_n_0\,
      I5 => \State__0\(0),
      O => \FSM_sequential_State[0]_i_1_n_0\
    );
\FSM_sequential_State[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      I2 => Set_power_on_prev,
      I3 => Set_power_on,
      O => \State__0\(0)
    );
\FSM_sequential_State[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAA0000A8AA"
    )
        port map (
      I0 => State(1),
      I1 => State(0),
      I2 => Set_power_save_prev,
      I3 => Set_power_save,
      I4 => \FSM_sequential_State[1]_i_2_n_0\,
      I5 => \State__0\(1),
      O => \FSM_sequential_State[1]_i_1_n_0\
    );
\FSM_sequential_State[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004F44"
    )
        port map (
      I0 => Set_cutoff_prev,
      I1 => Set_cutoff,
      I2 => Set_power_on_prev,
      I3 => Set_power_on,
      I4 => State(1),
      I5 => State(0),
      O => \FSM_sequential_State[1]_i_2_n_0\
    );
\FSM_sequential_State[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => State(0),
      I1 => State(1),
      I2 => Set_power_on_prev,
      I3 => Set_power_on,
      O => \State__0\(1)
    );
\FSM_sequential_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \FSM_sequential_State[0]_i_1_n_0\,
      Q => State(0),
      R => '0'
    );
\FSM_sequential_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \FSM_sequential_State[1]_i_1_n_0\,
      Q => State(1),
      R => '0'
    );
Set_cutoff_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => o_htr_i_1_n_0,
      D => Set_cutoff,
      Q => Set_cutoff_prev,
      R => '0'
    );
Set_power_on_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => o_htr_i_1_n_0,
      D => Set_power_on,
      Q => Set_power_on_prev,
      R => '0'
    );
Set_power_save_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => o_htr_i_1_n_0,
      D => Set_power_save,
      Q => Set_power_save_prev,
      R => '0'
    );
led0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEF0010FF0000"
    )
        port map (
      I0 => State(0),
      I1 => Set_power_save_prev,
      I2 => Set_power_save,
      I3 => State(1),
      I4 => led0_i_2_n_0,
      I5 => \^led0\,
      O => led0_i_1_n_0
    );
led0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBBB0F00"
    )
        port map (
      I0 => Set_power_save_prev,
      I1 => Set_power_save,
      I2 => Set_power_on_prev,
      I3 => Set_power_on,
      I4 => State(0),
      I5 => State(1),
      O => led0_i_2_n_0
    );
led0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => led0_i_1_n_0,
      Q => \^led0\,
      R => '0'
    );
o_htr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => State(1),
      I1 => State(0),
      O => o_htr_i_1_n_0
    );
o_htr_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => State(1),
      O => o_htr_i_2_n_0
    );
o_htr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => o_htr_i_1_n_0,
      D => o_htr_i_2_n_0,
      Q => o_htr,
      R => '0'
    );
o_signal_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B830"
    )
        port map (
      I0 => \^o_signal\,
      I1 => State(1),
      I2 => o_signal_i_2_n_0,
      I3 => State(0),
      O => o_signal_i_1_n_0
    );
o_signal_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB0F00"
    )
        port map (
      I0 => Set_power_save_prev,
      I1 => Set_power_save,
      I2 => Set_power_on_prev,
      I3 => Set_power_on,
      I4 => State(0),
      O => o_signal_i_2_n_0
    );
o_signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => o_signal_i_1_n_0,
      Q => \^o_signal\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Mode_control_0_0 is
  port (
    sysclk : in STD_LOGIC;
    Set_power_save : in STD_LOGIC;
    Set_power_on : in STD_LOGIC;
    Set_cutoff : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    o_htr : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_Mode_control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_Mode_control_0_0 : entity is "PCB_All_SRAM_Mode_control_0_0,Mode_control,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_Mode_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_Mode_control_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_Mode_control_0_0 : entity is "Mode_control,Vivado 2024.2";
end PCB_All_SRAM_Mode_control_0_0;

architecture STRUCTURE of PCB_All_SRAM_Mode_control_0_0 is
begin
U0: entity work.PCB_All_SRAM_Mode_control_0_0_Mode_control
     port map (
      Set_cutoff => Set_cutoff,
      Set_power_on => Set_power_on,
      Set_power_save => Set_power_save,
      led0 => led0,
      o_htr => o_htr,
      o_signal => o_signal,
      sysclk => sysclk
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Sep 29 13:59:27 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Pulse_Per_Second_100_0_0/PCB_All_SRAM_Pulse_Per_Second_100_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_Pulse_Per_Second_100_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Pulse_Per_Second_100_0_0_Pulse_Per_Second_100MHZ is
  port (
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_Pulse_Per_Second_100_0_0_Pulse_Per_Second_100MHZ : entity is "Pulse_Per_Second_100MHZ";
end PCB_All_SRAM_Pulse_Per_Second_100_0_0_Pulse_Per_Second_100MHZ;

architecture STRUCTURE of PCB_All_SRAM_Pulse_Per_Second_100_0_0_Pulse_Per_Second_100MHZ is
  signal \^led0\ : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal o_pulse_i_1_n_0 : STD_LOGIC;
  signal \sec_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \sec_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \sec_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \sec_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \sec_cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \sec_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal sec_cnt_reg : STD_LOGIC_VECTOR ( 26 downto 8 );
  signal \sec_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \sec_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal state_i_3_n_0 : STD_LOGIC;
  signal state_i_4_n_0 : STD_LOGIC;
  signal state_i_5_n_0 : STD_LOGIC;
  signal \NLW_sec_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sec_cnt_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of led0_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair0";
begin
  led0 <= \^led0\;
led0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state,
      I1 => \^led0\,
      O => led0_i_1_n_0
    );
led0_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_pulse_i_1_n_0,
      D => led0_i_1_n_0,
      Q => \^led0\
    );
o_pulse_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => o_pulse_i_1_n_0
    );
o_pulse_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_pulse_i_1_n_0,
      D => state,
      Q => o_pulse
    );
\sec_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state,
      O => \sec_cnt[0]_i_1_n_0\
    );
\sec_cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[0]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[0]_i_3_n_0\
    );
\sec_cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[3]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[0]_i_4_n_0\
    );
\sec_cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[2]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[0]_i_5_n_0\
    );
\sec_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[1]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[0]_i_6_n_0\
    );
\sec_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[0]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[0]_i_7_n_0\
    );
\sec_cnt[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(15),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[12]_i_2_n_0\
    );
\sec_cnt[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(14),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[12]_i_3_n_0\
    );
\sec_cnt[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(13),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[12]_i_4_n_0\
    );
\sec_cnt[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(12),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[12]_i_5_n_0\
    );
\sec_cnt[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04CC"
    )
        port map (
      I0 => state_i_5_n_0,
      I1 => sec_cnt_reg(19),
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[16]_i_2_n_0\
    );
\sec_cnt[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000044C4CCCCCCCC"
    )
        port map (
      I0 => state_i_5_n_0,
      I1 => sec_cnt_reg(18),
      I2 => \sec_cnt[16]_i_6_n_0\,
      I3 => sec_cnt_reg(19),
      I4 => sec_cnt_reg(25),
      I5 => sec_cnt_reg(26),
      O => \sec_cnt[16]_i_3_n_0\
    );
\sec_cnt[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(17),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[16]_i_4_n_0\
    );
\sec_cnt[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(16),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[16]_i_5_n_0\
    );
\sec_cnt[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => state_i_4_n_0,
      I1 => sec_cnt_reg(14),
      I2 => sec_cnt_reg(13),
      I3 => sec_cnt_reg(16),
      I4 => sec_cnt_reg(15),
      I5 => sec_cnt_reg(17),
      O => \sec_cnt[16]_i_6_n_0\
    );
\sec_cnt[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(23),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[20]_i_2_n_0\
    );
\sec_cnt[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(22),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[20]_i_3_n_0\
    );
\sec_cnt[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(21),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[20]_i_4_n_0\
    );
\sec_cnt[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(20),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[20]_i_5_n_0\
    );
\sec_cnt[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000055F700000000"
    )
        port map (
      I0 => state_i_5_n_0,
      I1 => sec_cnt_reg(18),
      I2 => \sec_cnt[16]_i_6_n_0\,
      I3 => sec_cnt_reg(19),
      I4 => sec_cnt_reg(25),
      I5 => sec_cnt_reg(26),
      O => \sec_cnt[24]_i_2_n_0\
    );
\sec_cnt[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sec_cnt_reg(25),
      I1 => sec_cnt_reg(26),
      O => \sec_cnt[24]_i_3_n_0\
    );
\sec_cnt[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(24),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[24]_i_4_n_0\
    );
\sec_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[7]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[4]_i_2_n_0\
    );
\sec_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[6]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[4]_i_3_n_0\
    );
\sec_cnt[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[5]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[4]_i_4_n_0\
    );
\sec_cnt[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \sec_cnt_reg_n_0_[4]\,
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[4]_i_5_n_0\
    );
\sec_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(11),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[8]_i_2_n_0\
    );
\sec_cnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(10),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[8]_i_3_n_0\
    );
\sec_cnt[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(9),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[8]_i_4_n_0\
    );
\sec_cnt[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => sec_cnt_reg(8),
      I1 => state_i_2_n_0,
      I2 => sec_cnt_reg(25),
      I3 => sec_cnt_reg(26),
      O => \sec_cnt[8]_i_5_n_0\
    );
\sec_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[0]_i_2_n_7\,
      Q => \sec_cnt_reg_n_0_[0]\
    );
\sec_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sec_cnt_reg[0]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[0]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[0]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sec_cnt[0]_i_3_n_0\,
      O(3) => \sec_cnt_reg[0]_i_2_n_4\,
      O(2) => \sec_cnt_reg[0]_i_2_n_5\,
      O(1) => \sec_cnt_reg[0]_i_2_n_6\,
      O(0) => \sec_cnt_reg[0]_i_2_n_7\,
      S(3) => \sec_cnt[0]_i_4_n_0\,
      S(2) => \sec_cnt[0]_i_5_n_0\,
      S(1) => \sec_cnt[0]_i_6_n_0\,
      S(0) => \sec_cnt[0]_i_7_n_0\
    );
\sec_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[8]_i_1_n_5\,
      Q => sec_cnt_reg(10)
    );
\sec_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[8]_i_1_n_4\,
      Q => sec_cnt_reg(11)
    );
\sec_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[12]_i_1_n_7\,
      Q => sec_cnt_reg(12)
    );
\sec_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[8]_i_1_n_0\,
      CO(3) => \sec_cnt_reg[12]_i_1_n_0\,
      CO(2) => \sec_cnt_reg[12]_i_1_n_1\,
      CO(1) => \sec_cnt_reg[12]_i_1_n_2\,
      CO(0) => \sec_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[12]_i_1_n_4\,
      O(2) => \sec_cnt_reg[12]_i_1_n_5\,
      O(1) => \sec_cnt_reg[12]_i_1_n_6\,
      O(0) => \sec_cnt_reg[12]_i_1_n_7\,
      S(3) => \sec_cnt[12]_i_2_n_0\,
      S(2) => \sec_cnt[12]_i_3_n_0\,
      S(1) => \sec_cnt[12]_i_4_n_0\,
      S(0) => \sec_cnt[12]_i_5_n_0\
    );
\sec_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[12]_i_1_n_6\,
      Q => sec_cnt_reg(13)
    );
\sec_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[12]_i_1_n_5\,
      Q => sec_cnt_reg(14)
    );
\sec_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[12]_i_1_n_4\,
      Q => sec_cnt_reg(15)
    );
\sec_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[16]_i_1_n_7\,
      Q => sec_cnt_reg(16)
    );
\sec_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[12]_i_1_n_0\,
      CO(3) => \sec_cnt_reg[16]_i_1_n_0\,
      CO(2) => \sec_cnt_reg[16]_i_1_n_1\,
      CO(1) => \sec_cnt_reg[16]_i_1_n_2\,
      CO(0) => \sec_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[16]_i_1_n_4\,
      O(2) => \sec_cnt_reg[16]_i_1_n_5\,
      O(1) => \sec_cnt_reg[16]_i_1_n_6\,
      O(0) => \sec_cnt_reg[16]_i_1_n_7\,
      S(3) => \sec_cnt[16]_i_2_n_0\,
      S(2) => \sec_cnt[16]_i_3_n_0\,
      S(1) => \sec_cnt[16]_i_4_n_0\,
      S(0) => \sec_cnt[16]_i_5_n_0\
    );
\sec_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[16]_i_1_n_6\,
      Q => sec_cnt_reg(17)
    );
\sec_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[16]_i_1_n_5\,
      Q => sec_cnt_reg(18)
    );
\sec_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[16]_i_1_n_4\,
      Q => sec_cnt_reg(19)
    );
\sec_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[0]_i_2_n_6\,
      Q => \sec_cnt_reg_n_0_[1]\
    );
\sec_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[20]_i_1_n_7\,
      Q => sec_cnt_reg(20)
    );
\sec_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[16]_i_1_n_0\,
      CO(3) => \sec_cnt_reg[20]_i_1_n_0\,
      CO(2) => \sec_cnt_reg[20]_i_1_n_1\,
      CO(1) => \sec_cnt_reg[20]_i_1_n_2\,
      CO(0) => \sec_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[20]_i_1_n_4\,
      O(2) => \sec_cnt_reg[20]_i_1_n_5\,
      O(1) => \sec_cnt_reg[20]_i_1_n_6\,
      O(0) => \sec_cnt_reg[20]_i_1_n_7\,
      S(3) => \sec_cnt[20]_i_2_n_0\,
      S(2) => \sec_cnt[20]_i_3_n_0\,
      S(1) => \sec_cnt[20]_i_4_n_0\,
      S(0) => \sec_cnt[20]_i_5_n_0\
    );
\sec_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[20]_i_1_n_6\,
      Q => sec_cnt_reg(21)
    );
\sec_cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[20]_i_1_n_5\,
      Q => sec_cnt_reg(22)
    );
\sec_cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[20]_i_1_n_4\,
      Q => sec_cnt_reg(23)
    );
\sec_cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[24]_i_1_n_7\,
      Q => sec_cnt_reg(24)
    );
\sec_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_sec_cnt_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sec_cnt_reg[24]_i_1_n_2\,
      CO(0) => \sec_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sec_cnt_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \sec_cnt_reg[24]_i_1_n_5\,
      O(1) => \sec_cnt_reg[24]_i_1_n_6\,
      O(0) => \sec_cnt_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \sec_cnt[24]_i_2_n_0\,
      S(1) => \sec_cnt[24]_i_3_n_0\,
      S(0) => \sec_cnt[24]_i_4_n_0\
    );
\sec_cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[24]_i_1_n_6\,
      Q => sec_cnt_reg(25)
    );
\sec_cnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[24]_i_1_n_5\,
      Q => sec_cnt_reg(26)
    );
\sec_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[0]_i_2_n_5\,
      Q => \sec_cnt_reg_n_0_[2]\
    );
\sec_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[0]_i_2_n_4\,
      Q => \sec_cnt_reg_n_0_[3]\
    );
\sec_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[4]_i_1_n_7\,
      Q => \sec_cnt_reg_n_0_[4]\
    );
\sec_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[0]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[4]_i_1_n_0\,
      CO(2) => \sec_cnt_reg[4]_i_1_n_1\,
      CO(1) => \sec_cnt_reg[4]_i_1_n_2\,
      CO(0) => \sec_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[4]_i_1_n_4\,
      O(2) => \sec_cnt_reg[4]_i_1_n_5\,
      O(1) => \sec_cnt_reg[4]_i_1_n_6\,
      O(0) => \sec_cnt_reg[4]_i_1_n_7\,
      S(3) => \sec_cnt[4]_i_2_n_0\,
      S(2) => \sec_cnt[4]_i_3_n_0\,
      S(1) => \sec_cnt[4]_i_4_n_0\,
      S(0) => \sec_cnt[4]_i_5_n_0\
    );
\sec_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[4]_i_1_n_6\,
      Q => \sec_cnt_reg_n_0_[5]\
    );
\sec_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[4]_i_1_n_5\,
      Q => \sec_cnt_reg_n_0_[6]\
    );
\sec_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[4]_i_1_n_4\,
      Q => \sec_cnt_reg_n_0_[7]\
    );
\sec_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[8]_i_1_n_7\,
      Q => sec_cnt_reg(8)
    );
\sec_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[4]_i_1_n_0\,
      CO(3) => \sec_cnt_reg[8]_i_1_n_0\,
      CO(2) => \sec_cnt_reg[8]_i_1_n_1\,
      CO(1) => \sec_cnt_reg[8]_i_1_n_2\,
      CO(0) => \sec_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[8]_i_1_n_4\,
      O(2) => \sec_cnt_reg[8]_i_1_n_5\,
      O(1) => \sec_cnt_reg[8]_i_1_n_6\,
      O(0) => \sec_cnt_reg[8]_i_1_n_7\,
      S(3) => \sec_cnt[8]_i_2_n_0\,
      S(2) => \sec_cnt[8]_i_3_n_0\,
      S(1) => \sec_cnt[8]_i_4_n_0\,
      S(0) => \sec_cnt[8]_i_5_n_0\
    );
\sec_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \sec_cnt[0]_i_1_n_0\,
      CLR => o_pulse_i_1_n_0,
      D => \sec_cnt_reg[8]_i_1_n_6\,
      Q => sec_cnt_reg(9)
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => state_i_2_n_0,
      I1 => sec_cnt_reg(25),
      I2 => sec_cnt_reg(26),
      I3 => state,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01115555FFFFFFFF"
    )
        port map (
      I0 => sec_cnt_reg(19),
      I1 => sec_cnt_reg(17),
      I2 => state_i_3_n_0,
      I3 => state_i_4_n_0,
      I4 => sec_cnt_reg(18),
      I5 => state_i_5_n_0,
      O => state_i_2_n_0
    );
state_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sec_cnt_reg(14),
      I1 => sec_cnt_reg(13),
      I2 => sec_cnt_reg(16),
      I3 => sec_cnt_reg(15),
      O => state_i_3_n_0
    );
state_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sec_cnt_reg(8),
      I1 => sec_cnt_reg(11),
      I2 => sec_cnt_reg(12),
      I3 => sec_cnt_reg(9),
      I4 => sec_cnt_reg(10),
      O => state_i_4_n_0
    );
state_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sec_cnt_reg(20),
      I1 => sec_cnt_reg(23),
      I2 => sec_cnt_reg(24),
      I3 => sec_cnt_reg(21),
      I4 => sec_cnt_reg(22),
      O => state_i_5_n_0
    );
state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_pulse_i_1_n_0,
      D => state_i_1_n_0,
      Q => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Pulse_Per_Second_100_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_Pulse_Per_Second_100_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_Pulse_Per_Second_100_0_0 : entity is "PCB_All_SRAM_Pulse_Per_Second_100_0_0,Pulse_Per_Second_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_Pulse_Per_Second_100_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_Pulse_Per_Second_100_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_Pulse_Per_Second_100_0_0 : entity is "Pulse_Per_Second_100MHZ,Vivado 2024.2";
end PCB_All_SRAM_Pulse_Per_Second_100_0_0;

architecture STRUCTURE of PCB_All_SRAM_Pulse_Per_Second_100_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.PCB_All_SRAM_Pulse_Per_Second_100_0_0_Pulse_Per_Second_100MHZ
     port map (
      led0 => led0,
      o_pulse => o_pulse,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

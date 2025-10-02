-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:44:50 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Pulse_WithDelay_Per_0_0/PCB_All_SRAM_Pulse_WithDelay_Per_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_Pulse_WithDelay_Per_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second is
  port (
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second : entity is "Pulse_WithDelay_Per_Second";
end PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second;

architecture STRUCTURE of PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^led0\ : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal \^o_pulse\ : STD_LOGIC;
  signal o_pulse_i_1_n_0 : STD_LOGIC;
  signal o_pulse_i_2_n_0 : STD_LOGIC;
  signal sec_cnt : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \sec_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[26]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal sec_cnt_0 : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[26]_i_3_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[26]_i_3_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[26]_i_3_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_6\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "delay:001,pulse:100,count:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "delay:001,pulse:100,count:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "delay:001,pulse:100,count:010";
  attribute SOFT_HLUTNM of led0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_pulse_i_1 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[26]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[8]_i_2\ : label is 35;
begin
  led0 <= \^led0\;
  o_pulse <= \^o_pulse\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state[0]_i_2_n_0\,
      I2 => sec_cnt(24),
      I3 => sec_cnt(25),
      I4 => sec_cnt(26),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111110100010"
    )
        port map (
      I0 => sec_cnt(23),
      I1 => sec_cnt(22),
      I2 => \FSM_onehot_state[1]_i_6_n_0\,
      I3 => sec_cnt(16),
      I4 => \FSM_onehot_state[1]_i_5_n_0\,
      I5 => \FSM_onehot_state[1]_i_4_n_0\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFFFFFEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state[1]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sec_cnt(1),
      I1 => sec_cnt(0),
      I2 => sec_cnt(9),
      O => \FSM_onehot_state[1]_i_10_n_0\
    );
\FSM_onehot_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => sec_cnt(11),
      I1 => sec_cnt(10),
      I2 => sec_cnt(8),
      I3 => sec_cnt(9),
      O => \FSM_onehot_state[1]_i_11_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(25),
      I1 => sec_cnt(26),
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA0000FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_4_n_0\,
      I1 => \FSM_onehot_state[1]_i_5_n_0\,
      I2 => sec_cnt(16),
      I3 => \FSM_onehot_state[1]_i_6_n_0\,
      I4 => \FSM_onehot_state[1]_i_7_n_0\,
      I5 => sec_cnt(24),
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sec_cnt(20),
      I1 => sec_cnt(21),
      O => \FSM_onehot_state[1]_i_4_n_0\
    );
\FSM_onehot_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222222AAAAA222"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_8_n_0\,
      I1 => sec_cnt(13),
      I2 => \FSM_onehot_state[1]_i_9_n_0\,
      I3 => \FSM_onehot_state[1]_i_10_n_0\,
      I4 => \FSM_onehot_state[1]_i_11_n_0\,
      I5 => sec_cnt(12),
      O => \FSM_onehot_state[1]_i_5_n_0\
    );
\FSM_onehot_state[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sec_cnt(19),
      I1 => sec_cnt(18),
      I2 => sec_cnt(17),
      O => \FSM_onehot_state[1]_i_6_n_0\
    );
\FSM_onehot_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(22),
      I1 => sec_cnt(23),
      O => \FSM_onehot_state[1]_i_7_n_0\
    );
\FSM_onehot_state[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(14),
      I1 => sec_cnt(15),
      O => \FSM_onehot_state[1]_i_8_n_0\
    );
\FSM_onehot_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sec_cnt(2),
      I1 => sec_cnt(3),
      I2 => sec_cnt(4),
      I3 => sec_cnt(5),
      I4 => sec_cnt(7),
      I5 => sec_cnt(6),
      O => \FSM_onehot_state[1]_i_9_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54555555FFFFFFFF"
    )
        port map (
      I0 => sec_cnt(25),
      I1 => \FSM_onehot_state[2]_i_3_n_0\,
      I2 => \FSM_onehot_state[2]_i_4_n_0\,
      I3 => sec_cnt(21),
      I4 => sec_cnt(22),
      I5 => sec_cnt(26),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFFFFF"
    )
        port map (
      I0 => sec_cnt(20),
      I1 => sec_cnt(19),
      I2 => sec_cnt(18),
      I3 => sec_cnt(24),
      I4 => sec_cnt(23),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111110111111"
    )
        port map (
      I0 => sec_cnt(17),
      I1 => sec_cnt(19),
      I2 => \FSM_onehot_state[2]_i_5_n_0\,
      I3 => sec_cnt(14),
      I4 => sec_cnt(13),
      I5 => \FSM_onehot_state[2]_i_6_n_0\,
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sec_cnt(15),
      I1 => sec_cnt(16),
      O => \FSM_onehot_state[2]_i_5_n_0\
    );
\FSM_onehot_state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sec_cnt(8),
      I1 => sec_cnt(9),
      I2 => sec_cnt(10),
      I3 => sec_cnt(12),
      I4 => sec_cnt(11),
      O => \FSM_onehot_state[2]_i_6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => o_pulse_i_2_n_0,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_pulse_i_2_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_pulse_i_2_n_0,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
led0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
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
      CLR => o_pulse_i_2_n_0,
      D => led0_i_1_n_0,
      Q => \^led0\
    );
o_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDCC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \^o_pulse\,
      O => o_pulse_i_1_n_0
    );
o_pulse_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => o_pulse_i_2_n_0
    );
o_pulse_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_pulse_i_2_n_0,
      D => o_pulse_i_1_n_0,
      Q => \^o_pulse\
    );
\sec_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8888888"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => sec_cnt(0),
      O => \sec_cnt[0]_i_1_n_0\
    );
\sec_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[12]_i_2_n_6\,
      O => \sec_cnt[10]_i_1_n_0\
    );
\sec_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[12]_i_2_n_5\,
      O => \sec_cnt[11]_i_1_n_0\
    );
\sec_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[12]_i_2_n_4\,
      O => \sec_cnt[12]_i_1_n_0\
    );
\sec_cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[16]_i_2_n_7\,
      O => \sec_cnt[13]_i_1_n_0\
    );
\sec_cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[16]_i_2_n_6\,
      O => \sec_cnt[14]_i_1_n_0\
    );
\sec_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[16]_i_2_n_5\,
      O => \sec_cnt[15]_i_1_n_0\
    );
\sec_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[16]_i_2_n_4\,
      O => \sec_cnt[16]_i_1_n_0\
    );
\sec_cnt[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[20]_i_2_n_7\,
      O => \sec_cnt[17]_i_1_n_0\
    );
\sec_cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[20]_i_2_n_6\,
      O => \sec_cnt[18]_i_1_n_0\
    );
\sec_cnt[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[20]_i_2_n_5\,
      O => \sec_cnt[19]_i_1_n_0\
    );
\sec_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[4]_i_2_n_7\,
      O => \sec_cnt[1]_i_1_n_0\
    );
\sec_cnt[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[20]_i_2_n_4\,
      O => \sec_cnt[20]_i_1_n_0\
    );
\sec_cnt[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[24]_i_2_n_7\,
      O => \sec_cnt[21]_i_1_n_0\
    );
\sec_cnt[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[24]_i_2_n_6\,
      O => \sec_cnt[22]_i_1_n_0\
    );
\sec_cnt[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[24]_i_2_n_5\,
      O => \sec_cnt[23]_i_1_n_0\
    );
\sec_cnt[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[24]_i_2_n_4\,
      O => \sec_cnt[24]_i_1_n_0\
    );
\sec_cnt[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[26]_i_3_n_7\,
      O => \sec_cnt[25]_i_1_n_0\
    );
\sec_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => sec_cnt_0
    );
\sec_cnt[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[26]_i_3_n_6\,
      O => \sec_cnt[26]_i_2_n_0\
    );
\sec_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[4]_i_2_n_6\,
      O => \sec_cnt[2]_i_1_n_0\
    );
\sec_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[4]_i_2_n_5\,
      O => \sec_cnt[3]_i_1_n_0\
    );
\sec_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[4]_i_2_n_4\,
      O => \sec_cnt[4]_i_1_n_0\
    );
\sec_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[8]_i_2_n_7\,
      O => \sec_cnt[5]_i_1_n_0\
    );
\sec_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[8]_i_2_n_6\,
      O => \sec_cnt[6]_i_1_n_0\
    );
\sec_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[8]_i_2_n_5\,
      O => \sec_cnt[7]_i_1_n_0\
    );
\sec_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[8]_i_2_n_4\,
      O => \sec_cnt[8]_i_1_n_0\
    );
\sec_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[1]_i_3_n_0\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \sec_cnt_reg[12]_i_2_n_7\,
      O => \sec_cnt[9]_i_1_n_0\
    );
\sec_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[0]_i_1_n_0\,
      Q => sec_cnt(0)
    );
\sec_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[10]_i_1_n_0\,
      Q => sec_cnt(10)
    );
\sec_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[11]_i_1_n_0\,
      Q => sec_cnt(11)
    );
\sec_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[12]_i_1_n_0\,
      Q => sec_cnt(12)
    );
\sec_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[8]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[12]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[12]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[12]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[12]_i_2_n_4\,
      O(2) => \sec_cnt_reg[12]_i_2_n_5\,
      O(1) => \sec_cnt_reg[12]_i_2_n_6\,
      O(0) => \sec_cnt_reg[12]_i_2_n_7\,
      S(3 downto 0) => sec_cnt(12 downto 9)
    );
\sec_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[13]_i_1_n_0\,
      Q => sec_cnt(13)
    );
\sec_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[14]_i_1_n_0\,
      Q => sec_cnt(14)
    );
\sec_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[15]_i_1_n_0\,
      Q => sec_cnt(15)
    );
\sec_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[16]_i_1_n_0\,
      Q => sec_cnt(16)
    );
\sec_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[12]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[16]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[16]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[16]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[16]_i_2_n_4\,
      O(2) => \sec_cnt_reg[16]_i_2_n_5\,
      O(1) => \sec_cnt_reg[16]_i_2_n_6\,
      O(0) => \sec_cnt_reg[16]_i_2_n_7\,
      S(3 downto 0) => sec_cnt(16 downto 13)
    );
\sec_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[17]_i_1_n_0\,
      Q => sec_cnt(17)
    );
\sec_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[18]_i_1_n_0\,
      Q => sec_cnt(18)
    );
\sec_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[19]_i_1_n_0\,
      Q => sec_cnt(19)
    );
\sec_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[1]_i_1_n_0\,
      Q => sec_cnt(1)
    );
\sec_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[20]_i_1_n_0\,
      Q => sec_cnt(20)
    );
\sec_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[16]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[20]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[20]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[20]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[20]_i_2_n_4\,
      O(2) => \sec_cnt_reg[20]_i_2_n_5\,
      O(1) => \sec_cnt_reg[20]_i_2_n_6\,
      O(0) => \sec_cnt_reg[20]_i_2_n_7\,
      S(3 downto 0) => sec_cnt(20 downto 17)
    );
\sec_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[21]_i_1_n_0\,
      Q => sec_cnt(21)
    );
\sec_cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[22]_i_1_n_0\,
      Q => sec_cnt(22)
    );
\sec_cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[23]_i_1_n_0\,
      Q => sec_cnt(23)
    );
\sec_cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[24]_i_1_n_0\,
      Q => sec_cnt(24)
    );
\sec_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[20]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[24]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[24]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[24]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[24]_i_2_n_4\,
      O(2) => \sec_cnt_reg[24]_i_2_n_5\,
      O(1) => \sec_cnt_reg[24]_i_2_n_6\,
      O(0) => \sec_cnt_reg[24]_i_2_n_7\,
      S(3 downto 0) => sec_cnt(24 downto 21)
    );
\sec_cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[25]_i_1_n_0\,
      Q => sec_cnt(25)
    );
\sec_cnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[26]_i_2_n_0\,
      Q => sec_cnt(26)
    );
\sec_cnt_reg[26]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[24]_i_2_n_0\,
      CO(3 downto 1) => \NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sec_cnt_reg[26]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \sec_cnt_reg[26]_i_3_n_6\,
      O(0) => \sec_cnt_reg[26]_i_3_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => sec_cnt(26 downto 25)
    );
\sec_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[2]_i_1_n_0\,
      Q => sec_cnt(2)
    );
\sec_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[3]_i_1_n_0\,
      Q => sec_cnt(3)
    );
\sec_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[4]_i_1_n_0\,
      Q => sec_cnt(4)
    );
\sec_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sec_cnt_reg[4]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[4]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[4]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[4]_i_2_n_3\,
      CYINIT => sec_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[4]_i_2_n_4\,
      O(2) => \sec_cnt_reg[4]_i_2_n_5\,
      O(1) => \sec_cnt_reg[4]_i_2_n_6\,
      O(0) => \sec_cnt_reg[4]_i_2_n_7\,
      S(3 downto 0) => sec_cnt(4 downto 1)
    );
\sec_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[5]_i_1_n_0\,
      Q => sec_cnt(5)
    );
\sec_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[6]_i_1_n_0\,
      Q => sec_cnt(6)
    );
\sec_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[7]_i_1_n_0\,
      Q => sec_cnt(7)
    );
\sec_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[8]_i_1_n_0\,
      Q => sec_cnt(8)
    );
\sec_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[4]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[8]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[8]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[8]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sec_cnt_reg[8]_i_2_n_4\,
      O(2) => \sec_cnt_reg[8]_i_2_n_5\,
      O(1) => \sec_cnt_reg[8]_i_2_n_6\,
      O(0) => \sec_cnt_reg[8]_i_2_n_7\,
      S(3 downto 0) => sec_cnt(8 downto 5)
    );
\sec_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => sec_cnt_0,
      CLR => o_pulse_i_2_n_0,
      D => \sec_cnt[9]_i_1_n_0\,
      Q => sec_cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Pulse_WithDelay_Per_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_Pulse_WithDelay_Per_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_Pulse_WithDelay_Per_0_0 : entity is "PCB_All_SRAM_Pulse_WithDelay_Per_0_0,Pulse_WithDelay_Per_Second,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_Pulse_WithDelay_Per_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_Pulse_WithDelay_Per_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_Pulse_WithDelay_Per_0_0 : entity is "Pulse_WithDelay_Per_Second,Vivado 2024.2";
end PCB_All_SRAM_Pulse_WithDelay_Per_0_0;

architecture STRUCTURE of PCB_All_SRAM_Pulse_WithDelay_Per_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second
     port map (
      led0 => led0,
      o_pulse => o_pulse,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

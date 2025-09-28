-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Sep 28 14:06:00 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_simple_SRAM_test/PCB_simple_SRAM_test.gen/sources_1/bd/simple_PCB_test/ip/simple_PCB_test_SRAM_controller_0_0/simple_PCB_test_SRAM_controller_0_0_sim_netlist.vhdl
-- Design      : simple_PCB_test_SRAM_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simple_PCB_test_SRAM_controller_0_0_SRAM_controller is
  port (
    CE_n : out STD_LOGIC;
    BF_packet : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_BF_drive : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    WE_n : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of simple_PCB_test_SRAM_controller_0_0_SRAM_controller : entity is "SRAM_controller";
end simple_PCB_test_SRAM_controller_0_0_SRAM_controller;

architecture STRUCTURE of simple_PCB_test_SRAM_controller_0_0_SRAM_controller is
  signal \^a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \A[0]_i_1_n_0\ : STD_LOGIC;
  signal BF_packet0 : STD_LOGIC;
  signal \^ce_n\ : STD_LOGIC;
  signal CE_n_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^we_n\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal data_buf0 : STD_LOGIC;
  signal \^o_bf_drive\ : STD_LOGIC;
  signal o_BF_drive_i_1_n_0 : STD_LOGIC;
  signal o_BF_drive_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 165 downto 150 );
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wait_count0 : STD_LOGIC;
  signal \wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \wait_count[6]_i_4_n_0\ : STD_LOGIC;
  signal \wait_count[6]_i_5_n_0\ : STD_LOGIC;
  signal \wait_count[6]_i_6_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[7]\ : STD_LOGIC;
  signal write_active : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CE_n_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001";
  attribute SOFT_HLUTNM of o_BF_drive_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wait_count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wait_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wait_count[6]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_count[6]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair1";
begin
  A(0) <= \^a\(0);
  CE_n <= \^ce_n\;
  WE_n <= \^we_n\;
  o_BF_drive <= \^o_bf_drive\;
\A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[2]\,
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => reset_n,
      I3 => state(0),
      I4 => \^a\(0),
      O => \A[0]_i_1_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \A[0]_i_1_n_0\,
      Q => \^a\(0),
      R => '0'
    );
\BF_packet[165]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => reset_n,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => state(0),
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      O => BF_packet0
    );
\BF_packet_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(150),
      Q => BF_packet(0),
      R => '0'
    );
\BF_packet_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(151),
      Q => BF_packet(1),
      R => '0'
    );
\BF_packet_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(152),
      Q => BF_packet(2),
      R => '0'
    );
\BF_packet_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(153),
      Q => BF_packet(3),
      R => '0'
    );
\BF_packet_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(154),
      Q => BF_packet(4),
      R => '0'
    );
\BF_packet_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(155),
      Q => BF_packet(5),
      R => '0'
    );
\BF_packet_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(156),
      Q => BF_packet(6),
      R => '0'
    );
\BF_packet_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(157),
      Q => BF_packet(7),
      R => '0'
    );
\BF_packet_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(158),
      Q => BF_packet(8),
      R => '0'
    );
\BF_packet_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(159),
      Q => BF_packet(9),
      R => '0'
    );
\BF_packet_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(160),
      Q => BF_packet(10),
      R => '0'
    );
\BF_packet_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(161),
      Q => BF_packet(11),
      R => '0'
    );
\BF_packet_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(162),
      Q => BF_packet(12),
      R => '0'
    );
\BF_packet_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(163),
      Q => BF_packet(13),
      R => '0'
    );
\BF_packet_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(164),
      Q => BF_packet(14),
      R => '0'
    );
\BF_packet_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => BF_packet0,
      D => p_0_in(165),
      Q => BF_packet(15),
      R => '0'
    );
CE_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ce_n\,
      I1 => state(0),
      O => CE_n_i_1_n_0
    );
CE_n_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => o_BF_drive_i_2_n_0,
      D => CE_n_i_1_n_0,
      Q => \^ce_n\
    );
\DQ_t[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_active,
      O => DQ_t(0)
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3788"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38F0"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \wait_count_reg_n_0_[4]\,
      I3 => \wait_count_reg_n_0_[7]\,
      I4 => \wait_count_reg_n_0_[5]\,
      I5 => \wait_count_reg_n_0_[6]\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \wait_count_reg_n_0_[2]\,
      I1 => \wait_count_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_BF_drive_i_2_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_BF_drive_i_2_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[1]\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => o_BF_drive_i_2_n_0,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[2]\
    );
WE_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => state(0),
      I3 => \^we_n\,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => WE_n_i_1_n_0,
      PRE => o_BF_drive_i_2_n_0,
      Q => \^we_n\
    );
\data_buf[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => reset_n,
      I3 => state(0),
      O => data_buf0
    );
\data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(0),
      Q => p_0_in(150),
      R => '0'
    );
\data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(10),
      Q => p_0_in(160),
      R => '0'
    );
\data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(11),
      Q => p_0_in(161),
      R => '0'
    );
\data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(12),
      Q => p_0_in(162),
      R => '0'
    );
\data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(13),
      Q => p_0_in(163),
      R => '0'
    );
\data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(14),
      Q => p_0_in(164),
      R => '0'
    );
\data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(15),
      Q => p_0_in(165),
      R => '0'
    );
\data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(1),
      Q => p_0_in(151),
      R => '0'
    );
\data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(2),
      Q => p_0_in(152),
      R => '0'
    );
\data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(3),
      Q => p_0_in(153),
      R => '0'
    );
\data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(4),
      Q => p_0_in(154),
      R => '0'
    );
\data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(5),
      Q => p_0_in(155),
      R => '0'
    );
\data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(6),
      Q => p_0_in(156),
      R => '0'
    );
\data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(7),
      Q => p_0_in(157),
      R => '0'
    );
\data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(8),
      Q => p_0_in(158),
      R => '0'
    );
\data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(9),
      Q => p_0_in(159),
      R => '0'
    );
o_BF_drive_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \^o_bf_drive\,
      O => o_BF_drive_i_1_n_0
    );
o_BF_drive_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => o_BF_drive_i_2_n_0
    );
o_BF_drive_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => o_BF_drive_i_2_n_0,
      D => o_BF_drive_i_1_n_0,
      Q => \^o_bf_drive\
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      O => \wait_count[0]_i_1_n_0\
    );
\wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      I1 => \wait_count_reg_n_0_[1]\,
      O => \wait_count[1]_i_1_n_0\
    );
\wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \wait_count_reg_n_0_[2]\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \wait_count_reg_n_0_[0]\,
      O => \wait_count[2]_i_1_n_0\
    );
\wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \wait_count_reg_n_0_[3]\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \wait_count_reg_n_0_[1]\,
      I3 => \wait_count_reg_n_0_[2]\,
      O => \wait_count[3]_i_1_n_0\
    );
\wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \wait_count_reg_n_0_[4]\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \wait_count_reg_n_0_[1]\,
      I3 => \wait_count_reg_n_0_[2]\,
      I4 => \wait_count_reg_n_0_[3]\,
      O => \wait_count[4]_i_1_n_0\
    );
\wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wait_count_reg_n_0_[5]\,
      I1 => \wait_count_reg_n_0_[3]\,
      I2 => \wait_count_reg_n_0_[2]\,
      I3 => \wait_count_reg_n_0_[1]\,
      I4 => \wait_count_reg_n_0_[0]\,
      I5 => \wait_count_reg_n_0_[4]\,
      O => \wait_count[5]_i_1_n_0\
    );
\wait_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"202F0000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => state(0),
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      I4 => reset_n,
      O => \wait_count[6]_i_1_n_0\
    );
\wait_count[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A202A202A222A2"
    )
        port map (
      I0 => reset_n,
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => state(0),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \wait_count[6]_i_4_n_0\,
      I5 => \wait_count[6]_i_5_n_0\,
      O => wait_count0
    );
\wait_count[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \wait_count_reg_n_0_[6]\,
      I1 => \wait_count_reg_n_0_[4]\,
      I2 => \wait_count[6]_i_6_n_0\,
      I3 => \wait_count_reg_n_0_[2]\,
      I4 => \wait_count_reg_n_0_[3]\,
      I5 => \wait_count_reg_n_0_[5]\,
      O => \wait_count[6]_i_3_n_0\
    );
\wait_count[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_count_reg_n_0_[6]\,
      I1 => \wait_count_reg_n_0_[5]\,
      I2 => \wait_count_reg_n_0_[7]\,
      I3 => \wait_count_reg_n_0_[4]\,
      O => \wait_count[6]_i_4_n_0\
    );
\wait_count[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => \wait_count_reg_n_0_[3]\,
      I2 => \wait_count_reg_n_0_[2]\,
      O => \wait_count[6]_i_5_n_0\
    );
\wait_count[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      I1 => \wait_count_reg_n_0_[1]\,
      O => \wait_count[6]_i_6_n_0\
    );
\wait_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A00FFFF80000000"
    )
        port map (
      I0 => state(0),
      I1 => \wait_count_reg_n_0_[6]\,
      I2 => \wait_count[7]_i_2_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => wait_count0,
      I5 => \wait_count_reg_n_0_[7]\,
      O => \wait_count[7]_i_1_n_0\
    );
\wait_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \wait_count_reg_n_0_[5]\,
      I1 => \wait_count_reg_n_0_[3]\,
      I2 => \wait_count_reg_n_0_[2]\,
      I3 => \wait_count_reg_n_0_[1]\,
      I4 => \wait_count_reg_n_0_[0]\,
      I5 => \wait_count_reg_n_0_[4]\,
      O => \wait_count[7]_i_2_n_0\
    );
\wait_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[0]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[0]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[1]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[1]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[2]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[2]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[3]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[3]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[4]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[4]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[5]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[5]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => wait_count0,
      D => \wait_count[6]_i_3_n_0\,
      Q => \wait_count_reg_n_0_[6]\,
      R => \wait_count[6]_i_1_n_0\
    );
\wait_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \wait_count[7]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[7]\,
      R => '0'
    );
write_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC4C0044"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => state(0),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => write_active,
      O => write_active_i_1_n_0
    );
write_active_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => o_BF_drive_i_2_n_0,
      D => write_active_i_1_n_0,
      Q => write_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simple_PCB_test_SRAM_controller_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_BF_drive : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dec : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    BF_packet : out STD_LOGIC_VECTOR ( 223 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of simple_PCB_test_SRAM_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of simple_PCB_test_SRAM_controller_0_0 : entity is "simple_PCB_test_SRAM_controller_0_0,SRAM_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of simple_PCB_test_SRAM_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of simple_PCB_test_SRAM_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of simple_PCB_test_SRAM_controller_0_0 : entity is "SRAM_controller,Vivado 2024.2";
end simple_PCB_test_SRAM_controller_0_0;

architecture STRUCTURE of simple_PCB_test_SRAM_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bf_packet\ : STD_LOGIC_VECTOR ( 165 downto 150 );
  signal \^dq_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  A(21) <= \<const0>\;
  A(20) <= \<const0>\;
  A(19) <= \<const0>\;
  A(18) <= \<const0>\;
  A(17) <= \<const0>\;
  A(16) <= \<const0>\;
  A(15) <= \<const0>\;
  A(14) <= \<const0>\;
  A(13) <= \<const0>\;
  A(12) <= \<const0>\;
  A(11) <= \<const0>\;
  A(10) <= \<const0>\;
  A(9) <= \<const0>\;
  A(8) <= \<const0>\;
  A(7) <= \<const0>\;
  A(6) <= \<const0>\;
  A(5) <= \<const0>\;
  A(4) <= \<const0>\;
  A(3) <= \<const0>\;
  A(2) <= \<const0>\;
  A(1) <= \<const0>\;
  A(0) <= \^a\(0);
  BF_packet(223) <= \<const0>\;
  BF_packet(222) <= \<const1>\;
  BF_packet(221) <= \<const0>\;
  BF_packet(220) <= \<const0>\;
  BF_packet(219) <= \<const0>\;
  BF_packet(218) <= \<const0>\;
  BF_packet(217) <= \<const0>\;
  BF_packet(216) <= \<const0>\;
  BF_packet(215) <= \<const0>\;
  BF_packet(214) <= \<const0>\;
  BF_packet(213) <= \<const0>\;
  BF_packet(212) <= \<const0>\;
  BF_packet(211) <= \<const0>\;
  BF_packet(210) <= \<const0>\;
  BF_packet(209) <= \<const0>\;
  BF_packet(208) <= \<const0>\;
  BF_packet(207) <= \<const0>\;
  BF_packet(206) <= \<const0>\;
  BF_packet(205) <= \<const0>\;
  BF_packet(204) <= \<const0>\;
  BF_packet(203) <= \<const0>\;
  BF_packet(202) <= \<const0>\;
  BF_packet(201) <= \<const0>\;
  BF_packet(200) <= \<const0>\;
  BF_packet(199) <= \<const0>\;
  BF_packet(198) <= \<const0>\;
  BF_packet(197) <= \<const0>\;
  BF_packet(196) <= \<const0>\;
  BF_packet(195) <= \<const0>\;
  BF_packet(194) <= \<const0>\;
  BF_packet(193) <= \<const0>\;
  BF_packet(192) <= \<const0>\;
  BF_packet(191) <= \<const0>\;
  BF_packet(190) <= \<const0>\;
  BF_packet(189) <= \<const0>\;
  BF_packet(188) <= \<const0>\;
  BF_packet(187) <= \<const0>\;
  BF_packet(186) <= \<const0>\;
  BF_packet(185) <= \<const0>\;
  BF_packet(184) <= \<const0>\;
  BF_packet(183) <= \<const0>\;
  BF_packet(182) <= \<const0>\;
  BF_packet(181) <= \<const0>\;
  BF_packet(180) <= \<const0>\;
  BF_packet(179) <= \<const0>\;
  BF_packet(178) <= \<const0>\;
  BF_packet(177) <= \<const0>\;
  BF_packet(176) <= \<const0>\;
  BF_packet(175) <= \<const0>\;
  BF_packet(174) <= \<const0>\;
  BF_packet(173) <= \<const0>\;
  BF_packet(172) <= \<const0>\;
  BF_packet(171) <= \<const0>\;
  BF_packet(170) <= \<const0>\;
  BF_packet(169) <= \<const0>\;
  BF_packet(168) <= \<const0>\;
  BF_packet(167) <= \<const0>\;
  BF_packet(166) <= \<const1>\;
  BF_packet(165 downto 150) <= \^bf_packet\(165 downto 150);
  BF_packet(149) <= \<const0>\;
  BF_packet(148) <= \<const0>\;
  BF_packet(147) <= \<const0>\;
  BF_packet(146) <= \<const0>\;
  BF_packet(145) <= \<const0>\;
  BF_packet(144) <= \<const0>\;
  BF_packet(143) <= \<const0>\;
  BF_packet(142) <= \<const0>\;
  BF_packet(141) <= \<const0>\;
  BF_packet(140) <= \<const0>\;
  BF_packet(139) <= \<const0>\;
  BF_packet(138) <= \<const0>\;
  BF_packet(137) <= \<const0>\;
  BF_packet(136) <= \<const0>\;
  BF_packet(135) <= \<const0>\;
  BF_packet(134) <= \<const0>\;
  BF_packet(133) <= \<const0>\;
  BF_packet(132) <= \<const0>\;
  BF_packet(131) <= \<const0>\;
  BF_packet(130) <= \<const0>\;
  BF_packet(129) <= \<const0>\;
  BF_packet(128) <= \<const0>\;
  BF_packet(127) <= \<const0>\;
  BF_packet(126) <= \<const0>\;
  BF_packet(125) <= \<const0>\;
  BF_packet(124) <= \<const0>\;
  BF_packet(123) <= \<const0>\;
  BF_packet(122) <= \<const0>\;
  BF_packet(121) <= \<const0>\;
  BF_packet(120) <= \<const0>\;
  BF_packet(119) <= \<const0>\;
  BF_packet(118) <= \<const0>\;
  BF_packet(117) <= \<const0>\;
  BF_packet(116) <= \<const0>\;
  BF_packet(115) <= \<const0>\;
  BF_packet(114) <= \<const0>\;
  BF_packet(113) <= \<const0>\;
  BF_packet(112) <= \<const0>\;
  BF_packet(111) <= \<const0>\;
  BF_packet(110) <= \<const0>\;
  BF_packet(109) <= \<const0>\;
  BF_packet(108) <= \<const0>\;
  BF_packet(107) <= \<const0>\;
  BF_packet(106) <= \<const0>\;
  BF_packet(105) <= \<const0>\;
  BF_packet(104) <= \<const0>\;
  BF_packet(103) <= \<const0>\;
  BF_packet(102) <= \<const0>\;
  BF_packet(101) <= \<const0>\;
  BF_packet(100) <= \<const0>\;
  BF_packet(99) <= \<const0>\;
  BF_packet(98) <= \<const0>\;
  BF_packet(97) <= \<const0>\;
  BF_packet(96) <= \<const0>\;
  BF_packet(95) <= \<const0>\;
  BF_packet(94) <= \<const0>\;
  BF_packet(93) <= \<const0>\;
  BF_packet(92) <= \<const0>\;
  BF_packet(91) <= \<const0>\;
  BF_packet(90) <= \<const0>\;
  BF_packet(89) <= \<const0>\;
  BF_packet(88) <= \<const0>\;
  BF_packet(87) <= \<const0>\;
  BF_packet(86) <= \<const0>\;
  BF_packet(85) <= \<const0>\;
  BF_packet(84) <= \<const0>\;
  BF_packet(83) <= \<const0>\;
  BF_packet(82) <= \<const0>\;
  BF_packet(81) <= \<const0>\;
  BF_packet(80) <= \<const0>\;
  BF_packet(79) <= \<const0>\;
  BF_packet(78) <= \<const0>\;
  BF_packet(77) <= \<const0>\;
  BF_packet(76) <= \<const0>\;
  BF_packet(75) <= \<const0>\;
  BF_packet(74) <= \<const0>\;
  BF_packet(73) <= \<const0>\;
  BF_packet(72) <= \<const0>\;
  BF_packet(71) <= \<const0>\;
  BF_packet(70) <= \<const0>\;
  BF_packet(69) <= \<const0>\;
  BF_packet(68) <= \<const0>\;
  BF_packet(67) <= \<const0>\;
  BF_packet(66) <= \<const0>\;
  BF_packet(65) <= \<const0>\;
  BF_packet(64) <= \<const0>\;
  BF_packet(63) <= \<const0>\;
  BF_packet(62) <= \<const0>\;
  BF_packet(61) <= \<const0>\;
  BF_packet(60) <= \<const0>\;
  BF_packet(59) <= \<const0>\;
  BF_packet(58) <= \<const0>\;
  BF_packet(57) <= \<const0>\;
  BF_packet(56) <= \<const0>\;
  BF_packet(55) <= \<const0>\;
  BF_packet(54) <= \<const0>\;
  BF_packet(53) <= \<const0>\;
  BF_packet(52) <= \<const0>\;
  BF_packet(51) <= \<const0>\;
  BF_packet(50) <= \<const0>\;
  BF_packet(49) <= \<const0>\;
  BF_packet(48) <= \<const0>\;
  BF_packet(47) <= \<const0>\;
  BF_packet(46) <= \<const0>\;
  BF_packet(45) <= \<const0>\;
  BF_packet(44) <= \<const0>\;
  BF_packet(43) <= \<const0>\;
  BF_packet(42) <= \<const0>\;
  BF_packet(41) <= \<const0>\;
  BF_packet(40) <= \<const0>\;
  BF_packet(39) <= \<const0>\;
  BF_packet(38) <= \<const0>\;
  BF_packet(37) <= \<const0>\;
  BF_packet(36) <= \<const0>\;
  BF_packet(35) <= \<const0>\;
  BF_packet(34) <= \<const0>\;
  BF_packet(33) <= \<const0>\;
  BF_packet(32) <= \<const0>\;
  BF_packet(31) <= \<const0>\;
  BF_packet(30) <= \<const0>\;
  BF_packet(29) <= \<const0>\;
  BF_packet(28) <= \<const0>\;
  BF_packet(27) <= \<const0>\;
  BF_packet(26) <= \<const0>\;
  BF_packet(25) <= \<const0>\;
  BF_packet(24) <= \<const0>\;
  BF_packet(23) <= \<const0>\;
  BF_packet(22) <= \<const0>\;
  BF_packet(21) <= \<const0>\;
  BF_packet(20) <= \<const0>\;
  BF_packet(19) <= \<const0>\;
  BF_packet(18) <= \<const0>\;
  BF_packet(17) <= \<const0>\;
  BF_packet(16) <= \<const0>\;
  BF_packet(15) <= \<const0>\;
  BF_packet(14) <= \<const0>\;
  BF_packet(13) <= \<const0>\;
  BF_packet(12) <= \<const0>\;
  BF_packet(11) <= \<const0>\;
  BF_packet(10) <= \<const0>\;
  BF_packet(9) <= \<const0>\;
  BF_packet(8) <= \<const0>\;
  BF_packet(7) <= \<const0>\;
  BF_packet(6) <= \<const0>\;
  BF_packet(5) <= \<const0>\;
  BF_packet(4) <= \<const0>\;
  BF_packet(3) <= \<const0>\;
  BF_packet(2) <= \<const0>\;
  BF_packet(1) <= \<const0>\;
  BF_packet(0) <= \<const0>\;
  DQ_o(15) <= \<const1>\;
  DQ_o(14) <= \<const0>\;
  DQ_o(13) <= \<const1>\;
  DQ_o(12) <= \<const0>\;
  DQ_o(11) <= \<const1>\;
  DQ_o(10) <= \<const0>\;
  DQ_o(9) <= \<const1>\;
  DQ_o(8) <= \<const0>\;
  DQ_o(7) <= \<const1>\;
  DQ_o(6) <= \<const0>\;
  DQ_o(5) <= \<const1>\;
  DQ_o(4) <= \<const0>\;
  DQ_o(3) <= \<const1>\;
  DQ_o(2) <= \<const0>\;
  DQ_o(1) <= \<const1>\;
  DQ_o(0) <= \<const0>\;
  DQ_t(15) <= \^dq_t\(0);
  DQ_t(14) <= \^dq_t\(0);
  DQ_t(13) <= \^dq_t\(0);
  DQ_t(12) <= \^dq_t\(0);
  DQ_t(11) <= \^dq_t\(0);
  DQ_t(10) <= \^dq_t\(0);
  DQ_t(9) <= \^dq_t\(0);
  DQ_t(8) <= \^dq_t\(0);
  DQ_t(7) <= \^dq_t\(0);
  DQ_t(6) <= \^dq_t\(0);
  DQ_t(5) <= \^dq_t\(0);
  DQ_t(4) <= \^dq_t\(0);
  DQ_t(3) <= \^dq_t\(0);
  DQ_t(2) <= \^dq_t\(0);
  DQ_t(1) <= \^dq_t\(0);
  DQ_t(0) <= \^dq_t\(0);
  dec(2) <= \<const0>\;
  dec(1) <= \<const1>\;
  dec(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.simple_PCB_test_SRAM_controller_0_0_SRAM_controller
     port map (
      A(0) => \^a\(0),
      BF_packet(15 downto 0) => \^bf_packet\(165 downto 150),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_t(0) => \^dq_t\(0),
      WE_n => WE_n,
      o_BF_drive => o_BF_drive,
      reset_n => reset_n,
      sysclk => sysclk
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

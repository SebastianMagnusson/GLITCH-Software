-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 23 16:02:24 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_Write1_100MHZ_0_0/testwith1speed_Write1_100MHZ_0_0_sim_netlist.vhdl
-- Design      : testwith1speed_Write1_100MHZ_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_complete : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ : entity is "Write1_100MHZ";
end testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ;

architecture STRUCTURE of testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ is
  signal \^dq_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^we_n\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal addr_cnt : STD_LOGIC;
  signal \addr_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_6_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_7_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_10_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_11_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_6_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_7_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_8_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_9_n_0\ : STD_LOGIC;
  signal \addr_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cnt[17]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[17]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[17]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[19]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[19]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_10_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_6_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_7_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_8_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_9_n_0\ : STD_LOGIC;
  signal \addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_10_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_7_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_8_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_9_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_3_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_3_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_3_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[1]\ : STD_LOGIC;
  signal write_active : STD_LOGIC;
  signal write_active_0 : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  signal \^write_complete\ : STD_LOGIC;
  signal write_complete_i_1_n_0 : STD_LOGIC;
  signal write_complete_i_2_n_0 : STD_LOGIC;
  signal \write_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_10_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_11_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_12_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_13_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_14_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_15_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_16_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_17_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_18_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_19_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_20_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_21_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_22_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_23_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_7_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_8_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_9_n_0\ : STD_LOGIC;
  signal \write_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[9]_i_1_n_0\ : STD_LOGIC;
  signal write_data_buf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal write_data_buf0 : STD_LOGIC;
  signal \NLW_addr_cnt_reg[21]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_addr_cnt_reg[21]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr_cnt[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_cnt[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_cnt[16]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_cnt[16]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr_cnt[17]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_cnt[19]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_cnt[19]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr_cnt[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_cnt[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \addr_cnt[9]_i_1\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[12]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[21]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \wait_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wait_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of write_complete_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \write_data[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_data[15]_i_20\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_data[15]_i_21\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \write_data[15]_i_22\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_data[15]_i_23\ : label is "soft_lutpair7";
begin
  DQ_o(15 downto 0) <= \^dq_o\(15 downto 0);
  WE_n <= \^we_n\;
  write_complete <= \^write_complete\;
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[0]\,
      Q => A(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[10]\,
      Q => A(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[11]\,
      Q => A(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[12]\,
      Q => A(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[13]\,
      Q => A(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[14]\,
      Q => A(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[15]\,
      Q => A(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[16]\,
      Q => A(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[17]\,
      Q => A(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[18]\,
      Q => A(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[19]\,
      Q => A(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[1]\,
      Q => A(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[20]\,
      Q => A(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[21]\,
      Q => A(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[2]\,
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[3]\,
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[4]\,
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[5]\,
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[6]\,
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[7]\,
      Q => A(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[8]\,
      Q => A(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[9]\,
      Q => A(9)
    );
CE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => write_active_0,
      D => '0',
      PRE => write_complete_i_2_n_0,
      Q => CE_n
    );
\DQ_t[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_active,
      O => DQ_t(0)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => write_active_0,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \write_data[15]_i_3_n_0\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => addr_cnt,
      PRE => write_complete_i_2_n_0,
      Q => write_active_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => write_active_0,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state[4]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
WE_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => write_active_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^we_n\,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => WE_n_i_1_n_0,
      PRE => write_complete_i_2_n_0,
      Q => \^we_n\
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\addr_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABAAABAAAB"
    )
        port map (
      I0 => \addr_cnt[12]_i_2_n_0\,
      I1 => \addr_cnt[16]_i_5_n_0\,
      I2 => \addr_cnt[16]_i_4_n_0\,
      I3 => \addr_cnt[16]_i_3_n_0\,
      I4 => data0(10),
      I5 => \addr_cnt[12]_i_4_n_0\,
      O => p_1_in(10)
    );
\addr_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(11),
      I1 => \addr_cnt[11]_i_2_n_0\,
      I2 => \addr_cnt[11]_i_3_n_0\,
      O => p_1_in(11)
    );
\addr_cnt[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFFFAFAFCFF"
    )
        port map (
      I0 => \addr_cnt[12]_i_9_n_0\,
      I1 => \addr_cnt[11]_i_4_n_0\,
      I2 => \addr_cnt[11]_i_5_n_0\,
      I3 => \addr_cnt[11]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[12]\,
      I5 => \addr_cnt[11]_i_7_n_0\,
      O => \addr_cnt[11]_i_2_n_0\
    );
\addr_cnt[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => \write_data[15]_i_11_n_0\,
      I1 => \addr_cnt[16]_i_4_n_0\,
      I2 => \addr_cnt[16]_i_5_n_0\,
      I3 => \addr_cnt[16]_i_3_n_0\,
      O => \addr_cnt[11]_i_3_n_0\
    );
\addr_cnt[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[10]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      O => \addr_cnt[11]_i_4_n_0\
    );
\addr_cnt[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[9]\,
      I1 => \addr_cnt_reg_n_0_[16]\,
      I2 => \addr_cnt_reg_n_0_[0]\,
      I3 => \addr_cnt_reg_n_0_[11]\,
      I4 => \addr_cnt[20]_i_8_n_0\,
      O => \addr_cnt[11]_i_5_n_0\
    );
\addr_cnt[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[17]\,
      I1 => \addr_cnt_reg_n_0_[14]\,
      I2 => \addr_cnt_reg_n_0_[15]\,
      I3 => \addr_cnt_reg_n_0_[19]\,
      I4 => \addr_cnt[20]_i_7_n_0\,
      I5 => \write_data[15]_i_18_n_0\,
      O => \addr_cnt[11]_i_6_n_0\
    );
\addr_cnt[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[5]\,
      I1 => \addr_cnt_reg_n_0_[20]\,
      I2 => \addr_cnt_reg_n_0_[18]\,
      I3 => \addr_cnt_reg_n_0_[14]\,
      I4 => \addr_cnt[12]_i_6_n_0\,
      O => \addr_cnt[11]_i_7_n_0\
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAABAAABAAAB"
    )
        port map (
      I0 => \addr_cnt[12]_i_2_n_0\,
      I1 => \addr_cnt[16]_i_5_n_0\,
      I2 => \addr_cnt[16]_i_4_n_0\,
      I3 => \addr_cnt[16]_i_3_n_0\,
      I4 => data0(12),
      I5 => \addr_cnt[12]_i_4_n_0\,
      O => p_1_in(12)
    );
\addr_cnt[12]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      I2 => \addr_cnt_reg_n_0_[10]\,
      I3 => \addr_cnt_reg_n_0_[16]\,
      I4 => \addr_cnt[8]_i_5_n_0\,
      O => \addr_cnt[12]_i_10_n_0\
    );
\addr_cnt[12]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt_reg_n_0_[20]\,
      I2 => \addr_cnt_reg_n_0_[18]\,
      I3 => \addr_cnt_reg_n_0_[14]\,
      I4 => \addr_cnt_reg_n_0_[17]\,
      O => \addr_cnt[12]_i_11_n_0\
    );
\addr_cnt[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \addr_cnt[12]_i_5_n_0\,
      I1 => \addr_cnt[12]_i_6_n_0\,
      I2 => \addr_cnt[12]_i_7_n_0\,
      I3 => \addr_cnt[12]_i_8_n_0\,
      I4 => \addr_cnt[12]_i_9_n_0\,
      I5 => \addr_cnt_reg_n_0_[0]\,
      O => \addr_cnt[12]_i_2_n_0\
    );
\addr_cnt[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEEFFFE"
    )
        port map (
      I0 => \addr_cnt[16]_i_3_n_0\,
      I1 => \addr_cnt[12]_i_10_n_0\,
      I2 => \addr_cnt_reg_n_0_[7]\,
      I3 => \write_data[15]_i_10_n_0\,
      I4 => \addr_cnt_reg_n_0_[9]\,
      I5 => \addr_cnt[12]_i_11_n_0\,
      O => \addr_cnt[12]_i_4_n_0\
    );
\addr_cnt[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[9]\,
      I1 => \addr_cnt_reg_n_0_[16]\,
      O => \addr_cnt[12]_i_5_n_0\
    );
\addr_cnt[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[4]\,
      I1 => \addr_cnt_reg_n_0_[2]\,
      I2 => \addr_cnt_reg_n_0_[8]\,
      I3 => \addr_cnt_reg_n_0_[6]\,
      O => \addr_cnt[12]_i_6_n_0\
    );
\addr_cnt[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[14]\,
      I1 => \addr_cnt_reg_n_0_[18]\,
      I2 => \addr_cnt_reg_n_0_[20]\,
      I3 => \addr_cnt_reg_n_0_[5]\,
      O => \addr_cnt[12]_i_7_n_0\
    );
\addr_cnt[12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[21]\,
      I2 => \addr_cnt_reg_n_0_[13]\,
      I3 => \addr_cnt_reg_n_0_[7]\,
      I4 => \addr_cnt_reg_n_0_[11]\,
      O => \addr_cnt[12]_i_8_n_0\
    );
\addr_cnt[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[17]\,
      I1 => \addr_cnt_reg_n_0_[3]\,
      I2 => \addr_cnt_reg_n_0_[15]\,
      I3 => \addr_cnt_reg_n_0_[19]\,
      I4 => \addr_cnt_reg_n_0_[1]\,
      I5 => \addr_cnt_reg_n_0_[10]\,
      O => \addr_cnt[12]_i_9_n_0\
    );
\addr_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => data0(13),
      O => p_1_in(13)
    );
\addr_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => \addr_cnt[17]_i_2_n_0\,
      I1 => \addr_cnt[17]_i_3_n_0\,
      I2 => \addr_cnt[17]_i_4_n_0\,
      I3 => data0(14),
      I4 => \addr_cnt[20]_i_6_n_0\,
      O => p_1_in(14)
    );
\addr_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(15),
      I1 => \addr_cnt[19]_i_2_n_0\,
      I2 => \addr_cnt[19]_i_3_n_0\,
      O => p_1_in(15)
    );
\addr_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFDFDFDFDDD"
    )
        port map (
      I0 => \addr_cnt[19]_i_2_n_0\,
      I1 => \addr_cnt[20]_i_6_n_0\,
      I2 => data0(16),
      I3 => \addr_cnt[16]_i_3_n_0\,
      I4 => \addr_cnt[16]_i_4_n_0\,
      I5 => \addr_cnt[16]_i_5_n_0\,
      O => p_1_in(16)
    );
\addr_cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \write_data[15]_i_18_n_0\,
      I1 => \addr_cnt_reg_n_0_[0]\,
      O => \addr_cnt[16]_i_3_n_0\
    );
\addr_cnt[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \addr_cnt[20]_i_10_n_0\,
      I1 => \addr_cnt_reg_n_0_[18]\,
      I2 => \addr_cnt_reg_n_0_[20]\,
      I3 => \addr_cnt_reg_n_0_[16]\,
      I4 => \addr_cnt_reg_n_0_[9]\,
      O => \addr_cnt[16]_i_4_n_0\
    );
\addr_cnt[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFF7F"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[21]\,
      I2 => \addr_cnt_reg_n_0_[13]\,
      I3 => \addr_cnt_reg_n_0_[7]\,
      I4 => \addr_cnt_reg_n_0_[17]\,
      I5 => \addr_cnt_reg_n_0_[14]\,
      O => \addr_cnt[16]_i_5_n_0\
    );
\addr_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => \addr_cnt[17]_i_2_n_0\,
      I1 => \addr_cnt[17]_i_3_n_0\,
      I2 => \addr_cnt[17]_i_4_n_0\,
      I3 => data0(17),
      I4 => \addr_cnt[20]_i_6_n_0\,
      O => p_1_in(17)
    );
\addr_cnt[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \addr_cnt[20]_i_8_n_0\,
      I1 => \addr_cnt_reg_n_0_[12]\,
      I2 => \addr_cnt_reg_n_0_[14]\,
      I3 => \addr_cnt_reg_n_0_[17]\,
      I4 => \addr_cnt[16]_i_3_n_0\,
      I5 => \addr_cnt[16]_i_4_n_0\,
      O => \addr_cnt[17]_i_2_n_0\
    );
\addr_cnt[17]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[16]\,
      I2 => \addr_cnt_reg_n_0_[9]\,
      I3 => \addr_cnt[16]_i_3_n_0\,
      O => \addr_cnt[17]_i_3_n_0\
    );
\addr_cnt[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBBBA"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[14]\,
      I1 => \addr_cnt_reg_n_0_[12]\,
      I2 => \addr_cnt_reg_n_0_[15]\,
      I3 => \addr_cnt_reg_n_0_[19]\,
      I4 => \addr_cnt_reg_n_0_[17]\,
      I5 => \addr_cnt[20]_i_3_n_0\,
      O => \addr_cnt[17]_i_4_n_0\
    );
\addr_cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA88A8"
    )
        port map (
      I0 => data0(18),
      I1 => \addr_cnt[20]_i_3_n_0\,
      I2 => \addr_cnt[20]_i_4_n_0\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      I4 => \addr_cnt[20]_i_5_n_0\,
      I5 => \addr_cnt[20]_i_6_n_0\,
      O => p_1_in(18)
    );
\addr_cnt[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(19),
      I1 => \addr_cnt[19]_i_2_n_0\,
      I2 => \addr_cnt[19]_i_3_n_0\,
      O => p_1_in(19)
    );
\addr_cnt[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \addr_cnt[16]_i_3_n_0\,
      I1 => \addr_cnt[20]_i_9_n_0\,
      I2 => \addr_cnt_reg_n_0_[12]\,
      I3 => \addr_cnt_reg_n_0_[9]\,
      I4 => \addr_cnt[20]_i_8_n_0\,
      I5 => \write_data[15]_i_10_n_0\,
      O => \addr_cnt[19]_i_2_n_0\
    );
\addr_cnt[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0FFF1"
    )
        port map (
      I0 => \addr_cnt[16]_i_4_n_0\,
      I1 => \addr_cnt[16]_i_5_n_0\,
      I2 => \addr_cnt[12]_i_2_n_0\,
      I3 => \write_data[15]_i_11_n_0\,
      I4 => \addr_cnt[16]_i_3_n_0\,
      O => \addr_cnt[19]_i_3_n_0\
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFEEFFEEFF"
    )
        port map (
      I0 => \addr_cnt[1]_i_2_n_0\,
      I1 => \addr_cnt[7]_i_3_n_0\,
      I2 => \addr_cnt[7]_i_4_n_0\,
      I3 => \addr_cnt[19]_i_2_n_0\,
      I4 => \addr_cnt[16]_i_5_n_0\,
      I5 => data0(1),
      O => p_1_in(1)
    );
\addr_cnt[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C8"
    )
        port map (
      I0 => \write_data[15]_i_13_n_0\,
      I1 => data0(1),
      I2 => \addr_cnt_reg_n_0_[3]\,
      I3 => \addr_cnt_reg_n_0_[11]\,
      O => \addr_cnt[1]_i_2_n_0\
    );
\addr_cnt[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA88A8"
    )
        port map (
      I0 => data0(20),
      I1 => \addr_cnt[20]_i_3_n_0\,
      I2 => \addr_cnt[20]_i_4_n_0\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      I4 => \addr_cnt[20]_i_5_n_0\,
      I5 => \addr_cnt[20]_i_6_n_0\,
      O => p_1_in(20)
    );
\addr_cnt[20]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[11]\,
      I1 => \addr_cnt_reg_n_0_[15]\,
      I2 => \addr_cnt_reg_n_0_[19]\,
      I3 => \addr_cnt_reg_n_0_[10]\,
      I4 => \addr_cnt_reg_n_0_[1]\,
      O => \addr_cnt[20]_i_10_n_0\
    );
\addr_cnt[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEEEEEFFFE"
    )
        port map (
      I0 => \addr_cnt[20]_i_7_n_0\,
      I1 => \addr_cnt[20]_i_8_n_0\,
      I2 => \addr_cnt_reg_n_0_[9]\,
      I3 => \addr_cnt[20]_i_9_n_0\,
      I4 => \addr_cnt_reg_n_0_[12]\,
      I5 => \addr_cnt[20]_i_10_n_0\,
      O => \addr_cnt[20]_i_3_n_0\
    );
\addr_cnt[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[19]\,
      I1 => \addr_cnt_reg_n_0_[15]\,
      I2 => \addr_cnt_reg_n_0_[14]\,
      O => \addr_cnt[20]_i_4_n_0\
    );
\addr_cnt[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFFFFFFFFFBAA"
    )
        port map (
      I0 => \addr_cnt[16]_i_3_n_0\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      I2 => \addr_cnt_reg_n_0_[16]\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      I4 => \addr_cnt_reg_n_0_[17]\,
      I5 => \addr_cnt_reg_n_0_[14]\,
      O => \addr_cnt[20]_i_5_n_0\
    );
\addr_cnt[20]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \addr_cnt[16]_i_3_n_0\,
      I1 => \write_data[15]_i_11_n_0\,
      I2 => \addr_cnt[12]_i_2_n_0\,
      O => \addr_cnt[20]_i_6_n_0\
    );
\addr_cnt[20]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[18]\,
      I1 => \addr_cnt_reg_n_0_[20]\,
      O => \addr_cnt[20]_i_7_n_0\
    );
\addr_cnt[20]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[21]\,
      I1 => \addr_cnt_reg_n_0_[13]\,
      I2 => \addr_cnt_reg_n_0_[7]\,
      O => \addr_cnt[20]_i_8_n_0\
    );
\addr_cnt[20]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[16]\,
      I1 => \addr_cnt_reg_n_0_[10]\,
      I2 => \addr_cnt_reg_n_0_[1]\,
      I3 => \addr_cnt_reg_n_0_[11]\,
      O => \addr_cnt[20]_i_9_n_0\
    );
\addr_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => data0(21),
      O => p_1_in(21)
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => data0(2),
      I1 => \addr_cnt[8]_i_3_n_0\,
      I2 => \addr_cnt[8]_i_4_n_0\,
      I3 => \addr_cnt[20]_i_5_n_0\,
      I4 => \addr_cnt[12]_i_2_n_0\,
      O => \addr_cnt[2]_i_1_n_0\
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \addr_cnt[19]_i_2_n_0\,
      I1 => \addr_cnt[11]_i_3_n_0\,
      I2 => \addr_cnt[12]_i_2_n_0\,
      I3 => data0(3),
      O => p_1_in(3)
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => data0(4),
      I1 => \addr_cnt[8]_i_3_n_0\,
      I2 => \addr_cnt[8]_i_4_n_0\,
      I3 => \addr_cnt[20]_i_5_n_0\,
      I4 => \addr_cnt[12]_i_2_n_0\,
      O => \addr_cnt[4]_i_1_n_0\
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \addr_cnt[19]_i_2_n_0\,
      I1 => \addr_cnt[11]_i_3_n_0\,
      I2 => \addr_cnt[12]_i_2_n_0\,
      I3 => data0(5),
      O => p_1_in(5)
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => data0(6),
      I1 => \addr_cnt[8]_i_3_n_0\,
      I2 => \addr_cnt[8]_i_4_n_0\,
      I3 => \addr_cnt[20]_i_5_n_0\,
      I4 => \addr_cnt[12]_i_2_n_0\,
      O => \addr_cnt[6]_i_1_n_0\
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFEEFFEE"
    )
        port map (
      I0 => \addr_cnt[7]_i_2_n_0\,
      I1 => \addr_cnt[7]_i_3_n_0\,
      I2 => \addr_cnt[7]_i_4_n_0\,
      I3 => \addr_cnt[7]_i_5_n_0\,
      I4 => \addr_cnt[7]_i_6_n_0\,
      I5 => data0(7),
      O => p_1_in(7)
    );
\addr_cnt[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[11]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      I2 => \addr_cnt_reg_n_0_[10]\,
      I3 => \addr_cnt_reg_n_0_[16]\,
      I4 => \addr_cnt[20]_i_4_n_0\,
      O => \addr_cnt[7]_i_10_n_0\
    );
\addr_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00550055005500"
    )
        port map (
      I0 => \addr_cnt[7]_i_7_n_0\,
      I1 => \addr_cnt[7]_i_8_n_0\,
      I2 => \addr_cnt_reg_n_0_[11]\,
      I3 => data0(7),
      I4 => \addr_cnt_reg_n_0_[12]\,
      I5 => \addr_cnt_reg_n_0_[3]\,
      O => \addr_cnt[7]_i_2_n_0\
    );
\addr_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_data[15]_i_11_n_0\,
      I1 => \addr_cnt[16]_i_3_n_0\,
      O => \addr_cnt[7]_i_3_n_0\
    );
\addr_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[0]\,
      I1 => \addr_cnt_reg_n_0_[11]\,
      I2 => \addr_cnt_reg_n_0_[3]\,
      I3 => \write_data[15]_i_16_n_0\,
      O => \addr_cnt[7]_i_4_n_0\
    );
\addr_cnt[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F80000FF880000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[3]\,
      I1 => \addr_cnt[20]_i_7_n_0\,
      I2 => \addr_cnt[7]_i_9_n_0\,
      I3 => \addr_cnt[7]_i_10_n_0\,
      I4 => data0(7),
      I5 => \addr_cnt_reg_n_0_[12]\,
      O => \addr_cnt[7]_i_5_n_0\
    );
\addr_cnt[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFFFBF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt_reg_n_0_[13]\,
      I2 => \addr_cnt_reg_n_0_[21]\,
      I3 => \addr_cnt_reg_n_0_[9]\,
      I4 => \addr_cnt_reg_n_0_[12]\,
      O => \addr_cnt[7]_i_6_n_0\
    );
\addr_cnt[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[14]\,
      I1 => \addr_cnt_reg_n_0_[17]\,
      O => \addr_cnt[7]_i_7_n_0\
    );
\addr_cnt[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[16]\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      O => \addr_cnt[7]_i_8_n_0\
    );
\addr_cnt[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[10]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      I2 => \addr_cnt_reg_n_0_[19]\,
      I3 => \addr_cnt_reg_n_0_[15]\,
      O => \addr_cnt[7]_i_9_n_0\
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => data0(8),
      I1 => \addr_cnt[8]_i_3_n_0\,
      I2 => \addr_cnt[8]_i_4_n_0\,
      I3 => \addr_cnt[20]_i_5_n_0\,
      I4 => \addr_cnt[12]_i_2_n_0\,
      O => \addr_cnt[8]_i_1_n_0\
    );
\addr_cnt[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFAEAE"
    )
        port map (
      I0 => \addr_cnt[8]_i_5_n_0\,
      I1 => \addr_cnt[8]_i_6_n_0\,
      I2 => \addr_cnt_reg_n_0_[12]\,
      I3 => \addr_cnt_reg_n_0_[9]\,
      I4 => \addr_cnt_reg_n_0_[7]\,
      O => \addr_cnt[8]_i_3_n_0\
    );
\addr_cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFFFFFCCCFEEE"
    )
        port map (
      I0 => \addr_cnt[20]_i_4_n_0\,
      I1 => \write_data[15]_i_14_n_0\,
      I2 => \addr_cnt[8]_i_7_n_0\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      I4 => \addr_cnt_reg_n_0_[9]\,
      I5 => \addr_cnt[20]_i_7_n_0\,
      O => \addr_cnt[8]_i_4_n_0\
    );
\addr_cnt[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6EEEFFFFFFFFFFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[11]\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      I2 => \addr_cnt_reg_n_0_[15]\,
      I3 => \addr_cnt_reg_n_0_[19]\,
      I4 => \addr_cnt_reg_n_0_[21]\,
      I5 => \addr_cnt_reg_n_0_[13]\,
      O => \addr_cnt[8]_i_5_n_0\
    );
\addr_cnt[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[1]\,
      I1 => \addr_cnt_reg_n_0_[10]\,
      I2 => \addr_cnt_reg_n_0_[16]\,
      O => \addr_cnt[8]_i_6_n_0\
    );
\addr_cnt[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[1]\,
      I1 => \addr_cnt_reg_n_0_[10]\,
      O => \addr_cnt[8]_i_7_n_0\
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => data0(9),
      I1 => \addr_cnt[11]_i_2_n_0\,
      I2 => \addr_cnt[11]_i_3_n_0\,
      O => p_1_in(9)
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(0),
      Q => \addr_cnt_reg_n_0_[0]\
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(10),
      Q => \addr_cnt_reg_n_0_[10]\
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(11),
      Q => \addr_cnt_reg_n_0_[11]\
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(12),
      Q => \addr_cnt_reg_n_0_[12]\
    );
\addr_cnt_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[8]_i_2_n_0\,
      CO(3) => \addr_cnt_reg[12]_i_3_n_0\,
      CO(2) => \addr_cnt_reg[12]_i_3_n_1\,
      CO(1) => \addr_cnt_reg[12]_i_3_n_2\,
      CO(0) => \addr_cnt_reg[12]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \addr_cnt_reg_n_0_[12]\,
      S(2) => \addr_cnt_reg_n_0_[11]\,
      S(1) => \addr_cnt_reg_n_0_[10]\,
      S(0) => \addr_cnt_reg_n_0_[9]\
    );
\addr_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(13),
      Q => \addr_cnt_reg_n_0_[13]\
    );
\addr_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(14),
      Q => \addr_cnt_reg_n_0_[14]\
    );
\addr_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(15),
      Q => \addr_cnt_reg_n_0_[15]\
    );
\addr_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(16),
      Q => \addr_cnt_reg_n_0_[16]\
    );
\addr_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[12]_i_3_n_0\,
      CO(3) => \addr_cnt_reg[16]_i_2_n_0\,
      CO(2) => \addr_cnt_reg[16]_i_2_n_1\,
      CO(1) => \addr_cnt_reg[16]_i_2_n_2\,
      CO(0) => \addr_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \addr_cnt_reg_n_0_[16]\,
      S(2) => \addr_cnt_reg_n_0_[15]\,
      S(1) => \addr_cnt_reg_n_0_[14]\,
      S(0) => \addr_cnt_reg_n_0_[13]\
    );
\addr_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(17),
      Q => \addr_cnt_reg_n_0_[17]\
    );
\addr_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(18),
      Q => \addr_cnt_reg_n_0_[18]\
    );
\addr_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(19),
      Q => \addr_cnt_reg_n_0_[19]\
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(1),
      Q => \addr_cnt_reg_n_0_[1]\
    );
\addr_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(20),
      Q => \addr_cnt_reg_n_0_[20]\
    );
\addr_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[16]_i_2_n_0\,
      CO(3) => \addr_cnt_reg[20]_i_2_n_0\,
      CO(2) => \addr_cnt_reg[20]_i_2_n_1\,
      CO(1) => \addr_cnt_reg[20]_i_2_n_2\,
      CO(0) => \addr_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \addr_cnt_reg_n_0_[20]\,
      S(2) => \addr_cnt_reg_n_0_[19]\,
      S(1) => \addr_cnt_reg_n_0_[18]\,
      S(0) => \addr_cnt_reg_n_0_[17]\
    );
\addr_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(21),
      Q => \addr_cnt_reg_n_0_[21]\
    );
\addr_cnt_reg[21]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[20]_i_2_n_0\,
      CO(3 downto 0) => \NLW_addr_cnt_reg[21]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_addr_cnt_reg[21]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(21),
      S(3 downto 1) => B"000",
      S(0) => \addr_cnt_reg_n_0_[21]\
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[2]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[2]\
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(3),
      Q => \addr_cnt_reg_n_0_[3]\
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[4]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[4]\
    );
\addr_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_cnt_reg[4]_i_2_n_0\,
      CO(2) => \addr_cnt_reg[4]_i_2_n_1\,
      CO(1) => \addr_cnt_reg[4]_i_2_n_2\,
      CO(0) => \addr_cnt_reg[4]_i_2_n_3\,
      CYINIT => \addr_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \addr_cnt_reg_n_0_[4]\,
      S(2) => \addr_cnt_reg_n_0_[3]\,
      S(1) => \addr_cnt_reg_n_0_[2]\,
      S(0) => \addr_cnt_reg_n_0_[1]\
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(5),
      Q => \addr_cnt_reg_n_0_[5]\
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[6]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[6]\
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(7),
      Q => \addr_cnt_reg_n_0_[7]\
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[8]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[8]\
    );
\addr_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[4]_i_2_n_0\,
      CO(3) => \addr_cnt_reg[8]_i_2_n_0\,
      CO(2) => \addr_cnt_reg[8]_i_2_n_1\,
      CO(1) => \addr_cnt_reg[8]_i_2_n_2\,
      CO(0) => \addr_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \addr_cnt_reg_n_0_[8]\,
      S(2) => \addr_cnt_reg_n_0_[7]\,
      S(1) => \addr_cnt_reg_n_0_[6]\,
      S(0) => \addr_cnt_reg_n_0_[5]\
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_1_in(9),
      Q => \addr_cnt_reg_n_0_[9]\
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0350"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => write_active_0,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \wait_count_reg_n_0_[0]\,
      O => \wait_count[0]_i_1_n_0\
    );
\wait_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03A0"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      I1 => write_active_0,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \wait_count_reg_n_0_[1]\,
      O => \wait_count[1]_i_1_n_0\
    );
\wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => \wait_count[0]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[0]\
    );
\wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => \wait_count[1]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[1]\
    );
write_active_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => write_active_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => write_active,
      O => write_active_i_1_n_0
    );
write_active_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => write_active_i_1_n_0,
      Q => write_active
    );
write_complete_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => write_active_0,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \^write_complete\,
      O => write_complete_i_1_n_0
    );
write_complete_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => write_complete_i_2_n_0
    );
write_complete_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => write_complete_i_1_n_0,
      Q => \^write_complete\
    );
\write_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(0),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(0),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[0]_i_1_n_0\
    );
\write_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(10),
      I3 => write_data_buf(10),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[10]_i_1_n_0\
    );
\write_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(11),
      I3 => write_data_buf(11),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[11]_i_1_n_0\
    );
\write_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(12),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(12),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[12]_i_1_n_0\
    );
\write_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(13),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(13),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[13]_i_1_n_0\
    );
\write_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(14),
      I3 => write_data_buf(14),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[14]_i_1_n_0\
    );
\write_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_data[15]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => addr_cnt
    );
\write_data[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[18]\,
      I1 => \addr_cnt_reg_n_0_[20]\,
      I2 => \addr_cnt_reg_n_0_[19]\,
      I3 => \addr_cnt_reg_n_0_[15]\,
      I4 => \addr_cnt_reg_n_0_[14]\,
      I5 => \addr_cnt_reg_n_0_[17]\,
      O => \write_data[15]_i_10_n_0\
    );
\write_data[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \write_data[15]_i_20_n_0\,
      I1 => \addr_cnt[8]_i_6_n_0\,
      I2 => \addr_cnt[12]_i_11_n_0\,
      I3 => \write_data[15]_i_21_n_0\,
      I4 => \addr_cnt_reg_n_0_[21]\,
      I5 => \addr_cnt_reg_n_0_[13]\,
      O => \write_data[15]_i_11_n_0\
    );
\write_data[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[9]\,
      I1 => \addr_cnt_reg_n_0_[16]\,
      I2 => \addr_cnt_reg_n_0_[20]\,
      I3 => \addr_cnt_reg_n_0_[18]\,
      I4 => \addr_cnt[20]_i_10_n_0\,
      I5 => \addr_cnt[16]_i_5_n_0\,
      O => \write_data[15]_i_12_n_0\
    );
\write_data[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA2"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[3]\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      I2 => \addr_cnt_reg_n_0_[16]\,
      I3 => \addr_cnt_reg_n_0_[20]\,
      I4 => \addr_cnt_reg_n_0_[18]\,
      I5 => \addr_cnt[7]_i_9_n_0\,
      O => \write_data[15]_i_13_n_0\
    );
\write_data[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF0000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt_reg_n_0_[20]\,
      I2 => \addr_cnt_reg_n_0_[18]\,
      I3 => \addr_cnt_reg_n_0_[14]\,
      I4 => \addr_cnt_reg_n_0_[9]\,
      I5 => \addr_cnt_reg_n_0_[12]\,
      O => \write_data[15]_i_14_n_0\
    );
\write_data[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110FFFFFFFF1110"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[9]\,
      I1 => \addr_cnt_reg_n_0_[12]\,
      I2 => \addr_cnt[20]_i_4_n_0\,
      I3 => \addr_cnt[20]_i_7_n_0\,
      I4 => \addr_cnt_reg_n_0_[17]\,
      I5 => \addr_cnt_reg_n_0_[14]\,
      O => \write_data[15]_i_15_n_0\
    );
\write_data[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBB8B"
    )
        port map (
      I0 => \write_data[15]_i_22_n_0\,
      I1 => \addr_cnt_reg_n_0_[3]\,
      I2 => \addr_cnt_reg_n_0_[16]\,
      I3 => \addr_cnt_reg_n_0_[9]\,
      I4 => \addr_cnt[12]_i_6_n_0\,
      I5 => \addr_cnt[12]_i_7_n_0\,
      O => \write_data[15]_i_16_n_0\
    );
\write_data[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \write_data[15]_i_18_n_0\,
      I1 => \write_data[15]_i_10_n_0\,
      I2 => \addr_cnt[20]_i_9_n_0\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      I4 => \addr_cnt_reg_n_0_[9]\,
      I5 => \addr_cnt[20]_i_8_n_0\,
      O => \write_data[15]_i_17_n_0\
    );
\write_data[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[4]\,
      I1 => \addr_cnt_reg_n_0_[5]\,
      I2 => \addr_cnt_reg_n_0_[8]\,
      I3 => \addr_cnt_reg_n_0_[6]\,
      I4 => \addr_cnt_reg_n_0_[2]\,
      I5 => \addr_cnt_reg_n_0_[3]\,
      O => \write_data[15]_i_18_n_0\
    );
\write_data[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \addr_cnt[12]_i_9_n_0\,
      I1 => \write_data[15]_i_23_n_0\,
      I2 => \addr_cnt_reg_n_0_[11]\,
      I3 => \addr_cnt[12]_i_7_n_0\,
      I4 => \addr_cnt[12]_i_6_n_0\,
      I5 => \addr_cnt[12]_i_5_n_0\,
      O => \write_data[15]_i_19_n_0\
    );
\write_data[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(15),
      I3 => write_data_buf(15),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[15]_i_2_n_0\
    );
\write_data[15]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      O => \write_data[15]_i_20_n_0\
    );
\write_data[15]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[19]\,
      I1 => \addr_cnt_reg_n_0_[15]\,
      I2 => \addr_cnt_reg_n_0_[11]\,
      O => \write_data[15]_i_21_n_0\
    );
\write_data[15]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[2]\,
      I1 => \addr_cnt_reg_n_0_[6]\,
      I2 => \addr_cnt_reg_n_0_[8]\,
      I3 => \addr_cnt_reg_n_0_[5]\,
      I4 => \addr_cnt_reg_n_0_[4]\,
      O => \write_data[15]_i_22_n_0\
    );
\write_data[15]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt_reg_n_0_[13]\,
      I2 => \addr_cnt_reg_n_0_[21]\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      O => \write_data[15]_i_23_n_0\
    );
\write_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[1]\,
      I1 => \addr_cnt_reg_n_0_[0]\,
      I2 => \addr_cnt_reg_n_0_[9]\,
      I3 => \addr_cnt_reg_n_0_[5]\,
      I4 => \write_data[15]_i_7_n_0\,
      I5 => \write_data[15]_i_8_n_0\,
      O => \write_data[15]_i_3_n_0\
    );
\write_data[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0FFFFF0F01"
    )
        port map (
      I0 => \write_data[15]_i_9_n_0\,
      I1 => \write_data[15]_i_10_n_0\,
      I2 => \addr_cnt[16]_i_3_n_0\,
      I3 => \write_data[15]_i_11_n_0\,
      I4 => \addr_cnt[12]_i_2_n_0\,
      I5 => \write_data[15]_i_12_n_0\,
      O => \write_data[15]_i_4_n_0\
    );
\write_data[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \addr_cnt[8]_i_3_n_0\,
      I1 => \write_data[15]_i_13_n_0\,
      I2 => \addr_cnt_reg_n_0_[12]\,
      I3 => \write_data[15]_i_14_n_0\,
      I4 => \write_data[15]_i_15_n_0\,
      I5 => \write_data[15]_i_16_n_0\,
      O => \write_data[15]_i_5_n_0\
    );
\write_data[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBAFFBAFFBBFF"
    )
        port map (
      I0 => \write_data[15]_i_17_n_0\,
      I1 => \write_data[15]_i_18_n_0\,
      I2 => \write_data[15]_i_11_n_0\,
      I3 => \write_data[15]_i_19_n_0\,
      I4 => \addr_cnt[16]_i_5_n_0\,
      I5 => \addr_cnt[16]_i_4_n_0\,
      O => \write_data[15]_i_6_n_0\
    );
\write_data[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[3]\,
      I1 => \addr_cnt_reg_n_0_[12]\,
      I2 => \addr_cnt_reg_n_0_[10]\,
      I3 => \addr_cnt_reg_n_0_[16]\,
      I4 => \addr_cnt[12]_i_6_n_0\,
      O => \write_data[15]_i_7_n_0\
    );
\write_data[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[13]\,
      I1 => \addr_cnt_reg_n_0_[21]\,
      I2 => \addr_cnt_reg_n_0_[19]\,
      I3 => \addr_cnt_reg_n_0_[15]\,
      I4 => \addr_cnt_reg_n_0_[11]\,
      I5 => \addr_cnt[12]_i_11_n_0\,
      O => \write_data[15]_i_8_n_0\
    );
\write_data[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[21]\,
      I1 => \addr_cnt_reg_n_0_[13]\,
      I2 => \addr_cnt_reg_n_0_[7]\,
      I3 => \addr_cnt_reg_n_0_[9]\,
      I4 => \addr_cnt_reg_n_0_[12]\,
      I5 => \addr_cnt[20]_i_9_n_0\,
      O => \write_data[15]_i_9_n_0\
    );
\write_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(1),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(1),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[1]_i_1_n_0\
    );
\write_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(2),
      I3 => write_data_buf(2),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[2]_i_1_n_0\
    );
\write_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(3),
      I3 => write_data_buf(3),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[3]_i_1_n_0\
    );
\write_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(4),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(4),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[4]_i_1_n_0\
    );
\write_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(5),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(5),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[5]_i_1_n_0\
    );
\write_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \write_data[15]_i_4_n_0\,
      I1 => \write_data[15]_i_5_n_0\,
      I2 => \^dq_o\(6),
      I3 => write_data_buf(6),
      I4 => \write_data[15]_i_6_n_0\,
      O => \write_data[6]_i_1_n_0\
    );
\write_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(7),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(7),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[7]_i_1_n_0\
    );
\write_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(8),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(8),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[8]_i_1_n_0\
    );
\write_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^dq_o\(9),
      I1 => \write_data[15]_i_5_n_0\,
      I2 => write_data_buf(9),
      I3 => \write_data[15]_i_6_n_0\,
      I4 => \addr_cnt_reg_n_0_[0]\,
      O => \write_data[9]_i_1_n_0\
    );
\write_data_buf[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => reset_n,
      I2 => \write_data[15]_i_4_n_0\,
      O => write_data_buf0
    );
\write_data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(0),
      Q => write_data_buf(0),
      R => '0'
    );
\write_data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(10),
      Q => write_data_buf(10),
      R => '0'
    );
\write_data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(11),
      Q => write_data_buf(11),
      R => '0'
    );
\write_data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(12),
      Q => write_data_buf(12),
      R => '0'
    );
\write_data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(13),
      Q => write_data_buf(13),
      R => '0'
    );
\write_data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(14),
      Q => write_data_buf(14),
      R => '0'
    );
\write_data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(15),
      Q => write_data_buf(15),
      R => '0'
    );
\write_data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(1),
      Q => write_data_buf(1),
      R => '0'
    );
\write_data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(2),
      Q => write_data_buf(2),
      R => '0'
    );
\write_data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(3),
      Q => write_data_buf(3),
      R => '0'
    );
\write_data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(4),
      Q => write_data_buf(4),
      R => '0'
    );
\write_data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(5),
      Q => write_data_buf(5),
      R => '0'
    );
\write_data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(6),
      Q => write_data_buf(6),
      R => '0'
    );
\write_data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(7),
      Q => write_data_buf(7),
      R => '0'
    );
\write_data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(8),
      Q => write_data_buf(8),
      R => '0'
    );
\write_data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => write_data_buf0,
      D => \^dq_o\(9),
      Q => write_data_buf(9),
      R => '0'
    );
\write_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[0]_i_1_n_0\,
      Q => \^dq_o\(0)
    );
\write_data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[10]_i_1_n_0\,
      Q => \^dq_o\(10)
    );
\write_data_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[11]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(11)
    );
\write_data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[12]_i_1_n_0\,
      Q => \^dq_o\(12)
    );
\write_data_reg[13]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[13]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(13)
    );
\write_data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[14]_i_1_n_0\,
      Q => \^dq_o\(14)
    );
\write_data_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[15]_i_2_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(15)
    );
\write_data_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[1]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(1)
    );
\write_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[2]_i_1_n_0\,
      Q => \^dq_o\(2)
    );
\write_data_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[3]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(3)
    );
\write_data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[4]_i_1_n_0\,
      Q => \^dq_o\(4)
    );
\write_data_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[5]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(5)
    );
\write_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[6]_i_1_n_0\,
      Q => \^dq_o\(6)
    );
\write_data_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[7]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(7)
    );
\write_data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => \write_data[8]_i_1_n_0\,
      Q => \^dq_o\(8)
    );
\write_data_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => \write_data[9]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_Write1_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    write_complete : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of testwith1speed_Write1_100MHZ_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_Write1_100MHZ_0_0 : entity is "testwith1speed_Write1_100MHZ_0_0,Write1_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_Write1_100MHZ_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_Write1_100MHZ_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of testwith1speed_Write1_100MHZ_0_0 : entity is "Write1_100MHZ,Vivado 2024.2";
end testwith1speed_Write1_100MHZ_0_0;

architecture STRUCTURE of testwith1speed_Write1_100MHZ_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dq_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
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
  decoder(2) <= \<const0>\;
  decoder(1) <= \<const0>\;
  decoder(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(0) => \^dq_t\(0),
      WE_n => WE_n,
      reset_n => reset_n,
      sysclk => sysclk,
      write_complete => write_complete
    );
end STRUCTURE;

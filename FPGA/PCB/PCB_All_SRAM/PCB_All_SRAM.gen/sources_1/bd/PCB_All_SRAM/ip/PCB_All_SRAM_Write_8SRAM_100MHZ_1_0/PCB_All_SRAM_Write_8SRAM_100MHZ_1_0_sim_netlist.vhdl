-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Sep 29 20:01:17 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Write_8SRAM_100MHZ_1_0/PCB_All_SRAM_Write_8SRAM_100MHZ_1_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_Write_8SRAM_100MHZ_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Write_8SRAM_100MHZ_1_0_Write_8SRAM_100MHZ is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_complete : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0_Write_8SRAM_100MHZ : entity is "Write_8SRAM_100MHZ";
end PCB_All_SRAM_Write_8SRAM_100MHZ_1_0_Write_8SRAM_100MHZ;

architecture STRUCTURE of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0_Write_8SRAM_100MHZ is
  signal \^a\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal SRAM_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SRAM_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal \addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[9]_i_1_n_0\ : STD_LOGIC;
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
  signal \^decoder\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \decoder[0]_i_1_n_0\ : STD_LOGIC;
  signal \decoder[1]_i_1_n_0\ : STD_LOGIC;
  signal \decoder[2]_i_1_n_0\ : STD_LOGIC;
  signal decoder_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal in10 : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal next_cnt : STD_LOGIC;
  signal \next_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \wait_aftwr_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[2]\ : STD_LOGIC;
  signal write_active : STD_LOGIC;
  signal write_active_0 : STD_LOGIC;
  signal \^write_complete\ : STD_LOGIC;
  signal write_complete_i_1_n_0 : STD_LOGIC;
  signal write_complete_i_2_n_0 : STD_LOGIC;
  signal \write_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_3_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_4_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_5_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_6_n_0\ : STD_LOGIC;
  signal \write_data[14]_i_7_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \write_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRAM_cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SRAM_cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SRAM_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \SRAM_cnt[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr_cnt[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_cnt[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_cnt[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_cnt[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_cnt[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr_cnt[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr_cnt[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr_cnt[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr_cnt[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr_cnt[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr_cnt[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_cnt[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_cnt[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_cnt[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \decoder_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \decoder_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \next_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \wait_aftwr_count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_aftwr_count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_aftwr_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_aftwr_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wait_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wait_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_data[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_data[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \write_data[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_data[15]_i_2\ : label is "soft_lutpair5";
begin
  A(21 downto 0) <= \^a\(21 downto 0);
  decoder(2 downto 0) <= \^decoder\(2 downto 0);
  write_complete <= \^write_complete\;
\A_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[0]\,
      Q => \^a\(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[10]\,
      Q => \^a\(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[11]\,
      Q => \^a\(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[12]\,
      Q => \^a\(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[13]\,
      Q => \^a\(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[14]\,
      Q => \^a\(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[15]\,
      Q => \^a\(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[16]\,
      Q => \^a\(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[17]\,
      Q => \^a\(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[18]\,
      Q => \^a\(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[19]\,
      Q => \^a\(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[1]\,
      Q => \^a\(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[20]\,
      Q => \^a\(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[21]\,
      Q => \^a\(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[2]\,
      Q => \^a\(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[3]\,
      Q => \^a\(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[4]\,
      Q => \^a\(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[5]\,
      Q => \^a\(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[6]\,
      Q => \^a\(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[7]\,
      Q => \^a\(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[8]\,
      Q => \^a\(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[9]\,
      Q => \^a\(9)
    );
CE_n_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => '1',
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
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88808080"
    )
        port map (
      I0 => next_cnt,
      I1 => \next_cnt_reg_n_0_[3]\,
      I2 => \next_cnt_reg_n_0_[2]\,
      I3 => \next_cnt_reg_n_0_[1]\,
      I4 => \next_cnt_reg_n_0_[0]\,
      I5 => \write_data[15]_i_3_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0222AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \wait_aftwr_count_reg_n_0_[2]\,
      I2 => \wait_aftwr_count_reg_n_0_[0]\,
      I3 => \wait_aftwr_count_reg_n_0_[1]\,
      I4 => \wait_aftwr_count_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => \wait_aftwr_count_reg_n_0_[0]\,
      I1 => \wait_aftwr_count_reg_n_0_[1]\,
      I2 => \wait_aftwr_count_reg_n_0_[2]\,
      I3 => \wait_aftwr_count_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2_n_0\,
      I1 => \FSM_onehot_state[4]_i_3_n_0\,
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      I3 => \FSM_onehot_state[4]_i_5_n_0\,
      I4 => \FSM_onehot_state[4]_i_6_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[20]\,
      I1 => \addr_cnt_reg_n_0_[21]\,
      I2 => \addr_cnt_reg_n_0_[18]\,
      I3 => \addr_cnt_reg_n_0_[19]\,
      I4 => \addr_cnt_reg_n_0_[1]\,
      I5 => \addr_cnt_reg_n_0_[0]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[11]\,
      I1 => \addr_cnt_reg_n_0_[10]\,
      I2 => \addr_cnt_reg_n_0_[13]\,
      I3 => \addr_cnt_reg_n_0_[12]\,
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[15]\,
      I1 => \addr_cnt_reg_n_0_[14]\,
      I2 => \addr_cnt_reg_n_0_[17]\,
      I3 => \addr_cnt_reg_n_0_[16]\,
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt_reg_n_0_[6]\,
      I2 => \addr_cnt_reg_n_0_[9]\,
      I3 => \addr_cnt_reg_n_0_[8]\,
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[3]\,
      I1 => \addr_cnt_reg_n_0_[2]\,
      I2 => \addr_cnt_reg_n_0_[5]\,
      I3 => \addr_cnt_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_6_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAEAEEEEEEEEE"
    )
        port map (
      I0 => \SRAM_cnt[3]_i_1_n_0\,
      I1 => next_cnt,
      I2 => \next_cnt_reg_n_0_[2]\,
      I3 => \next_cnt_reg_n_0_[0]\,
      I4 => \next_cnt_reg_n_0_[1]\,
      I5 => \next_cnt_reg_n_0_[3]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state[6]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => write_active_0,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => SRAM_cnt(3),
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \FSM_onehot_state[6]_i_2_n_0\
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA080"
    )
        port map (
      I0 => \wait_count_reg_n_0_[2]\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \wait_count_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      I5 => next_cnt,
      O => \FSM_onehot_state[6]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => write_active_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
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
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => next_cnt
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[6]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \FSM_onehot_state[6]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\
    );
\SRAM_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SRAM_cnt(0),
      O => p_0_in(0)
    );
\SRAM_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SRAM_cnt(0),
      I1 => SRAM_cnt(1),
      O => p_0_in(1)
    );
\SRAM_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => SRAM_cnt(1),
      I1 => SRAM_cnt(0),
      I2 => SRAM_cnt(2),
      O => p_0_in(2)
    );
\SRAM_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => SRAM_cnt(3),
      O => \SRAM_cnt[3]_i_1_n_0\
    );
\SRAM_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => SRAM_cnt(0),
      I1 => SRAM_cnt(1),
      I2 => SRAM_cnt(2),
      O => p_0_in(3)
    );
\SRAM_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => p_0_in(0),
      Q => SRAM_cnt(0)
    );
\SRAM_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => p_0_in(1),
      Q => SRAM_cnt(1)
    );
\SRAM_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => p_0_in(2),
      Q => SRAM_cnt(2)
    );
\SRAM_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => p_0_in(3),
      Q => SRAM_cnt(3)
    );
WE_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => write_active_0,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => WE_n_i_1_n_0,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      PRE => write_complete_i_2_n_0,
      Q => WE_n
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \addr_cnt_reg_n_0_[0]\,
      O => \addr_cnt[0]_i_1_n_0\
    );
\addr_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(10),
      O => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(11),
      O => \addr_cnt[11]_i_1_n_0\
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(12),
      O => \addr_cnt[12]_i_1_n_0\
    );
\addr_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(13),
      O => \addr_cnt[13]_i_1_n_0\
    );
\addr_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(14),
      O => \addr_cnt[14]_i_1_n_0\
    );
\addr_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(15),
      O => \addr_cnt[15]_i_1_n_0\
    );
\addr_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(16),
      O => \addr_cnt[16]_i_1_n_0\
    );
\addr_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(17),
      O => \addr_cnt[17]_i_1_n_0\
    );
\addr_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(18),
      O => \addr_cnt[18]_i_1_n_0\
    );
\addr_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(19),
      O => \addr_cnt[19]_i_1_n_0\
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(1),
      O => \addr_cnt[1]_i_1_n_0\
    );
\addr_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(20),
      O => \addr_cnt[20]_i_1_n_0\
    );
\addr_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(21),
      O => \addr_cnt[21]_i_1_n_0\
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(2),
      O => \addr_cnt[2]_i_1_n_0\
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(3),
      O => \addr_cnt[3]_i_1_n_0\
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(4),
      O => \addr_cnt[4]_i_1_n_0\
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(5),
      O => \addr_cnt[5]_i_1_n_0\
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(6),
      O => \addr_cnt[6]_i_1_n_0\
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(7),
      O => \addr_cnt[7]_i_1_n_0\
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(8),
      O => \addr_cnt[8]_i_1_n_0\
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in10(9),
      O => \addr_cnt[9]_i_1_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[0]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[0]\
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[10]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[10]\
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[11]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[11]\
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[12]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[12]\
    );
\addr_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[13]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[13]\
    );
\addr_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[14]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[14]\
    );
\addr_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[15]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[15]\
    );
\addr_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[16]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[16]\
    );
\addr_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[17]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[17]\
    );
\addr_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[18]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[18]\
    );
\addr_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[19]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[19]\
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[1]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[1]\
    );
\addr_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[20]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[20]\
    );
\addr_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[21]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[21]\
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
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
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[3]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[3]\
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[4]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[4]\
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[5]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[5]\
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
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
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[7]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[7]\
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[8]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[8]\
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt[9]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[9]\
    );
\decoder[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => decoder_cnt(0),
      I1 => write_active_0,
      I2 => next_cnt,
      I3 => \^decoder\(0),
      O => \decoder[0]_i_1_n_0\
    );
\decoder[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => decoder_cnt(1),
      I1 => write_active_0,
      I2 => next_cnt,
      I3 => \^decoder\(1),
      O => \decoder[1]_i_1_n_0\
    );
\decoder[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => decoder_cnt(2),
      I1 => write_active_0,
      I2 => next_cnt,
      I3 => \^decoder\(2),
      O => \decoder[2]_i_1_n_0\
    );
\decoder_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => decoder_cnt(0),
      O => plusOp(0)
    );
\decoder_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => decoder_cnt(0),
      I1 => decoder_cnt(1),
      O => plusOp(1)
    );
\decoder_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => decoder_cnt(0),
      I1 => decoder_cnt(1),
      I2 => decoder_cnt(2),
      O => plusOp(2)
    );
\decoder_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => plusOp(0),
      Q => decoder_cnt(0)
    );
\decoder_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => plusOp(1),
      Q => decoder_cnt(1)
    );
\decoder_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \SRAM_cnt[3]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => plusOp(2),
      Q => decoder_cnt(2)
    );
\decoder_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => \decoder[0]_i_1_n_0\,
      Q => \^decoder\(0)
    );
\decoder_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => \decoder[1]_i_1_n_0\,
      Q => \^decoder\(1)
    );
\decoder_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => \decoder[2]_i_1_n_0\,
      Q => \^decoder\(2)
    );
\next_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[0]\,
      O => \next_cnt[0]_i_1_n_0\
    );
\next_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[1]\,
      I3 => \next_cnt_reg_n_0_[0]\,
      O => \next_cnt[1]_i_1_n_0\
    );
\next_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[0]\,
      I3 => \next_cnt_reg_n_0_[1]\,
      O => \next_cnt[2]_i_1_n_0\
    );
\next_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4222"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[1]\,
      I3 => \next_cnt_reg_n_0_[0]\,
      O => \next_cnt[3]_i_1_n_0\
    );
\next_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => write_complete_i_2_n_0,
      D => \next_cnt[0]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[0]\
    );
\next_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => write_complete_i_2_n_0,
      D => \next_cnt[1]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[1]\
    );
\next_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => write_complete_i_2_n_0,
      D => \next_cnt[2]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[2]\
    );
\next_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => write_complete_i_2_n_0,
      D => \next_cnt[3]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[3]\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \addr_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(4 downto 1),
      S(3) => \addr_cnt_reg_n_0_[4]\,
      S(2) => \addr_cnt_reg_n_0_[3]\,
      S(1) => \addr_cnt_reg_n_0_[2]\,
      S(0) => \addr_cnt_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(8 downto 5),
      S(3) => \addr_cnt_reg_n_0_[8]\,
      S(2) => \addr_cnt_reg_n_0_[7]\,
      S(1) => \addr_cnt_reg_n_0_[6]\,
      S(0) => \addr_cnt_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(12 downto 9),
      S(3) => \addr_cnt_reg_n_0_[12]\,
      S(2) => \addr_cnt_reg_n_0_[11]\,
      S(1) => \addr_cnt_reg_n_0_[10]\,
      S(0) => \addr_cnt_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(16 downto 13),
      S(3) => \addr_cnt_reg_n_0_[16]\,
      S(2) => \addr_cnt_reg_n_0_[15]\,
      S(1) => \addr_cnt_reg_n_0_[14]\,
      S(0) => \addr_cnt_reg_n_0_[13]\
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in10(20 downto 17),
      S(3) => \addr_cnt_reg_n_0_[20]\,
      S(2) => \addr_cnt_reg_n_0_[19]\,
      S(1) => \addr_cnt_reg_n_0_[18]\,
      S(0) => \addr_cnt_reg_n_0_[17]\
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => in10(21),
      S(3 downto 1) => B"000",
      S(0) => \addr_cnt_reg_n_0_[21]\
    );
\wait_aftwr_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \wait_aftwr_count_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \wait_aftwr_count_reg_n_0_[3]\,
      I3 => \wait_aftwr_count_reg_n_0_[2]\,
      O => \wait_aftwr_count[0]_i_1_n_0\
    );
\wait_aftwr_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \wait_aftwr_count_reg_n_0_[2]\,
      I2 => \wait_aftwr_count_reg_n_0_[3]\,
      I3 => \wait_aftwr_count_reg_n_0_[1]\,
      I4 => \wait_aftwr_count_reg_n_0_[0]\,
      O => \wait_aftwr_count[1]_i_1_n_0\
    );
\wait_aftwr_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02202020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \wait_aftwr_count_reg_n_0_[3]\,
      I2 => \wait_aftwr_count_reg_n_0_[2]\,
      I3 => \wait_aftwr_count_reg_n_0_[0]\,
      I4 => \wait_aftwr_count_reg_n_0_[1]\,
      O => \wait_aftwr_count[2]_i_1_n_0\
    );
\wait_aftwr_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20080808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \wait_aftwr_count_reg_n_0_[3]\,
      I2 => \wait_aftwr_count_reg_n_0_[2]\,
      I3 => \wait_aftwr_count_reg_n_0_[1]\,
      I4 => \wait_aftwr_count_reg_n_0_[0]\,
      O => \wait_aftwr_count[3]_i_1_n_0\
    );
\wait_aftwr_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => WE_n_i_1_n_0,
      CLR => write_complete_i_2_n_0,
      D => \wait_aftwr_count[0]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[0]\
    );
\wait_aftwr_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => WE_n_i_1_n_0,
      CLR => write_complete_i_2_n_0,
      D => \wait_aftwr_count[1]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[1]\
    );
\wait_aftwr_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => WE_n_i_1_n_0,
      CLR => write_complete_i_2_n_0,
      D => \wait_aftwr_count[2]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[2]\
    );
\wait_aftwr_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => WE_n_i_1_n_0,
      CLR => write_complete_i_2_n_0,
      D => \wait_aftwr_count[3]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[3]\
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F7070"
    )
        port map (
      I0 => \wait_count_reg_n_0_[2]\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => write_active_0,
      I4 => \wait_count_reg_n_0_[0]\,
      O => \wait_count[0]_i_1_n_0\
    );
\wait_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"101F4040"
    )
        port map (
      I0 => \wait_count_reg_n_0_[2]\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => write_active_0,
      I4 => \wait_count_reg_n_0_[1]\,
      O => \wait_count[1]_i_1_n_0\
    );
\wait_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"101F8080"
    )
        port map (
      I0 => \wait_count_reg_n_0_[0]\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => write_active_0,
      I4 => \wait_count_reg_n_0_[2]\,
      O => \wait_count[2]_i_1_n_0\
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
\wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => write_complete_i_2_n_0,
      D => \wait_count[2]_i_1_n_0\,
      Q => \wait_count_reg_n_0_[2]\
    );
write_active_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => WE_n_i_1_n_0,
      CLR => write_complete_i_2_n_0,
      D => write_active_0,
      Q => write_active
    );
write_complete_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFFFAEA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => SRAM_cnt(3),
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => write_active_0,
      I4 => \^write_complete\,
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
\write_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^a\(0),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \write_data[10]_i_1_n_0\
    );
\write_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^a\(0),
      I2 => \write_data[14]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \write_data[11]_i_1_n_0\
    );
\write_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^a\(0),
      I1 => \write_data[14]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \write_data[14]_i_1_n_0\
    );
\write_data[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \write_data[14]_i_3_n_0\,
      I1 => \write_data[14]_i_4_n_0\,
      I2 => \write_data[14]_i_5_n_0\,
      I3 => \write_data[14]_i_6_n_0\,
      I4 => \write_data[14]_i_7_n_0\,
      O => \write_data[14]_i_2_n_0\
    );
\write_data[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \^a\(1),
      I1 => \^a\(21),
      I2 => \^a\(20),
      I3 => \^a\(3),
      I4 => \^a\(2),
      O => \write_data[14]_i_3_n_0\
    );
\write_data[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^a\(12),
      I1 => \^a\(13),
      I2 => \^a\(15),
      I3 => \^a\(14),
      O => \write_data[14]_i_4_n_0\
    );
\write_data[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^a\(17),
      I1 => \^a\(16),
      I2 => \^a\(18),
      I3 => \^a\(19),
      O => \write_data[14]_i_5_n_0\
    );
\write_data[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^a\(8),
      I1 => \^a\(9),
      I2 => \^a\(10),
      I3 => \^a\(11),
      O => \write_data[14]_i_6_n_0\
    );
\write_data[14]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^a\(5),
      I1 => \^a\(4),
      I2 => \^a\(7),
      I3 => \^a\(6),
      O => \write_data[14]_i_7_n_0\
    );
\write_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \write_data[15]_i_3_n_0\,
      I1 => SRAM_cnt(3),
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \write_data[15]_i_1_n_0\
    );
\write_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^a\(0),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \write_data[15]_i_2_n_0\
    );
\write_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_6_n_0\,
      I1 => \FSM_onehot_state[4]_i_5_n_0\,
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \write_data[15]_i_3_n_0\
    );
\write_data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \write_data[10]_i_1_n_0\,
      Q => DQ_o(0)
    );
\write_data_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      D => \write_data[11]_i_1_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => DQ_o(1)
    );
\write_data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      CLR => write_complete_i_2_n_0,
      D => \write_data[14]_i_1_n_0\,
      Q => DQ_o(2)
    );
\write_data_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \write_data[15]_i_1_n_0\,
      D => \write_data[15]_i_2_n_0\,
      PRE => write_complete_i_2_n_0,
      Q => DQ_o(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 is
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
  attribute NotValidForBitStream of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 : entity is "PCB_All_SRAM_Write_8SRAM_100MHZ_1_0,Write_8SRAM_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 : entity is "Write_8SRAM_100MHZ,Vivado 2024.2";
end PCB_All_SRAM_Write_8SRAM_100MHZ_1_0;

architecture STRUCTURE of PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 is
  signal \^dq_o\ : STD_LOGIC_VECTOR ( 13 downto 8 );
  signal \^dq_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DQ_o(15 downto 14) <= \^dq_o\(13 downto 12);
  DQ_o(13 downto 12) <= \^dq_o\(13 downto 12);
  DQ_o(11 downto 10) <= \^dq_o\(9 downto 8);
  DQ_o(9 downto 8) <= \^dq_o\(9 downto 8);
  DQ_o(7 downto 6) <= \^dq_o\(13 downto 12);
  DQ_o(5 downto 4) <= \^dq_o\(13 downto 12);
  DQ_o(3 downto 2) <= \^dq_o\(9 downto 8);
  DQ_o(1 downto 0) <= \^dq_o\(9 downto 8);
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
U0: entity work.PCB_All_SRAM_Write_8SRAM_100MHZ_1_0_Write_8SRAM_100MHZ
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_o(3 downto 2) => \^dq_o\(13 downto 12),
      DQ_o(1 downto 0) => \^dq_o\(9 downto 8),
      DQ_t(0) => \^dq_t\(0),
      WE_n => WE_n,
      decoder(2 downto 0) => decoder(2 downto 0),
      reset_n => reset_n,
      sysclk => sysclk,
      write_complete => write_complete
    );
end STRUCTURE;

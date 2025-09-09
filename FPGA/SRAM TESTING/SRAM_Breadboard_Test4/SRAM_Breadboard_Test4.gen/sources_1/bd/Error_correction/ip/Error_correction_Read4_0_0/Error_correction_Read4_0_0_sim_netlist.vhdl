-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep  9 12:38:50 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadboard_Test4/SRAM_Breadboard_Test4.gen/sources_1/bd/Error_correction/ip/Error_correction_Read4_0_0/Error_correction_Read4_0_0_sim_netlist.vhdl}
-- Design      : Error_correction_Read4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Error_correction_Read4_0_0_Read4 is
  port (
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_complete : out STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_n : in STD_LOGIC;
    write_complete : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Error_correction_Read4_0_0_Read4 : entity is "Read4";
end Error_correction_Read4_0_0_Read4;

architecture STRUCTURE of Error_correction_Read4_0_0_Read4 is
  signal \A[21]_i_1_n_0\ : STD_LOGIC;
  signal \A_buf[15]_i_1_n_0\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[15]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[9]\ : STD_LOGIC;
  signal \^dq_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal TX_done_prev_i_1_n_0 : STD_LOGIC;
  signal TX_done_prev_i_2_n_0 : STD_LOGIC;
  signal TX_done_prev_reg_n_0 : STD_LOGIC;
  signal \^we_n\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal addr_cnt : STD_LOGIC;
  signal \addr_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal addr_cnt_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \addr_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal bitflip_flag_i_1_n_0 : STD_LOGIC;
  signal bitflip_flag_i_2_n_0 : STD_LOGIC;
  signal bitflip_flag_reg_n_0 : STD_LOGIC;
  signal data_buf0 : STD_LOGIC;
  signal \data_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_buf_reg_n_0_[9]\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mess_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mess_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mess_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \mess_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \mess_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \mess_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \mess_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \^o_tx_dv\ : STD_LOGIC;
  signal o_TX_DV_i_1_n_0 : STD_LOGIC;
  signal o_TX_DV_i_2_n_0 : STD_LOGIC;
  signal o_TX_DV_i_3_n_0 : STD_LOGIC;
  signal o_TX_DV_i_4_n_0 : STD_LOGIC;
  signal o_TX_DV_i_5_n_0 : STD_LOGIC;
  signal o_TX_data0 : STD_LOGIC;
  signal \o_TX_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_TX_data[7]_i_5_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^read_complete\ : STD_LOGIC;
  signal read_complete_i_1_n_0 : STD_LOGIC;
  signal read_complete_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal write_active : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  signal \NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_4\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "next_addr:0101,data_validation:0011,read_capture:0010,done:0110,read:0001,read_start:0000,write_fix_finish:1010,write_fix_start:1000,write_fix:1001,send_data:0100,send_data_and_addr:0111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "next_addr:0101,data_validation:0011,read_capture:0010,done:0110,read:0001,read_start:0000,write_fix_finish:1010,write_fix_start:1000,write_fix:1001,send_data:0100,send_data_and_addr:0111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "next_addr:0101,data_validation:0011,read_capture:0010,done:0110,read:0001,read_start:0000,write_fix_finish:1010,write_fix_start:1000,write_fix:1001,send_data:0100,send_data_and_addr:0111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "next_addr:0101,data_validation:0011,read_capture:0010,done:0110,read:0001,read_start:0000,write_fix_finish:1010,write_fix_start:1000,write_fix:1001,send_data:0100,send_data_and_addr:0111";
  attribute SOFT_HLUTNM of TX_done_prev_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of WE_n_i_1 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of bitflip_flag_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mess_cnt[1]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of o_TX_DV_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_TX_DV_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_TX_data[7]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of read_complete_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair3";
begin
  DQ_o(15 downto 0) <= \^dq_o\(15 downto 0);
  WE_n <= \^we_n\;
  o_TX_DV <= \^o_tx_dv\;
  read_complete <= \^read_complete\;
\A[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \A[21]_i_1_n_0\
    );
\A_buf[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      O => \A_buf[15]_i_1_n_0\
    );
\A_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(0),
      Q => \A_buf_reg_n_0_[0]\
    );
\A_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(10),
      Q => \A_buf_reg_n_0_[10]\
    );
\A_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(11),
      Q => \A_buf_reg_n_0_[11]\
    );
\A_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(12),
      Q => \A_buf_reg_n_0_[12]\
    );
\A_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(13),
      Q => \A_buf_reg_n_0_[13]\
    );
\A_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(14),
      Q => \A_buf_reg_n_0_[14]\
    );
\A_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(15),
      Q => \A_buf_reg_n_0_[15]\
    );
\A_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(1),
      Q => \A_buf_reg_n_0_[1]\
    );
\A_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(2),
      Q => \A_buf_reg_n_0_[2]\
    );
\A_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(3),
      Q => \A_buf_reg_n_0_[3]\
    );
\A_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(4),
      Q => \A_buf_reg_n_0_[4]\
    );
\A_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(5),
      Q => \A_buf_reg_n_0_[5]\
    );
\A_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(6),
      Q => \A_buf_reg_n_0_[6]\
    );
\A_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(7),
      Q => \A_buf_reg_n_0_[7]\
    );
\A_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(8),
      Q => \A_buf_reg_n_0_[8]\
    );
\A_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A_buf[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(9),
      Q => \A_buf_reg_n_0_[9]\
    );
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(0),
      Q => A(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(10),
      Q => A(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(11),
      Q => A(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(12),
      Q => A(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(13),
      Q => A(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(14),
      Q => A(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(15),
      Q => A(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(16),
      Q => A(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(17),
      Q => A(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(18),
      Q => A(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(19),
      Q => A(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(1),
      Q => A(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(20),
      Q => A(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(21),
      Q => A(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(2),
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(3),
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(4),
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(5),
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(6),
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(7),
      Q => A(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(8),
      Q => A(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt_reg(9),
      Q => A(9)
    );
CE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      D => '0',
      PRE => read_complete_i_2_n_0,
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
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000110000FF55FA"
    )
        port map (
      I0 => state(2),
      I1 => bitflip_flag_reg_n_0,
      I2 => write_complete,
      I3 => state(1),
      I4 => state(3),
      I5 => state(0),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3A0A"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1F00F0001F00F0"
    )
        port map (
      I0 => bitflip_flag_reg_n_0,
      I1 => \state1_carry__0_n_2\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => \FSM_sequential_state[2]_i_2_n_0\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006244"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(0),
      I4 => state(3),
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_cnt_reg(21),
      I1 => addr_cnt_reg(20),
      I2 => addr_cnt_reg(17),
      I3 => addr_cnt_reg(16),
      I4 => addr_cnt_reg(19),
      I5 => addr_cnt_reg(18),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(6),
      I1 => addr_cnt_reg(7),
      I2 => addr_cnt_reg(4),
      I3 => addr_cnt_reg(5),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(2),
      I1 => addr_cnt_reg(3),
      I2 => addr_cnt_reg(0),
      I3 => addr_cnt_reg(1),
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(14),
      I1 => addr_cnt_reg(15),
      I2 => addr_cnt_reg(12),
      I3 => addr_cnt_reg(13),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(10),
      I1 => addr_cnt_reg(11),
      I2 => addr_cnt_reg(8),
      I3 => addr_cnt_reg(9),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1555"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      I4 => \FSM_sequential_state[3]_i_3_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B3322222"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \mess_cnt_reg_n_0_[1]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \FSM_sequential_state[3]_i_4_n_0\,
      I5 => state(3),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_TX_done,
      I1 => TX_done_prev_reg_n_0,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_sequential_state[3]_i_2_n_0\,
      Q => state(3)
    );
TX_done_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => i_TX_done,
      I1 => state(3),
      I2 => TX_done_prev_i_2_n_0,
      I3 => TX_done_prev_reg_n_0,
      O => TX_done_prev_i_1_n_0
    );
TX_done_prev_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400000000004440"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => \mess_cnt_reg_n_0_[0]\,
      I3 => \mess_cnt_reg_n_0_[1]\,
      I4 => state(1),
      I5 => state(0),
      O => TX_done_prev_i_2_n_0
    );
TX_done_prev_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => TX_done_prev_i_1_n_0,
      PRE => read_complete_i_2_n_0,
      Q => TX_done_prev_reg_n_0
    );
WE_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0009"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      I4 => \^we_n\,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => WE_n_i_1_n_0,
      PRE => read_complete_i_2_n_0,
      Q => \^we_n\
    );
\addr_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_cnt_reg(0),
      O => \addr_cnt[0]_i_2_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[0]_i_1_n_7\,
      Q => addr_cnt_reg(0)
    );
\addr_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_cnt_reg[0]_i_1_n_0\,
      CO(2) => \addr_cnt_reg[0]_i_1_n_1\,
      CO(1) => \addr_cnt_reg[0]_i_1_n_2\,
      CO(0) => \addr_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \addr_cnt_reg[0]_i_1_n_4\,
      O(2) => \addr_cnt_reg[0]_i_1_n_5\,
      O(1) => \addr_cnt_reg[0]_i_1_n_6\,
      O(0) => \addr_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => addr_cnt_reg(3 downto 1),
      S(0) => \addr_cnt[0]_i_2_n_0\
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[8]_i_1_n_5\,
      Q => addr_cnt_reg(10)
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[8]_i_1_n_4\,
      Q => addr_cnt_reg(11)
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[12]_i_1_n_7\,
      Q => addr_cnt_reg(12)
    );
\addr_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[8]_i_1_n_0\,
      CO(3) => \addr_cnt_reg[12]_i_1_n_0\,
      CO(2) => \addr_cnt_reg[12]_i_1_n_1\,
      CO(1) => \addr_cnt_reg[12]_i_1_n_2\,
      CO(0) => \addr_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_cnt_reg[12]_i_1_n_4\,
      O(2) => \addr_cnt_reg[12]_i_1_n_5\,
      O(1) => \addr_cnt_reg[12]_i_1_n_6\,
      O(0) => \addr_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => addr_cnt_reg(15 downto 12)
    );
\addr_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[12]_i_1_n_6\,
      Q => addr_cnt_reg(13)
    );
\addr_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[12]_i_1_n_5\,
      Q => addr_cnt_reg(14)
    );
\addr_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[12]_i_1_n_4\,
      Q => addr_cnt_reg(15)
    );
\addr_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[16]_i_1_n_7\,
      Q => addr_cnt_reg(16)
    );
\addr_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[12]_i_1_n_0\,
      CO(3) => \addr_cnt_reg[16]_i_1_n_0\,
      CO(2) => \addr_cnt_reg[16]_i_1_n_1\,
      CO(1) => \addr_cnt_reg[16]_i_1_n_2\,
      CO(0) => \addr_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_cnt_reg[16]_i_1_n_4\,
      O(2) => \addr_cnt_reg[16]_i_1_n_5\,
      O(1) => \addr_cnt_reg[16]_i_1_n_6\,
      O(0) => \addr_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => addr_cnt_reg(19 downto 16)
    );
\addr_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[16]_i_1_n_6\,
      Q => addr_cnt_reg(17)
    );
\addr_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[16]_i_1_n_5\,
      Q => addr_cnt_reg(18)
    );
\addr_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[16]_i_1_n_4\,
      Q => addr_cnt_reg(19)
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[0]_i_1_n_6\,
      Q => addr_cnt_reg(1)
    );
\addr_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[20]_i_1_n_7\,
      Q => addr_cnt_reg(20)
    );
\addr_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addr_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \addr_cnt_reg[20]_i_1_n_6\,
      O(0) => \addr_cnt_reg[20]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => addr_cnt_reg(21 downto 20)
    );
\addr_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[20]_i_1_n_6\,
      Q => addr_cnt_reg(21)
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[0]_i_1_n_5\,
      Q => addr_cnt_reg(2)
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[0]_i_1_n_4\,
      Q => addr_cnt_reg(3)
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[4]_i_1_n_7\,
      Q => addr_cnt_reg(4)
    );
\addr_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[0]_i_1_n_0\,
      CO(3) => \addr_cnt_reg[4]_i_1_n_0\,
      CO(2) => \addr_cnt_reg[4]_i_1_n_1\,
      CO(1) => \addr_cnt_reg[4]_i_1_n_2\,
      CO(0) => \addr_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_cnt_reg[4]_i_1_n_4\,
      O(2) => \addr_cnt_reg[4]_i_1_n_5\,
      O(1) => \addr_cnt_reg[4]_i_1_n_6\,
      O(0) => \addr_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => addr_cnt_reg(7 downto 4)
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[4]_i_1_n_6\,
      Q => addr_cnt_reg(5)
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[4]_i_1_n_5\,
      Q => addr_cnt_reg(6)
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[4]_i_1_n_4\,
      Q => addr_cnt_reg(7)
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[8]_i_1_n_7\,
      Q => addr_cnt_reg(8)
    );
\addr_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[4]_i_1_n_0\,
      CO(3) => \addr_cnt_reg[8]_i_1_n_0\,
      CO(2) => \addr_cnt_reg[8]_i_1_n_1\,
      CO(1) => \addr_cnt_reg[8]_i_1_n_2\,
      CO(0) => \addr_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_cnt_reg[8]_i_1_n_4\,
      O(2) => \addr_cnt_reg[8]_i_1_n_5\,
      O(1) => \addr_cnt_reg[8]_i_1_n_6\,
      O(0) => \addr_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => addr_cnt_reg(11 downto 8)
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg[8]_i_1_n_6\,
      Q => addr_cnt_reg(9)
    );
bitflip_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFF00040000"
    )
        port map (
      I0 => state(3),
      I1 => bitflip_flag_i_2_n_0,
      I2 => state(2),
      I3 => \state1_carry__0_n_2\,
      I4 => reset_n,
      I5 => bitflip_flag_reg_n_0,
      O => bitflip_flag_i_1_n_0
    );
bitflip_flag_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => bitflip_flag_i_2_n_0
    );
bitflip_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => bitflip_flag_i_1_n_0,
      Q => bitflip_flag_reg_n_0,
      R => '0'
    );
\data_buf[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => reset_n,
      I1 => state(0),
      I2 => state(1),
      I3 => state(3),
      I4 => state(2),
      O => data_buf0
    );
\data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(0),
      Q => \data_buf_reg_n_0_[0]\,
      R => '0'
    );
\data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(10),
      Q => \data_buf_reg_n_0_[10]\,
      R => '0'
    );
\data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(11),
      Q => \data_buf_reg_n_0_[11]\,
      R => '0'
    );
\data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(12),
      Q => \data_buf_reg_n_0_[12]\,
      R => '0'
    );
\data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(13),
      Q => \data_buf_reg_n_0_[13]\,
      R => '0'
    );
\data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(14),
      Q => \data_buf_reg_n_0_[14]\,
      R => '0'
    );
\data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(15),
      Q => \data_buf_reg_n_0_[15]\,
      R => '0'
    );
\data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(1),
      Q => \data_buf_reg_n_0_[1]\,
      R => '0'
    );
\data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(2),
      Q => \data_buf_reg_n_0_[2]\,
      R => '0'
    );
\data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(3),
      Q => \data_buf_reg_n_0_[3]\,
      R => '0'
    );
\data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(4),
      Q => \data_buf_reg_n_0_[4]\,
      R => '0'
    );
\data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(5),
      Q => \data_buf_reg_n_0_[5]\,
      R => '0'
    );
\data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(6),
      Q => \data_buf_reg_n_0_[6]\,
      R => '0'
    );
\data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(7),
      Q => \data_buf_reg_n_0_[7]\,
      R => '0'
    );
\data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(8),
      Q => \data_buf_reg_n_0_[8]\,
      R => '0'
    );
\data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(9),
      Q => \data_buf_reg_n_0_[9]\,
      R => '0'
    );
\data_exp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(0),
      O => p_1_in(0)
    );
\data_exp[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(10),
      O => p_1_in(10)
    );
\data_exp[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(11),
      O => p_1_in(11)
    );
\data_exp[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(12),
      O => p_1_in(12)
    );
\data_exp[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(13),
      O => p_1_in(13)
    );
\data_exp[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(14),
      O => p_1_in(14)
    );
\data_exp[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => addr_cnt
    );
\data_exp[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(15),
      O => p_1_in(15)
    );
\data_exp[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(1),
      O => p_1_in(1)
    );
\data_exp[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(2),
      O => p_1_in(2)
    );
\data_exp[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(3),
      O => p_1_in(3)
    );
\data_exp[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(4),
      O => p_1_in(4)
    );
\data_exp[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(5),
      O => p_1_in(5)
    );
\data_exp[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(6),
      O => p_1_in(6)
    );
\data_exp[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(7),
      O => p_1_in(7)
    );
\data_exp[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(8),
      O => p_1_in(8)
    );
\data_exp[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(9),
      O => p_1_in(9)
    );
\data_exp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(0),
      Q => \^dq_o\(0)
    );
\data_exp_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(10),
      Q => \^dq_o\(10)
    );
\data_exp_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(11),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(11)
    );
\data_exp_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(12),
      Q => \^dq_o\(12)
    );
\data_exp_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(13),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(13)
    );
\data_exp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(14),
      Q => \^dq_o\(14)
    );
\data_exp_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(15),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(15)
    );
\data_exp_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(1),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(1)
    );
\data_exp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(2),
      Q => \^dq_o\(2)
    );
\data_exp_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(3),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(3)
    );
\data_exp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(4),
      Q => \^dq_o\(4)
    );
\data_exp_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(5),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(5)
    );
\data_exp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(6),
      Q => \^dq_o\(6)
    );
\data_exp_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(7),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(7)
    );
\data_exp_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(8),
      Q => \^dq_o\(8)
    );
\data_exp_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_1_in(9),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(9)
    );
\mess_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mess_cnt(0),
      I1 => \mess_cnt[1]_i_2_n_0\,
      I2 => \mess_cnt_reg_n_0_[0]\,
      O => \mess_cnt[0]_i_1_n_0\
    );
\mess_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000004F0C0C"
    )
        port map (
      I0 => TX_done_prev_reg_n_0,
      I1 => state(0),
      I2 => \mess_cnt_reg_n_0_[1]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => i_TX_done,
      I5 => state(3),
      O => mess_cnt(0)
    );
\mess_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044FFFF40000000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => i_TX_done,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt[1]_i_2_n_0\,
      I5 => \mess_cnt_reg_n_0_[1]\,
      O => \mess_cnt[1]_i_1_n_0\
    );
\mess_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8088888820202022"
    )
        port map (
      I0 => \mess_cnt[1]_i_3_n_0\,
      I1 => state(1),
      I2 => \FSM_sequential_state[3]_i_4_n_0\,
      I3 => \mess_cnt_reg_n_0_[1]\,
      I4 => \mess_cnt_reg_n_0_[0]\,
      I5 => state(0),
      O => \mess_cnt[1]_i_2_n_0\
    );
\mess_cnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \mess_cnt[1]_i_3_n_0\
    );
\mess_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => \mess_cnt[0]_i_1_n_0\,
      Q => \mess_cnt_reg_n_0_[0]\
    );
\mess_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => \mess_cnt[1]_i_1_n_0\,
      Q => \mess_cnt_reg_n_0_[1]\
    );
o_TX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055FF7F00550040"
    )
        port map (
      I0 => o_TX_DV_i_2_n_0,
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => o_TX_DV_i_3_n_0,
      I5 => \^o_tx_dv\,
      O => o_TX_DV_i_1_n_0
    );
o_TX_DV_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555511555155"
    )
        port map (
      I0 => o_TX_DV_i_4_n_0,
      I1 => state(2),
      I2 => TX_done_prev_reg_n_0,
      I3 => i_TX_done,
      I4 => \o_TX_data[7]_i_5_n_0\,
      I5 => state(0),
      O => o_TX_DV_i_2_n_0
    );
o_TX_DV_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554FFFF00000000"
    )
        port map (
      I0 => state(3),
      I1 => i_TX_done,
      I2 => \mess_cnt_reg_n_0_[0]\,
      I3 => \mess_cnt_reg_n_0_[1]\,
      I4 => state(2),
      I5 => o_TX_DV_i_5_n_0,
      O => o_TX_DV_i_3_n_0
    );
o_TX_DV_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2A0A2"
    )
        port map (
      I0 => state(1),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => i_TX_done,
      I3 => \mess_cnt_reg_n_0_[1]\,
      I4 => TX_done_prev_reg_n_0,
      O => o_TX_DV_i_4_n_0
    );
o_TX_DV_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => o_TX_DV_i_5_n_0
    );
o_TX_DV_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => o_TX_DV_i_1_n_0,
      Q => \^o_tx_dv\
    );
\o_TX_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(0),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[0]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[8]\,
      O => \o_TX_data[0]_i_1_n_0\
    );
\o_TX_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[0]\,
      I1 => \A_buf_reg_n_0_[8]\,
      I2 => \data_buf_reg_n_0_[0]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[8]\,
      O => in12(0)
    );
\o_TX_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(1),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[1]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[9]\,
      O => \o_TX_data[1]_i_1_n_0\
    );
\o_TX_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[1]\,
      I1 => \A_buf_reg_n_0_[9]\,
      I2 => \data_buf_reg_n_0_[1]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[9]\,
      O => in12(1)
    );
\o_TX_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(2),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[2]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[10]\,
      O => \o_TX_data[2]_i_1_n_0\
    );
\o_TX_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[2]\,
      I1 => \A_buf_reg_n_0_[10]\,
      I2 => \data_buf_reg_n_0_[2]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[10]\,
      O => in12(2)
    );
\o_TX_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(3),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[3]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[11]\,
      O => \o_TX_data[3]_i_1_n_0\
    );
\o_TX_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[3]\,
      I1 => \A_buf_reg_n_0_[11]\,
      I2 => \data_buf_reg_n_0_[3]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[11]\,
      O => in12(3)
    );
\o_TX_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(4),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[4]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[12]\,
      O => \o_TX_data[4]_i_1_n_0\
    );
\o_TX_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[4]\,
      I1 => \A_buf_reg_n_0_[12]\,
      I2 => \data_buf_reg_n_0_[4]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[12]\,
      O => in12(4)
    );
\o_TX_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(5),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[5]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[13]\,
      O => \o_TX_data[5]_i_1_n_0\
    );
\o_TX_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[5]\,
      I1 => \A_buf_reg_n_0_[13]\,
      I2 => \data_buf_reg_n_0_[5]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[13]\,
      O => in12(5)
    );
\o_TX_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(6),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[6]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[14]\,
      O => \o_TX_data[6]_i_1_n_0\
    );
\o_TX_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[6]\,
      I1 => \A_buf_reg_n_0_[14]\,
      I2 => \data_buf_reg_n_0_[6]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[14]\,
      O => in12(6)
    );
\o_TX_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => reset_n,
      I1 => \o_TX_data[7]_i_3_n_0\,
      I2 => state(2),
      I3 => state(3),
      O => o_TX_data0
    );
\o_TX_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => in12(7),
      I1 => state(0),
      I2 => \data_buf_reg_n_0_[7]\,
      I3 => \o_TX_data[7]_i_5_n_0\,
      I4 => \data_buf_reg_n_0_[15]\,
      O => \o_TX_data[7]_i_2_n_0\
    );
\o_TX_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A020AA10101050"
    )
        port map (
      I0 => state(0),
      I1 => TX_done_prev_reg_n_0,
      I2 => i_TX_done,
      I3 => \mess_cnt_reg_n_0_[1]\,
      I4 => \mess_cnt_reg_n_0_[0]\,
      I5 => state(1),
      O => \o_TX_data[7]_i_3_n_0\
    );
\o_TX_data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \A_buf_reg_n_0_[7]\,
      I1 => \A_buf_reg_n_0_[15]\,
      I2 => \data_buf_reg_n_0_[7]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => \mess_cnt_reg_n_0_[1]\,
      I5 => \data_buf_reg_n_0_[15]\,
      O => in12(7)
    );
\o_TX_data[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mess_cnt_reg_n_0_[0]\,
      I1 => \mess_cnt_reg_n_0_[1]\,
      O => \o_TX_data[7]_i_5_n_0\
    );
\o_TX_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[0]_i_1_n_0\,
      Q => o_TX_data(0),
      R => '0'
    );
\o_TX_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[1]_i_1_n_0\,
      Q => o_TX_data(1),
      R => '0'
    );
\o_TX_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[2]_i_1_n_0\,
      Q => o_TX_data(2),
      R => '0'
    );
\o_TX_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[3]_i_1_n_0\,
      Q => o_TX_data(3),
      R => '0'
    );
\o_TX_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[4]_i_1_n_0\,
      Q => o_TX_data(4),
      R => '0'
    );
\o_TX_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[5]_i_1_n_0\,
      Q => o_TX_data(5),
      R => '0'
    );
\o_TX_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[6]_i_1_n_0\,
      Q => o_TX_data(6),
      R => '0'
    );
\o_TX_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => \o_TX_data[7]_i_2_n_0\,
      Q => o_TX_data(7),
      R => '0'
    );
read_complete_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0040"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      I4 => \^read_complete\,
      O => read_complete_i_1_n_0
    );
read_complete_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => read_complete_i_2_n_0
    );
read_complete_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => read_complete_i_1_n_0,
      Q => \^read_complete\
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_1_n_0,
      S(2) => state1_carry_i_2_n_0,
      S(1) => state1_carry_i_3_n_0,
      S(0) => state1_carry_i_4_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3 downto 2) => \NLW_state1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \state1_carry__0_i_1_n_0\,
      S(0) => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^dq_o\(15),
      I1 => \data_buf_reg_n_0_[15]\,
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \data_buf_reg_n_0_[12]\,
      I1 => \^dq_o\(12),
      I2 => \^dq_o\(14),
      I3 => \data_buf_reg_n_0_[14]\,
      I4 => \^dq_o\(13),
      I5 => \data_buf_reg_n_0_[13]\,
      O => \state1_carry__0_i_2_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \data_buf_reg_n_0_[9]\,
      I1 => \^dq_o\(9),
      I2 => \^dq_o\(11),
      I3 => \data_buf_reg_n_0_[11]\,
      I4 => \^dq_o\(10),
      I5 => \data_buf_reg_n_0_[10]\,
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \data_buf_reg_n_0_[6]\,
      I1 => \^dq_o\(6),
      I2 => \^dq_o\(8),
      I3 => \data_buf_reg_n_0_[8]\,
      I4 => \^dq_o\(7),
      I5 => \data_buf_reg_n_0_[7]\,
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \data_buf_reg_n_0_[3]\,
      I1 => \^dq_o\(3),
      I2 => \^dq_o\(5),
      I3 => \data_buf_reg_n_0_[5]\,
      I4 => \^dq_o\(4),
      I5 => \data_buf_reg_n_0_[4]\,
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \data_buf_reg_n_0_[0]\,
      I1 => \^dq_o\(0),
      I2 => \^dq_o\(2),
      I3 => \data_buf_reg_n_0_[2]\,
      I4 => \^dq_o\(1),
      I5 => \data_buf_reg_n_0_[1]\,
      O => state1_carry_i_4_n_0
    );
write_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF60004"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      I4 => write_active,
      O => write_active_i_1_n_0
    );
write_active_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => write_active_i_1_n_0,
      Q => write_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Error_correction_Read4_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    read_complete : out STD_LOGIC;
    write_complete : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Error_correction_Read4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Error_correction_Read4_0_0 : entity is "Error_correction_Read4_0_0,Read4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Error_correction_Read4_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Error_correction_Read4_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Error_correction_Read4_0_0 : entity is "Read4,Vivado 2024.2";
end Error_correction_Read4_0_0;

architecture STRUCTURE of Error_correction_Read4_0_0 is
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
U0: entity work.Error_correction_Read4_0_0_Read4
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(0) => \^dq_t\(0),
      WE_n => WE_n,
      i_TX_done => i_TX_done,
      o_TX_DV => o_TX_DV,
      o_TX_data(7 downto 0) => o_TX_data(7 downto 0),
      read_complete => read_complete,
      reset_n => reset_n,
      sysclk => sysclk,
      write_complete => write_complete
    );
end STRUCTURE;

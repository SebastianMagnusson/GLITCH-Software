-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Sep  4 14:18:40 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadbord_Test_2/SRAM_Breadbord_Test_2.gen/sources_1/bd/Alg_Test1/ip/Alg_Test1_Write_All_Adresses_0_0/Alg_Test1_Write_All_Adresses_0_0_sim_netlist.vhdl}
-- Design      : Alg_Test1_Write_All_Adresses_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses is
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
  attribute ORIG_REF_NAME of Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses : entity is "Write_All_Adresses";
end Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses;

architecture STRUCTURE of Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses is
  signal \^dq_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal write_active : STD_LOGIC;
  signal write_active_0 : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  signal \^write_complete\ : STD_LOGIC;
  signal write_complete_i_1_n_0 : STD_LOGIC;
  signal write_complete_i_2_n_0 : STD_LOGIC;
  signal \NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of write_complete_i_1 : label is "soft_lutpair0";
begin
  DQ_o(15 downto 0) <= \^dq_o\(15 downto 0);
  WE_n <= \^we_n\;
  write_complete <= \^write_complete\;
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(0),
      Q => A(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(10),
      Q => A(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(11),
      Q => A(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(12),
      Q => A(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(13),
      Q => A(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(14),
      Q => A(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(15),
      Q => A(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(16),
      Q => A(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(17),
      Q => A(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(18),
      Q => A(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(19),
      Q => A(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(1),
      Q => A(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(20),
      Q => A(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(21),
      Q => A(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(2),
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(3),
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(4),
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(5),
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(6),
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(7),
      Q => A(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(8),
      Q => A(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => write_active_0,
      CLR => write_complete_i_2_n_0,
      D => addr_cnt_reg(9),
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
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => addr_cnt,
      I1 => \FSM_onehot_state[4]_i_3_n_0\,
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      I3 => \FSM_onehot_state[4]_i_5_n_0\,
      I4 => \FSM_onehot_state[4]_i_6_n_0\,
      I5 => \FSM_onehot_state[4]_i_7_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => addr_cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => write_active_0,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => addr_cnt,
      I1 => \FSM_onehot_state[4]_i_3_n_0\,
      I2 => \FSM_onehot_state[4]_i_4_n_0\,
      I3 => \FSM_onehot_state[4]_i_5_n_0\,
      I4 => \FSM_onehot_state[4]_i_6_n_0\,
      I5 => \FSM_onehot_state[4]_i_7_n_0\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(10),
      I1 => addr_cnt_reg(11),
      I2 => addr_cnt_reg(8),
      I3 => addr_cnt_reg(9),
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(14),
      I1 => addr_cnt_reg(15),
      I2 => addr_cnt_reg(12),
      I3 => addr_cnt_reg(13),
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(2),
      I1 => addr_cnt_reg(3),
      I2 => addr_cnt_reg(0),
      I3 => addr_cnt_reg(1),
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt_reg(6),
      I1 => addr_cnt_reg(7),
      I2 => addr_cnt_reg(4),
      I3 => addr_cnt_reg(5),
      O => \FSM_onehot_state[4]_i_6_n_0\
    );
\FSM_onehot_state[4]_i_7\: unisim.vcomponents.LUT6
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
      O => \FSM_onehot_state[4]_i_7_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
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
      Q => addr_cnt
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
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
      CLR => write_complete_i_2_n_0,
      D => \addr_cnt_reg[8]_i_1_n_6\,
      Q => addr_cnt_reg(9)
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
\write_data[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(0),
      O => p_0_in(0)
    );
\write_data[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(10),
      O => p_0_in(10)
    );
\write_data[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(11),
      O => p_0_in(11)
    );
\write_data[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(12),
      O => p_0_in(12)
    );
\write_data[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(13),
      O => p_0_in(13)
    );
\write_data[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(14),
      O => p_0_in(14)
    );
\write_data[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(15),
      O => p_0_in(15)
    );
\write_data[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(1),
      O => p_0_in(1)
    );
\write_data[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(2),
      O => p_0_in(2)
    );
\write_data[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(3),
      O => p_0_in(3)
    );
\write_data[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(4),
      O => p_0_in(4)
    );
\write_data[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(5),
      O => p_0_in(5)
    );
\write_data[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(6),
      O => p_0_in(6)
    );
\write_data[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(7),
      O => p_0_in(7)
    );
\write_data[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(8),
      O => p_0_in(8)
    );
\write_data[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(9),
      O => p_0_in(9)
    );
\write_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      CLR => write_complete_i_2_n_0,
      D => p_0_in(0),
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
      D => p_0_in(10),
      Q => \^dq_o\(10)
    );
\write_data_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(11),
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
      D => p_0_in(12),
      Q => \^dq_o\(12)
    );
\write_data_reg[13]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(13),
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
      D => p_0_in(14),
      Q => \^dq_o\(14)
    );
\write_data_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(15),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
      Q => \^dq_o\(2)
    );
\write_data_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(3),
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
      D => p_0_in(4),
      Q => \^dq_o\(4)
    );
\write_data_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(5),
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
      D => p_0_in(6),
      Q => \^dq_o\(6)
    );
\write_data_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(7),
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
      D => p_0_in(8),
      Q => \^dq_o\(8)
    );
\write_data_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => addr_cnt,
      D => p_0_in(9),
      PRE => write_complete_i_2_n_0,
      Q => \^dq_o\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Alg_Test1_Write_All_Adresses_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    write_complete : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Alg_Test1_Write_All_Adresses_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Alg_Test1_Write_All_Adresses_0_0 : entity is "Alg_Test1_Write_All_Adresses_0_0,Write_All_Adresses,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Alg_Test1_Write_All_Adresses_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Alg_Test1_Write_All_Adresses_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Alg_Test1_Write_All_Adresses_0_0 : entity is "Write_All_Adresses,Vivado 2024.2";
end Alg_Test1_Write_All_Adresses_0_0;

architecture STRUCTURE of Alg_Test1_Write_All_Adresses_0_0 is
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
U0: entity work.Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses
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

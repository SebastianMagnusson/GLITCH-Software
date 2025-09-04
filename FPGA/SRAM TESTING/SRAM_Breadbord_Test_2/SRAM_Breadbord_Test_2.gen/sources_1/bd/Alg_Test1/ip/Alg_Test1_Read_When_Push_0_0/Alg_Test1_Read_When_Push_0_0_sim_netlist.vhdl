-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Sep  4 15:07:47 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadbord_Test_2/SRAM_Breadbord_Test_2.gen/sources_1/bd/Alg_Test1/ip/Alg_Test1_Read_When_Push_0_0/Alg_Test1_Read_When_Push_0_0_sim_netlist.vhdl}
-- Design      : Alg_Test1_Read_When_Push_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Alg_Test1_Read_When_Push_0_0_Read_When_Push is
  port (
    WE_n : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    o_TX_DV : out STD_LOGIC;
    CE_n : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_TX_done : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Alg_Test1_Read_When_Push_0_0_Read_When_Push : entity is "Read_When_Push";
end Alg_Test1_Read_When_Push_0_0_Read_When_Push;

architecture STRUCTURE of Alg_Test1_Read_When_Push_0_0_Read_When_Push is
  signal \A[21]_i_1_n_0\ : STD_LOGIC;
  signal \^ce_n\ : STD_LOGIC;
  signal CE_n_i_1_n_0 : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal addr_cnt_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \addr_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \addr_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
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
  signal btn1_prev : STD_LOGIC;
  signal btn1_prev_i_1_n_0 : STD_LOGIC;
  signal btn1_prev_reg_n_0 : STD_LOGIC;
  signal data_buf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_buf0 : STD_LOGIC;
  signal data_buf_0 : STD_LOGIC;
  signal \mess_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mess_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \^o_tx_dv\ : STD_LOGIC;
  signal o_TX_DV_i_1_n_0 : STD_LOGIC;
  signal o_TX_data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of WE_n_reg : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of WE_n_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of WE_n_reg : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \addr_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_TX_data[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_TX_data[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_TX_data[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_TX_data[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_TX_data[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_TX_data[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_TX_data[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_TX_data[7]_i_2\ : label is "soft_lutpair3";
begin
  CE_n <= \^ce_n\;
  o_TX_DV <= \^o_tx_dv\;
\A[21]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \A[21]_i_1_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(0),
      Q => A(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(10),
      Q => A(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(11),
      Q => A(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(12),
      Q => A(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(13),
      Q => A(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(14),
      Q => A(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(15),
      Q => A(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(16),
      Q => A(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(17),
      Q => A(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(18),
      Q => A(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(19),
      Q => A(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(1),
      Q => A(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(20),
      Q => A(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(21),
      Q => A(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(2),
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(3),
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(4),
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(5),
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(6),
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(7),
      Q => A(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(8),
      Q => A(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \FSM_onehot_state_reg_n_0_[1]\,
      CLR => \A[21]_i_1_n_0\,
      D => addr_cnt_reg(9),
      Q => A(9)
    );
CE_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => btn1_prev,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^ce_n\,
      O => CE_n_i_1_n_0
    );
CE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => CE_n_i_1_n_0,
      PRE => \A[21]_i_1_n_0\,
      Q => \^ce_n\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => btn1,
      I2 => btn1_prev_reg_n_0,
      I3 => btn1_prev,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => btn1_prev,
      I1 => btn1_prev_reg_n_0,
      I2 => btn1,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => btn1_prev,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \addr_cnt[0]_i_1_n_0\,
      I3 => data_buf_0,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => \A[21]_i_1_n_0\,
      Q => btn1_prev
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
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
      CLR => \A[21]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => data_buf_0
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[4]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => data_buf_0,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
WE_n_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => \A[21]_i_1_n_0\,
      G => reset_n,
      GE => '1',
      Q => WE_n
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => i_TX_done,
      I2 => \mess_cnt_reg_n_0_[0]\,
      O => \addr_cnt[0]_i_1_n_0\
    );
\addr_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_cnt_reg(0),
      O => \addr_cnt[0]_i_3_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[0]_i_2_n_7\,
      Q => addr_cnt_reg(0)
    );
\addr_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_cnt_reg[0]_i_2_n_0\,
      CO(2) => \addr_cnt_reg[0]_i_2_n_1\,
      CO(1) => \addr_cnt_reg[0]_i_2_n_2\,
      CO(0) => \addr_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \addr_cnt_reg[0]_i_2_n_4\,
      O(2) => \addr_cnt_reg[0]_i_2_n_5\,
      O(1) => \addr_cnt_reg[0]_i_2_n_6\,
      O(0) => \addr_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => addr_cnt_reg(3 downto 1),
      S(0) => \addr_cnt[0]_i_3_n_0\
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[8]_i_1_n_5\,
      Q => addr_cnt_reg(10)
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[8]_i_1_n_4\,
      Q => addr_cnt_reg(11)
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
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
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[12]_i_1_n_6\,
      Q => addr_cnt_reg(13)
    );
\addr_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[12]_i_1_n_5\,
      Q => addr_cnt_reg(14)
    );
\addr_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[12]_i_1_n_4\,
      Q => addr_cnt_reg(15)
    );
\addr_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
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
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[16]_i_1_n_6\,
      Q => addr_cnt_reg(17)
    );
\addr_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[16]_i_1_n_5\,
      Q => addr_cnt_reg(18)
    );
\addr_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[16]_i_1_n_4\,
      Q => addr_cnt_reg(19)
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[0]_i_2_n_6\,
      Q => addr_cnt_reg(1)
    );
\addr_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
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
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[20]_i_1_n_6\,
      Q => addr_cnt_reg(21)
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[0]_i_2_n_5\,
      Q => addr_cnt_reg(2)
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[0]_i_2_n_4\,
      Q => addr_cnt_reg(3)
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[4]_i_1_n_7\,
      Q => addr_cnt_reg(4)
    );
\addr_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_cnt_reg[0]_i_2_n_0\,
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
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[4]_i_1_n_6\,
      Q => addr_cnt_reg(5)
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[4]_i_1_n_5\,
      Q => addr_cnt_reg(6)
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[4]_i_1_n_4\,
      Q => addr_cnt_reg(7)
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
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
      CE => \addr_cnt[0]_i_1_n_0\,
      CLR => \A[21]_i_1_n_0\,
      D => \addr_cnt_reg[8]_i_1_n_6\,
      Q => addr_cnt_reg(9)
    );
btn1_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => btn1,
      I1 => btn1_prev,
      I2 => btn1_prev_reg_n_0,
      O => btn1_prev_i_1_n_0
    );
btn1_prev_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => \A[21]_i_1_n_0\,
      D => btn1_prev_i_1_n_0,
      Q => btn1_prev_reg_n_0
    );
\data_buf[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => reset_n,
      I1 => data_buf_0,
      O => data_buf0
    );
\data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(0),
      Q => data_buf(0),
      R => '0'
    );
\data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(10),
      Q => data_buf(10),
      R => '0'
    );
\data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(11),
      Q => data_buf(11),
      R => '0'
    );
\data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(12),
      Q => data_buf(12),
      R => '0'
    );
\data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(13),
      Q => data_buf(13),
      R => '0'
    );
\data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(14),
      Q => data_buf(14),
      R => '0'
    );
\data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(15),
      Q => data_buf(15),
      R => '0'
    );
\data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(1),
      Q => data_buf(1),
      R => '0'
    );
\data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(2),
      Q => data_buf(2),
      R => '0'
    );
\data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(3),
      Q => data_buf(3),
      R => '0'
    );
\data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(4),
      Q => data_buf(4),
      R => '0'
    );
\data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(5),
      Q => data_buf(5),
      R => '0'
    );
\data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(6),
      Q => data_buf(6),
      R => '0'
    );
\data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(7),
      Q => data_buf(7),
      R => '0'
    );
\data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(8),
      Q => data_buf(8),
      R => '0'
    );
\data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(9),
      Q => data_buf(9),
      R => '0'
    );
\mess_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"53F0"
    )
        port map (
      I0 => i_TX_done,
      I1 => btn1_prev,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      O => \mess_cnt[0]_i_1_n_0\
    );
\mess_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => \A[21]_i_1_n_0\,
      D => \mess_cnt[0]_i_1_n_0\,
      Q => \mess_cnt_reg_n_0_[0]\
    );
o_TX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0FDFFFD000D000"
    )
        port map (
      I0 => \mess_cnt_reg_n_0_[0]\,
      I1 => i_TX_done,
      I2 => reset_n,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => btn1_prev,
      I5 => \^o_tx_dv\,
      O => o_TX_DV_i_1_n_0
    );
o_TX_DV_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => o_TX_DV_i_1_n_0,
      Q => \^o_tx_dv\,
      R => '0'
    );
\o_TX_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(0),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(8),
      O => p_0_in(0)
    );
\o_TX_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(1),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(9),
      O => p_0_in(1)
    );
\o_TX_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(2),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(10),
      O => p_0_in(2)
    );
\o_TX_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(3),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(11),
      O => p_0_in(3)
    );
\o_TX_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(4),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(12),
      O => p_0_in(4)
    );
\o_TX_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(5),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(13),
      O => p_0_in(5)
    );
\o_TX_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(6),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(14),
      O => p_0_in(6)
    );
\o_TX_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => reset_n,
      I1 => i_TX_done,
      I2 => \mess_cnt_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => o_TX_data0
    );
\o_TX_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(7),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(15),
      O => p_0_in(7)
    );
\o_TX_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(0),
      Q => o_TX_data(0),
      R => '0'
    );
\o_TX_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(1),
      Q => o_TX_data(1),
      R => '0'
    );
\o_TX_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(2),
      Q => o_TX_data(2),
      R => '0'
    );
\o_TX_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(3),
      Q => o_TX_data(3),
      R => '0'
    );
\o_TX_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(4),
      Q => o_TX_data(4),
      R => '0'
    );
\o_TX_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(5),
      Q => o_TX_data(5),
      R => '0'
    );
\o_TX_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(6),
      Q => o_TX_data(6),
      R => '0'
    );
\o_TX_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(7),
      Q => o_TX_data(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Alg_Test1_Read_When_Push_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Alg_Test1_Read_When_Push_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Alg_Test1_Read_When_Push_0_0 : entity is "Alg_Test1_Read_When_Push_0_0,Read_When_Push,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Alg_Test1_Read_When_Push_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Alg_Test1_Read_When_Push_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Alg_Test1_Read_When_Push_0_0 : entity is "Read_When_Push,Vivado 2024.2";
end Alg_Test1_Read_When_Push_0_0;

architecture STRUCTURE of Alg_Test1_Read_When_Push_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DQ_t(15) <= \<const1>\;
  DQ_t(14) <= \<const1>\;
  DQ_t(13) <= \<const1>\;
  DQ_t(12) <= \<const1>\;
  DQ_t(11) <= \<const1>\;
  DQ_t(10) <= \<const1>\;
  DQ_t(9) <= \<const1>\;
  DQ_t(8) <= \<const1>\;
  DQ_t(7) <= \<const1>\;
  DQ_t(6) <= \<const1>\;
  DQ_t(5) <= \<const1>\;
  DQ_t(4) <= \<const1>\;
  DQ_t(3) <= \<const1>\;
  DQ_t(2) <= \<const1>\;
  DQ_t(1) <= \<const1>\;
  DQ_t(0) <= \<const1>\;
U0: entity work.Alg_Test1_Read_When_Push_0_0_Read_When_Push
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      WE_n => WE_n,
      btn1 => btn1,
      i_TX_done => i_TX_done,
      o_TX_DV => o_TX_DV,
      o_TX_data(7 downto 0) => o_TX_data(7 downto 0),
      reset_n => reset_n,
      sysclk => sysclk
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

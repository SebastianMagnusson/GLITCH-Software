-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Sep 28 15:16:08 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_RW_ROUTER_100MHZ_0_0/testwith1speed_RW_ROUTER_100MHZ_0_0_sim_netlist.vhdl
-- Design      : testwith1speed_RW_ROUTER_100MHZ_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_RW_ROUTER_100MHZ_0_0_RW_ROUTER_100MHZ is
  port (
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    CE_n_write : in STD_LOGIC;
    CE_n_read : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    decoder_write : in STD_LOGIC_VECTOR ( 2 downto 0 );
    decoder_read : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Toggle : in STD_LOGIC;
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of testwith1speed_RW_ROUTER_100MHZ_0_0_RW_ROUTER_100MHZ : entity is "RW_ROUTER_100MHZ";
end testwith1speed_RW_ROUTER_100MHZ_0_0_RW_ROUTER_100MHZ;

architecture STRUCTURE of testwith1speed_RW_ROUTER_100MHZ_0_0_RW_ROUTER_100MHZ is
  signal A0 : STD_LOGIC;
  signal \A[0]_i_1_n_0\ : STD_LOGIC;
  signal \A[10]_i_1_n_0\ : STD_LOGIC;
  signal \A[11]_i_1_n_0\ : STD_LOGIC;
  signal \A[12]_i_1_n_0\ : STD_LOGIC;
  signal \A[13]_i_1_n_0\ : STD_LOGIC;
  signal \A[14]_i_1_n_0\ : STD_LOGIC;
  signal \A[15]_i_1_n_0\ : STD_LOGIC;
  signal \A[16]_i_1_n_0\ : STD_LOGIC;
  signal \A[17]_i_1_n_0\ : STD_LOGIC;
  signal \A[18]_i_1_n_0\ : STD_LOGIC;
  signal \A[19]_i_1_n_0\ : STD_LOGIC;
  signal \A[1]_i_1_n_0\ : STD_LOGIC;
  signal \A[20]_i_1_n_0\ : STD_LOGIC;
  signal \A[21]_i_1_n_0\ : STD_LOGIC;
  signal \A[21]_i_3_n_0\ : STD_LOGIC;
  signal \A[2]_i_1_n_0\ : STD_LOGIC;
  signal \A[3]_i_1_n_0\ : STD_LOGIC;
  signal \A[4]_i_1_n_0\ : STD_LOGIC;
  signal \A[5]_i_1_n_0\ : STD_LOGIC;
  signal \A[6]_i_1_n_0\ : STD_LOGIC;
  signal \A[7]_i_1_n_0\ : STD_LOGIC;
  signal \A[8]_i_1_n_0\ : STD_LOGIC;
  signal \A[9]_i_1_n_0\ : STD_LOGIC;
  signal CE_n_i_1_n_0 : STD_LOGIC;
  signal \DQ_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[10]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[11]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[12]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[13]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[14]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[15]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[7]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[8]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_o[9]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[0]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[10]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[11]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[12]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[13]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[14]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[15]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[1]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[2]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[3]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[4]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[5]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[6]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[7]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[8]_i_1_n_0\ : STD_LOGIC;
  signal \DQ_t[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal cnt : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \decoder[0]_i_1_n_0\ : STD_LOGIC;
  signal \decoder[1]_i_1_n_0\ : STD_LOGIC;
  signal \decoder[2]_i_1_n_0\ : STD_LOGIC;
  signal led1_i_1_n_0 : STD_LOGIC;
  signal led1_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "write:001,read:100,turnover:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "write:001,read:100,turnover:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "write:001,read:100,turnover:010";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
begin
\A[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(0),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[0]_i_1_n_0\
    );
\A[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(10),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(10),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[10]_i_1_n_0\
    );
\A[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(11),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(11),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[11]_i_1_n_0\
    );
\A[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(12),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(12),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[12]_i_1_n_0\
    );
\A[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(13),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(13),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[13]_i_1_n_0\
    );
\A[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(14),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(14),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[14]_i_1_n_0\
    );
\A[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(15),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(15),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[15]_i_1_n_0\
    );
\A[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(16),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(16),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[16]_i_1_n_0\
    );
\A[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(17),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(17),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[17]_i_1_n_0\
    );
\A[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(18),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(18),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[18]_i_1_n_0\
    );
\A[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(19),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(19),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[19]_i_1_n_0\
    );
\A[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(1),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[1]_i_1_n_0\
    );
\A[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(20),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(20),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[20]_i_1_n_0\
    );
\A[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => reset_n,
      O => \A[21]_i_1_n_0\
    );
\A[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => reset_n,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => A0
    );
\A[21]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(21),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(21),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[21]_i_3_n_0\
    );
\A[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(2),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[2]_i_1_n_0\
    );
\A[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(3),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[3]_i_1_n_0\
    );
\A[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(4),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(4),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[4]_i_1_n_0\
    );
\A[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(5),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(5),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[5]_i_1_n_0\
    );
\A[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(6),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(6),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[6]_i_1_n_0\
    );
\A[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(7),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(7),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[7]_i_1_n_0\
    );
\A[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(8),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(8),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[8]_i_1_n_0\
    );
\A[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => A_write(9),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => A_read(9),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \A[9]_i_1_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[0]_i_1_n_0\,
      Q => A(0),
      S => \A[21]_i_1_n_0\
    );
\A_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[10]_i_1_n_0\,
      Q => A(10),
      S => \A[21]_i_1_n_0\
    );
\A_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[11]_i_1_n_0\,
      Q => A(11),
      S => \A[21]_i_1_n_0\
    );
\A_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[12]_i_1_n_0\,
      Q => A(12),
      S => \A[21]_i_1_n_0\
    );
\A_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[13]_i_1_n_0\,
      Q => A(13),
      S => \A[21]_i_1_n_0\
    );
\A_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[14]_i_1_n_0\,
      Q => A(14),
      S => \A[21]_i_1_n_0\
    );
\A_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[15]_i_1_n_0\,
      Q => A(15),
      S => \A[21]_i_1_n_0\
    );
\A_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[16]_i_1_n_0\,
      Q => A(16),
      S => \A[21]_i_1_n_0\
    );
\A_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[17]_i_1_n_0\,
      Q => A(17),
      S => \A[21]_i_1_n_0\
    );
\A_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[18]_i_1_n_0\,
      Q => A(18),
      S => \A[21]_i_1_n_0\
    );
\A_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[19]_i_1_n_0\,
      Q => A(19),
      S => \A[21]_i_1_n_0\
    );
\A_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[1]_i_1_n_0\,
      Q => A(1),
      S => \A[21]_i_1_n_0\
    );
\A_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[20]_i_1_n_0\,
      Q => A(20),
      S => \A[21]_i_1_n_0\
    );
\A_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[21]_i_3_n_0\,
      Q => A(21),
      S => \A[21]_i_1_n_0\
    );
\A_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[2]_i_1_n_0\,
      Q => A(2),
      S => \A[21]_i_1_n_0\
    );
\A_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[3]_i_1_n_0\,
      Q => A(3),
      S => \A[21]_i_1_n_0\
    );
\A_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[4]_i_1_n_0\,
      Q => A(4),
      S => \A[21]_i_1_n_0\
    );
\A_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[5]_i_1_n_0\,
      Q => A(5),
      S => \A[21]_i_1_n_0\
    );
\A_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[6]_i_1_n_0\,
      Q => A(6),
      S => \A[21]_i_1_n_0\
    );
\A_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[7]_i_1_n_0\,
      Q => A(7),
      S => \A[21]_i_1_n_0\
    );
\A_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[8]_i_1_n_0\,
      Q => A(8),
      S => \A[21]_i_1_n_0\
    );
\A_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \A[9]_i_1_n_0\,
      Q => A(9),
      S => \A[21]_i_1_n_0\
    );
CE_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => CE_n_write,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => CE_n_read,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => CE_n_i_1_n_0
    );
CE_n_reg: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => CE_n_i_1_n_0,
      Q => CE_n,
      S => \A[21]_i_1_n_0\
    );
\DQ_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(0),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[0]_i_1_n_0\
    );
\DQ_o[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(10),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(10),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[10]_i_1_n_0\
    );
\DQ_o[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(11),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(11),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[11]_i_1_n_0\
    );
\DQ_o[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(12),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(12),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[12]_i_1_n_0\
    );
\DQ_o[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(13),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(13),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[13]_i_1_n_0\
    );
\DQ_o[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(14),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(14),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[14]_i_1_n_0\
    );
\DQ_o[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(15),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(15),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[15]_i_1_n_0\
    );
\DQ_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(1),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[1]_i_1_n_0\
    );
\DQ_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(2),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[2]_i_1_n_0\
    );
\DQ_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(3),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(3),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[3]_i_1_n_0\
    );
\DQ_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(4),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(4),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[4]_i_1_n_0\
    );
\DQ_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(5),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(5),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[5]_i_1_n_0\
    );
\DQ_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(6),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(6),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[6]_i_1_n_0\
    );
\DQ_o[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(7),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(7),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[7]_i_1_n_0\
    );
\DQ_o[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(8),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(8),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[8]_i_1_n_0\
    );
\DQ_o[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => DQ_o_write(9),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => DQ_o_read(9),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \DQ_o[9]_i_1_n_0\
    );
\DQ_o_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[0]_i_1_n_0\,
      Q => DQ_o(0),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[10]_i_1_n_0\,
      Q => DQ_o(10),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[11]_i_1_n_0\,
      Q => DQ_o(11),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[12]_i_1_n_0\,
      Q => DQ_o(12),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[13]_i_1_n_0\,
      Q => DQ_o(13),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[14]_i_1_n_0\,
      Q => DQ_o(14),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[15]_i_1_n_0\,
      Q => DQ_o(15),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[1]_i_1_n_0\,
      Q => DQ_o(1),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[2]_i_1_n_0\,
      Q => DQ_o(2),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[3]_i_1_n_0\,
      Q => DQ_o(3),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[4]_i_1_n_0\,
      Q => DQ_o(4),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[5]_i_1_n_0\,
      Q => DQ_o(5),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[6]_i_1_n_0\,
      Q => DQ_o(6),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[7]_i_1_n_0\,
      Q => DQ_o(7),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[8]_i_1_n_0\,
      Q => DQ_o(8),
      S => \A[21]_i_1_n_0\
    );
\DQ_o_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \DQ_o[9]_i_1_n_0\,
      Q => DQ_o(9),
      S => \A[21]_i_1_n_0\
    );
\DQ_t[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(0),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(0),
      O => \DQ_t[0]_i_1_n_0\
    );
\DQ_t[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(10),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(10),
      O => \DQ_t[10]_i_1_n_0\
    );
\DQ_t[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(11),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(11),
      O => \DQ_t[11]_i_1_n_0\
    );
\DQ_t[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(12),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(12),
      O => \DQ_t[12]_i_1_n_0\
    );
\DQ_t[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(13),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(13),
      O => \DQ_t[13]_i_1_n_0\
    );
\DQ_t[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(14),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(14),
      O => \DQ_t[14]_i_1_n_0\
    );
\DQ_t[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(15),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(15),
      O => \DQ_t[15]_i_1_n_0\
    );
\DQ_t[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(1),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(1),
      O => \DQ_t[1]_i_1_n_0\
    );
\DQ_t[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(2),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(2),
      O => \DQ_t[2]_i_1_n_0\
    );
\DQ_t[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(3),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(3),
      O => \DQ_t[3]_i_1_n_0\
    );
\DQ_t[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(4),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(4),
      O => \DQ_t[4]_i_1_n_0\
    );
\DQ_t[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(5),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(5),
      O => \DQ_t[5]_i_1_n_0\
    );
\DQ_t[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(6),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(6),
      O => \DQ_t[6]_i_1_n_0\
    );
\DQ_t[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(7),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(7),
      O => \DQ_t[7]_i_1_n_0\
    );
\DQ_t[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(8),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(8),
      O => \DQ_t[8]_i_1_n_0\
    );
\DQ_t[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => cnt,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => DQ_t_read(9),
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => DQ_t_write(9),
      O => \DQ_t[9]_i_1_n_0\
    );
\DQ_t_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[0]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(0)
    );
\DQ_t_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[10]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(10)
    );
\DQ_t_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[11]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(11)
    );
\DQ_t_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[12]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(12)
    );
\DQ_t_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[13]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(13)
    );
\DQ_t_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[14]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(14)
    );
\DQ_t_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[15]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(15)
    );
\DQ_t_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[1]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(1)
    );
\DQ_t_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[2]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(2)
    );
\DQ_t_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[3]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(3)
    );
\DQ_t_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[4]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(4)
    );
\DQ_t_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[5]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(5)
    );
\DQ_t_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[6]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(6)
    );
\DQ_t_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[7]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(7)
    );
\DQ_t_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[8]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(8)
    );
\DQ_t_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      D => \DQ_t[9]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => DQ_t(9)
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => Toggle,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Toggle,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[1]_i_2_n_0\,
      I3 => cnt,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => cnt,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => cnt,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => led1_i_2_n_0,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => led1_i_2_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => cnt
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => led1_i_2_n_0,
      D => \FSM_onehot_state[2]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
WE_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => WE_n_write,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => WE_n_read,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => WE_n_i_1_n_0,
      Q => WE_n,
      S => \A[21]_i_1_n_0\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4222"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => cnt,
      CLR => led1_i_2_n_0,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => cnt,
      CLR => led1_i_2_n_0,
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => cnt,
      CLR => led1_i_2_n_0,
      D => \cnt[2]_i_1_n_0\,
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => cnt,
      CLR => led1_i_2_n_0,
      D => \cnt[3]_i_1_n_0\,
      Q => \cnt_reg_n_0_[3]\
    );
\decoder[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => decoder_write(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => decoder_read(0),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \decoder[0]_i_1_n_0\
    );
\decoder[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => decoder_write(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => decoder_read(1),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \decoder[1]_i_1_n_0\
    );
\decoder[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => decoder_write(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => decoder_read(2),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \decoder[2]_i_1_n_0\
    );
\decoder_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \decoder[0]_i_1_n_0\,
      Q => decoder(0),
      S => \A[21]_i_1_n_0\
    );
\decoder_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \decoder[1]_i_1_n_0\,
      Q => decoder(1),
      S => \A[21]_i_1_n_0\
    );
\decoder_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => A0,
      D => \decoder[2]_i_1_n_0\,
      Q => decoder(2),
      S => \A[21]_i_1_n_0\
    );
led1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => led1_i_1_n_0
    );
led1_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => led1_i_2_n_0
    );
led1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => led1_i_1_n_0,
      CLR => led1_i_2_n_0,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => led1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_RW_ROUTER_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Toggle : in STD_LOGIC;
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_write : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_write : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_read : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_read : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of testwith1speed_RW_ROUTER_100MHZ_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_RW_ROUTER_100MHZ_0_0 : entity is "testwith1speed_RW_ROUTER_100MHZ_0_0,RW_ROUTER_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_RW_ROUTER_100MHZ_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_RW_ROUTER_100MHZ_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of testwith1speed_RW_ROUTER_100MHZ_0_0 : entity is "RW_ROUTER_100MHZ,Vivado 2024.2";
end testwith1speed_RW_ROUTER_100MHZ_0_0;

architecture STRUCTURE of testwith1speed_RW_ROUTER_100MHZ_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.testwith1speed_RW_ROUTER_100MHZ_0_0_RW_ROUTER_100MHZ
     port map (
      A(21 downto 0) => A(21 downto 0),
      A_read(21 downto 0) => A_read(21 downto 0),
      A_write(21 downto 0) => A_write(21 downto 0),
      CE_n => CE_n,
      CE_n_read => CE_n_read,
      CE_n_write => CE_n_write,
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_o_read(15 downto 0) => DQ_o_read(15 downto 0),
      DQ_o_write(15 downto 0) => DQ_o_write(15 downto 0),
      DQ_t(15 downto 0) => DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => DQ_t_read(15 downto 0),
      DQ_t_write(15 downto 0) => DQ_t_write(15 downto 0),
      Toggle => Toggle,
      WE_n => WE_n,
      WE_n_read => WE_n_read,
      WE_n_write => WE_n_write,
      decoder(2 downto 0) => decoder(2 downto 0),
      decoder_read(2 downto 0) => decoder_read(2 downto 0),
      decoder_write(2 downto 0) => decoder_write(2 downto 0),
      led1 => led1,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

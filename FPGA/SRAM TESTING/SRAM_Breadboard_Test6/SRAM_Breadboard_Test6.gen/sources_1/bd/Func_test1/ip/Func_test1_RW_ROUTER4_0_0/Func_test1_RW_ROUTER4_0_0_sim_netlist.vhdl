-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri Sep 12 17:22:29 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadboard_Test6/SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_RW_ROUTER4_0_0/Func_test1_RW_ROUTER4_0_0_sim_netlist.vhdl}
-- Design      : Func_test1_RW_ROUTER4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Func_test1_RW_ROUTER4_0_0_RW_ROUTER4 is
  port (
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE_n_read : in STD_LOGIC;
    CE_n_write : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    Toggle : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Func_test1_RW_ROUTER4_0_0_RW_ROUTER4 : entity is "RW_ROUTER4";
end Func_test1_RW_ROUTER4_0_0_RW_ROUTER4;

architecture STRUCTURE of Func_test1_RW_ROUTER4_0_0_RW_ROUTER4 is
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
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \A[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \A[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \A[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \A[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \A[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \A[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \A[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \A[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \A[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \A[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \A[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \A[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \A[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \A[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \A[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of CE_n_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \DQ_o[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DQ_o[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \DQ_o[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \DQ_o[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \DQ_o[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \DQ_o[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \DQ_o[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \DQ_o[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DQ_o[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DQ_o[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DQ_o[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DQ_o[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DQ_o[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DQ_o[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \DQ_o[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DQ_o[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DQ_t[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \DQ_t[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \DQ_t[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \DQ_t[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \DQ_t[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \DQ_t[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \DQ_t[15]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \DQ_t[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \DQ_t[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \DQ_t[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \DQ_t[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \DQ_t[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \DQ_t[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \DQ_t[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \DQ_t[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \DQ_t[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of WE_n_i_1 : label is "soft_lutpair27";
begin
\A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(0),
      I1 => A_write(0),
      I2 => state,
      O => p_1_in(0)
    );
\A[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(10),
      I1 => A_write(10),
      I2 => state,
      O => p_1_in(10)
    );
\A[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(11),
      I1 => A_write(11),
      I2 => state,
      O => p_1_in(11)
    );
\A[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(12),
      I1 => A_write(12),
      I2 => state,
      O => p_1_in(12)
    );
\A[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(13),
      I1 => A_write(13),
      I2 => state,
      O => p_1_in(13)
    );
\A[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(14),
      I1 => A_write(14),
      I2 => state,
      O => p_1_in(14)
    );
\A[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(15),
      I1 => A_write(15),
      I2 => state,
      O => p_1_in(15)
    );
\A[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(16),
      I1 => A_write(16),
      I2 => state,
      O => p_1_in(16)
    );
\A[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(17),
      I1 => A_write(17),
      I2 => state,
      O => p_1_in(17)
    );
\A[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(18),
      I1 => A_write(18),
      I2 => state,
      O => p_1_in(18)
    );
\A[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(19),
      I1 => A_write(19),
      I2 => state,
      O => p_1_in(19)
    );
\A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(1),
      I1 => A_write(1),
      I2 => state,
      O => p_1_in(1)
    );
\A[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(20),
      I1 => A_write(20),
      I2 => state,
      O => p_1_in(20)
    );
\A[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(21),
      I1 => A_write(21),
      I2 => state,
      O => p_1_in(21)
    );
\A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(2),
      I1 => A_write(2),
      I2 => state,
      O => p_1_in(2)
    );
\A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(3),
      I1 => A_write(3),
      I2 => state,
      O => p_1_in(3)
    );
\A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(4),
      I1 => A_write(4),
      I2 => state,
      O => p_1_in(4)
    );
\A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(5),
      I1 => A_write(5),
      I2 => state,
      O => p_1_in(5)
    );
\A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(6),
      I1 => A_write(6),
      I2 => state,
      O => p_1_in(6)
    );
\A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(7),
      I1 => A_write(7),
      I2 => state,
      O => p_1_in(7)
    );
\A[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(8),
      I1 => A_write(8),
      I2 => state,
      O => p_1_in(8)
    );
\A[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => A_read(9),
      I1 => A_write(9),
      I2 => state,
      O => p_1_in(9)
    );
\A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(0),
      Q => A(0),
      R => '0'
    );
\A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(10),
      Q => A(10),
      R => '0'
    );
\A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(11),
      Q => A(11),
      R => '0'
    );
\A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(12),
      Q => A(12),
      R => '0'
    );
\A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(13),
      Q => A(13),
      R => '0'
    );
\A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(14),
      Q => A(14),
      R => '0'
    );
\A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(15),
      Q => A(15),
      R => '0'
    );
\A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(16),
      Q => A(16),
      R => '0'
    );
\A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(17),
      Q => A(17),
      R => '0'
    );
\A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(18),
      Q => A(18),
      R => '0'
    );
\A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(19),
      Q => A(19),
      R => '0'
    );
\A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(1),
      Q => A(1),
      R => '0'
    );
\A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(20),
      Q => A(20),
      R => '0'
    );
\A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(21),
      Q => A(21),
      R => '0'
    );
\A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(2),
      Q => A(2),
      R => '0'
    );
\A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(3),
      Q => A(3),
      R => '0'
    );
\A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(4),
      Q => A(4),
      R => '0'
    );
\A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(5),
      Q => A(5),
      R => '0'
    );
\A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(6),
      Q => A(6),
      R => '0'
    );
\A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(7),
      Q => A(7),
      R => '0'
    );
\A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(8),
      Q => A(8),
      R => '0'
    );
\A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => p_1_in(9),
      Q => A(9),
      R => '0'
    );
CE_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CE_n_read,
      I1 => state,
      I2 => CE_n_write,
      O => CE_n_i_1_n_0
    );
CE_n_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => CE_n_i_1_n_0,
      Q => CE_n,
      R => '0'
    );
\DQ_o[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(0),
      I1 => DQ_o_write(0),
      I2 => state,
      O => \DQ_o[0]_i_1_n_0\
    );
\DQ_o[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(10),
      I1 => DQ_o_write(10),
      I2 => state,
      O => \DQ_o[10]_i_1_n_0\
    );
\DQ_o[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(11),
      I1 => DQ_o_write(11),
      I2 => state,
      O => \DQ_o[11]_i_1_n_0\
    );
\DQ_o[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(12),
      I1 => DQ_o_write(12),
      I2 => state,
      O => \DQ_o[12]_i_1_n_0\
    );
\DQ_o[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(13),
      I1 => DQ_o_write(13),
      I2 => state,
      O => \DQ_o[13]_i_1_n_0\
    );
\DQ_o[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(14),
      I1 => DQ_o_write(14),
      I2 => state,
      O => \DQ_o[14]_i_1_n_0\
    );
\DQ_o[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(15),
      I1 => DQ_o_write(15),
      I2 => state,
      O => \DQ_o[15]_i_1_n_0\
    );
\DQ_o[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(1),
      I1 => DQ_o_write(1),
      I2 => state,
      O => \DQ_o[1]_i_1_n_0\
    );
\DQ_o[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(2),
      I1 => DQ_o_write(2),
      I2 => state,
      O => \DQ_o[2]_i_1_n_0\
    );
\DQ_o[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(3),
      I1 => DQ_o_write(3),
      I2 => state,
      O => \DQ_o[3]_i_1_n_0\
    );
\DQ_o[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(4),
      I1 => DQ_o_write(4),
      I2 => state,
      O => \DQ_o[4]_i_1_n_0\
    );
\DQ_o[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(5),
      I1 => DQ_o_write(5),
      I2 => state,
      O => \DQ_o[5]_i_1_n_0\
    );
\DQ_o[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(6),
      I1 => DQ_o_write(6),
      I2 => state,
      O => \DQ_o[6]_i_1_n_0\
    );
\DQ_o[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(7),
      I1 => DQ_o_write(7),
      I2 => state,
      O => \DQ_o[7]_i_1_n_0\
    );
\DQ_o[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(8),
      I1 => DQ_o_write(8),
      I2 => state,
      O => \DQ_o[8]_i_1_n_0\
    );
\DQ_o[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_o_read(9),
      I1 => DQ_o_write(9),
      I2 => state,
      O => \DQ_o[9]_i_1_n_0\
    );
\DQ_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[0]_i_1_n_0\,
      Q => DQ_o(0),
      R => '0'
    );
\DQ_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[10]_i_1_n_0\,
      Q => DQ_o(10),
      R => '0'
    );
\DQ_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[11]_i_1_n_0\,
      Q => DQ_o(11),
      R => '0'
    );
\DQ_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[12]_i_1_n_0\,
      Q => DQ_o(12),
      R => '0'
    );
\DQ_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[13]_i_1_n_0\,
      Q => DQ_o(13),
      R => '0'
    );
\DQ_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[14]_i_1_n_0\,
      Q => DQ_o(14),
      R => '0'
    );
\DQ_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[15]_i_1_n_0\,
      Q => DQ_o(15),
      R => '0'
    );
\DQ_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[1]_i_1_n_0\,
      Q => DQ_o(1),
      R => '0'
    );
\DQ_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[2]_i_1_n_0\,
      Q => DQ_o(2),
      R => '0'
    );
\DQ_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[3]_i_1_n_0\,
      Q => DQ_o(3),
      R => '0'
    );
\DQ_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[4]_i_1_n_0\,
      Q => DQ_o(4),
      R => '0'
    );
\DQ_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[5]_i_1_n_0\,
      Q => DQ_o(5),
      R => '0'
    );
\DQ_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[6]_i_1_n_0\,
      Q => DQ_o(6),
      R => '0'
    );
\DQ_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[7]_i_1_n_0\,
      Q => DQ_o(7),
      R => '0'
    );
\DQ_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[8]_i_1_n_0\,
      Q => DQ_o(8),
      R => '0'
    );
\DQ_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => \DQ_o[9]_i_1_n_0\,
      Q => DQ_o(9),
      R => '0'
    );
\DQ_t[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(0),
      I1 => DQ_t_write(0),
      I2 => state,
      O => \DQ_t[0]_i_1_n_0\
    );
\DQ_t[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(10),
      I1 => DQ_t_write(10),
      I2 => state,
      O => \DQ_t[10]_i_1_n_0\
    );
\DQ_t[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(11),
      I1 => DQ_t_write(11),
      I2 => state,
      O => \DQ_t[11]_i_1_n_0\
    );
\DQ_t[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(12),
      I1 => DQ_t_write(12),
      I2 => state,
      O => \DQ_t[12]_i_1_n_0\
    );
\DQ_t[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(13),
      I1 => DQ_t_write(13),
      I2 => state,
      O => \DQ_t[13]_i_1_n_0\
    );
\DQ_t[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(14),
      I1 => DQ_t_write(14),
      I2 => state,
      O => \DQ_t[14]_i_1_n_0\
    );
\DQ_t[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(15),
      I1 => DQ_t_write(15),
      I2 => state,
      O => \DQ_t[15]_i_1_n_0\
    );
\DQ_t[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(1),
      I1 => DQ_t_write(1),
      I2 => state,
      O => \DQ_t[1]_i_1_n_0\
    );
\DQ_t[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(2),
      I1 => DQ_t_write(2),
      I2 => state,
      O => \DQ_t[2]_i_1_n_0\
    );
\DQ_t[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(3),
      I1 => DQ_t_write(3),
      I2 => state,
      O => \DQ_t[3]_i_1_n_0\
    );
\DQ_t[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(4),
      I1 => DQ_t_write(4),
      I2 => state,
      O => \DQ_t[4]_i_1_n_0\
    );
\DQ_t[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(5),
      I1 => DQ_t_write(5),
      I2 => state,
      O => \DQ_t[5]_i_1_n_0\
    );
\DQ_t[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(6),
      I1 => DQ_t_write(6),
      I2 => state,
      O => \DQ_t[6]_i_1_n_0\
    );
\DQ_t[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(7),
      I1 => DQ_t_write(7),
      I2 => state,
      O => \DQ_t[7]_i_1_n_0\
    );
\DQ_t[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(8),
      I1 => DQ_t_write(8),
      I2 => state,
      O => \DQ_t[8]_i_1_n_0\
    );
\DQ_t[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DQ_t_read(9),
      I1 => DQ_t_write(9),
      I2 => state,
      O => \DQ_t[9]_i_1_n_0\
    );
\DQ_t_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[0]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(0)
    );
\DQ_t_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[10]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(10)
    );
\DQ_t_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[11]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(11)
    );
\DQ_t_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[12]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(12)
    );
\DQ_t_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[13]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(13)
    );
\DQ_t_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[14]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(14)
    );
\DQ_t_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[15]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(15)
    );
\DQ_t_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[1]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(1)
    );
\DQ_t_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[2]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(2)
    );
\DQ_t_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[3]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(3)
    );
\DQ_t_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[4]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(4)
    );
\DQ_t_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[5]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(5)
    );
\DQ_t_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[6]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(6)
    );
\DQ_t_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[7]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(7)
    );
\DQ_t_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[8]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(8)
    );
\DQ_t_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => \DQ_t[9]_i_1_n_0\,
      PRE => p_0_in,
      Q => DQ_t(9)
    );
WE_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WE_n_read,
      I1 => state,
      I2 => WE_n_write,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => reset_n,
      D => WE_n_i_1_n_0,
      Q => WE_n,
      R => '0'
    );
led1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => p_0_in
    );
led1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => p_0_in,
      D => state,
      Q => led1
    );
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state,
      I1 => Toggle,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => p_0_in,
      D => state_i_1_n_0,
      Q => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Func_test1_RW_ROUTER4_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Toggle : in STD_LOGIC;
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_write : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_read : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Func_test1_RW_ROUTER4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Func_test1_RW_ROUTER4_0_0 : entity is "Func_test1_RW_ROUTER4_0_0,RW_ROUTER4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Func_test1_RW_ROUTER4_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Func_test1_RW_ROUTER4_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Func_test1_RW_ROUTER4_0_0 : entity is "RW_ROUTER4,Vivado 2024.2";
end Func_test1_RW_ROUTER4_0_0;

architecture STRUCTURE of Func_test1_RW_ROUTER4_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Func_test1_RW_ROUTER4_0_0_RW_ROUTER4
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
      led1 => led1,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

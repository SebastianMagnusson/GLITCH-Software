-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Sep 25 11:12:29 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_HTR_controller_1_0/testwith1speed_HTR_controller_1_0_sim_netlist.vhdl
-- Design      : testwith1speed_HTR_controller_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_HTR_controller_1_0_HTR_controller is
  port (
    diag_out : out STD_LOGIC;
    HTR_DUTY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of testwith1speed_HTR_controller_1_0_HTR_controller : entity is "HTR_controller";
end testwith1speed_HTR_controller_1_0_HTR_controller;

architecture STRUCTURE of testwith1speed_HTR_controller_1_0_HTR_controller is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \pwm_level2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__0_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_level2_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_level2_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_level2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__1_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__1_n_1\ : STD_LOGIC;
  signal \pwm_level2_carry__1_n_2\ : STD_LOGIC;
  signal \pwm_level2_carry__1_n_3\ : STD_LOGIC;
  signal \pwm_level2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__2_n_0\ : STD_LOGIC;
  signal \pwm_level2_carry__2_n_1\ : STD_LOGIC;
  signal \pwm_level2_carry__2_n_2\ : STD_LOGIC;
  signal \pwm_level2_carry__2_n_3\ : STD_LOGIC;
  signal pwm_level2_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_level2_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_level2_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_level2_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_level2_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_level2_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_level2_carry_n_0 : STD_LOGIC;
  signal pwm_level2_carry_n_1 : STD_LOGIC;
  signal pwm_level2_carry_n_2 : STD_LOGIC;
  signal pwm_level2_carry_n_3 : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \pwm_level2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \pwm_level[3]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_level_reg_n_0_[0]\ : STD_LOGIC;
  signal \pwm_level_reg_n_0_[1]\ : STD_LOGIC;
  signal \pwm_level_reg_n_0_[2]\ : STD_LOGIC;
  signal \pwm_level_reg_n_0_[3]\ : STD_LOGIC;
  signal pwm_sig_i_2_n_0 : STD_LOGIC;
  signal NLW_pwm_level2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_level2_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_level2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_level2_inferred__0/i__carry__2\ : label is 11;
begin
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008FFFF"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => counter_reg(1),
      I4 => rst,
      O => \counter[3]_i_1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => counter_reg(3),
      O => \counter[3]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter_reg(0),
      R => \counter[3]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter_reg(1),
      R => \counter[3]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => counter_reg(2),
      R => \counter[3]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter[3]_i_2_n_0\,
      Q => counter_reg(3),
      R => \counter[3]_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(6),
      I1 => HTR_DUTY(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(14),
      I1 => HTR_DUTY(15),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(22),
      I1 => HTR_DUTY(23),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => HTR_DUTY(30),
      I1 => HTR_DUTY(31),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(4),
      I1 => HTR_DUTY(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(12),
      I1 => HTR_DUTY(13),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(20),
      I1 => HTR_DUTY(21),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(28),
      I1 => HTR_DUTY(29),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(2),
      I1 => HTR_DUTY(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(10),
      I1 => HTR_DUTY(11),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(18),
      I1 => HTR_DUTY(19),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(26),
      I1 => HTR_DUTY(27),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(8),
      I1 => HTR_DUTY(9),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(16),
      I1 => HTR_DUTY(17),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => HTR_DUTY(24),
      I1 => HTR_DUTY(25),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(6),
      I1 => HTR_DUTY(7),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(30),
      I1 => HTR_DUTY(31),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(4),
      I1 => HTR_DUTY(5),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(14),
      I1 => HTR_DUTY(15),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(22),
      I1 => HTR_DUTY(23),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(2),
      I1 => HTR_DUTY(3),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(12),
      I1 => HTR_DUTY(13),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(20),
      I1 => HTR_DUTY(21),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(28),
      I1 => HTR_DUTY(29),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => HTR_DUTY(0),
      I1 => HTR_DUTY(1),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(10),
      I1 => HTR_DUTY(11),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(18),
      I1 => HTR_DUTY(19),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(26),
      I1 => HTR_DUTY(27),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(8),
      I1 => HTR_DUTY(9),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(16),
      I1 => HTR_DUTY(17),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(24),
      I1 => HTR_DUTY(25),
      O => \i__carry_i_8__1_n_0\
    );
pwm_level2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_level2_carry_n_0,
      CO(2) => pwm_level2_carry_n_1,
      CO(1) => pwm_level2_carry_n_2,
      CO(0) => pwm_level2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 2) => B"00",
      DI(1) => pwm_level2_carry_i_1_n_0,
      DI(0) => pwm_level2_carry_i_2_n_0,
      O(3 downto 0) => NLW_pwm_level2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_level2_carry_i_3_n_0,
      S(2) => pwm_level2_carry_i_4_n_0,
      S(1) => pwm_level2_carry_i_5_n_0,
      S(0) => pwm_level2_carry_i_6_n_0
    );
\pwm_level2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_level2_carry_n_0,
      CO(3) => \pwm_level2_carry__0_n_0\,
      CO(2) => \pwm_level2_carry__0_n_1\,
      CO(1) => \pwm_level2_carry__0_n_2\,
      CO(0) => \pwm_level2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_level2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_level2_carry__0_i_1_n_0\,
      S(2) => \pwm_level2_carry__0_i_2_n_0\,
      S(1) => \pwm_level2_carry__0_i_3_n_0\,
      S(0) => \pwm_level2_carry__0_i_4_n_0\
    );
\pwm_level2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(14),
      I1 => HTR_DUTY(15),
      O => \pwm_level2_carry__0_i_1_n_0\
    );
\pwm_level2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(12),
      I1 => HTR_DUTY(13),
      O => \pwm_level2_carry__0_i_2_n_0\
    );
\pwm_level2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(10),
      I1 => HTR_DUTY(11),
      O => \pwm_level2_carry__0_i_3_n_0\
    );
\pwm_level2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(8),
      I1 => HTR_DUTY(9),
      O => \pwm_level2_carry__0_i_4_n_0\
    );
\pwm_level2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_level2_carry__0_n_0\,
      CO(3) => \pwm_level2_carry__1_n_0\,
      CO(2) => \pwm_level2_carry__1_n_1\,
      CO(1) => \pwm_level2_carry__1_n_2\,
      CO(0) => \pwm_level2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pwm_level2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_level2_carry__1_i_1_n_0\,
      S(2) => \pwm_level2_carry__1_i_2_n_0\,
      S(1) => \pwm_level2_carry__1_i_3_n_0\,
      S(0) => \pwm_level2_carry__1_i_4_n_0\
    );
\pwm_level2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(22),
      I1 => HTR_DUTY(23),
      O => \pwm_level2_carry__1_i_1_n_0\
    );
\pwm_level2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(20),
      I1 => HTR_DUTY(21),
      O => \pwm_level2_carry__1_i_2_n_0\
    );
\pwm_level2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(18),
      I1 => HTR_DUTY(19),
      O => \pwm_level2_carry__1_i_3_n_0\
    );
\pwm_level2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(16),
      I1 => HTR_DUTY(17),
      O => \pwm_level2_carry__1_i_4_n_0\
    );
\pwm_level2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_level2_carry__1_n_0\,
      CO(3) => \pwm_level2_carry__2_n_0\,
      CO(2) => \pwm_level2_carry__2_n_1\,
      CO(1) => \pwm_level2_carry__2_n_2\,
      CO(0) => \pwm_level2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => HTR_DUTY(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_pwm_level2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_level2_carry__2_i_1_n_0\,
      S(2) => \pwm_level2_carry__2_i_2_n_0\,
      S(1) => \pwm_level2_carry__2_i_3_n_0\,
      S(0) => \pwm_level2_carry__2_i_4_n_0\
    );
\pwm_level2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(30),
      I1 => HTR_DUTY(31),
      O => \pwm_level2_carry__2_i_1_n_0\
    );
\pwm_level2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(28),
      I1 => HTR_DUTY(29),
      O => \pwm_level2_carry__2_i_2_n_0\
    );
\pwm_level2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(26),
      I1 => HTR_DUTY(27),
      O => \pwm_level2_carry__2_i_3_n_0\
    );
\pwm_level2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(24),
      I1 => HTR_DUTY(25),
      O => \pwm_level2_carry__2_i_4_n_0\
    );
pwm_level2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(3),
      O => pwm_level2_carry_i_1_n_0
    );
pwm_level2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(1),
      O => pwm_level2_carry_i_2_n_0
    );
pwm_level2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(6),
      I1 => HTR_DUTY(7),
      O => pwm_level2_carry_i_3_n_0
    );
pwm_level2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_DUTY(4),
      I1 => HTR_DUTY(5),
      O => pwm_level2_carry_i_4_n_0
    );
pwm_level2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => HTR_DUTY(3),
      I1 => HTR_DUTY(2),
      O => pwm_level2_carry_i_5_n_0
    );
pwm_level2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => HTR_DUTY(1),
      I1 => HTR_DUTY(0),
      O => pwm_level2_carry_i_6_n_0
    );
\pwm_level2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_level2_inferred__0/i__carry_n_0\,
      CO(2) => \pwm_level2_inferred__0/i__carry_n_1\,
      CO(1) => \pwm_level2_inferred__0/i__carry_n_2\,
      CO(0) => \pwm_level2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => HTR_DUTY(1),
      O(3 downto 0) => \NLW_pwm_level2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4__2_n_0\,
      S(2) => \i__carry_i_5__0_n_0\,
      S(1) => \i__carry_i_6_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\pwm_level2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_level2_inferred__0/i__carry_n_0\,
      CO(3) => \pwm_level2_inferred__0/i__carry__0_n_0\,
      CO(2) => \pwm_level2_inferred__0/i__carry__0_n_1\,
      CO(1) => \pwm_level2_inferred__0/i__carry__0_n_2\,
      CO(0) => \pwm_level2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_level2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\pwm_level2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_level2_inferred__0/i__carry__0_n_0\,
      CO(3) => \pwm_level2_inferred__0/i__carry__1_n_0\,
      CO(2) => \pwm_level2_inferred__0/i__carry__1_n_1\,
      CO(1) => \pwm_level2_inferred__0/i__carry__1_n_2\,
      CO(0) => \pwm_level2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_pwm_level2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\pwm_level2_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_level2_inferred__0/i__carry__1_n_0\,
      CO(3) => \pwm_level2_inferred__0/i__carry__2_n_0\,
      CO(2) => \pwm_level2_inferred__0/i__carry__2_n_1\,
      CO(1) => \pwm_level2_inferred__0/i__carry__2_n_2\,
      CO(0) => \pwm_level2_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_pwm_level2_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\pwm_level[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \pwm_level2_inferred__0/i__carry__2_n_0\,
      I1 => \pwm_level2_carry__2_n_0\,
      O => \pwm_level[3]_i_1_n_0\
    );
\pwm_level_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => HTR_DUTY(0),
      Q => \pwm_level_reg_n_0_[0]\,
      R => \pwm_level[3]_i_1_n_0\
    );
\pwm_level_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => HTR_DUTY(1),
      Q => \pwm_level_reg_n_0_[1]\,
      R => \pwm_level[3]_i_1_n_0\
    );
\pwm_level_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => HTR_DUTY(2),
      Q => \pwm_level_reg_n_0_[2]\,
      R => \pwm_level[3]_i_1_n_0\
    );
\pwm_level_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => HTR_DUTY(3),
      Q => \pwm_level_reg_n_0_[3]\,
      R => \pwm_level[3]_i_1_n_0\
    );
pwm_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888E8E8EEEE8E8E8"
    )
        port map (
      I0 => pwm_sig_i_2_n_0,
      I1 => counter_reg(3),
      I2 => \pwm_level_reg_n_0_[2]\,
      I3 => \pwm_level_reg_n_0_[0]\,
      I4 => \pwm_level_reg_n_0_[1]\,
      I5 => \pwm_level_reg_n_0_[3]\,
      O => p_0_in
    );
pwm_sig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFC8FFF80000EFC"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => \pwm_level_reg_n_0_[1]\,
      I3 => \pwm_level_reg_n_0_[0]\,
      I4 => \pwm_level_reg_n_0_[2]\,
      I5 => counter_reg(2),
      O => pwm_sig_i_2_n_0
    );
pwm_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => diag_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_HTR_controller_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    HTR_DUTY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    nmos_out : out STD_LOGIC;
    diag_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of testwith1speed_HTR_controller_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_HTR_controller_1_0 : entity is "testwith1speed_HTR_controller_1_0,HTR_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_HTR_controller_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_HTR_controller_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of testwith1speed_HTR_controller_1_0 : entity is "HTR_controller,Vivado 2024.2";
end testwith1speed_HTR_controller_1_0;

architecture STRUCTURE of testwith1speed_HTR_controller_1_0 is
  signal \^diag_out\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  diag_out <= \^diag_out\;
  nmos_out <= \^diag_out\;
U0: entity work.testwith1speed_HTR_controller_1_0_HTR_controller
     port map (
      HTR_DUTY(31 downto 0) => HTR_DUTY(31 downto 0),
      clk => clk,
      diag_out => \^diag_out\,
      rst => rst
    );
end STRUCTURE;

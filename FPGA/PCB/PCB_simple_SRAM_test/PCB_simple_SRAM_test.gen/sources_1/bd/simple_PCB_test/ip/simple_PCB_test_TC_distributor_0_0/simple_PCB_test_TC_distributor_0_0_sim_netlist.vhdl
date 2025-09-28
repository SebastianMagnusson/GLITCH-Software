-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Sep 28 11:18:01 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_simple_SRAM_test/PCB_simple_SRAM_test.gen/sources_1/bd/simple_PCB_test/ip/simple_PCB_test_TC_distributor_0_0/simple_PCB_test_TC_distributor_0_0_sim_netlist.vhdl
-- Design      : simple_PCB_test_TC_distributor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simple_PCB_test_TC_distributor_0_0_TC_distributor is
  port (
    cmd1 : out STD_LOGIC;
    cmd5 : out STD_LOGIC;
    cmd2 : out STD_LOGIC;
    cmd0 : out STD_LOGIC;
    cmd4 : out STD_LOGIC;
    cmd3 : out STD_LOGIC;
    cmd6 : out STD_LOGIC;
    led0 : out STD_LOGIC;
    TC_DV : in STD_LOGIC;
    TC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of simple_PCB_test_TC_distributor_0_0_TC_distributor : entity is "TC_distributor";
end simple_PCB_test_TC_distributor_0_0_TC_distributor;

architecture STRUCTURE of simple_PCB_test_TC_distributor_0_0_TC_distributor is
  signal TC_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \TC_i[7]_i_1_n_0\ : STD_LOGIC;
  signal TC_prev_i_1_n_0 : STD_LOGIC;
  signal TC_prev_reg_n_0 : STD_LOGIC;
  signal \^cmd0\ : STD_LOGIC;
  signal cmd0_i_1_n_0 : STD_LOGIC;
  signal cmd0_i_2_n_0 : STD_LOGIC;
  signal cmd0_i_3_n_0 : STD_LOGIC;
  signal \^cmd1\ : STD_LOGIC;
  signal cmd1_i_1_n_0 : STD_LOGIC;
  signal cmd1_i_2_n_0 : STD_LOGIC;
  signal \^cmd2\ : STD_LOGIC;
  signal cmd2_i_1_n_0 : STD_LOGIC;
  signal cmd2_i_2_n_0 : STD_LOGIC;
  signal \^cmd3\ : STD_LOGIC;
  signal cmd3_i_1_n_0 : STD_LOGIC;
  signal cmd3_i_2_n_0 : STD_LOGIC;
  signal \^cmd4\ : STD_LOGIC;
  signal cmd4_i_1_n_0 : STD_LOGIC;
  signal cmd4_i_2_n_0 : STD_LOGIC;
  signal \^cmd5\ : STD_LOGIC;
  signal cmd5_i_1_n_0 : STD_LOGIC;
  signal \^cmd6\ : STD_LOGIC;
  signal cmd6_i_1_n_0 : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal \wait_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_12_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_13_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_14_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_15_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_16_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \wait_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal wait_cnt_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \wait_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \wait_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_wait_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_cnt_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of TC_prev_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of cmd0_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cmd1_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cmd2_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cmd3_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cmd4_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_cnt[0]_i_11\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_cnt[0]_i_12\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_cnt[0]_i_9\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_cnt_reg[8]_i_1\ : label is 11;
begin
  cmd0 <= \^cmd0\;
  cmd1 <= \^cmd1\;
  cmd2 <= \^cmd2\;
  cmd3 <= \^cmd3\;
  cmd4 <= \^cmd4\;
  cmd5 <= \^cmd5\;
  cmd6 <= \^cmd6\;
\TC_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => TC_prev_reg_n_0,
      I1 => TC_DV,
      I2 => state,
      I3 => \wait_cnt[0]_i_2_n_0\,
      O => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(0),
      Q => TC_i(0),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(1),
      Q => TC_i(1),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(2),
      Q => TC_i(2),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(3),
      Q => TC_i(3),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(4),
      Q => TC_i(4),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(5),
      Q => TC_i(5),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(6),
      Q => TC_i(6),
      R => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led0_i_1_n_0,
      D => TC(7),
      Q => TC_i(7),
      R => \TC_i[7]_i_1_n_0\
    );
TC_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => TC_DV,
      I1 => state,
      I2 => \wait_cnt[0]_i_2_n_0\,
      I3 => TC_prev_reg_n_0,
      O => TC_prev_i_1_n_0
    );
TC_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => TC_prev_i_1_n_0,
      Q => TC_prev_reg_n_0,
      R => '0'
    );
cmd0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \wait_cnt[0]_i_2_n_0\,
      I1 => state,
      O => cmd0_i_1_n_0
    );
cmd0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => cmd0_i_3_n_0,
      I1 => TC_i(0),
      I2 => TC_i(7),
      I3 => TC_i(3),
      I4 => TC_i(4),
      I5 => \^cmd0\,
      O => cmd0_i_2_n_0
    );
cmd0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => TC_i(2),
      I1 => TC_i(5),
      I2 => TC_i(1),
      I3 => TC_i(6),
      O => cmd0_i_3_n_0
    );
cmd0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd0_i_2_n_0,
      Q => \^cmd0\,
      R => cmd0_i_1_n_0
    );
cmd1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000400"
    )
        port map (
      I0 => cmd1_i_2_n_0,
      I1 => TC_i(4),
      I2 => TC_i(3),
      I3 => TC_i(0),
      I4 => TC_i(7),
      I5 => \^cmd1\,
      O => cmd1_i_1_n_0
    );
cmd1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => TC_i(6),
      I1 => TC_i(5),
      I2 => TC_i(2),
      I3 => TC_i(1),
      O => cmd1_i_2_n_0
    );
cmd1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd1_i_1_n_0,
      Q => \^cmd1\,
      R => cmd0_i_1_n_0
    );
cmd2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => TC_i(3),
      I1 => TC_i(5),
      I2 => TC_i(0),
      I3 => TC_i(7),
      I4 => cmd2_i_2_n_0,
      I5 => \^cmd2\,
      O => cmd2_i_1_n_0
    );
cmd2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => TC_i(2),
      I1 => TC_i(1),
      I2 => TC_i(6),
      I3 => TC_i(4),
      O => cmd2_i_2_n_0
    );
cmd2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd2_i_1_n_0,
      Q => \^cmd2\,
      R => cmd0_i_1_n_0
    );
cmd3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => TC_i(4),
      I1 => TC_i(2),
      I2 => TC_i(5),
      I3 => TC_i(3),
      I4 => cmd3_i_2_n_0,
      I5 => \^cmd3\,
      O => cmd3_i_1_n_0
    );
cmd3_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => TC_i(0),
      I1 => TC_i(7),
      I2 => TC_i(1),
      I3 => TC_i(6),
      O => cmd3_i_2_n_0
    );
cmd3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd3_i_1_n_0,
      Q => \^cmd3\,
      R => cmd0_i_1_n_0
    );
cmd4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => cmd4_i_2_n_0,
      I1 => TC_i(5),
      I2 => TC_i(0),
      I3 => TC_i(7),
      I4 => TC_i(6),
      I5 => \^cmd4\,
      O => cmd4_i_1_n_0
    );
cmd4_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => TC_i(4),
      I1 => TC_i(3),
      I2 => TC_i(2),
      I3 => TC_i(1),
      O => cmd4_i_2_n_0
    );
cmd4_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd4_i_1_n_0,
      Q => \^cmd4\,
      R => cmd0_i_1_n_0
    );
cmd5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => TC_i(5),
      I1 => TC_i(3),
      I2 => TC_i(0),
      I3 => TC_i(7),
      I4 => cmd2_i_2_n_0,
      I5 => \^cmd5\,
      O => cmd5_i_1_n_0
    );
cmd5_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd5_i_1_n_0,
      Q => \^cmd5\,
      R => cmd0_i_1_n_0
    );
cmd6_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => TC_i(3),
      I1 => TC_i(5),
      I2 => TC_i(4),
      I3 => TC_i(2),
      I4 => cmd3_i_2_n_0,
      I5 => \^cmd6\,
      O => cmd6_i_1_n_0
    );
cmd6_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd6_i_1_n_0,
      Q => \^cmd6\,
      R => cmd0_i_1_n_0
    );
led0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wait_cnt[0]_i_2_n_0\,
      O => led0_i_1_n_0
    );
led0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => led0_i_1_n_0,
      Q => led0,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F002"
    )
        port map (
      I0 => TC_DV,
      I1 => TC_prev_reg_n_0,
      I2 => \wait_cnt[0]_i_2_n_0\,
      I3 => state,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state,
      R => '0'
    );
\wait_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \wait_cnt[0]_i_2_n_0\,
      I1 => state,
      I2 => \wait_cnt[0]_i_4_n_0\,
      I3 => \wait_cnt[0]_i_5_n_0\,
      O => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => cmd3_i_2_n_0,
      I1 => TC_i(2),
      I2 => TC_i(4),
      I3 => TC_i(5),
      I4 => TC_i(3),
      O => \wait_cnt[0]_i_10_n_0\
    );
\wait_cnt[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TC_i(7),
      I1 => TC_i(0),
      O => \wait_cnt[0]_i_11_n_0\
    );
\wait_cnt[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => TC_i(1),
      I1 => TC_i(2),
      O => \wait_cnt[0]_i_12_n_0\
    );
\wait_cnt[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_cnt_reg(13),
      I1 => wait_cnt_reg(16),
      I2 => wait_cnt_reg(14),
      I3 => wait_cnt_reg(15),
      O => \wait_cnt[0]_i_13_n_0\
    );
\wait_cnt[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_cnt_reg(11),
      I1 => wait_cnt_reg(12),
      I2 => wait_cnt_reg(9),
      I3 => wait_cnt_reg(8),
      I4 => wait_cnt_reg(10),
      O => \wait_cnt[0]_i_14_n_0\
    );
\wait_cnt[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wait_cnt_reg(2),
      I1 => wait_cnt_reg(3),
      I2 => wait_cnt_reg(6),
      I3 => wait_cnt_reg(0),
      O => \wait_cnt[0]_i_15_n_0\
    );
\wait_cnt[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_cnt_reg(5),
      I1 => wait_cnt_reg(7),
      I2 => wait_cnt_reg(1),
      I3 => wait_cnt_reg(4),
      O => \wait_cnt[0]_i_16_n_0\
    );
\wait_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4445FFFF"
    )
        port map (
      I0 => wait_cnt_reg(25),
      I1 => \wait_cnt[0]_i_6_n_0\,
      I2 => \wait_cnt[0]_i_7_n_0\,
      I3 => wait_cnt_reg(19),
      I4 => wait_cnt_reg(26),
      O => \wait_cnt[0]_i_2_n_0\
    );
\wait_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFBEFFF"
    )
        port map (
      I0 => \wait_cnt[0]_i_9_n_0\,
      I1 => TC_i(4),
      I2 => TC_i(3),
      I3 => TC_i(7),
      I4 => TC_i(0),
      I5 => \wait_cnt[0]_i_10_n_0\,
      O => \wait_cnt[0]_i_4_n_0\
    );
\wait_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004008"
    )
        port map (
      I0 => TC_i(4),
      I1 => \wait_cnt[0]_i_11_n_0\,
      I2 => TC_i(6),
      I3 => TC_i(5),
      I4 => TC_i(3),
      I5 => \wait_cnt[0]_i_12_n_0\,
      O => \wait_cnt[0]_i_5_n_0\
    );
\wait_cnt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => wait_cnt_reg(20),
      I1 => wait_cnt_reg(24),
      I2 => wait_cnt_reg(23),
      I3 => wait_cnt_reg(21),
      I4 => wait_cnt_reg(22),
      O => \wait_cnt[0]_i_6_n_0\
    );
\wait_cnt[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A8A8A88"
    )
        port map (
      I0 => wait_cnt_reg(18),
      I1 => wait_cnt_reg(17),
      I2 => \wait_cnt[0]_i_13_n_0\,
      I3 => \wait_cnt[0]_i_14_n_0\,
      I4 => \wait_cnt[0]_i_15_n_0\,
      I5 => \wait_cnt[0]_i_16_n_0\,
      O => \wait_cnt[0]_i_7_n_0\
    );
\wait_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_cnt_reg(0),
      O => \wait_cnt[0]_i_8_n_0\
    );
\wait_cnt[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDBF"
    )
        port map (
      I0 => TC_i(6),
      I1 => TC_i(1),
      I2 => TC_i(5),
      I3 => TC_i(2),
      O => \wait_cnt[0]_i_9_n_0\
    );
\wait_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[0]_i_3_n_7\,
      Q => wait_cnt_reg(0),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_cnt_reg[0]_i_3_n_0\,
      CO(2) => \wait_cnt_reg[0]_i_3_n_1\,
      CO(1) => \wait_cnt_reg[0]_i_3_n_2\,
      CO(0) => \wait_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_cnt_reg[0]_i_3_n_4\,
      O(2) => \wait_cnt_reg[0]_i_3_n_5\,
      O(1) => \wait_cnt_reg[0]_i_3_n_6\,
      O(0) => \wait_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_cnt_reg(3 downto 1),
      S(0) => \wait_cnt[0]_i_8_n_0\
    );
\wait_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[8]_i_1_n_5\,
      Q => wait_cnt_reg(10),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[8]_i_1_n_4\,
      Q => wait_cnt_reg(11),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[12]_i_1_n_7\,
      Q => wait_cnt_reg(12),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_cnt_reg[8]_i_1_n_0\,
      CO(3) => \wait_cnt_reg[12]_i_1_n_0\,
      CO(2) => \wait_cnt_reg[12]_i_1_n_1\,
      CO(1) => \wait_cnt_reg[12]_i_1_n_2\,
      CO(0) => \wait_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_cnt_reg[12]_i_1_n_4\,
      O(2) => \wait_cnt_reg[12]_i_1_n_5\,
      O(1) => \wait_cnt_reg[12]_i_1_n_6\,
      O(0) => \wait_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_cnt_reg(15 downto 12)
    );
\wait_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[12]_i_1_n_6\,
      Q => wait_cnt_reg(13),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[12]_i_1_n_5\,
      Q => wait_cnt_reg(14),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[12]_i_1_n_4\,
      Q => wait_cnt_reg(15),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[16]_i_1_n_7\,
      Q => wait_cnt_reg(16),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_cnt_reg[12]_i_1_n_0\,
      CO(3) => \wait_cnt_reg[16]_i_1_n_0\,
      CO(2) => \wait_cnt_reg[16]_i_1_n_1\,
      CO(1) => \wait_cnt_reg[16]_i_1_n_2\,
      CO(0) => \wait_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_cnt_reg[16]_i_1_n_4\,
      O(2) => \wait_cnt_reg[16]_i_1_n_5\,
      O(1) => \wait_cnt_reg[16]_i_1_n_6\,
      O(0) => \wait_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => wait_cnt_reg(19 downto 16)
    );
\wait_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[16]_i_1_n_6\,
      Q => wait_cnt_reg(17),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[16]_i_1_n_5\,
      Q => wait_cnt_reg(18),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[16]_i_1_n_4\,
      Q => wait_cnt_reg(19),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[0]_i_3_n_6\,
      Q => wait_cnt_reg(1),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[20]_i_1_n_7\,
      Q => wait_cnt_reg(20),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_cnt_reg[16]_i_1_n_0\,
      CO(3) => \wait_cnt_reg[20]_i_1_n_0\,
      CO(2) => \wait_cnt_reg[20]_i_1_n_1\,
      CO(1) => \wait_cnt_reg[20]_i_1_n_2\,
      CO(0) => \wait_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_cnt_reg[20]_i_1_n_4\,
      O(2) => \wait_cnt_reg[20]_i_1_n_5\,
      O(1) => \wait_cnt_reg[20]_i_1_n_6\,
      O(0) => \wait_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => wait_cnt_reg(23 downto 20)
    );
\wait_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[20]_i_1_n_6\,
      Q => wait_cnt_reg(21),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[20]_i_1_n_5\,
      Q => wait_cnt_reg(22),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[20]_i_1_n_4\,
      Q => wait_cnt_reg(23),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[24]_i_1_n_7\,
      Q => wait_cnt_reg(24),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_cnt_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_wait_cnt_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wait_cnt_reg[24]_i_1_n_2\,
      CO(0) => \wait_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_wait_cnt_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \wait_cnt_reg[24]_i_1_n_5\,
      O(1) => \wait_cnt_reg[24]_i_1_n_6\,
      O(0) => \wait_cnt_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => wait_cnt_reg(26 downto 24)
    );
\wait_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[24]_i_1_n_6\,
      Q => wait_cnt_reg(25),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[24]_i_1_n_5\,
      Q => wait_cnt_reg(26),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[0]_i_3_n_5\,
      Q => wait_cnt_reg(2),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[0]_i_3_n_4\,
      Q => wait_cnt_reg(3),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[4]_i_1_n_7\,
      Q => wait_cnt_reg(4),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_cnt_reg[0]_i_3_n_0\,
      CO(3) => \wait_cnt_reg[4]_i_1_n_0\,
      CO(2) => \wait_cnt_reg[4]_i_1_n_1\,
      CO(1) => \wait_cnt_reg[4]_i_1_n_2\,
      CO(0) => \wait_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_cnt_reg[4]_i_1_n_4\,
      O(2) => \wait_cnt_reg[4]_i_1_n_5\,
      O(1) => \wait_cnt_reg[4]_i_1_n_6\,
      O(0) => \wait_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_cnt_reg(7 downto 4)
    );
\wait_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[4]_i_1_n_6\,
      Q => wait_cnt_reg(5),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[4]_i_1_n_5\,
      Q => wait_cnt_reg(6),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[4]_i_1_n_4\,
      Q => wait_cnt_reg(7),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[8]_i_1_n_7\,
      Q => wait_cnt_reg(8),
      R => \wait_cnt[0]_i_1_n_0\
    );
\wait_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_cnt_reg[4]_i_1_n_0\,
      CO(3) => \wait_cnt_reg[8]_i_1_n_0\,
      CO(2) => \wait_cnt_reg[8]_i_1_n_1\,
      CO(1) => \wait_cnt_reg[8]_i_1_n_2\,
      CO(0) => \wait_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_cnt_reg[8]_i_1_n_4\,
      O(2) => \wait_cnt_reg[8]_i_1_n_5\,
      O(1) => \wait_cnt_reg[8]_i_1_n_6\,
      O(0) => \wait_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_cnt_reg(11 downto 8)
    );
\wait_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wait_cnt[0]_i_2_n_0\,
      D => \wait_cnt_reg[8]_i_1_n_6\,
      Q => wait_cnt_reg(9),
      R => \wait_cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity simple_PCB_test_TC_distributor_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    TC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TC_DV : in STD_LOGIC;
    cmd0 : out STD_LOGIC;
    cmd1 : out STD_LOGIC;
    cmd2 : out STD_LOGIC;
    cmd3 : out STD_LOGIC;
    cmd4 : out STD_LOGIC;
    cmd5 : out STD_LOGIC;
    cmd6 : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of simple_PCB_test_TC_distributor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of simple_PCB_test_TC_distributor_0_0 : entity is "simple_PCB_test_TC_distributor_0_0,TC_distributor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of simple_PCB_test_TC_distributor_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of simple_PCB_test_TC_distributor_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of simple_PCB_test_TC_distributor_0_0 : entity is "TC_distributor,Vivado 2024.2";
end simple_PCB_test_TC_distributor_0_0;

architecture STRUCTURE of simple_PCB_test_TC_distributor_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.simple_PCB_test_TC_distributor_0_0_TC_distributor
     port map (
      TC(7 downto 0) => TC(7 downto 0),
      TC_DV => TC_DV,
      clk => clk,
      cmd0 => cmd0,
      cmd1 => cmd1,
      cmd2 => cmd2,
      cmd3 => cmd3,
      cmd4 => cmd4,
      cmd5 => cmd5,
      cmd6 => cmd6,
      led0 => led0
    );
end STRUCTURE;

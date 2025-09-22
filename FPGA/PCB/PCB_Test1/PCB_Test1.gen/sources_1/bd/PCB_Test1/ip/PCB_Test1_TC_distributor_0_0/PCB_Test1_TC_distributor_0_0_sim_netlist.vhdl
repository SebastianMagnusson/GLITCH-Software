-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Sep 21 13:41:55 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_TC_distributor_0_0/PCB_Test1_TC_distributor_0_0_sim_netlist.vhdl
-- Design      : PCB_Test1_TC_distributor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_Test1_TC_distributor_0_0_TC_distributor is
  port (
    cmd0 : out STD_LOGIC;
    cmd3 : out STD_LOGIC;
    cmd2 : out STD_LOGIC;
    cmd1 : out STD_LOGIC;
    TC_DV : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    TC : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_Test1_TC_distributor_0_0_TC_distributor : entity is "TC_distributor";
end PCB_Test1_TC_distributor_0_0_TC_distributor;

architecture STRUCTURE of PCB_Test1_TC_distributor_0_0_TC_distributor is
  signal TC_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \TC_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \TC_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \^cmd0\ : STD_LOGIC;
  signal cmd0_i_1_n_0 : STD_LOGIC;
  signal cmd0_i_2_n_0 : STD_LOGIC;
  signal cmd0_i_3_n_0 : STD_LOGIC;
  signal \^cmd1\ : STD_LOGIC;
  signal cmd1_i_1_n_0 : STD_LOGIC;
  signal \^cmd2\ : STD_LOGIC;
  signal cmd2_i_1_n_0 : STD_LOGIC;
  signal \^cmd3\ : STD_LOGIC;
  signal cmd3_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TC_i[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \TC_i[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \TC_i[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \TC_i[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TC_i[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \TC_i[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TC_i[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of cmd0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cmd1_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cmd2_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cmd3_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair2";
begin
  cmd0 <= \^cmd0\;
  cmd1 <= \^cmd1\;
  cmd2 <= \^cmd2\;
  cmd3 <= \^cmd3\;
\TC_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(0),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[0]_i_1_n_0\
    );
\TC_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(1),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[1]_i_1_n_0\
    );
\TC_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(2),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[2]_i_1_n_0\
    );
\TC_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(3),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[3]_i_1_n_0\
    );
\TC_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(4),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[4]_i_1_n_0\
    );
\TC_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(5),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[5]_i_1_n_0\
    );
\TC_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(6),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[6]_i_1_n_0\
    );
\TC_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TC(7),
      I1 => TC_DV,
      I2 => state,
      O => \TC_i[7]_i_1_n_0\
    );
\TC_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[0]_i_1_n_0\,
      Q => TC_i(0),
      R => rst
    );
\TC_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[1]_i_1_n_0\,
      Q => TC_i(1),
      R => rst
    );
\TC_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[2]_i_1_n_0\,
      Q => TC_i(2),
      R => rst
    );
\TC_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[3]_i_1_n_0\,
      Q => TC_i(3),
      R => rst
    );
\TC_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[4]_i_1_n_0\,
      Q => TC_i(4),
      R => rst
    );
\TC_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[5]_i_1_n_0\,
      Q => TC_i(5),
      R => rst
    );
\TC_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[6]_i_1_n_0\,
      Q => \TC_i_reg_n_0_[6]\,
      R => rst
    );
\TC_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \TC_i[7]_i_1_n_0\,
      Q => TC_i(7),
      R => rst
    );
cmd0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => state,
      O => cmd0_i_1_n_0
    );
cmd0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => cmd0_i_3_n_0,
      I1 => TC_i(5),
      I2 => \TC_i_reg_n_0_[6]\,
      I3 => \^cmd0\,
      O => cmd0_i_2_n_0
    );
cmd0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => TC_i(2),
      I1 => TC_i(3),
      I2 => TC_i(4),
      I3 => TC_i(7),
      I4 => TC_i(1),
      I5 => TC_i(0),
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
cmd1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => cmd0_i_3_n_0,
      I1 => TC_i(5),
      I2 => \TC_i_reg_n_0_[6]\,
      I3 => \^cmd1\,
      O => cmd1_i_1_n_0
    );
cmd1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd1_i_1_n_0,
      Q => \^cmd1\,
      R => cmd0_i_1_n_0
    );
cmd2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => cmd0_i_3_n_0,
      I1 => \TC_i_reg_n_0_[6]\,
      I2 => TC_i(5),
      I3 => \^cmd2\,
      O => cmd2_i_1_n_0
    );
cmd2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd2_i_1_n_0,
      Q => \^cmd2\,
      R => cmd0_i_1_n_0
    );
cmd3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => cmd0_i_3_n_0,
      I1 => TC_i(5),
      I2 => \TC_i_reg_n_0_[6]\,
      I3 => \^cmd3\,
      O => cmd3_i_1_n_0
    );
cmd3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd3_i_1_n_0,
      Q => \^cmd3\,
      R => cmd0_i_1_n_0
    );
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TC_DV,
      I1 => state,
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
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_Test1_TC_distributor_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    TC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TC_DV : in STD_LOGIC;
    cmd0 : out STD_LOGIC;
    cmd1 : out STD_LOGIC;
    cmd2 : out STD_LOGIC;
    cmd3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_Test1_TC_distributor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_Test1_TC_distributor_0_0 : entity is "PCB_Test1_TC_distributor_0_0,TC_distributor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_Test1_TC_distributor_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_Test1_TC_distributor_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_Test1_TC_distributor_0_0 : entity is "TC_distributor,Vivado 2024.2";
end PCB_Test1_TC_distributor_0_0;

architecture STRUCTURE of PCB_Test1_TC_distributor_0_0 is
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
U0: entity work.PCB_Test1_TC_distributor_0_0_TC_distributor
     port map (
      TC(7 downto 0) => TC(7 downto 0),
      TC_DV => TC_DV,
      clk => clk,
      cmd0 => cmd0,
      cmd1 => cmd1,
      cmd2 => cmd2,
      cmd3 => cmd3,
      rst => rst
    );
end STRUCTURE;

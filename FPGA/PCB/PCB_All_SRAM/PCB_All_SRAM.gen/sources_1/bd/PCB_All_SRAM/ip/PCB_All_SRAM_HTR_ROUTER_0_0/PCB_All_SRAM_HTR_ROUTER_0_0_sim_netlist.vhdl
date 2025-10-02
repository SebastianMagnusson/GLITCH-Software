-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:45:25 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_ROUTER_0_0/PCB_All_SRAM_HTR_ROUTER_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_HTR_ROUTER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER is
  port (
    HTR_request_heater : out STD_LOGIC;
    I2C_read_done_heater : out STD_LOGIC;
    temp_DV : out STD_LOGIC;
    temp_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    HTR_request_normal : out STD_LOGIC;
    I2C_read_done_normal : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    HTR_request : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    I2C_read_done : in STD_LOGIC;
    temp_DV_normal : in STD_LOGIC;
    temp_DV_heater : in STD_LOGIC;
    temp_data_normal : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_data_heater : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER : entity is "HTR_ROUTER";
end PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER;

architecture STRUCTURE of PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER is
  signal \HTR_request_heater__0_n_0\ : STD_LOGIC;
  signal HTR_request_normal_i_1_n_0 : STD_LOGIC;
  signal \I2C_read_done_heater__0_n_0\ : STD_LOGIC;
  signal I2C_read_done_normal_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_DV__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \HTR_request_heater__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of HTR_request_normal_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \I2C_read_done_heater__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of I2C_read_done_normal_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_DV__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_data[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp_data[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_data[2]_i_1\ : label is "soft_lutpair3";
begin
\HTR_request_heater__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => HTR_request,
      I1 => HTR_rst,
      I2 => reset_n,
      O => \HTR_request_heater__0_n_0\
    );
HTR_request_heater_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \HTR_request_heater__0_n_0\,
      Q => HTR_request_heater,
      R => '0'
    );
HTR_request_normal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_request,
      I1 => reset_n,
      O => HTR_request_normal_i_1_n_0
    );
HTR_request_normal_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => HTR_request_normal_i_1_n_0,
      Q => HTR_request_normal,
      R => '0'
    );
\I2C_read_done_heater__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => I2C_read_done,
      I1 => HTR_rst,
      I2 => reset_n,
      O => \I2C_read_done_heater__0_n_0\
    );
I2C_read_done_heater_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \I2C_read_done_heater__0_n_0\,
      Q => I2C_read_done_heater,
      R => '0'
    );
I2C_read_done_normal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I2C_read_done,
      I1 => reset_n,
      O => I2C_read_done_normal_i_1_n_0
    );
I2C_read_done_normal_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => I2C_read_done_normal_i_1_n_0,
      Q => I2C_read_done_normal,
      R => '0'
    );
\temp_DV__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_DV_normal,
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_DV_heater,
      O => \temp_DV__0_n_0\
    );
temp_DV_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \temp_DV__0_n_0\,
      Q => temp_DV,
      R => '0'
    );
\temp_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(0),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(0),
      O => p_0_in(0)
    );
\temp_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(10),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(10),
      O => p_0_in(10)
    );
\temp_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(11),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(11),
      O => p_0_in(11)
    );
\temp_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(12),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(12),
      O => p_0_in(12)
    );
\temp_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(13),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(13),
      O => p_0_in(13)
    );
\temp_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(14),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(14),
      O => p_0_in(14)
    );
\temp_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(15),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(15),
      O => p_0_in(15)
    );
\temp_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(16),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(16),
      O => p_0_in(16)
    );
\temp_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(17),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(17),
      O => p_0_in(17)
    );
\temp_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(18),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(18),
      O => p_0_in(18)
    );
\temp_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(19),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(19),
      O => p_0_in(19)
    );
\temp_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(1),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(1),
      O => p_0_in(1)
    );
\temp_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(20),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(20),
      O => p_0_in(20)
    );
\temp_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(21),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(21),
      O => p_0_in(21)
    );
\temp_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(22),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(22),
      O => p_0_in(22)
    );
\temp_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(23),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(23),
      O => p_0_in(23)
    );
\temp_data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(24),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(24),
      O => p_0_in(24)
    );
\temp_data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(25),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(25),
      O => p_0_in(25)
    );
\temp_data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(26),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(26),
      O => p_0_in(26)
    );
\temp_data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(27),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(27),
      O => p_0_in(27)
    );
\temp_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(28),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(28),
      O => p_0_in(28)
    );
\temp_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(29),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(29),
      O => p_0_in(29)
    );
\temp_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(2),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(2),
      O => p_0_in(2)
    );
\temp_data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(30),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(30),
      O => p_0_in(30)
    );
\temp_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(31),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(31),
      O => p_0_in(31)
    );
\temp_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(3),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(3),
      O => p_0_in(3)
    );
\temp_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(4),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(4),
      O => p_0_in(4)
    );
\temp_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(5),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(5),
      O => p_0_in(5)
    );
\temp_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(6),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(6),
      O => p_0_in(6)
    );
\temp_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(7),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(7),
      O => p_0_in(7)
    );
\temp_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(8),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(8),
      O => p_0_in(8)
    );
\temp_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => temp_data_normal(9),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => temp_data_heater(9),
      O => p_0_in(9)
    );
\temp_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(0),
      Q => temp_data(0),
      R => '0'
    );
\temp_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(10),
      Q => temp_data(10),
      R => '0'
    );
\temp_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(11),
      Q => temp_data(11),
      R => '0'
    );
\temp_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(12),
      Q => temp_data(12),
      R => '0'
    );
\temp_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(13),
      Q => temp_data(13),
      R => '0'
    );
\temp_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(14),
      Q => temp_data(14),
      R => '0'
    );
\temp_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(15),
      Q => temp_data(15),
      R => '0'
    );
\temp_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(16),
      Q => temp_data(16),
      R => '0'
    );
\temp_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(17),
      Q => temp_data(17),
      R => '0'
    );
\temp_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(18),
      Q => temp_data(18),
      R => '0'
    );
\temp_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(19),
      Q => temp_data(19),
      R => '0'
    );
\temp_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(1),
      Q => temp_data(1),
      R => '0'
    );
\temp_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(20),
      Q => temp_data(20),
      R => '0'
    );
\temp_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(21),
      Q => temp_data(21),
      R => '0'
    );
\temp_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(22),
      Q => temp_data(22),
      R => '0'
    );
\temp_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(23),
      Q => temp_data(23),
      R => '0'
    );
\temp_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(24),
      Q => temp_data(24),
      R => '0'
    );
\temp_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(25),
      Q => temp_data(25),
      R => '0'
    );
\temp_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(26),
      Q => temp_data(26),
      R => '0'
    );
\temp_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(27),
      Q => temp_data(27),
      R => '0'
    );
\temp_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(28),
      Q => temp_data(28),
      R => '0'
    );
\temp_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(29),
      Q => temp_data(29),
      R => '0'
    );
\temp_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(2),
      Q => temp_data(2),
      R => '0'
    );
\temp_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(30),
      Q => temp_data(30),
      R => '0'
    );
\temp_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(31),
      Q => temp_data(31),
      R => '0'
    );
\temp_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(3),
      Q => temp_data(3),
      R => '0'
    );
\temp_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(4),
      Q => temp_data(4),
      R => '0'
    );
\temp_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(5),
      Q => temp_data(5),
      R => '0'
    );
\temp_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(6),
      Q => temp_data(6),
      R => '0'
    );
\temp_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(7),
      Q => temp_data(7),
      R => '0'
    );
\temp_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(8),
      Q => temp_data(8),
      R => '0'
    );
\temp_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(9),
      Q => temp_data(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_HTR_ROUTER_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    led1 : out STD_LOGIC;
    HTR_request : in STD_LOGIC;
    I2C_read_done : in STD_LOGIC;
    HTR_request_normal : out STD_LOGIC;
    I2C_read_done_normal : out STD_LOGIC;
    temp_data_normal : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV_normal : in STD_LOGIC;
    HTR_request_heater : out STD_LOGIC;
    I2C_read_done_heater : out STD_LOGIC;
    temp_data_heater : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV_heater : in STD_LOGIC;
    temp_DV : out STD_LOGIC;
    temp_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "HTR_ROUTER,Vivado 2024.2";
end PCB_All_SRAM_HTR_ROUTER_0_0;

architecture STRUCTURE of PCB_All_SRAM_HTR_ROUTER_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of HTR_rst : signal is "xilinx.com:signal:reset:1.0 HTR_rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of HTR_rst : signal is "slave HTR_rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of HTR_rst : signal is "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  led1 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER
     port map (
      HTR_request => HTR_request,
      HTR_request_heater => HTR_request_heater,
      HTR_request_normal => HTR_request_normal,
      HTR_rst => HTR_rst,
      I2C_read_done => I2C_read_done,
      I2C_read_done_heater => I2C_read_done_heater,
      I2C_read_done_normal => I2C_read_done_normal,
      reset_n => reset_n,
      sysclk => sysclk,
      temp_DV => temp_DV,
      temp_DV_heater => temp_DV_heater,
      temp_DV_normal => temp_DV_normal,
      temp_data(31 downto 0) => temp_data(31 downto 0),
      temp_data_heater(31 downto 0) => temp_data_heater(31 downto 0),
      temp_data_normal(31 downto 0) => temp_data_normal(31 downto 0)
    );
end STRUCTURE;

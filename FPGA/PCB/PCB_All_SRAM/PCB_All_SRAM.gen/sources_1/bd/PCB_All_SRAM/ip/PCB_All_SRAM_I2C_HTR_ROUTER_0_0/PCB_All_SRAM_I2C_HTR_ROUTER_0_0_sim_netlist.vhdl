-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:45:28 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_HTR_ROUTER_0_0/PCB_All_SRAM_I2C_HTR_ROUTER_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_I2C_HTR_ROUTER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER is
  port (
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_read_heater : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_busy_normal : out STD_LOGIC;
    i_data_read_normal : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_busy_heater : out STD_LOGIC;
    reset_i2c : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena_normal : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    o_i2c_ena_heater : in STD_LOGIC;
    o_i2c_address_normal : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_address_heater : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw_normal : in STD_LOGIC;
    o_i2c_rw_heater : in STD_LOGIC;
    o_i2c_data_wr_normal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_data_wr_heater : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER : entity is "I2C_HTR_ROUTER";
end PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER;

architecture STRUCTURE of PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER is
  signal i_busy_heater_i_1_n_0 : STD_LOGIC;
  signal i_busy_normal_i_1_n_0 : STD_LOGIC;
  signal \i_data_read_heater[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[5]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[6]_i_1_n_0\ : STD_LOGIC;
  signal \i_data_read_heater[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_ena__0_n_0\ : STD_LOGIC;
  signal \o_i2c_rw__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_data_read_heater[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_data_read_heater[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_data_read_heater[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_data_read_heater[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_data_read_heater[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_data_read_heater[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_data_read_heater[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_data_read_heater[7]_i_1\ : label is "soft_lutpair3";
begin
i_busy_heater_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_busy,
      O => i_busy_heater_i_1_n_0
    );
i_busy_heater_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_busy_heater_i_1_n_0,
      Q => i_busy_heater,
      R => reset_n
    );
i_busy_normal_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => i_busy_normal_i_1_n_0
    );
i_busy_normal_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_busy,
      Q => i_busy_normal,
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_heater[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(0),
      O => \i_data_read_heater[0]_i_1_n_0\
    );
\i_data_read_heater[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(1),
      O => \i_data_read_heater[1]_i_1_n_0\
    );
\i_data_read_heater[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(2),
      O => \i_data_read_heater[2]_i_1_n_0\
    );
\i_data_read_heater[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(3),
      O => \i_data_read_heater[3]_i_1_n_0\
    );
\i_data_read_heater[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(4),
      O => \i_data_read_heater[4]_i_1_n_0\
    );
\i_data_read_heater[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(5),
      O => \i_data_read_heater[5]_i_1_n_0\
    );
\i_data_read_heater[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(6),
      O => \i_data_read_heater[6]_i_1_n_0\
    );
\i_data_read_heater[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => HTR_rst,
      I1 => i_data_read(7),
      O => \i_data_read_heater[7]_i_1_n_0\
    );
\i_data_read_heater_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[0]_i_1_n_0\,
      Q => i_data_read_heater(0),
      R => reset_n
    );
\i_data_read_heater_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[1]_i_1_n_0\,
      Q => i_data_read_heater(1),
      R => reset_n
    );
\i_data_read_heater_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[2]_i_1_n_0\,
      Q => i_data_read_heater(2),
      R => reset_n
    );
\i_data_read_heater_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[3]_i_1_n_0\,
      Q => i_data_read_heater(3),
      R => reset_n
    );
\i_data_read_heater_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[4]_i_1_n_0\,
      Q => i_data_read_heater(4),
      R => reset_n
    );
\i_data_read_heater_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[5]_i_1_n_0\,
      Q => i_data_read_heater(5),
      R => reset_n
    );
\i_data_read_heater_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[6]_i_1_n_0\,
      Q => i_data_read_heater(6),
      R => reset_n
    );
\i_data_read_heater_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \i_data_read_heater[7]_i_1_n_0\,
      Q => i_data_read_heater(7),
      R => reset_n
    );
\i_data_read_normal_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(0),
      Q => i_data_read_normal(0),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(1),
      Q => i_data_read_normal(1),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(2),
      Q => i_data_read_normal(2),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(3),
      Q => i_data_read_normal(3),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(4),
      Q => i_data_read_normal(4),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(5),
      Q => i_data_read_normal(5),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(6),
      Q => i_data_read_normal(6),
      R => i_busy_normal_i_1_n_0
    );
\i_data_read_normal_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => i_data_read(7),
      Q => i_data_read_normal(7),
      R => i_busy_normal_i_1_n_0
    );
\o_i2c_address[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(0),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(0),
      O => \o_i2c_address[0]_i_1_n_0\
    );
\o_i2c_address[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(1),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(1),
      O => \o_i2c_address[1]_i_1_n_0\
    );
\o_i2c_address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(2),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(2),
      O => \o_i2c_address[2]_i_1_n_0\
    );
\o_i2c_address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(3),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(3),
      O => \o_i2c_address[3]_i_1_n_0\
    );
\o_i2c_address[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(4),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(4),
      O => \o_i2c_address[4]_i_1_n_0\
    );
\o_i2c_address[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(5),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(5),
      O => \o_i2c_address[5]_i_1_n_0\
    );
\o_i2c_address[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_address_normal(6),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_address_heater(6),
      O => \o_i2c_address[6]_i_1_n_0\
    );
\o_i2c_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[0]_i_1_n_0\,
      Q => o_i2c_address(0),
      R => '0'
    );
\o_i2c_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[1]_i_1_n_0\,
      Q => o_i2c_address(1),
      R => '0'
    );
\o_i2c_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[2]_i_1_n_0\,
      Q => o_i2c_address(2),
      R => '0'
    );
\o_i2c_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[3]_i_1_n_0\,
      Q => o_i2c_address(3),
      R => '0'
    );
\o_i2c_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[4]_i_1_n_0\,
      Q => o_i2c_address(4),
      R => '0'
    );
\o_i2c_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[5]_i_1_n_0\,
      Q => o_i2c_address(5),
      R => '0'
    );
\o_i2c_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_address[6]_i_1_n_0\,
      Q => o_i2c_address(6),
      R => '0'
    );
\o_i2c_data_wr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(0),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(0),
      O => p_0_in(0)
    );
\o_i2c_data_wr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(1),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(1),
      O => p_0_in(1)
    );
\o_i2c_data_wr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(2),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(2),
      O => p_0_in(2)
    );
\o_i2c_data_wr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(3),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(3),
      O => p_0_in(3)
    );
\o_i2c_data_wr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(4),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(4),
      O => p_0_in(4)
    );
\o_i2c_data_wr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(5),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(5),
      O => p_0_in(5)
    );
\o_i2c_data_wr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(6),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(6),
      O => p_0_in(6)
    );
\o_i2c_data_wr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_data_wr_normal(7),
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_data_wr_heater(7),
      O => p_0_in(7)
    );
\o_i2c_data_wr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(0),
      Q => o_i2c_data_wr(0),
      R => '0'
    );
\o_i2c_data_wr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(1),
      Q => o_i2c_data_wr(1),
      R => '0'
    );
\o_i2c_data_wr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(2),
      Q => o_i2c_data_wr(2),
      R => '0'
    );
\o_i2c_data_wr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(3),
      Q => o_i2c_data_wr(3),
      R => '0'
    );
\o_i2c_data_wr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(4),
      Q => o_i2c_data_wr(4),
      R => '0'
    );
\o_i2c_data_wr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(5),
      Q => o_i2c_data_wr(5),
      R => '0'
    );
\o_i2c_data_wr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(6),
      Q => o_i2c_data_wr(6),
      R => '0'
    );
\o_i2c_data_wr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => p_0_in(7),
      Q => o_i2c_data_wr(7),
      R => '0'
    );
\o_i2c_ena__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_ena_normal,
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_ena_heater,
      O => \o_i2c_ena__0_n_0\
    );
o_i2c_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_ena__0_n_0\,
      Q => o_i2c_ena,
      R => '0'
    );
\o_i2c_rw__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => o_i2c_rw_normal,
      I1 => reset_n,
      I2 => HTR_rst,
      I3 => o_i2c_rw_heater,
      O => \o_i2c_rw__0_n_0\
    );
o_i2c_rw_reg: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \o_i2c_rw__0_n_0\,
      Q => o_i2c_rw,
      R => '0'
    );
reset_i2c_reg: unisim.vcomponents.FDSE
     port map (
      C => sysclk,
      CE => '1',
      D => HTR_rst,
      Q => reset_i2c,
      S => reset_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_I2C_HTR_ROUTER_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    led1 : out STD_LOGIC;
    reset_i2c : out STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena_heater : in STD_LOGIC;
    o_i2c_address_heater : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw_heater : in STD_LOGIC;
    o_i2c_data_wr_heater : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_busy_heater : out STD_LOGIC;
    i_data_read_heater : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena_normal : in STD_LOGIC;
    o_i2c_address_normal : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw_normal : in STD_LOGIC;
    o_i2c_data_wr_normal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_busy_normal : out STD_LOGIC;
    i_data_read_normal : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_I2C_HTR_ROUTER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_I2C_HTR_ROUTER_0_0 : entity is "PCB_All_SRAM_I2C_HTR_ROUTER_0_0,I2C_HTR_ROUTER,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_I2C_HTR_ROUTER_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_I2C_HTR_ROUTER_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_I2C_HTR_ROUTER_0_0 : entity is "I2C_HTR_ROUTER,Vivado 2024.2";
end PCB_All_SRAM_I2C_HTR_ROUTER_0_0;

architecture STRUCTURE of PCB_All_SRAM_I2C_HTR_ROUTER_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of HTR_rst : signal is "xilinx.com:signal:reset:1.0 HTR_rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of HTR_rst : signal is "slave HTR_rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of HTR_rst : signal is "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of reset_i2c : signal is "xilinx.com:signal:reset:1.0 reset_i2c RST";
  attribute x_interface_mode of reset_i2c : signal is "master reset_i2c";
  attribute x_interface_parameter of reset_i2c : signal is "XIL_INTERFACENAME reset_i2c, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  led1 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER
     port map (
      HTR_rst => HTR_rst,
      i_busy => i_busy,
      i_busy_heater => i_busy_heater,
      i_busy_normal => i_busy_normal,
      i_data_read(7 downto 0) => i_data_read(7 downto 0),
      i_data_read_heater(7 downto 0) => i_data_read_heater(7 downto 0),
      i_data_read_normal(7 downto 0) => i_data_read_normal(7 downto 0),
      o_i2c_address(6 downto 0) => o_i2c_address(6 downto 0),
      o_i2c_address_heater(6 downto 0) => o_i2c_address_heater(6 downto 0),
      o_i2c_address_normal(6 downto 0) => o_i2c_address_normal(6 downto 0),
      o_i2c_data_wr(7 downto 0) => o_i2c_data_wr(7 downto 0),
      o_i2c_data_wr_heater(7 downto 0) => o_i2c_data_wr_heater(7 downto 0),
      o_i2c_data_wr_normal(7 downto 0) => o_i2c_data_wr_normal(7 downto 0),
      o_i2c_ena => o_i2c_ena,
      o_i2c_ena_heater => o_i2c_ena_heater,
      o_i2c_ena_normal => o_i2c_ena_normal,
      o_i2c_rw => o_i2c_rw,
      o_i2c_rw_heater => o_i2c_rw_heater,
      o_i2c_rw_normal => o_i2c_rw_normal,
      reset_i2c => reset_i2c,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

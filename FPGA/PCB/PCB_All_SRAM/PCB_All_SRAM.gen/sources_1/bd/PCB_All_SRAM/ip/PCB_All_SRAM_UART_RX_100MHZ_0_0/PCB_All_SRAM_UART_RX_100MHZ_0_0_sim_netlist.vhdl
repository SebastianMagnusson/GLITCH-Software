-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 13:49:02 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_UART_RX_100MHZ_0_0/PCB_All_SRAM_UART_RX_100MHZ_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_UART_RX_100MHZ_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_UART_RX_100MHZ_0_0_UART_RX_100MHZ is
  port (
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_RX_DV : out STD_LOGIC;
    led0 : out STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_UART_RX_100MHZ_0_0_UART_RX_100MHZ : entity is "UART_RX_100MHZ";
end PCB_All_SRAM_UART_RX_100MHZ_0_0_UART_RX_100MHZ;

architecture STRUCTURE of PCB_All_SRAM_UART_RX_100MHZ_0_0_UART_RX_100MHZ is
  signal \^led0\ : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal \^o_rx_dv\ : STD_LOGIC;
  signal \^o_rx_byte\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_10_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_4_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_5_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_6_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_7_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_8_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[13]_i_9_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_Clk_Count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_Clk_Count_reg[13]_i_3_n_7\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_Clk_Count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_Clk_Count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_RX_Byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_3_n_0\ : STD_LOGIC;
  signal r_RX_DV_i_1_n_0 : STD_LOGIC;
  signal r_RX_DV_i_2_n_0 : STD_LOGIC;
  signal r_RX_DV_i_3_n_0 : STD_LOGIC;
  signal r_RX_DV_i_4_n_0 : STD_LOGIC;
  signal r_RX_DV_i_5_n_0 : STD_LOGIC;
  signal r_RX_Data : STD_LOGIC;
  signal r_RX_Data_R : STD_LOGIC;
  signal r_SM_Main : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_r_Clk_Count_reg[13]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_Clk_Count_reg[13]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of led0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Bit_Index[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Clk_Count[13]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Clk_Count[13]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Clk_Count[13]_i_9\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_Clk_Count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Clk_Count_reg[13]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Clk_Count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_Clk_Count_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \r_RX_Byte[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of r_RX_DV_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_RX_DV_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_SM_Main[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_SM_Main[2]_i_1\ : label is "soft_lutpair0";
begin
  led0 <= \^led0\;
  o_RX_DV <= \^o_rx_dv\;
  o_RX_byte(7 downto 0) <= \^o_rx_byte\(7 downto 0);
led0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => r_RX_DV_i_2_n_0,
      I4 => \^led0\,
      O => led0_i_1_n_0
    );
led0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => led0_i_1_n_0,
      Q => \^led0\,
      R => '0'
    );
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2626262626262600"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_RX_Byte[7]_i_2_n_0\,
      I2 => \r_SM_Main[0]_i_3_n_0\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      I4 => \r_SM_Main_reg_n_0_[2]\,
      I5 => \r_SM_Main_reg_n_0_[1]\,
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A006A6A"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => \r_RX_Byte[7]_i_2_n_0\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      I4 => \r_Bit_Index[2]_i_2_n_0\,
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA00006AAA6AAA"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => \r_RX_Byte[7]_i_2_n_0\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index_reg_n_0_[1]\,
      I4 => \r_SM_Main_reg_n_0_[0]\,
      I5 => \r_Bit_Index[2]_i_2_n_0\,
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      O => \r_Bit_Index[2]_i_2_n_0\
    );
\r_Bit_Index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Bit_Index[0]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[0]\,
      R => '0'
    );
\r_Bit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Bit_Index[1]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Bit_Index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_Bit_Index[2]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[2]\,
      R => '0'
    );
\r_Clk_Count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E4A0"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => r_RX_DV_i_2_n_0,
      I3 => \r_Clk_Count[13]_i_4_n_0\,
      I4 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[0]_i_1_n_0\
    );
\r_Clk_Count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"028A22AA"
    )
        port map (
      I0 => \r_Clk_Count[13]_i_2_n_0\,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      I2 => \r_SM_Main_reg_n_0_[0]\,
      I3 => r_RX_DV_i_2_n_0,
      I4 => \r_Clk_Count[13]_i_4_n_0\,
      O => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count[13]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[2]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[13]_i_10_n_0\
    );
\r_Clk_Count[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_Clk_Count[13]_i_5_n_0\,
      I2 => \r_Clk_Count[13]_i_6_n_0\,
      I3 => \r_Clk_Count[13]_i_7_n_0\,
      I4 => \r_Clk_Count[13]_i_8_n_0\,
      I5 => \r_Clk_Count[13]_i_9_n_0\,
      O => \r_Clk_Count[13]_i_2_n_0\
    );
\r_Clk_Count[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \r_Clk_Count[13]_i_8_n_0\,
      I1 => \r_Clk_Count[13]_i_7_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[3]\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      I4 => \r_Clk_Count[13]_i_10_n_0\,
      I5 => \r_Clk_Count_reg_n_0_[9]\,
      O => \r_Clk_Count[13]_i_4_n_0\
    );
\r_Clk_Count[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[11]\,
      I1 => \r_Clk_Count_reg_n_0_[9]\,
      I2 => \r_Clk_Count_reg_n_0_[10]\,
      I3 => \r_Clk_Count_reg_n_0_[5]\,
      I4 => \r_Clk_Count_reg_n_0_[3]\,
      I5 => \r_Clk_Count_reg_n_0_[4]\,
      O => \r_Clk_Count[13]_i_5_n_0\
    );
\r_Clk_Count[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[7]\,
      I1 => \r_Clk_Count_reg_n_0_[6]\,
      I2 => \r_Clk_Count_reg_n_0_[8]\,
      I3 => \r_Clk_Count_reg_n_0_[0]\,
      I4 => \r_Clk_Count_reg_n_0_[1]\,
      I5 => \r_Clk_Count_reg_n_0_[2]\,
      O => \r_Clk_Count[13]_i_6_n_0\
    );
\r_Clk_Count[13]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[4]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[7]\,
      I3 => \r_Clk_Count_reg_n_0_[8]\,
      O => \r_Clk_Count[13]_i_7_n_0\
    );
\r_Clk_Count[13]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[12]\,
      I1 => \r_Clk_Count_reg_n_0_[13]\,
      I2 => \r_Clk_Count_reg_n_0_[10]\,
      I3 => \r_Clk_Count_reg_n_0_[11]\,
      O => \r_Clk_Count[13]_i_8_n_0\
    );
\r_Clk_Count[13]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => r_RX_Data,
      I2 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_Clk_Count[13]_i_9_n_0\
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count[0]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[0]\,
      R => '0'
    );
\r_Clk_Count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[12]_i_1_n_6\,
      Q => \r_Clk_Count_reg_n_0_[10]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[12]_i_1_n_5\,
      Q => \r_Clk_Count_reg_n_0_[11]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[12]_i_1_n_4\,
      Q => \r_Clk_Count_reg_n_0_[12]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Clk_Count_reg[8]_i_1_n_0\,
      CO(3) => \r_Clk_Count_reg[12]_i_1_n_0\,
      CO(2) => \r_Clk_Count_reg[12]_i_1_n_1\,
      CO(1) => \r_Clk_Count_reg[12]_i_1_n_2\,
      CO(0) => \r_Clk_Count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Clk_Count_reg[12]_i_1_n_4\,
      O(2) => \r_Clk_Count_reg[12]_i_1_n_5\,
      O(1) => \r_Clk_Count_reg[12]_i_1_n_6\,
      O(0) => \r_Clk_Count_reg[12]_i_1_n_7\,
      S(3) => \r_Clk_Count_reg_n_0_[12]\,
      S(2) => \r_Clk_Count_reg_n_0_[11]\,
      S(1) => \r_Clk_Count_reg_n_0_[10]\,
      S(0) => \r_Clk_Count_reg_n_0_[9]\
    );
\r_Clk_Count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[13]_i_3_n_7\,
      Q => \r_Clk_Count_reg_n_0_[13]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[13]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Clk_Count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_Clk_Count_reg[13]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_Clk_Count_reg[13]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_Clk_Count_reg[13]_i_3_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \r_Clk_Count_reg_n_0_[13]\
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[4]_i_1_n_7\,
      Q => \r_Clk_Count_reg_n_0_[1]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[4]_i_1_n_6\,
      Q => \r_Clk_Count_reg_n_0_[2]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[4]_i_1_n_5\,
      Q => \r_Clk_Count_reg_n_0_[3]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[4]_i_1_n_4\,
      Q => \r_Clk_Count_reg_n_0_[4]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_Clk_Count_reg[4]_i_1_n_0\,
      CO(2) => \r_Clk_Count_reg[4]_i_1_n_1\,
      CO(1) => \r_Clk_Count_reg[4]_i_1_n_2\,
      CO(0) => \r_Clk_Count_reg[4]_i_1_n_3\,
      CYINIT => \r_Clk_Count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \r_Clk_Count_reg[4]_i_1_n_4\,
      O(2) => \r_Clk_Count_reg[4]_i_1_n_5\,
      O(1) => \r_Clk_Count_reg[4]_i_1_n_6\,
      O(0) => \r_Clk_Count_reg[4]_i_1_n_7\,
      S(3) => \r_Clk_Count_reg_n_0_[4]\,
      S(2) => \r_Clk_Count_reg_n_0_[3]\,
      S(1) => \r_Clk_Count_reg_n_0_[2]\,
      S(0) => \r_Clk_Count_reg_n_0_[1]\
    );
\r_Clk_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[8]_i_1_n_7\,
      Q => \r_Clk_Count_reg_n_0_[5]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[8]_i_1_n_6\,
      Q => \r_Clk_Count_reg_n_0_[6]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[8]_i_1_n_5\,
      Q => \r_Clk_Count_reg_n_0_[7]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[8]_i_1_n_4\,
      Q => \r_Clk_Count_reg_n_0_[8]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_Clk_Count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Clk_Count_reg[4]_i_1_n_0\,
      CO(3) => \r_Clk_Count_reg[8]_i_1_n_0\,
      CO(2) => \r_Clk_Count_reg[8]_i_1_n_1\,
      CO(1) => \r_Clk_Count_reg[8]_i_1_n_2\,
      CO(0) => \r_Clk_Count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Clk_Count_reg[8]_i_1_n_4\,
      O(2) => \r_Clk_Count_reg[8]_i_1_n_5\,
      O(1) => \r_Clk_Count_reg[8]_i_1_n_6\,
      O(0) => \r_Clk_Count_reg[8]_i_1_n_7\,
      S(3) => \r_Clk_Count_reg_n_0_[8]\,
      S(2) => \r_Clk_Count_reg_n_0_[7]\,
      S(1) => \r_Clk_Count_reg_n_0_[6]\,
      S(0) => \r_Clk_Count_reg_n_0_[5]\
    );
\r_Clk_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \r_Clk_Count[13]_i_2_n_0\,
      D => \r_Clk_Count_reg[12]_i_1_n_7\,
      Q => \r_Clk_Count_reg_n_0_[9]\,
      R => \r_Clk_Count[13]_i_1_n_0\
    );
\r_RX_Byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[2]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[0]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(0),
      O => \r_RX_Byte[0]_i_1_n_0\
    );
\r_RX_Byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(1),
      O => \r_RX_Byte[1]_i_1_n_0\
    );
\r_RX_Byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[2]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[0]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(2),
      O => \r_RX_Byte[2]_i_1_n_0\
    );
\r_RX_Byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[2]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index_reg_n_0_[1]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(3),
      O => \r_RX_Byte[3]_i_1_n_0\
    );
\r_RX_Byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[2]\,
      I3 => \r_Bit_Index_reg_n_0_[0]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(4),
      O => \r_RX_Byte[4]_i_1_n_0\
    );
\r_RX_Byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[2]\,
      I3 => \r_Bit_Index_reg_n_0_[1]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(5),
      O => \r_RX_Byte[5]_i_1_n_0\
    );
\r_RX_Byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[2]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[0]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(6),
      O => \r_RX_Byte[6]_i_1_n_0\
    );
\r_RX_Byte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_2_n_0\,
      I5 => \^o_rx_byte\(7),
      O => \r_RX_Byte[7]_i_1_n_0\
    );
\r_RX_Byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001550000"
    )
        port map (
      I0 => \r_RX_Byte[7]_i_3_n_0\,
      I1 => r_RX_DV_i_3_n_0,
      I2 => r_RX_DV_i_4_n_0,
      I3 => r_RX_DV_i_5_n_0,
      I4 => \r_SM_Main[0]_i_2_n_0\,
      I5 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_RX_Byte[7]_i_2_n_0\
    );
\r_RX_Byte[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[11]\,
      I1 => \r_Clk_Count_reg_n_0_[12]\,
      I2 => \r_Clk_Count_reg_n_0_[13]\,
      O => \r_RX_Byte[7]_i_3_n_0\
    );
\r_RX_Byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[0]_i_1_n_0\,
      Q => \^o_rx_byte\(0),
      R => '0'
    );
\r_RX_Byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[1]_i_1_n_0\,
      Q => \^o_rx_byte\(1),
      R => '0'
    );
\r_RX_Byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[2]_i_1_n_0\,
      Q => \^o_rx_byte\(2),
      R => '0'
    );
\r_RX_Byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[3]_i_1_n_0\,
      Q => \^o_rx_byte\(3),
      R => '0'
    );
\r_RX_Byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[4]_i_1_n_0\,
      Q => \^o_rx_byte\(4),
      R => '0'
    );
\r_RX_Byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[5]_i_1_n_0\,
      Q => \^o_rx_byte\(5),
      R => '0'
    );
\r_RX_Byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[6]_i_1_n_0\,
      Q => \^o_rx_byte\(6),
      R => '0'
    );
\r_RX_Byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_RX_Byte[7]_i_1_n_0\,
      Q => \^o_rx_byte\(7),
      R => '0'
    );
r_RX_DV_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF01000"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => r_RX_DV_i_2_n_0,
      I2 => \r_SM_Main_reg_n_0_[0]\,
      I3 => \r_SM_Main_reg_n_0_[1]\,
      I4 => \^o_rx_dv\,
      O => r_RX_DV_i_1_n_0
    );
r_RX_DV_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF5757575757"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[13]\,
      I1 => \r_Clk_Count_reg_n_0_[12]\,
      I2 => \r_Clk_Count_reg_n_0_[11]\,
      I3 => r_RX_DV_i_3_n_0,
      I4 => r_RX_DV_i_4_n_0,
      I5 => r_RX_DV_i_5_n_0,
      O => r_RX_DV_i_2_n_0
    );
r_RX_DV_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[6]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[7]\,
      O => r_RX_DV_i_3_n_0
    );
r_RX_DV_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111111111111"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[4]\,
      I1 => \r_Clk_Count_reg_n_0_[6]\,
      I2 => \r_Clk_Count_reg_n_0_[3]\,
      I3 => \r_Clk_Count_reg_n_0_[1]\,
      I4 => \r_Clk_Count_reg_n_0_[2]\,
      I5 => \r_Clk_Count_reg_n_0_[0]\,
      O => r_RX_DV_i_4_n_0
    );
r_RX_DV_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count_reg_n_0_[12]\,
      I2 => \r_Clk_Count_reg_n_0_[10]\,
      I3 => \r_Clk_Count_reg_n_0_[9]\,
      O => r_RX_DV_i_5_n_0
    );
r_RX_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => r_RX_DV_i_1_n_0,
      Q => \^o_rx_dv\,
      R => '0'
    );
r_RX_Data_R_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => i_RX_Serial,
      Q => r_RX_Data_R,
      R => '0'
    );
r_RX_Data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => r_RX_Data_R,
      Q => r_RX_Data,
      R => '0'
    );
\r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8480"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_SM_Main[0]_i_2_n_0\,
      I2 => r_RX_DV_i_2_n_0,
      I3 => \r_SM_Main[0]_i_3_n_0\,
      I4 => \r_SM_Main[0]_i_4_n_0\,
      I5 => \r_SM_Main[0]_i_5_n_0\,
      O => \r_SM_Main[0]_i_1_n_0\
    );
\r_SM_Main[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      O => \r_SM_Main[0]_i_2_n_0\
    );
\r_SM_Main[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      O => \r_SM_Main[0]_i_3_n_0\
    );
\r_SM_Main[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_SM_Main_reg_n_0_[2]\,
      O => \r_SM_Main[0]_i_4_n_0\
    );
\r_SM_Main[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_Bit_Index[2]_i_2_n_0\,
      I2 => \r_Clk_Count[13]_i_8_n_0\,
      I3 => \r_Clk_Count[13]_i_7_n_0\,
      I4 => \r_Clk_Count[13]_i_6_n_0\,
      I5 => \r_Clk_Count[13]_i_5_n_0\,
      O => \r_SM_Main[0]_i_5_n_0\
    );
\r_SM_Main[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF550202"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => r_RX_Data,
      I2 => r_SM_Main(0),
      I3 => r_RX_DV_i_2_n_0,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main_reg_n_0_[2]\,
      O => \r_SM_Main[1]_i_1_n_0\
    );
\r_SM_Main[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_Clk_Count[13]_i_5_n_0\,
      I1 => \r_Clk_Count[13]_i_6_n_0\,
      I2 => \r_Clk_Count[13]_i_7_n_0\,
      I3 => \r_Clk_Count[13]_i_8_n_0\,
      O => r_SM_Main(0)
    );
\r_SM_Main[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => r_RX_DV_i_2_n_0,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_SM_Main[2]_i_1_n_0\
    );
\r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main[0]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[0]\,
      R => '0'
    );
\r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main[1]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[1]\,
      R => '0'
    );
\r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \r_SM_Main[2]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_UART_RX_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led0 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_UART_RX_100MHZ_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_UART_RX_100MHZ_0_0 : entity is "PCB_All_SRAM_UART_RX_100MHZ_0_0,UART_RX_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_UART_RX_100MHZ_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_UART_RX_100MHZ_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_UART_RX_100MHZ_0_0 : entity is "UART_RX_100MHZ,Vivado 2024.2";
end PCB_All_SRAM_UART_RX_100MHZ_0_0;

architecture STRUCTURE of PCB_All_SRAM_UART_RX_100MHZ_0_0 is
begin
U0: entity work.PCB_All_SRAM_UART_RX_100MHZ_0_0_UART_RX_100MHZ
     port map (
      i_RX_Serial => i_RX_Serial,
      led0 => led0,
      o_RX_DV => o_RX_DV,
      o_RX_byte(7 downto 0) => o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;

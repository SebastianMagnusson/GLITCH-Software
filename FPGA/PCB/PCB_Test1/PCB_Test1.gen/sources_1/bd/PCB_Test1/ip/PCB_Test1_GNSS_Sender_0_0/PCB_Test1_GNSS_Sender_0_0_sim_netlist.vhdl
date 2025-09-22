-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Sep 20 12:24:15 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_GNSS_Sender_0_0/PCB_Test1_GNSS_Sender_0_0_sim_netlist.vhdl
-- Design      : PCB_Test1_GNSS_Sender_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_Test1_GNSS_Sender_0_0_GNSS_Sender is
  port (
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC;
    data_ready : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_Test1_GNSS_Sender_0_0_GNSS_Sender : entity is "GNSS_Sender";
end PCB_Test1_GNSS_Sender_0_0_GNSS_Sender;

architecture STRUCTURE of PCB_Test1_GNSS_Sender_0_0_GNSS_Sender is
  signal data_ready_prev : STD_LOGIC;
  signal data_ready_prev_i_1_n_0 : STD_LOGIC;
  signal \gnss_data_buf[383]_i_1_n_0\ : STD_LOGIC;
  signal \^led1\ : STD_LOGIC;
  signal led1_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_ready_prev_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of led1_i_1 : label is "soft_lutpair0";
begin
  led1 <= \^led1\;
data_ready_prev_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_ready_prev,
      I1 => state,
      I2 => data_ready,
      O => data_ready_prev_i_1_n_0
    );
data_ready_prev_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => p_0_in,
      D => data_ready_prev_i_1_n_0,
      Q => data_ready_prev
    );
\gnss_data_buf[383]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_ready_prev,
      I1 => data_ready,
      I2 => state,
      O => \gnss_data_buf[383]_i_1_n_0\
    );
\gnss_data_buf[383]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => p_0_in
    );
\gnss_data_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(0),
      Q => o_gnss_data(0)
    );
\gnss_data_buf_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(100),
      Q => o_gnss_data(100)
    );
\gnss_data_buf_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(101),
      Q => o_gnss_data(101)
    );
\gnss_data_buf_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(102),
      Q => o_gnss_data(102)
    );
\gnss_data_buf_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(103),
      Q => o_gnss_data(103)
    );
\gnss_data_buf_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(104),
      Q => o_gnss_data(104)
    );
\gnss_data_buf_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(105),
      Q => o_gnss_data(105)
    );
\gnss_data_buf_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(106),
      Q => o_gnss_data(106)
    );
\gnss_data_buf_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(107),
      Q => o_gnss_data(107)
    );
\gnss_data_buf_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(108),
      Q => o_gnss_data(108)
    );
\gnss_data_buf_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(109),
      Q => o_gnss_data(109)
    );
\gnss_data_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(10),
      Q => o_gnss_data(10)
    );
\gnss_data_buf_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(110),
      Q => o_gnss_data(110)
    );
\gnss_data_buf_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(111),
      Q => o_gnss_data(111)
    );
\gnss_data_buf_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(112),
      Q => o_gnss_data(112)
    );
\gnss_data_buf_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(113),
      Q => o_gnss_data(113)
    );
\gnss_data_buf_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(114),
      Q => o_gnss_data(114)
    );
\gnss_data_buf_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(115),
      Q => o_gnss_data(115)
    );
\gnss_data_buf_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(116),
      Q => o_gnss_data(116)
    );
\gnss_data_buf_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(117),
      Q => o_gnss_data(117)
    );
\gnss_data_buf_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(118),
      Q => o_gnss_data(118)
    );
\gnss_data_buf_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(119),
      Q => o_gnss_data(119)
    );
\gnss_data_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(11),
      Q => o_gnss_data(11)
    );
\gnss_data_buf_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(120),
      Q => o_gnss_data(120)
    );
\gnss_data_buf_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(121),
      Q => o_gnss_data(121)
    );
\gnss_data_buf_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(122),
      Q => o_gnss_data(122)
    );
\gnss_data_buf_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(123),
      Q => o_gnss_data(123)
    );
\gnss_data_buf_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(124),
      Q => o_gnss_data(124)
    );
\gnss_data_buf_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(125),
      Q => o_gnss_data(125)
    );
\gnss_data_buf_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(126),
      Q => o_gnss_data(126)
    );
\gnss_data_buf_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(127),
      Q => o_gnss_data(127)
    );
\gnss_data_buf_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(128),
      Q => o_gnss_data(128)
    );
\gnss_data_buf_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(129),
      Q => o_gnss_data(129)
    );
\gnss_data_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(12),
      Q => o_gnss_data(12)
    );
\gnss_data_buf_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(130),
      Q => o_gnss_data(130)
    );
\gnss_data_buf_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(131),
      Q => o_gnss_data(131)
    );
\gnss_data_buf_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(132),
      Q => o_gnss_data(132)
    );
\gnss_data_buf_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(133),
      Q => o_gnss_data(133)
    );
\gnss_data_buf_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(134),
      Q => o_gnss_data(134)
    );
\gnss_data_buf_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(135),
      Q => o_gnss_data(135)
    );
\gnss_data_buf_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(136),
      Q => o_gnss_data(136)
    );
\gnss_data_buf_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(137),
      Q => o_gnss_data(137)
    );
\gnss_data_buf_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(138),
      Q => o_gnss_data(138)
    );
\gnss_data_buf_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(139),
      Q => o_gnss_data(139)
    );
\gnss_data_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(13),
      Q => o_gnss_data(13)
    );
\gnss_data_buf_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(140),
      Q => o_gnss_data(140)
    );
\gnss_data_buf_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(141),
      Q => o_gnss_data(141)
    );
\gnss_data_buf_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(142),
      Q => o_gnss_data(142)
    );
\gnss_data_buf_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(143),
      Q => o_gnss_data(143)
    );
\gnss_data_buf_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(144),
      Q => o_gnss_data(144)
    );
\gnss_data_buf_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(145),
      Q => o_gnss_data(145)
    );
\gnss_data_buf_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(146),
      Q => o_gnss_data(146)
    );
\gnss_data_buf_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(147),
      Q => o_gnss_data(147)
    );
\gnss_data_buf_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(148),
      Q => o_gnss_data(148)
    );
\gnss_data_buf_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(149),
      Q => o_gnss_data(149)
    );
\gnss_data_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(14),
      Q => o_gnss_data(14)
    );
\gnss_data_buf_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(150),
      Q => o_gnss_data(150)
    );
\gnss_data_buf_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(151),
      Q => o_gnss_data(151)
    );
\gnss_data_buf_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(152),
      Q => o_gnss_data(152)
    );
\gnss_data_buf_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(153),
      Q => o_gnss_data(153)
    );
\gnss_data_buf_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(154),
      Q => o_gnss_data(154)
    );
\gnss_data_buf_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(155),
      Q => o_gnss_data(155)
    );
\gnss_data_buf_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(156),
      Q => o_gnss_data(156)
    );
\gnss_data_buf_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(157),
      Q => o_gnss_data(157)
    );
\gnss_data_buf_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(158),
      Q => o_gnss_data(158)
    );
\gnss_data_buf_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(159),
      Q => o_gnss_data(159)
    );
\gnss_data_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(15),
      Q => o_gnss_data(15)
    );
\gnss_data_buf_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(160),
      Q => o_gnss_data(160)
    );
\gnss_data_buf_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(161),
      Q => o_gnss_data(161)
    );
\gnss_data_buf_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(162),
      Q => o_gnss_data(162)
    );
\gnss_data_buf_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(163),
      Q => o_gnss_data(163)
    );
\gnss_data_buf_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(164),
      Q => o_gnss_data(164)
    );
\gnss_data_buf_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(165),
      Q => o_gnss_data(165)
    );
\gnss_data_buf_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(166),
      Q => o_gnss_data(166)
    );
\gnss_data_buf_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(167),
      Q => o_gnss_data(167)
    );
\gnss_data_buf_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(168),
      Q => o_gnss_data(168)
    );
\gnss_data_buf_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(169),
      Q => o_gnss_data(169)
    );
\gnss_data_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(16),
      Q => o_gnss_data(16)
    );
\gnss_data_buf_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(170),
      Q => o_gnss_data(170)
    );
\gnss_data_buf_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(171),
      Q => o_gnss_data(171)
    );
\gnss_data_buf_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(172),
      Q => o_gnss_data(172)
    );
\gnss_data_buf_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(173),
      Q => o_gnss_data(173)
    );
\gnss_data_buf_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(174),
      Q => o_gnss_data(174)
    );
\gnss_data_buf_reg[175]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(175),
      Q => o_gnss_data(175)
    );
\gnss_data_buf_reg[176]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(176),
      Q => o_gnss_data(176)
    );
\gnss_data_buf_reg[177]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(177),
      Q => o_gnss_data(177)
    );
\gnss_data_buf_reg[178]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(178),
      Q => o_gnss_data(178)
    );
\gnss_data_buf_reg[179]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(179),
      Q => o_gnss_data(179)
    );
\gnss_data_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(17),
      Q => o_gnss_data(17)
    );
\gnss_data_buf_reg[180]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(180),
      Q => o_gnss_data(180)
    );
\gnss_data_buf_reg[181]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(181),
      Q => o_gnss_data(181)
    );
\gnss_data_buf_reg[182]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(182),
      Q => o_gnss_data(182)
    );
\gnss_data_buf_reg[183]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(183),
      Q => o_gnss_data(183)
    );
\gnss_data_buf_reg[184]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(184),
      Q => o_gnss_data(184)
    );
\gnss_data_buf_reg[185]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(185),
      Q => o_gnss_data(185)
    );
\gnss_data_buf_reg[186]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(186),
      Q => o_gnss_data(186)
    );
\gnss_data_buf_reg[187]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(187),
      Q => o_gnss_data(187)
    );
\gnss_data_buf_reg[188]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(188),
      Q => o_gnss_data(188)
    );
\gnss_data_buf_reg[189]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(189),
      Q => o_gnss_data(189)
    );
\gnss_data_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(18),
      Q => o_gnss_data(18)
    );
\gnss_data_buf_reg[190]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(190),
      Q => o_gnss_data(190)
    );
\gnss_data_buf_reg[191]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(191),
      Q => o_gnss_data(191)
    );
\gnss_data_buf_reg[192]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(192),
      Q => o_gnss_data(192)
    );
\gnss_data_buf_reg[193]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(193),
      Q => o_gnss_data(193)
    );
\gnss_data_buf_reg[194]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(194),
      Q => o_gnss_data(194)
    );
\gnss_data_buf_reg[195]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(195),
      Q => o_gnss_data(195)
    );
\gnss_data_buf_reg[196]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(196),
      Q => o_gnss_data(196)
    );
\gnss_data_buf_reg[197]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(197),
      Q => o_gnss_data(197)
    );
\gnss_data_buf_reg[198]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(198),
      Q => o_gnss_data(198)
    );
\gnss_data_buf_reg[199]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(199),
      Q => o_gnss_data(199)
    );
\gnss_data_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(19),
      Q => o_gnss_data(19)
    );
\gnss_data_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(1),
      Q => o_gnss_data(1)
    );
\gnss_data_buf_reg[200]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(200),
      Q => o_gnss_data(200)
    );
\gnss_data_buf_reg[201]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(201),
      Q => o_gnss_data(201)
    );
\gnss_data_buf_reg[202]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(202),
      Q => o_gnss_data(202)
    );
\gnss_data_buf_reg[203]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(203),
      Q => o_gnss_data(203)
    );
\gnss_data_buf_reg[204]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(204),
      Q => o_gnss_data(204)
    );
\gnss_data_buf_reg[205]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(205),
      Q => o_gnss_data(205)
    );
\gnss_data_buf_reg[206]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(206),
      Q => o_gnss_data(206)
    );
\gnss_data_buf_reg[207]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(207),
      Q => o_gnss_data(207)
    );
\gnss_data_buf_reg[208]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(208),
      Q => o_gnss_data(208)
    );
\gnss_data_buf_reg[209]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(209),
      Q => o_gnss_data(209)
    );
\gnss_data_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(20),
      Q => o_gnss_data(20)
    );
\gnss_data_buf_reg[210]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(210),
      Q => o_gnss_data(210)
    );
\gnss_data_buf_reg[211]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(211),
      Q => o_gnss_data(211)
    );
\gnss_data_buf_reg[212]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(212),
      Q => o_gnss_data(212)
    );
\gnss_data_buf_reg[213]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(213),
      Q => o_gnss_data(213)
    );
\gnss_data_buf_reg[214]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(214),
      Q => o_gnss_data(214)
    );
\gnss_data_buf_reg[215]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(215),
      Q => o_gnss_data(215)
    );
\gnss_data_buf_reg[216]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(216),
      Q => o_gnss_data(216)
    );
\gnss_data_buf_reg[217]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(217),
      Q => o_gnss_data(217)
    );
\gnss_data_buf_reg[218]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(218),
      Q => o_gnss_data(218)
    );
\gnss_data_buf_reg[219]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(219),
      Q => o_gnss_data(219)
    );
\gnss_data_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(21),
      Q => o_gnss_data(21)
    );
\gnss_data_buf_reg[220]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(220),
      Q => o_gnss_data(220)
    );
\gnss_data_buf_reg[221]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(221),
      Q => o_gnss_data(221)
    );
\gnss_data_buf_reg[222]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(222),
      Q => o_gnss_data(222)
    );
\gnss_data_buf_reg[223]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(223),
      Q => o_gnss_data(223)
    );
\gnss_data_buf_reg[224]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(224),
      Q => o_gnss_data(224)
    );
\gnss_data_buf_reg[225]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(225),
      Q => o_gnss_data(225)
    );
\gnss_data_buf_reg[226]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(226),
      Q => o_gnss_data(226)
    );
\gnss_data_buf_reg[227]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(227),
      Q => o_gnss_data(227)
    );
\gnss_data_buf_reg[228]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(228),
      Q => o_gnss_data(228)
    );
\gnss_data_buf_reg[229]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(229),
      Q => o_gnss_data(229)
    );
\gnss_data_buf_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(22),
      Q => o_gnss_data(22)
    );
\gnss_data_buf_reg[230]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(230),
      Q => o_gnss_data(230)
    );
\gnss_data_buf_reg[231]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(231),
      Q => o_gnss_data(231)
    );
\gnss_data_buf_reg[232]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(232),
      Q => o_gnss_data(232)
    );
\gnss_data_buf_reg[233]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(233),
      Q => o_gnss_data(233)
    );
\gnss_data_buf_reg[234]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(234),
      Q => o_gnss_data(234)
    );
\gnss_data_buf_reg[235]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(235),
      Q => o_gnss_data(235)
    );
\gnss_data_buf_reg[236]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(236),
      Q => o_gnss_data(236)
    );
\gnss_data_buf_reg[237]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(237),
      Q => o_gnss_data(237)
    );
\gnss_data_buf_reg[238]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(238),
      Q => o_gnss_data(238)
    );
\gnss_data_buf_reg[239]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(239),
      Q => o_gnss_data(239)
    );
\gnss_data_buf_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(23),
      Q => o_gnss_data(23)
    );
\gnss_data_buf_reg[240]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(240),
      Q => o_gnss_data(240)
    );
\gnss_data_buf_reg[241]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(241),
      Q => o_gnss_data(241)
    );
\gnss_data_buf_reg[242]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(242),
      Q => o_gnss_data(242)
    );
\gnss_data_buf_reg[243]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(243),
      Q => o_gnss_data(243)
    );
\gnss_data_buf_reg[244]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(244),
      Q => o_gnss_data(244)
    );
\gnss_data_buf_reg[245]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(245),
      Q => o_gnss_data(245)
    );
\gnss_data_buf_reg[246]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(246),
      Q => o_gnss_data(246)
    );
\gnss_data_buf_reg[247]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(247),
      Q => o_gnss_data(247)
    );
\gnss_data_buf_reg[248]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(248),
      Q => o_gnss_data(248)
    );
\gnss_data_buf_reg[249]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(249),
      Q => o_gnss_data(249)
    );
\gnss_data_buf_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(24),
      Q => o_gnss_data(24)
    );
\gnss_data_buf_reg[250]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(250),
      Q => o_gnss_data(250)
    );
\gnss_data_buf_reg[251]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(251),
      Q => o_gnss_data(251)
    );
\gnss_data_buf_reg[252]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(252),
      Q => o_gnss_data(252)
    );
\gnss_data_buf_reg[253]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(253),
      Q => o_gnss_data(253)
    );
\gnss_data_buf_reg[254]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(254),
      Q => o_gnss_data(254)
    );
\gnss_data_buf_reg[255]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(255),
      Q => o_gnss_data(255)
    );
\gnss_data_buf_reg[256]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(256),
      Q => o_gnss_data(256)
    );
\gnss_data_buf_reg[257]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(257),
      Q => o_gnss_data(257)
    );
\gnss_data_buf_reg[258]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(258),
      Q => o_gnss_data(258)
    );
\gnss_data_buf_reg[259]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(259),
      Q => o_gnss_data(259)
    );
\gnss_data_buf_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(25),
      Q => o_gnss_data(25)
    );
\gnss_data_buf_reg[260]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(260),
      Q => o_gnss_data(260)
    );
\gnss_data_buf_reg[261]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(261),
      Q => o_gnss_data(261)
    );
\gnss_data_buf_reg[262]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(262),
      Q => o_gnss_data(262)
    );
\gnss_data_buf_reg[263]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(263),
      Q => o_gnss_data(263)
    );
\gnss_data_buf_reg[264]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(264),
      Q => o_gnss_data(264)
    );
\gnss_data_buf_reg[265]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(265),
      Q => o_gnss_data(265)
    );
\gnss_data_buf_reg[266]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(266),
      Q => o_gnss_data(266)
    );
\gnss_data_buf_reg[267]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(267),
      Q => o_gnss_data(267)
    );
\gnss_data_buf_reg[268]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(268),
      Q => o_gnss_data(268)
    );
\gnss_data_buf_reg[269]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(269),
      Q => o_gnss_data(269)
    );
\gnss_data_buf_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(26),
      Q => o_gnss_data(26)
    );
\gnss_data_buf_reg[270]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(270),
      Q => o_gnss_data(270)
    );
\gnss_data_buf_reg[271]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(271),
      Q => o_gnss_data(271)
    );
\gnss_data_buf_reg[272]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(272),
      Q => o_gnss_data(272)
    );
\gnss_data_buf_reg[273]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(273),
      Q => o_gnss_data(273)
    );
\gnss_data_buf_reg[274]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(274),
      Q => o_gnss_data(274)
    );
\gnss_data_buf_reg[275]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(275),
      Q => o_gnss_data(275)
    );
\gnss_data_buf_reg[276]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(276),
      Q => o_gnss_data(276)
    );
\gnss_data_buf_reg[277]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(277),
      Q => o_gnss_data(277)
    );
\gnss_data_buf_reg[278]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(278),
      Q => o_gnss_data(278)
    );
\gnss_data_buf_reg[279]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(279),
      Q => o_gnss_data(279)
    );
\gnss_data_buf_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(27),
      Q => o_gnss_data(27)
    );
\gnss_data_buf_reg[280]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(280),
      Q => o_gnss_data(280)
    );
\gnss_data_buf_reg[281]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(281),
      Q => o_gnss_data(281)
    );
\gnss_data_buf_reg[282]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(282),
      Q => o_gnss_data(282)
    );
\gnss_data_buf_reg[283]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(283),
      Q => o_gnss_data(283)
    );
\gnss_data_buf_reg[284]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(284),
      Q => o_gnss_data(284)
    );
\gnss_data_buf_reg[285]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(285),
      Q => o_gnss_data(285)
    );
\gnss_data_buf_reg[286]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(286),
      Q => o_gnss_data(286)
    );
\gnss_data_buf_reg[287]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(287),
      Q => o_gnss_data(287)
    );
\gnss_data_buf_reg[288]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(288),
      Q => o_gnss_data(288)
    );
\gnss_data_buf_reg[289]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(289),
      Q => o_gnss_data(289)
    );
\gnss_data_buf_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(28),
      Q => o_gnss_data(28)
    );
\gnss_data_buf_reg[290]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(290),
      Q => o_gnss_data(290)
    );
\gnss_data_buf_reg[291]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(291),
      Q => o_gnss_data(291)
    );
\gnss_data_buf_reg[292]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(292),
      Q => o_gnss_data(292)
    );
\gnss_data_buf_reg[293]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(293),
      Q => o_gnss_data(293)
    );
\gnss_data_buf_reg[294]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(294),
      Q => o_gnss_data(294)
    );
\gnss_data_buf_reg[295]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(295),
      Q => o_gnss_data(295)
    );
\gnss_data_buf_reg[296]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(296),
      Q => o_gnss_data(296)
    );
\gnss_data_buf_reg[297]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(297),
      Q => o_gnss_data(297)
    );
\gnss_data_buf_reg[298]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(298),
      Q => o_gnss_data(298)
    );
\gnss_data_buf_reg[299]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(299),
      Q => o_gnss_data(299)
    );
\gnss_data_buf_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(29),
      Q => o_gnss_data(29)
    );
\gnss_data_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(2),
      Q => o_gnss_data(2)
    );
\gnss_data_buf_reg[300]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(300),
      Q => o_gnss_data(300)
    );
\gnss_data_buf_reg[301]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(301),
      Q => o_gnss_data(301)
    );
\gnss_data_buf_reg[302]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(302),
      Q => o_gnss_data(302)
    );
\gnss_data_buf_reg[303]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(303),
      Q => o_gnss_data(303)
    );
\gnss_data_buf_reg[304]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(304),
      Q => o_gnss_data(304)
    );
\gnss_data_buf_reg[305]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(305),
      Q => o_gnss_data(305)
    );
\gnss_data_buf_reg[306]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(306),
      Q => o_gnss_data(306)
    );
\gnss_data_buf_reg[307]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(307),
      Q => o_gnss_data(307)
    );
\gnss_data_buf_reg[308]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(308),
      Q => o_gnss_data(308)
    );
\gnss_data_buf_reg[309]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(309),
      Q => o_gnss_data(309)
    );
\gnss_data_buf_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(30),
      Q => o_gnss_data(30)
    );
\gnss_data_buf_reg[310]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(310),
      Q => o_gnss_data(310)
    );
\gnss_data_buf_reg[311]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(311),
      Q => o_gnss_data(311)
    );
\gnss_data_buf_reg[312]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(312),
      Q => o_gnss_data(312)
    );
\gnss_data_buf_reg[313]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(313),
      Q => o_gnss_data(313)
    );
\gnss_data_buf_reg[314]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(314),
      Q => o_gnss_data(314)
    );
\gnss_data_buf_reg[315]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(315),
      Q => o_gnss_data(315)
    );
\gnss_data_buf_reg[316]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(316),
      Q => o_gnss_data(316)
    );
\gnss_data_buf_reg[317]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(317),
      Q => o_gnss_data(317)
    );
\gnss_data_buf_reg[318]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(318),
      Q => o_gnss_data(318)
    );
\gnss_data_buf_reg[319]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(319),
      Q => o_gnss_data(319)
    );
\gnss_data_buf_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(31),
      Q => o_gnss_data(31)
    );
\gnss_data_buf_reg[320]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(320),
      Q => o_gnss_data(320)
    );
\gnss_data_buf_reg[321]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(321),
      Q => o_gnss_data(321)
    );
\gnss_data_buf_reg[322]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(322),
      Q => o_gnss_data(322)
    );
\gnss_data_buf_reg[323]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(323),
      Q => o_gnss_data(323)
    );
\gnss_data_buf_reg[324]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(324),
      Q => o_gnss_data(324)
    );
\gnss_data_buf_reg[325]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(325),
      Q => o_gnss_data(325)
    );
\gnss_data_buf_reg[326]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(326),
      Q => o_gnss_data(326)
    );
\gnss_data_buf_reg[327]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(327),
      Q => o_gnss_data(327)
    );
\gnss_data_buf_reg[328]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(328),
      Q => o_gnss_data(328)
    );
\gnss_data_buf_reg[329]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(329),
      Q => o_gnss_data(329)
    );
\gnss_data_buf_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(32),
      Q => o_gnss_data(32)
    );
\gnss_data_buf_reg[330]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(330),
      Q => o_gnss_data(330)
    );
\gnss_data_buf_reg[331]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(331),
      Q => o_gnss_data(331)
    );
\gnss_data_buf_reg[332]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(332),
      Q => o_gnss_data(332)
    );
\gnss_data_buf_reg[333]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(333),
      Q => o_gnss_data(333)
    );
\gnss_data_buf_reg[334]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(334),
      Q => o_gnss_data(334)
    );
\gnss_data_buf_reg[335]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(335),
      Q => o_gnss_data(335)
    );
\gnss_data_buf_reg[336]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(336),
      Q => o_gnss_data(336)
    );
\gnss_data_buf_reg[337]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(337),
      Q => o_gnss_data(337)
    );
\gnss_data_buf_reg[338]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(338),
      Q => o_gnss_data(338)
    );
\gnss_data_buf_reg[339]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(339),
      Q => o_gnss_data(339)
    );
\gnss_data_buf_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(33),
      Q => o_gnss_data(33)
    );
\gnss_data_buf_reg[340]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(340),
      Q => o_gnss_data(340)
    );
\gnss_data_buf_reg[341]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(341),
      Q => o_gnss_data(341)
    );
\gnss_data_buf_reg[342]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(342),
      Q => o_gnss_data(342)
    );
\gnss_data_buf_reg[343]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(343),
      Q => o_gnss_data(343)
    );
\gnss_data_buf_reg[344]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(344),
      Q => o_gnss_data(344)
    );
\gnss_data_buf_reg[345]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(345),
      Q => o_gnss_data(345)
    );
\gnss_data_buf_reg[346]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(346),
      Q => o_gnss_data(346)
    );
\gnss_data_buf_reg[347]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(347),
      Q => o_gnss_data(347)
    );
\gnss_data_buf_reg[348]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(348),
      Q => o_gnss_data(348)
    );
\gnss_data_buf_reg[349]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(349),
      Q => o_gnss_data(349)
    );
\gnss_data_buf_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(34),
      Q => o_gnss_data(34)
    );
\gnss_data_buf_reg[350]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(350),
      Q => o_gnss_data(350)
    );
\gnss_data_buf_reg[351]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(351),
      Q => o_gnss_data(351)
    );
\gnss_data_buf_reg[352]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(352),
      Q => o_gnss_data(352)
    );
\gnss_data_buf_reg[353]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(353),
      Q => o_gnss_data(353)
    );
\gnss_data_buf_reg[354]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(354),
      Q => o_gnss_data(354)
    );
\gnss_data_buf_reg[355]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(355),
      Q => o_gnss_data(355)
    );
\gnss_data_buf_reg[356]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(356),
      Q => o_gnss_data(356)
    );
\gnss_data_buf_reg[357]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(357),
      Q => o_gnss_data(357)
    );
\gnss_data_buf_reg[358]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(358),
      Q => o_gnss_data(358)
    );
\gnss_data_buf_reg[359]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(359),
      Q => o_gnss_data(359)
    );
\gnss_data_buf_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(35),
      Q => o_gnss_data(35)
    );
\gnss_data_buf_reg[360]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(360),
      Q => o_gnss_data(360)
    );
\gnss_data_buf_reg[361]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(361),
      Q => o_gnss_data(361)
    );
\gnss_data_buf_reg[362]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(362),
      Q => o_gnss_data(362)
    );
\gnss_data_buf_reg[363]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(363),
      Q => o_gnss_data(363)
    );
\gnss_data_buf_reg[364]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(364),
      Q => o_gnss_data(364)
    );
\gnss_data_buf_reg[365]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(365),
      Q => o_gnss_data(365)
    );
\gnss_data_buf_reg[366]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(366),
      Q => o_gnss_data(366)
    );
\gnss_data_buf_reg[367]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(367),
      Q => o_gnss_data(367)
    );
\gnss_data_buf_reg[368]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(368),
      Q => o_gnss_data(368)
    );
\gnss_data_buf_reg[369]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(369),
      Q => o_gnss_data(369)
    );
\gnss_data_buf_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(36),
      Q => o_gnss_data(36)
    );
\gnss_data_buf_reg[370]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(370),
      Q => o_gnss_data(370)
    );
\gnss_data_buf_reg[371]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(371),
      Q => o_gnss_data(371)
    );
\gnss_data_buf_reg[372]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(372),
      Q => o_gnss_data(372)
    );
\gnss_data_buf_reg[373]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(373),
      Q => o_gnss_data(373)
    );
\gnss_data_buf_reg[374]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(374),
      Q => o_gnss_data(374)
    );
\gnss_data_buf_reg[375]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(375),
      Q => o_gnss_data(375)
    );
\gnss_data_buf_reg[376]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(376),
      Q => o_gnss_data(376)
    );
\gnss_data_buf_reg[377]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(377),
      Q => o_gnss_data(377)
    );
\gnss_data_buf_reg[378]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(378),
      Q => o_gnss_data(378)
    );
\gnss_data_buf_reg[379]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(379),
      Q => o_gnss_data(379)
    );
\gnss_data_buf_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(37),
      Q => o_gnss_data(37)
    );
\gnss_data_buf_reg[380]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(380),
      Q => o_gnss_data(380)
    );
\gnss_data_buf_reg[381]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(381),
      Q => o_gnss_data(381)
    );
\gnss_data_buf_reg[382]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(382),
      Q => o_gnss_data(382)
    );
\gnss_data_buf_reg[383]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(383),
      Q => o_gnss_data(383)
    );
\gnss_data_buf_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(38),
      Q => o_gnss_data(38)
    );
\gnss_data_buf_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(39),
      Q => o_gnss_data(39)
    );
\gnss_data_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(3),
      Q => o_gnss_data(3)
    );
\gnss_data_buf_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(40),
      Q => o_gnss_data(40)
    );
\gnss_data_buf_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(41),
      Q => o_gnss_data(41)
    );
\gnss_data_buf_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(42),
      Q => o_gnss_data(42)
    );
\gnss_data_buf_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(43),
      Q => o_gnss_data(43)
    );
\gnss_data_buf_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(44),
      Q => o_gnss_data(44)
    );
\gnss_data_buf_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(45),
      Q => o_gnss_data(45)
    );
\gnss_data_buf_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(46),
      Q => o_gnss_data(46)
    );
\gnss_data_buf_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(47),
      Q => o_gnss_data(47)
    );
\gnss_data_buf_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(48),
      Q => o_gnss_data(48)
    );
\gnss_data_buf_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(49),
      Q => o_gnss_data(49)
    );
\gnss_data_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(4),
      Q => o_gnss_data(4)
    );
\gnss_data_buf_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(50),
      Q => o_gnss_data(50)
    );
\gnss_data_buf_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(51),
      Q => o_gnss_data(51)
    );
\gnss_data_buf_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(52),
      Q => o_gnss_data(52)
    );
\gnss_data_buf_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(53),
      Q => o_gnss_data(53)
    );
\gnss_data_buf_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(54),
      Q => o_gnss_data(54)
    );
\gnss_data_buf_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(55),
      Q => o_gnss_data(55)
    );
\gnss_data_buf_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(56),
      Q => o_gnss_data(56)
    );
\gnss_data_buf_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(57),
      Q => o_gnss_data(57)
    );
\gnss_data_buf_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(58),
      Q => o_gnss_data(58)
    );
\gnss_data_buf_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(59),
      Q => o_gnss_data(59)
    );
\gnss_data_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(5),
      Q => o_gnss_data(5)
    );
\gnss_data_buf_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(60),
      Q => o_gnss_data(60)
    );
\gnss_data_buf_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(61),
      Q => o_gnss_data(61)
    );
\gnss_data_buf_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(62),
      Q => o_gnss_data(62)
    );
\gnss_data_buf_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(63),
      Q => o_gnss_data(63)
    );
\gnss_data_buf_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(64),
      Q => o_gnss_data(64)
    );
\gnss_data_buf_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(65),
      Q => o_gnss_data(65)
    );
\gnss_data_buf_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(66),
      Q => o_gnss_data(66)
    );
\gnss_data_buf_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(67),
      Q => o_gnss_data(67)
    );
\gnss_data_buf_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(68),
      Q => o_gnss_data(68)
    );
\gnss_data_buf_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(69),
      Q => o_gnss_data(69)
    );
\gnss_data_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(6),
      Q => o_gnss_data(6)
    );
\gnss_data_buf_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(70),
      Q => o_gnss_data(70)
    );
\gnss_data_buf_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(71),
      Q => o_gnss_data(71)
    );
\gnss_data_buf_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(72),
      Q => o_gnss_data(72)
    );
\gnss_data_buf_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(73),
      Q => o_gnss_data(73)
    );
\gnss_data_buf_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(74),
      Q => o_gnss_data(74)
    );
\gnss_data_buf_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(75),
      Q => o_gnss_data(75)
    );
\gnss_data_buf_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(76),
      Q => o_gnss_data(76)
    );
\gnss_data_buf_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(77),
      Q => o_gnss_data(77)
    );
\gnss_data_buf_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(78),
      Q => o_gnss_data(78)
    );
\gnss_data_buf_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(79),
      Q => o_gnss_data(79)
    );
\gnss_data_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(7),
      Q => o_gnss_data(7)
    );
\gnss_data_buf_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(80),
      Q => o_gnss_data(80)
    );
\gnss_data_buf_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(81),
      Q => o_gnss_data(81)
    );
\gnss_data_buf_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(82),
      Q => o_gnss_data(82)
    );
\gnss_data_buf_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(83),
      Q => o_gnss_data(83)
    );
\gnss_data_buf_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(84),
      Q => o_gnss_data(84)
    );
\gnss_data_buf_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(85),
      Q => o_gnss_data(85)
    );
\gnss_data_buf_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(86),
      Q => o_gnss_data(86)
    );
\gnss_data_buf_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(87),
      Q => o_gnss_data(87)
    );
\gnss_data_buf_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(88),
      Q => o_gnss_data(88)
    );
\gnss_data_buf_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(89),
      Q => o_gnss_data(89)
    );
\gnss_data_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(8),
      Q => o_gnss_data(8)
    );
\gnss_data_buf_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(90),
      Q => o_gnss_data(90)
    );
\gnss_data_buf_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(91),
      Q => o_gnss_data(91)
    );
\gnss_data_buf_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(92),
      Q => o_gnss_data(92)
    );
\gnss_data_buf_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(93),
      Q => o_gnss_data(93)
    );
\gnss_data_buf_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(94),
      Q => o_gnss_data(94)
    );
\gnss_data_buf_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(95),
      Q => o_gnss_data(95)
    );
\gnss_data_buf_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(96),
      Q => o_gnss_data(96)
    );
\gnss_data_buf_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(97),
      Q => o_gnss_data(97)
    );
\gnss_data_buf_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(98),
      Q => o_gnss_data(98)
    );
\gnss_data_buf_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(99),
      Q => o_gnss_data(99)
    );
\gnss_data_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \gnss_data_buf[383]_i_1_n_0\,
      CLR => p_0_in,
      D => i_gnss_data(9),
      Q => o_gnss_data(9)
    );
led1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state,
      I1 => \^led1\,
      O => led1_i_1_n_0
    );
led1_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => p_0_in,
      D => led1_i_1_n_0,
      Q => \^led1\
    );
o_gnss_drive_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => p_0_in,
      D => state,
      Q => o_gnss_drive
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04F0"
    )
        port map (
      I0 => data_ready_prev,
      I1 => data_ready,
      I2 => state,
      I3 => reset_n,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_Test1_GNSS_Sender_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_Test1_GNSS_Sender_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_Test1_GNSS_Sender_0_0 : entity is "PCB_Test1_GNSS_Sender_0_0,GNSS_Sender,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_Test1_GNSS_Sender_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_Test1_GNSS_Sender_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_Test1_GNSS_Sender_0_0 : entity is "GNSS_Sender,Vivado 2024.2";
end PCB_Test1_GNSS_Sender_0_0;

architecture STRUCTURE of PCB_Test1_GNSS_Sender_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.PCB_Test1_GNSS_Sender_0_0_GNSS_Sender
     port map (
      data_ready => data_ready,
      i_gnss_data(383 downto 0) => i_gnss_data(383 downto 0),
      led1 => led1,
      o_gnss_data(383 downto 0) => o_gnss_data(383 downto 0),
      o_gnss_drive => o_gnss_drive,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

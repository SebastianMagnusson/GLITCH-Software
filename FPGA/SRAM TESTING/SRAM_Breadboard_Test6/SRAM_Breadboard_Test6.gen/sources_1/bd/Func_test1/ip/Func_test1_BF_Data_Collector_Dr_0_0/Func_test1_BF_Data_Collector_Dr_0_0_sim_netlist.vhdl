-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Sep 13 10:02:20 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadboard_Test6/SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_BF_Data_Collector_Dr_0_0/Func_test1_BF_Data_Collector_Dr_0_0_sim_netlist.vhdl}
-- Design      : Func_test1_BF_Data_Collector_Dr_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1 is
  port (
    o_BF_data : out STD_LOGIC_VECTOR ( 47 downto 0 );
    o_BF_drive : out STD_LOGIC;
    led1 : out STD_LOGIC;
    data_ready : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    i_BF_data : in STD_LOGIC_VECTOR ( 46 downto 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1 : entity is "BF_Data_Collector_Draft1";
end Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1;

architecture STRUCTURE of Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1 is
  signal \BF_data_buf[197]_i_1_n_0\ : STD_LOGIC;
  signal data_ready_prev : STD_LOGIC;
  signal data_ready_prev_i_1_n_0 : STD_LOGIC;
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
\BF_data_buf[197]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_ready_prev,
      I1 => data_ready,
      I2 => state,
      O => \BF_data_buf[197]_i_1_n_0\
    );
\BF_data_buf[197]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => p_0_in
    );
\BF_data_buf_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(0),
      Q => o_BF_data(0)
    );
\BF_data_buf_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(1),
      Q => o_BF_data(1)
    );
\BF_data_buf_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(2),
      Q => o_BF_data(2)
    );
\BF_data_buf_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(3),
      Q => o_BF_data(3)
    );
\BF_data_buf_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(4),
      Q => o_BF_data(4)
    );
\BF_data_buf_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(5),
      Q => o_BF_data(5)
    );
\BF_data_buf_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(6),
      Q => o_BF_data(6)
    );
\BF_data_buf_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(7),
      Q => o_BF_data(7)
    );
\BF_data_buf_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(8),
      Q => o_BF_data(8)
    );
\BF_data_buf_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(9),
      Q => o_BF_data(9)
    );
\BF_data_buf_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(10),
      Q => o_BF_data(10)
    );
\BF_data_buf_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(11),
      Q => o_BF_data(11)
    );
\BF_data_buf_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(12),
      Q => o_BF_data(12)
    );
\BF_data_buf_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(13),
      Q => o_BF_data(13)
    );
\BF_data_buf_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(14),
      Q => o_BF_data(14)
    );
\BF_data_buf_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(15),
      Q => o_BF_data(15)
    );
\BF_data_buf_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(16),
      Q => o_BF_data(16)
    );
\BF_data_buf_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(17),
      Q => o_BF_data(17)
    );
\BF_data_buf_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(18),
      Q => o_BF_data(18)
    );
\BF_data_buf_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(19),
      Q => o_BF_data(19)
    );
\BF_data_buf_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(20),
      Q => o_BF_data(20)
    );
\BF_data_buf_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(21),
      Q => o_BF_data(21)
    );
\BF_data_buf_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(22),
      Q => o_BF_data(22)
    );
\BF_data_buf_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(23),
      Q => o_BF_data(23)
    );
\BF_data_buf_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(24),
      Q => o_BF_data(24)
    );
\BF_data_buf_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(25),
      Q => o_BF_data(25)
    );
\BF_data_buf_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(26),
      Q => o_BF_data(26)
    );
\BF_data_buf_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(27),
      Q => o_BF_data(27)
    );
\BF_data_buf_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(28),
      Q => o_BF_data(28)
    );
\BF_data_buf_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(29),
      Q => o_BF_data(29)
    );
\BF_data_buf_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(30),
      Q => o_BF_data(30)
    );
\BF_data_buf_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(31),
      Q => o_BF_data(31)
    );
\BF_data_buf_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(32),
      Q => o_BF_data(32)
    );
\BF_data_buf_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(33),
      Q => o_BF_data(33)
    );
\BF_data_buf_reg[175]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(34),
      Q => o_BF_data(34)
    );
\BF_data_buf_reg[176]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(35),
      Q => o_BF_data(35)
    );
\BF_data_buf_reg[177]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(36),
      Q => o_BF_data(36)
    );
\BF_data_buf_reg[178]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(37),
      Q => o_BF_data(37)
    );
\BF_data_buf_reg[179]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(38),
      Q => o_BF_data(38)
    );
\BF_data_buf_reg[180]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(39),
      Q => o_BF_data(39)
    );
\BF_data_buf_reg[181]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(40),
      Q => o_BF_data(40)
    );
\BF_data_buf_reg[182]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(41),
      Q => o_BF_data(41)
    );
\BF_data_buf_reg[183]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(42),
      Q => o_BF_data(42)
    );
\BF_data_buf_reg[184]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(43),
      Q => o_BF_data(43)
    );
\BF_data_buf_reg[185]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(44),
      Q => o_BF_data(44)
    );
\BF_data_buf_reg[186]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(45),
      Q => o_BF_data(45)
    );
\BF_data_buf_reg[187]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => i_BF_data(46),
      Q => o_BF_data(46)
    );
\BF_data_buf_reg[197]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \BF_data_buf[197]_i_1_n_0\,
      CLR => p_0_in,
      D => '1',
      Q => o_BF_data(47)
    );
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
o_BF_drive_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => p_0_in,
      D => state,
      Q => o_BF_drive
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => data_ready_prev,
      I1 => data_ready,
      I2 => reset_n,
      I3 => state,
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
entity Func_test1_BF_Data_Collector_Dr_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    i_BF_data : in STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 197 downto 0 );
    o_BF_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Func_test1_BF_Data_Collector_Dr_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Func_test1_BF_Data_Collector_Dr_0_0 : entity is "Func_test1_BF_Data_Collector_Dr_0_0,BF_Data_Collector_Draft1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Func_test1_BF_Data_Collector_Dr_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Func_test1_BF_Data_Collector_Dr_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Func_test1_BF_Data_Collector_Dr_0_0 : entity is "BF_Data_Collector_Draft1,Vivado 2024.2";
end Func_test1_BF_Data_Collector_Dr_0_0;

architecture STRUCTURE of Func_test1_BF_Data_Collector_Dr_0_0 is
  signal \^o_bf_data\ : STD_LOGIC_VECTOR ( 196 downto 94 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  o_BF_data(197) <= \^o_bf_data\(196);
  o_BF_data(196) <= \^o_bf_data\(196);
  o_BF_data(195) <= \^o_bf_data\(196);
  o_BF_data(194) <= \^o_bf_data\(196);
  o_BF_data(193) <= \^o_bf_data\(196);
  o_BF_data(192) <= \^o_bf_data\(196);
  o_BF_data(191) <= \^o_bf_data\(196);
  o_BF_data(190) <= \^o_bf_data\(196);
  o_BF_data(189) <= \^o_bf_data\(196);
  o_BF_data(188) <= \^o_bf_data\(196);
  o_BF_data(187 downto 141) <= \^o_bf_data\(140 downto 94);
  o_BF_data(140 downto 94) <= \^o_bf_data\(140 downto 94);
  o_BF_data(93 downto 47) <= \^o_bf_data\(140 downto 94);
  o_BF_data(46 downto 0) <= \^o_bf_data\(140 downto 94);
U0: entity work.Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1
     port map (
      data_ready => data_ready,
      i_BF_data(46 downto 0) => i_BF_data(46 downto 0),
      led1 => led1,
      o_BF_data(47) => \^o_bf_data\(196),
      o_BF_data(46 downto 0) => \^o_bf_data\(140 downto 94),
      o_BF_drive => o_BF_drive,
      reset_n => reset_n,
      sysclk => sysclk
    );
end STRUCTURE;

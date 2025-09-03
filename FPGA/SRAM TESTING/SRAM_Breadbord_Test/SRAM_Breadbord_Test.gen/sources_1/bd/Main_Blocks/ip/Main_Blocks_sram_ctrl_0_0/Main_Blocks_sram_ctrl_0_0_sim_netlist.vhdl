-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Sep  3 10:56:52 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/I2C/SRAM_Breadbord_Test/SRAM_Breadbord_Test.gen/sources_1/bd/Main_Blocks/ip/Main_Blocks_sram_ctrl_0_0/Main_Blocks_sram_ctrl_0_0_sim_netlist.vhdl
-- Design      : Main_Blocks_sram_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main_Blocks_sram_ctrl_0_0_sram_ctrl is
  port (
    CE2 : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    done : out STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE_n : out STD_LOGIC;
    OE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Main_Blocks_sram_ctrl_0_0_sram_ctrl : entity is "sram_ctrl";
end Main_Blocks_sram_ctrl_0_0_sram_ctrl;

architecture STRUCTURE of Main_Blocks_sram_ctrl_0_0_sram_ctrl is
  signal \^a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \A[0]_i_1_n_0\ : STD_LOGIC;
  signal \^ce_n\ : STD_LOGIC;
  signal CE_n_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^oe_n\ : STD_LOGIC;
  signal OE_n_i_1_n_0 : STD_LOGIC;
  signal \^we_n\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal data_buf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_buf0 : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal loop_cnt : STD_LOGIC;
  signal \loop_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mess_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \mess_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \^o_tx_dv\ : STD_LOGIC;
  signal o_TX_DV_i_1_n_0 : STD_LOGIC;
  signal o_TX_data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal write_active : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of CE2_reg : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of CE2_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of CE2_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001";
  attribute SOFT_HLUTNM of OE_n_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of WE_n_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_TX_data[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_TX_data[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_TX_data[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_TX_data[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_TX_data[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_TX_data[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_TX_data[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_TX_data[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair1";
begin
  A(0) <= \^a\(0);
  CE_n <= \^ce_n\;
  OE_n <= \^oe_n\;
  WE_n <= \^we_n\;
  done <= \^done\;
  o_TX_DV <= \^o_tx_dv\;
\A[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => reset_n,
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => state(0),
      I3 => \^a\(0),
      O => \A[0]_i_1_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => \A[0]_i_1_n_0\,
      Q => \^a\(0),
      R => '0'
    );
CE2_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => done_i_2_n_0,
      G => reset_n,
      GE => '1',
      Q => CE2
    );
CE_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ce_n\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      O => CE_n_i_1_n_0
    );
CE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => CE_n_i_1_n_0,
      PRE => done_i_2_n_0,
      Q => \^ce_n\
    );
\DQ_t[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_active,
      O => DQ_t(0)
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3331F331F331F331"
    )
        port map (
      I0 => loop_cnt,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      I4 => \mess_cnt_reg_n_0_[0]\,
      I5 => i_TX_done,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5ADADADA"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => i_TX_done,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CECECEC"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \mess_cnt_reg_n_0_[0]\,
      I4 => i_TX_done,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[1]\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[2]\
    );
OE_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB41"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \^oe_n\,
      O => OE_n_i_1_n_0
    );
OE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => OE_n_i_1_n_0,
      PRE => done_i_2_n_0,
      Q => \^oe_n\
    );
WE_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => \^we_n\,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => WE_n_i_1_n_0,
      PRE => done_i_2_n_0,
      Q => \^we_n\
    );
\data_buf[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => reset_n,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      O => data_buf0
    );
\data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(0),
      Q => data_buf(0),
      R => '0'
    );
\data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(10),
      Q => data_buf(10),
      R => '0'
    );
\data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(11),
      Q => data_buf(11),
      R => '0'
    );
\data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(12),
      Q => data_buf(12),
      R => '0'
    );
\data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(13),
      Q => data_buf(13),
      R => '0'
    );
\data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(14),
      Q => data_buf(14),
      R => '0'
    );
\data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(15),
      Q => data_buf(15),
      R => '0'
    );
\data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(1),
      Q => data_buf(1),
      R => '0'
    );
\data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(2),
      Q => data_buf(2),
      R => '0'
    );
\data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(3),
      Q => data_buf(3),
      R => '0'
    );
\data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(4),
      Q => data_buf(4),
      R => '0'
    );
\data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(5),
      Q => data_buf(5),
      R => '0'
    );
\data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(6),
      Q => data_buf(6),
      R => '0'
    );
\data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(7),
      Q => data_buf(7),
      R => '0'
    );
\data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(8),
      Q => data_buf(8),
      R => '0'
    );
\data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(9),
      Q => data_buf(9),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state_reg_n_0_[2]\,
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      I3 => \^done\,
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => done_i_2_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => done_i_1_n_0,
      Q => \^done\
    );
\loop_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \mess_cnt_reg_n_0_[0]\,
      I1 => i_TX_done,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => state(0),
      I4 => \FSM_sequential_state_reg_n_0_[1]\,
      I5 => loop_cnt,
      O => \loop_cnt[0]_i_1_n_0\
    );
\loop_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \loop_cnt[0]_i_1_n_0\,
      Q => loop_cnt
    );
\mess_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFC000"
    )
        port map (
      I0 => i_TX_done,
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => state(0),
      I4 => \mess_cnt_reg_n_0_[0]\,
      O => \mess_cnt[0]_i_1_n_0\
    );
\mess_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => \mess_cnt[0]_i_1_n_0\,
      Q => \mess_cnt_reg_n_0_[0]\
    );
o_TX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFF0D0000000"
    )
        port map (
      I0 => \mess_cnt_reg_n_0_[0]\,
      I1 => i_TX_done,
      I2 => state(0),
      I3 => \FSM_sequential_state_reg_n_0_[1]\,
      I4 => \FSM_sequential_state_reg_n_0_[2]\,
      I5 => \^o_tx_dv\,
      O => o_TX_DV_i_1_n_0
    );
o_TX_DV_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => o_TX_DV_i_1_n_0,
      Q => \^o_tx_dv\
    );
\o_TX_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(0),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(8),
      O => p_0_in(0)
    );
\o_TX_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(1),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(9),
      O => p_0_in(1)
    );
\o_TX_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(2),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(10),
      O => p_0_in(2)
    );
\o_TX_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(3),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(11),
      O => p_0_in(3)
    );
\o_TX_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(4),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(12),
      O => p_0_in(4)
    );
\o_TX_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(5),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(13),
      O => p_0_in(5)
    );
\o_TX_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(6),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(14),
      O => p_0_in(6)
    );
\o_TX_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800000008000"
    )
        port map (
      I0 => reset_n,
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => state(0),
      I3 => \FSM_sequential_state_reg_n_0_[2]\,
      I4 => \mess_cnt_reg_n_0_[0]\,
      I5 => i_TX_done,
      O => o_TX_data0
    );
\o_TX_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_buf(7),
      I1 => \mess_cnt_reg_n_0_[0]\,
      I2 => data_buf(15),
      O => p_0_in(7)
    );
\o_TX_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(0),
      Q => o_TX_data(0),
      R => '0'
    );
\o_TX_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(1),
      Q => o_TX_data(1),
      R => '0'
    );
\o_TX_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(2),
      Q => o_TX_data(2),
      R => '0'
    );
\o_TX_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(3),
      Q => o_TX_data(3),
      R => '0'
    );
\o_TX_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(4),
      Q => o_TX_data(4),
      R => '0'
    );
\o_TX_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(5),
      Q => o_TX_data(5),
      R => '0'
    );
\o_TX_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(6),
      Q => o_TX_data(6),
      R => '0'
    );
\o_TX_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => o_TX_data0,
      D => p_0_in(7),
      Q => o_TX_data(7),
      R => '0'
    );
write_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C404"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[2]\,
      I3 => write_active,
      O => write_active_i_1_n_0
    );
write_active_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => done_i_2_n_0,
      D => write_active_i_1_n_0,
      Q => write_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main_Blocks_sram_ctrl_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    done : out STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CE_n : out STD_LOGIC;
    OE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    CE2 : out STD_LOGIC;
    LB_n : out STD_LOGIC;
    UB_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Main_Blocks_sram_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Main_Blocks_sram_ctrl_0_0 : entity is "Main_Blocks_sram_ctrl_0_0,sram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Main_Blocks_sram_ctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Main_Blocks_sram_ctrl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Main_Blocks_sram_ctrl_0_0 : entity is "sram_ctrl,Vivado 2024.2";
end Main_Blocks_sram_ctrl_0_0;

architecture STRUCTURE of Main_Blocks_sram_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^dq_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  A(21) <= \^a\(0);
  A(20) <= \^a\(0);
  A(19) <= \^a\(0);
  A(18) <= \^a\(0);
  A(17) <= \^a\(0);
  A(16) <= \^a\(0);
  A(15) <= \^a\(0);
  A(14) <= \^a\(0);
  A(13) <= \^a\(0);
  A(12) <= \^a\(0);
  A(11) <= \^a\(0);
  A(10) <= \^a\(0);
  A(9) <= \^a\(0);
  A(8) <= \^a\(0);
  A(7) <= \^a\(0);
  A(6) <= \^a\(0);
  A(5) <= \^a\(0);
  A(4) <= \^a\(0);
  A(3) <= \^a\(0);
  A(2) <= \^a\(0);
  A(1) <= \^a\(0);
  A(0) <= \^a\(0);
  DQ_o(15) <= \<const0>\;
  DQ_o(14) <= \<const0>\;
  DQ_o(13) <= \<const1>\;
  DQ_o(12) <= \<const0>\;
  DQ_o(11) <= \<const0>\;
  DQ_o(10) <= \<const0>\;
  DQ_o(9) <= \<const1>\;
  DQ_o(8) <= \<const0>\;
  DQ_o(7) <= \<const0>\;
  DQ_o(6) <= \<const1>\;
  DQ_o(5) <= \<const0>\;
  DQ_o(4) <= \<const0>\;
  DQ_o(3) <= \<const0>\;
  DQ_o(2) <= \<const1>\;
  DQ_o(1) <= \<const0>\;
  DQ_o(0) <= \<const0>\;
  DQ_t(15) <= \^dq_t\(0);
  DQ_t(14) <= \^dq_t\(0);
  DQ_t(13) <= \^dq_t\(0);
  DQ_t(12) <= \^dq_t\(0);
  DQ_t(11) <= \^dq_t\(0);
  DQ_t(10) <= \^dq_t\(0);
  DQ_t(9) <= \^dq_t\(0);
  DQ_t(8) <= \^dq_t\(0);
  DQ_t(7) <= \^dq_t\(0);
  DQ_t(6) <= \^dq_t\(0);
  DQ_t(5) <= \^dq_t\(0);
  DQ_t(4) <= \^dq_t\(0);
  DQ_t(3) <= \^dq_t\(0);
  DQ_t(2) <= \^dq_t\(0);
  DQ_t(1) <= \^dq_t\(0);
  DQ_t(0) <= \^dq_t\(0);
  LB_n <= \<const0>\;
  UB_n <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Main_Blocks_sram_ctrl_0_0_sram_ctrl
     port map (
      A(0) => \^a\(0),
      CE2 => CE2,
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_t(0) => \^dq_t\(0),
      OE_n => OE_n,
      WE_n => WE_n,
      done => done,
      i_TX_done => i_TX_done,
      o_TX_DV => o_TX_DV,
      o_TX_data(7 downto 0) => o_TX_data(7 downto 0),
      reset_n => reset_n,
      sysclk => sysclk
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

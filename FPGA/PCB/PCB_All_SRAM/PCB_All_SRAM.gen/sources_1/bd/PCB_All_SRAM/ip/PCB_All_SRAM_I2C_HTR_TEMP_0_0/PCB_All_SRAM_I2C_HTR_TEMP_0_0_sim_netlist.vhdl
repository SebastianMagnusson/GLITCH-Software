-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:48:47 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_HTR_TEMP_0_0/PCB_All_SRAM_I2C_HTR_TEMP_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_I2C_HTR_TEMP_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP is
  port (
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led3 : out STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_rw : out STD_LOGIC;
    o_TX_DV_HTR : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 0 to 0 );
    HTR_rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_HTR_TEMP_request : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP : entity is "I2C_HTR_TEMP";
end PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP;

architecture STRUCTURE of PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal busy_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \busy_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal busy_prev : STD_LOGIC;
  signal busy_prev_reg_n_0 : STD_LOGIC;
  signal led3_i_1_n_0 : STD_LOGIC;
  signal led3_i_2_n_0 : STD_LOGIC;
  signal \^o_tx_dv_htr\ : STD_LOGIC;
  signal o_TX_DV_HTR_i_1_n_0 : STD_LOGIC;
  signal \o_TX_TEMP_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_TEMP_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \^o_i2c_data_wr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \o_i2c_data_wr[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[0]_i_2_n_0\ : STD_LOGIC;
  signal \^o_i2c_ena\ : STD_LOGIC;
  signal o_i2c_ena_i_1_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_2_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_3_n_0 : STD_LOGIC;
  signal \^o_i2c_rw\ : STD_LOGIC;
  signal o_i2c_rw_i_1_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_2_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_3_n_0 : STD_LOGIC;
  signal temp_data : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \temp_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \temp_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "send_temp:0100,cleanup:1000,idle:0001,temp:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "send_temp:0100,cleanup:1000,idle:0001,temp:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "send_temp:0100,cleanup:1000,idle:0001,temp:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "send_temp:0100,cleanup:1000,idle:0001,temp:0010";
  attribute SOFT_HLUTNM of busy_prev_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_i2c_ena_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_data[10]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp_data[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp_data[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp_data[13]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp_data[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_data[15]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp_data[15]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp_data[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp_data[9]_i_1\ : label is "soft_lutpair2";
begin
  o_TX_DV_HTR <= \^o_tx_dv_htr\;
  o_i2c_data_wr(0) <= \^o_i2c_data_wr\(0);
  o_i2c_ena <= \^o_i2c_ena\;
  o_i2c_rw <= \^o_i2c_rw\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => i_HTR_TEMP_request,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => i_HTR_TEMP_request,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_busy,
      I2 => \busy_cnt_reg_n_0_[0]\,
      I3 => \busy_cnt_reg_n_0_[1]\,
      I4 => \busy_cnt_reg_n_0_[2]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => led3_i_1_n_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => led3_i_1_n_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => led3_i_1_n_0
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => led3_i_1_n_0
    );
\busy_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA008A0000AA8A00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[2]\,
      I2 => \busy_cnt_reg_n_0_[1]\,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => i_busy,
      I5 => busy_prev_reg_n_0,
      O => busy_cnt(0)
    );
\busy_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A080A00AA080A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[2]\,
      I2 => \busy_cnt_reg_n_0_[1]\,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => i_busy,
      I5 => busy_prev_reg_n_0,
      O => busy_cnt(1)
    );
\busy_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => i_busy,
      I3 => busy_prev_reg_n_0,
      I4 => \busy_cnt_reg_n_0_[1]\,
      I5 => \busy_cnt_reg_n_0_[2]\,
      O => busy_cnt(2)
    );
\busy_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led3_i_2_n_0,
      D => busy_cnt(0),
      Q => \busy_cnt_reg_n_0_[0]\,
      R => led3_i_1_n_0
    );
\busy_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led3_i_2_n_0,
      D => busy_cnt(1),
      Q => \busy_cnt_reg_n_0_[1]\,
      R => led3_i_1_n_0
    );
\busy_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led3_i_2_n_0,
      D => busy_cnt(2),
      Q => \busy_cnt_reg_n_0_[2]\,
      R => led3_i_1_n_0
    );
busy_prev_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_busy,
      O => busy_prev
    );
busy_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => led3_i_2_n_0,
      D => busy_prev,
      Q => busy_prev_reg_n_0,
      R => led3_i_1_n_0
    );
led3_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_rst,
      O => led3_i_1_n_0
    );
led3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => led3_i_2_n_0
    );
led3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => led3_i_2_n_0,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => led3,
      R => led3_i_1_n_0
    );
o_TX_DV_HTR_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020000"
    )
        port map (
      I0 => \^o_tx_dv_htr\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => HTR_rst,
      O => o_TX_DV_HTR_i_1_n_0
    );
o_TX_DV_HTR_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_DV_HTR_i_1_n_0,
      Q => \^o_tx_dv_htr\,
      R => '0'
    );
\o_TX_TEMP_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => HTR_rst,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => HTR_rst,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \o_TX_TEMP_data[31]_i_2_n_0\
    );
\o_TX_TEMP_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[0]\,
      Q => o_TX_TEMP_data(0),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[1]\,
      Q => o_TX_TEMP_data(1),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[2]\,
      Q => o_TX_TEMP_data(2),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[3]\,
      Q => o_TX_TEMP_data(3),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[4]\,
      Q => o_TX_TEMP_data(4),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[5]\,
      Q => o_TX_TEMP_data(5),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[6]\,
      Q => o_TX_TEMP_data(6),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[7]\,
      Q => o_TX_TEMP_data(7),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[8]\,
      Q => o_TX_TEMP_data(8),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[9]\,
      Q => o_TX_TEMP_data(9),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[10]\,
      Q => o_TX_TEMP_data(10),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[11]\,
      Q => o_TX_TEMP_data(11),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[12]\,
      Q => o_TX_TEMP_data(12),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[13]\,
      Q => o_TX_TEMP_data(13),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[14]\,
      Q => o_TX_TEMP_data(14),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_TEMP_data[31]_i_2_n_0\,
      D => \temp_data_reg_n_0_[15]\,
      Q => o_TX_TEMP_data(15),
      R => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_i2c_data_wr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => HTR_rst,
      I2 => \o_i2c_data_wr[0]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \^o_i2c_data_wr\(0),
      O => \o_i2c_data_wr[0]_i_1_n_0\
    );
\o_i2c_data_wr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"200000000000008A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => busy_prev_reg_n_0,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => \busy_cnt_reg_n_0_[1]\,
      I5 => \busy_cnt_reg_n_0_[2]\,
      O => \o_i2c_data_wr[0]_i_2_n_0\
    );
\o_i2c_data_wr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o_i2c_data_wr[0]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(0),
      R => '0'
    );
o_i2c_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FE020200000000"
    )
        port map (
      I0 => \^o_i2c_ena\,
      I1 => o_i2c_ena_i_2_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => o_i2c_ena_i_3_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => HTR_rst,
      O => o_i2c_ena_i_1_n_0
    );
o_i2c_ena_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000080882822"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[0]\,
      I5 => \busy_cnt_reg_n_0_[2]\,
      O => o_i2c_ena_i_2_n_0
    );
o_i2c_ena_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[1]\,
      O => o_i2c_ena_i_3_n_0
    );
o_i2c_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i2c_ena_i_1_n_0,
      Q => \^o_i2c_ena\,
      R => '0'
    );
o_i2c_rw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8FFF80808000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => o_i2c_rw_i_2_n_0,
      I2 => HTR_rst,
      I3 => o_i2c_rw_i_3_n_0,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \^o_i2c_rw\,
      O => o_i2c_rw_i_1_n_0
    );
o_i2c_rw_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => busy_prev_reg_n_0,
      I2 => i_busy,
      O => o_i2c_rw_i_2_n_0
    );
o_i2c_rw_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000000000AA2A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => i_busy,
      I3 => busy_prev_reg_n_0,
      I4 => \busy_cnt_reg_n_0_[1]\,
      I5 => \busy_cnt_reg_n_0_[2]\,
      O => o_i2c_rw_i_3_n_0
    );
o_i2c_rw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i2c_rw_i_1_n_0,
      Q => \^o_i2c_rw\,
      R => '0'
    );
\temp_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(2),
      O => temp_data(10)
    );
\temp_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(3),
      O => temp_data(11)
    );
\temp_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(4),
      O => temp_data(12)
    );
\temp_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(5),
      O => temp_data(13)
    );
\temp_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(6),
      O => temp_data(14)
    );
\temp_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => i_busy,
      I2 => o_i2c_ena_i_3_n_0,
      I3 => o_i2c_rw_i_2_n_0,
      I4 => \temp_data[15]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \temp_data[15]_i_1_n_0\
    );
\temp_data[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(7),
      O => temp_data(15)
    );
\temp_data[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => busy_prev_reg_n_0,
      I1 => i_busy,
      I2 => \busy_cnt_reg_n_0_[0]\,
      I3 => \busy_cnt_reg_n_0_[1]\,
      I4 => \busy_cnt_reg_n_0_[2]\,
      O => \temp_data[15]_i_3_n_0\
    );
\temp_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => o_i2c_rw_i_2_n_0,
      I2 => i_busy,
      I3 => o_i2c_ena_i_3_n_0,
      I4 => \temp_data[15]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \temp_data[7]_i_1_n_0\
    );
\temp_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(0),
      O => temp_data(8)
    );
\temp_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => i_data_read(1),
      O => temp_data(9)
    );
\temp_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(8),
      Q => \temp_data_reg_n_0_[0]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(10),
      Q => \temp_data_reg_n_0_[10]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(11),
      Q => \temp_data_reg_n_0_[11]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(12),
      Q => \temp_data_reg_n_0_[12]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(13),
      Q => \temp_data_reg_n_0_[13]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(14),
      Q => \temp_data_reg_n_0_[14]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(15),
      Q => \temp_data_reg_n_0_[15]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(9),
      Q => \temp_data_reg_n_0_[1]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(10),
      Q => \temp_data_reg_n_0_[2]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(11),
      Q => \temp_data_reg_n_0_[3]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(12),
      Q => \temp_data_reg_n_0_[4]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(13),
      Q => \temp_data_reg_n_0_[5]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(14),
      Q => \temp_data_reg_n_0_[6]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(15),
      Q => \temp_data_reg_n_0_[7]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(8),
      Q => \temp_data_reg_n_0_[8]\,
      R => led3_i_1_n_0
    );
\temp_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(9),
      Q => \temp_data_reg_n_0_[9]\,
      R => led3_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_I2C_HTR_TEMP_0_0 is
  port (
    clk : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_done_HTR : in STD_LOGIC;
    i_HTR_TEMP_request : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV_HTR : out STD_LOGIC;
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_I2C_HTR_TEMP_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_I2C_HTR_TEMP_0_0 : entity is "PCB_All_SRAM_I2C_HTR_TEMP_0_0,I2C_HTR_TEMP,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_I2C_HTR_TEMP_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_I2C_HTR_TEMP_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_I2C_HTR_TEMP_0_0 : entity is "I2C_HTR_TEMP,Vivado 2024.2";
end PCB_All_SRAM_I2C_HTR_TEMP_0_0;

architecture STRUCTURE of PCB_All_SRAM_I2C_HTR_TEMP_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_tx_temp_data\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^o_i2c_data_wr\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of HTR_rst : signal is "xilinx.com:signal:reset:1.0 HTR_rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of HTR_rst : signal is "slave HTR_rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of HTR_rst : signal is "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  led1 <= \<const0>\;
  led2 <= \<const0>\;
  o_TX_TEMP_data(31 downto 16) <= \^o_tx_temp_data\(15 downto 0);
  o_TX_TEMP_data(15 downto 0) <= \^o_tx_temp_data\(15 downto 0);
  o_i2c_address(6) <= \^o_i2c_data_wr\(1);
  o_i2c_address(5) <= \<const0>\;
  o_i2c_address(4) <= \<const0>\;
  o_i2c_address(3) <= \<const0>\;
  o_i2c_address(2) <= \<const0>\;
  o_i2c_address(1) <= \<const0>\;
  o_i2c_address(0) <= \<const0>\;
  o_i2c_data_wr(7) <= \^o_i2c_data_wr\(1);
  o_i2c_data_wr(6) <= \^o_i2c_data_wr\(1);
  o_i2c_data_wr(5) <= \^o_i2c_data_wr\(1);
  o_i2c_data_wr(4) <= \<const0>\;
  o_i2c_data_wr(3) <= \<const0>\;
  o_i2c_data_wr(2) <= \<const0>\;
  o_i2c_data_wr(1) <= \^o_i2c_data_wr\(1);
  o_i2c_data_wr(0) <= \^o_i2c_data_wr\(1);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP
     port map (
      HTR_rst => HTR_rst,
      clk => clk,
      i_HTR_TEMP_request => i_HTR_TEMP_request,
      i_busy => i_busy,
      i_data_read(7 downto 0) => i_data_read(7 downto 0),
      led3 => led3,
      o_TX_DV_HTR => o_TX_DV_HTR,
      o_TX_TEMP_data(15 downto 0) => \^o_tx_temp_data\(15 downto 0),
      o_i2c_data_wr(0) => \^o_i2c_data_wr\(1),
      o_i2c_ena => o_i2c_ena,
      o_i2c_rw => o_i2c_rw
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Sep 18 16:07:58 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadboard_Test7/SRAM_Breadboard_Test7.gen/sources_1/bd/BF_Test2/ip/BF_Test2_I2C_full_sensor_data_0_0/BF_Test2_I2C_full_sensor_data_0_0_sim_netlist.vhdl}
-- Design      : BF_Test2_I2C_full_sensor_data_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher is
  port (
    o_i2c_address : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_TX_RTC_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_ALT_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_i2c_ena : out STD_LOGIC;
    o_i2c_rw : out STD_LOGIC;
    o_TX_DV_HK : out STD_LOGIC;
    o_TX_DV_BF : out STD_LOGIC;
    o_TX_DV_RAD : out STD_LOGIC;
    o_TX_DV_HTR : out STD_LOGIC;
    led2 : out STD_LOGIC;
    rst : in STD_LOGIC;
    i_TX_done_HK : in STD_LOGIC;
    i_HK_ALT_request : in STD_LOGIC;
    i_HK_TEMP_request : in STD_LOGIC;
    i_HTR_TEMP_request : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_TX_done_RAD : in STD_LOGIC;
    i_TX_done_BF : in STD_LOGIC;
    i_TX_done_HTR : in STD_LOGIC;
    clk : in STD_LOGIC;
    i_HK_RTC_request : in STD_LOGIC;
    i_BF_RTC_request : in STD_LOGIC;
    i_RAD_RTC_request : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher : entity is "I2C_full_sensor_data_fetcher";
end BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher;

architecture STRUCTURE of BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \alt_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \alt_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \alt_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \alt_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \alt_data_reg_n_0_[9]\ : STD_LOGIC;
  signal busy_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \busy_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \busy_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \busy_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \busy_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \busy_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \busy_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \busy_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \busy_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \busy_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal busy_prev : STD_LOGIC;
  signal busy_prev_reg_n_0 : STD_LOGIC;
  signal conv_cnt : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal conv_cnt0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \conv_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \conv_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \conv_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \conv_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \conv_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \conv_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \conv_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \conv_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \conv_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \conv_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \conv_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal conv_cnt0_carry_n_0 : STD_LOGIC;
  signal conv_cnt0_carry_n_1 : STD_LOGIC;
  signal conv_cnt0_carry_n_2 : STD_LOGIC;
  signal conv_cnt0_carry_n_3 : STD_LOGIC;
  signal \conv_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \conv_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \conv_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \conv_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \conv_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \conv_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \^led2\ : STD_LOGIC;
  signal led2_i_1_n_0 : STD_LOGIC;
  signal led2_i_2_n_0 : STD_LOGIC;
  signal led2_i_3_n_0 : STD_LOGIC;
  signal \o_TX_ALT_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \^o_tx_dv_bf\ : STD_LOGIC;
  signal o_TX_DV_BF_i_1_n_0 : STD_LOGIC;
  signal o_TX_DV_BF_i_2_n_0 : STD_LOGIC;
  signal \^o_tx_dv_hk\ : STD_LOGIC;
  signal o_TX_DV_HK_i_1_n_0 : STD_LOGIC;
  signal o_TX_DV_HK_i_2_n_0 : STD_LOGIC;
  signal o_TX_DV_HK_i_3_n_0 : STD_LOGIC;
  signal \^o_tx_dv_htr\ : STD_LOGIC;
  signal o_TX_DV_HTR_i_1_n_0 : STD_LOGIC;
  signal o_TX_DV_HTR_i_2_n_0 : STD_LOGIC;
  signal \^o_tx_dv_rad\ : STD_LOGIC;
  signal o_TX_DV_RAD_i_1_n_0 : STD_LOGIC;
  signal o_TX_DV_RAD_i_2_n_0 : STD_LOGIC;
  signal \o_TX_RTC_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_RTC_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \o_TX_TEMP_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \o_TX_TEMP_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \o_i2c_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_4_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_5_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_6_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_7_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_8_n_0\ : STD_LOGIC;
  signal \o_i2c_address[6]_i_9_n_0\ : STD_LOGIC;
  signal \^o_i2c_data_wr\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \o_i2c_data_wr[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_5_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_6_n_0\ : STD_LOGIC;
  signal \o_i2c_data_wr[7]_i_7_n_0\ : STD_LOGIC;
  signal \^o_i2c_ena\ : STD_LOGIC;
  signal o_i2c_ena_i_10_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_11_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_12_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_13_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_14_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_15_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_16_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_17_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_1_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_2_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_3_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_4_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_5_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_6_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_7_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_8_n_0 : STD_LOGIC;
  signal o_i2c_ena_i_9_n_0 : STD_LOGIC;
  signal \^o_i2c_rw\ : STD_LOGIC;
  signal o_i2c_rw_i_1_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_2_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_3_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_4_n_0 : STD_LOGIC;
  signal o_i2c_rw_i_5_n_0 : STD_LOGIC;
  signal rtc_data : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal \rtc_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \rtc_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rtc_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \rtc_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \rtc_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \rtc_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \start_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal start_cnt_reg : STD_LOGIC_VECTOR ( 20 downto 7 );
  signal \start_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \start_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \start_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \start_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \start_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \start_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \start_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal \who_requested[0]_i_1_n_0\ : STD_LOGIC;
  signal \who_requested[1]_i_1_n_0\ : STD_LOGIC;
  signal \who_requested[1]_i_2_n_0\ : STD_LOGIC;
  signal \who_requested[1]_i_3_n_0\ : STD_LOGIC;
  signal \who_requested_reg_n_0_[0]\ : STD_LOGIC;
  signal \who_requested_reg_n_0_[1]\ : STD_LOGIC;
  signal \NLW_conv_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_start_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_cnt_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110";
  attribute SOFT_HLUTNM of \alt_data[23]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \busy_cnt[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \busy_cnt[0]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \busy_cnt[1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \busy_cnt[1]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of busy_prev_i_1 : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of conv_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \conv_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \conv_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \conv_cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \conv_cnt[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \conv_cnt[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \conv_cnt[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \conv_cnt[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \conv_cnt[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \conv_cnt[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \conv_cnt[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \conv_cnt[16]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \conv_cnt[16]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \conv_cnt[16]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \conv_cnt[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \conv_cnt[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \conv_cnt[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \conv_cnt[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \conv_cnt[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \conv_cnt[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \conv_cnt[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \conv_cnt[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \conv_cnt[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of led2_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of led2_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_TX_DV_HK_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of o_TX_DV_HTR_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_i2c_address[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_i2c_address[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_i2c_address[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_i2c_address[6]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_i2c_data_wr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_i2c_data_wr[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_i2c_data_wr[7]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of o_i2c_ena_i_11 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of o_i2c_ena_i_13 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of o_i2c_ena_i_17 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_i2c_ena_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_i2c_ena_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of o_i2c_ena_i_9 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of o_i2c_rw_i_4 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of o_i2c_rw_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rtc_data[15]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rtc_data[16]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rtc_data[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rtc_data[18]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rtc_data[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rtc_data[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rtc_data[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rtc_data[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rtc_data[23]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rtc_data[23]_i_3\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \start_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \start_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \start_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \start_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \start_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \start_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \temp_data[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \temp_data[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \temp_data[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \temp_data[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \temp_data[14]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \temp_data[15]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \temp_data[15]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \temp_data[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \temp_data[9]_i_1\ : label is "soft_lutpair30";
begin
  led2 <= \^led2\;
  o_TX_DV_BF <= \^o_tx_dv_bf\;
  o_TX_DV_HK <= \^o_tx_dv_hk\;
  o_TX_DV_HTR <= \^o_tx_dv_htr\;
  o_TX_DV_RAD <= \^o_tx_dv_rad\;
  o_i2c_data_wr(2 downto 0) <= \^o_i2c_data_wr\(2 downto 0);
  o_i2c_ena <= \^o_i2c_ena\;
  o_i2c_rw <= \^o_i2c_rw\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222AAAAAFFFFFFFF"
    )
        port map (
      I0 => state(3),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => i_TX_done_HTR,
      I3 => i_TX_done_HK,
      I4 => state(0),
      I5 => \FSM_sequential_state[0]_i_3_n_0\,
      O => \state__0\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FAF0F0F8FAFFFF"
    )
        port map (
      I0 => state(0),
      I1 => i_TX_done_HK,
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      I5 => \FSM_sequential_state[0]_i_4_n_0\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_12_n_0\,
      I1 => i_HK_ALT_request,
      I2 => i_HK_TEMP_request,
      I3 => i_HTR_TEMP_request,
      I4 => state(1),
      I5 => \FSM_sequential_state[1]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAA0A0"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => \FSM_sequential_state[1]_i_3_n_0\,
      I4 => state(1),
      I5 => state(0),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8FFFF"
    )
        port map (
      I0 => state(0),
      I1 => i_TX_done_HK,
      I2 => i_TX_done_HTR,
      I3 => state(1),
      I4 => state(3),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i_HK_RTC_request,
      I1 => i_BF_RTC_request,
      I2 => i_RAD_RTC_request,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"070F0000070F0F0F"
    )
        port map (
      I0 => state(0),
      I1 => i_TX_done_HK,
      I2 => state(3),
      I3 => state(1),
      I4 => state(2),
      I5 => \FSM_sequential_state[2]_i_2_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => i_HK_ALT_request,
      I3 => i_HK_RTC_request,
      I4 => i_BF_RTC_request,
      I5 => i_RAD_RTC_request,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55554000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_state[3]_i_4_n_0\,
      I2 => \FSM_sequential_state[3]_i_5_n_0\,
      I3 => \FSM_sequential_state[3]_i_6_n_0\,
      I4 => \FSM_sequential_state[3]_i_7_n_0\,
      I5 => \FSM_sequential_state[3]_i_8_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \busy_cnt_reg_n_0_[0]\,
      I3 => i_busy,
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => i_TX_done_HK,
      I1 => state(1),
      I2 => i_TX_done_RAD,
      I3 => i_TX_done_BF,
      I4 => state(0),
      O => \FSM_sequential_state[3]_i_12_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54AE04AE04AE04AE"
    )
        port map (
      I0 => state(3),
      I1 => \FSM_sequential_state[3]_i_9_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => i_TX_done_HK,
      I5 => state(0),
      O => \state__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAAAAAA"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_3_n_0\,
      I2 => \conv_cnt[16]_i_4_n_0\,
      I3 => i_busy,
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => start_cnt_reg(20),
      I1 => start_cnt_reg(19),
      I2 => start_cnt_reg(18),
      I3 => start_cnt_reg(17),
      I4 => o_i2c_ena_i_10_n_0,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \conv_cnt[16]_i_3_n_0\,
      I1 => \FSM_sequential_state[3]_i_10_n_0\,
      I2 => \conv_cnt[16]_i_5_n_0\,
      I3 => \FSM_sequential_state[3]_i_11_n_0\,
      I4 => \rtc_data[15]_i_2_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505545004045450"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => \rtc_data[15]_i_2_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[3]_i_5_n_0\,
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF000E"
    )
        port map (
      I0 => i_HTR_TEMP_request,
      I1 => i_HK_TEMP_request,
      I2 => i_HK_ALT_request,
      I3 => \FSM_sequential_state[1]_i_3_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[3]_i_12_n_0\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(0),
      Q => state(0),
      S => o_i2c_ena_i_1_n_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(1),
      Q => state(1),
      R => o_i2c_ena_i_1_n_0
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => o_i2c_ena_i_1_n_0
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      D => \state__0\(3),
      Q => state(3),
      R => o_i2c_ena_i_1_n_0
    );
\alt_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0004"
    )
        port map (
      I0 => \o_i2c_address[6]_i_5_n_0\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => state(3),
      I5 => \alt_data[23]_i_2_n_0\,
      O => \alt_data[15]_i_1_n_0\
    );
\alt_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF08"
    )
        port map (
      I0 => \conv_cnt[16]_i_3_n_0\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => i_busy,
      I3 => state(3),
      I4 => \alt_data[23]_i_2_n_0\,
      O => \alt_data[23]_i_1_n_0\
    );
\alt_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBF"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \alt_data[23]_i_2_n_0\
    );
\alt_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002C00"
    )
        port map (
      I0 => \rtc_data[15]_i_2_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => \alt_data[7]_i_1_n_0\
    );
\alt_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(16),
      Q => \alt_data_reg_n_0_[0]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(18),
      Q => \alt_data_reg_n_0_[10]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(19),
      Q => \alt_data_reg_n_0_[11]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(20),
      Q => \alt_data_reg_n_0_[12]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(21),
      Q => \alt_data_reg_n_0_[13]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(22),
      Q => \alt_data_reg_n_0_[14]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(23),
      Q => \alt_data_reg_n_0_[15]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(16),
      Q => \alt_data_reg_n_0_[16]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(17),
      Q => \alt_data_reg_n_0_[17]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(18),
      Q => \alt_data_reg_n_0_[18]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(19),
      Q => \alt_data_reg_n_0_[19]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(17),
      Q => \alt_data_reg_n_0_[1]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(20),
      Q => \alt_data_reg_n_0_[20]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(21),
      Q => \alt_data_reg_n_0_[21]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(22),
      Q => \alt_data_reg_n_0_[22]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[23]_i_1_n_0\,
      D => rtc_data(23),
      Q => \alt_data_reg_n_0_[23]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(18),
      Q => \alt_data_reg_n_0_[2]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(19),
      Q => \alt_data_reg_n_0_[3]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(20),
      Q => \alt_data_reg_n_0_[4]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(21),
      Q => \alt_data_reg_n_0_[5]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(22),
      Q => \alt_data_reg_n_0_[6]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[7]_i_1_n_0\,
      D => rtc_data(23),
      Q => \alt_data_reg_n_0_[7]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(16),
      Q => \alt_data_reg_n_0_[8]\,
      R => o_i2c_ena_i_1_n_0
    );
\alt_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \alt_data[15]_i_1_n_0\,
      D => rtc_data(17),
      Q => \alt_data_reg_n_0_[9]\,
      R => o_i2c_ena_i_1_n_0
    );
\busy_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F808F8080"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \busy_cnt[0]_i_2_n_0\,
      I2 => state(3),
      I3 => \busy_cnt[0]_i_3_n_0\,
      I4 => \busy_cnt[0]_i_4_n_0\,
      I5 => \busy_cnt[0]_i_5_n_0\,
      O => busy_cnt(0)
    );
\busy_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BB0F00"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[0]\,
      O => \busy_cnt[0]_i_2_n_0\
    );
\busy_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF404F"
    )
        port map (
      I0 => \busy_cnt[0]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => \conv_cnt[16]_i_4_n_0\,
      I4 => state(0),
      O => \busy_cnt[0]_i_3_n_0\
    );
\busy_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDF00FFFF"
    )
        port map (
      I0 => \conv_cnt[16]_i_5_n_0\,
      I1 => i_busy,
      I2 => \conv_cnt[16]_i_3_n_0\,
      I3 => \conv_cnt[16]_i_4_n_0\,
      I4 => state(2),
      I5 => state(1),
      O => \busy_cnt[0]_i_4_n_0\
    );
\busy_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FE0E000000000"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[2]\,
      I2 => \busy_cnt_reg_n_0_[0]\,
      I3 => busy_prev_reg_n_0,
      I4 => i_busy,
      I5 => state(0),
      O => \busy_cnt[0]_i_5_n_0\
    );
\busy_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000CEFFF00000000"
    )
        port map (
      I0 => state(0),
      I1 => \busy_cnt[1]_i_2_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => \busy_cnt[1]_i_3_n_0\,
      O => busy_cnt(1)
    );
\busy_cnt[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => i_busy,
      O => \busy_cnt[1]_i_2_n_0\
    );
\busy_cnt[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => i_busy,
      I3 => busy_prev_reg_n_0,
      O => \busy_cnt[1]_i_3_n_0\
    );
\busy_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F30FE"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_6_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => state(3),
      O => \busy_cnt[2]_i_1_n_0\
    );
\busy_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFEFE00000000"
    )
        port map (
      I0 => state(0),
      I1 => \busy_cnt[2]_i_3_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => \o_i2c_address[6]_i_5_n_0\,
      O => busy_cnt(2)
    );
\busy_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => i_busy,
      I2 => \busy_cnt_reg_n_0_[1]\,
      O => \busy_cnt[2]_i_3_n_0\
    );
\busy_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_cnt[2]_i_1_n_0\,
      D => busy_cnt(0),
      Q => \busy_cnt_reg_n_0_[0]\,
      R => o_i2c_ena_i_1_n_0
    );
\busy_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_cnt[2]_i_1_n_0\,
      D => busy_cnt(1),
      Q => \busy_cnt_reg_n_0_[1]\,
      R => o_i2c_ena_i_1_n_0
    );
\busy_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \busy_cnt[2]_i_1_n_0\,
      D => busy_cnt(2),
      Q => \busy_cnt_reg_n_0_[2]\,
      R => o_i2c_ena_i_1_n_0
    );
busy_prev_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222A"
    )
        port map (
      I0 => i_busy,
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => busy_prev
    );
busy_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \busy_cnt[2]_i_1_n_0\,
      D => busy_prev,
      Q => busy_prev_reg_n_0,
      R => o_i2c_ena_i_1_n_0
    );
conv_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => conv_cnt0_carry_n_0,
      CO(2) => conv_cnt0_carry_n_1,
      CO(1) => conv_cnt0_carry_n_2,
      CO(0) => conv_cnt0_carry_n_3,
      CYINIT => \conv_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => conv_cnt0(4 downto 1),
      S(3) => \conv_cnt_reg_n_0_[4]\,
      S(2) => \conv_cnt_reg_n_0_[3]\,
      S(1) => \conv_cnt_reg_n_0_[2]\,
      S(0) => \conv_cnt_reg_n_0_[1]\
    );
\conv_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => conv_cnt0_carry_n_0,
      CO(3) => \conv_cnt0_carry__0_n_0\,
      CO(2) => \conv_cnt0_carry__0_n_1\,
      CO(1) => \conv_cnt0_carry__0_n_2\,
      CO(0) => \conv_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => conv_cnt0(8 downto 5),
      S(3) => \conv_cnt_reg_n_0_[8]\,
      S(2) => \conv_cnt_reg_n_0_[7]\,
      S(1) => \conv_cnt_reg_n_0_[6]\,
      S(0) => \conv_cnt_reg_n_0_[5]\
    );
\conv_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \conv_cnt0_carry__0_n_0\,
      CO(3) => \conv_cnt0_carry__1_n_0\,
      CO(2) => \conv_cnt0_carry__1_n_1\,
      CO(1) => \conv_cnt0_carry__1_n_2\,
      CO(0) => \conv_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => conv_cnt0(12 downto 9),
      S(3) => \conv_cnt_reg_n_0_[12]\,
      S(2) => \conv_cnt_reg_n_0_[11]\,
      S(1) => \conv_cnt_reg_n_0_[10]\,
      S(0) => \conv_cnt_reg_n_0_[9]\
    );
\conv_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \conv_cnt0_carry__1_n_0\,
      CO(3) => \NLW_conv_cnt0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \conv_cnt0_carry__2_n_1\,
      CO(1) => \conv_cnt0_carry__2_n_2\,
      CO(0) => \conv_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => conv_cnt0(16 downto 13),
      S(3) => \conv_cnt_reg_n_0_[16]\,
      S(2) => \conv_cnt_reg_n_0_[15]\,
      S(1) => \conv_cnt_reg_n_0_[14]\,
      S(0) => \conv_cnt_reg_n_0_[13]\
    );
\conv_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => \conv_cnt_reg_n_0_[0]\,
      O => conv_cnt(0)
    );
\conv_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(10),
      O => conv_cnt(10)
    );
\conv_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(11),
      O => conv_cnt(11)
    );
\conv_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(12),
      O => conv_cnt(12)
    );
\conv_cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(13),
      O => conv_cnt(13)
    );
\conv_cnt[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(14),
      O => conv_cnt(14)
    );
\conv_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(15),
      O => conv_cnt(15)
    );
\conv_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030083000"
    )
        port map (
      I0 => \conv_cnt[16]_i_3_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => \conv_cnt[16]_i_4_n_0\,
      I5 => state(0),
      O => \conv_cnt[16]_i_1_n_0\
    );
\conv_cnt[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(16),
      O => conv_cnt(16)
    );
\conv_cnt[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080000F7"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[1]\,
      I4 => \busy_cnt_reg_n_0_[2]\,
      O => \conv_cnt[16]_i_3_n_0\
    );
\conv_cnt[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => busy_prev_reg_n_0,
      I2 => i_busy,
      O => \conv_cnt[16]_i_4_n_0\
    );
\conv_cnt[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200000000000000"
    )
        port map (
      I0 => \conv_cnt_reg_n_0_[12]\,
      I1 => \conv_cnt[16]_i_6_n_0\,
      I2 => \conv_cnt_reg_n_0_[13]\,
      I3 => \conv_cnt_reg_n_0_[15]\,
      I4 => \conv_cnt_reg_n_0_[14]\,
      I5 => \conv_cnt_reg_n_0_[16]\,
      O => \conv_cnt[16]_i_5_n_0\
    );
\conv_cnt[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555557F"
    )
        port map (
      I0 => \conv_cnt_reg_n_0_[10]\,
      I1 => \conv_cnt_reg_n_0_[6]\,
      I2 => \conv_cnt_reg_n_0_[7]\,
      I3 => \conv_cnt_reg_n_0_[8]\,
      I4 => \conv_cnt_reg_n_0_[9]\,
      I5 => \conv_cnt_reg_n_0_[11]\,
      O => \conv_cnt[16]_i_6_n_0\
    );
\conv_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(1),
      O => conv_cnt(1)
    );
\conv_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(2),
      O => conv_cnt(2)
    );
\conv_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(3),
      O => conv_cnt(3)
    );
\conv_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(4),
      O => conv_cnt(4)
    );
\conv_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(5),
      O => conv_cnt(5)
    );
\conv_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(6),
      O => conv_cnt(6)
    );
\conv_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(7),
      O => conv_cnt(7)
    );
\conv_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(8),
      O => conv_cnt(8)
    );
\conv_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(3),
      I1 => \conv_cnt[16]_i_5_n_0\,
      I2 => conv_cnt0(9),
      O => conv_cnt(9)
    );
\conv_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(0),
      Q => \conv_cnt_reg_n_0_[0]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(10),
      Q => \conv_cnt_reg_n_0_[10]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(11),
      Q => \conv_cnt_reg_n_0_[11]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(12),
      Q => \conv_cnt_reg_n_0_[12]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(13),
      Q => \conv_cnt_reg_n_0_[13]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(14),
      Q => \conv_cnt_reg_n_0_[14]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(15),
      Q => \conv_cnt_reg_n_0_[15]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(16),
      Q => \conv_cnt_reg_n_0_[16]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(1),
      Q => \conv_cnt_reg_n_0_[1]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(2),
      Q => \conv_cnt_reg_n_0_[2]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(3),
      Q => \conv_cnt_reg_n_0_[3]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(4),
      Q => \conv_cnt_reg_n_0_[4]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(5),
      Q => \conv_cnt_reg_n_0_[5]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(6),
      Q => \conv_cnt_reg_n_0_[6]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(7),
      Q => \conv_cnt_reg_n_0_[7]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(8),
      Q => \conv_cnt_reg_n_0_[8]\,
      R => o_i2c_ena_i_1_n_0
    );
\conv_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \conv_cnt[16]_i_1_n_0\,
      D => conv_cnt(9),
      Q => \conv_cnt_reg_n_0_[9]\,
      R => o_i2c_ena_i_1_n_0
    );
led2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFFFFFA2000000"
    )
        port map (
      I0 => led2_i_2_n_0,
      I1 => \o_i2c_address[6]_i_4_n_0\,
      I2 => led2_i_3_n_0,
      I3 => \o_i2c_address[3]_i_1_n_0\,
      I4 => rst,
      I5 => \^led2\,
      O => led2_i_1_n_0
    );
led2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => \o_i2c_address[6]_i_5_n_0\,
      O => led2_i_2_n_0
    );
led2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => led2_i_3_n_0
    );
led2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => led2_i_1_n_0,
      Q => \^led2\,
      R => '0'
    );
\o_TX_ALT_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02008000"
    )
        port map (
      I0 => rst,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      O => \o_TX_ALT_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[0]\,
      Q => o_TX_ALT_data(0),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[10]\,
      Q => o_TX_ALT_data(10),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[11]\,
      Q => o_TX_ALT_data(11),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[12]\,
      Q => o_TX_ALT_data(12),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[13]\,
      Q => o_TX_ALT_data(13),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[14]\,
      Q => o_TX_ALT_data(14),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[15]\,
      Q => o_TX_ALT_data(15),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[16]\,
      Q => o_TX_ALT_data(16),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[17]\,
      Q => o_TX_ALT_data(17),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[18]\,
      Q => o_TX_ALT_data(18),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[19]\,
      Q => o_TX_ALT_data(19),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[1]\,
      Q => o_TX_ALT_data(1),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[20]\,
      Q => o_TX_ALT_data(20),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[21]\,
      Q => o_TX_ALT_data(21),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[22]\,
      Q => o_TX_ALT_data(22),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[23]\,
      Q => o_TX_ALT_data(23),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[2]\,
      Q => o_TX_ALT_data(2),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[3]\,
      Q => o_TX_ALT_data(3),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[4]\,
      Q => o_TX_ALT_data(4),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[5]\,
      Q => o_TX_ALT_data(5),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[6]\,
      Q => o_TX_ALT_data(6),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[7]\,
      Q => o_TX_ALT_data(7),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[8]\,
      Q => o_TX_ALT_data(8),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_ALT_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_ALT_data[23]_i_1_n_0\,
      D => \alt_data_reg_n_0_[9]\,
      Q => o_TX_ALT_data(9),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
o_TX_DV_BF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FF08080800"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => o_TX_DV_HK_i_2_n_0,
      I4 => o_TX_DV_BF_i_2_n_0,
      I5 => \^o_tx_dv_bf\,
      O => o_TX_DV_BF_i_1_n_0
    );
o_TX_DV_BF_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020002020202"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => \who_requested_reg_n_0_[0]\,
      I4 => \who_requested_reg_n_0_[1]\,
      I5 => state(1),
      O => o_TX_DV_BF_i_2_n_0
    );
o_TX_DV_BF_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_DV_BF_i_1_n_0,
      Q => \^o_tx_dv_bf\,
      R => o_i2c_ena_i_1_n_0
    );
o_TX_DV_HK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FF08080800"
    )
        port map (
      I0 => state(0),
      I1 => \o_i2c_address[6]_i_2_n_0\,
      I2 => \o_i2c_address[6]_i_6_n_0\,
      I3 => o_TX_DV_HK_i_2_n_0,
      I4 => o_TX_DV_HK_i_3_n_0,
      I5 => \^o_tx_dv_hk\,
      O => o_TX_DV_HK_i_1_n_0
    );
o_TX_DV_HK_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000202"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => \o_i2c_address[6]_i_9_n_0\,
      O => o_TX_DV_HK_i_2_n_0
    );
o_TX_DV_HK_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000F01F0000"
    )
        port map (
      I0 => \who_requested_reg_n_0_[0]\,
      I1 => \who_requested_reg_n_0_[1]\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => state(3),
      O => o_TX_DV_HK_i_3_n_0
    );
o_TX_DV_HK_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_DV_HK_i_1_n_0,
      Q => \^o_tx_dv_hk\,
      R => o_i2c_ena_i_1_n_0
    );
o_TX_DV_HTR_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(2),
      I3 => o_TX_DV_HTR_i_2_n_0,
      I4 => \^o_tx_dv_htr\,
      O => o_TX_DV_HTR_i_1_n_0
    );
o_TX_DV_HTR_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008FF000"
    )
        port map (
      I0 => \who_requested_reg_n_0_[1]\,
      I1 => \who_requested_reg_n_0_[0]\,
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => o_TX_DV_HTR_i_2_n_0
    );
o_TX_DV_HTR_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_DV_HTR_i_1_n_0,
      Q => \^o_tx_dv_htr\,
      R => o_i2c_ena_i_1_n_0
    );
o_TX_DV_RAD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FF08080800"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => o_TX_DV_HK_i_2_n_0,
      I4 => o_TX_DV_RAD_i_2_n_0,
      I5 => \^o_tx_dv_rad\,
      O => o_TX_DV_RAD_i_1_n_0
    );
o_TX_DV_RAD_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020002020202"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => \who_requested_reg_n_0_[1]\,
      I4 => \who_requested_reg_n_0_[0]\,
      I5 => state(1),
      O => o_TX_DV_RAD_i_2_n_0
    );
o_TX_DV_RAD_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_DV_RAD_i_1_n_0,
      Q => \^o_tx_dv_rad\,
      R => o_i2c_ena_i_1_n_0
    );
\o_TX_RTC_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => rst,
      O => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000800"
    )
        port map (
      I0 => rst,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      O => \o_TX_RTC_data[23]_i_2_n_0\
    );
\o_TX_RTC_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[0]\,
      Q => o_TX_RTC_data(0),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[10]\,
      Q => o_TX_RTC_data(10),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[11]\,
      Q => o_TX_RTC_data(11),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[12]\,
      Q => o_TX_RTC_data(12),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[13]\,
      Q => o_TX_RTC_data(13),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[14]\,
      Q => o_TX_RTC_data(14),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[15]\,
      Q => o_TX_RTC_data(15),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[16]\,
      Q => o_TX_RTC_data(16),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[17]\,
      Q => o_TX_RTC_data(17),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[18]\,
      Q => o_TX_RTC_data(18),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[19]\,
      Q => o_TX_RTC_data(19),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[1]\,
      Q => o_TX_RTC_data(1),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[20]\,
      Q => o_TX_RTC_data(20),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[21]\,
      Q => o_TX_RTC_data(21),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[22]\,
      Q => o_TX_RTC_data(22),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[23]\,
      Q => o_TX_RTC_data(23),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[2]\,
      Q => o_TX_RTC_data(2),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[3]\,
      Q => o_TX_RTC_data(3),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[4]\,
      Q => o_TX_RTC_data(4),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[5]\,
      Q => o_TX_RTC_data(5),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[6]\,
      Q => o_TX_RTC_data(6),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[7]\,
      Q => o_TX_RTC_data(7),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[8]\,
      Q => o_TX_RTC_data(8),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_RTC_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_TX_RTC_data[23]_i_2_n_0\,
      D => \rtc_data_reg_n_0_[9]\,
      Q => o_TX_RTC_data(9),
      R => \o_TX_RTC_data[23]_i_1_n_0\
    );
\o_TX_TEMP_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => state(3),
      I1 => rst,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      O => \o_TX_TEMP_data[31]_i_1_n_0\
    );
\o_TX_TEMP_data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00600000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rst,
      I3 => state(2),
      I4 => state(3),
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
\o_i2c_address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      O => \o_i2c_address[3]_i_1_n_0\
    );
\o_i2c_address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \o_i2c_address[4]_i_1_n_0\
    );
\o_i2c_address[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      O => \o_i2c_address[5]_i_1_n_0\
    );
\o_i2c_address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABAAAAAAAAAA"
    )
        port map (
      I0 => \o_i2c_address[6]_i_3_n_0\,
      I1 => \o_i2c_address[6]_i_4_n_0\,
      I2 => \o_i2c_address[6]_i_5_n_0\,
      I3 => \o_i2c_address[6]_i_6_n_0\,
      I4 => \o_i2c_address[6]_i_7_n_0\,
      I5 => \o_i2c_address[6]_i_8_n_0\,
      O => \o_i2c_address[6]_i_1_n_0\
    );
\o_i2c_address[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      O => \o_i2c_address[6]_i_2_n_0\
    );
\o_i2c_address[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => rst,
      I3 => state(2),
      I4 => state(3),
      I5 => \o_i2c_address[6]_i_9_n_0\,
      O => \o_i2c_address[6]_i_3_n_0\
    );
\o_i2c_address[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFFFFFFFFF"
    )
        port map (
      I0 => o_i2c_ena_i_11_n_0,
      I1 => o_i2c_ena_i_10_n_0,
      I2 => start_cnt_reg(17),
      I3 => start_cnt_reg(18),
      I4 => start_cnt_reg(19),
      I5 => start_cnt_reg(20),
      O => \o_i2c_address[6]_i_4_n_0\
    );
\o_i2c_address[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[0]\,
      O => \o_i2c_address[6]_i_5_n_0\
    );
\o_i2c_address[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      O => \o_i2c_address[6]_i_6_n_0\
    );
\o_i2c_address[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => \o_i2c_address[6]_i_9_n_0\,
      O => \o_i2c_address[6]_i_7_n_0\
    );
\o_i2c_address[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => rst,
      O => \o_i2c_address[6]_i_8_n_0\
    );
\o_i2c_address[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFEFEE"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[1]\,
      O => \o_i2c_address[6]_i_9_n_0\
    );
\o_i2c_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_i2c_address[6]_i_1_n_0\,
      D => \o_i2c_address[3]_i_1_n_0\,
      Q => o_i2c_address(0),
      R => '0'
    );
\o_i2c_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_i2c_address[6]_i_1_n_0\,
      D => \o_i2c_address[4]_i_1_n_0\,
      Q => o_i2c_address(1),
      R => '0'
    );
\o_i2c_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_i2c_address[6]_i_1_n_0\,
      D => \o_i2c_address[5]_i_1_n_0\,
      Q => o_i2c_address(2),
      R => '0'
    );
\o_i2c_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \o_i2c_address[6]_i_1_n_0\,
      D => \o_i2c_address[6]_i_2_n_0\,
      Q => o_i2c_address(3),
      R => '0'
    );
\o_i2c_data_wr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => \o_i2c_data_wr[7]_i_2_n_0\,
      I4 => \^o_i2c_data_wr\(0),
      O => \o_i2c_data_wr[3]_i_1_n_0\
    );
\o_i2c_data_wr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006FFFF00060000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => \o_i2c_data_wr[7]_i_2_n_0\,
      I5 => \^o_i2c_data_wr\(1),
      O => \o_i2c_data_wr[6]_i_1_n_0\
    );
\o_i2c_data_wr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(2),
      I3 => \o_i2c_data_wr[7]_i_2_n_0\,
      I4 => \^o_i2c_data_wr\(2),
      O => \o_i2c_data_wr[7]_i_1_n_0\
    );
\o_i2c_data_wr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022A2AAAAAAAA"
    )
        port map (
      I0 => rst,
      I1 => \o_i2c_address[6]_i_6_n_0\,
      I2 => start_cnt_reg(20),
      I3 => \o_i2c_data_wr[7]_i_3_n_0\,
      I4 => \o_i2c_data_wr[7]_i_4_n_0\,
      I5 => \o_i2c_data_wr[7]_i_5_n_0\,
      O => \o_i2c_data_wr[7]_i_2_n_0\
    );
\o_i2c_data_wr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001055FFFF"
    )
        port map (
      I0 => \o_i2c_data_wr[7]_i_6_n_0\,
      I1 => \o_i2c_data_wr[7]_i_7_n_0\,
      I2 => o_i2c_ena_i_15_n_0,
      I3 => start_cnt_reg(14),
      I4 => start_cnt_reg(17),
      I5 => o_i2c_ena_i_9_n_0,
      O => \o_i2c_data_wr[7]_i_3_n_0\
    );
\o_i2c_data_wr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFFFEEEFEFEFE"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \o_i2c_address[6]_i_5_n_0\,
      I3 => state(1),
      I4 => state(3),
      I5 => o_i2c_ena_i_11_n_0,
      O => \o_i2c_data_wr[7]_i_4_n_0\
    );
\o_i2c_data_wr[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \conv_cnt[16]_i_4_n_0\,
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => \conv_cnt[16]_i_3_n_0\,
      O => \o_i2c_data_wr[7]_i_5_n_0\
    );
\o_i2c_data_wr[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start_cnt_reg(16),
      I1 => start_cnt_reg(15),
      O => \o_i2c_data_wr[7]_i_6_n_0\
    );
\o_i2c_data_wr[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start_cnt_reg(13),
      I1 => start_cnt_reg(12),
      O => \o_i2c_data_wr[7]_i_7_n_0\
    );
\o_i2c_data_wr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o_i2c_data_wr[3]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(0),
      R => '0'
    );
\o_i2c_data_wr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o_i2c_data_wr[6]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(1),
      R => '0'
    );
\o_i2c_data_wr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \o_i2c_data_wr[7]_i_1_n_0\,
      Q => \^o_i2c_data_wr\(2),
      R => '0'
    );
o_i2c_ena_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => o_i2c_ena_i_1_n_0
    );
o_i2c_ena_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFEEEEEEEE"
    )
        port map (
      I0 => start_cnt_reg(15),
      I1 => start_cnt_reg(16),
      I2 => start_cnt_reg(12),
      I3 => start_cnt_reg(13),
      I4 => o_i2c_ena_i_15_n_0,
      I5 => start_cnt_reg(14),
      O => o_i2c_ena_i_10_n_0
    );
o_i2c_ena_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7AE"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[0]\,
      O => o_i2c_ena_i_11_n_0
    );
o_i2c_ena_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005504FFFFFFFF"
    )
        port map (
      I0 => i_busy,
      I1 => \conv_cnt_reg_n_0_[12]\,
      I2 => \conv_cnt[16]_i_6_n_0\,
      I3 => \conv_cnt_reg_n_0_[13]\,
      I4 => o_i2c_ena_i_16_n_0,
      I5 => \conv_cnt[16]_i_4_n_0\,
      O => o_i2c_ena_i_12_n_0
    );
o_i2c_ena_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => o_i2c_ena_i_17_n_0,
      O => o_i2c_ena_i_13_n_0
    );
o_i2c_ena_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AA000033000000"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[1]\,
      I1 => i_busy,
      I2 => busy_prev_reg_n_0,
      I3 => \busy_cnt_reg_n_0_[0]\,
      I4 => state(2),
      I5 => state(1),
      O => o_i2c_ena_i_14_n_0
    );
o_i2c_ena_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => start_cnt_reg(7),
      I1 => start_cnt_reg(10),
      I2 => start_cnt_reg(11),
      I3 => start_cnt_reg(9),
      I4 => start_cnt_reg(8),
      O => o_i2c_ena_i_15_n_0
    );
o_i2c_ena_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \conv_cnt_reg_n_0_[16]\,
      I1 => \conv_cnt_reg_n_0_[14]\,
      I2 => \conv_cnt_reg_n_0_[15]\,
      O => o_i2c_ena_i_16_n_0
    );
o_i2c_ena_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B6BBEFEE"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => busy_prev_reg_n_0,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[1]\,
      O => o_i2c_ena_i_17_n_0
    );
o_i2c_ena_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEFFAAAAA200"
    )
        port map (
      I0 => o_i2c_ena_i_3_n_0,
      I1 => o_i2c_ena_i_4_n_0,
      I2 => o_i2c_ena_i_5_n_0,
      I3 => o_i2c_ena_i_6_n_0,
      I4 => o_i2c_ena_i_7_n_0,
      I5 => \^o_i2c_ena\,
      O => o_i2c_ena_i_2_n_0
    );
o_i2c_ena_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => \busy_cnt[1]_i_3_n_0\,
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => o_i2c_ena_i_8_n_0,
      O => o_i2c_ena_i_3_n_0
    );
o_i2c_ena_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5777FFFFFFFF"
    )
        port map (
      I0 => start_cnt_reg(20),
      I1 => o_i2c_ena_i_9_n_0,
      I2 => start_cnt_reg(17),
      I3 => o_i2c_ena_i_10_n_0,
      I4 => o_i2c_ena_i_11_n_0,
      I5 => \o_i2c_address[6]_i_6_n_0\,
      O => o_i2c_ena_i_4_n_0
    );
o_i2c_ena_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF034100"
    )
        port map (
      I0 => \o_i2c_address[6]_i_5_n_0\,
      I1 => \conv_cnt[16]_i_4_n_0\,
      I2 => \busy_cnt[1]_i_3_n_0\,
      I3 => state(3),
      I4 => state(1),
      O => o_i2c_ena_i_5_n_0
    );
o_i2c_ena_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      O => o_i2c_ena_i_6_n_0
    );
o_i2c_ena_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECCCCCCCCCCCCCC"
    )
        port map (
      I0 => o_i2c_ena_i_12_n_0,
      I1 => o_i2c_ena_i_13_n_0,
      I2 => state(0),
      I3 => \o_i2c_address[6]_i_6_n_0\,
      I4 => state(2),
      I5 => \conv_cnt[16]_i_3_n_0\,
      O => o_i2c_ena_i_7_n_0
    );
o_i2c_ena_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0311030003110311"
    )
        port map (
      I0 => o_i2c_ena_i_14_n_0,
      I1 => state(3),
      I2 => \conv_cnt[16]_i_4_n_0\,
      I3 => state(0),
      I4 => state(2),
      I5 => \o_i2c_address[6]_i_5_n_0\,
      O => o_i2c_ena_i_8_n_0
    );
o_i2c_ena_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start_cnt_reg(19),
      I1 => start_cnt_reg(18),
      O => o_i2c_ena_i_9_n_0
    );
o_i2c_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i2c_ena_i_2_n_0,
      Q => \^o_i2c_ena\,
      R => o_i2c_ena_i_1_n_0
    );
o_i2c_rw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABBBBAA8A8888"
    )
        port map (
      I0 => o_i2c_rw_i_2_n_0,
      I1 => \o_i2c_address[6]_i_3_n_0\,
      I2 => o_i2c_rw_i_3_n_0,
      I3 => o_i2c_rw_i_4_n_0,
      I4 => \o_i2c_address[6]_i_8_n_0\,
      I5 => \^o_i2c_rw\,
      O => o_i2c_rw_i_1_n_0
    );
o_i2c_rw_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009AFF9A0000"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[0]\,
      I1 => busy_prev_reg_n_0,
      I2 => i_busy,
      I3 => state(2),
      I4 => state(1),
      I5 => state(3),
      O => o_i2c_rw_i_2_n_0
    );
o_i2c_rw_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBFBFBF"
    )
        port map (
      I0 => o_i2c_rw_i_5_n_0,
      I1 => start_cnt_reg(20),
      I2 => o_i2c_ena_i_9_n_0,
      I3 => start_cnt_reg(17),
      I4 => o_i2c_ena_i_10_n_0,
      I5 => o_i2c_ena_i_11_n_0,
      O => o_i2c_rw_i_3_n_0
    );
o_i2c_rw_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => \conv_cnt[16]_i_3_n_0\,
      O => o_i2c_rw_i_4_n_0
    );
o_i2c_rw_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \o_i2c_address[6]_i_5_n_0\,
      I1 => state(1),
      I2 => state(3),
      O => o_i2c_rw_i_5_n_0
    );
o_i2c_rw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i2c_rw_i_1_n_0,
      Q => \^o_i2c_rw\,
      R => '0'
    );
\rtc_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => \rtc_data[15]_i_2_n_0\,
      I4 => state(3),
      O => \rtc_data[15]_i_1_n_0\
    );
\rtc_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => i_busy,
      I1 => \busy_cnt_reg_n_0_[0]\,
      I2 => \busy_cnt_reg_n_0_[2]\,
      I3 => \busy_cnt_reg_n_0_[1]\,
      O => \rtc_data[15]_i_2_n_0\
    );
\rtc_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(0),
      I1 => state(3),
      O => rtc_data(16)
    );
\rtc_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(1),
      I1 => state(3),
      O => rtc_data(17)
    );
\rtc_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(2),
      I1 => state(3),
      O => rtc_data(18)
    );
\rtc_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(3),
      I1 => state(3),
      O => rtc_data(19)
    );
\rtc_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(4),
      I1 => state(3),
      O => rtc_data(20)
    );
\rtc_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(5),
      I1 => state(3),
      O => rtc_data(21)
    );
\rtc_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(6),
      I1 => state(3),
      O => rtc_data(22)
    );
\rtc_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00000020"
    )
        port map (
      I0 => \rtc_data[23]_i_3_n_0\,
      I1 => \o_i2c_address[6]_i_5_n_0\,
      I2 => \busy_cnt_reg_n_0_[1]\,
      I3 => i_busy,
      I4 => \busy_cnt_reg_n_0_[0]\,
      I5 => state(3),
      O => \rtc_data[23]_i_1_n_0\
    );
\rtc_data[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_data_read(7),
      I1 => state(3),
      O => rtc_data(23)
    );
\rtc_data[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \rtc_data[23]_i_3_n_0\
    );
\rtc_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => \FSM_sequential_state[3]_i_5_n_0\,
      I4 => state(3),
      O => \rtc_data[7]_i_1_n_0\
    );
\rtc_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(16),
      Q => \rtc_data_reg_n_0_[0]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(18),
      Q => \rtc_data_reg_n_0_[10]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(19),
      Q => \rtc_data_reg_n_0_[11]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(20),
      Q => \rtc_data_reg_n_0_[12]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(21),
      Q => \rtc_data_reg_n_0_[13]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(22),
      Q => \rtc_data_reg_n_0_[14]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(23),
      Q => \rtc_data_reg_n_0_[15]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(16),
      Q => \rtc_data_reg_n_0_[16]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(17),
      Q => \rtc_data_reg_n_0_[17]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(18),
      Q => \rtc_data_reg_n_0_[18]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(19),
      Q => \rtc_data_reg_n_0_[19]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(17),
      Q => \rtc_data_reg_n_0_[1]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(20),
      Q => \rtc_data_reg_n_0_[20]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(21),
      Q => \rtc_data_reg_n_0_[21]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(22),
      Q => \rtc_data_reg_n_0_[22]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[23]_i_1_n_0\,
      D => rtc_data(23),
      Q => \rtc_data_reg_n_0_[23]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(18),
      Q => \rtc_data_reg_n_0_[2]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(19),
      Q => \rtc_data_reg_n_0_[3]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(20),
      Q => \rtc_data_reg_n_0_[4]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(21),
      Q => \rtc_data_reg_n_0_[5]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(22),
      Q => \rtc_data_reg_n_0_[6]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[7]_i_1_n_0\,
      D => rtc_data(23),
      Q => \rtc_data_reg_n_0_[7]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(16),
      Q => \rtc_data_reg_n_0_[8]\,
      R => o_i2c_ena_i_1_n_0
    );
\rtc_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rtc_data[15]_i_1_n_0\,
      D => rtc_data(17),
      Q => \rtc_data_reg_n_0_[9]\,
      R => o_i2c_ena_i_1_n_0
    );
\start_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => rst,
      I1 => state(2),
      I2 => state(0),
      I3 => state(3),
      I4 => state(1),
      I5 => \FSM_sequential_state[3]_i_6_n_0\,
      O => \start_cnt[0]_i_1_n_0\
    );
\start_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \start_cnt_reg_n_0_[0]\,
      O => \start_cnt[0]_i_3_n_0\
    );
\start_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[0]_i_2_n_7\,
      Q => \start_cnt_reg_n_0_[0]\,
      R => '0'
    );
\start_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \start_cnt_reg[0]_i_2_n_0\,
      CO(2) => \start_cnt_reg[0]_i_2_n_1\,
      CO(1) => \start_cnt_reg[0]_i_2_n_2\,
      CO(0) => \start_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \start_cnt_reg[0]_i_2_n_4\,
      O(2) => \start_cnt_reg[0]_i_2_n_5\,
      O(1) => \start_cnt_reg[0]_i_2_n_6\,
      O(0) => \start_cnt_reg[0]_i_2_n_7\,
      S(3) => \start_cnt_reg_n_0_[3]\,
      S(2) => \start_cnt_reg_n_0_[2]\,
      S(1) => \start_cnt_reg_n_0_[1]\,
      S(0) => \start_cnt[0]_i_3_n_0\
    );
\start_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[8]_i_1_n_5\,
      Q => start_cnt_reg(10),
      R => '0'
    );
\start_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[8]_i_1_n_4\,
      Q => start_cnt_reg(11),
      R => '0'
    );
\start_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[12]_i_1_n_7\,
      Q => start_cnt_reg(12),
      R => '0'
    );
\start_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_cnt_reg[8]_i_1_n_0\,
      CO(3) => \start_cnt_reg[12]_i_1_n_0\,
      CO(2) => \start_cnt_reg[12]_i_1_n_1\,
      CO(1) => \start_cnt_reg[12]_i_1_n_2\,
      CO(0) => \start_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \start_cnt_reg[12]_i_1_n_4\,
      O(2) => \start_cnt_reg[12]_i_1_n_5\,
      O(1) => \start_cnt_reg[12]_i_1_n_6\,
      O(0) => \start_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => start_cnt_reg(15 downto 12)
    );
\start_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[12]_i_1_n_6\,
      Q => start_cnt_reg(13),
      R => '0'
    );
\start_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[12]_i_1_n_5\,
      Q => start_cnt_reg(14),
      R => '0'
    );
\start_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[12]_i_1_n_4\,
      Q => start_cnt_reg(15),
      R => '0'
    );
\start_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[16]_i_1_n_7\,
      Q => start_cnt_reg(16),
      R => '0'
    );
\start_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_cnt_reg[12]_i_1_n_0\,
      CO(3) => \start_cnt_reg[16]_i_1_n_0\,
      CO(2) => \start_cnt_reg[16]_i_1_n_1\,
      CO(1) => \start_cnt_reg[16]_i_1_n_2\,
      CO(0) => \start_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \start_cnt_reg[16]_i_1_n_4\,
      O(2) => \start_cnt_reg[16]_i_1_n_5\,
      O(1) => \start_cnt_reg[16]_i_1_n_6\,
      O(0) => \start_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => start_cnt_reg(19 downto 16)
    );
\start_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[16]_i_1_n_6\,
      Q => start_cnt_reg(17),
      R => '0'
    );
\start_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[16]_i_1_n_5\,
      Q => start_cnt_reg(18),
      R => '0'
    );
\start_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[16]_i_1_n_4\,
      Q => start_cnt_reg(19),
      R => '0'
    );
\start_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[0]_i_2_n_6\,
      Q => \start_cnt_reg_n_0_[1]\,
      R => '0'
    );
\start_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[20]_i_1_n_7\,
      Q => start_cnt_reg(20),
      R => '0'
    );
\start_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_cnt_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_start_cnt_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_start_cnt_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \start_cnt_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => start_cnt_reg(20)
    );
\start_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[0]_i_2_n_5\,
      Q => \start_cnt_reg_n_0_[2]\,
      R => '0'
    );
\start_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[0]_i_2_n_4\,
      Q => \start_cnt_reg_n_0_[3]\,
      R => '0'
    );
\start_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[4]_i_1_n_7\,
      Q => \start_cnt_reg_n_0_[4]\,
      R => '0'
    );
\start_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_cnt_reg[0]_i_2_n_0\,
      CO(3) => \start_cnt_reg[4]_i_1_n_0\,
      CO(2) => \start_cnt_reg[4]_i_1_n_1\,
      CO(1) => \start_cnt_reg[4]_i_1_n_2\,
      CO(0) => \start_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \start_cnt_reg[4]_i_1_n_4\,
      O(2) => \start_cnt_reg[4]_i_1_n_5\,
      O(1) => \start_cnt_reg[4]_i_1_n_6\,
      O(0) => \start_cnt_reg[4]_i_1_n_7\,
      S(3) => start_cnt_reg(7),
      S(2) => \start_cnt_reg_n_0_[6]\,
      S(1) => \start_cnt_reg_n_0_[5]\,
      S(0) => \start_cnt_reg_n_0_[4]\
    );
\start_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[4]_i_1_n_6\,
      Q => \start_cnt_reg_n_0_[5]\,
      R => '0'
    );
\start_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[4]_i_1_n_5\,
      Q => \start_cnt_reg_n_0_[6]\,
      R => '0'
    );
\start_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[4]_i_1_n_4\,
      Q => start_cnt_reg(7),
      R => '0'
    );
\start_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[8]_i_1_n_7\,
      Q => start_cnt_reg(8),
      R => '0'
    );
\start_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_cnt_reg[4]_i_1_n_0\,
      CO(3) => \start_cnt_reg[8]_i_1_n_0\,
      CO(2) => \start_cnt_reg[8]_i_1_n_1\,
      CO(1) => \start_cnt_reg[8]_i_1_n_2\,
      CO(0) => \start_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \start_cnt_reg[8]_i_1_n_4\,
      O(2) => \start_cnt_reg[8]_i_1_n_5\,
      O(1) => \start_cnt_reg[8]_i_1_n_6\,
      O(0) => \start_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => start_cnt_reg(11 downto 8)
    );
\start_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \start_cnt[0]_i_1_n_0\,
      D => \start_cnt_reg[8]_i_1_n_6\,
      Q => start_cnt_reg(9),
      R => '0'
    );
\temp_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(2),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(10)
    );
\temp_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(3),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(11)
    );
\temp_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(4),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(12)
    );
\temp_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(5),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(13)
    );
\temp_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(6),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(14)
    );
\temp_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040400"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => \temp_data[15]_i_3_n_0\,
      I4 => state(1),
      O => \temp_data[15]_i_1_n_0\
    );
\temp_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(7),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(15)
    );
\temp_data[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \busy_cnt_reg_n_0_[2]\,
      I1 => \busy_cnt_reg_n_0_[1]\,
      I2 => i_busy,
      I3 => \busy_cnt_reg_n_0_[0]\,
      O => \temp_data[15]_i_3_n_0\
    );
\temp_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040400"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => \rtc_data[15]_i_2_n_0\,
      I4 => state(1),
      O => \temp_data[7]_i_1_n_0\
    );
\temp_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(0),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(8)
    );
\temp_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_data_read(1),
      I1 => state(2),
      I2 => state(1),
      O => temp_data(9)
    );
\temp_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(8),
      Q => \temp_data_reg_n_0_[0]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(10),
      Q => \temp_data_reg_n_0_[10]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(11),
      Q => \temp_data_reg_n_0_[11]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(12),
      Q => \temp_data_reg_n_0_[12]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(13),
      Q => \temp_data_reg_n_0_[13]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(14),
      Q => \temp_data_reg_n_0_[14]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(15),
      Q => \temp_data_reg_n_0_[15]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(9),
      Q => \temp_data_reg_n_0_[1]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(10),
      Q => \temp_data_reg_n_0_[2]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(11),
      Q => \temp_data_reg_n_0_[3]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(12),
      Q => \temp_data_reg_n_0_[4]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(13),
      Q => \temp_data_reg_n_0_[5]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(14),
      Q => \temp_data_reg_n_0_[6]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[7]_i_1_n_0\,
      D => temp_data(15),
      Q => \temp_data_reg_n_0_[7]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(8),
      Q => \temp_data_reg_n_0_[8]\,
      R => o_i2c_ena_i_1_n_0
    );
\temp_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp_data[15]_i_1_n_0\,
      D => temp_data(9),
      Q => \temp_data_reg_n_0_[9]\,
      R => o_i2c_ena_i_1_n_0
    );
\who_requested[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCCFFFFCDCC0000"
    )
        port map (
      I0 => i_HK_RTC_request,
      I1 => i_BF_RTC_request,
      I2 => i_RAD_RTC_request,
      I3 => i_HTR_TEMP_request,
      I4 => \who_requested[1]_i_2_n_0\,
      I5 => \who_requested_reg_n_0_[0]\,
      O => \who_requested[0]_i_1_n_0\
    );
\who_requested[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3130FFFF31300000"
    )
        port map (
      I0 => i_HK_RTC_request,
      I1 => i_BF_RTC_request,
      I2 => i_RAD_RTC_request,
      I3 => i_HTR_TEMP_request,
      I4 => \who_requested[1]_i_2_n_0\,
      I5 => \who_requested_reg_n_0_[1]\,
      O => \who_requested[1]_i_1_n_0\
    );
\who_requested[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E00000000000000"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => \who_requested[1]_i_3_n_0\,
      I2 => state(1),
      I3 => \o_i2c_address[3]_i_1_n_0\,
      I4 => rst,
      I5 => state(0),
      O => \who_requested[1]_i_2_n_0\
    );
\who_requested[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => i_HK_ALT_request,
      I1 => i_HK_TEMP_request,
      I2 => i_HTR_TEMP_request,
      O => \who_requested[1]_i_3_n_0\
    );
\who_requested_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \who_requested[0]_i_1_n_0\,
      Q => \who_requested_reg_n_0_[0]\,
      R => '0'
    );
\who_requested_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \who_requested[1]_i_1_n_0\,
      Q => \who_requested_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BF_Test2_I2C_full_sensor_data_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_done_HK : in STD_LOGIC;
    i_TX_done_BF : in STD_LOGIC;
    i_TX_done_RAD : in STD_LOGIC;
    i_TX_done_HTR : in STD_LOGIC;
    i_HK_RTC_request : in STD_LOGIC;
    i_BF_RTC_request : in STD_LOGIC;
    i_RAD_RTC_request : in STD_LOGIC;
    i_HK_ALT_request : in STD_LOGIC;
    i_HK_TEMP_request : in STD_LOGIC;
    i_HTR_TEMP_request : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV_HK : out STD_LOGIC;
    o_TX_DV_BF : out STD_LOGIC;
    o_TX_DV_RAD : out STD_LOGIC;
    o_TX_DV_HTR : out STD_LOGIC;
    o_TX_RTC_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_ALT_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BF_Test2_I2C_full_sensor_data_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BF_Test2_I2C_full_sensor_data_0_0 : entity is "BF_Test2_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BF_Test2_I2C_full_sensor_data_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BF_Test2_I2C_full_sensor_data_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of BF_Test2_I2C_full_sensor_data_0_0 : entity is "I2C_full_sensor_data_fetcher,Vivado 2024.2";
end BF_Test2_I2C_full_sensor_data_0_0;

architecture STRUCTURE of BF_Test2_I2C_full_sensor_data_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_tx_temp_data\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^o_i2c_address\ : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \^o_i2c_data_wr\ : STD_LOGIC_VECTOR ( 6 downto 3 );
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
  o_TX_TEMP_data(31 downto 16) <= \^o_tx_temp_data\(15 downto 0);
  o_TX_TEMP_data(15 downto 0) <= \^o_tx_temp_data\(15 downto 0);
  o_i2c_address(6 downto 5) <= \^o_i2c_address\(6 downto 5);
  o_i2c_address(4) <= \^o_i2c_address\(2);
  o_i2c_address(3 downto 2) <= \^o_i2c_address\(3 downto 2);
  o_i2c_address(1) <= \^o_i2c_address\(2);
  o_i2c_address(0) <= \<const0>\;
  o_i2c_data_wr(7) <= \^o_i2c_data_wr\(5);
  o_i2c_data_wr(6 downto 5) <= \^o_i2c_data_wr\(6 downto 5);
  o_i2c_data_wr(4) <= \<const0>\;
  o_i2c_data_wr(3) <= \^o_i2c_data_wr\(3);
  o_i2c_data_wr(2) <= \<const0>\;
  o_i2c_data_wr(1) <= \^o_i2c_data_wr\(5);
  o_i2c_data_wr(0) <= \^o_i2c_data_wr\(5);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher
     port map (
      clk => clk,
      i_BF_RTC_request => i_BF_RTC_request,
      i_HK_ALT_request => i_HK_ALT_request,
      i_HK_RTC_request => i_HK_RTC_request,
      i_HK_TEMP_request => i_HK_TEMP_request,
      i_HTR_TEMP_request => i_HTR_TEMP_request,
      i_RAD_RTC_request => i_RAD_RTC_request,
      i_TX_done_BF => i_TX_done_BF,
      i_TX_done_HK => i_TX_done_HK,
      i_TX_done_HTR => i_TX_done_HTR,
      i_TX_done_RAD => i_TX_done_RAD,
      i_busy => i_busy,
      i_data_read(7 downto 0) => i_data_read(7 downto 0),
      led2 => led2,
      o_TX_ALT_data(23 downto 0) => o_TX_ALT_data(23 downto 0),
      o_TX_DV_BF => o_TX_DV_BF,
      o_TX_DV_HK => o_TX_DV_HK,
      o_TX_DV_HTR => o_TX_DV_HTR,
      o_TX_DV_RAD => o_TX_DV_RAD,
      o_TX_RTC_data(23 downto 0) => o_TX_RTC_data(23 downto 0),
      o_TX_TEMP_data(15 downto 0) => \^o_tx_temp_data\(15 downto 0),
      o_i2c_address(3 downto 2) => \^o_i2c_address\(6 downto 5),
      o_i2c_address(1) => \^o_i2c_address\(2),
      o_i2c_address(0) => \^o_i2c_address\(3),
      o_i2c_data_wr(2) => \^o_i2c_data_wr\(5),
      o_i2c_data_wr(1) => \^o_i2c_data_wr\(6),
      o_i2c_data_wr(0) => \^o_i2c_data_wr\(3),
      o_i2c_ena => o_i2c_ena,
      o_i2c_rw => o_i2c_rw,
      rst => rst
    );
end STRUCTURE;

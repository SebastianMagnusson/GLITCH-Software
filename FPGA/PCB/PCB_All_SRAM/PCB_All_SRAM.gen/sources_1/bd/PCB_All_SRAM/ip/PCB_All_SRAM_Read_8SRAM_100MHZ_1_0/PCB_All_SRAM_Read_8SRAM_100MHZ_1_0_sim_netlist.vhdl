-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Sep 29 20:01:17 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Read_8SRAM_100MHZ_1_0/PCB_All_SRAM_Read_8SRAM_100MHZ_1_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_Read_8SRAM_100MHZ_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Read_8SRAM_100MHZ_1_0_Read_8SRAM_100MHZ is
  port (
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 46 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_complete : out STD_LOGIC;
    o_BF_drive : out STD_LOGIC;
    addresses_searched : out STD_LOGIC;
    led2 : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    led0 : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    write_complete : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0_Read_8SRAM_100MHZ : entity is "Read_8SRAM_100MHZ";
end PCB_All_SRAM_Read_8SRAM_100MHZ_1_0_Read_8SRAM_100MHZ;

architecture STRUCTURE of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0_Read_8SRAM_100MHZ is
  signal \A[21]_i_1_n_0\ : STD_LOGIC;
  signal A_buf : STD_LOGIC;
  signal \A_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[15]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[16]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[17]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[18]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[19]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[20]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[21]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \A_buf_reg_n_0_[9]\ : STD_LOGIC;
  signal \BF_data_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \BF_data_buf[3]_i_2_n_0\ : STD_LOGIC;
  signal \BF_data_buf[3]_i_3_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_10_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_11_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_12_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_13_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_1_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_2_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_3_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_4_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_5_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_6_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_7_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_8_n_0\ : STD_LOGIC;
  signal \BF_data_buf[46]_i_9_n_0\ : STD_LOGIC;
  signal \BF_data_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \BF_data_buf[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal SRAM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SRAM_cnt : STD_LOGIC;
  signal \SRAM_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \SRAM_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \SRAM_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \SRAM_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \SRAM_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \SRAM_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \SRAM_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \SRAM_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \^we_n\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal addr_cnt : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \addr_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \^addresses_searched\ : STD_LOGIC;
  signal addresses_searched_i_1_n_0 : STD_LOGIC;
  signal bitflip_flag_i_1_n_0 : STD_LOGIC;
  signal bitflip_flag_i_2_n_0 : STD_LOGIC;
  signal bitflip_flag_i_3_n_0 : STD_LOGIC;
  signal bitflip_flag_reg_n_0 : STD_LOGIC;
  signal data_buf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_buf0 : STD_LOGIC;
  signal data_exp1_in : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal \data_exp[15]_i_1_n_0\ : STD_LOGIC;
  signal data_prev : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_prev_0 : STD_LOGIC;
  signal data_rewritten_flag_i_1_n_0 : STD_LOGIC;
  signal data_rewritten_flag_reg_n_0 : STD_LOGIC;
  signal \^decoder\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \decoder[0]_i_1_n_0\ : STD_LOGIC;
  signal \decoder[1]_i_1_n_0\ : STD_LOGIC;
  signal \decoder[2]_i_1_n_0\ : STD_LOGIC;
  signal \decoder_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \decoder_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \decoder_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in28 : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal \^led0\ : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal \^led2\ : STD_LOGIC;
  signal led2_i_10_n_0 : STD_LOGIC;
  signal led2_i_1_n_0 : STD_LOGIC;
  signal led2_i_3_n_0 : STD_LOGIC;
  signal led2_i_4_n_0 : STD_LOGIC;
  signal led2_i_5_n_0 : STD_LOGIC;
  signal led2_i_6_n_0 : STD_LOGIC;
  signal led2_i_7_n_0 : STD_LOGIC;
  signal led2_i_8_n_0 : STD_LOGIC;
  signal led2_i_9_n_0 : STD_LOGIC;
  signal loop_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \loop_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal next_cnt : STD_LOGIC;
  signal \next_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \^o_bf_data\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal \^o_bf_drive\ : STD_LOGIC;
  signal o_BF_drive_i_1_n_0 : STD_LOGIC;
  signal osc_cnt0 : STD_LOGIC;
  signal \osc_cnt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \osc_cnt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \osc_cnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \osc_cnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \osc_cnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \osc_cnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \osc_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \osc_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \osc_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \osc_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \osc_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \osc_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \osc_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \osc_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \osc_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \osc_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^read_complete\ : STD_LOGIC;
  signal read_complete_i_1_n_0 : STD_LOGIC;
  signal read_complete_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state1 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wait_aftre_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftre_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftre_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftre_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftre_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \wait_aftre_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_aftre_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_aftre_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_aftre_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait_aftwr_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_aftwr_count_reg_n_0_[3]\ : STD_LOGIC;
  signal wait_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wait_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_6_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_7_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_8_n_0\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \wait_count_reg_n_0_[7]\ : STD_LOGIC;
  signal write_active : STD_LOGIC;
  signal write_active_1 : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  signal \NLW_osc_cnt0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osc_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osc_cnt0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BF_data_buf[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \BF_data_buf[46]_i_13\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \BF_data_buf[46]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \BF_data_buf[46]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \BF_data_buf[46]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \BF_data_buf[46]_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_9\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100";
  attribute SOFT_HLUTNM of \SRAM_cnt[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \SRAM_cnt[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \SRAM_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \SRAM_cnt[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of WE_n_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \addr_cnt[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \addr_cnt[13]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \addr_cnt[14]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addr_cnt[15]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addr_cnt[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_cnt[17]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addr_cnt[18]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addr_cnt[19]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addr_cnt[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_cnt[21]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addr_cnt[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \addr_cnt[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \addr_cnt[5]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \addr_cnt[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \addr_cnt[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of addresses_searched_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of bitflip_flag_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of data_rewritten_flag_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \decoder_cnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \decoder_cnt[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of led2_i_10 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of led2_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of led2_i_7 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of led2_i_8 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \loop_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \loop_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \loop_cnt[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_cnt[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \next_cnt[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \next_cnt[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of o_BF_drive_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \osc_cnt[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \osc_cnt[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \osc_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \osc_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \osc_cnt[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \osc_cnt[3]_i_4\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \wait_aftre_count[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wait_aftre_count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wait_aftre_count[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wait_aftre_count[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wait_aftwr_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wait_aftwr_count[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wait_aftwr_count[3]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wait_count[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wait_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wait_count[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_count[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_count[7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wait_count[7]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_count[7]_i_6\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_count[7]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair18";
begin
  WE_n <= \^we_n\;
  addresses_searched <= \^addresses_searched\;
  decoder(2 downto 0) <= \^decoder\(2 downto 0);
  led0 <= \^led0\;
  led2 <= \^led2\;
  o_BF_data(46 downto 0) <= \^o_bf_data\(46 downto 0);
  o_BF_drive <= \^o_bf_drive\;
  read_complete <= \^read_complete\;
\A[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \A[21]_i_1_n_0\
    );
\A_buf[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      O => A_buf
    );
\A_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[0]\,
      Q => \A_buf_reg_n_0_[0]\
    );
\A_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[10]\,
      Q => \A_buf_reg_n_0_[10]\
    );
\A_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[11]\,
      Q => \A_buf_reg_n_0_[11]\
    );
\A_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[12]\,
      Q => \A_buf_reg_n_0_[12]\
    );
\A_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[13]\,
      Q => \A_buf_reg_n_0_[13]\
    );
\A_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[14]\,
      Q => \A_buf_reg_n_0_[14]\
    );
\A_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[15]\,
      Q => \A_buf_reg_n_0_[15]\
    );
\A_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[16]\,
      Q => \A_buf_reg_n_0_[16]\
    );
\A_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[17]\,
      Q => \A_buf_reg_n_0_[17]\
    );
\A_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[18]\,
      Q => \A_buf_reg_n_0_[18]\
    );
\A_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[19]\,
      Q => \A_buf_reg_n_0_[19]\
    );
\A_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[1]\,
      Q => \A_buf_reg_n_0_[1]\
    );
\A_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[20]\,
      Q => \A_buf_reg_n_0_[20]\
    );
\A_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[21]\,
      Q => \A_buf_reg_n_0_[21]\
    );
\A_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[2]\,
      Q => \A_buf_reg_n_0_[2]\
    );
\A_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[3]\,
      Q => \A_buf_reg_n_0_[3]\
    );
\A_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[4]\,
      Q => \A_buf_reg_n_0_[4]\
    );
\A_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[5]\,
      Q => \A_buf_reg_n_0_[5]\
    );
\A_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[6]\,
      Q => \A_buf_reg_n_0_[6]\
    );
\A_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[7]\,
      Q => \A_buf_reg_n_0_[7]\
    );
\A_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[8]\,
      Q => \A_buf_reg_n_0_[8]\
    );
\A_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[9]\,
      Q => \A_buf_reg_n_0_[9]\
    );
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[0]\,
      Q => A(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[10]\,
      Q => A(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[11]\,
      Q => A(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[12]\,
      Q => A(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[13]\,
      Q => A(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[14]\,
      Q => A(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[15]\,
      Q => A(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[16]\,
      Q => A(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[17]\,
      Q => A(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[18]\,
      Q => A(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[19]\,
      Q => A(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[1]\,
      Q => A(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[20]\,
      Q => A(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[21]\,
      Q => A(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[2]\,
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[3]\,
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[4]\,
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[5]\,
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[6]\,
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[7]\,
      Q => A(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[8]\,
      Q => A(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt_reg_n_0_[9]\,
      Q => A(9)
    );
\BF_data_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \BF_data_buf[3]_i_2_n_0\,
      I1 => state(3),
      I2 => state(2),
      O => \BF_data_buf[3]_i_1_n_0\
    );
\BF_data_buf[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => reset_n,
      I1 => state(3),
      I2 => state(2),
      I3 => state(0),
      I4 => state(1),
      I5 => \BF_data_buf[3]_i_3_n_0\,
      O => \BF_data_buf[3]_i_2_n_0\
    );
\BF_data_buf[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \loop_cnt_reg_n_0_[0]\,
      I1 => \loop_cnt_reg_n_0_[1]\,
      I2 => \loop_cnt_reg_n_0_[2]\,
      I3 => \loop_cnt_reg_n_0_[3]\,
      O => \BF_data_buf[3]_i_3_n_0\
    );
\BF_data_buf[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888800080"
    )
        port map (
      I0 => \BF_data_buf[46]_i_3_n_0\,
      I1 => \BF_data_buf[46]_i_4_n_0\,
      I2 => \BF_data_buf[46]_i_5_n_0\,
      I3 => data_buf(2),
      I4 => \BF_data_buf[46]_i_6_n_0\,
      I5 => \BF_data_buf[46]_i_7_n_0\,
      O => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf[46]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => data_buf(10),
      I1 => data_buf(8),
      I2 => data_buf(14),
      I3 => data_buf(12),
      O => \BF_data_buf[46]_i_10_n_0\
    );
\BF_data_buf[46]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => data_buf(11),
      I1 => data_buf(13),
      I2 => data_buf(7),
      I3 => data_buf(9),
      I4 => data_buf(3),
      I5 => data_buf(1),
      O => \BF_data_buf[46]_i_11_n_0\
    );
\BF_data_buf[46]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data_buf(9),
      I1 => data_buf(11),
      I2 => data_buf(3),
      I3 => data_buf(7),
      I4 => data_buf(1),
      I5 => \BF_data_buf[46]_i_13_n_0\,
      O => \BF_data_buf[46]_i_12_n_0\
    );
\BF_data_buf[46]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_buf(13),
      I1 => data_buf(15),
      O => \BF_data_buf[46]_i_13_n_0\
    );
\BF_data_buf[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEA000000000000"
    )
        port map (
      I0 => \BF_data_buf[46]_i_7_n_0\,
      I1 => \BF_data_buf[46]_i_6_n_0\,
      I2 => data_buf(2),
      I3 => \BF_data_buf[46]_i_5_n_0\,
      I4 => reset_n,
      I5 => \BF_data_buf[46]_i_8_n_0\,
      O => \BF_data_buf[46]_i_2_n_0\
    );
\BF_data_buf[46]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \BF_data_buf[46]_i_3_n_0\
    );
\BF_data_buf[46]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => bitflip_flag_reg_n_0,
      I1 => data_prev_0,
      I2 => data_rewritten_flag_reg_n_0,
      I3 => reset_n,
      O => \BF_data_buf[46]_i_4_n_0\
    );
\BF_data_buf[46]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data_buf(8),
      I1 => data_buf(10),
      I2 => data_buf(4),
      I3 => data_buf(6),
      I4 => data_buf(0),
      I5 => \BF_data_buf[46]_i_9_n_0\,
      O => \BF_data_buf[46]_i_5_n_0\
    );
\BF_data_buf[46]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => data_buf(5),
      I1 => data_buf(6),
      I2 => data_buf(0),
      I3 => data_buf(4),
      I4 => \BF_data_buf[46]_i_10_n_0\,
      O => \BF_data_buf[46]_i_6_n_0\
    );
\BF_data_buf[46]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACFC"
    )
        port map (
      I0 => \BF_data_buf[46]_i_11_n_0\,
      I1 => \BF_data_buf[46]_i_12_n_0\,
      I2 => data_buf(5),
      I3 => data_buf(15),
      O => \BF_data_buf[46]_i_7_n_0\
    );
\BF_data_buf[46]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => data_rewritten_flag_reg_n_0,
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => bitflip_flag_reg_n_0,
      O => \BF_data_buf[46]_i_8_n_0\
    );
\BF_data_buf[46]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_buf(12),
      I1 => data_buf(14),
      O => \BF_data_buf[46]_i_9_n_0\
    );
\BF_data_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \BF_data_buf[4]_i_2_n_0\,
      I1 => \BF_data_buf[3]_i_2_n_0\,
      I2 => \^o_bf_data\(4),
      O => \BF_data_buf[4]_i_1_n_0\
    );
\BF_data_buf[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F000F000E00"
    )
        port map (
      I0 => \osc_cnt_reg_n_0_[1]\,
      I1 => \osc_cnt_reg_n_0_[0]\,
      I2 => state(3),
      I3 => state(2),
      I4 => \osc_cnt_reg_n_0_[3]\,
      I5 => \osc_cnt_reg_n_0_[2]\,
      O => \BF_data_buf[4]_i_2_n_0\
    );
\BF_data_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[3]_i_2_n_0\,
      D => \osc_cnt_reg_n_0_[0]\,
      Q => \^o_bf_data\(0),
      R => \BF_data_buf[3]_i_1_n_0\
    );
\BF_data_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(1),
      Q => \^o_bf_data\(10),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(2),
      Q => \^o_bf_data\(11),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(3),
      Q => \^o_bf_data\(12),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(4),
      Q => \^o_bf_data\(13),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(5),
      Q => \^o_bf_data\(14),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(6),
      Q => \^o_bf_data\(15),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(7),
      Q => \^o_bf_data\(16),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(8),
      Q => \^o_bf_data\(17),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(9),
      Q => \^o_bf_data\(18),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(10),
      Q => \^o_bf_data\(19),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[3]_i_2_n_0\,
      D => \osc_cnt_reg_n_0_[1]\,
      Q => \^o_bf_data\(1),
      R => \BF_data_buf[3]_i_1_n_0\
    );
\BF_data_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(11),
      Q => \^o_bf_data\(20),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(12),
      Q => \^o_bf_data\(21),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(13),
      Q => \^o_bf_data\(22),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(14),
      Q => \^o_bf_data\(23),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(15),
      Q => \^o_bf_data\(24),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[0]\,
      Q => \^o_bf_data\(25),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[1]\,
      Q => \^o_bf_data\(26),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[2]\,
      Q => \^o_bf_data\(27),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[3]\,
      Q => \^o_bf_data\(28),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[4]\,
      Q => \^o_bf_data\(29),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[3]_i_2_n_0\,
      D => \osc_cnt_reg_n_0_[2]\,
      Q => \^o_bf_data\(2),
      R => \BF_data_buf[3]_i_1_n_0\
    );
\BF_data_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[5]\,
      Q => \^o_bf_data\(30),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[6]\,
      Q => \^o_bf_data\(31),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[7]\,
      Q => \^o_bf_data\(32),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[8]\,
      Q => \^o_bf_data\(33),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[9]\,
      Q => \^o_bf_data\(34),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[10]\,
      Q => \^o_bf_data\(35),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[11]\,
      Q => \^o_bf_data\(36),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[12]\,
      Q => \^o_bf_data\(37),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[13]\,
      Q => \^o_bf_data\(38),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[14]\,
      Q => \^o_bf_data\(39),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[3]_i_2_n_0\,
      D => \osc_cnt_reg_n_0_[3]\,
      Q => \^o_bf_data\(3),
      R => \BF_data_buf[3]_i_1_n_0\
    );
\BF_data_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[15]\,
      Q => \^o_bf_data\(40),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[16]\,
      Q => \^o_bf_data\(41),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[17]\,
      Q => \^o_bf_data\(42),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[18]\,
      Q => \^o_bf_data\(43),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[19]\,
      Q => \^o_bf_data\(44),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[20]\,
      Q => \^o_bf_data\(45),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => \A_buf_reg_n_0_[21]\,
      Q => \^o_bf_data\(46),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \BF_data_buf[4]_i_1_n_0\,
      Q => \^o_bf_data\(4),
      R => '0'
    );
\BF_data_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => SRAM(0),
      Q => \^o_bf_data\(5),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => SRAM(1),
      Q => \^o_bf_data\(6),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => SRAM(2),
      Q => \^o_bf_data\(7),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => SRAM(3),
      Q => \^o_bf_data\(8),
      R => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_2_n_0\,
      D => data_buf(0),
      Q => \^o_bf_data\(9),
      R => \BF_data_buf[46]_i_1_n_0\
    );
CE_n_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => '1',
      Q => CE_n
    );
\DQ_t[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_active,
      O => DQ_t(0)
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => data_prev_0,
      I1 => data_rewritten_flag_reg_n_0,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_3_n_0\,
      I4 => \FSM_sequential_state[0]_i_4_n_0\,
      O => \state__0\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000400040F0400"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_5_n_0\,
      I1 => \wait_aftre_count_reg_n_0_[3]\,
      I2 => state(0),
      I3 => state(1),
      I4 => write_complete,
      I5 => state(3),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \FSM_sequential_state[3]_i_9_n_0\,
      I3 => state(3),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000FF0080"
    )
        port map (
      I0 => \wait_aftre_count_reg_n_0_[2]\,
      I1 => \wait_aftre_count_reg_n_0_[3]\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => state(3),
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \wait_aftre_count_reg_n_0_[0]\,
      I1 => \wait_aftre_count_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFEEEEEE"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[3]_i_7_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => write_active_1,
      I5 => \BF_data_buf[3]_i_3_n_0\,
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A003FF00"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_9_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEAAAEA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => data_prev_0,
      I2 => \BF_data_buf[46]_i_5_n_0\,
      I3 => data_buf(2),
      I4 => \BF_data_buf[46]_i_6_n_0\,
      I5 => \BF_data_buf[46]_i_7_n_0\,
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF88F888"
    )
        port map (
      I0 => write_active_1,
      I1 => \osc_cnt[3]_i_3_n_0\,
      I2 => data_rewritten_flag_reg_n_0,
      I3 => data_prev_0,
      I4 => bitflip_flag_reg_n_0,
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => \BF_data_buf[3]_i_3_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FFEAEA"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \wait_count_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(3),
      I5 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => \wait_aftwr_count_reg_n_0_[2]\,
      I1 => \wait_aftwr_count_reg_n_0_[0]\,
      I2 => \wait_aftwr_count_reg_n_0_[1]\,
      I3 => \wait_aftwr_count_reg_n_0_[3]\,
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[18]\,
      I1 => \addr_cnt_reg_n_0_[19]\,
      I2 => \addr_cnt_reg_n_0_[16]\,
      I3 => \addr_cnt_reg_n_0_[17]\,
      I4 => \addr_cnt_reg_n_0_[21]\,
      I5 => \addr_cnt_reg_n_0_[20]\,
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_15_n_0\,
      I1 => \addr_cnt_reg_n_0_[2]\,
      I2 => \addr_cnt_reg_n_0_[3]\,
      I3 => state(3),
      I4 => \addr_cnt_reg_n_0_[0]\,
      I5 => \addr_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_state[3]_i_12_n_0\
    );
\FSM_sequential_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[6]\,
      I1 => \addr_cnt_reg_n_0_[7]\,
      I2 => \addr_cnt_reg_n_0_[4]\,
      I3 => \addr_cnt_reg_n_0_[5]\,
      I4 => \addr_cnt_reg_n_0_[9]\,
      I5 => \addr_cnt_reg_n_0_[8]\,
      O => \FSM_sequential_state[3]_i_13_n_0\
    );
\FSM_sequential_state[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[12]\,
      I1 => \addr_cnt_reg_n_0_[13]\,
      I2 => \addr_cnt_reg_n_0_[10]\,
      I3 => \addr_cnt_reg_n_0_[11]\,
      I4 => \addr_cnt_reg_n_0_[15]\,
      I5 => \addr_cnt_reg_n_0_[14]\,
      O => \FSM_sequential_state[3]_i_14_n_0\
    );
\FSM_sequential_state[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \FSM_sequential_state[3]_i_15_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEFEEEE"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_5_n_0\,
      I1 => led2_i_3_n_0,
      I2 => state(1),
      I3 => state(0),
      I4 => write_active_1,
      I5 => \FSM_sequential_state[3]_i_7_n_0\,
      O => \state__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \wait_count_reg_n_0_[2]\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => state(0),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \wait_count_reg_n_0_[4]\,
      I1 => \wait_count_reg_n_0_[5]\,
      I2 => \wait_count_reg_n_0_[7]\,
      I3 => \wait_count_reg_n_0_[6]\,
      I4 => \wait_count_reg_n_0_[3]\,
      I5 => \FSM_sequential_state[3]_i_8_n_0\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8800FC00"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_9_n_0\,
      I1 => state(1),
      I2 => \FSM_sequential_state[3]_i_10_n_0\,
      I3 => state(3),
      I4 => state(0),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => write_active_1
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_11_n_0\,
      I1 => \FSM_sequential_state[3]_i_12_n_0\,
      I2 => \FSM_sequential_state[3]_i_13_n_0\,
      I3 => \FSM_sequential_state[3]_i_14_n_0\,
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[2]\,
      I1 => \next_cnt_reg_n_0_[0]\,
      I2 => \next_cnt_reg_n_0_[1]\,
      I3 => \next_cnt_reg_n_0_[3]\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \state__0\(3),
      Q => state(3)
    );
\SRAM_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SRAM_cnt_reg_n_0_[0]\,
      I1 => \SRAM_cnt_reg_n_0_[3]\,
      O => \SRAM_cnt[0]_i_1_n_0\
    );
\SRAM_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \SRAM_cnt_reg_n_0_[1]\,
      I1 => \SRAM_cnt_reg_n_0_[0]\,
      I2 => \SRAM_cnt_reg_n_0_[3]\,
      O => \SRAM_cnt[1]_i_1_n_0\
    );
\SRAM_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \SRAM_cnt_reg_n_0_[2]\,
      I1 => \SRAM_cnt_reg_n_0_[0]\,
      I2 => \SRAM_cnt_reg_n_0_[1]\,
      I3 => \SRAM_cnt_reg_n_0_[3]\,
      O => \SRAM_cnt[2]_i_1_n_0\
    );
\SRAM_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      O => SRAM_cnt
    );
\SRAM_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \SRAM_cnt_reg_n_0_[2]\,
      I1 => \SRAM_cnt_reg_n_0_[1]\,
      I2 => \SRAM_cnt_reg_n_0_[0]\,
      I3 => \SRAM_cnt_reg_n_0_[3]\,
      O => \SRAM_cnt[3]_i_2_n_0\
    );
\SRAM_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \SRAM_cnt[0]_i_1_n_0\,
      Q => \SRAM_cnt_reg_n_0_[0]\
    );
\SRAM_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \SRAM_cnt[1]_i_1_n_0\,
      Q => \SRAM_cnt_reg_n_0_[1]\
    );
\SRAM_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \SRAM_cnt[2]_i_1_n_0\,
      Q => \SRAM_cnt_reg_n_0_[2]\
    );
\SRAM_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \SRAM_cnt[3]_i_2_n_0\,
      Q => \SRAM_cnt_reg_n_0_[3]\
    );
\SRAM_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(0),
      Q => SRAM(0)
    );
\SRAM_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(1),
      Q => SRAM(1)
    );
\SRAM_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(2),
      Q => SRAM(2)
    );
\SRAM_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => '1',
      Q => SRAM(3)
    );
WE_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0005"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => \^we_n\,
      O => WE_n_i_1_n_0
    );
WE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => '1',
      D => WE_n_i_1_n_0,
      PRE => read_complete_i_2_n_0,
      Q => \^we_n\
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => \addr_cnt_reg_n_0_[0]\,
      O => addr_cnt(0)
    );
\addr_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(10),
      O => addr_cnt(10)
    );
\addr_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(11),
      O => addr_cnt(11)
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(12),
      O => addr_cnt(12)
    );
\addr_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(13),
      O => addr_cnt(13)
    );
\addr_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(14),
      O => addr_cnt(14)
    );
\addr_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(15),
      O => addr_cnt(15)
    );
\addr_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(16),
      O => addr_cnt(16)
    );
\addr_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(17),
      O => addr_cnt(17)
    );
\addr_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(18),
      O => addr_cnt(18)
    );
\addr_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(19),
      O => addr_cnt(19)
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(1),
      O => addr_cnt(1)
    );
\addr_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(20),
      O => addr_cnt(20)
    );
\addr_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(21),
      O => addr_cnt(21)
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(2),
      O => addr_cnt(2)
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(3),
      O => addr_cnt(3)
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(4),
      O => addr_cnt(4)
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(5),
      O => addr_cnt(5)
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(6),
      O => addr_cnt(6)
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(7),
      O => addr_cnt(7)
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(8),
      O => addr_cnt(8)
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => in28(9),
      O => addr_cnt(9)
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(0),
      Q => \addr_cnt_reg_n_0_[0]\
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(10),
      Q => \addr_cnt_reg_n_0_[10]\
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(11),
      Q => \addr_cnt_reg_n_0_[11]\
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(12),
      Q => \addr_cnt_reg_n_0_[12]\
    );
\addr_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(13),
      Q => \addr_cnt_reg_n_0_[13]\
    );
\addr_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(14),
      Q => \addr_cnt_reg_n_0_[14]\
    );
\addr_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(15),
      Q => \addr_cnt_reg_n_0_[15]\
    );
\addr_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(16),
      Q => \addr_cnt_reg_n_0_[16]\
    );
\addr_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(17),
      Q => \addr_cnt_reg_n_0_[17]\
    );
\addr_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(18),
      Q => \addr_cnt_reg_n_0_[18]\
    );
\addr_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(19),
      Q => \addr_cnt_reg_n_0_[19]\
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(1),
      Q => \addr_cnt_reg_n_0_[1]\
    );
\addr_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(20),
      Q => \addr_cnt_reg_n_0_[20]\
    );
\addr_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(21),
      Q => \addr_cnt_reg_n_0_[21]\
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(2),
      Q => \addr_cnt_reg_n_0_[2]\
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(3),
      Q => \addr_cnt_reg_n_0_[3]\
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(4),
      Q => \addr_cnt_reg_n_0_[4]\
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(5),
      Q => \addr_cnt_reg_n_0_[5]\
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(6),
      Q => \addr_cnt_reg_n_0_[6]\
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(7),
      Q => \addr_cnt_reg_n_0_[7]\
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(8),
      Q => \addr_cnt_reg_n_0_[8]\
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(9),
      Q => \addr_cnt_reg_n_0_[9]\
    );
addresses_searched_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE1000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      I4 => \^addresses_searched\,
      O => addresses_searched_i_1_n_0
    );
addresses_searched_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => addresses_searched_i_1_n_0,
      Q => \^addresses_searched\
    );
bitflip_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BB00FFFF44FF40"
    )
        port map (
      I0 => data_rewritten_flag_reg_n_0,
      I1 => data_prev_0,
      I2 => \BF_data_buf[46]_i_7_n_0\,
      I3 => bitflip_flag_i_2_n_0,
      I4 => bitflip_flag_i_3_n_0,
      I5 => bitflip_flag_reg_n_0,
      O => bitflip_flag_i_1_n_0
    );
bitflip_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030002000000020"
    )
        port map (
      I0 => \BF_data_buf[46]_i_5_n_0\,
      I1 => bitflip_flag_reg_n_0,
      I2 => data_prev_0,
      I3 => data_rewritten_flag_reg_n_0,
      I4 => data_buf(2),
      I5 => \BF_data_buf[46]_i_6_n_0\,
      O => bitflip_flag_i_2_n_0
    );
bitflip_flag_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \loop_cnt_reg_n_0_[0]\,
      I1 => \loop_cnt_reg_n_0_[3]\,
      I2 => bitflip_flag_reg_n_0,
      I3 => \loop_cnt_reg_n_0_[2]\,
      I4 => \loop_cnt_reg_n_0_[1]\,
      O => bitflip_flag_i_3_n_0
    );
bitflip_flag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => bitflip_flag_i_1_n_0,
      Q => bitflip_flag_reg_n_0
    );
\data_buf[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => reset_n,
      I3 => state(0),
      I4 => state(1),
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
\data_exp[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(1),
      I1 => \A_buf_reg_n_0_[0]\,
      O => data_exp1_in(14)
    );
\data_exp[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      O => \data_exp[15]_i_1_n_0\
    );
\data_exp[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => \A_buf_reg_n_0_[0]\,
      O => data_exp1_in(15)
    );
\data_exp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => data_exp1_in(14),
      Q => DQ_o(0)
    );
\data_exp_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => \data_exp[15]_i_1_n_0\,
      D => data_exp1_in(15),
      PRE => read_complete_i_2_n_0,
      Q => DQ_o(1)
    );
\data_prev[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      O => data_prev_0
    );
\data_prev_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(0),
      Q => data_prev(0)
    );
\data_prev_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(10),
      Q => data_prev(10)
    );
\data_prev_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(11),
      Q => data_prev(11)
    );
\data_prev_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(12),
      Q => data_prev(12)
    );
\data_prev_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(13),
      Q => data_prev(13)
    );
\data_prev_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(14),
      Q => data_prev(14)
    );
\data_prev_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(15),
      Q => data_prev(15)
    );
\data_prev_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(1),
      Q => data_prev(1)
    );
\data_prev_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(2),
      Q => data_prev(2)
    );
\data_prev_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(3),
      Q => data_prev(3)
    );
\data_prev_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(4),
      Q => data_prev(4)
    );
\data_prev_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(5),
      Q => data_prev(5)
    );
\data_prev_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(6),
      Q => data_prev(6)
    );
\data_prev_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(7),
      Q => data_prev(7)
    );
\data_prev_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(8),
      Q => data_prev(8)
    );
\data_prev_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_0,
      CLR => read_complete_i_2_n_0,
      D => data_buf(9),
      Q => data_prev(9)
    );
data_rewritten_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AEAAAA"
    )
        port map (
      I0 => data_rewritten_flag_reg_n_0,
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      O => data_rewritten_flag_i_1_n_0
    );
data_rewritten_flag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => data_rewritten_flag_i_1_n_0,
      Q => data_rewritten_flag_reg_n_0
    );
\decoder[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFE20000002"
    )
        port map (
      I0 => p_1_in(0),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => \^decoder\(0),
      O => \decoder[0]_i_1_n_0\
    );
\decoder[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFE20000002"
    )
        port map (
      I0 => p_1_in(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => \^decoder\(1),
      O => \decoder[1]_i_1_n_0\
    );
\decoder[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFE20000002"
    )
        port map (
      I0 => p_1_in(2),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => \^decoder\(2),
      O => \decoder[2]_i_1_n_0\
    );
\decoder_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SRAM_cnt_reg_n_0_[3]\,
      I1 => p_1_in(0),
      O => \decoder_cnt[0]_i_1_n_0\
    );
\decoder_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => p_1_in(1),
      I1 => p_1_in(0),
      I2 => \SRAM_cnt_reg_n_0_[3]\,
      O => \decoder_cnt[1]_i_1_n_0\
    );
\decoder_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      I3 => \SRAM_cnt_reg_n_0_[3]\,
      O => \decoder_cnt[2]_i_1_n_0\
    );
\decoder_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \decoder_cnt[0]_i_1_n_0\,
      Q => p_1_in(0)
    );
\decoder_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \decoder_cnt[1]_i_1_n_0\,
      Q => p_1_in(1)
    );
\decoder_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => SRAM_cnt,
      CLR => read_complete_i_2_n_0,
      D => \decoder_cnt[2]_i_1_n_0\,
      Q => p_1_in(2)
    );
\decoder_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => \decoder[0]_i_1_n_0\,
      Q => \^decoder\(0)
    );
\decoder_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => \decoder[1]_i_1_n_0\,
      Q => \^decoder\(1)
    );
\decoder_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => \decoder[2]_i_1_n_0\,
      Q => \^decoder\(2)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_prev(15),
      I1 => data_buf(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_prev(14),
      I1 => data_buf(14),
      I2 => data_prev(13),
      I3 => data_buf(13),
      I4 => data_buf(12),
      I5 => data_prev(12),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_prev(11),
      I1 => data_buf(11),
      I2 => data_prev(10),
      I3 => data_buf(10),
      I4 => data_buf(9),
      I5 => data_prev(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_prev(8),
      I1 => data_buf(8),
      I2 => data_prev(7),
      I3 => data_buf(7),
      I4 => data_buf(6),
      I5 => data_prev(6),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_prev(5),
      I1 => data_buf(5),
      I2 => data_prev(4),
      I3 => data_buf(4),
      I4 => data_buf(3),
      I5 => data_prev(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data_prev(2),
      I1 => data_buf(2),
      I2 => data_prev(1),
      I3 => data_buf(1),
      I4 => data_buf(0),
      I5 => data_prev(0),
      O => \i__carry_i_4_n_0\
    );
led0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => \^led0\,
      O => led0_i_1_n_0
    );
led0_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => led0_i_1_n_0,
      Q => \^led0\
    );
led2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => state1,
      I1 => led2_i_3_n_0,
      I2 => \^led2\,
      O => led2_i_1_n_0
    );
led2_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_buf(4),
      I1 => data_buf(6),
      O => led2_i_10_n_0
    );
led2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"111100F0"
    )
        port map (
      I0 => \BF_data_buf[46]_i_6_n_0\,
      I1 => \BF_data_buf[46]_i_12_n_0\,
      I2 => led2_i_4_n_0,
      I3 => \BF_data_buf[46]_i_5_n_0\,
      I4 => data_buf(2),
      O => state1
    );
led2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20F0200020002000"
    )
        port map (
      I0 => led2_i_5_n_0,
      I1 => \BF_data_buf[46]_i_12_n_0\,
      I2 => \BF_data_buf[46]_i_8_n_0\,
      I3 => data_buf(2),
      I4 => led2_i_6_n_0,
      I5 => led2_i_4_n_0,
      O => led2_i_3_n_0
    );
led2_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A00000000000000C"
    )
        port map (
      I0 => led2_i_7_n_0,
      I1 => led2_i_8_n_0,
      I2 => data_buf(15),
      I3 => data_buf(13),
      I4 => data_buf(11),
      I5 => data_buf(9),
      O => led2_i_4_n_0
    );
led2_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => data_buf(10),
      I1 => data_buf(12),
      I2 => data_buf(14),
      I3 => data_buf(5),
      I4 => led2_i_9_n_0,
      O => led2_i_5_n_0
    );
led2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data_buf(8),
      I1 => data_buf(10),
      I2 => data_buf(12),
      I3 => data_buf(14),
      I4 => data_buf(0),
      I5 => led2_i_10_n_0,
      O => led2_i_6_n_0
    );
led2_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => data_buf(7),
      I1 => data_buf(5),
      I2 => data_buf(3),
      I3 => data_buf(1),
      O => led2_i_7_n_0
    );
led2_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data_buf(3),
      I1 => data_buf(1),
      I2 => data_buf(7),
      I3 => data_buf(5),
      O => led2_i_8_n_0
    );
led2_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => data_buf(8),
      I1 => data_buf(6),
      I2 => data_buf(4),
      I3 => data_buf(0),
      O => led2_i_9_n_0
    );
led2_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => led2_i_1_n_0,
      Q => \^led2\
    );
\loop_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => \loop_cnt_reg_n_0_[0]\,
      O => loop_cnt(0)
    );
\loop_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => \loop_cnt_reg_n_0_[1]\,
      I3 => \loop_cnt_reg_n_0_[0]\,
      O => loop_cnt(1)
    );
\loop_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404040"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => \loop_cnt_reg_n_0_[2]\,
      I3 => \loop_cnt_reg_n_0_[0]\,
      I4 => \loop_cnt_reg_n_0_[1]\,
      O => loop_cnt(2)
    );
\loop_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAEAAAEA"
    )
        port map (
      I0 => \loop_cnt[3]_i_3_n_0\,
      I1 => \BF_data_buf[46]_i_5_n_0\,
      I2 => \BF_data_buf[46]_i_8_n_0\,
      I3 => data_buf(2),
      I4 => \BF_data_buf[46]_i_6_n_0\,
      I5 => \BF_data_buf[46]_i_7_n_0\,
      O => \loop_cnt[3]_i_1_n_0\
    );
\loop_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440404040404040"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => \loop_cnt_reg_n_0_[3]\,
      I3 => \loop_cnt_reg_n_0_[2]\,
      I4 => \loop_cnt_reg_n_0_[1]\,
      I5 => \loop_cnt_reg_n_0_[0]\,
      O => loop_cnt(3)
    );
\loop_cnt[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      I4 => \BF_data_buf[3]_i_3_n_0\,
      O => \loop_cnt[3]_i_3_n_0\
    );
\loop_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \loop_cnt[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => loop_cnt(0),
      Q => \loop_cnt_reg_n_0_[0]\
    );
\loop_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \loop_cnt[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => loop_cnt(1),
      Q => \loop_cnt_reg_n_0_[1]\
    );
\loop_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \loop_cnt[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => loop_cnt(2),
      Q => \loop_cnt_reg_n_0_[2]\
    );
\loop_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \loop_cnt[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => loop_cnt(3),
      Q => \loop_cnt_reg_n_0_[3]\
    );
\next_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[2]\,
      I1 => \next_cnt_reg_n_0_[3]\,
      I2 => \next_cnt_reg_n_0_[0]\,
      O => \next_cnt[0]_i_1_n_0\
    );
\next_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[1]\,
      I3 => \next_cnt_reg_n_0_[0]\,
      O => \next_cnt[1]_i_1_n_0\
    );
\next_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[0]\,
      I3 => \next_cnt_reg_n_0_[1]\,
      O => \next_cnt[2]_i_1_n_0\
    );
\next_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => state(3),
      O => next_cnt
    );
\next_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4222"
    )
        port map (
      I0 => \next_cnt_reg_n_0_[3]\,
      I1 => \next_cnt_reg_n_0_[2]\,
      I2 => \next_cnt_reg_n_0_[1]\,
      I3 => \next_cnt_reg_n_0_[0]\,
      O => \next_cnt[3]_i_2_n_0\
    );
\next_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => read_complete_i_2_n_0,
      D => \next_cnt[0]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[0]\
    );
\next_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => read_complete_i_2_n_0,
      D => \next_cnt[1]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[1]\
    );
\next_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => read_complete_i_2_n_0,
      D => \next_cnt[2]_i_1_n_0\,
      Q => \next_cnt_reg_n_0_[2]\
    );
\next_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => next_cnt,
      CLR => read_complete_i_2_n_0,
      D => \next_cnt[3]_i_2_n_0\,
      Q => \next_cnt_reg_n_0_[3]\
    );
o_BF_drive_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBE0002"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => \^o_bf_drive\,
      O => o_BF_drive_i_1_n_0
    );
o_BF_drive_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => o_BF_drive_i_1_n_0,
      Q => \^o_bf_drive\
    );
\osc_cnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \osc_cnt0_inferred__0/i__carry_n_0\,
      CO(2) => \osc_cnt0_inferred__0/i__carry_n_1\,
      CO(1) => \osc_cnt0_inferred__0/i__carry_n_2\,
      CO(0) => \osc_cnt0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_osc_cnt0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\osc_cnt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \osc_cnt0_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_osc_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \osc_cnt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \osc_cnt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_osc_cnt0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1_n_0\,
      S(0) => \i__carry__0_i_2_n_0\
    );
\osc_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \osc_cnt_reg_n_0_[0]\,
      I1 => state(2),
      O => \osc_cnt[0]_i_1_n_0\
    );
\osc_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \osc_cnt_reg_n_0_[1]\,
      I1 => \osc_cnt_reg_n_0_[0]\,
      I2 => state(2),
      O => \osc_cnt[1]_i_1_n_0\
    );
\osc_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \osc_cnt_reg_n_0_[2]\,
      I1 => \osc_cnt_reg_n_0_[0]\,
      I2 => \osc_cnt_reg_n_0_[1]\,
      I3 => state(2),
      O => \osc_cnt[2]_i_1_n_0\
    );
\osc_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => write_active_1,
      I1 => \osc_cnt[3]_i_3_n_0\,
      I2 => \osc_cnt[3]_i_4_n_0\,
      I3 => bitflip_flag_reg_n_0,
      I4 => \osc_cnt0_inferred__0/i__carry__0_n_2\,
      I5 => reset_n,
      O => osc_cnt0
    );
\osc_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \osc_cnt_reg_n_0_[3]\,
      I1 => \osc_cnt_reg_n_0_[2]\,
      I2 => \osc_cnt_reg_n_0_[1]\,
      I3 => \osc_cnt_reg_n_0_[0]\,
      I4 => state(2),
      O => \osc_cnt[3]_i_2_n_0\
    );
\osc_cnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \osc_cnt[3]_i_3_n_0\
    );
\osc_cnt[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => data_rewritten_flag_reg_n_0,
      O => \osc_cnt[3]_i_4_n_0\
    );
\osc_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => osc_cnt0,
      D => \osc_cnt[0]_i_1_n_0\,
      Q => \osc_cnt_reg_n_0_[0]\,
      R => '0'
    );
\osc_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => osc_cnt0,
      D => \osc_cnt[1]_i_1_n_0\,
      Q => \osc_cnt_reg_n_0_[1]\,
      R => '0'
    );
\osc_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => osc_cnt0,
      D => \osc_cnt[2]_i_1_n_0\,
      Q => \osc_cnt_reg_n_0_[2]\,
      R => '0'
    );
\osc_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => osc_cnt0,
      D => \osc_cnt[3]_i_2_n_0\,
      Q => \osc_cnt_reg_n_0_[3]\,
      R => '0'
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => \addr_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in28(4 downto 1),
      S(3) => \addr_cnt_reg_n_0_[4]\,
      S(2) => \addr_cnt_reg_n_0_[3]\,
      S(1) => \addr_cnt_reg_n_0_[2]\,
      S(0) => \addr_cnt_reg_n_0_[1]\
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in28(8 downto 5),
      S(3) => \addr_cnt_reg_n_0_[8]\,
      S(2) => \addr_cnt_reg_n_0_[7]\,
      S(1) => \addr_cnt_reg_n_0_[6]\,
      S(0) => \addr_cnt_reg_n_0_[5]\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in28(12 downto 9),
      S(3) => \addr_cnt_reg_n_0_[12]\,
      S(2) => \addr_cnt_reg_n_0_[11]\,
      S(1) => \addr_cnt_reg_n_0_[10]\,
      S(0) => \addr_cnt_reg_n_0_[9]\
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in28(16 downto 13),
      S(3) => \addr_cnt_reg_n_0_[16]\,
      S(2) => \addr_cnt_reg_n_0_[15]\,
      S(1) => \addr_cnt_reg_n_0_[14]\,
      S(0) => \addr_cnt_reg_n_0_[13]\
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in28(20 downto 17),
      S(3) => \addr_cnt_reg_n_0_[20]\,
      S(2) => \addr_cnt_reg_n_0_[19]\,
      S(1) => \addr_cnt_reg_n_0_[18]\,
      S(0) => \addr_cnt_reg_n_0_[17]\
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(3 downto 0) => \NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => in28(21),
      S(3 downto 1) => B"000",
      S(0) => \addr_cnt_reg_n_0_[21]\
    );
read_complete_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFE02000000"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => \SRAM_cnt_reg_n_0_[3]\,
      I5 => \^read_complete\,
      O => read_complete_i_1_n_0
    );
read_complete_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => read_complete_i_2_n_0
    );
read_complete_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => read_complete_i_1_n_0,
      Q => \^read_complete\
    );
\wait_aftre_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1500"
    )
        port map (
      I0 => \wait_aftre_count_reg_n_0_[0]\,
      I1 => \wait_aftre_count_reg_n_0_[2]\,
      I2 => \wait_aftre_count_reg_n_0_[3]\,
      I3 => state(1),
      O => \wait_aftre_count[0]_i_1_n_0\
    );
\wait_aftre_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02200AA0"
    )
        port map (
      I0 => state(1),
      I1 => \wait_aftre_count_reg_n_0_[3]\,
      I2 => \wait_aftre_count_reg_n_0_[1]\,
      I3 => \wait_aftre_count_reg_n_0_[0]\,
      I4 => \wait_aftre_count_reg_n_0_[2]\,
      O => \wait_aftre_count[1]_i_1_n_0\
    );
\wait_aftre_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => state(1),
      I1 => \wait_aftre_count_reg_n_0_[3]\,
      I2 => \wait_aftre_count_reg_n_0_[1]\,
      I3 => \wait_aftre_count_reg_n_0_[0]\,
      I4 => \wait_aftre_count_reg_n_0_[2]\,
      O => \wait_aftre_count[2]_i_1_n_0\
    );
\wait_aftre_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      O => \wait_aftre_count[3]_i_1_n_0\
    );
\wait_aftre_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000888"
    )
        port map (
      I0 => state(1),
      I1 => \wait_aftre_count_reg_n_0_[3]\,
      I2 => \wait_aftre_count_reg_n_0_[1]\,
      I3 => \wait_aftre_count_reg_n_0_[0]\,
      I4 => \wait_aftre_count_reg_n_0_[2]\,
      O => \wait_aftre_count[3]_i_2_n_0\
    );
\wait_aftre_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftre_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftre_count[0]_i_1_n_0\,
      Q => \wait_aftre_count_reg_n_0_[0]\
    );
\wait_aftre_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftre_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftre_count[1]_i_1_n_0\,
      Q => \wait_aftre_count_reg_n_0_[1]\
    );
\wait_aftre_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftre_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftre_count[2]_i_1_n_0\,
      Q => \wait_aftre_count_reg_n_0_[2]\
    );
\wait_aftre_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftre_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftre_count[3]_i_2_n_0\,
      Q => \wait_aftre_count_reg_n_0_[3]\
    );
\wait_aftwr_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \wait_aftwr_count_reg_n_0_[0]\,
      I1 => state(3),
      I2 => \wait_aftwr_count_reg_n_0_[3]\,
      I3 => \wait_aftwr_count_reg_n_0_[2]\,
      O => \wait_aftwr_count[0]_i_1_n_0\
    );
\wait_aftwr_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02200AA0"
    )
        port map (
      I0 => state(3),
      I1 => \wait_aftwr_count_reg_n_0_[3]\,
      I2 => \wait_aftwr_count_reg_n_0_[1]\,
      I3 => \wait_aftwr_count_reg_n_0_[0]\,
      I4 => \wait_aftwr_count_reg_n_0_[2]\,
      O => \wait_aftwr_count[1]_i_1_n_0\
    );
\wait_aftwr_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => state(3),
      I1 => \wait_aftwr_count_reg_n_0_[3]\,
      I2 => \wait_aftwr_count_reg_n_0_[1]\,
      I3 => \wait_aftwr_count_reg_n_0_[0]\,
      I4 => \wait_aftwr_count_reg_n_0_[2]\,
      O => \wait_aftwr_count[2]_i_1_n_0\
    );
\wait_aftwr_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \wait_aftwr_count[3]_i_1_n_0\
    );
\wait_aftwr_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000888"
    )
        port map (
      I0 => state(3),
      I1 => \wait_aftwr_count_reg_n_0_[3]\,
      I2 => \wait_aftwr_count_reg_n_0_[1]\,
      I3 => \wait_aftwr_count_reg_n_0_[0]\,
      I4 => \wait_aftwr_count_reg_n_0_[2]\,
      O => \wait_aftwr_count[3]_i_2_n_0\
    );
\wait_aftwr_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftwr_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftwr_count[0]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[0]\
    );
\wait_aftwr_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftwr_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftwr_count[1]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[1]\
    );
\wait_aftwr_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftwr_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftwr_count[2]_i_1_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[2]\
    );
\wait_aftwr_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_aftwr_count[3]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_aftwr_count[3]_i_2_n_0\,
      Q => \wait_aftwr_count_reg_n_0_[3]\
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010F01"
    )
        port map (
      I0 => \wait_count[7]_i_3_n_0\,
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      I2 => \wait_count_reg_n_0_[0]\,
      I3 => state(0),
      I4 => state(2),
      O => wait_count(0)
    );
\wait_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[1]\,
      I2 => \wait_count_reg_n_0_[0]\,
      O => wait_count(1)
    );
\wait_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[2]\,
      I2 => \wait_count_reg_n_0_[0]\,
      I3 => \wait_count_reg_n_0_[1]\,
      O => wait_count(2)
    );
\wait_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[3]\,
      I2 => \wait_count_reg_n_0_[0]\,
      I3 => \wait_count_reg_n_0_[2]\,
      I4 => \wait_count_reg_n_0_[1]\,
      O => wait_count(3)
    );
\wait_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[4]\,
      I2 => \wait_count_reg_n_0_[1]\,
      I3 => \wait_count_reg_n_0_[2]\,
      I4 => \wait_count_reg_n_0_[0]\,
      I5 => \wait_count_reg_n_0_[3]\,
      O => wait_count(4)
    );
\wait_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[5]\,
      I2 => \wait_count[7]_i_6_n_0\,
      I3 => \wait_count_reg_n_0_[4]\,
      O => wait_count(5)
    );
\wait_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[6]\,
      I2 => \wait_count_reg_n_0_[5]\,
      I3 => \wait_count_reg_n_0_[4]\,
      I4 => \wait_count[7]_i_6_n_0\,
      O => wait_count(6)
    );
\wait_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F00000040F"
    )
        port map (
      I0 => \wait_count[7]_i_3_n_0\,
      I1 => \wait_count[7]_i_4_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      I5 => state(2),
      O => \wait_count[7]_i_1_n_0\
    );
\wait_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \wait_count[7]_i_5_n_0\,
      I1 => \wait_count_reg_n_0_[7]\,
      I2 => \wait_count_reg_n_0_[4]\,
      I3 => \wait_count_reg_n_0_[5]\,
      I4 => \wait_count_reg_n_0_[6]\,
      I5 => \wait_count[7]_i_6_n_0\,
      O => wait_count(7)
    );
\wait_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \wait_count_reg_n_0_[3]\,
      I1 => \wait_count_reg_n_0_[6]\,
      I2 => \wait_count_reg_n_0_[7]\,
      I3 => \wait_count_reg_n_0_[5]\,
      I4 => \wait_count_reg_n_0_[4]\,
      O => \wait_count[7]_i_3_n_0\
    );
\wait_count[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \wait_count_reg_n_0_[2]\,
      O => \wait_count[7]_i_4_n_0\
    );
\wait_count[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F00FFFF1F001F00"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => \wait_count_reg_n_0_[0]\,
      I2 => \wait_count_reg_n_0_[2]\,
      I3 => \wait_count[7]_i_7_n_0\,
      I4 => \BF_data_buf[46]_i_3_n_0\,
      I5 => state(0),
      O => \wait_count[7]_i_5_n_0\
    );
\wait_count[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wait_count_reg_n_0_[1]\,
      I1 => \wait_count_reg_n_0_[2]\,
      I2 => \wait_count_reg_n_0_[0]\,
      I3 => \wait_count_reg_n_0_[3]\,
      O => \wait_count[7]_i_6_n_0\
    );
\wait_count[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \wait_count_reg_n_0_[6]\,
      I1 => \wait_count_reg_n_0_[7]\,
      I2 => state(0),
      I3 => state(3),
      I4 => \wait_count_reg_n_0_[3]\,
      I5 => \wait_count[7]_i_8_n_0\,
      O => \wait_count[7]_i_7_n_0\
    );
\wait_count[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_count_reg_n_0_[4]\,
      I1 => \wait_count_reg_n_0_[5]\,
      O => \wait_count[7]_i_8_n_0\
    );
\wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(0),
      Q => \wait_count_reg_n_0_[0]\
    );
\wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(1),
      Q => \wait_count_reg_n_0_[1]\
    );
\wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(2),
      Q => \wait_count_reg_n_0_[2]\
    );
\wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(3),
      Q => \wait_count_reg_n_0_[3]\
    );
\wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(4),
      Q => \wait_count_reg_n_0_[4]\
    );
\wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(5),
      Q => \wait_count_reg_n_0_[5]\
    );
\wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(6),
      Q => \wait_count_reg_n_0_[6]\
    );
\wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => wait_count(7),
      Q => \wait_count_reg_n_0_[7]\
    );
write_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFA0020"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => write_active,
      O => write_active_i_1_n_0
    );
write_active_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => write_active_i_1_n_0,
      Q => write_active
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    read_complete : out STD_LOGIC;
    write_complete : in STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_drive : out STD_LOGIC;
    addresses_searched : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 : entity is "PCB_All_SRAM_Read_8SRAM_100MHZ_1_0,Read_8SRAM_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 : entity is "Read_8SRAM_100MHZ,Vivado 2024.2";
end PCB_All_SRAM_Read_8SRAM_100MHZ_1_0;

architecture STRUCTURE of PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dq_o\ : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal \^dq_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DQ_o(15 downto 14) <= \^dq_o\(13 downto 12);
  DQ_o(13 downto 12) <= \^dq_o\(13 downto 12);
  DQ_o(11 downto 10) <= \^dq_o\(13 downto 12);
  DQ_o(9 downto 8) <= \^dq_o\(13 downto 12);
  DQ_o(7 downto 6) <= \^dq_o\(13 downto 12);
  DQ_o(5 downto 4) <= \^dq_o\(13 downto 12);
  DQ_o(3 downto 2) <= \^dq_o\(13 downto 12);
  DQ_o(1 downto 0) <= \^dq_o\(13 downto 12);
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
  led1 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.PCB_All_SRAM_Read_8SRAM_100MHZ_1_0_Read_8SRAM_100MHZ
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(1 downto 0) => \^dq_o\(13 downto 12),
      DQ_t(0) => \^dq_t\(0),
      WE_n => WE_n,
      addresses_searched => addresses_searched,
      decoder(2 downto 0) => decoder(2 downto 0),
      led0 => led0,
      led2 => led2,
      o_BF_data(46 downto 0) => o_BF_data(46 downto 0),
      o_BF_drive => o_BF_drive,
      read_complete => read_complete,
      reset_n => reset_n,
      sysclk => sysclk,
      write_complete => write_complete
    );
end STRUCTURE;

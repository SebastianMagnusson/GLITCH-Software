-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Sep 25 14:38:57 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_Read1_100MHZ_0_0/testwith1speed_Read1_100MHZ_0_0_sim_netlist.vhdl
-- Design      : testwith1speed_Read1_100MHZ_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ is
  port (
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    o_BF_data : out STD_LOGIC_VECTOR ( 42 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    addresses_searched : out STD_LOGIC;
    o_BF_drive : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    sysclk : in STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    write_complete : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ : entity is "Read1_100MHZ";
end testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ;

architecture STRUCTURE of testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ is
  signal \A[21]_i_1_n_0\ : STD_LOGIC;
  signal A_buf : STD_LOGIC;
  signal \BF_data_buf[46]_i_1_n_0\ : STD_LOGIC;
  signal \BF_data_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \BF_data_buf[4]_i_2_n_0\ : STD_LOGIC;
  signal \^dq_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \^we_n\ : STD_LOGIC;
  signal WE_n_i_1_n_0 : STD_LOGIC;
  signal addr_cnt : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[21]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \^addresses_searched\ : STD_LOGIC;
  signal bitflip_flag_i_1_n_0 : STD_LOGIC;
  signal bitflip_flag_i_2_n_0 : STD_LOGIC;
  signal bitflip_flag_i_3_n_0 : STD_LOGIC;
  signal bitflip_flag_reg_n_0 : STD_LOGIC;
  signal data_buf : STD_LOGIC;
  signal data_buf0 : STD_LOGIC;
  signal data_exp : STD_LOGIC;
  signal data_prev : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_prev_1 : STD_LOGIC;
  signal data_rewritten_flag_i_1_n_0 : STD_LOGIC;
  signal data_rewritten_flag_reg_n_0 : STD_LOGIC;
  signal in17 : STD_LOGIC_VECTOR ( 46 downto 9 );
  signal in21 : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal in5 : STD_LOGIC;
  signal \^led0\ : STD_LOGIC;
  signal led0_i_1_n_0 : STD_LOGIC;
  signal \^led1\ : STD_LOGIC;
  signal led1_i_1_n_0 : STD_LOGIC;
  signal loop_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \loop_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \loop_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \^o_bf_drive\ : STD_LOGIC;
  signal o_BF_drive_i_1_n_0 : STD_LOGIC;
  signal \osc_cnt0__6\ : STD_LOGIC;
  signal \osc_cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \osc_cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \osc_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \osc_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal osc_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal osc_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal osc_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal osc_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal osc_cnt0_carry_n_0 : STD_LOGIC;
  signal osc_cnt0_carry_n_1 : STD_LOGIC;
  signal osc_cnt0_carry_n_2 : STD_LOGIC;
  signal osc_cnt0_carry_n_3 : STD_LOGIC;
  signal osc_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal read_complete_i_1_n_0 : STD_LOGIC;
  signal read_complete_i_2_n_0 : STD_LOGIC;
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal wait_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \wait_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal write_active : STD_LOGIC;
  signal write_active_0 : STD_LOGIC;
  signal write_active_i_1_n_0 : STD_LOGIC;
  signal NLW_osc_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_osc_cnt0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_osc_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00100000000,write_fix_start:00001000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000";
  attribute SOFT_HLUTNM of \addr_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr_cnt[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_cnt[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_cnt[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_cnt[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_cnt[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_cnt[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_cnt[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_cnt[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr_cnt[18]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_cnt[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr_cnt[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_cnt[21]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr_cnt[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addr_cnt[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \addr_cnt[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \addr_cnt[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr_cnt[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_cnt[9]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of bitflip_flag_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of data_rewritten_flag_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of led1_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \loop_cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \loop_cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \loop_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \loop_cnt[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_BF_drive_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \osc_cnt[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \osc_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \osc_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \osc_cnt[3]_i_2\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of read_complete_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wait_count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wait_count[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_count[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of write_active_i_1 : label is "soft_lutpair9";
begin
  DQ_o(15 downto 0) <= \^dq_o\(15 downto 0);
  WE_n <= \^we_n\;
  addresses_searched <= \^addresses_searched\;
  led0 <= \^led0\;
  led1 <= \^led1\;
  o_BF_drive <= \^o_bf_drive\;
\A[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_active_0,
      I1 => A_buf,
      O => \A[21]_i_1_n_0\
    );
\A_buf_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(0),
      Q => in17(25)
    );
\A_buf_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(10),
      Q => in17(35)
    );
\A_buf_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(11),
      Q => in17(36)
    );
\A_buf_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(12),
      Q => in17(37)
    );
\A_buf_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(13),
      Q => in17(38)
    );
\A_buf_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(14),
      Q => in17(39)
    );
\A_buf_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(15),
      Q => in17(40)
    );
\A_buf_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(16),
      Q => in17(41)
    );
\A_buf_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(17),
      Q => in17(42)
    );
\A_buf_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(18),
      Q => in17(43)
    );
\A_buf_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(19),
      Q => in17(44)
    );
\A_buf_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(1),
      Q => in17(26)
    );
\A_buf_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(20),
      Q => in17(45)
    );
\A_buf_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(21),
      Q => in17(46)
    );
\A_buf_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(2),
      Q => in17(27)
    );
\A_buf_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(3),
      Q => in17(28)
    );
\A_buf_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(4),
      Q => in17(29)
    );
\A_buf_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(5),
      Q => in17(30)
    );
\A_buf_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(6),
      Q => in17(31)
    );
\A_buf_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(7),
      Q => in17(32)
    );
\A_buf_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(8),
      Q => in17(33)
    );
\A_buf_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => A_buf,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(9),
      Q => in17(34)
    );
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(0),
      Q => A(0)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(10),
      Q => A(10)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(11),
      Q => A(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(12),
      Q => A(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(13),
      Q => A(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(14),
      Q => A(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(15),
      Q => A(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(16),
      Q => A(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(17),
      Q => A(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(18),
      Q => A(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(19),
      Q => A(19)
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(1),
      Q => A(1)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(20),
      Q => A(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(21),
      Q => A(21)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(2),
      Q => A(2)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(3),
      Q => A(3)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(4),
      Q => A(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(5),
      Q => A(5)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(6),
      Q => A(6)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(7),
      Q => A(7)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(8),
      Q => A(8)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => addr_cnt(9),
      Q => A(9)
    );
\BF_data_buf[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => bitflip_flag_reg_n_0,
      I1 => in5,
      I2 => data_prev_1,
      I3 => data_rewritten_flag_reg_n_0,
      I4 => reset_n,
      O => \BF_data_buf[46]_i_1_n_0\
    );
\BF_data_buf[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000000000000"
    )
        port map (
      I0 => \loop_cnt_reg_n_0_[2]\,
      I1 => \loop_cnt_reg_n_0_[1]\,
      I2 => \loop_cnt_reg_n_0_[0]\,
      I3 => \loop_cnt_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => reset_n,
      O => \BF_data_buf[4]_i_1_n_0\
    );
\BF_data_buf[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => osc_cnt_reg(3),
      I1 => osc_cnt_reg(2),
      I2 => osc_cnt_reg(1),
      I3 => osc_cnt_reg(0),
      O => \BF_data_buf[4]_i_2_n_0\
    );
\BF_data_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[4]_i_1_n_0\,
      D => osc_cnt_reg(0),
      Q => o_BF_data(0),
      R => '0'
    );
\BF_data_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(10),
      Q => o_BF_data(6),
      R => '0'
    );
\BF_data_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(11),
      Q => o_BF_data(7),
      R => '0'
    );
\BF_data_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(12),
      Q => o_BF_data(8),
      R => '0'
    );
\BF_data_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(13),
      Q => o_BF_data(9),
      R => '0'
    );
\BF_data_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(14),
      Q => o_BF_data(10),
      R => '0'
    );
\BF_data_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(15),
      Q => o_BF_data(11),
      R => '0'
    );
\BF_data_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(16),
      Q => o_BF_data(12),
      R => '0'
    );
\BF_data_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(17),
      Q => o_BF_data(13),
      R => '0'
    );
\BF_data_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(18),
      Q => o_BF_data(14),
      R => '0'
    );
\BF_data_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(19),
      Q => o_BF_data(15),
      R => '0'
    );
\BF_data_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[4]_i_1_n_0\,
      D => osc_cnt_reg(1),
      Q => o_BF_data(1),
      R => '0'
    );
\BF_data_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(20),
      Q => o_BF_data(16),
      R => '0'
    );
\BF_data_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(21),
      Q => o_BF_data(17),
      R => '0'
    );
\BF_data_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(22),
      Q => o_BF_data(18),
      R => '0'
    );
\BF_data_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(23),
      Q => o_BF_data(19),
      R => '0'
    );
\BF_data_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(24),
      Q => o_BF_data(20),
      R => '0'
    );
\BF_data_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(25),
      Q => o_BF_data(21),
      R => '0'
    );
\BF_data_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(26),
      Q => o_BF_data(22),
      R => '0'
    );
\BF_data_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(27),
      Q => o_BF_data(23),
      R => '0'
    );
\BF_data_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(28),
      Q => o_BF_data(24),
      R => '0'
    );
\BF_data_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(29),
      Q => o_BF_data(25),
      R => '0'
    );
\BF_data_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[4]_i_1_n_0\,
      D => osc_cnt_reg(2),
      Q => o_BF_data(2),
      R => '0'
    );
\BF_data_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(30),
      Q => o_BF_data(26),
      R => '0'
    );
\BF_data_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(31),
      Q => o_BF_data(27),
      R => '0'
    );
\BF_data_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(32),
      Q => o_BF_data(28),
      R => '0'
    );
\BF_data_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(33),
      Q => o_BF_data(29),
      R => '0'
    );
\BF_data_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(34),
      Q => o_BF_data(30),
      R => '0'
    );
\BF_data_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(35),
      Q => o_BF_data(31),
      R => '0'
    );
\BF_data_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(36),
      Q => o_BF_data(32),
      R => '0'
    );
\BF_data_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(37),
      Q => o_BF_data(33),
      R => '0'
    );
\BF_data_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(38),
      Q => o_BF_data(34),
      R => '0'
    );
\BF_data_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(39),
      Q => o_BF_data(35),
      R => '0'
    );
\BF_data_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[4]_i_1_n_0\,
      D => osc_cnt_reg(3),
      Q => o_BF_data(3),
      R => '0'
    );
\BF_data_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(40),
      Q => o_BF_data(36),
      R => '0'
    );
\BF_data_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(41),
      Q => o_BF_data(37),
      R => '0'
    );
\BF_data_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(42),
      Q => o_BF_data(38),
      R => '0'
    );
\BF_data_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(43),
      Q => o_BF_data(39),
      R => '0'
    );
\BF_data_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(44),
      Q => o_BF_data(40),
      R => '0'
    );
\BF_data_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(45),
      Q => o_BF_data(41),
      R => '0'
    );
\BF_data_buf_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(46),
      Q => o_BF_data(42),
      R => '0'
    );
\BF_data_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[4]_i_1_n_0\,
      D => \BF_data_buf[4]_i_2_n_0\,
      Q => o_BF_data(4),
      R => '0'
    );
\BF_data_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \BF_data_buf[46]_i_1_n_0\,
      D => in17(9),
      Q => o_BF_data(5),
      R => '0'
    );
CE_n_reg: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => \A[21]_i_1_n_0\,
      D => '0',
      PRE => read_complete_i_2_n_0,
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
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \FSM_onehot_state[10]_i_7_n_0\,
      I1 => data_exp,
      I2 => write_complete,
      I3 => A_buf,
      I4 => \FSM_onehot_state[0]_i_2_n_0\,
      I5 => \FSM_onehot_state[0]_i_3_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55570000"
    )
        port map (
      I0 => \loop_cnt_reg_n_0_[3]\,
      I1 => \loop_cnt_reg_n_0_[0]\,
      I2 => \loop_cnt_reg_n_0_[1]\,
      I3 => \loop_cnt_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4FFF4FFF4"
    )
        port map (
      I0 => \FSM_onehot_state[10]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[10]_i_4_n_0\,
      I3 => \FSM_onehot_state[10]_i_5_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      I5 => \FSM_onehot_state[10]_i_6_n_0\,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt(15),
      I1 => addr_cnt(1),
      I2 => addr_cnt(9),
      I3 => addr_cnt(6),
      O => \FSM_onehot_state[10]_i_10_n_0\
    );
\FSM_onehot_state[10]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt(19),
      I1 => addr_cnt(5),
      I2 => addr_cnt(20),
      I3 => addr_cnt(8),
      O => \FSM_onehot_state[10]_i_11_n_0\
    );
\FSM_onehot_state[10]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt(10),
      I1 => addr_cnt(2),
      I2 => addr_cnt(18),
      I3 => addr_cnt(0),
      O => \FSM_onehot_state[10]_i_12_n_0\
    );
\FSM_onehot_state[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => \FSM_onehot_state[10]_i_7_n_0\,
      O => \FSM_onehot_state[10]_i_2_n_0\
    );
\FSM_onehot_state[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => wait_count(2),
      I1 => wait_count(1),
      I2 => \wait_count[7]_i_3_n_0\,
      O => \FSM_onehot_state[10]_i_3_n_0\
    );
\FSM_onehot_state[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => data_exp,
      I2 => A_buf,
      O => \FSM_onehot_state[10]_i_4_n_0\
    );
\FSM_onehot_state[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => write_active_0,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => data_buf,
      I5 => data_prev_1,
      O => \FSM_onehot_state[10]_i_5_n_0\
    );
\FSM_onehot_state[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \wait_count[7]_i_3_n_0\,
      I1 => wait_count(0),
      I2 => wait_count(1),
      I3 => wait_count(2),
      O => \FSM_onehot_state[10]_i_6_n_0\
    );
\FSM_onehot_state[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state[10]_i_8_n_0\,
      I1 => \FSM_onehot_state[10]_i_9_n_0\,
      I2 => \FSM_onehot_state[10]_i_10_n_0\,
      I3 => \FSM_onehot_state[10]_i_11_n_0\,
      I4 => \FSM_onehot_state[10]_i_12_n_0\,
      O => \FSM_onehot_state[10]_i_7_n_0\
    );
\FSM_onehot_state[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => addr_cnt(17),
      I1 => addr_cnt(13),
      I2 => addr_cnt(11),
      I3 => addr_cnt(16),
      I4 => addr_cnt(12),
      I5 => addr_cnt(14),
      O => \FSM_onehot_state[10]_i_8_n_0\
    );
\FSM_onehot_state[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => addr_cnt(21),
      I1 => addr_cnt(3),
      I2 => addr_cnt(7),
      I3 => addr_cnt(4),
      O => \FSM_onehot_state[10]_i_9_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_buf,
      I1 => write_complete,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_prev_1,
      I1 => data_rewritten_flag_reg_n_0,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => data_rewritten_flag_reg_n_0,
      I1 => data_prev_1,
      I2 => bitflip_flag_reg_n_0,
      I3 => in5,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \loop_cnt_reg_n_0_[3]\,
      I2 => \loop_cnt_reg_n_0_[0]\,
      I3 => \loop_cnt_reg_n_0_[1]\,
      I4 => \loop_cnt_reg_n_0_[2]\,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => in5,
      I2 => bitflip_flag_reg_n_0,
      I3 => data_prev_1,
      I4 => data_rewritten_flag_reg_n_0,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => read_complete_i_2_n_0,
      Q => A_buf
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state[10]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => data_buf
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => data_buf,
      Q => data_prev_1
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => write_active_0
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => write_active_0,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[8]\
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \FSM_onehot_state[10]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => data_exp
    );
WE_n_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => A_buf,
      I2 => write_active_0,
      I3 => \^we_n\,
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
      INIT => X"2"
    )
        port map (
      I0 => data_exp,
      I1 => addr_cnt(0),
      O => \addr_cnt[0]_i_1_n_0\
    );
\addr_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(10),
      O => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(11),
      O => \addr_cnt[11]_i_1_n_0\
    );
\addr_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(12),
      O => \addr_cnt[12]_i_1_n_0\
    );
\addr_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(13),
      O => \addr_cnt[13]_i_1_n_0\
    );
\addr_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(14),
      O => \addr_cnt[14]_i_1_n_0\
    );
\addr_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(15),
      O => \addr_cnt[15]_i_1_n_0\
    );
\addr_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(16),
      O => \addr_cnt[16]_i_1_n_0\
    );
\addr_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(17),
      O => \addr_cnt[17]_i_1_n_0\
    );
\addr_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(18),
      O => \addr_cnt[18]_i_1_n_0\
    );
\addr_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(19),
      O => \addr_cnt[19]_i_1_n_0\
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(1),
      O => \addr_cnt[1]_i_1_n_0\
    );
\addr_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(20),
      O => \addr_cnt[20]_i_1_n_0\
    );
\addr_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => data_exp,
      O => \addr_cnt[21]_i_1_n_0\
    );
\addr_cnt[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(21),
      O => \addr_cnt[21]_i_2_n_0\
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(2),
      O => \addr_cnt[2]_i_1_n_0\
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(3),
      O => \addr_cnt[3]_i_1_n_0\
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(4),
      O => \addr_cnt[4]_i_1_n_0\
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(5),
      O => \addr_cnt[5]_i_1_n_0\
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(6),
      O => \addr_cnt[6]_i_1_n_0\
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(7),
      O => \addr_cnt[7]_i_1_n_0\
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(8),
      O => \addr_cnt[8]_i_1_n_0\
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_exp,
      I1 => in21(9),
      O => \addr_cnt[9]_i_1_n_0\
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[0]_i_1_n_0\,
      Q => addr_cnt(0)
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[10]_i_1_n_0\,
      Q => addr_cnt(10)
    );
\addr_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[11]_i_1_n_0\,
      Q => addr_cnt(11)
    );
\addr_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[12]_i_1_n_0\,
      Q => addr_cnt(12)
    );
\addr_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[13]_i_1_n_0\,
      Q => addr_cnt(13)
    );
\addr_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[14]_i_1_n_0\,
      Q => addr_cnt(14)
    );
\addr_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[15]_i_1_n_0\,
      Q => addr_cnt(15)
    );
\addr_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[16]_i_1_n_0\,
      Q => addr_cnt(16)
    );
\addr_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[17]_i_1_n_0\,
      Q => addr_cnt(17)
    );
\addr_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[18]_i_1_n_0\,
      Q => addr_cnt(18)
    );
\addr_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[19]_i_1_n_0\,
      Q => addr_cnt(19)
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[1]_i_1_n_0\,
      Q => addr_cnt(1)
    );
\addr_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[20]_i_1_n_0\,
      Q => addr_cnt(20)
    );
\addr_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[21]_i_2_n_0\,
      Q => addr_cnt(21)
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[2]_i_1_n_0\,
      Q => addr_cnt(2)
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[3]_i_1_n_0\,
      Q => addr_cnt(3)
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[4]_i_1_n_0\,
      Q => addr_cnt(4)
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[5]_i_1_n_0\,
      Q => addr_cnt(5)
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[6]_i_1_n_0\,
      Q => addr_cnt(6)
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[7]_i_1_n_0\,
      Q => addr_cnt(7)
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[8]_i_1_n_0\,
      Q => addr_cnt(8)
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \addr_cnt[21]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \addr_cnt[9]_i_1_n_0\,
      Q => addr_cnt(9)
    );
bitflip_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFFF0000FF00"
    )
        port map (
      I0 => bitflip_flag_i_2_n_0,
      I1 => \loop_cnt_reg_n_0_[0]\,
      I2 => \loop_cnt_reg_n_0_[3]\,
      I3 => bitflip_flag_i_3_n_0,
      I4 => in5,
      I5 => bitflip_flag_reg_n_0,
      O => bitflip_flag_i_1_n_0
    );
bitflip_flag_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \loop_cnt_reg_n_0_[2]\,
      I1 => \loop_cnt_reg_n_0_[1]\,
      O => bitflip_flag_i_2_n_0
    );
bitflip_flag_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_prev_1,
      I1 => data_rewritten_flag_reg_n_0,
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
\data_buf[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_buf,
      I1 => reset_n,
      O => data_buf0
    );
\data_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(0),
      Q => in17(9),
      R => '0'
    );
\data_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(10),
      Q => in17(19),
      R => '0'
    );
\data_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(11),
      Q => in17(20),
      R => '0'
    );
\data_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(12),
      Q => in17(21),
      R => '0'
    );
\data_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(13),
      Q => in17(22),
      R => '0'
    );
\data_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(14),
      Q => in17(23),
      R => '0'
    );
\data_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(15),
      Q => in17(24),
      R => '0'
    );
\data_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(1),
      Q => in17(10),
      R => '0'
    );
\data_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(2),
      Q => in17(11),
      R => '0'
    );
\data_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(3),
      Q => in17(12),
      R => '0'
    );
\data_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(4),
      Q => in17(13),
      R => '0'
    );
\data_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(5),
      Q => in17(14),
      R => '0'
    );
\data_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(6),
      Q => in17(15),
      R => '0'
    );
\data_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(7),
      Q => in17(16),
      R => '0'
    );
\data_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(8),
      Q => in17(17),
      R => '0'
    );
\data_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => data_buf0,
      D => DQ_i(9),
      Q => in17(18),
      R => '0'
    );
\data_exp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(0),
      O => p_1_in(0)
    );
\data_exp[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(10),
      O => p_1_in(10)
    );
\data_exp[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(11),
      O => p_1_in(11)
    );
\data_exp[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(12),
      O => p_1_in(12)
    );
\data_exp[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(13),
      O => p_1_in(13)
    );
\data_exp[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(14),
      O => p_1_in(14)
    );
\data_exp[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(15),
      O => p_1_in(15)
    );
\data_exp[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(1),
      O => p_1_in(1)
    );
\data_exp[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(2),
      O => p_1_in(2)
    );
\data_exp[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(3),
      O => p_1_in(3)
    );
\data_exp[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(4),
      O => p_1_in(4)
    );
\data_exp[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(5),
      O => p_1_in(5)
    );
\data_exp[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(6),
      O => p_1_in(6)
    );
\data_exp[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(7),
      O => p_1_in(7)
    );
\data_exp[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(8),
      O => p_1_in(8)
    );
\data_exp[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dq_o\(9),
      O => p_1_in(9)
    );
\data_exp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(0),
      Q => \^dq_o\(0)
    );
\data_exp_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(10),
      Q => \^dq_o\(10)
    );
\data_exp_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(11),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(11)
    );
\data_exp_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(12),
      Q => \^dq_o\(12)
    );
\data_exp_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(13),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(13)
    );
\data_exp_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(14),
      Q => \^dq_o\(14)
    );
\data_exp_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(15),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(15)
    );
\data_exp_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(1),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(1)
    );
\data_exp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(2),
      Q => \^dq_o\(2)
    );
\data_exp_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(3),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(3)
    );
\data_exp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(4),
      Q => \^dq_o\(4)
    );
\data_exp_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(5),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(5)
    );
\data_exp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(6),
      Q => \^dq_o\(6)
    );
\data_exp_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(7),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(7)
    );
\data_exp_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => data_exp,
      CLR => read_complete_i_2_n_0,
      D => p_1_in(8),
      Q => \^dq_o\(8)
    );
\data_exp_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => sysclk,
      CE => data_exp,
      D => p_1_in(9),
      PRE => read_complete_i_2_n_0,
      Q => \^dq_o\(9)
    );
\data_prev_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(9),
      Q => data_prev(0)
    );
\data_prev_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(19),
      Q => data_prev(10)
    );
\data_prev_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(20),
      Q => data_prev(11)
    );
\data_prev_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(21),
      Q => data_prev(12)
    );
\data_prev_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(22),
      Q => data_prev(13)
    );
\data_prev_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(23),
      Q => data_prev(14)
    );
\data_prev_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(24),
      Q => data_prev(15)
    );
\data_prev_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(10),
      Q => data_prev(1)
    );
\data_prev_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(11),
      Q => data_prev(2)
    );
\data_prev_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(12),
      Q => data_prev(3)
    );
\data_prev_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(13),
      Q => data_prev(4)
    );
\data_prev_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(14),
      Q => data_prev(5)
    );
\data_prev_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(15),
      Q => data_prev(6)
    );
\data_prev_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(16),
      Q => data_prev(7)
    );
\data_prev_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(17),
      Q => data_prev(8)
    );
\data_prev_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => data_prev_1,
      CLR => read_complete_i_2_n_0,
      D => in17(18),
      Q => data_prev(9)
    );
data_rewritten_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => write_active_0,
      I1 => data_rewritten_flag_reg_n_0,
      I2 => data_prev_1,
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
led0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \^led0\,
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
led1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \^led1\,
      O => led1_i_1_n_0
    );
led1_reg: unisim.vcomponents.FDCE
     port map (
      C => sysclk,
      CE => '1',
      CLR => read_complete_i_2_n_0,
      D => led1_i_1_n_0,
      Q => \^led1\
    );
\loop_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \loop_cnt_reg_n_0_[0]\,
      O => loop_cnt(0)
    );
\loop_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \loop_cnt_reg_n_0_[1]\,
      I1 => \loop_cnt_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \loop_cnt[1]_i_1_n_0\
    );
\loop_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \loop_cnt_reg_n_0_[0]\,
      I2 => \loop_cnt_reg_n_0_[1]\,
      I3 => \loop_cnt_reg_n_0_[2]\,
      O => loop_cnt(2)
    );
\loop_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_3_n_0\,
      I1 => bitflip_flag_reg_n_0,
      I2 => in5,
      I3 => data_prev_1,
      I4 => data_rewritten_flag_reg_n_0,
      O => \loop_cnt[3]_i_1_n_0\
    );
\loop_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \loop_cnt_reg_n_0_[2]\,
      I2 => \loop_cnt_reg_n_0_[1]\,
      I3 => \loop_cnt_reg_n_0_[0]\,
      I4 => \loop_cnt_reg_n_0_[3]\,
      O => loop_cnt(3)
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
      D => \loop_cnt[1]_i_1_n_0\,
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
o_BF_drive_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => data_exp,
      I2 => A_buf,
      I3 => \^o_bf_drive\,
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
osc_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => osc_cnt0_carry_n_0,
      CO(2) => osc_cnt0_carry_n_1,
      CO(1) => osc_cnt0_carry_n_2,
      CO(0) => osc_cnt0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_osc_cnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => osc_cnt0_carry_i_1_n_0,
      S(2) => osc_cnt0_carry_i_2_n_0,
      S(1) => osc_cnt0_carry_i_3_n_0,
      S(0) => osc_cnt0_carry_i_4_n_0
    );
\osc_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => osc_cnt0_carry_n_0,
      CO(3 downto 2) => \NLW_osc_cnt0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \osc_cnt0_carry__0_n_2\,
      CO(0) => \osc_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_osc_cnt0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \osc_cnt0_carry__0_i_1_n_0\,
      S(0) => \osc_cnt0_carry__0_i_2_n_0\
    );
\osc_cnt0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data_prev(15),
      I1 => in17(24),
      O => \osc_cnt0_carry__0_i_1_n_0\
    );
\osc_cnt0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in17(21),
      I1 => data_prev(12),
      I2 => in17(22),
      I3 => data_prev(13),
      I4 => data_prev(14),
      I5 => in17(23),
      O => \osc_cnt0_carry__0_i_2_n_0\
    );
osc_cnt0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in17(19),
      I1 => data_prev(10),
      I2 => in17(18),
      I3 => data_prev(9),
      I4 => data_prev(11),
      I5 => in17(20),
      O => osc_cnt0_carry_i_1_n_0
    );
osc_cnt0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in17(17),
      I1 => data_prev(8),
      I2 => in17(15),
      I3 => data_prev(6),
      I4 => data_prev(7),
      I5 => in17(16),
      O => osc_cnt0_carry_i_2_n_0
    );
osc_cnt0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in17(12),
      I1 => data_prev(3),
      I2 => in17(13),
      I3 => data_prev(4),
      I4 => data_prev(5),
      I5 => in17(14),
      O => osc_cnt0_carry_i_3_n_0
    );
osc_cnt0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => in17(9),
      I1 => data_prev(0),
      I2 => in17(10),
      I3 => data_prev(1),
      I4 => data_prev(2),
      I5 => in17(11),
      O => osc_cnt0_carry_i_4_n_0
    );
\osc_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => osc_cnt_reg(0),
      O => p_0_in(0)
    );
\osc_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => osc_cnt_reg(0),
      I1 => osc_cnt_reg(1),
      O => p_0_in(1)
    );
\osc_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => osc_cnt_reg(2),
      I1 => osc_cnt_reg(1),
      I2 => osc_cnt_reg(0),
      O => p_0_in(2)
    );
\osc_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => data_rewritten_flag_reg_n_0,
      I1 => data_prev_1,
      I2 => reset_n,
      I3 => \osc_cnt0_carry__0_n_2\,
      I4 => bitflip_flag_reg_n_0,
      O => \osc_cnt0__6\
    );
\osc_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => osc_cnt_reg(3),
      I1 => osc_cnt_reg(0),
      I2 => osc_cnt_reg(1),
      I3 => osc_cnt_reg(2),
      O => p_0_in(3)
    );
\osc_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \osc_cnt0__6\,
      D => p_0_in(0),
      Q => osc_cnt_reg(0),
      R => '0'
    );
\osc_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \osc_cnt0__6\,
      D => p_0_in(1),
      Q => osc_cnt_reg(1),
      R => '0'
    );
\osc_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \osc_cnt0__6\,
      D => p_0_in(2),
      Q => osc_cnt_reg(2),
      R => '0'
    );
\osc_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \osc_cnt0__6\,
      D => p_0_in(3),
      Q => osc_cnt_reg(3),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => addr_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(4 downto 1),
      S(3 downto 0) => addr_cnt(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(8 downto 5),
      S(3 downto 0) => addr_cnt(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(12 downto 9),
      S(3 downto 0) => addr_cnt(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(16 downto 13),
      S(3 downto 0) => addr_cnt(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in21(20 downto 17),
      S(3 downto 0) => addr_cnt(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => in21(21),
      S(3 downto 1) => B"000",
      S(0) => addr_cnt(21)
    );
read_complete_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => A_buf,
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => \^addresses_searched\,
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
      Q => \^addresses_searched\
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_1_n_0,
      S(2) => state1_carry_i_2_n_0,
      S(1) => state1_carry_i_3_n_0,
      S(0) => state1_carry_i_4_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3 downto 2) => \NLW_state1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => in5,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \state1_carry__0_i_1_n_0\,
      S(0) => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^dq_o\(15),
      I1 => in17(24),
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^dq_o\(12),
      I1 => in17(21),
      I2 => in17(23),
      I3 => \^dq_o\(14),
      I4 => in17(22),
      I5 => \^dq_o\(13),
      O => \state1_carry__0_i_2_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^dq_o\(9),
      I1 => in17(18),
      I2 => in17(20),
      I3 => \^dq_o\(11),
      I4 => in17(19),
      I5 => \^dq_o\(10),
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^dq_o\(6),
      I1 => in17(15),
      I2 => in17(17),
      I3 => \^dq_o\(8),
      I4 => in17(16),
      I5 => \^dq_o\(7),
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^dq_o\(4),
      I1 => in17(13),
      I2 => in17(14),
      I3 => \^dq_o\(5),
      I4 => in17(12),
      I5 => \^dq_o\(3),
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^dq_o\(0),
      I1 => in17(9),
      I2 => in17(11),
      I3 => \^dq_o\(2),
      I4 => in17(10),
      I5 => \^dq_o\(1),
      O => state1_carry_i_4_n_0
    );
\wait_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => wait_count(2),
      I2 => wait_count(0),
      I3 => \wait_count[7]_i_3_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \wait_count[0]_i_1_n_0\
    );
\wait_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00FF000000220"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => wait_count(2),
      I2 => wait_count(1),
      I3 => wait_count(0),
      I4 => \wait_count[7]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \wait_count[1]_i_1_n_0\
    );
\wait_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => wait_count(0),
      I2 => wait_count(1),
      I3 => wait_count(2),
      O => \wait_count[2]_i_1_n_0\
    );
\wait_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => wait_count(1),
      I2 => wait_count(0),
      I3 => wait_count(2),
      I4 => wait_count(3),
      O => \wait_count[3]_i_1_n_0\
    );
\wait_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => wait_count(2),
      I2 => wait_count(0),
      I3 => wait_count(1),
      I4 => wait_count(3),
      I5 => wait_count(4),
      O => \wait_count[4]_i_1_n_0\
    );
\wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => wait_count(3),
      I2 => \wait_count[5]_i_2_n_0\,
      I3 => wait_count(2),
      I4 => wait_count(4),
      I5 => wait_count(5),
      O => \wait_count[5]_i_1_n_0\
    );
\wait_count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => wait_count(0),
      I1 => wait_count(1),
      O => \wait_count[5]_i_2_n_0\
    );
\wait_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \wait_count[7]_i_4_n_0\,
      I2 => wait_count(6),
      O => \wait_count[6]_i_1_n_0\
    );
\wait_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF002A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => wait_count(2),
      I2 => wait_count(1),
      I3 => \wait_count[7]_i_3_n_0\,
      I4 => \A[21]_i_1_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \wait_count[7]_i_1_n_0\
    );
\wait_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \wait_count[7]_i_4_n_0\,
      I1 => wait_count(6),
      I2 => wait_count(7),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \wait_count[7]_i_2_n_0\
    );
\wait_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wait_count(3),
      I1 => wait_count(5),
      I2 => wait_count(4),
      I3 => wait_count(7),
      I4 => wait_count(6),
      O => \wait_count[7]_i_3_n_0\
    );
\wait_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => wait_count(5),
      I1 => wait_count(4),
      I2 => wait_count(2),
      I3 => wait_count(0),
      I4 => wait_count(1),
      I5 => wait_count(3),
      O => \wait_count[7]_i_4_n_0\
    );
\wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[0]_i_1_n_0\,
      Q => wait_count(0)
    );
\wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[1]_i_1_n_0\,
      Q => wait_count(1)
    );
\wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[2]_i_1_n_0\,
      Q => wait_count(2)
    );
\wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[3]_i_1_n_0\,
      Q => wait_count(3)
    );
\wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[4]_i_1_n_0\,
      Q => wait_count(4)
    );
\wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[5]_i_1_n_0\,
      Q => wait_count(5)
    );
\wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[6]_i_1_n_0\,
      Q => wait_count(6)
    );
\wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sysclk,
      CE => \wait_count[7]_i_1_n_0\,
      CLR => read_complete_i_2_n_0,
      D => \wait_count[7]_i_2_n_0\,
      Q => wait_count(7)
    );
write_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => A_buf,
      I2 => write_active_0,
      I3 => write_active,
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
entity testwith1speed_Read1_100MHZ_0_0 is
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
    led1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of testwith1speed_Read1_100MHZ_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_Read1_100MHZ_0_0 : entity is "testwith1speed_Read1_100MHZ_0_0,Read1_100MHZ,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_Read1_100MHZ_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_Read1_100MHZ_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of testwith1speed_Read1_100MHZ_0_0 : entity is "Read1_100MHZ,Vivado 2024.2";
end testwith1speed_Read1_100MHZ_0_0;

architecture STRUCTURE of testwith1speed_Read1_100MHZ_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^dq_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^addresses_searched\ : STD_LOGIC;
  signal \^o_bf_data\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
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
  addresses_searched <= \^addresses_searched\;
  decoder(2) <= \<const0>\;
  decoder(1) <= \<const0>\;
  decoder(0) <= \<const0>\;
  o_BF_data(46 downto 9) <= \^o_bf_data\(46 downto 9);
  o_BF_data(8) <= \<const0>\;
  o_BF_data(7) <= \<const0>\;
  o_BF_data(6) <= \<const0>\;
  o_BF_data(5) <= \<const0>\;
  o_BF_data(4 downto 0) <= \^o_bf_data\(4 downto 0);
  read_complete <= \^addresses_searched\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ
     port map (
      A(21 downto 0) => A(21 downto 0),
      CE_n => CE_n,
      DQ_i(15 downto 0) => DQ_i(15 downto 0),
      DQ_o(15 downto 0) => DQ_o(15 downto 0),
      DQ_t(0) => \^dq_t\(0),
      WE_n => WE_n,
      addresses_searched => \^addresses_searched\,
      led0 => led0,
      led1 => led1,
      o_BF_data(42 downto 5) => \^o_bf_data\(46 downto 9),
      o_BF_data(4 downto 0) => \^o_bf_data\(4 downto 0),
      o_BF_drive => o_BF_drive,
      reset_n => reset_n,
      sysclk => sysclk,
      write_complete => write_complete
    );
end STRUCTURE;

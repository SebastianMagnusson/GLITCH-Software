-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 11:25:44 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_CALC_0_0/PCB_All_SRAM_HTR_CALC_0_0_sim_netlist.vhdl
-- Design      : PCB_All_SRAM_HTR_CALC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC is
  port (
    command_htr2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    HTR_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    command_htr1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    temp_DV : in STD_LOGIC;
    temp_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HTR_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC : entity is "HTR_CALC";
end PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC;

architecture STRUCTURE of PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \^htr_request\ : STD_LOGIC;
  signal HTR_request_i_1_n_0 : STD_LOGIC;
  signal \^i2c_read_done\ : STD_LOGIC;
  signal I2C_read_done_i_1_n_0 : STD_LOGIC;
  signal \__9\ : STD_LOGIC;
  signal \^command_htr1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \command_htr11_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__0_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__0_n_1\ : STD_LOGIC;
  signal \command_htr11_carry__0_n_2\ : STD_LOGIC;
  signal \command_htr11_carry__0_n_3\ : STD_LOGIC;
  signal \command_htr11_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__1_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__1_n_1\ : STD_LOGIC;
  signal \command_htr11_carry__1_n_2\ : STD_LOGIC;
  signal \command_htr11_carry__1_n_3\ : STD_LOGIC;
  signal \command_htr11_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \command_htr11_carry__2_n_2\ : STD_LOGIC;
  signal \command_htr11_carry__2_n_3\ : STD_LOGIC;
  signal command_htr11_carry_i_1_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_2_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_3_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_4_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_5_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_6_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_7_n_0 : STD_LOGIC;
  signal command_htr11_carry_i_8_n_0 : STD_LOGIC;
  signal command_htr11_carry_n_0 : STD_LOGIC;
  signal command_htr11_carry_n_1 : STD_LOGIC;
  signal command_htr11_carry_n_2 : STD_LOGIC;
  signal command_htr11_carry_n_3 : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \command_htr11_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \command_htr1[1]_i_1_n_0\ : STD_LOGIC;
  signal \command_htr1[31]_i_1_n_0\ : STD_LOGIC;
  signal \command_htr1[31]_i_2_n_0\ : STD_LOGIC;
  signal \^command_htr2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \command_htr21_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__0_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__0_n_1\ : STD_LOGIC;
  signal \command_htr21_carry__0_n_2\ : STD_LOGIC;
  signal \command_htr21_carry__0_n_3\ : STD_LOGIC;
  signal \command_htr21_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__1_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__1_n_1\ : STD_LOGIC;
  signal \command_htr21_carry__1_n_2\ : STD_LOGIC;
  signal \command_htr21_carry__1_n_3\ : STD_LOGIC;
  signal \command_htr21_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \command_htr21_carry__2_n_2\ : STD_LOGIC;
  signal \command_htr21_carry__2_n_3\ : STD_LOGIC;
  signal command_htr21_carry_i_1_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_2_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_3_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_4_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_5_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_6_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_7_n_0 : STD_LOGIC;
  signal command_htr21_carry_i_8_n_0 : STD_LOGIC;
  signal command_htr21_carry_n_0 : STD_LOGIC;
  signal command_htr21_carry_n_1 : STD_LOGIC;
  signal command_htr21_carry_n_2 : STD_LOGIC;
  signal command_htr21_carry_n_3 : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \command_htr21_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \command_htr2[3]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in8 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal in9 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \multOp__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_i_11_n_0\ : STD_LOGIC;
  signal \multOp__0_i_12_n_0\ : STD_LOGIC;
  signal \multOp__0_i_13_n_0\ : STD_LOGIC;
  signal \multOp__0_i_14_n_0\ : STD_LOGIC;
  signal \multOp__0_i_15_n_0\ : STD_LOGIC;
  signal \multOp__0_i_16_n_0\ : STD_LOGIC;
  signal \multOp__0_i_1_n_0\ : STD_LOGIC;
  signal \multOp__0_i_2_n_0\ : STD_LOGIC;
  signal \multOp__0_i_3_n_0\ : STD_LOGIC;
  signal \multOp__0_i_4_n_0\ : STD_LOGIC;
  signal \multOp__0_i_5_n_0\ : STD_LOGIC;
  signal \multOp__0_i_6_n_0\ : STD_LOGIC;
  signal \multOp__0_i_7_n_0\ : STD_LOGIC;
  signal \multOp__0_i_8_n_0\ : STD_LOGIC;
  signal \multOp__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_n_100\ : STD_LOGIC;
  signal \multOp__0_n_101\ : STD_LOGIC;
  signal \multOp__0_n_102\ : STD_LOGIC;
  signal \multOp__0_n_103\ : STD_LOGIC;
  signal \multOp__0_n_104\ : STD_LOGIC;
  signal \multOp__0_n_105\ : STD_LOGIC;
  signal \multOp__0_n_75\ : STD_LOGIC;
  signal \multOp__0_n_76\ : STD_LOGIC;
  signal \multOp__0_n_77\ : STD_LOGIC;
  signal \multOp__0_n_78\ : STD_LOGIC;
  signal \multOp__0_n_79\ : STD_LOGIC;
  signal \multOp__0_n_80\ : STD_LOGIC;
  signal \multOp__0_n_81\ : STD_LOGIC;
  signal \multOp__0_n_82\ : STD_LOGIC;
  signal \multOp__0_n_83\ : STD_LOGIC;
  signal \multOp__0_n_84\ : STD_LOGIC;
  signal \multOp__0_n_85\ : STD_LOGIC;
  signal \multOp__0_n_86\ : STD_LOGIC;
  signal \multOp__0_n_87\ : STD_LOGIC;
  signal \multOp__0_n_88\ : STD_LOGIC;
  signal \multOp__0_n_89\ : STD_LOGIC;
  signal \multOp__0_n_90\ : STD_LOGIC;
  signal \multOp__0_n_91\ : STD_LOGIC;
  signal \multOp__0_n_92\ : STD_LOGIC;
  signal \multOp__0_n_93\ : STD_LOGIC;
  signal \multOp__0_n_94\ : STD_LOGIC;
  signal \multOp__0_n_95\ : STD_LOGIC;
  signal \multOp__0_n_96\ : STD_LOGIC;
  signal \multOp__0_n_97\ : STD_LOGIC;
  signal \multOp__0_n_98\ : STD_LOGIC;
  signal \multOp__0_n_99\ : STD_LOGIC;
  signal multOp_i_10_n_0 : STD_LOGIC;
  signal multOp_i_11_n_0 : STD_LOGIC;
  signal multOp_i_12_n_0 : STD_LOGIC;
  signal multOp_i_13_n_0 : STD_LOGIC;
  signal multOp_i_14_n_0 : STD_LOGIC;
  signal multOp_i_15_n_0 : STD_LOGIC;
  signal multOp_i_16_n_0 : STD_LOGIC;
  signal multOp_i_17_n_0 : STD_LOGIC;
  signal multOp_i_2_n_0 : STD_LOGIC;
  signal multOp_i_3_n_0 : STD_LOGIC;
  signal multOp_i_4_n_0 : STD_LOGIC;
  signal multOp_i_5_n_0 : STD_LOGIC;
  signal multOp_i_6_n_0 : STD_LOGIC;
  signal multOp_i_7_n_0 : STD_LOGIC;
  signal multOp_i_8_n_0 : STD_LOGIC;
  signal multOp_i_9_n_0 : STD_LOGIC;
  signal multOp_n_100 : STD_LOGIC;
  signal multOp_n_101 : STD_LOGIC;
  signal multOp_n_102 : STD_LOGIC;
  signal multOp_n_103 : STD_LOGIC;
  signal multOp_n_104 : STD_LOGIC;
  signal multOp_n_105 : STD_LOGIC;
  signal multOp_n_75 : STD_LOGIC;
  signal multOp_n_76 : STD_LOGIC;
  signal multOp_n_77 : STD_LOGIC;
  signal multOp_n_78 : STD_LOGIC;
  signal multOp_n_79 : STD_LOGIC;
  signal multOp_n_80 : STD_LOGIC;
  signal multOp_n_81 : STD_LOGIC;
  signal multOp_n_82 : STD_LOGIC;
  signal multOp_n_83 : STD_LOGIC;
  signal multOp_n_84 : STD_LOGIC;
  signal multOp_n_85 : STD_LOGIC;
  signal multOp_n_86 : STD_LOGIC;
  signal multOp_n_87 : STD_LOGIC;
  signal multOp_n_88 : STD_LOGIC;
  signal multOp_n_89 : STD_LOGIC;
  signal multOp_n_90 : STD_LOGIC;
  signal multOp_n_91 : STD_LOGIC;
  signal multOp_n_92 : STD_LOGIC;
  signal multOp_n_93 : STD_LOGIC;
  signal multOp_n_94 : STD_LOGIC;
  signal multOp_n_95 : STD_LOGIC;
  signal multOp_n_96 : STD_LOGIC;
  signal multOp_n_97 : STD_LOGIC;
  signal multOp_n_98 : STD_LOGIC;
  signal multOp_n_99 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sec_cnt : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal sec_cnt0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal \sec_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \sec_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \sec_cnt1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sec_cnt1_carry__1_n_3\ : STD_LOGIC;
  signal sec_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_i_5_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_i_6_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_i_7_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_n_0 : STD_LOGIC;
  signal sec_cnt1_carry_n_1 : STD_LOGIC;
  signal sec_cnt1_carry_n_2 : STD_LOGIC;
  signal sec_cnt1_carry_n_3 : STD_LOGIC;
  signal \sec_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[26]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[26]_i_3_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \sec_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal temp_calculated_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_calculated_10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__0_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__0_n_1\ : STD_LOGIC;
  signal \temp_calculated_10_carry__0_n_2\ : STD_LOGIC;
  signal \temp_calculated_10_carry__0_n_3\ : STD_LOGIC;
  signal \temp_calculated_10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__1_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__1_n_1\ : STD_LOGIC;
  signal \temp_calculated_10_carry__1_n_2\ : STD_LOGIC;
  signal \temp_calculated_10_carry__1_n_3\ : STD_LOGIC;
  signal \temp_calculated_10_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_10_carry__2_n_1\ : STD_LOGIC;
  signal \temp_calculated_10_carry__2_n_3\ : STD_LOGIC;
  signal temp_calculated_10_carry_i_1_n_0 : STD_LOGIC;
  signal temp_calculated_10_carry_i_2_n_0 : STD_LOGIC;
  signal temp_calculated_10_carry_n_0 : STD_LOGIC;
  signal temp_calculated_10_carry_n_1 : STD_LOGIC;
  signal temp_calculated_10_carry_n_2 : STD_LOGIC;
  signal temp_calculated_10_carry_n_3 : STD_LOGIC;
  signal \temp_calculated_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[11]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[13]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[14]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[31]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[31]_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_1[9]_i_1_n_0\ : STD_LOGIC;
  signal temp_calculated_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \temp_calculated_20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__0_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__0_n_1\ : STD_LOGIC;
  signal \temp_calculated_20_carry__0_n_2\ : STD_LOGIC;
  signal \temp_calculated_20_carry__0_n_3\ : STD_LOGIC;
  signal \temp_calculated_20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__1_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__1_n_1\ : STD_LOGIC;
  signal \temp_calculated_20_carry__1_n_2\ : STD_LOGIC;
  signal \temp_calculated_20_carry__1_n_3\ : STD_LOGIC;
  signal \temp_calculated_20_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \temp_calculated_20_carry__2_n_1\ : STD_LOGIC;
  signal \temp_calculated_20_carry__2_n_3\ : STD_LOGIC;
  signal temp_calculated_20_carry_i_1_n_0 : STD_LOGIC;
  signal temp_calculated_20_carry_i_2_n_0 : STD_LOGIC;
  signal temp_calculated_20_carry_n_0 : STD_LOGIC;
  signal temp_calculated_20_carry_n_1 : STD_LOGIC;
  signal temp_calculated_20_carry_n_2 : STD_LOGIC;
  signal temp_calculated_20_carry_n_3 : STD_LOGIC;
  signal \temp_calculated_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[10]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[11]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[13]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[14]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[31]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_calculated_2[9]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \temp_data_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[14]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[15]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_data_i_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_command_htr11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_command_htr11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr11_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_command_htr21_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_command_htr21_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_command_htr21_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_multOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_multOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_multOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_multOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_multOp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_multOp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_multOp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_multOp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal \NLW_multOp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_sec_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sec_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sec_cnt1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sec_cnt1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp_calculated_10_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp_calculated_10_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp_calculated_20_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp_calculated_20_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of command_htr11_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr11_inferred__0/i__carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \command_htr1[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \command_htr1[31]_i_2\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD of command_htr21_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \command_htr21_inferred__0/i__carry__2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of multOp : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__0\ : label is "{SYNTH-11 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of sec_cnt1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sec_cnt1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sec_cnt1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM of \sec_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sec_cnt[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sec_cnt[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sec_cnt[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sec_cnt[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sec_cnt[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sec_cnt[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sec_cnt[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sec_cnt[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sec_cnt[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sec_cnt[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sec_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sec_cnt[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sec_cnt[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sec_cnt[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sec_cnt[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sec_cnt[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec_cnt[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec_cnt[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sec_cnt[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sec_cnt[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sec_cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sec_cnt[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sec_cnt[9]_i_1\ : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[26]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sec_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \temp_calculated_1[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \temp_calculated_1[10]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \temp_calculated_1[11]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \temp_calculated_1[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \temp_calculated_1[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \temp_calculated_1[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \temp_calculated_1[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \temp_calculated_1[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \temp_calculated_1[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \temp_calculated_1[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \temp_calculated_1[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \temp_calculated_1[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \temp_calculated_1[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \temp_calculated_1[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \temp_calculated_1[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \temp_calculated_1[9]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \temp_calculated_2[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \temp_calculated_2[10]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \temp_calculated_2[11]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \temp_calculated_2[12]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \temp_calculated_2[13]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \temp_calculated_2[14]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \temp_calculated_2[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \temp_calculated_2[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \temp_calculated_2[31]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \temp_calculated_2[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \temp_calculated_2[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \temp_calculated_2[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \temp_calculated_2[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \temp_calculated_2[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \temp_calculated_2[8]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \temp_calculated_2[9]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \temp_data_i[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \temp_data_i[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \temp_data_i[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \temp_data_i[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \temp_data_i[13]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \temp_data_i[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \temp_data_i[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \temp_data_i[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \temp_data_i[17]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \temp_data_i[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \temp_data_i[19]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \temp_data_i[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \temp_data_i[20]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \temp_data_i[21]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \temp_data_i[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \temp_data_i[23]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \temp_data_i[24]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \temp_data_i[25]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \temp_data_i[26]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \temp_data_i[27]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \temp_data_i[28]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \temp_data_i[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \temp_data_i[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \temp_data_i[30]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \temp_data_i[31]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \temp_data_i[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \temp_data_i[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \temp_data_i[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \temp_data_i[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \temp_data_i[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \temp_data_i[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \temp_data_i[9]_i_1\ : label is "soft_lutpair21";
begin
  HTR_request <= \^htr_request\;
  I2C_read_done <= \^i2c_read_done\;
  command_htr1(0) <= \^command_htr1\(0);
  command_htr2(1 downto 0) <= \^command_htr2\(1 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_0_in,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => temp_DV,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_DV,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \command_htr1[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => \command_htr1[31]_i_1_n_0\
    );
HTR_request_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => temp_DV,
      I1 => HTR_rst,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \^htr_request\,
      O => HTR_request_i_1_n_0
    );
HTR_request_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => HTR_request_i_1_n_0,
      Q => \^htr_request\,
      R => '0'
    );
I2C_read_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F555F777A000A000"
    )
        port map (
      I0 => HTR_rst,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => temp_DV,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => \^i2c_read_done\,
      O => I2C_read_done_i_1_n_0
    );
I2C_read_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => I2C_read_done_i_1_n_0,
      Q => \^i2c_read_done\,
      R => '0'
    );
command_htr11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => command_htr11_carry_n_0,
      CO(2) => command_htr11_carry_n_1,
      CO(1) => command_htr11_carry_n_2,
      CO(0) => command_htr11_carry_n_3,
      CYINIT => '0',
      DI(3) => command_htr11_carry_i_1_n_0,
      DI(2) => command_htr11_carry_i_2_n_0,
      DI(1) => command_htr11_carry_i_3_n_0,
      DI(0) => command_htr11_carry_i_4_n_0,
      O(3 downto 0) => NLW_command_htr11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => command_htr11_carry_i_5_n_0,
      S(2) => command_htr11_carry_i_6_n_0,
      S(1) => command_htr11_carry_i_7_n_0,
      S(0) => command_htr11_carry_i_8_n_0
    );
\command_htr11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => command_htr11_carry_n_0,
      CO(3) => \command_htr11_carry__0_n_0\,
      CO(2) => \command_htr11_carry__0_n_1\,
      CO(1) => \command_htr11_carry__0_n_2\,
      CO(0) => \command_htr11_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_htr11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \command_htr11_carry__0_i_1_n_0\,
      S(2) => \command_htr11_carry__0_i_2_n_0\,
      S(1) => \command_htr11_carry__0_i_3_n_0\,
      S(0) => \command_htr11_carry__0_i_4_n_0\
    );
\command_htr11_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__0_i_1_n_0\
    );
\command_htr11_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__0_i_2_n_0\
    );
\command_htr11_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(14),
      I1 => temp_calculated_1(31),
      O => \command_htr11_carry__0_i_3_n_0\
    );
\command_htr11_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(12),
      I1 => temp_calculated_1(13),
      O => \command_htr11_carry__0_i_4_n_0\
    );
\command_htr11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr11_carry__0_n_0\,
      CO(3) => \command_htr11_carry__1_n_0\,
      CO(2) => \command_htr11_carry__1_n_1\,
      CO(1) => \command_htr11_carry__1_n_2\,
      CO(0) => \command_htr11_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_htr11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \command_htr11_carry__1_i_1_n_0\,
      S(2) => \command_htr11_carry__1_i_2_n_0\,
      S(1) => \command_htr11_carry__1_i_3_n_0\,
      S(0) => \command_htr11_carry__1_i_4_n_0\
    );
\command_htr11_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__1_i_1_n_0\
    );
\command_htr11_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__1_i_2_n_0\
    );
\command_htr11_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__1_i_3_n_0\
    );
\command_htr11_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__1_i_4_n_0\
    );
\command_htr11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr11_carry__1_n_0\,
      CO(3 downto 2) => \NLW_command_htr11_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \command_htr11_carry__2_n_2\,
      CO(0) => \command_htr11_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => temp_calculated_1(31),
      DI(0) => '0',
      O(3 downto 0) => \NLW_command_htr11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \command_htr11_carry__2_i_1_n_0\,
      S(0) => \command_htr11_carry__2_i_2_n_0\
    );
\command_htr11_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__2_i_1_n_0\
    );
\command_htr11_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \command_htr11_carry__2_i_2_n_0\
    );
command_htr11_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(10),
      I1 => temp_calculated_1(11),
      O => command_htr11_carry_i_1_n_0
    );
command_htr11_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => temp_calculated_1(8),
      I1 => temp_calculated_1(9),
      O => command_htr11_carry_i_2_n_0
    );
command_htr11_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => temp_calculated_1(6),
      I1 => temp_calculated_1(7),
      O => command_htr11_carry_i_3_n_0
    );
command_htr11_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(4),
      I1 => temp_calculated_1(5),
      O => command_htr11_carry_i_4_n_0
    );
command_htr11_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_1(10),
      I1 => temp_calculated_1(11),
      O => command_htr11_carry_i_5_n_0
    );
command_htr11_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_1(8),
      I1 => temp_calculated_1(9),
      O => command_htr11_carry_i_6_n_0
    );
command_htr11_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_1(6),
      I1 => temp_calculated_1(7),
      O => command_htr11_carry_i_7_n_0
    );
command_htr11_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_1(4),
      I1 => temp_calculated_1(5),
      O => command_htr11_carry_i_8_n_0
    );
\command_htr11_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \command_htr11_inferred__0/i__carry_n_0\,
      CO(2) => \command_htr11_inferred__0/i__carry_n_1\,
      CO(1) => \command_htr11_inferred__0/i__carry_n_2\,
      CO(0) => \command_htr11_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => temp_calculated_1(5),
      DI(1) => \i__carry_i_1_n_0\,
      DI(0) => \i__carry_i_2_n_0\,
      O(3 downto 0) => \NLW_command_htr11_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\command_htr11_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr11_inferred__0/i__carry_n_0\,
      CO(3) => \command_htr11_inferred__0/i__carry__0_n_0\,
      CO(2) => \command_htr11_inferred__0/i__carry__0_n_1\,
      CO(1) => \command_htr11_inferred__0/i__carry__0_n_2\,
      CO(0) => \command_htr11_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => temp_calculated_1(11),
      DI(0) => '0',
      O(3 downto 0) => \NLW_command_htr11_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_3_n_0\,
      S(2) => \i__carry__0_i_4_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\command_htr11_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr11_inferred__0/i__carry__0_n_0\,
      CO(3) => \command_htr11_inferred__0/i__carry__1_n_0\,
      CO(2) => \command_htr11_inferred__0/i__carry__1_n_1\,
      CO(1) => \command_htr11_inferred__0/i__carry__1_n_2\,
      CO(0) => \command_htr11_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => temp_calculated_1(31),
      DI(2) => temp_calculated_1(31),
      DI(1) => temp_calculated_1(31),
      DI(0) => temp_calculated_1(31),
      O(3 downto 0) => \NLW_command_htr11_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\command_htr11_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr11_inferred__0/i__carry__1_n_0\,
      CO(3) => \command_htr11_inferred__0/i__carry__2_n_0\,
      CO(2) => \command_htr11_inferred__0/i__carry__2_n_1\,
      CO(1) => \command_htr11_inferred__0/i__carry__2_n_2\,
      CO(0) => \command_htr11_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => temp_calculated_1(31),
      DI(1) => temp_calculated_1(31),
      DI(0) => temp_calculated_1(31),
      O(3 downto 0) => \NLW_command_htr11_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\command_htr1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \command_htr11_carry__2_n_2\,
      I1 => \command_htr11_inferred__0/i__carry__2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \^command_htr1\(0),
      O => \command_htr1[1]_i_1_n_0\
    );
\command_htr1[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HTR_rst,
      O => \command_htr1[31]_i_1_n_0\
    );
\command_htr1[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \^command_htr2\(1),
      O => \command_htr1[31]_i_2_n_0\
    );
\command_htr1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \command_htr1[1]_i_1_n_0\,
      Q => \^command_htr1\(0),
      R => \command_htr1[31]_i_1_n_0\
    );
\command_htr1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \command_htr1[31]_i_2_n_0\,
      Q => \^command_htr2\(1),
      R => \command_htr1[31]_i_1_n_0\
    );
command_htr21_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => command_htr21_carry_n_0,
      CO(2) => command_htr21_carry_n_1,
      CO(1) => command_htr21_carry_n_2,
      CO(0) => command_htr21_carry_n_3,
      CYINIT => '0',
      DI(3) => command_htr21_carry_i_1_n_0,
      DI(2) => command_htr21_carry_i_2_n_0,
      DI(1) => command_htr21_carry_i_3_n_0,
      DI(0) => command_htr21_carry_i_4_n_0,
      O(3 downto 0) => NLW_command_htr21_carry_O_UNCONNECTED(3 downto 0),
      S(3) => command_htr21_carry_i_5_n_0,
      S(2) => command_htr21_carry_i_6_n_0,
      S(1) => command_htr21_carry_i_7_n_0,
      S(0) => command_htr21_carry_i_8_n_0
    );
\command_htr21_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => command_htr21_carry_n_0,
      CO(3) => \command_htr21_carry__0_n_0\,
      CO(2) => \command_htr21_carry__0_n_1\,
      CO(1) => \command_htr21_carry__0_n_2\,
      CO(0) => \command_htr21_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_htr21_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \command_htr21_carry__0_i_1_n_0\,
      S(2) => \command_htr21_carry__0_i_2_n_0\,
      S(1) => \command_htr21_carry__0_i_3_n_0\,
      S(0) => \command_htr21_carry__0_i_4_n_0\
    );
\command_htr21_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__0_i_1_n_0\
    );
\command_htr21_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__0_i_2_n_0\
    );
\command_htr21_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(14),
      I1 => temp_calculated_2(31),
      O => \command_htr21_carry__0_i_3_n_0\
    );
\command_htr21_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(12),
      I1 => temp_calculated_2(13),
      O => \command_htr21_carry__0_i_4_n_0\
    );
\command_htr21_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr21_carry__0_n_0\,
      CO(3) => \command_htr21_carry__1_n_0\,
      CO(2) => \command_htr21_carry__1_n_1\,
      CO(1) => \command_htr21_carry__1_n_2\,
      CO(0) => \command_htr21_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_command_htr21_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \command_htr21_carry__1_i_1_n_0\,
      S(2) => \command_htr21_carry__1_i_2_n_0\,
      S(1) => \command_htr21_carry__1_i_3_n_0\,
      S(0) => \command_htr21_carry__1_i_4_n_0\
    );
\command_htr21_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__1_i_1_n_0\
    );
\command_htr21_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__1_i_2_n_0\
    );
\command_htr21_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__1_i_3_n_0\
    );
\command_htr21_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__1_i_4_n_0\
    );
\command_htr21_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr21_carry__1_n_0\,
      CO(3 downto 2) => \NLW_command_htr21_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \command_htr21_carry__2_n_2\,
      CO(0) => \command_htr21_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => temp_calculated_2(31),
      DI(0) => '0',
      O(3 downto 0) => \NLW_command_htr21_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \command_htr21_carry__2_i_1_n_0\,
      S(0) => \command_htr21_carry__2_i_2_n_0\
    );
\command_htr21_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__2_i_1_n_0\
    );
\command_htr21_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \command_htr21_carry__2_i_2_n_0\
    );
command_htr21_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(10),
      I1 => temp_calculated_2(11),
      O => command_htr21_carry_i_1_n_0
    );
command_htr21_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => temp_calculated_2(8),
      I1 => temp_calculated_2(9),
      O => command_htr21_carry_i_2_n_0
    );
command_htr21_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => temp_calculated_2(6),
      I1 => temp_calculated_2(7),
      O => command_htr21_carry_i_3_n_0
    );
command_htr21_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(4),
      I1 => temp_calculated_2(5),
      O => command_htr21_carry_i_4_n_0
    );
command_htr21_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_2(10),
      I1 => temp_calculated_2(11),
      O => command_htr21_carry_i_5_n_0
    );
command_htr21_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_2(8),
      I1 => temp_calculated_2(9),
      O => command_htr21_carry_i_6_n_0
    );
command_htr21_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_2(6),
      I1 => temp_calculated_2(7),
      O => command_htr21_carry_i_7_n_0
    );
command_htr21_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_2(4),
      I1 => temp_calculated_2(5),
      O => command_htr21_carry_i_8_n_0
    );
\command_htr21_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \command_htr21_inferred__0/i__carry_n_0\,
      CO(2) => \command_htr21_inferred__0/i__carry_n_1\,
      CO(1) => \command_htr21_inferred__0/i__carry_n_2\,
      CO(0) => \command_htr21_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => temp_calculated_2(5),
      DI(1) => \i__carry_i_1__0_n_0\,
      DI(0) => \i__carry_i_2__0_n_0\,
      O(3 downto 0) => \NLW_command_htr21_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3__0_n_0\,
      S(2) => \i__carry_i_4__0_n_0\,
      S(1) => \i__carry_i_5__0_n_0\,
      S(0) => \i__carry_i_6__0_n_0\
    );
\command_htr21_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr21_inferred__0/i__carry_n_0\,
      CO(3) => \command_htr21_inferred__0/i__carry__0_n_0\,
      CO(2) => \command_htr21_inferred__0/i__carry__0_n_1\,
      CO(1) => \command_htr21_inferred__0/i__carry__0_n_2\,
      CO(0) => \command_htr21_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => temp_calculated_2(11),
      DI(0) => '0',
      O(3 downto 0) => \NLW_command_htr21_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_3__0_n_0\,
      S(2) => \i__carry__0_i_4__0_n_0\,
      S(1) => \i__carry__0_i_5__0_n_0\,
      S(0) => \i__carry__0_i_6__0_n_0\
    );
\command_htr21_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr21_inferred__0/i__carry__0_n_0\,
      CO(3) => \command_htr21_inferred__0/i__carry__1_n_0\,
      CO(2) => \command_htr21_inferred__0/i__carry__1_n_1\,
      CO(1) => \command_htr21_inferred__0/i__carry__1_n_2\,
      CO(0) => \command_htr21_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => temp_calculated_2(31),
      DI(2) => temp_calculated_2(31),
      DI(1) => temp_calculated_2(31),
      DI(0) => temp_calculated_2(31),
      O(3 downto 0) => \NLW_command_htr21_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\command_htr21_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \command_htr21_inferred__0/i__carry__1_n_0\,
      CO(3) => \command_htr21_inferred__0/i__carry__2_n_0\,
      CO(2) => \command_htr21_inferred__0/i__carry__2_n_1\,
      CO(1) => \command_htr21_inferred__0/i__carry__2_n_2\,
      CO(0) => \command_htr21_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => temp_calculated_2(31),
      DI(1) => temp_calculated_2(31),
      DI(0) => temp_calculated_2(31),
      O(3 downto 0) => \NLW_command_htr21_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\command_htr2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \command_htr21_carry__2_n_2\,
      I1 => \command_htr21_inferred__0/i__carry__2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \^command_htr2\(0),
      O => \command_htr2[3]_i_1_n_0\
    );
\command_htr2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \command_htr2[3]_i_1_n_0\,
      Q => \^command_htr2\(0),
      R => \command_htr1[31]_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_1(14),
      I1 => temp_calculated_1(31),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_2(14),
      I1 => temp_calculated_2(31),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_1(12),
      I1 => temp_calculated_1(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_2(12),
      I1 => temp_calculated_2(13),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(14),
      I1 => temp_calculated_1(31),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(14),
      I1 => temp_calculated_2(31),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(12),
      I1 => temp_calculated_1(13),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(12),
      I1 => temp_calculated_2(13),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_1(10),
      I1 => temp_calculated_1(11),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_2(10),
      I1 => temp_calculated_2(11),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_1(8),
      I1 => temp_calculated_1(9),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_2(8),
      I1 => temp_calculated_2(9),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(31),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(31),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_1(2),
      I1 => temp_calculated_1(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_2(2),
      I1 => temp_calculated_2(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_1(0),
      I1 => temp_calculated_1(1),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => temp_calculated_2(0),
      I1 => temp_calculated_2(1),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_1(6),
      I1 => temp_calculated_1(7),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp_calculated_2(6),
      I1 => temp_calculated_2(7),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_1(4),
      I1 => temp_calculated_1(5),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => temp_calculated_2(4),
      I1 => temp_calculated_2(5),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(2),
      I1 => temp_calculated_1(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(2),
      I1 => temp_calculated_2(3),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_1(0),
      I1 => temp_calculated_1(1),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => temp_calculated_2(0),
      I1 => temp_calculated_2(1),
      O => \i__carry_i_6__0_n_0\
    );
multOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15) => multOp_i_2_n_0,
      A(14) => multOp_i_3_n_0,
      A(13) => multOp_i_4_n_0,
      A(12) => multOp_i_5_n_0,
      A(11) => multOp_i_6_n_0,
      A(10) => multOp_i_7_n_0,
      A(9) => multOp_i_8_n_0,
      A(8) => multOp_i_9_n_0,
      A(7) => multOp_i_10_n_0,
      A(6) => multOp_i_11_n_0,
      A(5) => multOp_i_12_n_0,
      A(4) => multOp_i_13_n_0,
      A(3) => multOp_i_14_n_0,
      A(2) => multOp_i_15_n_0,
      A(1) => multOp_i_16_n_0,
      A(0) => multOp_i_17_n_0,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_multOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100010010100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_multOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_multOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_multOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \__9\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_multOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_multOp_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_multOp_P_UNCONNECTED(47 downto 31),
      P(30) => multOp_n_75,
      P(29) => multOp_n_76,
      P(28) => multOp_n_77,
      P(27) => multOp_n_78,
      P(26) => multOp_n_79,
      P(25) => multOp_n_80,
      P(24) => multOp_n_81,
      P(23) => multOp_n_82,
      P(22) => multOp_n_83,
      P(21) => multOp_n_84,
      P(20) => multOp_n_85,
      P(19) => multOp_n_86,
      P(18) => multOp_n_87,
      P(17) => multOp_n_88,
      P(16) => multOp_n_89,
      P(15) => multOp_n_90,
      P(14) => multOp_n_91,
      P(13) => multOp_n_92,
      P(12) => multOp_n_93,
      P(11) => multOp_n_94,
      P(10) => multOp_n_95,
      P(9) => multOp_n_96,
      P(8) => multOp_n_97,
      P(7) => multOp_n_98,
      P(6) => multOp_n_99,
      P(5) => multOp_n_100,
      P(4) => multOp_n_101,
      P(3) => multOp_n_102,
      P(2) => multOp_n_103,
      P(1) => multOp_n_104,
      P(0) => multOp_n_105,
      PATTERNBDETECT => NLW_multOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_multOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_multOp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => \command_htr1[31]_i_1_n_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_multOp_UNDERFLOW_UNCONNECTED
    );
\multOp__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15) => \multOp__0_i_1_n_0\,
      A(14) => \multOp__0_i_2_n_0\,
      A(13) => \multOp__0_i_3_n_0\,
      A(12) => \multOp__0_i_4_n_0\,
      A(11) => \multOp__0_i_5_n_0\,
      A(10) => \multOp__0_i_6_n_0\,
      A(9) => \multOp__0_i_7_n_0\,
      A(8) => \multOp__0_i_8_n_0\,
      A(7) => \multOp__0_i_9_n_0\,
      A(6) => \multOp__0_i_10_n_0\,
      A(5) => \multOp__0_i_11_n_0\,
      A(4) => \multOp__0_i_12_n_0\,
      A(3) => \multOp__0_i_13_n_0\,
      A(2) => \multOp__0_i_14_n_0\,
      A(1) => \multOp__0_i_15_n_0\,
      A(0) => \multOp__0_i_16_n_0\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_multOp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000100010010100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_multOp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_multOp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_multOp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => \__9\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_multOp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_multOp__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 31) => \NLW_multOp__0_P_UNCONNECTED\(47 downto 31),
      P(30) => \multOp__0_n_75\,
      P(29) => \multOp__0_n_76\,
      P(28) => \multOp__0_n_77\,
      P(27) => \multOp__0_n_78\,
      P(26) => \multOp__0_n_79\,
      P(25) => \multOp__0_n_80\,
      P(24) => \multOp__0_n_81\,
      P(23) => \multOp__0_n_82\,
      P(22) => \multOp__0_n_83\,
      P(21) => \multOp__0_n_84\,
      P(20) => \multOp__0_n_85\,
      P(19) => \multOp__0_n_86\,
      P(18) => \multOp__0_n_87\,
      P(17) => \multOp__0_n_88\,
      P(16) => \multOp__0_n_89\,
      P(15) => \multOp__0_n_90\,
      P(14) => \multOp__0_n_91\,
      P(13) => \multOp__0_n_92\,
      P(12) => \multOp__0_n_93\,
      P(11) => \multOp__0_n_94\,
      P(10) => \multOp__0_n_95\,
      P(9) => \multOp__0_n_96\,
      P(8) => \multOp__0_n_97\,
      P(7) => \multOp__0_n_98\,
      P(6) => \multOp__0_n_99\,
      P(5) => \multOp__0_n_100\,
      P(4) => \multOp__0_n_101\,
      P(3) => \multOp__0_n_102\,
      P(2) => \multOp__0_n_103\,
      P(1) => \multOp__0_n_104\,
      P(0) => \multOp__0_n_105\,
      PATTERNBDETECT => \NLW_multOp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_multOp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \NLW_multOp__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => \command_htr1[31]_i_1_n_0\,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_multOp__0_UNDERFLOW_UNCONNECTED\
    );
\multOp__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(15),
      O => \multOp__0_i_1_n_0\
    );
\multOp__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(6),
      O => \multOp__0_i_10_n_0\
    );
\multOp__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(5),
      O => \multOp__0_i_11_n_0\
    );
\multOp__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(4),
      O => \multOp__0_i_12_n_0\
    );
\multOp__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(3),
      O => \multOp__0_i_13_n_0\
    );
\multOp__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(2),
      O => \multOp__0_i_14_n_0\
    );
\multOp__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(1),
      O => \multOp__0_i_15_n_0\
    );
\multOp__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(0),
      O => \multOp__0_i_16_n_0\
    );
\multOp__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(14),
      O => \multOp__0_i_2_n_0\
    );
\multOp__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(13),
      O => \multOp__0_i_3_n_0\
    );
\multOp__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(12),
      O => \multOp__0_i_4_n_0\
    );
\multOp__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(11),
      O => \multOp__0_i_5_n_0\
    );
\multOp__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(10),
      O => \multOp__0_i_6_n_0\
    );
\multOp__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(9),
      O => \multOp__0_i_7_n_0\
    );
\multOp__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(8),
      O => \multOp__0_i_8_n_0\
    );
\multOp__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => in7(7),
      O => \multOp__0_i_9_n_0\
    );
multOp_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \__9\
    );
multOp_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[7]\,
      O => multOp_i_10_n_0
    );
multOp_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[6]\,
      O => multOp_i_11_n_0
    );
multOp_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[5]\,
      O => multOp_i_12_n_0
    );
multOp_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[4]\,
      O => multOp_i_13_n_0
    );
multOp_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[3]\,
      O => multOp_i_14_n_0
    );
multOp_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[2]\,
      O => multOp_i_15_n_0
    );
multOp_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[1]\,
      O => multOp_i_16_n_0
    );
multOp_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[0]\,
      O => multOp_i_17_n_0
    );
multOp_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[15]\,
      O => multOp_i_2_n_0
    );
multOp_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[14]\,
      O => multOp_i_3_n_0
    );
multOp_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[13]\,
      O => multOp_i_4_n_0
    );
multOp_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[12]\,
      O => multOp_i_5_n_0
    );
multOp_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[11]\,
      O => multOp_i_6_n_0
    );
multOp_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[10]\,
      O => multOp_i_7_n_0
    );
multOp_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[9]\,
      O => multOp_i_8_n_0
    );
multOp_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \temp_data_i_reg_n_0_[8]\,
      O => multOp_i_9_n_0
    );
sec_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sec_cnt1_carry_n_0,
      CO(2) => sec_cnt1_carry_n_1,
      CO(1) => sec_cnt1_carry_n_2,
      CO(0) => sec_cnt1_carry_n_3,
      CYINIT => '0',
      DI(3) => sec_cnt1_carry_i_1_n_0,
      DI(2) => sec_cnt1_carry_i_2_n_0,
      DI(1) => '0',
      DI(0) => sec_cnt1_carry_i_3_n_0,
      O(3 downto 0) => NLW_sec_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sec_cnt1_carry_i_4_n_0,
      S(2) => sec_cnt1_carry_i_5_n_0,
      S(1) => sec_cnt1_carry_i_6_n_0,
      S(0) => sec_cnt1_carry_i_7_n_0
    );
\sec_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sec_cnt1_carry_n_0,
      CO(3) => \sec_cnt1_carry__0_n_0\,
      CO(2) => \sec_cnt1_carry__0_n_1\,
      CO(1) => \sec_cnt1_carry__0_n_2\,
      CO(0) => \sec_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sec_cnt1_carry__0_i_1_n_0\,
      DI(2) => \sec_cnt1_carry__0_i_2_n_0\,
      DI(1) => \sec_cnt1_carry__0_i_3_n_0\,
      DI(0) => \sec_cnt1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_sec_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \sec_cnt1_carry__0_i_5_n_0\,
      S(2) => \sec_cnt1_carry__0_i_6_n_0\,
      S(1) => \sec_cnt1_carry__0_i_7_n_0\,
      S(0) => \sec_cnt1_carry__0_i_8_n_0\
    );
\sec_cnt1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sec_cnt(22),
      I1 => sec_cnt(23),
      O => \sec_cnt1_carry__0_i_1_n_0\
    );
\sec_cnt1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sec_cnt(20),
      I1 => sec_cnt(21),
      O => \sec_cnt1_carry__0_i_2_n_0\
    );
\sec_cnt1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(18),
      I1 => sec_cnt(19),
      O => \sec_cnt1_carry__0_i_3_n_0\
    );
\sec_cnt1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(16),
      I1 => sec_cnt(17),
      O => \sec_cnt1_carry__0_i_4_n_0\
    );
\sec_cnt1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec_cnt(22),
      I1 => sec_cnt(23),
      O => \sec_cnt1_carry__0_i_5_n_0\
    );
\sec_cnt1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec_cnt(20),
      I1 => sec_cnt(21),
      O => \sec_cnt1_carry__0_i_6_n_0\
    );
\sec_cnt1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sec_cnt(18),
      I1 => sec_cnt(19),
      O => \sec_cnt1_carry__0_i_7_n_0\
    );
\sec_cnt1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sec_cnt(16),
      I1 => sec_cnt(17),
      O => \sec_cnt1_carry__0_i_8_n_0\
    );
\sec_cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_sec_cnt1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_0_in,
      CO(0) => \sec_cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sec_cnt1_carry__1_i_1_n_0\,
      DI(0) => \sec_cnt1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_sec_cnt1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => sec_cnt(26),
      S(0) => \sec_cnt1_carry__1_i_3_n_0\
    );
\sec_cnt1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(26),
      O => \sec_cnt1_carry__1_i_1_n_0\
    );
\sec_cnt1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(24),
      I1 => sec_cnt(25),
      O => \sec_cnt1_carry__1_i_2_n_0\
    );
\sec_cnt1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sec_cnt(24),
      I1 => sec_cnt(25),
      O => \sec_cnt1_carry__1_i_3_n_0\
    );
sec_cnt1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sec_cnt(14),
      I1 => sec_cnt(15),
      O => sec_cnt1_carry_i_1_n_0
    );
sec_cnt1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(13),
      O => sec_cnt1_carry_i_2_n_0
    );
sec_cnt1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(8),
      I1 => sec_cnt(9),
      O => sec_cnt1_carry_i_3_n_0
    );
sec_cnt1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec_cnt(14),
      I1 => sec_cnt(15),
      O => sec_cnt1_carry_i_4_n_0
    );
sec_cnt1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sec_cnt(13),
      I1 => sec_cnt(12),
      O => sec_cnt1_carry_i_5_n_0
    );
sec_cnt1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sec_cnt(10),
      I1 => sec_cnt(11),
      O => sec_cnt1_carry_i_6_n_0
    );
sec_cnt1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sec_cnt(8),
      I1 => sec_cnt(9),
      O => sec_cnt1_carry_i_7_n_0
    );
\sec_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt(0),
      I2 => p_0_in,
      O => \sec_cnt[0]_i_1_n_0\
    );
\sec_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(10),
      I2 => p_0_in,
      O => \sec_cnt[10]_i_1_n_0\
    );
\sec_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(11),
      I2 => p_0_in,
      O => \sec_cnt[11]_i_1_n_0\
    );
\sec_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(12),
      I2 => p_0_in,
      O => \sec_cnt[12]_i_1_n_0\
    );
\sec_cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(13),
      I2 => p_0_in,
      O => \sec_cnt[13]_i_1_n_0\
    );
\sec_cnt[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(14),
      I2 => p_0_in,
      O => \sec_cnt[14]_i_1_n_0\
    );
\sec_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(15),
      I2 => p_0_in,
      O => \sec_cnt[15]_i_1_n_0\
    );
\sec_cnt[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(16),
      I2 => p_0_in,
      O => \sec_cnt[16]_i_1_n_0\
    );
\sec_cnt[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(17),
      I2 => p_0_in,
      O => \sec_cnt[17]_i_1_n_0\
    );
\sec_cnt[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(18),
      I2 => p_0_in,
      O => \sec_cnt[18]_i_1_n_0\
    );
\sec_cnt[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(19),
      I2 => p_0_in,
      O => \sec_cnt[19]_i_1_n_0\
    );
\sec_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(1),
      I2 => p_0_in,
      O => \sec_cnt[1]_i_1_n_0\
    );
\sec_cnt[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(20),
      I2 => p_0_in,
      O => \sec_cnt[20]_i_1_n_0\
    );
\sec_cnt[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(21),
      I2 => p_0_in,
      O => \sec_cnt[21]_i_1_n_0\
    );
\sec_cnt[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(22),
      I2 => p_0_in,
      O => \sec_cnt[22]_i_1_n_0\
    );
\sec_cnt[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(23),
      I2 => p_0_in,
      O => \sec_cnt[23]_i_1_n_0\
    );
\sec_cnt[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(24),
      I2 => p_0_in,
      O => \sec_cnt[24]_i_1_n_0\
    );
\sec_cnt[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(25),
      I2 => p_0_in,
      O => \sec_cnt[25]_i_1_n_0\
    );
\sec_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \sec_cnt[26]_i_1_n_0\
    );
\sec_cnt[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(26),
      I2 => p_0_in,
      O => \sec_cnt[26]_i_2_n_0\
    );
\sec_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(2),
      I2 => p_0_in,
      O => \sec_cnt[2]_i_1_n_0\
    );
\sec_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(3),
      I2 => p_0_in,
      O => \sec_cnt[3]_i_1_n_0\
    );
\sec_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(4),
      I2 => p_0_in,
      O => \sec_cnt[4]_i_1_n_0\
    );
\sec_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(5),
      I2 => p_0_in,
      O => \sec_cnt[5]_i_1_n_0\
    );
\sec_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(6),
      I2 => p_0_in,
      O => \sec_cnt[6]_i_1_n_0\
    );
\sec_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(7),
      I2 => p_0_in,
      O => \sec_cnt[7]_i_1_n_0\
    );
\sec_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(8),
      I2 => p_0_in,
      O => \sec_cnt[8]_i_1_n_0\
    );
\sec_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => sec_cnt0(9),
      I2 => p_0_in,
      O => \sec_cnt[9]_i_1_n_0\
    );
\sec_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[0]_i_1_n_0\,
      Q => sec_cnt(0),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[10]_i_1_n_0\,
      Q => sec_cnt(10),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[11]_i_1_n_0\,
      Q => sec_cnt(11),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[12]_i_1_n_0\,
      Q => sec_cnt(12),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[8]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[12]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[12]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[12]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sec_cnt0(12 downto 9),
      S(3 downto 0) => sec_cnt(12 downto 9)
    );
\sec_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[13]_i_1_n_0\,
      Q => sec_cnt(13),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[14]_i_1_n_0\,
      Q => sec_cnt(14),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[15]_i_1_n_0\,
      Q => sec_cnt(15),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[16]_i_1_n_0\,
      Q => sec_cnt(16),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[12]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[16]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[16]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[16]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sec_cnt0(16 downto 13),
      S(3 downto 0) => sec_cnt(16 downto 13)
    );
\sec_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[17]_i_1_n_0\,
      Q => sec_cnt(17),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[18]_i_1_n_0\,
      Q => sec_cnt(18),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[19]_i_1_n_0\,
      Q => sec_cnt(19),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[1]_i_1_n_0\,
      Q => sec_cnt(1),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[20]_i_1_n_0\,
      Q => sec_cnt(20),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[16]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[20]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[20]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[20]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sec_cnt0(20 downto 17),
      S(3 downto 0) => sec_cnt(20 downto 17)
    );
\sec_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[21]_i_1_n_0\,
      Q => sec_cnt(21),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[22]_i_1_n_0\,
      Q => sec_cnt(22),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[23]_i_1_n_0\,
      Q => sec_cnt(23),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[24]_i_1_n_0\,
      Q => sec_cnt(24),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[20]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[24]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[24]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[24]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sec_cnt0(24 downto 21),
      S(3 downto 0) => sec_cnt(24 downto 21)
    );
\sec_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[25]_i_1_n_0\,
      Q => sec_cnt(25),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[26]_i_2_n_0\,
      Q => sec_cnt(26),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[26]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[24]_i_2_n_0\,
      CO(3 downto 1) => \NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sec_cnt_reg[26]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => sec_cnt0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1 downto 0) => sec_cnt(26 downto 25)
    );
\sec_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[2]_i_1_n_0\,
      Q => sec_cnt(2),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[3]_i_1_n_0\,
      Q => sec_cnt(3),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[4]_i_1_n_0\,
      Q => sec_cnt(4),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sec_cnt_reg[4]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[4]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[4]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[4]_i_2_n_3\,
      CYINIT => sec_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sec_cnt0(4 downto 1),
      S(3 downto 0) => sec_cnt(4 downto 1)
    );
\sec_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[5]_i_1_n_0\,
      Q => sec_cnt(5),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[6]_i_1_n_0\,
      Q => sec_cnt(6),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[7]_i_1_n_0\,
      Q => sec_cnt(7),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[8]_i_1_n_0\,
      Q => sec_cnt(8),
      R => \command_htr1[31]_i_1_n_0\
    );
\sec_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sec_cnt_reg[4]_i_2_n_0\,
      CO(3) => \sec_cnt_reg[8]_i_2_n_0\,
      CO(2) => \sec_cnt_reg[8]_i_2_n_1\,
      CO(1) => \sec_cnt_reg[8]_i_2_n_2\,
      CO(0) => \sec_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sec_cnt0(8 downto 5),
      S(3 downto 0) => sec_cnt(8 downto 5)
    );
\sec_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_cnt[26]_i_1_n_0\,
      D => \sec_cnt[9]_i_1_n_0\,
      Q => sec_cnt(9),
      R => \command_htr1[31]_i_1_n_0\
    );
temp_calculated_10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => temp_calculated_10_carry_n_0,
      CO(2) => temp_calculated_10_carry_n_1,
      CO(1) => temp_calculated_10_carry_n_2,
      CO(0) => temp_calculated_10_carry_n_3,
      CYINIT => multOp_n_89,
      DI(3) => multOp_n_85,
      DI(2 downto 1) => B"00",
      DI(0) => multOp_n_88,
      O(3 downto 0) => in8(4 downto 1),
      S(3) => temp_calculated_10_carry_i_1_n_0,
      S(2) => multOp_n_86,
      S(1) => multOp_n_87,
      S(0) => temp_calculated_10_carry_i_2_n_0
    );
\temp_calculated_10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => temp_calculated_10_carry_n_0,
      CO(3) => \temp_calculated_10_carry__0_n_0\,
      CO(2) => \temp_calculated_10_carry__0_n_1\,
      CO(1) => \temp_calculated_10_carry__0_n_2\,
      CO(0) => \temp_calculated_10_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => multOp_n_81,
      DI(2) => multOp_n_82,
      DI(1) => '0',
      DI(0) => multOp_n_84,
      O(3 downto 0) => in8(8 downto 5),
      S(3) => \temp_calculated_10_carry__0_i_1_n_0\,
      S(2) => \temp_calculated_10_carry__0_i_2_n_0\,
      S(1) => multOp_n_83,
      S(0) => \temp_calculated_10_carry__0_i_3_n_0\
    );
\temp_calculated_10_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_81,
      O => \temp_calculated_10_carry__0_i_1_n_0\
    );
\temp_calculated_10_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_82,
      O => \temp_calculated_10_carry__0_i_2_n_0\
    );
\temp_calculated_10_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_84,
      O => \temp_calculated_10_carry__0_i_3_n_0\
    );
\temp_calculated_10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_calculated_10_carry__0_n_0\,
      CO(3) => \temp_calculated_10_carry__1_n_0\,
      CO(2) => \temp_calculated_10_carry__1_n_1\,
      CO(1) => \temp_calculated_10_carry__1_n_2\,
      CO(0) => \temp_calculated_10_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => multOp_n_78,
      DI(1) => multOp_n_79,
      DI(0) => '0',
      O(3 downto 0) => in8(12 downto 9),
      S(3) => multOp_n_77,
      S(2) => \temp_calculated_10_carry__1_i_1_n_0\,
      S(1) => \temp_calculated_10_carry__1_i_2_n_0\,
      S(0) => multOp_n_80
    );
\temp_calculated_10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_78,
      O => \temp_calculated_10_carry__1_i_1_n_0\
    );
\temp_calculated_10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_79,
      O => \temp_calculated_10_carry__1_i_2_n_0\
    );
\temp_calculated_10_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_calculated_10_carry__1_n_0\,
      CO(3) => \NLW_temp_calculated_10_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \temp_calculated_10_carry__2_n_1\,
      CO(1) => \NLW_temp_calculated_10_carry__2_CO_UNCONNECTED\(1),
      CO(0) => \temp_calculated_10_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => multOp_n_75,
      DI(0) => multOp_n_76,
      O(3 downto 2) => \NLW_temp_calculated_10_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in8(14 downto 13),
      S(3 downto 2) => B"01",
      S(1) => \temp_calculated_10_carry__2_i_1_n_0\,
      S(0) => \temp_calculated_10_carry__2_i_2_n_0\
    );
\temp_calculated_10_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_75,
      O => \temp_calculated_10_carry__2_i_1_n_0\
    );
\temp_calculated_10_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_76,
      O => \temp_calculated_10_carry__2_i_2_n_0\
    );
temp_calculated_10_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_85,
      O => temp_calculated_10_carry_i_1_n_0
    );
temp_calculated_10_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => multOp_n_88,
      O => temp_calculated_10_carry_i_2_n_0
    );
\temp_calculated_1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => multOp_n_89,
      O => \temp_calculated_1[0]_i_1_n_0\
    );
\temp_calculated_1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(10),
      O => \temp_calculated_1[10]_i_1_n_0\
    );
\temp_calculated_1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(11),
      O => \temp_calculated_1[11]_i_1_n_0\
    );
\temp_calculated_1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(12),
      O => \temp_calculated_1[12]_i_1_n_0\
    );
\temp_calculated_1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(13),
      O => \temp_calculated_1[13]_i_1_n_0\
    );
\temp_calculated_1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(14),
      O => \temp_calculated_1[14]_i_1_n_0\
    );
\temp_calculated_1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(1),
      O => \temp_calculated_1[1]_i_1_n_0\
    );
\temp_calculated_1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(2),
      O => \temp_calculated_1[2]_i_1_n_0\
    );
\temp_calculated_1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \temp_calculated_1[31]_i_1_n_0\
    );
\temp_calculated_1[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \temp_calculated_10_carry__2_n_1\,
      O => \temp_calculated_1[31]_i_2_n_0\
    );
\temp_calculated_1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(3),
      O => \temp_calculated_1[3]_i_1_n_0\
    );
\temp_calculated_1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(4),
      O => \temp_calculated_1[4]_i_1_n_0\
    );
\temp_calculated_1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(5),
      O => \temp_calculated_1[5]_i_1_n_0\
    );
\temp_calculated_1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(6),
      O => \temp_calculated_1[6]_i_1_n_0\
    );
\temp_calculated_1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(7),
      O => \temp_calculated_1[7]_i_1_n_0\
    );
\temp_calculated_1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(8),
      O => \temp_calculated_1[8]_i_1_n_0\
    );
\temp_calculated_1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in8(9),
      O => \temp_calculated_1[9]_i_1_n_0\
    );
\temp_calculated_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[0]_i_1_n_0\,
      Q => temp_calculated_1(0),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[10]_i_1_n_0\,
      Q => temp_calculated_1(10),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[11]_i_1_n_0\,
      Q => temp_calculated_1(11),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[12]_i_1_n_0\,
      Q => temp_calculated_1(12),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[13]_i_1_n_0\,
      Q => temp_calculated_1(13),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[14]_i_1_n_0\,
      Q => temp_calculated_1(14),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[1]_i_1_n_0\,
      Q => temp_calculated_1(1),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[2]_i_1_n_0\,
      Q => temp_calculated_1(2),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[31]_i_2_n_0\,
      Q => temp_calculated_1(31),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[3]_i_1_n_0\,
      Q => temp_calculated_1(3),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[4]_i_1_n_0\,
      Q => temp_calculated_1(4),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[5]_i_1_n_0\,
      Q => temp_calculated_1(5),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[6]_i_1_n_0\,
      Q => temp_calculated_1(6),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[7]_i_1_n_0\,
      Q => temp_calculated_1(7),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[8]_i_1_n_0\,
      Q => temp_calculated_1(8),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_1[9]_i_1_n_0\,
      Q => temp_calculated_1(9),
      R => \command_htr1[31]_i_1_n_0\
    );
temp_calculated_20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => temp_calculated_20_carry_n_0,
      CO(2) => temp_calculated_20_carry_n_1,
      CO(1) => temp_calculated_20_carry_n_2,
      CO(0) => temp_calculated_20_carry_n_3,
      CYINIT => \multOp__0_n_89\,
      DI(3) => \multOp__0_n_85\,
      DI(2 downto 1) => B"00",
      DI(0) => \multOp__0_n_88\,
      O(3 downto 0) => in9(4 downto 1),
      S(3) => temp_calculated_20_carry_i_1_n_0,
      S(2) => \multOp__0_n_86\,
      S(1) => \multOp__0_n_87\,
      S(0) => temp_calculated_20_carry_i_2_n_0
    );
\temp_calculated_20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => temp_calculated_20_carry_n_0,
      CO(3) => \temp_calculated_20_carry__0_n_0\,
      CO(2) => \temp_calculated_20_carry__0_n_1\,
      CO(1) => \temp_calculated_20_carry__0_n_2\,
      CO(0) => \temp_calculated_20_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__0_n_81\,
      DI(2) => \multOp__0_n_82\,
      DI(1) => '0',
      DI(0) => \multOp__0_n_84\,
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \temp_calculated_20_carry__0_i_1_n_0\,
      S(2) => \temp_calculated_20_carry__0_i_2_n_0\,
      S(1) => \multOp__0_n_83\,
      S(0) => \temp_calculated_20_carry__0_i_3_n_0\
    );
\temp_calculated_20_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_81\,
      O => \temp_calculated_20_carry__0_i_1_n_0\
    );
\temp_calculated_20_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_82\,
      O => \temp_calculated_20_carry__0_i_2_n_0\
    );
\temp_calculated_20_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_84\,
      O => \temp_calculated_20_carry__0_i_3_n_0\
    );
\temp_calculated_20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_calculated_20_carry__0_n_0\,
      CO(3) => \temp_calculated_20_carry__1_n_0\,
      CO(2) => \temp_calculated_20_carry__1_n_1\,
      CO(1) => \temp_calculated_20_carry__1_n_2\,
      CO(0) => \temp_calculated_20_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \multOp__0_n_78\,
      DI(1) => \multOp__0_n_79\,
      DI(0) => '0',
      O(3 downto 0) => in9(12 downto 9),
      S(3) => \multOp__0_n_77\,
      S(2) => \temp_calculated_20_carry__1_i_1_n_0\,
      S(1) => \temp_calculated_20_carry__1_i_2_n_0\,
      S(0) => \multOp__0_n_80\
    );
\temp_calculated_20_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_78\,
      O => \temp_calculated_20_carry__1_i_1_n_0\
    );
\temp_calculated_20_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_79\,
      O => \temp_calculated_20_carry__1_i_2_n_0\
    );
\temp_calculated_20_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_calculated_20_carry__1_n_0\,
      CO(3) => \NLW_temp_calculated_20_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \temp_calculated_20_carry__2_n_1\,
      CO(1) => \NLW_temp_calculated_20_carry__2_CO_UNCONNECTED\(1),
      CO(0) => \temp_calculated_20_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \multOp__0_n_75\,
      DI(0) => \multOp__0_n_76\,
      O(3 downto 2) => \NLW_temp_calculated_20_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in9(14 downto 13),
      S(3 downto 2) => B"01",
      S(1) => \temp_calculated_20_carry__2_i_1_n_0\,
      S(0) => \temp_calculated_20_carry__2_i_2_n_0\
    );
\temp_calculated_20_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_75\,
      O => \temp_calculated_20_carry__2_i_1_n_0\
    );
\temp_calculated_20_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_76\,
      O => \temp_calculated_20_carry__2_i_2_n_0\
    );
temp_calculated_20_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_85\,
      O => temp_calculated_20_carry_i_1_n_0
    );
temp_calculated_20_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \multOp__0_n_88\,
      O => temp_calculated_20_carry_i_2_n_0
    );
\temp_calculated_2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \multOp__0_n_89\,
      O => \temp_calculated_2[0]_i_1_n_0\
    );
\temp_calculated_2[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(10),
      O => \temp_calculated_2[10]_i_1_n_0\
    );
\temp_calculated_2[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(11),
      O => \temp_calculated_2[11]_i_1_n_0\
    );
\temp_calculated_2[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(12),
      O => \temp_calculated_2[12]_i_1_n_0\
    );
\temp_calculated_2[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(13),
      O => \temp_calculated_2[13]_i_1_n_0\
    );
\temp_calculated_2[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(14),
      O => \temp_calculated_2[14]_i_1_n_0\
    );
\temp_calculated_2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(1),
      O => \temp_calculated_2[1]_i_1_n_0\
    );
\temp_calculated_2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(2),
      O => \temp_calculated_2[2]_i_1_n_0\
    );
\temp_calculated_2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \temp_calculated_20_carry__2_n_1\,
      O => \temp_calculated_2[31]_i_1_n_0\
    );
\temp_calculated_2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(3),
      O => \temp_calculated_2[3]_i_1_n_0\
    );
\temp_calculated_2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(4),
      O => \temp_calculated_2[4]_i_1_n_0\
    );
\temp_calculated_2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(5),
      O => \temp_calculated_2[5]_i_1_n_0\
    );
\temp_calculated_2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(6),
      O => \temp_calculated_2[6]_i_1_n_0\
    );
\temp_calculated_2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(7),
      O => \temp_calculated_2[7]_i_1_n_0\
    );
\temp_calculated_2[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(8),
      O => \temp_calculated_2[8]_i_1_n_0\
    );
\temp_calculated_2[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => in9(9),
      O => \temp_calculated_2[9]_i_1_n_0\
    );
\temp_calculated_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[0]_i_1_n_0\,
      Q => temp_calculated_2(0),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[10]_i_1_n_0\,
      Q => temp_calculated_2(10),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[11]_i_1_n_0\,
      Q => temp_calculated_2(11),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[12]_i_1_n_0\,
      Q => temp_calculated_2(12),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[13]_i_1_n_0\,
      Q => temp_calculated_2(13),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[14]_i_1_n_0\,
      Q => temp_calculated_2(14),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[1]_i_1_n_0\,
      Q => temp_calculated_2(1),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[2]_i_1_n_0\,
      Q => temp_calculated_2(2),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[31]_i_1_n_0\,
      Q => temp_calculated_2(31),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[3]_i_1_n_0\,
      Q => temp_calculated_2(3),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[4]_i_1_n_0\,
      Q => temp_calculated_2(4),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[5]_i_1_n_0\,
      Q => temp_calculated_2(5),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[6]_i_1_n_0\,
      Q => temp_calculated_2(6),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[7]_i_1_n_0\,
      Q => temp_calculated_2(7),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[8]_i_1_n_0\,
      Q => temp_calculated_2(8),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_calculated_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_calculated_1[31]_i_1_n_0\,
      D => \temp_calculated_2[9]_i_1_n_0\,
      Q => temp_calculated_2(9),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(0),
      O => \temp_data_i[0]_i_1_n_0\
    );
\temp_data_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(10),
      O => \temp_data_i[10]_i_1_n_0\
    );
\temp_data_i[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(11),
      O => \temp_data_i[11]_i_1_n_0\
    );
\temp_data_i[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(12),
      O => \temp_data_i[12]_i_1_n_0\
    );
\temp_data_i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(13),
      O => \temp_data_i[13]_i_1_n_0\
    );
\temp_data_i[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(14),
      O => \temp_data_i[14]_i_1_n_0\
    );
\temp_data_i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(15),
      O => \temp_data_i[15]_i_1_n_0\
    );
\temp_data_i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(16),
      O => \temp_data_i[16]_i_1_n_0\
    );
\temp_data_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(17),
      O => \temp_data_i[17]_i_1_n_0\
    );
\temp_data_i[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(18),
      O => \temp_data_i[18]_i_1_n_0\
    );
\temp_data_i[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(19),
      O => \temp_data_i[19]_i_1_n_0\
    );
\temp_data_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(1),
      O => \temp_data_i[1]_i_1_n_0\
    );
\temp_data_i[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(20),
      O => \temp_data_i[20]_i_1_n_0\
    );
\temp_data_i[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(21),
      O => \temp_data_i[21]_i_1_n_0\
    );
\temp_data_i[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(22),
      O => \temp_data_i[22]_i_1_n_0\
    );
\temp_data_i[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(23),
      O => \temp_data_i[23]_i_1_n_0\
    );
\temp_data_i[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(24),
      O => \temp_data_i[24]_i_1_n_0\
    );
\temp_data_i[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(25),
      O => \temp_data_i[25]_i_1_n_0\
    );
\temp_data_i[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(26),
      O => \temp_data_i[26]_i_1_n_0\
    );
\temp_data_i[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(27),
      O => \temp_data_i[27]_i_1_n_0\
    );
\temp_data_i[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(28),
      O => \temp_data_i[28]_i_1_n_0\
    );
\temp_data_i[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(29),
      O => \temp_data_i[29]_i_1_n_0\
    );
\temp_data_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(2),
      O => \temp_data_i[2]_i_1_n_0\
    );
\temp_data_i[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(30),
      O => \temp_data_i[30]_i_1_n_0\
    );
\temp_data_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => temp_DV,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \temp_data_i[31]_i_1_n_0\
    );
\temp_data_i[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(31),
      O => \temp_data_i[31]_i_2_n_0\
    );
\temp_data_i[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(3),
      O => \temp_data_i[3]_i_1_n_0\
    );
\temp_data_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(4),
      O => \temp_data_i[4]_i_1_n_0\
    );
\temp_data_i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(5),
      O => \temp_data_i[5]_i_1_n_0\
    );
\temp_data_i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(6),
      O => \temp_data_i[6]_i_1_n_0\
    );
\temp_data_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(7),
      O => \temp_data_i[7]_i_1_n_0\
    );
\temp_data_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(8),
      O => \temp_data_i[8]_i_1_n_0\
    );
\temp_data_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => temp_data(9),
      O => \temp_data_i[9]_i_1_n_0\
    );
\temp_data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[0]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[0]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[10]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[10]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[11]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[11]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[12]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[12]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[13]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[13]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[14]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[14]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[15]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[15]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[16]_i_1_n_0\,
      Q => in7(0),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[17]_i_1_n_0\,
      Q => in7(1),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[18]_i_1_n_0\,
      Q => in7(2),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[19]_i_1_n_0\,
      Q => in7(3),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[1]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[1]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[20]_i_1_n_0\,
      Q => in7(4),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[21]_i_1_n_0\,
      Q => in7(5),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[22]_i_1_n_0\,
      Q => in7(6),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[23]_i_1_n_0\,
      Q => in7(7),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[24]_i_1_n_0\,
      Q => in7(8),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[25]_i_1_n_0\,
      Q => in7(9),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[26]_i_1_n_0\,
      Q => in7(10),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[27]_i_1_n_0\,
      Q => in7(11),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[28]_i_1_n_0\,
      Q => in7(12),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[29]_i_1_n_0\,
      Q => in7(13),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[2]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[2]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[30]_i_1_n_0\,
      Q => in7(14),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[31]_i_2_n_0\,
      Q => in7(15),
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[3]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[3]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[4]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[4]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[5]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[5]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[6]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[6]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[7]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[7]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[8]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[8]\,
      R => \command_htr1[31]_i_1_n_0\
    );
\temp_data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \temp_data_i[31]_i_1_n_0\,
      D => \temp_data_i[9]_i_1_n_0\,
      Q => \temp_data_i_reg_n_0_[9]\,
      R => \command_htr1[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM_HTR_CALC_0_0 is
  port (
    clk : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    temp_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV : in STD_LOGIC;
    HTR_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    command_htr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    command_htr2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PCB_All_SRAM_HTR_CALC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_HTR_CALC_0_0 : entity is "PCB_All_SRAM_HTR_CALC_0_0,HTR_CALC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_HTR_CALC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_HTR_CALC_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of PCB_All_SRAM_HTR_CALC_0_0 : entity is "HTR_CALC,Vivado 2024.2";
end PCB_All_SRAM_HTR_CALC_0_0;

architecture STRUCTURE of PCB_All_SRAM_HTR_CALC_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^command_htr1\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^command_htr2\ : STD_LOGIC_VECTOR ( 31 downto 1 );
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
  command_htr1(31) <= \^command_htr2\(31);
  command_htr1(30) <= \<const0>\;
  command_htr1(29) <= \<const0>\;
  command_htr1(28) <= \<const0>\;
  command_htr1(27) <= \<const0>\;
  command_htr1(26) <= \<const0>\;
  command_htr1(25) <= \<const0>\;
  command_htr1(24) <= \<const0>\;
  command_htr1(23) <= \<const0>\;
  command_htr1(22) <= \<const0>\;
  command_htr1(21) <= \<const0>\;
  command_htr1(20) <= \<const0>\;
  command_htr1(19) <= \<const0>\;
  command_htr1(18) <= \<const0>\;
  command_htr1(17) <= \<const0>\;
  command_htr1(16) <= \<const0>\;
  command_htr1(15) <= \<const0>\;
  command_htr1(14) <= \<const0>\;
  command_htr1(13) <= \<const0>\;
  command_htr1(12) <= \<const0>\;
  command_htr1(11) <= \<const0>\;
  command_htr1(10) <= \<const0>\;
  command_htr1(9) <= \<const0>\;
  command_htr1(8) <= \<const0>\;
  command_htr1(7) <= \<const0>\;
  command_htr1(6) <= \<const0>\;
  command_htr1(5) <= \<const0>\;
  command_htr1(4) <= \<const0>\;
  command_htr1(3) <= \^command_htr1\(3);
  command_htr1(2) <= \<const0>\;
  command_htr1(1) <= \^command_htr1\(3);
  command_htr1(0) <= \<const0>\;
  command_htr2(31) <= \^command_htr2\(31);
  command_htr2(30) <= \<const0>\;
  command_htr2(29) <= \<const0>\;
  command_htr2(28) <= \<const0>\;
  command_htr2(27) <= \<const0>\;
  command_htr2(26) <= \<const0>\;
  command_htr2(25) <= \<const0>\;
  command_htr2(24) <= \<const0>\;
  command_htr2(23) <= \<const0>\;
  command_htr2(22) <= \<const0>\;
  command_htr2(21) <= \<const0>\;
  command_htr2(20) <= \<const0>\;
  command_htr2(19) <= \<const0>\;
  command_htr2(18) <= \<const0>\;
  command_htr2(17) <= \<const0>\;
  command_htr2(16) <= \<const0>\;
  command_htr2(15) <= \<const0>\;
  command_htr2(14) <= \<const0>\;
  command_htr2(13) <= \<const0>\;
  command_htr2(12) <= \<const0>\;
  command_htr2(11) <= \<const0>\;
  command_htr2(10) <= \<const0>\;
  command_htr2(9) <= \<const0>\;
  command_htr2(8) <= \<const0>\;
  command_htr2(7) <= \<const0>\;
  command_htr2(6) <= \<const0>\;
  command_htr2(5) <= \<const0>\;
  command_htr2(4) <= \<const0>\;
  command_htr2(3) <= \^command_htr2\(1);
  command_htr2(2) <= \<const0>\;
  command_htr2(1) <= \^command_htr2\(1);
  command_htr2(0) <= \<const0>\;
  led1 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC
     port map (
      HTR_request => HTR_request,
      HTR_rst => HTR_rst,
      I2C_read_done => I2C_read_done,
      clk => clk,
      command_htr1(0) => \^command_htr1\(3),
      command_htr2(1) => \^command_htr2\(31),
      command_htr2(0) => \^command_htr2\(1),
      temp_DV => temp_DV,
      temp_data(31 downto 0) => temp_data(31 downto 0)
    );
end STRUCTURE;

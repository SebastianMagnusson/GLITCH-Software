// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 11:25:44 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_CALC_0_0/PCB_All_SRAM_HTR_CALC_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_HTR_CALC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_HTR_CALC_0_0,HTR_CALC,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "HTR_CALC,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_HTR_CALC_0_0
   (clk,
    HTR_rst,
    temp_data,
    temp_DV,
    HTR_request,
    I2C_read_done,
    command_htr1,
    command_htr2,
    led1);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  input [31:0]temp_data;
  input temp_DV;
  output HTR_request;
  output I2C_read_done;
  output [31:0]command_htr1;
  output [31:0]command_htr2;
  output led1;

  wire \<const0> ;
  wire HTR_request;
  wire HTR_rst;
  wire I2C_read_done;
  wire clk;
  wire [3:3]\^command_htr1 ;
  wire [31:1]\^command_htr2 ;
  wire temp_DV;
  wire [31:0]temp_data;

  assign command_htr1[31] = \^command_htr2 [31];
  assign command_htr1[30] = \<const0> ;
  assign command_htr1[29] = \<const0> ;
  assign command_htr1[28] = \<const0> ;
  assign command_htr1[27] = \<const0> ;
  assign command_htr1[26] = \<const0> ;
  assign command_htr1[25] = \<const0> ;
  assign command_htr1[24] = \<const0> ;
  assign command_htr1[23] = \<const0> ;
  assign command_htr1[22] = \<const0> ;
  assign command_htr1[21] = \<const0> ;
  assign command_htr1[20] = \<const0> ;
  assign command_htr1[19] = \<const0> ;
  assign command_htr1[18] = \<const0> ;
  assign command_htr1[17] = \<const0> ;
  assign command_htr1[16] = \<const0> ;
  assign command_htr1[15] = \<const0> ;
  assign command_htr1[14] = \<const0> ;
  assign command_htr1[13] = \<const0> ;
  assign command_htr1[12] = \<const0> ;
  assign command_htr1[11] = \<const0> ;
  assign command_htr1[10] = \<const0> ;
  assign command_htr1[9] = \<const0> ;
  assign command_htr1[8] = \<const0> ;
  assign command_htr1[7] = \<const0> ;
  assign command_htr1[6] = \<const0> ;
  assign command_htr1[5] = \<const0> ;
  assign command_htr1[4] = \<const0> ;
  assign command_htr1[3] = \^command_htr1 [3];
  assign command_htr1[2] = \<const0> ;
  assign command_htr1[1] = \^command_htr1 [3];
  assign command_htr1[0] = \<const0> ;
  assign command_htr2[31] = \^command_htr2 [31];
  assign command_htr2[30] = \<const0> ;
  assign command_htr2[29] = \<const0> ;
  assign command_htr2[28] = \<const0> ;
  assign command_htr2[27] = \<const0> ;
  assign command_htr2[26] = \<const0> ;
  assign command_htr2[25] = \<const0> ;
  assign command_htr2[24] = \<const0> ;
  assign command_htr2[23] = \<const0> ;
  assign command_htr2[22] = \<const0> ;
  assign command_htr2[21] = \<const0> ;
  assign command_htr2[20] = \<const0> ;
  assign command_htr2[19] = \<const0> ;
  assign command_htr2[18] = \<const0> ;
  assign command_htr2[17] = \<const0> ;
  assign command_htr2[16] = \<const0> ;
  assign command_htr2[15] = \<const0> ;
  assign command_htr2[14] = \<const0> ;
  assign command_htr2[13] = \<const0> ;
  assign command_htr2[12] = \<const0> ;
  assign command_htr2[11] = \<const0> ;
  assign command_htr2[10] = \<const0> ;
  assign command_htr2[9] = \<const0> ;
  assign command_htr2[8] = \<const0> ;
  assign command_htr2[7] = \<const0> ;
  assign command_htr2[6] = \<const0> ;
  assign command_htr2[5] = \<const0> ;
  assign command_htr2[4] = \<const0> ;
  assign command_htr2[3] = \^command_htr2 [1];
  assign command_htr2[2] = \<const0> ;
  assign command_htr2[1] = \^command_htr2 [1];
  assign command_htr2[0] = \<const0> ;
  assign led1 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC U0
       (.HTR_request(HTR_request),
        .HTR_rst(HTR_rst),
        .I2C_read_done(I2C_read_done),
        .clk(clk),
        .command_htr1(\^command_htr1 ),
        .command_htr2({\^command_htr2 [31],\^command_htr2 [1]}),
        .temp_DV(temp_DV),
        .temp_data(temp_data));
endmodule

(* ORIG_REF_NAME = "HTR_CALC" *) 
module PCB_All_SRAM_HTR_CALC_0_0_HTR_CALC
   (command_htr2,
    HTR_request,
    I2C_read_done,
    command_htr1,
    clk,
    temp_DV,
    temp_data,
    HTR_rst);
  output [1:0]command_htr2;
  output HTR_request;
  output I2C_read_done;
  output [0:0]command_htr1;
  input clk;
  input temp_DV;
  input [31:0]temp_data;
  input HTR_rst;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire HTR_request;
  wire HTR_request_i_1_n_0;
  wire HTR_rst;
  wire I2C_read_done;
  wire I2C_read_done_i_1_n_0;
  wire __9;
  wire clk;
  wire [0:0]command_htr1;
  wire command_htr11_carry__0_i_1_n_0;
  wire command_htr11_carry__0_i_2_n_0;
  wire command_htr11_carry__0_i_3_n_0;
  wire command_htr11_carry__0_i_4_n_0;
  wire command_htr11_carry__0_n_0;
  wire command_htr11_carry__0_n_1;
  wire command_htr11_carry__0_n_2;
  wire command_htr11_carry__0_n_3;
  wire command_htr11_carry__1_i_1_n_0;
  wire command_htr11_carry__1_i_2_n_0;
  wire command_htr11_carry__1_i_3_n_0;
  wire command_htr11_carry__1_i_4_n_0;
  wire command_htr11_carry__1_n_0;
  wire command_htr11_carry__1_n_1;
  wire command_htr11_carry__1_n_2;
  wire command_htr11_carry__1_n_3;
  wire command_htr11_carry__2_i_1_n_0;
  wire command_htr11_carry__2_i_2_n_0;
  wire command_htr11_carry__2_n_2;
  wire command_htr11_carry__2_n_3;
  wire command_htr11_carry_i_1_n_0;
  wire command_htr11_carry_i_2_n_0;
  wire command_htr11_carry_i_3_n_0;
  wire command_htr11_carry_i_4_n_0;
  wire command_htr11_carry_i_5_n_0;
  wire command_htr11_carry_i_6_n_0;
  wire command_htr11_carry_i_7_n_0;
  wire command_htr11_carry_i_8_n_0;
  wire command_htr11_carry_n_0;
  wire command_htr11_carry_n_1;
  wire command_htr11_carry_n_2;
  wire command_htr11_carry_n_3;
  wire \command_htr11_inferred__0/i__carry__0_n_0 ;
  wire \command_htr11_inferred__0/i__carry__0_n_1 ;
  wire \command_htr11_inferred__0/i__carry__0_n_2 ;
  wire \command_htr11_inferred__0/i__carry__0_n_3 ;
  wire \command_htr11_inferred__0/i__carry__1_n_0 ;
  wire \command_htr11_inferred__0/i__carry__1_n_1 ;
  wire \command_htr11_inferred__0/i__carry__1_n_2 ;
  wire \command_htr11_inferred__0/i__carry__1_n_3 ;
  wire \command_htr11_inferred__0/i__carry__2_n_0 ;
  wire \command_htr11_inferred__0/i__carry__2_n_1 ;
  wire \command_htr11_inferred__0/i__carry__2_n_2 ;
  wire \command_htr11_inferred__0/i__carry__2_n_3 ;
  wire \command_htr11_inferred__0/i__carry_n_0 ;
  wire \command_htr11_inferred__0/i__carry_n_1 ;
  wire \command_htr11_inferred__0/i__carry_n_2 ;
  wire \command_htr11_inferred__0/i__carry_n_3 ;
  wire \command_htr1[1]_i_1_n_0 ;
  wire \command_htr1[31]_i_1_n_0 ;
  wire \command_htr1[31]_i_2_n_0 ;
  wire [1:0]command_htr2;
  wire command_htr21_carry__0_i_1_n_0;
  wire command_htr21_carry__0_i_2_n_0;
  wire command_htr21_carry__0_i_3_n_0;
  wire command_htr21_carry__0_i_4_n_0;
  wire command_htr21_carry__0_n_0;
  wire command_htr21_carry__0_n_1;
  wire command_htr21_carry__0_n_2;
  wire command_htr21_carry__0_n_3;
  wire command_htr21_carry__1_i_1_n_0;
  wire command_htr21_carry__1_i_2_n_0;
  wire command_htr21_carry__1_i_3_n_0;
  wire command_htr21_carry__1_i_4_n_0;
  wire command_htr21_carry__1_n_0;
  wire command_htr21_carry__1_n_1;
  wire command_htr21_carry__1_n_2;
  wire command_htr21_carry__1_n_3;
  wire command_htr21_carry__2_i_1_n_0;
  wire command_htr21_carry__2_i_2_n_0;
  wire command_htr21_carry__2_n_2;
  wire command_htr21_carry__2_n_3;
  wire command_htr21_carry_i_1_n_0;
  wire command_htr21_carry_i_2_n_0;
  wire command_htr21_carry_i_3_n_0;
  wire command_htr21_carry_i_4_n_0;
  wire command_htr21_carry_i_5_n_0;
  wire command_htr21_carry_i_6_n_0;
  wire command_htr21_carry_i_7_n_0;
  wire command_htr21_carry_i_8_n_0;
  wire command_htr21_carry_n_0;
  wire command_htr21_carry_n_1;
  wire command_htr21_carry_n_2;
  wire command_htr21_carry_n_3;
  wire \command_htr21_inferred__0/i__carry__0_n_0 ;
  wire \command_htr21_inferred__0/i__carry__0_n_1 ;
  wire \command_htr21_inferred__0/i__carry__0_n_2 ;
  wire \command_htr21_inferred__0/i__carry__0_n_3 ;
  wire \command_htr21_inferred__0/i__carry__1_n_0 ;
  wire \command_htr21_inferred__0/i__carry__1_n_1 ;
  wire \command_htr21_inferred__0/i__carry__1_n_2 ;
  wire \command_htr21_inferred__0/i__carry__1_n_3 ;
  wire \command_htr21_inferred__0/i__carry__2_n_0 ;
  wire \command_htr21_inferred__0/i__carry__2_n_1 ;
  wire \command_htr21_inferred__0/i__carry__2_n_2 ;
  wire \command_htr21_inferred__0/i__carry__2_n_3 ;
  wire \command_htr21_inferred__0/i__carry_n_0 ;
  wire \command_htr21_inferred__0/i__carry_n_1 ;
  wire \command_htr21_inferred__0/i__carry_n_2 ;
  wire \command_htr21_inferred__0/i__carry_n_3 ;
  wire \command_htr2[3]_i_1_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire [15:0]in7;
  wire [14:1]in8;
  wire [14:1]in9;
  wire multOp__0_i_10_n_0;
  wire multOp__0_i_11_n_0;
  wire multOp__0_i_12_n_0;
  wire multOp__0_i_13_n_0;
  wire multOp__0_i_14_n_0;
  wire multOp__0_i_15_n_0;
  wire multOp__0_i_16_n_0;
  wire multOp__0_i_1_n_0;
  wire multOp__0_i_2_n_0;
  wire multOp__0_i_3_n_0;
  wire multOp__0_i_4_n_0;
  wire multOp__0_i_5_n_0;
  wire multOp__0_i_6_n_0;
  wire multOp__0_i_7_n_0;
  wire multOp__0_i_8_n_0;
  wire multOp__0_i_9_n_0;
  wire multOp__0_n_100;
  wire multOp__0_n_101;
  wire multOp__0_n_102;
  wire multOp__0_n_103;
  wire multOp__0_n_104;
  wire multOp__0_n_105;
  wire multOp__0_n_75;
  wire multOp__0_n_76;
  wire multOp__0_n_77;
  wire multOp__0_n_78;
  wire multOp__0_n_79;
  wire multOp__0_n_80;
  wire multOp__0_n_81;
  wire multOp__0_n_82;
  wire multOp__0_n_83;
  wire multOp__0_n_84;
  wire multOp__0_n_85;
  wire multOp__0_n_86;
  wire multOp__0_n_87;
  wire multOp__0_n_88;
  wire multOp__0_n_89;
  wire multOp__0_n_90;
  wire multOp__0_n_91;
  wire multOp__0_n_92;
  wire multOp__0_n_93;
  wire multOp__0_n_94;
  wire multOp__0_n_95;
  wire multOp__0_n_96;
  wire multOp__0_n_97;
  wire multOp__0_n_98;
  wire multOp__0_n_99;
  wire multOp_i_10_n_0;
  wire multOp_i_11_n_0;
  wire multOp_i_12_n_0;
  wire multOp_i_13_n_0;
  wire multOp_i_14_n_0;
  wire multOp_i_15_n_0;
  wire multOp_i_16_n_0;
  wire multOp_i_17_n_0;
  wire multOp_i_2_n_0;
  wire multOp_i_3_n_0;
  wire multOp_i_4_n_0;
  wire multOp_i_5_n_0;
  wire multOp_i_6_n_0;
  wire multOp_i_7_n_0;
  wire multOp_i_8_n_0;
  wire multOp_i_9_n_0;
  wire multOp_n_100;
  wire multOp_n_101;
  wire multOp_n_102;
  wire multOp_n_103;
  wire multOp_n_104;
  wire multOp_n_105;
  wire multOp_n_75;
  wire multOp_n_76;
  wire multOp_n_77;
  wire multOp_n_78;
  wire multOp_n_79;
  wire multOp_n_80;
  wire multOp_n_81;
  wire multOp_n_82;
  wire multOp_n_83;
  wire multOp_n_84;
  wire multOp_n_85;
  wire multOp_n_86;
  wire multOp_n_87;
  wire multOp_n_88;
  wire multOp_n_89;
  wire multOp_n_90;
  wire multOp_n_91;
  wire multOp_n_92;
  wire multOp_n_93;
  wire multOp_n_94;
  wire multOp_n_95;
  wire multOp_n_96;
  wire multOp_n_97;
  wire multOp_n_98;
  wire multOp_n_99;
  wire p_0_in;
  wire [26:0]sec_cnt;
  wire [26:1]sec_cnt0;
  wire sec_cnt1_carry__0_i_1_n_0;
  wire sec_cnt1_carry__0_i_2_n_0;
  wire sec_cnt1_carry__0_i_3_n_0;
  wire sec_cnt1_carry__0_i_4_n_0;
  wire sec_cnt1_carry__0_i_5_n_0;
  wire sec_cnt1_carry__0_i_6_n_0;
  wire sec_cnt1_carry__0_i_7_n_0;
  wire sec_cnt1_carry__0_i_8_n_0;
  wire sec_cnt1_carry__0_n_0;
  wire sec_cnt1_carry__0_n_1;
  wire sec_cnt1_carry__0_n_2;
  wire sec_cnt1_carry__0_n_3;
  wire sec_cnt1_carry__1_i_1_n_0;
  wire sec_cnt1_carry__1_i_2_n_0;
  wire sec_cnt1_carry__1_i_3_n_0;
  wire sec_cnt1_carry__1_n_3;
  wire sec_cnt1_carry_i_1_n_0;
  wire sec_cnt1_carry_i_2_n_0;
  wire sec_cnt1_carry_i_3_n_0;
  wire sec_cnt1_carry_i_4_n_0;
  wire sec_cnt1_carry_i_5_n_0;
  wire sec_cnt1_carry_i_6_n_0;
  wire sec_cnt1_carry_i_7_n_0;
  wire sec_cnt1_carry_n_0;
  wire sec_cnt1_carry_n_1;
  wire sec_cnt1_carry_n_2;
  wire sec_cnt1_carry_n_3;
  wire \sec_cnt[0]_i_1_n_0 ;
  wire \sec_cnt[10]_i_1_n_0 ;
  wire \sec_cnt[11]_i_1_n_0 ;
  wire \sec_cnt[12]_i_1_n_0 ;
  wire \sec_cnt[13]_i_1_n_0 ;
  wire \sec_cnt[14]_i_1_n_0 ;
  wire \sec_cnt[15]_i_1_n_0 ;
  wire \sec_cnt[16]_i_1_n_0 ;
  wire \sec_cnt[17]_i_1_n_0 ;
  wire \sec_cnt[18]_i_1_n_0 ;
  wire \sec_cnt[19]_i_1_n_0 ;
  wire \sec_cnt[1]_i_1_n_0 ;
  wire \sec_cnt[20]_i_1_n_0 ;
  wire \sec_cnt[21]_i_1_n_0 ;
  wire \sec_cnt[22]_i_1_n_0 ;
  wire \sec_cnt[23]_i_1_n_0 ;
  wire \sec_cnt[24]_i_1_n_0 ;
  wire \sec_cnt[25]_i_1_n_0 ;
  wire \sec_cnt[26]_i_1_n_0 ;
  wire \sec_cnt[26]_i_2_n_0 ;
  wire \sec_cnt[2]_i_1_n_0 ;
  wire \sec_cnt[3]_i_1_n_0 ;
  wire \sec_cnt[4]_i_1_n_0 ;
  wire \sec_cnt[5]_i_1_n_0 ;
  wire \sec_cnt[6]_i_1_n_0 ;
  wire \sec_cnt[7]_i_1_n_0 ;
  wire \sec_cnt[8]_i_1_n_0 ;
  wire \sec_cnt[9]_i_1_n_0 ;
  wire \sec_cnt_reg[12]_i_2_n_0 ;
  wire \sec_cnt_reg[12]_i_2_n_1 ;
  wire \sec_cnt_reg[12]_i_2_n_2 ;
  wire \sec_cnt_reg[12]_i_2_n_3 ;
  wire \sec_cnt_reg[16]_i_2_n_0 ;
  wire \sec_cnt_reg[16]_i_2_n_1 ;
  wire \sec_cnt_reg[16]_i_2_n_2 ;
  wire \sec_cnt_reg[16]_i_2_n_3 ;
  wire \sec_cnt_reg[20]_i_2_n_0 ;
  wire \sec_cnt_reg[20]_i_2_n_1 ;
  wire \sec_cnt_reg[20]_i_2_n_2 ;
  wire \sec_cnt_reg[20]_i_2_n_3 ;
  wire \sec_cnt_reg[24]_i_2_n_0 ;
  wire \sec_cnt_reg[24]_i_2_n_1 ;
  wire \sec_cnt_reg[24]_i_2_n_2 ;
  wire \sec_cnt_reg[24]_i_2_n_3 ;
  wire \sec_cnt_reg[26]_i_3_n_3 ;
  wire \sec_cnt_reg[4]_i_2_n_0 ;
  wire \sec_cnt_reg[4]_i_2_n_1 ;
  wire \sec_cnt_reg[4]_i_2_n_2 ;
  wire \sec_cnt_reg[4]_i_2_n_3 ;
  wire \sec_cnt_reg[8]_i_2_n_0 ;
  wire \sec_cnt_reg[8]_i_2_n_1 ;
  wire \sec_cnt_reg[8]_i_2_n_2 ;
  wire \sec_cnt_reg[8]_i_2_n_3 ;
  wire temp_DV;
  wire [31:0]temp_calculated_1;
  wire temp_calculated_10_carry__0_i_1_n_0;
  wire temp_calculated_10_carry__0_i_2_n_0;
  wire temp_calculated_10_carry__0_i_3_n_0;
  wire temp_calculated_10_carry__0_n_0;
  wire temp_calculated_10_carry__0_n_1;
  wire temp_calculated_10_carry__0_n_2;
  wire temp_calculated_10_carry__0_n_3;
  wire temp_calculated_10_carry__1_i_1_n_0;
  wire temp_calculated_10_carry__1_i_2_n_0;
  wire temp_calculated_10_carry__1_n_0;
  wire temp_calculated_10_carry__1_n_1;
  wire temp_calculated_10_carry__1_n_2;
  wire temp_calculated_10_carry__1_n_3;
  wire temp_calculated_10_carry__2_i_1_n_0;
  wire temp_calculated_10_carry__2_i_2_n_0;
  wire temp_calculated_10_carry__2_n_1;
  wire temp_calculated_10_carry__2_n_3;
  wire temp_calculated_10_carry_i_1_n_0;
  wire temp_calculated_10_carry_i_2_n_0;
  wire temp_calculated_10_carry_n_0;
  wire temp_calculated_10_carry_n_1;
  wire temp_calculated_10_carry_n_2;
  wire temp_calculated_10_carry_n_3;
  wire \temp_calculated_1[0]_i_1_n_0 ;
  wire \temp_calculated_1[10]_i_1_n_0 ;
  wire \temp_calculated_1[11]_i_1_n_0 ;
  wire \temp_calculated_1[12]_i_1_n_0 ;
  wire \temp_calculated_1[13]_i_1_n_0 ;
  wire \temp_calculated_1[14]_i_1_n_0 ;
  wire \temp_calculated_1[1]_i_1_n_0 ;
  wire \temp_calculated_1[2]_i_1_n_0 ;
  wire \temp_calculated_1[31]_i_1_n_0 ;
  wire \temp_calculated_1[31]_i_2_n_0 ;
  wire \temp_calculated_1[3]_i_1_n_0 ;
  wire \temp_calculated_1[4]_i_1_n_0 ;
  wire \temp_calculated_1[5]_i_1_n_0 ;
  wire \temp_calculated_1[6]_i_1_n_0 ;
  wire \temp_calculated_1[7]_i_1_n_0 ;
  wire \temp_calculated_1[8]_i_1_n_0 ;
  wire \temp_calculated_1[9]_i_1_n_0 ;
  wire [31:0]temp_calculated_2;
  wire temp_calculated_20_carry__0_i_1_n_0;
  wire temp_calculated_20_carry__0_i_2_n_0;
  wire temp_calculated_20_carry__0_i_3_n_0;
  wire temp_calculated_20_carry__0_n_0;
  wire temp_calculated_20_carry__0_n_1;
  wire temp_calculated_20_carry__0_n_2;
  wire temp_calculated_20_carry__0_n_3;
  wire temp_calculated_20_carry__1_i_1_n_0;
  wire temp_calculated_20_carry__1_i_2_n_0;
  wire temp_calculated_20_carry__1_n_0;
  wire temp_calculated_20_carry__1_n_1;
  wire temp_calculated_20_carry__1_n_2;
  wire temp_calculated_20_carry__1_n_3;
  wire temp_calculated_20_carry__2_i_1_n_0;
  wire temp_calculated_20_carry__2_i_2_n_0;
  wire temp_calculated_20_carry__2_n_1;
  wire temp_calculated_20_carry__2_n_3;
  wire temp_calculated_20_carry_i_1_n_0;
  wire temp_calculated_20_carry_i_2_n_0;
  wire temp_calculated_20_carry_n_0;
  wire temp_calculated_20_carry_n_1;
  wire temp_calculated_20_carry_n_2;
  wire temp_calculated_20_carry_n_3;
  wire \temp_calculated_2[0]_i_1_n_0 ;
  wire \temp_calculated_2[10]_i_1_n_0 ;
  wire \temp_calculated_2[11]_i_1_n_0 ;
  wire \temp_calculated_2[12]_i_1_n_0 ;
  wire \temp_calculated_2[13]_i_1_n_0 ;
  wire \temp_calculated_2[14]_i_1_n_0 ;
  wire \temp_calculated_2[1]_i_1_n_0 ;
  wire \temp_calculated_2[2]_i_1_n_0 ;
  wire \temp_calculated_2[31]_i_1_n_0 ;
  wire \temp_calculated_2[3]_i_1_n_0 ;
  wire \temp_calculated_2[4]_i_1_n_0 ;
  wire \temp_calculated_2[5]_i_1_n_0 ;
  wire \temp_calculated_2[6]_i_1_n_0 ;
  wire \temp_calculated_2[7]_i_1_n_0 ;
  wire \temp_calculated_2[8]_i_1_n_0 ;
  wire \temp_calculated_2[9]_i_1_n_0 ;
  wire [31:0]temp_data;
  wire \temp_data_i[0]_i_1_n_0 ;
  wire \temp_data_i[10]_i_1_n_0 ;
  wire \temp_data_i[11]_i_1_n_0 ;
  wire \temp_data_i[12]_i_1_n_0 ;
  wire \temp_data_i[13]_i_1_n_0 ;
  wire \temp_data_i[14]_i_1_n_0 ;
  wire \temp_data_i[15]_i_1_n_0 ;
  wire \temp_data_i[16]_i_1_n_0 ;
  wire \temp_data_i[17]_i_1_n_0 ;
  wire \temp_data_i[18]_i_1_n_0 ;
  wire \temp_data_i[19]_i_1_n_0 ;
  wire \temp_data_i[1]_i_1_n_0 ;
  wire \temp_data_i[20]_i_1_n_0 ;
  wire \temp_data_i[21]_i_1_n_0 ;
  wire \temp_data_i[22]_i_1_n_0 ;
  wire \temp_data_i[23]_i_1_n_0 ;
  wire \temp_data_i[24]_i_1_n_0 ;
  wire \temp_data_i[25]_i_1_n_0 ;
  wire \temp_data_i[26]_i_1_n_0 ;
  wire \temp_data_i[27]_i_1_n_0 ;
  wire \temp_data_i[28]_i_1_n_0 ;
  wire \temp_data_i[29]_i_1_n_0 ;
  wire \temp_data_i[2]_i_1_n_0 ;
  wire \temp_data_i[30]_i_1_n_0 ;
  wire \temp_data_i[31]_i_1_n_0 ;
  wire \temp_data_i[31]_i_2_n_0 ;
  wire \temp_data_i[3]_i_1_n_0 ;
  wire \temp_data_i[4]_i_1_n_0 ;
  wire \temp_data_i[5]_i_1_n_0 ;
  wire \temp_data_i[6]_i_1_n_0 ;
  wire \temp_data_i[7]_i_1_n_0 ;
  wire \temp_data_i[8]_i_1_n_0 ;
  wire \temp_data_i[9]_i_1_n_0 ;
  wire \temp_data_i_reg_n_0_[0] ;
  wire \temp_data_i_reg_n_0_[10] ;
  wire \temp_data_i_reg_n_0_[11] ;
  wire \temp_data_i_reg_n_0_[12] ;
  wire \temp_data_i_reg_n_0_[13] ;
  wire \temp_data_i_reg_n_0_[14] ;
  wire \temp_data_i_reg_n_0_[15] ;
  wire \temp_data_i_reg_n_0_[1] ;
  wire \temp_data_i_reg_n_0_[2] ;
  wire \temp_data_i_reg_n_0_[3] ;
  wire \temp_data_i_reg_n_0_[4] ;
  wire \temp_data_i_reg_n_0_[5] ;
  wire \temp_data_i_reg_n_0_[6] ;
  wire \temp_data_i_reg_n_0_[7] ;
  wire \temp_data_i_reg_n_0_[8] ;
  wire \temp_data_i_reg_n_0_[9] ;
  wire [3:0]NLW_command_htr11_carry_O_UNCONNECTED;
  wire [3:0]NLW_command_htr11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_command_htr11_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_command_htr11_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_command_htr11_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_command_htr11_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_command_htr11_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_command_htr11_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_command_htr11_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_command_htr21_carry_O_UNCONNECTED;
  wire [3:0]NLW_command_htr21_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_command_htr21_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_command_htr21_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_command_htr21_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_command_htr21_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_command_htr21_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_command_htr21_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_command_htr21_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire NLW_multOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp_OVERFLOW_UNCONNECTED;
  wire NLW_multOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_multOp_P_UNCONNECTED;
  wire [47:0]NLW_multOp_PCOUT_UNCONNECTED;
  wire NLW_multOp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp__0_OVERFLOW_UNCONNECTED;
  wire NLW_multOp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp__0_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_multOp__0_P_UNCONNECTED;
  wire [47:0]NLW_multOp__0_PCOUT_UNCONNECTED;
  wire [3:0]NLW_sec_cnt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sec_cnt1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_sec_cnt1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sec_cnt1_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED ;
  wire [3:1]NLW_temp_calculated_10_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_temp_calculated_10_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_temp_calculated_20_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_temp_calculated_20_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_0_in),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(temp_DV),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_DV),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\command_htr1[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "calc:001000,send:010000,clean:100000,idle:000001,request:000010,convert:000100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F40)) 
    HTR_request_i_1
       (.I0(temp_DV),
        .I1(HTR_rst),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(HTR_request),
        .O(HTR_request_i_1_n_0));
  FDRE HTR_request_reg
       (.C(clk),
        .CE(1'b1),
        .D(HTR_request_i_1_n_0),
        .Q(HTR_request),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF555F777A000A000)) 
    I2C_read_done_i_1
       (.I0(HTR_rst),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(temp_DV),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(I2C_read_done),
        .O(I2C_read_done_i_1_n_0));
  FDRE I2C_read_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(I2C_read_done_i_1_n_0),
        .Q(I2C_read_done),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr11_carry
       (.CI(1'b0),
        .CO({command_htr11_carry_n_0,command_htr11_carry_n_1,command_htr11_carry_n_2,command_htr11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({command_htr11_carry_i_1_n_0,command_htr11_carry_i_2_n_0,command_htr11_carry_i_3_n_0,command_htr11_carry_i_4_n_0}),
        .O(NLW_command_htr11_carry_O_UNCONNECTED[3:0]),
        .S({command_htr11_carry_i_5_n_0,command_htr11_carry_i_6_n_0,command_htr11_carry_i_7_n_0,command_htr11_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr11_carry__0
       (.CI(command_htr11_carry_n_0),
        .CO({command_htr11_carry__0_n_0,command_htr11_carry__0_n_1,command_htr11_carry__0_n_2,command_htr11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_command_htr11_carry__0_O_UNCONNECTED[3:0]),
        .S({command_htr11_carry__0_i_1_n_0,command_htr11_carry__0_i_2_n_0,command_htr11_carry__0_i_3_n_0,command_htr11_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__0_i_1
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__0_i_2
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr11_carry__0_i_3
       (.I0(temp_calculated_1[14]),
        .I1(temp_calculated_1[31]),
        .O(command_htr11_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr11_carry__0_i_4
       (.I0(temp_calculated_1[12]),
        .I1(temp_calculated_1[13]),
        .O(command_htr11_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr11_carry__1
       (.CI(command_htr11_carry__0_n_0),
        .CO({command_htr11_carry__1_n_0,command_htr11_carry__1_n_1,command_htr11_carry__1_n_2,command_htr11_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_command_htr11_carry__1_O_UNCONNECTED[3:0]),
        .S({command_htr11_carry__1_i_1_n_0,command_htr11_carry__1_i_2_n_0,command_htr11_carry__1_i_3_n_0,command_htr11_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__1_i_1
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__1_i_2
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__1_i_3
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__1_i_4
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr11_carry__2
       (.CI(command_htr11_carry__1_n_0),
        .CO({NLW_command_htr11_carry__2_CO_UNCONNECTED[3:2],command_htr11_carry__2_n_2,command_htr11_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,temp_calculated_1[31],1'b0}),
        .O(NLW_command_htr11_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,command_htr11_carry__2_i_1_n_0,command_htr11_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__2_i_1
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr11_carry__2_i_2
       (.I0(temp_calculated_1[31]),
        .O(command_htr11_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr11_carry_i_1
       (.I0(temp_calculated_1[10]),
        .I1(temp_calculated_1[11]),
        .O(command_htr11_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    command_htr11_carry_i_2
       (.I0(temp_calculated_1[8]),
        .I1(temp_calculated_1[9]),
        .O(command_htr11_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    command_htr11_carry_i_3
       (.I0(temp_calculated_1[6]),
        .I1(temp_calculated_1[7]),
        .O(command_htr11_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr11_carry_i_4
       (.I0(temp_calculated_1[4]),
        .I1(temp_calculated_1[5]),
        .O(command_htr11_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    command_htr11_carry_i_5
       (.I0(temp_calculated_1[10]),
        .I1(temp_calculated_1[11]),
        .O(command_htr11_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    command_htr11_carry_i_6
       (.I0(temp_calculated_1[8]),
        .I1(temp_calculated_1[9]),
        .O(command_htr11_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    command_htr11_carry_i_7
       (.I0(temp_calculated_1[6]),
        .I1(temp_calculated_1[7]),
        .O(command_htr11_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    command_htr11_carry_i_8
       (.I0(temp_calculated_1[4]),
        .I1(temp_calculated_1[5]),
        .O(command_htr11_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr11_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\command_htr11_inferred__0/i__carry_n_0 ,\command_htr11_inferred__0/i__carry_n_1 ,\command_htr11_inferred__0/i__carry_n_2 ,\command_htr11_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,temp_calculated_1[5],i__carry_i_1_n_0,i__carry_i_2_n_0}),
        .O(\NLW_command_htr11_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr11_inferred__0/i__carry__0 
       (.CI(\command_htr11_inferred__0/i__carry_n_0 ),
        .CO({\command_htr11_inferred__0/i__carry__0_n_0 ,\command_htr11_inferred__0/i__carry__0_n_1 ,\command_htr11_inferred__0/i__carry__0_n_2 ,\command_htr11_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,temp_calculated_1[11],1'b0}),
        .O(\NLW_command_htr11_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr11_inferred__0/i__carry__1 
       (.CI(\command_htr11_inferred__0/i__carry__0_n_0 ),
        .CO({\command_htr11_inferred__0/i__carry__1_n_0 ,\command_htr11_inferred__0/i__carry__1_n_1 ,\command_htr11_inferred__0/i__carry__1_n_2 ,\command_htr11_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({temp_calculated_1[31],temp_calculated_1[31],temp_calculated_1[31],temp_calculated_1[31]}),
        .O(\NLW_command_htr11_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr11_inferred__0/i__carry__2 
       (.CI(\command_htr11_inferred__0/i__carry__1_n_0 ),
        .CO({\command_htr11_inferred__0/i__carry__2_n_0 ,\command_htr11_inferred__0/i__carry__2_n_1 ,\command_htr11_inferred__0/i__carry__2_n_2 ,\command_htr11_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,temp_calculated_1[31],temp_calculated_1[31],temp_calculated_1[31]}),
        .O(\NLW_command_htr11_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \command_htr1[1]_i_1 
       (.I0(command_htr11_carry__2_n_2),
        .I1(\command_htr11_inferred__0/i__carry__2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(command_htr1),
        .O(\command_htr1[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \command_htr1[31]_i_1 
       (.I0(HTR_rst),
        .O(\command_htr1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \command_htr1[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(command_htr2[1]),
        .O(\command_htr1[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \command_htr1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\command_htr1[1]_i_1_n_0 ),
        .Q(command_htr1),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \command_htr1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\command_htr1[31]_i_2_n_0 ),
        .Q(command_htr2[1]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr21_carry
       (.CI(1'b0),
        .CO({command_htr21_carry_n_0,command_htr21_carry_n_1,command_htr21_carry_n_2,command_htr21_carry_n_3}),
        .CYINIT(1'b0),
        .DI({command_htr21_carry_i_1_n_0,command_htr21_carry_i_2_n_0,command_htr21_carry_i_3_n_0,command_htr21_carry_i_4_n_0}),
        .O(NLW_command_htr21_carry_O_UNCONNECTED[3:0]),
        .S({command_htr21_carry_i_5_n_0,command_htr21_carry_i_6_n_0,command_htr21_carry_i_7_n_0,command_htr21_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr21_carry__0
       (.CI(command_htr21_carry_n_0),
        .CO({command_htr21_carry__0_n_0,command_htr21_carry__0_n_1,command_htr21_carry__0_n_2,command_htr21_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_command_htr21_carry__0_O_UNCONNECTED[3:0]),
        .S({command_htr21_carry__0_i_1_n_0,command_htr21_carry__0_i_2_n_0,command_htr21_carry__0_i_3_n_0,command_htr21_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__0_i_1
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__0_i_2
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr21_carry__0_i_3
       (.I0(temp_calculated_2[14]),
        .I1(temp_calculated_2[31]),
        .O(command_htr21_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr21_carry__0_i_4
       (.I0(temp_calculated_2[12]),
        .I1(temp_calculated_2[13]),
        .O(command_htr21_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr21_carry__1
       (.CI(command_htr21_carry__0_n_0),
        .CO({command_htr21_carry__1_n_0,command_htr21_carry__1_n_1,command_htr21_carry__1_n_2,command_htr21_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_command_htr21_carry__1_O_UNCONNECTED[3:0]),
        .S({command_htr21_carry__1_i_1_n_0,command_htr21_carry__1_i_2_n_0,command_htr21_carry__1_i_3_n_0,command_htr21_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__1_i_1
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__1_i_2
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__1_i_3
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__1_i_4
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 command_htr21_carry__2
       (.CI(command_htr21_carry__1_n_0),
        .CO({NLW_command_htr21_carry__2_CO_UNCONNECTED[3:2],command_htr21_carry__2_n_2,command_htr21_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,temp_calculated_2[31],1'b0}),
        .O(NLW_command_htr21_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,command_htr21_carry__2_i_1_n_0,command_htr21_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__2_i_1
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    command_htr21_carry__2_i_2
       (.I0(temp_calculated_2[31]),
        .O(command_htr21_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr21_carry_i_1
       (.I0(temp_calculated_2[10]),
        .I1(temp_calculated_2[11]),
        .O(command_htr21_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    command_htr21_carry_i_2
       (.I0(temp_calculated_2[8]),
        .I1(temp_calculated_2[9]),
        .O(command_htr21_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    command_htr21_carry_i_3
       (.I0(temp_calculated_2[6]),
        .I1(temp_calculated_2[7]),
        .O(command_htr21_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    command_htr21_carry_i_4
       (.I0(temp_calculated_2[4]),
        .I1(temp_calculated_2[5]),
        .O(command_htr21_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    command_htr21_carry_i_5
       (.I0(temp_calculated_2[10]),
        .I1(temp_calculated_2[11]),
        .O(command_htr21_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    command_htr21_carry_i_6
       (.I0(temp_calculated_2[8]),
        .I1(temp_calculated_2[9]),
        .O(command_htr21_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    command_htr21_carry_i_7
       (.I0(temp_calculated_2[6]),
        .I1(temp_calculated_2[7]),
        .O(command_htr21_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    command_htr21_carry_i_8
       (.I0(temp_calculated_2[4]),
        .I1(temp_calculated_2[5]),
        .O(command_htr21_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr21_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\command_htr21_inferred__0/i__carry_n_0 ,\command_htr21_inferred__0/i__carry_n_1 ,\command_htr21_inferred__0/i__carry_n_2 ,\command_htr21_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,temp_calculated_2[5],i__carry_i_1__0_n_0,i__carry_i_2__0_n_0}),
        .O(\NLW_command_htr21_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr21_inferred__0/i__carry__0 
       (.CI(\command_htr21_inferred__0/i__carry_n_0 ),
        .CO({\command_htr21_inferred__0/i__carry__0_n_0 ,\command_htr21_inferred__0/i__carry__0_n_1 ,\command_htr21_inferred__0/i__carry__0_n_2 ,\command_htr21_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,temp_calculated_2[11],1'b0}),
        .O(\NLW_command_htr21_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr21_inferred__0/i__carry__1 
       (.CI(\command_htr21_inferred__0/i__carry__0_n_0 ),
        .CO({\command_htr21_inferred__0/i__carry__1_n_0 ,\command_htr21_inferred__0/i__carry__1_n_1 ,\command_htr21_inferred__0/i__carry__1_n_2 ,\command_htr21_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({temp_calculated_2[31],temp_calculated_2[31],temp_calculated_2[31],temp_calculated_2[31]}),
        .O(\NLW_command_htr21_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \command_htr21_inferred__0/i__carry__2 
       (.CI(\command_htr21_inferred__0/i__carry__1_n_0 ),
        .CO({\command_htr21_inferred__0/i__carry__2_n_0 ,\command_htr21_inferred__0/i__carry__2_n_1 ,\command_htr21_inferred__0/i__carry__2_n_2 ,\command_htr21_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,temp_calculated_2[31],temp_calculated_2[31],temp_calculated_2[31]}),
        .O(\NLW_command_htr21_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h2F20)) 
    \command_htr2[3]_i_1 
       (.I0(command_htr21_carry__2_n_2),
        .I1(\command_htr21_inferred__0/i__carry__2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(command_htr2[0]),
        .O(\command_htr2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \command_htr2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\command_htr2[3]_i_1_n_0 ),
        .Q(command_htr2[0]),
        .R(\command_htr1[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(temp_calculated_1[14]),
        .I1(temp_calculated_1[31]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(temp_calculated_2[14]),
        .I1(temp_calculated_2[31]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(temp_calculated_1[12]),
        .I1(temp_calculated_1[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(temp_calculated_2[12]),
        .I1(temp_calculated_2[13]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(temp_calculated_1[14]),
        .I1(temp_calculated_1[31]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3__0
       (.I0(temp_calculated_2[14]),
        .I1(temp_calculated_2[31]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4
       (.I0(temp_calculated_1[12]),
        .I1(temp_calculated_1[13]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4__0
       (.I0(temp_calculated_2[12]),
        .I1(temp_calculated_2[13]),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_5
       (.I0(temp_calculated_1[10]),
        .I1(temp_calculated_1[11]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_5__0
       (.I0(temp_calculated_2[10]),
        .I1(temp_calculated_2[11]),
        .O(i__carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6
       (.I0(temp_calculated_1[8]),
        .I1(temp_calculated_1[9]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__0_i_6__0
       (.I0(temp_calculated_2[8]),
        .I1(temp_calculated_2[9]),
        .O(i__carry__0_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(temp_calculated_1[31]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(temp_calculated_1[31]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(temp_calculated_1[31]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(temp_calculated_1[31]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(temp_calculated_1[31]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(temp_calculated_1[31]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(temp_calculated_1[31]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(temp_calculated_1[31]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__0
       (.I0(temp_calculated_2[31]),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(temp_calculated_1[2]),
        .I1(temp_calculated_1[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(temp_calculated_2[2]),
        .I1(temp_calculated_2[3]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(temp_calculated_1[0]),
        .I1(temp_calculated_1[1]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__0
       (.I0(temp_calculated_2[0]),
        .I1(temp_calculated_2[1]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3
       (.I0(temp_calculated_1[6]),
        .I1(temp_calculated_1[7]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__0
       (.I0(temp_calculated_2[6]),
        .I1(temp_calculated_2[7]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(temp_calculated_1[4]),
        .I1(temp_calculated_1[5]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(temp_calculated_2[4]),
        .I1(temp_calculated_2[5]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(temp_calculated_1[2]),
        .I1(temp_calculated_1[3]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__0
       (.I0(temp_calculated_2[2]),
        .I1(temp_calculated_2[3]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(temp_calculated_1[0]),
        .I1(temp_calculated_1[1]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__0
       (.I0(temp_calculated_2[0]),
        .I1(temp_calculated_2[1]),
        .O(i__carry_i_6__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,multOp_i_2_n_0,multOp_i_3_n_0,multOp_i_4_n_0,multOp_i_5_n_0,multOp_i_6_n_0,multOp_i_7_n_0,multOp_i_8_n_0,multOp_i_9_n_0,multOp_i_10_n_0,multOp_i_11_n_0,multOp_i_12_n_0,multOp_i_13_n_0,multOp_i_14_n_0,multOp_i_15_n_0,multOp_i_16_n_0,multOp_i_17_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(__9),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp_OVERFLOW_UNCONNECTED),
        .P({NLW_multOp_P_UNCONNECTED[47:31],multOp_n_75,multOp_n_76,multOp_n_77,multOp_n_78,multOp_n_79,multOp_n_80,multOp_n_81,multOp_n_82,multOp_n_83,multOp_n_84,multOp_n_85,multOp_n_86,multOp_n_87,multOp_n_88,multOp_n_89,multOp_n_90,multOp_n_91,multOp_n_92,multOp_n_93,multOp_n_94,multOp_n_95,multOp_n_96,multOp_n_97,multOp_n_98,multOp_n_99,multOp_n_100,multOp_n_101,multOp_n_102,multOp_n_103,multOp_n_104,multOp_n_105}),
        .PATTERNBDETECT(NLW_multOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_multOp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(\command_htr1[31]_i_1_n_0 ),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,multOp__0_i_1_n_0,multOp__0_i_2_n_0,multOp__0_i_3_n_0,multOp__0_i_4_n_0,multOp__0_i_5_n_0,multOp__0_i_6_n_0,multOp__0_i_7_n_0,multOp__0_i_8_n_0,multOp__0_i_9_n_0,multOp__0_i_10_n_0,multOp__0_i_11_n_0,multOp__0_i_12_n_0,multOp__0_i_13_n_0,multOp__0_i_14_n_0,multOp__0_i_15_n_0,multOp__0_i_16_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(__9),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp__0_OVERFLOW_UNCONNECTED),
        .P({NLW_multOp__0_P_UNCONNECTED[47:31],multOp__0_n_75,multOp__0_n_76,multOp__0_n_77,multOp__0_n_78,multOp__0_n_79,multOp__0_n_80,multOp__0_n_81,multOp__0_n_82,multOp__0_n_83,multOp__0_n_84,multOp__0_n_85,multOp__0_n_86,multOp__0_n_87,multOp__0_n_88,multOp__0_n_89,multOp__0_n_90,multOp__0_n_91,multOp__0_n_92,multOp__0_n_93,multOp__0_n_94,multOp__0_n_95,multOp__0_n_96,multOp__0_n_97,multOp__0_n_98,multOp__0_n_99,multOp__0_n_100,multOp__0_n_101,multOp__0_n_102,multOp__0_n_103,multOp__0_n_104,multOp__0_n_105}),
        .PATTERNBDETECT(NLW_multOp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_multOp__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(\command_htr1[31]_i_1_n_0 ),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[15]),
        .O(multOp__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_10
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[6]),
        .O(multOp__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_11
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[5]),
        .O(multOp__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_12
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[4]),
        .O(multOp__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_13
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[3]),
        .O(multOp__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_14
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[2]),
        .O(multOp__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_15
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[1]),
        .O(multOp__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_16
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[0]),
        .O(multOp__0_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[14]),
        .O(multOp__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[13]),
        .O(multOp__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[12]),
        .O(multOp__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[11]),
        .O(multOp__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[10]),
        .O(multOp__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_7
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[9]),
        .O(multOp__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_8
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[8]),
        .O(multOp__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_i_9
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(in7[7]),
        .O(multOp__0_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    multOp_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(__9));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_10
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[7] ),
        .O(multOp_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_11
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[6] ),
        .O(multOp_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_12
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[5] ),
        .O(multOp_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_13
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[4] ),
        .O(multOp_i_13_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_14
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[3] ),
        .O(multOp_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_15
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[2] ),
        .O(multOp_i_15_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_16
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[1] ),
        .O(multOp_i_16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_17
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[0] ),
        .O(multOp_i_17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[15] ),
        .O(multOp_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[14] ),
        .O(multOp_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[13] ),
        .O(multOp_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_5
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[12] ),
        .O(multOp_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_6
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[11] ),
        .O(multOp_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_7
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[10] ),
        .O(multOp_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_8
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[9] ),
        .O(multOp_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_9
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\temp_data_i_reg_n_0_[8] ),
        .O(multOp_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sec_cnt1_carry
       (.CI(1'b0),
        .CO({sec_cnt1_carry_n_0,sec_cnt1_carry_n_1,sec_cnt1_carry_n_2,sec_cnt1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sec_cnt1_carry_i_1_n_0,sec_cnt1_carry_i_2_n_0,1'b0,sec_cnt1_carry_i_3_n_0}),
        .O(NLW_sec_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({sec_cnt1_carry_i_4_n_0,sec_cnt1_carry_i_5_n_0,sec_cnt1_carry_i_6_n_0,sec_cnt1_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sec_cnt1_carry__0
       (.CI(sec_cnt1_carry_n_0),
        .CO({sec_cnt1_carry__0_n_0,sec_cnt1_carry__0_n_1,sec_cnt1_carry__0_n_2,sec_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sec_cnt1_carry__0_i_1_n_0,sec_cnt1_carry__0_i_2_n_0,sec_cnt1_carry__0_i_3_n_0,sec_cnt1_carry__0_i_4_n_0}),
        .O(NLW_sec_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({sec_cnt1_carry__0_i_5_n_0,sec_cnt1_carry__0_i_6_n_0,sec_cnt1_carry__0_i_7_n_0,sec_cnt1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    sec_cnt1_carry__0_i_1
       (.I0(sec_cnt[22]),
        .I1(sec_cnt[23]),
        .O(sec_cnt1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sec_cnt1_carry__0_i_2
       (.I0(sec_cnt[20]),
        .I1(sec_cnt[21]),
        .O(sec_cnt1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sec_cnt1_carry__0_i_3
       (.I0(sec_cnt[18]),
        .I1(sec_cnt[19]),
        .O(sec_cnt1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sec_cnt1_carry__0_i_4
       (.I0(sec_cnt[16]),
        .I1(sec_cnt[17]),
        .O(sec_cnt1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sec_cnt1_carry__0_i_5
       (.I0(sec_cnt[22]),
        .I1(sec_cnt[23]),
        .O(sec_cnt1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sec_cnt1_carry__0_i_6
       (.I0(sec_cnt[20]),
        .I1(sec_cnt[21]),
        .O(sec_cnt1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sec_cnt1_carry__0_i_7
       (.I0(sec_cnt[18]),
        .I1(sec_cnt[19]),
        .O(sec_cnt1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sec_cnt1_carry__0_i_8
       (.I0(sec_cnt[16]),
        .I1(sec_cnt[17]),
        .O(sec_cnt1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sec_cnt1_carry__1
       (.CI(sec_cnt1_carry__0_n_0),
        .CO({NLW_sec_cnt1_carry__1_CO_UNCONNECTED[3:2],p_0_in,sec_cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sec_cnt1_carry__1_i_1_n_0,sec_cnt1_carry__1_i_2_n_0}),
        .O(NLW_sec_cnt1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,sec_cnt[26],sec_cnt1_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sec_cnt1_carry__1_i_1
       (.I0(sec_cnt[26]),
        .O(sec_cnt1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sec_cnt1_carry__1_i_2
       (.I0(sec_cnt[24]),
        .I1(sec_cnt[25]),
        .O(sec_cnt1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sec_cnt1_carry__1_i_3
       (.I0(sec_cnt[24]),
        .I1(sec_cnt[25]),
        .O(sec_cnt1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sec_cnt1_carry_i_1
       (.I0(sec_cnt[14]),
        .I1(sec_cnt[15]),
        .O(sec_cnt1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sec_cnt1_carry_i_2
       (.I0(sec_cnt[13]),
        .O(sec_cnt1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sec_cnt1_carry_i_3
       (.I0(sec_cnt[8]),
        .I1(sec_cnt[9]),
        .O(sec_cnt1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sec_cnt1_carry_i_4
       (.I0(sec_cnt[14]),
        .I1(sec_cnt[15]),
        .O(sec_cnt1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sec_cnt1_carry_i_5
       (.I0(sec_cnt[13]),
        .I1(sec_cnt[12]),
        .O(sec_cnt1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sec_cnt1_carry_i_6
       (.I0(sec_cnt[10]),
        .I1(sec_cnt[11]),
        .O(sec_cnt1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sec_cnt1_carry_i_7
       (.I0(sec_cnt[8]),
        .I1(sec_cnt[9]),
        .O(sec_cnt1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \sec_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt[0]),
        .I2(p_0_in),
        .O(\sec_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[10]),
        .I2(p_0_in),
        .O(\sec_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[11]),
        .I2(p_0_in),
        .O(\sec_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[12]),
        .I2(p_0_in),
        .O(\sec_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[13]),
        .I2(p_0_in),
        .O(\sec_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[14]),
        .I2(p_0_in),
        .O(\sec_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[15]),
        .I2(p_0_in),
        .O(\sec_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[16]),
        .I2(p_0_in),
        .O(\sec_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[17]),
        .I2(p_0_in),
        .O(\sec_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[18]),
        .I2(p_0_in),
        .O(\sec_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[19]),
        .I2(p_0_in),
        .O(\sec_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[1]),
        .I2(p_0_in),
        .O(\sec_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[20]),
        .I2(p_0_in),
        .O(\sec_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[21]),
        .I2(p_0_in),
        .O(\sec_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[22]),
        .I2(p_0_in),
        .O(\sec_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[23]),
        .I2(p_0_in),
        .O(\sec_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[24]),
        .I2(p_0_in),
        .O(\sec_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[25]),
        .I2(p_0_in),
        .O(\sec_cnt[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sec_cnt[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\sec_cnt[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[26]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[26]),
        .I2(p_0_in),
        .O(\sec_cnt[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[2]),
        .I2(p_0_in),
        .O(\sec_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[3]),
        .I2(p_0_in),
        .O(\sec_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[4]),
        .I2(p_0_in),
        .O(\sec_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[5]),
        .I2(p_0_in),
        .O(\sec_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[6]),
        .I2(p_0_in),
        .O(\sec_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[7]),
        .I2(p_0_in),
        .O(\sec_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[8]),
        .I2(p_0_in),
        .O(\sec_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sec_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sec_cnt0[9]),
        .I2(p_0_in),
        .O(\sec_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[0] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[0]_i_1_n_0 ),
        .Q(sec_cnt[0]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[10] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[10]_i_1_n_0 ),
        .Q(sec_cnt[10]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[11] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[11]_i_1_n_0 ),
        .Q(sec_cnt[11]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[12] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[12]_i_1_n_0 ),
        .Q(sec_cnt[12]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[12]_i_2 
       (.CI(\sec_cnt_reg[8]_i_2_n_0 ),
        .CO({\sec_cnt_reg[12]_i_2_n_0 ,\sec_cnt_reg[12]_i_2_n_1 ,\sec_cnt_reg[12]_i_2_n_2 ,\sec_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sec_cnt0[12:9]),
        .S(sec_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[13] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[13]_i_1_n_0 ),
        .Q(sec_cnt[13]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[14] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[14]_i_1_n_0 ),
        .Q(sec_cnt[14]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[15] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[15]_i_1_n_0 ),
        .Q(sec_cnt[15]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[16] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[16]_i_1_n_0 ),
        .Q(sec_cnt[16]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[16]_i_2 
       (.CI(\sec_cnt_reg[12]_i_2_n_0 ),
        .CO({\sec_cnt_reg[16]_i_2_n_0 ,\sec_cnt_reg[16]_i_2_n_1 ,\sec_cnt_reg[16]_i_2_n_2 ,\sec_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sec_cnt0[16:13]),
        .S(sec_cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[17] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[17]_i_1_n_0 ),
        .Q(sec_cnt[17]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[18] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[18]_i_1_n_0 ),
        .Q(sec_cnt[18]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[19] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[19]_i_1_n_0 ),
        .Q(sec_cnt[19]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[1] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[1]_i_1_n_0 ),
        .Q(sec_cnt[1]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[20] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[20]_i_1_n_0 ),
        .Q(sec_cnt[20]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[20]_i_2 
       (.CI(\sec_cnt_reg[16]_i_2_n_0 ),
        .CO({\sec_cnt_reg[20]_i_2_n_0 ,\sec_cnt_reg[20]_i_2_n_1 ,\sec_cnt_reg[20]_i_2_n_2 ,\sec_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sec_cnt0[20:17]),
        .S(sec_cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[21] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[21]_i_1_n_0 ),
        .Q(sec_cnt[21]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[22] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[22]_i_1_n_0 ),
        .Q(sec_cnt[22]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[23] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[23]_i_1_n_0 ),
        .Q(sec_cnt[23]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[24] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[24]_i_1_n_0 ),
        .Q(sec_cnt[24]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[24]_i_2 
       (.CI(\sec_cnt_reg[20]_i_2_n_0 ),
        .CO({\sec_cnt_reg[24]_i_2_n_0 ,\sec_cnt_reg[24]_i_2_n_1 ,\sec_cnt_reg[24]_i_2_n_2 ,\sec_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sec_cnt0[24:21]),
        .S(sec_cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[25] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[25]_i_1_n_0 ),
        .Q(sec_cnt[25]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[26] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[26]_i_2_n_0 ),
        .Q(sec_cnt[26]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[26]_i_3 
       (.CI(\sec_cnt_reg[24]_i_2_n_0 ),
        .CO({\NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED [3:1],\sec_cnt_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED [3:2],sec_cnt0[26:25]}),
        .S({1'b0,1'b0,sec_cnt[26:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[2] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[2]_i_1_n_0 ),
        .Q(sec_cnt[2]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[3] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[3]_i_1_n_0 ),
        .Q(sec_cnt[3]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[4] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[4]_i_1_n_0 ),
        .Q(sec_cnt[4]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sec_cnt_reg[4]_i_2_n_0 ,\sec_cnt_reg[4]_i_2_n_1 ,\sec_cnt_reg[4]_i_2_n_2 ,\sec_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(sec_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sec_cnt0[4:1]),
        .S(sec_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[5] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[5]_i_1_n_0 ),
        .Q(sec_cnt[5]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[6] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[6]_i_1_n_0 ),
        .Q(sec_cnt[6]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[7] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[7]_i_1_n_0 ),
        .Q(sec_cnt[7]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[8] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[8]_i_1_n_0 ),
        .Q(sec_cnt[8]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[8]_i_2 
       (.CI(\sec_cnt_reg[4]_i_2_n_0 ),
        .CO({\sec_cnt_reg[8]_i_2_n_0 ,\sec_cnt_reg[8]_i_2_n_1 ,\sec_cnt_reg[8]_i_2_n_2 ,\sec_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sec_cnt0[8:5]),
        .S(sec_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[9] 
       (.C(clk),
        .CE(\sec_cnt[26]_i_1_n_0 ),
        .D(\sec_cnt[9]_i_1_n_0 ),
        .Q(sec_cnt[9]),
        .R(\command_htr1[31]_i_1_n_0 ));
  CARRY4 temp_calculated_10_carry
       (.CI(1'b0),
        .CO({temp_calculated_10_carry_n_0,temp_calculated_10_carry_n_1,temp_calculated_10_carry_n_2,temp_calculated_10_carry_n_3}),
        .CYINIT(multOp_n_89),
        .DI({multOp_n_85,1'b0,1'b0,multOp_n_88}),
        .O(in8[4:1]),
        .S({temp_calculated_10_carry_i_1_n_0,multOp_n_86,multOp_n_87,temp_calculated_10_carry_i_2_n_0}));
  CARRY4 temp_calculated_10_carry__0
       (.CI(temp_calculated_10_carry_n_0),
        .CO({temp_calculated_10_carry__0_n_0,temp_calculated_10_carry__0_n_1,temp_calculated_10_carry__0_n_2,temp_calculated_10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({multOp_n_81,multOp_n_82,1'b0,multOp_n_84}),
        .O(in8[8:5]),
        .S({temp_calculated_10_carry__0_i_1_n_0,temp_calculated_10_carry__0_i_2_n_0,multOp_n_83,temp_calculated_10_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__0_i_1
       (.I0(multOp_n_81),
        .O(temp_calculated_10_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__0_i_2
       (.I0(multOp_n_82),
        .O(temp_calculated_10_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__0_i_3
       (.I0(multOp_n_84),
        .O(temp_calculated_10_carry__0_i_3_n_0));
  CARRY4 temp_calculated_10_carry__1
       (.CI(temp_calculated_10_carry__0_n_0),
        .CO({temp_calculated_10_carry__1_n_0,temp_calculated_10_carry__1_n_1,temp_calculated_10_carry__1_n_2,temp_calculated_10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,multOp_n_78,multOp_n_79,1'b0}),
        .O(in8[12:9]),
        .S({multOp_n_77,temp_calculated_10_carry__1_i_1_n_0,temp_calculated_10_carry__1_i_2_n_0,multOp_n_80}));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__1_i_1
       (.I0(multOp_n_78),
        .O(temp_calculated_10_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__1_i_2
       (.I0(multOp_n_79),
        .O(temp_calculated_10_carry__1_i_2_n_0));
  CARRY4 temp_calculated_10_carry__2
       (.CI(temp_calculated_10_carry__1_n_0),
        .CO({NLW_temp_calculated_10_carry__2_CO_UNCONNECTED[3],temp_calculated_10_carry__2_n_1,NLW_temp_calculated_10_carry__2_CO_UNCONNECTED[1],temp_calculated_10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,multOp_n_75,multOp_n_76}),
        .O({NLW_temp_calculated_10_carry__2_O_UNCONNECTED[3:2],in8[14:13]}),
        .S({1'b0,1'b1,temp_calculated_10_carry__2_i_1_n_0,temp_calculated_10_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__2_i_1
       (.I0(multOp_n_75),
        .O(temp_calculated_10_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry__2_i_2
       (.I0(multOp_n_76),
        .O(temp_calculated_10_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry_i_1
       (.I0(multOp_n_85),
        .O(temp_calculated_10_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_10_carry_i_2
       (.I0(multOp_n_88),
        .O(temp_calculated_10_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_calculated_1[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(multOp_n_89),
        .O(\temp_calculated_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[10]),
        .O(\temp_calculated_1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[11]),
        .O(\temp_calculated_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[12]),
        .O(\temp_calculated_1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[13]),
        .O(\temp_calculated_1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[14]),
        .O(\temp_calculated_1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[1]),
        .O(\temp_calculated_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[2]),
        .O(\temp_calculated_1[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \temp_calculated_1[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\temp_calculated_1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_calculated_1[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(temp_calculated_10_carry__2_n_1),
        .O(\temp_calculated_1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[3]),
        .O(\temp_calculated_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[4]),
        .O(\temp_calculated_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[5]),
        .O(\temp_calculated_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[6]),
        .O(\temp_calculated_1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[7]),
        .O(\temp_calculated_1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[8]),
        .O(\temp_calculated_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_1[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in8[9]),
        .O(\temp_calculated_1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[0] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[0]_i_1_n_0 ),
        .Q(temp_calculated_1[0]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[10] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[10]_i_1_n_0 ),
        .Q(temp_calculated_1[10]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[11] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[11]_i_1_n_0 ),
        .Q(temp_calculated_1[11]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[12] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[12]_i_1_n_0 ),
        .Q(temp_calculated_1[12]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[13] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[13]_i_1_n_0 ),
        .Q(temp_calculated_1[13]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[14] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[14]_i_1_n_0 ),
        .Q(temp_calculated_1[14]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[1] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[1]_i_1_n_0 ),
        .Q(temp_calculated_1[1]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[2] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[2]_i_1_n_0 ),
        .Q(temp_calculated_1[2]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[31] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[31]_i_2_n_0 ),
        .Q(temp_calculated_1[31]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[3] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[3]_i_1_n_0 ),
        .Q(temp_calculated_1[3]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[4] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[4]_i_1_n_0 ),
        .Q(temp_calculated_1[4]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[5] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[5]_i_1_n_0 ),
        .Q(temp_calculated_1[5]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[6] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[6]_i_1_n_0 ),
        .Q(temp_calculated_1[6]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[7] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[7]_i_1_n_0 ),
        .Q(temp_calculated_1[7]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[8] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[8]_i_1_n_0 ),
        .Q(temp_calculated_1[8]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_1_reg[9] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_1[9]_i_1_n_0 ),
        .Q(temp_calculated_1[9]),
        .R(\command_htr1[31]_i_1_n_0 ));
  CARRY4 temp_calculated_20_carry
       (.CI(1'b0),
        .CO({temp_calculated_20_carry_n_0,temp_calculated_20_carry_n_1,temp_calculated_20_carry_n_2,temp_calculated_20_carry_n_3}),
        .CYINIT(multOp__0_n_89),
        .DI({multOp__0_n_85,1'b0,1'b0,multOp__0_n_88}),
        .O(in9[4:1]),
        .S({temp_calculated_20_carry_i_1_n_0,multOp__0_n_86,multOp__0_n_87,temp_calculated_20_carry_i_2_n_0}));
  CARRY4 temp_calculated_20_carry__0
       (.CI(temp_calculated_20_carry_n_0),
        .CO({temp_calculated_20_carry__0_n_0,temp_calculated_20_carry__0_n_1,temp_calculated_20_carry__0_n_2,temp_calculated_20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({multOp__0_n_81,multOp__0_n_82,1'b0,multOp__0_n_84}),
        .O(in9[8:5]),
        .S({temp_calculated_20_carry__0_i_1_n_0,temp_calculated_20_carry__0_i_2_n_0,multOp__0_n_83,temp_calculated_20_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__0_i_1
       (.I0(multOp__0_n_81),
        .O(temp_calculated_20_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__0_i_2
       (.I0(multOp__0_n_82),
        .O(temp_calculated_20_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__0_i_3
       (.I0(multOp__0_n_84),
        .O(temp_calculated_20_carry__0_i_3_n_0));
  CARRY4 temp_calculated_20_carry__1
       (.CI(temp_calculated_20_carry__0_n_0),
        .CO({temp_calculated_20_carry__1_n_0,temp_calculated_20_carry__1_n_1,temp_calculated_20_carry__1_n_2,temp_calculated_20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,multOp__0_n_78,multOp__0_n_79,1'b0}),
        .O(in9[12:9]),
        .S({multOp__0_n_77,temp_calculated_20_carry__1_i_1_n_0,temp_calculated_20_carry__1_i_2_n_0,multOp__0_n_80}));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__1_i_1
       (.I0(multOp__0_n_78),
        .O(temp_calculated_20_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__1_i_2
       (.I0(multOp__0_n_79),
        .O(temp_calculated_20_carry__1_i_2_n_0));
  CARRY4 temp_calculated_20_carry__2
       (.CI(temp_calculated_20_carry__1_n_0),
        .CO({NLW_temp_calculated_20_carry__2_CO_UNCONNECTED[3],temp_calculated_20_carry__2_n_1,NLW_temp_calculated_20_carry__2_CO_UNCONNECTED[1],temp_calculated_20_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,multOp__0_n_75,multOp__0_n_76}),
        .O({NLW_temp_calculated_20_carry__2_O_UNCONNECTED[3:2],in9[14:13]}),
        .S({1'b0,1'b1,temp_calculated_20_carry__2_i_1_n_0,temp_calculated_20_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__2_i_1
       (.I0(multOp__0_n_75),
        .O(temp_calculated_20_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry__2_i_2
       (.I0(multOp__0_n_76),
        .O(temp_calculated_20_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry_i_1
       (.I0(multOp__0_n_85),
        .O(temp_calculated_20_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    temp_calculated_20_carry_i_2
       (.I0(multOp__0_n_88),
        .O(temp_calculated_20_carry_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_calculated_2[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(multOp__0_n_89),
        .O(\temp_calculated_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[10]),
        .O(\temp_calculated_2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[11]),
        .O(\temp_calculated_2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[12]),
        .O(\temp_calculated_2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[13]),
        .O(\temp_calculated_2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[14]),
        .O(\temp_calculated_2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[1]),
        .O(\temp_calculated_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[2]),
        .O(\temp_calculated_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_calculated_2[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(temp_calculated_20_carry__2_n_1),
        .O(\temp_calculated_2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[3]),
        .O(\temp_calculated_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[4]),
        .O(\temp_calculated_2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[5]),
        .O(\temp_calculated_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[6]),
        .O(\temp_calculated_2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[7]),
        .O(\temp_calculated_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[8]),
        .O(\temp_calculated_2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_calculated_2[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in9[9]),
        .O(\temp_calculated_2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[0] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[0]_i_1_n_0 ),
        .Q(temp_calculated_2[0]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[10] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[10]_i_1_n_0 ),
        .Q(temp_calculated_2[10]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[11] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[11]_i_1_n_0 ),
        .Q(temp_calculated_2[11]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[12] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[12]_i_1_n_0 ),
        .Q(temp_calculated_2[12]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[13] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[13]_i_1_n_0 ),
        .Q(temp_calculated_2[13]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[14] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[14]_i_1_n_0 ),
        .Q(temp_calculated_2[14]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[1] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[1]_i_1_n_0 ),
        .Q(temp_calculated_2[1]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[2] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[2]_i_1_n_0 ),
        .Q(temp_calculated_2[2]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[31] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[31]_i_1_n_0 ),
        .Q(temp_calculated_2[31]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[3] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[3]_i_1_n_0 ),
        .Q(temp_calculated_2[3]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[4] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[4]_i_1_n_0 ),
        .Q(temp_calculated_2[4]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[5] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[5]_i_1_n_0 ),
        .Q(temp_calculated_2[5]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[6] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[6]_i_1_n_0 ),
        .Q(temp_calculated_2[6]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[7] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[7]_i_1_n_0 ),
        .Q(temp_calculated_2[7]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[8] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[8]_i_1_n_0 ),
        .Q(temp_calculated_2[8]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_calculated_2_reg[9] 
       (.C(clk),
        .CE(\temp_calculated_1[31]_i_1_n_0 ),
        .D(\temp_calculated_2[9]_i_1_n_0 ),
        .Q(temp_calculated_2[9]),
        .R(\command_htr1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[0]),
        .O(\temp_data_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[10]),
        .O(\temp_data_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[11]),
        .O(\temp_data_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[12]),
        .O(\temp_data_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[13]),
        .O(\temp_data_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[14]),
        .O(\temp_data_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[15]),
        .O(\temp_data_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[16]),
        .O(\temp_data_i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[17]),
        .O(\temp_data_i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[18]),
        .O(\temp_data_i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[19]),
        .O(\temp_data_i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[1]),
        .O(\temp_data_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[20]),
        .O(\temp_data_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[21]),
        .O(\temp_data_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[22]),
        .O(\temp_data_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[23]),
        .O(\temp_data_i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[24]),
        .O(\temp_data_i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[25]),
        .O(\temp_data_i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[26]),
        .O(\temp_data_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[27]),
        .O(\temp_data_i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[28]),
        .O(\temp_data_i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[29]),
        .O(\temp_data_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[2]),
        .O(\temp_data_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[30]),
        .O(\temp_data_i[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \temp_data_i[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(temp_DV),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\temp_data_i[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[31]),
        .O(\temp_data_i[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[3]),
        .O(\temp_data_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[4]),
        .O(\temp_data_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[5]),
        .O(\temp_data_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[6]),
        .O(\temp_data_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[7]),
        .O(\temp_data_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[8]),
        .O(\temp_data_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data_i[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(temp_data[9]),
        .O(\temp_data_i[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[0] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[0]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[0] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[10] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[10]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[10] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[11] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[11]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[11] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[12] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[12]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[12] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[13] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[13]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[13] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[14] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[14]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[14] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[15] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[15]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[15] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[16] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[16]_i_1_n_0 ),
        .Q(in7[0]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[17] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[17]_i_1_n_0 ),
        .Q(in7[1]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[18] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[18]_i_1_n_0 ),
        .Q(in7[2]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[19] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[19]_i_1_n_0 ),
        .Q(in7[3]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[1] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[1]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[1] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[20] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[20]_i_1_n_0 ),
        .Q(in7[4]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[21] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[21]_i_1_n_0 ),
        .Q(in7[5]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[22] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[22]_i_1_n_0 ),
        .Q(in7[6]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[23] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[23]_i_1_n_0 ),
        .Q(in7[7]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[24] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[24]_i_1_n_0 ),
        .Q(in7[8]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[25] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[25]_i_1_n_0 ),
        .Q(in7[9]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[26] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[26]_i_1_n_0 ),
        .Q(in7[10]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[27] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[27]_i_1_n_0 ),
        .Q(in7[11]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[28] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[28]_i_1_n_0 ),
        .Q(in7[12]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[29] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[29]_i_1_n_0 ),
        .Q(in7[13]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[2] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[2]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[2] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[30] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[30]_i_1_n_0 ),
        .Q(in7[14]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[31] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[31]_i_2_n_0 ),
        .Q(in7[15]),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[3] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[3]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[3] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[4] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[4]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[4] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[5] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[5]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[5] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[6] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[6]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[6] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[7] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[7]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[7] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[8] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[8]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[8] ),
        .R(\command_htr1[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_i_reg[9] 
       (.C(clk),
        .CE(\temp_data_i[31]_i_1_n_0 ),
        .D(\temp_data_i[9]_i_1_n_0 ),
        .Q(\temp_data_i_reg_n_0_[9] ),
        .R(\command_htr1[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

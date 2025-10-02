// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:44:50 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Pulse_WithDelay_Per_0_0/PCB_All_SRAM_Pulse_WithDelay_Per_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_Pulse_WithDelay_Per_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_Pulse_WithDelay_Per_0_0,Pulse_WithDelay_Per_Second,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pulse_WithDelay_Per_Second,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_Pulse_WithDelay_Per_0_0
   (sysclk,
    reset_n,
    o_pulse,
    led0);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output o_pulse;
  output led0;

  wire led0;
  wire o_pulse;
  wire reset_n;
  wire sysclk;

  PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second U0
       (.led0(led0),
        .o_pulse(o_pulse),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Pulse_WithDelay_Per_Second" *) 
module PCB_All_SRAM_Pulse_WithDelay_Per_0_0_Pulse_WithDelay_Per_Second
   (o_pulse,
    led0,
    sysclk,
    reset_n);
  output o_pulse;
  output led0;
  input sysclk;
  input reset_n;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_10_n_0 ;
  wire \FSM_onehot_state[1]_i_11_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_4_n_0 ;
  wire \FSM_onehot_state[1]_i_5_n_0 ;
  wire \FSM_onehot_state[1]_i_6_n_0 ;
  wire \FSM_onehot_state[1]_i_7_n_0 ;
  wire \FSM_onehot_state[1]_i_8_n_0 ;
  wire \FSM_onehot_state[1]_i_9_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_6_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire led0;
  wire led0_i_1_n_0;
  wire o_pulse;
  wire o_pulse_i_1_n_0;
  wire o_pulse_i_2_n_0;
  wire reset_n;
  wire [26:0]sec_cnt;
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
  wire \sec_cnt[26]_i_2_n_0 ;
  wire \sec_cnt[2]_i_1_n_0 ;
  wire \sec_cnt[3]_i_1_n_0 ;
  wire \sec_cnt[4]_i_1_n_0 ;
  wire \sec_cnt[5]_i_1_n_0 ;
  wire \sec_cnt[6]_i_1_n_0 ;
  wire \sec_cnt[7]_i_1_n_0 ;
  wire \sec_cnt[8]_i_1_n_0 ;
  wire \sec_cnt[9]_i_1_n_0 ;
  wire sec_cnt_0;
  wire \sec_cnt_reg[12]_i_2_n_0 ;
  wire \sec_cnt_reg[12]_i_2_n_1 ;
  wire \sec_cnt_reg[12]_i_2_n_2 ;
  wire \sec_cnt_reg[12]_i_2_n_3 ;
  wire \sec_cnt_reg[12]_i_2_n_4 ;
  wire \sec_cnt_reg[12]_i_2_n_5 ;
  wire \sec_cnt_reg[12]_i_2_n_6 ;
  wire \sec_cnt_reg[12]_i_2_n_7 ;
  wire \sec_cnt_reg[16]_i_2_n_0 ;
  wire \sec_cnt_reg[16]_i_2_n_1 ;
  wire \sec_cnt_reg[16]_i_2_n_2 ;
  wire \sec_cnt_reg[16]_i_2_n_3 ;
  wire \sec_cnt_reg[16]_i_2_n_4 ;
  wire \sec_cnt_reg[16]_i_2_n_5 ;
  wire \sec_cnt_reg[16]_i_2_n_6 ;
  wire \sec_cnt_reg[16]_i_2_n_7 ;
  wire \sec_cnt_reg[20]_i_2_n_0 ;
  wire \sec_cnt_reg[20]_i_2_n_1 ;
  wire \sec_cnt_reg[20]_i_2_n_2 ;
  wire \sec_cnt_reg[20]_i_2_n_3 ;
  wire \sec_cnt_reg[20]_i_2_n_4 ;
  wire \sec_cnt_reg[20]_i_2_n_5 ;
  wire \sec_cnt_reg[20]_i_2_n_6 ;
  wire \sec_cnt_reg[20]_i_2_n_7 ;
  wire \sec_cnt_reg[24]_i_2_n_0 ;
  wire \sec_cnt_reg[24]_i_2_n_1 ;
  wire \sec_cnt_reg[24]_i_2_n_2 ;
  wire \sec_cnt_reg[24]_i_2_n_3 ;
  wire \sec_cnt_reg[24]_i_2_n_4 ;
  wire \sec_cnt_reg[24]_i_2_n_5 ;
  wire \sec_cnt_reg[24]_i_2_n_6 ;
  wire \sec_cnt_reg[24]_i_2_n_7 ;
  wire \sec_cnt_reg[26]_i_3_n_3 ;
  wire \sec_cnt_reg[26]_i_3_n_6 ;
  wire \sec_cnt_reg[26]_i_3_n_7 ;
  wire \sec_cnt_reg[4]_i_2_n_0 ;
  wire \sec_cnt_reg[4]_i_2_n_1 ;
  wire \sec_cnt_reg[4]_i_2_n_2 ;
  wire \sec_cnt_reg[4]_i_2_n_3 ;
  wire \sec_cnt_reg[4]_i_2_n_4 ;
  wire \sec_cnt_reg[4]_i_2_n_5 ;
  wire \sec_cnt_reg[4]_i_2_n_6 ;
  wire \sec_cnt_reg[4]_i_2_n_7 ;
  wire \sec_cnt_reg[8]_i_2_n_0 ;
  wire \sec_cnt_reg[8]_i_2_n_1 ;
  wire \sec_cnt_reg[8]_i_2_n_2 ;
  wire \sec_cnt_reg[8]_i_2_n_3 ;
  wire \sec_cnt_reg[8]_i_2_n_4 ;
  wire \sec_cnt_reg[8]_i_2_n_5 ;
  wire \sec_cnt_reg[8]_i_2_n_6 ;
  wire \sec_cnt_reg[8]_i_2_n_7 ;
  wire sysclk;
  wire [3:1]\NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000008A)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[0]_i_2_n_0 ),
        .I2(sec_cnt[24]),
        .I3(sec_cnt[25]),
        .I4(sec_cnt[26]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111111110100010)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(sec_cnt[23]),
        .I1(sec_cnt[22]),
        .I2(\FSM_onehot_state[1]_i_6_n_0 ),
        .I3(sec_cnt[16]),
        .I4(\FSM_onehot_state[1]_i_5_n_0 ),
        .I5(\FSM_onehot_state[1]_i_4_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFFFFFEAEAEAEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state[1]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[1]_i_10 
       (.I0(sec_cnt[1]),
        .I1(sec_cnt[0]),
        .I2(sec_cnt[9]),
        .O(\FSM_onehot_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \FSM_onehot_state[1]_i_11 
       (.I0(sec_cnt[11]),
        .I1(sec_cnt[10]),
        .I2(sec_cnt[8]),
        .I3(sec_cnt[9]),
        .O(\FSM_onehot_state[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(sec_cnt[25]),
        .I1(sec_cnt[26]),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAA0000FFFFFFFF)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(\FSM_onehot_state[1]_i_4_n_0 ),
        .I1(\FSM_onehot_state[1]_i_5_n_0 ),
        .I2(sec_cnt[16]),
        .I3(\FSM_onehot_state[1]_i_6_n_0 ),
        .I4(\FSM_onehot_state[1]_i_7_n_0 ),
        .I5(sec_cnt[24]),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(sec_cnt[20]),
        .I1(sec_cnt[21]),
        .O(\FSM_onehot_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22222222AAAAA222)) 
    \FSM_onehot_state[1]_i_5 
       (.I0(\FSM_onehot_state[1]_i_8_n_0 ),
        .I1(sec_cnt[13]),
        .I2(\FSM_onehot_state[1]_i_9_n_0 ),
        .I3(\FSM_onehot_state[1]_i_10_n_0 ),
        .I4(\FSM_onehot_state[1]_i_11_n_0 ),
        .I5(sec_cnt[12]),
        .O(\FSM_onehot_state[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[1]_i_6 
       (.I0(sec_cnt[19]),
        .I1(sec_cnt[18]),
        .I2(sec_cnt[17]),
        .O(\FSM_onehot_state[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_7 
       (.I0(sec_cnt[22]),
        .I1(sec_cnt[23]),
        .O(\FSM_onehot_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_8 
       (.I0(sec_cnt[14]),
        .I1(sec_cnt[15]),
        .O(\FSM_onehot_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[1]_i_9 
       (.I0(sec_cnt[2]),
        .I1(sec_cnt[3]),
        .I2(sec_cnt[4]),
        .I3(sec_cnt[5]),
        .I4(sec_cnt[7]),
        .I5(sec_cnt[6]),
        .O(\FSM_onehot_state[1]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h54555555FFFFFFFF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(sec_cnt[25]),
        .I1(\FSM_onehot_state[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state[2]_i_4_n_0 ),
        .I3(sec_cnt[21]),
        .I4(sec_cnt[22]),
        .I5(sec_cnt[26]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(sec_cnt[20]),
        .I1(sec_cnt[19]),
        .I2(sec_cnt[18]),
        .I3(sec_cnt[24]),
        .I4(sec_cnt[23]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1111111110111111)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(sec_cnt[17]),
        .I1(sec_cnt[19]),
        .I2(\FSM_onehot_state[2]_i_5_n_0 ),
        .I3(sec_cnt[14]),
        .I4(sec_cnt[13]),
        .I5(\FSM_onehot_state[2]_i_6_n_0 ),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(sec_cnt[15]),
        .I1(sec_cnt[16]),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[2]_i_6 
       (.I0(sec_cnt[8]),
        .I1(sec_cnt[9]),
        .I2(sec_cnt[10]),
        .I3(sec_cnt[12]),
        .I4(sec_cnt[11]),
        .O(\FSM_onehot_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "delay:001,pulse:100,count:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(o_pulse_i_2_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "delay:001,pulse:100,count:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "delay:001,pulse:100,count:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_2_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led0_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(led0),
        .O(led0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    led0_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_2_n_0),
        .D(led0_i_1_n_0),
        .Q(led0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCDCC)) 
    o_pulse_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(o_pulse),
        .O(o_pulse_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_pulse_i_2
       (.I0(reset_n),
        .O(o_pulse_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_pulse_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_2_n_0),
        .D(o_pulse_i_1_n_0),
        .Q(o_pulse));
  LUT6 #(
    .INIT(64'h00000000F8888888)) 
    \sec_cnt[0]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(sec_cnt[0]),
        .O(\sec_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[10]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[12]_i_2_n_6 ),
        .O(\sec_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[11]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[12]_i_2_n_5 ),
        .O(\sec_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[12]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[12]_i_2_n_4 ),
        .O(\sec_cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[13]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[16]_i_2_n_7 ),
        .O(\sec_cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[14]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[16]_i_2_n_6 ),
        .O(\sec_cnt[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[15]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[16]_i_2_n_5 ),
        .O(\sec_cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[16]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[16]_i_2_n_4 ),
        .O(\sec_cnt[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[17]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[20]_i_2_n_7 ),
        .O(\sec_cnt[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[18]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[20]_i_2_n_6 ),
        .O(\sec_cnt[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[19]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[20]_i_2_n_5 ),
        .O(\sec_cnt[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[1]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[4]_i_2_n_7 ),
        .O(\sec_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[20]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[20]_i_2_n_4 ),
        .O(\sec_cnt[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[21]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[24]_i_2_n_7 ),
        .O(\sec_cnt[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[22]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[24]_i_2_n_6 ),
        .O(\sec_cnt[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[23]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[24]_i_2_n_5 ),
        .O(\sec_cnt[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[24]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[24]_i_2_n_4 ),
        .O(\sec_cnt[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[25]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[26]_i_3_n_7 ),
        .O(\sec_cnt[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sec_cnt[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sec_cnt_0));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[26]_i_2 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[26]_i_3_n_6 ),
        .O(\sec_cnt[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[4]_i_2_n_6 ),
        .O(\sec_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[3]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[4]_i_2_n_5 ),
        .O(\sec_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[4]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[4]_i_2_n_4 ),
        .O(\sec_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[5]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[8]_i_2_n_7 ),
        .O(\sec_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[6]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[8]_i_2_n_6 ),
        .O(\sec_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[7]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[8]_i_2_n_5 ),
        .O(\sec_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[8]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[8]_i_2_n_4 ),
        .O(\sec_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \sec_cnt[9]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\sec_cnt_reg[12]_i_2_n_7 ),
        .O(\sec_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[0] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[0]_i_1_n_0 ),
        .Q(sec_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[10] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[10]_i_1_n_0 ),
        .Q(sec_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[11] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[11]_i_1_n_0 ),
        .Q(sec_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[12] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[12]_i_1_n_0 ),
        .Q(sec_cnt[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[12]_i_2 
       (.CI(\sec_cnt_reg[8]_i_2_n_0 ),
        .CO({\sec_cnt_reg[12]_i_2_n_0 ,\sec_cnt_reg[12]_i_2_n_1 ,\sec_cnt_reg[12]_i_2_n_2 ,\sec_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[12]_i_2_n_4 ,\sec_cnt_reg[12]_i_2_n_5 ,\sec_cnt_reg[12]_i_2_n_6 ,\sec_cnt_reg[12]_i_2_n_7 }),
        .S(sec_cnt[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[13] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[13]_i_1_n_0 ),
        .Q(sec_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[14] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[14]_i_1_n_0 ),
        .Q(sec_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[15] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[15]_i_1_n_0 ),
        .Q(sec_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[16] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[16]_i_1_n_0 ),
        .Q(sec_cnt[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[16]_i_2 
       (.CI(\sec_cnt_reg[12]_i_2_n_0 ),
        .CO({\sec_cnt_reg[16]_i_2_n_0 ,\sec_cnt_reg[16]_i_2_n_1 ,\sec_cnt_reg[16]_i_2_n_2 ,\sec_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[16]_i_2_n_4 ,\sec_cnt_reg[16]_i_2_n_5 ,\sec_cnt_reg[16]_i_2_n_6 ,\sec_cnt_reg[16]_i_2_n_7 }),
        .S(sec_cnt[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[17] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[17]_i_1_n_0 ),
        .Q(sec_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[18] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[18]_i_1_n_0 ),
        .Q(sec_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[19] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[19]_i_1_n_0 ),
        .Q(sec_cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[1] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[1]_i_1_n_0 ),
        .Q(sec_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[20] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[20]_i_1_n_0 ),
        .Q(sec_cnt[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[20]_i_2 
       (.CI(\sec_cnt_reg[16]_i_2_n_0 ),
        .CO({\sec_cnt_reg[20]_i_2_n_0 ,\sec_cnt_reg[20]_i_2_n_1 ,\sec_cnt_reg[20]_i_2_n_2 ,\sec_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[20]_i_2_n_4 ,\sec_cnt_reg[20]_i_2_n_5 ,\sec_cnt_reg[20]_i_2_n_6 ,\sec_cnt_reg[20]_i_2_n_7 }),
        .S(sec_cnt[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[21] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[21]_i_1_n_0 ),
        .Q(sec_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[22] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[22]_i_1_n_0 ),
        .Q(sec_cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[23] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[23]_i_1_n_0 ),
        .Q(sec_cnt[23]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[24] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[24]_i_1_n_0 ),
        .Q(sec_cnt[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[24]_i_2 
       (.CI(\sec_cnt_reg[20]_i_2_n_0 ),
        .CO({\sec_cnt_reg[24]_i_2_n_0 ,\sec_cnt_reg[24]_i_2_n_1 ,\sec_cnt_reg[24]_i_2_n_2 ,\sec_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[24]_i_2_n_4 ,\sec_cnt_reg[24]_i_2_n_5 ,\sec_cnt_reg[24]_i_2_n_6 ,\sec_cnt_reg[24]_i_2_n_7 }),
        .S(sec_cnt[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[25] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[25]_i_1_n_0 ),
        .Q(sec_cnt[25]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[26] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[26]_i_2_n_0 ),
        .Q(sec_cnt[26]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[26]_i_3 
       (.CI(\sec_cnt_reg[24]_i_2_n_0 ),
        .CO({\NLW_sec_cnt_reg[26]_i_3_CO_UNCONNECTED [3:1],\sec_cnt_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sec_cnt_reg[26]_i_3_O_UNCONNECTED [3:2],\sec_cnt_reg[26]_i_3_n_6 ,\sec_cnt_reg[26]_i_3_n_7 }),
        .S({1'b0,1'b0,sec_cnt[26:25]}));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[2] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[2]_i_1_n_0 ),
        .Q(sec_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[3] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[3]_i_1_n_0 ),
        .Q(sec_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[4] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[4]_i_1_n_0 ),
        .Q(sec_cnt[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sec_cnt_reg[4]_i_2_n_0 ,\sec_cnt_reg[4]_i_2_n_1 ,\sec_cnt_reg[4]_i_2_n_2 ,\sec_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(sec_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[4]_i_2_n_4 ,\sec_cnt_reg[4]_i_2_n_5 ,\sec_cnt_reg[4]_i_2_n_6 ,\sec_cnt_reg[4]_i_2_n_7 }),
        .S(sec_cnt[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[5] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[5]_i_1_n_0 ),
        .Q(sec_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[6] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[6]_i_1_n_0 ),
        .Q(sec_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[7] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[7]_i_1_n_0 ),
        .Q(sec_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[8] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[8]_i_1_n_0 ),
        .Q(sec_cnt[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sec_cnt_reg[8]_i_2 
       (.CI(\sec_cnt_reg[4]_i_2_n_0 ),
        .CO({\sec_cnt_reg[8]_i_2_n_0 ,\sec_cnt_reg[8]_i_2_n_1 ,\sec_cnt_reg[8]_i_2_n_2 ,\sec_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[8]_i_2_n_4 ,\sec_cnt_reg[8]_i_2_n_5 ,\sec_cnt_reg[8]_i_2_n_6 ,\sec_cnt_reg[8]_i_2_n_7 }),
        .S(sec_cnt[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[9] 
       (.C(sysclk),
        .CE(sec_cnt_0),
        .CLR(o_pulse_i_2_n_0),
        .D(\sec_cnt[9]_i_1_n_0 ),
        .Q(sec_cnt[9]));
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

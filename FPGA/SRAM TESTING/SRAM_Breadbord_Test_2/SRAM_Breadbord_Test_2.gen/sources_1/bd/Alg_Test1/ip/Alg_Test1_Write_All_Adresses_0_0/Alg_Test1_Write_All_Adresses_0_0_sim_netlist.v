// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep  4 14:18:40 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadbord_Test_2/SRAM_Breadbord_Test_2.gen/sources_1/bd/Alg_Test1/ip/Alg_Test1_Write_All_Adresses_0_0/Alg_Test1_Write_All_Adresses_0_0_sim_netlist.v}
// Design      : Alg_Test1_Write_All_Adresses_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Alg_Test1_Write_All_Adresses_0_0,Write_All_Adresses,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Write_All_Adresses,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Alg_Test1_Write_All_Adresses_0_0
   (sysclk,
    reset_n,
    write_complete,
    A,
    CE_n,
    WE_n,
    DQ_o,
    DQ_t);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output write_complete;
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [15:0]DQ_o;
  output [15:0]DQ_t;

  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_o;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire reset_n;
  wire sysclk;
  wire write_complete;

  assign DQ_t[15] = \^DQ_t [0];
  assign DQ_t[14] = \^DQ_t [0];
  assign DQ_t[13] = \^DQ_t [0];
  assign DQ_t[12] = \^DQ_t [0];
  assign DQ_t[11] = \^DQ_t [0];
  assign DQ_t[10] = \^DQ_t [0];
  assign DQ_t[9] = \^DQ_t [0];
  assign DQ_t[8] = \^DQ_t [0];
  assign DQ_t[7] = \^DQ_t [0];
  assign DQ_t[6] = \^DQ_t [0];
  assign DQ_t[5] = \^DQ_t [0];
  assign DQ_t[4] = \^DQ_t [0];
  assign DQ_t[3] = \^DQ_t [0];
  assign DQ_t[2] = \^DQ_t [0];
  assign DQ_t[1] = \^DQ_t [0];
  assign DQ_t[0] = \^DQ_t [0];
  Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_o(DQ_o),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
endmodule

(* ORIG_REF_NAME = "Write_All_Adresses" *) 
module Alg_Test1_Write_All_Adresses_0_0_Write_All_Adresses
   (A,
    CE_n,
    DQ_o,
    DQ_t,
    write_complete,
    WE_n,
    sysclk,
    reset_n);
  output [21:0]A;
  output CE_n;
  output [15:0]DQ_o;
  output [0:0]DQ_t;
  output write_complete;
  output WE_n;
  input sysclk;
  input reset_n;

  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_o;
  wire [0:0]DQ_t;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_5_n_0 ;
  wire \FSM_onehot_state[4]_i_6_n_0 ;
  wire \FSM_onehot_state[4]_i_7_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire addr_cnt;
  wire \addr_cnt[0]_i_2_n_0 ;
  wire [21:0]addr_cnt_reg;
  wire \addr_cnt_reg[0]_i_1_n_0 ;
  wire \addr_cnt_reg[0]_i_1_n_1 ;
  wire \addr_cnt_reg[0]_i_1_n_2 ;
  wire \addr_cnt_reg[0]_i_1_n_3 ;
  wire \addr_cnt_reg[0]_i_1_n_4 ;
  wire \addr_cnt_reg[0]_i_1_n_5 ;
  wire \addr_cnt_reg[0]_i_1_n_6 ;
  wire \addr_cnt_reg[0]_i_1_n_7 ;
  wire \addr_cnt_reg[12]_i_1_n_0 ;
  wire \addr_cnt_reg[12]_i_1_n_1 ;
  wire \addr_cnt_reg[12]_i_1_n_2 ;
  wire \addr_cnt_reg[12]_i_1_n_3 ;
  wire \addr_cnt_reg[12]_i_1_n_4 ;
  wire \addr_cnt_reg[12]_i_1_n_5 ;
  wire \addr_cnt_reg[12]_i_1_n_6 ;
  wire \addr_cnt_reg[12]_i_1_n_7 ;
  wire \addr_cnt_reg[16]_i_1_n_0 ;
  wire \addr_cnt_reg[16]_i_1_n_1 ;
  wire \addr_cnt_reg[16]_i_1_n_2 ;
  wire \addr_cnt_reg[16]_i_1_n_3 ;
  wire \addr_cnt_reg[16]_i_1_n_4 ;
  wire \addr_cnt_reg[16]_i_1_n_5 ;
  wire \addr_cnt_reg[16]_i_1_n_6 ;
  wire \addr_cnt_reg[16]_i_1_n_7 ;
  wire \addr_cnt_reg[20]_i_1_n_3 ;
  wire \addr_cnt_reg[20]_i_1_n_6 ;
  wire \addr_cnt_reg[20]_i_1_n_7 ;
  wire \addr_cnt_reg[4]_i_1_n_0 ;
  wire \addr_cnt_reg[4]_i_1_n_1 ;
  wire \addr_cnt_reg[4]_i_1_n_2 ;
  wire \addr_cnt_reg[4]_i_1_n_3 ;
  wire \addr_cnt_reg[4]_i_1_n_4 ;
  wire \addr_cnt_reg[4]_i_1_n_5 ;
  wire \addr_cnt_reg[4]_i_1_n_6 ;
  wire \addr_cnt_reg[4]_i_1_n_7 ;
  wire \addr_cnt_reg[8]_i_1_n_0 ;
  wire \addr_cnt_reg[8]_i_1_n_1 ;
  wire \addr_cnt_reg[8]_i_1_n_2 ;
  wire \addr_cnt_reg[8]_i_1_n_3 ;
  wire \addr_cnt_reg[8]_i_1_n_4 ;
  wire \addr_cnt_reg[8]_i_1_n_5 ;
  wire \addr_cnt_reg[8]_i_1_n_6 ;
  wire \addr_cnt_reg[8]_i_1_n_7 ;
  wire [15:0]p_0_in;
  wire reset_n;
  wire sysclk;
  wire write_active;
  wire write_active_0;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire write_complete_i_1_n_0;
  wire write_complete_i_2_n_0;
  wire [3:1]\NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED ;

  FDCE \A_reg[0] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[0]),
        .Q(A[0]));
  FDCE \A_reg[10] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[10]),
        .Q(A[10]));
  FDCE \A_reg[11] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[11]),
        .Q(A[11]));
  FDCE \A_reg[12] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[12]),
        .Q(A[12]));
  FDCE \A_reg[13] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[13]),
        .Q(A[13]));
  FDCE \A_reg[14] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[14]),
        .Q(A[14]));
  FDCE \A_reg[15] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[15]),
        .Q(A[15]));
  FDCE \A_reg[16] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[16]),
        .Q(A[16]));
  FDCE \A_reg[17] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[17]),
        .Q(A[17]));
  FDCE \A_reg[18] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[18]),
        .Q(A[18]));
  FDCE \A_reg[19] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[19]),
        .Q(A[19]));
  FDCE \A_reg[1] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[1]),
        .Q(A[1]));
  FDCE \A_reg[20] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[20]),
        .Q(A[20]));
  FDCE \A_reg[21] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[21]),
        .Q(A[21]));
  FDCE \A_reg[2] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[2]),
        .Q(A[2]));
  FDCE \A_reg[3] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[3]),
        .Q(A[3]));
  FDCE \A_reg[4] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[4]),
        .Q(A[4]));
  FDCE \A_reg[5] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[5]),
        .Q(A[5]));
  FDCE \A_reg[6] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[6]),
        .Q(A[6]));
  FDCE \A_reg[7] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[7]),
        .Q(A[7]));
  FDCE \A_reg[8] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[8]),
        .Q(A[8]));
  FDCE \A_reg[9] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[9]),
        .Q(A[9]));
  FDPE CE_n_reg
       (.C(sysclk),
        .CE(write_active_0),
        .D(1'b0),
        .PRE(write_complete_i_2_n_0),
        .Q(CE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(addr_cnt),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6_n_0 ),
        .I5(\FSM_onehot_state[4]_i_7_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(addr_cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(write_active_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(addr_cnt),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6_n_0 ),
        .I5(\FSM_onehot_state[4]_i_7_n_0 ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(addr_cnt_reg[10]),
        .I1(addr_cnt_reg[11]),
        .I2(addr_cnt_reg[8]),
        .I3(addr_cnt_reg[9]),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(addr_cnt_reg[14]),
        .I1(addr_cnt_reg[15]),
        .I2(addr_cnt_reg[12]),
        .I3(addr_cnt_reg[13]),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_5 
       (.I0(addr_cnt_reg[2]),
        .I1(addr_cnt_reg[3]),
        .I2(addr_cnt_reg[0]),
        .I3(addr_cnt_reg[1]),
        .O(\FSM_onehot_state[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_6 
       (.I0(addr_cnt_reg[6]),
        .I1(addr_cnt_reg[7]),
        .I2(addr_cnt_reg[4]),
        .I3(addr_cnt_reg[5]),
        .O(\FSM_onehot_state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[4]_i_7 
       (.I0(addr_cnt_reg[21]),
        .I1(addr_cnt_reg[20]),
        .I2(addr_cnt_reg[17]),
        .I3(addr_cnt_reg[16]),
        .I4(addr_cnt_reg[19]),
        .I5(addr_cnt_reg[18]),
        .O(\FSM_onehot_state[4]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(write_active_0));
  (* FSM_ENCODED_STATES = "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(write_active_0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(addr_cnt));
  (* FSM_ENCODED_STATES = "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  LUT3 #(
    .INIT(8'hDC)) 
    WE_n_i_1
       (.I0(write_active_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(write_complete_i_2_n_0),
        .Q(WE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[0]_i_2 
       (.I0(addr_cnt_reg[0]),
        .O(\addr_cnt[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_7 ),
        .Q(addr_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\addr_cnt_reg[0]_i_1_n_0 ,\addr_cnt_reg[0]_i_1_n_1 ,\addr_cnt_reg[0]_i_1_n_2 ,\addr_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\addr_cnt_reg[0]_i_1_n_4 ,\addr_cnt_reg[0]_i_1_n_5 ,\addr_cnt_reg[0]_i_1_n_6 ,\addr_cnt_reg[0]_i_1_n_7 }),
        .S({addr_cnt_reg[3:1],\addr_cnt[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_5 ),
        .Q(addr_cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_4 ),
        .Q(addr_cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_7 ),
        .Q(addr_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[12]_i_1 
       (.CI(\addr_cnt_reg[8]_i_1_n_0 ),
        .CO({\addr_cnt_reg[12]_i_1_n_0 ,\addr_cnt_reg[12]_i_1_n_1 ,\addr_cnt_reg[12]_i_1_n_2 ,\addr_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_cnt_reg[12]_i_1_n_4 ,\addr_cnt_reg[12]_i_1_n_5 ,\addr_cnt_reg[12]_i_1_n_6 ,\addr_cnt_reg[12]_i_1_n_7 }),
        .S(addr_cnt_reg[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[13] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_6 ),
        .Q(addr_cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_5 ),
        .Q(addr_cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_4 ),
        .Q(addr_cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_7 ),
        .Q(addr_cnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[16]_i_1 
       (.CI(\addr_cnt_reg[12]_i_1_n_0 ),
        .CO({\addr_cnt_reg[16]_i_1_n_0 ,\addr_cnt_reg[16]_i_1_n_1 ,\addr_cnt_reg[16]_i_1_n_2 ,\addr_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_cnt_reg[16]_i_1_n_4 ,\addr_cnt_reg[16]_i_1_n_5 ,\addr_cnt_reg[16]_i_1_n_6 ,\addr_cnt_reg[16]_i_1_n_7 }),
        .S(addr_cnt_reg[19:16]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[17] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_6 ),
        .Q(addr_cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_5 ),
        .Q(addr_cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_4 ),
        .Q(addr_cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_6 ),
        .Q(addr_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[20]_i_1_n_7 ),
        .Q(addr_cnt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[20]_i_1 
       (.CI(\addr_cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED [3:1],\addr_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED [3:2],\addr_cnt_reg[20]_i_1_n_6 ,\addr_cnt_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,addr_cnt_reg[21:20]}));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[21] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[20]_i_1_n_6 ),
        .Q(addr_cnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_5 ),
        .Q(addr_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_4 ),
        .Q(addr_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_7 ),
        .Q(addr_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[4]_i_1 
       (.CI(\addr_cnt_reg[0]_i_1_n_0 ),
        .CO({\addr_cnt_reg[4]_i_1_n_0 ,\addr_cnt_reg[4]_i_1_n_1 ,\addr_cnt_reg[4]_i_1_n_2 ,\addr_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_cnt_reg[4]_i_1_n_4 ,\addr_cnt_reg[4]_i_1_n_5 ,\addr_cnt_reg[4]_i_1_n_6 ,\addr_cnt_reg[4]_i_1_n_7 }),
        .S(addr_cnt_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_6 ),
        .Q(addr_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_5 ),
        .Q(addr_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_4 ),
        .Q(addr_cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_7 ),
        .Q(addr_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[8]_i_1 
       (.CI(\addr_cnt_reg[4]_i_1_n_0 ),
        .CO({\addr_cnt_reg[8]_i_1_n_0 ,\addr_cnt_reg[8]_i_1_n_1 ,\addr_cnt_reg[8]_i_1_n_2 ,\addr_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_cnt_reg[8]_i_1_n_4 ,\addr_cnt_reg[8]_i_1_n_5 ,\addr_cnt_reg[8]_i_1_n_6 ,\addr_cnt_reg[8]_i_1_n_7 }),
        .S(addr_cnt_reg[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_6 ),
        .Q(addr_cnt_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    write_active_i_1
       (.I0(write_active_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(write_active),
        .O(write_active_i_1_n_0));
  FDCE write_active_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(write_active_i_1_n_0),
        .Q(write_active));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    write_complete_i_1
       (.I0(write_active_0),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(write_complete),
        .O(write_complete_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_complete_i_2
       (.I0(reset_n),
        .O(write_complete_i_2_n_0));
  FDCE write_complete_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(write_complete_i_1_n_0),
        .Q(write_complete));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[0]_i_1 
       (.I0(DQ_o[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[10]_i_1 
       (.I0(DQ_o[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[11]_i_1 
       (.I0(DQ_o[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[12]_i_1 
       (.I0(DQ_o[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[13]_i_1 
       (.I0(DQ_o[13]),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[14]_i_1 
       (.I0(DQ_o[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[15]_i_1 
       (.I0(DQ_o[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[1]_i_1 
       (.I0(DQ_o[1]),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[2]_i_1 
       (.I0(DQ_o[2]),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[3]_i_1 
       (.I0(DQ_o[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[4]_i_1 
       (.I0(DQ_o[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[5]_i_1 
       (.I0(DQ_o[5]),
        .O(p_0_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[6]_i_1 
       (.I0(DQ_o[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[7]_i_1 
       (.I0(DQ_o[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[8]_i_1 
       (.I0(DQ_o[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_data[9]_i_1 
       (.I0(DQ_o[9]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[0] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[0]),
        .Q(DQ_o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[10] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[10]),
        .Q(DQ_o[10]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[11]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[12]),
        .Q(DQ_o[12]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[13] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[13]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[13]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[14]),
        .Q(DQ_o[14]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[15]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[15]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[1]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[2]),
        .Q(DQ_o[2]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[3]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[4]),
        .Q(DQ_o[4]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[5] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[5]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[6]),
        .Q(DQ_o[6]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[7]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[8]),
        .Q(DQ_o[8]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[9] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_0_in[9]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[9]));
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

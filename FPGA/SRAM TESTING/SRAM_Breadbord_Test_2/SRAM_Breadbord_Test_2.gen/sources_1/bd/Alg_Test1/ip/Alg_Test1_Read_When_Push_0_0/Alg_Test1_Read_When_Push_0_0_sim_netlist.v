// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep  4 15:07:47 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadbord_Test_2/SRAM_Breadbord_Test_2.gen/sources_1/bd/Alg_Test1/ip/Alg_Test1_Read_When_Push_0_0/Alg_Test1_Read_When_Push_0_0_sim_netlist.v}
// Design      : Alg_Test1_Read_When_Push_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Alg_Test1_Read_When_Push_0_0,Read_When_Push,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Read_When_Push,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Alg_Test1_Read_When_Push_0_0
   (sysclk,
    reset_n,
    btn1,
    i_TX_done,
    o_TX_DV,
    o_TX_data,
    A,
    CE_n,
    WE_n,
    DQ_i,
    DQ_t);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input btn1;
  input i_TX_done;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output [21:0]A;
  output CE_n;
  output WE_n;
  input [15:0]DQ_i;
  output [15:0]DQ_t;

  wire \<const1> ;
  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_i;
  wire WE_n;
  wire btn1;
  wire i_TX_done;
  wire o_TX_DV;
  wire [7:0]o_TX_data;
  wire reset_n;
  wire sysclk;

  assign DQ_t[15] = \<const1> ;
  assign DQ_t[14] = \<const1> ;
  assign DQ_t[13] = \<const1> ;
  assign DQ_t[12] = \<const1> ;
  assign DQ_t[11] = \<const1> ;
  assign DQ_t[10] = \<const1> ;
  assign DQ_t[9] = \<const1> ;
  assign DQ_t[8] = \<const1> ;
  assign DQ_t[7] = \<const1> ;
  assign DQ_t[6] = \<const1> ;
  assign DQ_t[5] = \<const1> ;
  assign DQ_t[4] = \<const1> ;
  assign DQ_t[3] = \<const1> ;
  assign DQ_t[2] = \<const1> ;
  assign DQ_t[1] = \<const1> ;
  assign DQ_t[0] = \<const1> ;
  Alg_Test1_Read_When_Push_0_0_Read_When_Push U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .WE_n(WE_n),
        .btn1(btn1),
        .i_TX_done(i_TX_done),
        .o_TX_DV(o_TX_DV),
        .o_TX_data(o_TX_data),
        .reset_n(reset_n),
        .sysclk(sysclk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Read_When_Push" *) 
module Alg_Test1_Read_When_Push_0_0_Read_When_Push
   (WE_n,
    o_TX_data,
    A,
    o_TX_DV,
    CE_n,
    sysclk,
    DQ_i,
    i_TX_done,
    btn1,
    reset_n);
  output WE_n;
  output [7:0]o_TX_data;
  output [21:0]A;
  output o_TX_DV;
  output CE_n;
  input sysclk;
  input [15:0]DQ_i;
  input i_TX_done;
  input btn1;
  input reset_n;

  wire [21:0]A;
  wire \A[21]_i_1_n_0 ;
  wire CE_n;
  wire CE_n_i_1_n_0;
  wire [15:0]DQ_i;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire WE_n;
  wire \addr_cnt[0]_i_1_n_0 ;
  wire \addr_cnt[0]_i_3_n_0 ;
  wire [21:0]addr_cnt_reg;
  wire \addr_cnt_reg[0]_i_2_n_0 ;
  wire \addr_cnt_reg[0]_i_2_n_1 ;
  wire \addr_cnt_reg[0]_i_2_n_2 ;
  wire \addr_cnt_reg[0]_i_2_n_3 ;
  wire \addr_cnt_reg[0]_i_2_n_4 ;
  wire \addr_cnt_reg[0]_i_2_n_5 ;
  wire \addr_cnt_reg[0]_i_2_n_6 ;
  wire \addr_cnt_reg[0]_i_2_n_7 ;
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
  wire btn1;
  wire btn1_prev;
  wire btn1_prev_i_1_n_0;
  wire btn1_prev_reg_n_0;
  wire [15:0]data_buf;
  wire data_buf0;
  wire data_buf_0;
  wire i_TX_done;
  wire \mess_cnt[0]_i_1_n_0 ;
  wire \mess_cnt_reg_n_0_[0] ;
  wire o_TX_DV;
  wire o_TX_DV_i_1_n_0;
  wire [7:0]o_TX_data;
  wire o_TX_data0;
  wire [7:0]p_0_in;
  wire reset_n;
  wire sysclk;
  wire [3:1]\NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \A[21]_i_1 
       (.I0(reset_n),
        .O(\A[21]_i_1_n_0 ));
  FDCE \A_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[0]),
        .Q(A[0]));
  FDCE \A_reg[10] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[10]),
        .Q(A[10]));
  FDCE \A_reg[11] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[11]),
        .Q(A[11]));
  FDCE \A_reg[12] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[12]),
        .Q(A[12]));
  FDCE \A_reg[13] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[13]),
        .Q(A[13]));
  FDCE \A_reg[14] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[14]),
        .Q(A[14]));
  FDCE \A_reg[15] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[15]),
        .Q(A[15]));
  FDCE \A_reg[16] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[16]),
        .Q(A[16]));
  FDCE \A_reg[17] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[17]),
        .Q(A[17]));
  FDCE \A_reg[18] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[18]),
        .Q(A[18]));
  FDCE \A_reg[19] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[19]),
        .Q(A[19]));
  FDCE \A_reg[1] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[1]),
        .Q(A[1]));
  FDCE \A_reg[20] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[20]),
        .Q(A[20]));
  FDCE \A_reg[21] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[21]),
        .Q(A[21]));
  FDCE \A_reg[2] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[2]),
        .Q(A[2]));
  FDCE \A_reg[3] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[3]),
        .Q(A[3]));
  FDCE \A_reg[4] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[4]),
        .Q(A[4]));
  FDCE \A_reg[5] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[5]),
        .Q(A[5]));
  FDCE \A_reg[6] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[6]),
        .Q(A[6]));
  FDCE \A_reg[7] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[7]),
        .Q(A[7]));
  FDCE \A_reg[8] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[8]),
        .Q(A[8]));
  FDCE \A_reg[9] 
       (.C(sysclk),
        .CE(\FSM_onehot_state_reg_n_0_[1] ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(addr_cnt_reg[9]),
        .Q(A[9]));
  LUT3 #(
    .INIT(8'hBA)) 
    CE_n_i_1
       (.I0(btn1_prev),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(CE_n),
        .O(CE_n_i_1_n_0));
  FDPE CE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(CE_n_i_1_n_0),
        .PRE(\A[21]_i_1_n_0 ),
        .Q(CE_n));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(btn1),
        .I2(btn1_prev_reg_n_0),
        .I3(btn1_prev),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(btn1_prev),
        .I1(btn1_prev_reg_n_0),
        .I2(btn1),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(btn1_prev),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\addr_cnt[0]_i_1_n_0 ),
        .I3(data_buf_0),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\A[21]_i_1_n_0 ),
        .Q(btn1_prev));
  (* FSM_ENCODED_STATES = "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(data_buf_0));
  (* FSM_ENCODED_STATES = "read:00100,read_capture:01000,send_data:10000,idle:00001,read_start:00010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(data_buf_0),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    WE_n_reg
       (.CLR(1'b0),
        .D(\A[21]_i_1_n_0 ),
        .G(reset_n),
        .GE(1'b1),
        .Q(WE_n));
  LUT3 #(
    .INIT(8'h80)) 
    \addr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(i_TX_done),
        .I2(\mess_cnt_reg_n_0_[0] ),
        .O(\addr_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[0]_i_3 
       (.I0(addr_cnt_reg[0]),
        .O(\addr_cnt[0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[0]_i_2_n_7 ),
        .Q(addr_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\addr_cnt_reg[0]_i_2_n_0 ,\addr_cnt_reg[0]_i_2_n_1 ,\addr_cnt_reg[0]_i_2_n_2 ,\addr_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\addr_cnt_reg[0]_i_2_n_4 ,\addr_cnt_reg[0]_i_2_n_5 ,\addr_cnt_reg[0]_i_2_n_6 ,\addr_cnt_reg[0]_i_2_n_7 }),
        .S({addr_cnt_reg[3:1],\addr_cnt[0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[8]_i_1_n_5 ),
        .Q(addr_cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[8]_i_1_n_4 ),
        .Q(addr_cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
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
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[12]_i_1_n_6 ),
        .Q(addr_cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[12]_i_1_n_5 ),
        .Q(addr_cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[12]_i_1_n_4 ),
        .Q(addr_cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
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
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[16]_i_1_n_6 ),
        .Q(addr_cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[16]_i_1_n_5 ),
        .Q(addr_cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[16]_i_1_n_4 ),
        .Q(addr_cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[0]_i_2_n_6 ),
        .Q(addr_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
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
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[20]_i_1_n_6 ),
        .Q(addr_cnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[0]_i_2_n_5 ),
        .Q(addr_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[0]_i_2_n_4 ),
        .Q(addr_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[4]_i_1_n_7 ),
        .Q(addr_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_cnt_reg[4]_i_1 
       (.CI(\addr_cnt_reg[0]_i_2_n_0 ),
        .CO({\addr_cnt_reg[4]_i_1_n_0 ,\addr_cnt_reg[4]_i_1_n_1 ,\addr_cnt_reg[4]_i_1_n_2 ,\addr_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_cnt_reg[4]_i_1_n_4 ,\addr_cnt_reg[4]_i_1_n_5 ,\addr_cnt_reg[4]_i_1_n_6 ,\addr_cnt_reg[4]_i_1_n_7 }),
        .S(addr_cnt_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[4]_i_1_n_6 ),
        .Q(addr_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[4]_i_1_n_5 ),
        .Q(addr_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[4]_i_1_n_4 ),
        .Q(addr_cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
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
        .CE(\addr_cnt[0]_i_1_n_0 ),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\addr_cnt_reg[8]_i_1_n_6 ),
        .Q(addr_cnt_reg[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    btn1_prev_i_1
       (.I0(btn1),
        .I1(btn1_prev),
        .I2(btn1_prev_reg_n_0),
        .O(btn1_prev_i_1_n_0));
  FDCE btn1_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\A[21]_i_1_n_0 ),
        .D(btn1_prev_i_1_n_0),
        .Q(btn1_prev_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_buf[15]_i_1 
       (.I0(reset_n),
        .I1(data_buf_0),
        .O(data_buf0));
  FDRE \data_buf_reg[0] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[0]),
        .Q(data_buf[0]),
        .R(1'b0));
  FDRE \data_buf_reg[10] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[10]),
        .Q(data_buf[10]),
        .R(1'b0));
  FDRE \data_buf_reg[11] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[11]),
        .Q(data_buf[11]),
        .R(1'b0));
  FDRE \data_buf_reg[12] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[12]),
        .Q(data_buf[12]),
        .R(1'b0));
  FDRE \data_buf_reg[13] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[13]),
        .Q(data_buf[13]),
        .R(1'b0));
  FDRE \data_buf_reg[14] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[14]),
        .Q(data_buf[14]),
        .R(1'b0));
  FDRE \data_buf_reg[15] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[15]),
        .Q(data_buf[15]),
        .R(1'b0));
  FDRE \data_buf_reg[1] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[1]),
        .Q(data_buf[1]),
        .R(1'b0));
  FDRE \data_buf_reg[2] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[2]),
        .Q(data_buf[2]),
        .R(1'b0));
  FDRE \data_buf_reg[3] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[3]),
        .Q(data_buf[3]),
        .R(1'b0));
  FDRE \data_buf_reg[4] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[4]),
        .Q(data_buf[4]),
        .R(1'b0));
  FDRE \data_buf_reg[5] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[5]),
        .Q(data_buf[5]),
        .R(1'b0));
  FDRE \data_buf_reg[6] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[6]),
        .Q(data_buf[6]),
        .R(1'b0));
  FDRE \data_buf_reg[7] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[7]),
        .Q(data_buf[7]),
        .R(1'b0));
  FDRE \data_buf_reg[8] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[8]),
        .Q(data_buf[8]),
        .R(1'b0));
  FDRE \data_buf_reg[9] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[9]),
        .Q(data_buf[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h53F0)) 
    \mess_cnt[0]_i_1 
       (.I0(i_TX_done),
        .I1(btn1_prev),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\mess_cnt_reg_n_0_[0] ),
        .O(\mess_cnt[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mess_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\A[21]_i_1_n_0 ),
        .D(\mess_cnt[0]_i_1_n_0 ),
        .Q(\mess_cnt_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hDF0FDFFFD000D000)) 
    o_TX_DV_i_1
       (.I0(\mess_cnt_reg_n_0_[0] ),
        .I1(i_TX_done),
        .I2(reset_n),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(btn1_prev),
        .I5(o_TX_DV),
        .O(o_TX_DV_i_1_n_0));
  FDRE o_TX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_TX_DV_i_1_n_0),
        .Q(o_TX_DV),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[0]_i_1 
       (.I0(data_buf[0]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[8]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[1]_i_1 
       (.I0(data_buf[1]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[9]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[2]_i_1 
       (.I0(data_buf[2]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[10]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[3]_i_1 
       (.I0(data_buf[3]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[11]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[4]_i_1 
       (.I0(data_buf[4]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[12]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[5]_i_1 
       (.I0(data_buf[5]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[13]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[6]_i_1 
       (.I0(data_buf[6]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[14]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h8A00)) 
    \o_TX_data[7]_i_1 
       (.I0(reset_n),
        .I1(i_TX_done),
        .I2(\mess_cnt_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(o_TX_data0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[7]_i_2 
       (.I0(data_buf[7]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[15]),
        .O(p_0_in[7]));
  FDRE \o_TX_data_reg[0] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[0]),
        .Q(o_TX_data[0]),
        .R(1'b0));
  FDRE \o_TX_data_reg[1] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[1]),
        .Q(o_TX_data[1]),
        .R(1'b0));
  FDRE \o_TX_data_reg[2] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[2]),
        .Q(o_TX_data[2]),
        .R(1'b0));
  FDRE \o_TX_data_reg[3] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[3]),
        .Q(o_TX_data[3]),
        .R(1'b0));
  FDRE \o_TX_data_reg[4] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[4]),
        .Q(o_TX_data[4]),
        .R(1'b0));
  FDRE \o_TX_data_reg[5] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[5]),
        .Q(o_TX_data[5]),
        .R(1'b0));
  FDRE \o_TX_data_reg[6] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[6]),
        .Q(o_TX_data[6]),
        .R(1'b0));
  FDRE \o_TX_data_reg[7] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(p_0_in[7]),
        .Q(o_TX_data[7]),
        .R(1'b0));
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

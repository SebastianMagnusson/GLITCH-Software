// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Sep 20 12:24:17 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_Write1_100MHZ_0_0/PCB_Test1_Write1_100MHZ_0_0_sim_netlist.v
// Design      : PCB_Test1_Write1_100MHZ_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_Test1_Write1_100MHZ_0_0,Write1_100MHZ,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Write1_100MHZ,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_Test1_Write1_100MHZ_0_0
   (sysclk,
    reset_n,
    write_complete,
    A,
    CE_n,
    WE_n,
    DQ_o,
    DQ_t,
    decoder);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output write_complete;
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output [2:0]decoder;

  wire \<const0> ;
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
  assign decoder[2] = \<const0> ;
  assign decoder[1] = \<const0> ;
  assign decoder[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  PCB_Test1_Write1_100MHZ_0_0_Write1_100MHZ U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_o(DQ_o),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
endmodule

(* ORIG_REF_NAME = "Write1_100MHZ" *) 
module PCB_Test1_Write1_100MHZ_0_0_Write1_100MHZ
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
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire addr_cnt;
  wire \addr_cnt[11]_i_2_n_0 ;
  wire \addr_cnt[11]_i_3_n_0 ;
  wire \addr_cnt[11]_i_4_n_0 ;
  wire \addr_cnt[11]_i_5_n_0 ;
  wire \addr_cnt[11]_i_6_n_0 ;
  wire \addr_cnt[11]_i_7_n_0 ;
  wire \addr_cnt[12]_i_10_n_0 ;
  wire \addr_cnt[12]_i_11_n_0 ;
  wire \addr_cnt[12]_i_2_n_0 ;
  wire \addr_cnt[12]_i_4_n_0 ;
  wire \addr_cnt[12]_i_5_n_0 ;
  wire \addr_cnt[12]_i_6_n_0 ;
  wire \addr_cnt[12]_i_7_n_0 ;
  wire \addr_cnt[12]_i_8_n_0 ;
  wire \addr_cnt[12]_i_9_n_0 ;
  wire \addr_cnt[16]_i_3_n_0 ;
  wire \addr_cnt[16]_i_4_n_0 ;
  wire \addr_cnt[16]_i_5_n_0 ;
  wire \addr_cnt[17]_i_2_n_0 ;
  wire \addr_cnt[17]_i_3_n_0 ;
  wire \addr_cnt[17]_i_4_n_0 ;
  wire \addr_cnt[19]_i_2_n_0 ;
  wire \addr_cnt[19]_i_3_n_0 ;
  wire \addr_cnt[1]_i_2_n_0 ;
  wire \addr_cnt[20]_i_10_n_0 ;
  wire \addr_cnt[20]_i_3_n_0 ;
  wire \addr_cnt[20]_i_4_n_0 ;
  wire \addr_cnt[20]_i_5_n_0 ;
  wire \addr_cnt[20]_i_6_n_0 ;
  wire \addr_cnt[20]_i_7_n_0 ;
  wire \addr_cnt[20]_i_8_n_0 ;
  wire \addr_cnt[20]_i_9_n_0 ;
  wire \addr_cnt[2]_i_1_n_0 ;
  wire \addr_cnt[4]_i_1_n_0 ;
  wire \addr_cnt[6]_i_1_n_0 ;
  wire \addr_cnt[7]_i_10_n_0 ;
  wire \addr_cnt[7]_i_2_n_0 ;
  wire \addr_cnt[7]_i_3_n_0 ;
  wire \addr_cnt[7]_i_4_n_0 ;
  wire \addr_cnt[7]_i_5_n_0 ;
  wire \addr_cnt[7]_i_6_n_0 ;
  wire \addr_cnt[7]_i_7_n_0 ;
  wire \addr_cnt[7]_i_8_n_0 ;
  wire \addr_cnt[7]_i_9_n_0 ;
  wire \addr_cnt[8]_i_1_n_0 ;
  wire \addr_cnt[8]_i_3_n_0 ;
  wire \addr_cnt[8]_i_4_n_0 ;
  wire \addr_cnt[8]_i_5_n_0 ;
  wire \addr_cnt[8]_i_6_n_0 ;
  wire \addr_cnt[8]_i_7_n_0 ;
  wire \addr_cnt_reg[12]_i_3_n_0 ;
  wire \addr_cnt_reg[12]_i_3_n_1 ;
  wire \addr_cnt_reg[12]_i_3_n_2 ;
  wire \addr_cnt_reg[12]_i_3_n_3 ;
  wire \addr_cnt_reg[16]_i_2_n_0 ;
  wire \addr_cnt_reg[16]_i_2_n_1 ;
  wire \addr_cnt_reg[16]_i_2_n_2 ;
  wire \addr_cnt_reg[16]_i_2_n_3 ;
  wire \addr_cnt_reg[20]_i_2_n_0 ;
  wire \addr_cnt_reg[20]_i_2_n_1 ;
  wire \addr_cnt_reg[20]_i_2_n_2 ;
  wire \addr_cnt_reg[20]_i_2_n_3 ;
  wire \addr_cnt_reg[4]_i_2_n_0 ;
  wire \addr_cnt_reg[4]_i_2_n_1 ;
  wire \addr_cnt_reg[4]_i_2_n_2 ;
  wire \addr_cnt_reg[4]_i_2_n_3 ;
  wire \addr_cnt_reg[8]_i_2_n_0 ;
  wire \addr_cnt_reg[8]_i_2_n_1 ;
  wire \addr_cnt_reg[8]_i_2_n_2 ;
  wire \addr_cnt_reg[8]_i_2_n_3 ;
  wire \addr_cnt_reg_n_0_[0] ;
  wire \addr_cnt_reg_n_0_[10] ;
  wire \addr_cnt_reg_n_0_[11] ;
  wire \addr_cnt_reg_n_0_[12] ;
  wire \addr_cnt_reg_n_0_[13] ;
  wire \addr_cnt_reg_n_0_[14] ;
  wire \addr_cnt_reg_n_0_[15] ;
  wire \addr_cnt_reg_n_0_[16] ;
  wire \addr_cnt_reg_n_0_[17] ;
  wire \addr_cnt_reg_n_0_[18] ;
  wire \addr_cnt_reg_n_0_[19] ;
  wire \addr_cnt_reg_n_0_[1] ;
  wire \addr_cnt_reg_n_0_[20] ;
  wire \addr_cnt_reg_n_0_[21] ;
  wire \addr_cnt_reg_n_0_[2] ;
  wire \addr_cnt_reg_n_0_[3] ;
  wire \addr_cnt_reg_n_0_[4] ;
  wire \addr_cnt_reg_n_0_[5] ;
  wire \addr_cnt_reg_n_0_[6] ;
  wire \addr_cnt_reg_n_0_[7] ;
  wire \addr_cnt_reg_n_0_[8] ;
  wire \addr_cnt_reg_n_0_[9] ;
  wire [21:1]data0;
  wire [21:0]p_1_in;
  wire reset_n;
  wire sysclk;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count[1]_i_1_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire \wait_count_reg_n_0_[1] ;
  wire write_active;
  wire write_active_0;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire write_complete_i_1_n_0;
  wire write_complete_i_2_n_0;
  wire \write_data[0]_i_1_n_0 ;
  wire \write_data[10]_i_1_n_0 ;
  wire \write_data[11]_i_1_n_0 ;
  wire \write_data[12]_i_1_n_0 ;
  wire \write_data[13]_i_1_n_0 ;
  wire \write_data[14]_i_1_n_0 ;
  wire \write_data[15]_i_10_n_0 ;
  wire \write_data[15]_i_11_n_0 ;
  wire \write_data[15]_i_12_n_0 ;
  wire \write_data[15]_i_13_n_0 ;
  wire \write_data[15]_i_14_n_0 ;
  wire \write_data[15]_i_15_n_0 ;
  wire \write_data[15]_i_16_n_0 ;
  wire \write_data[15]_i_17_n_0 ;
  wire \write_data[15]_i_18_n_0 ;
  wire \write_data[15]_i_19_n_0 ;
  wire \write_data[15]_i_20_n_0 ;
  wire \write_data[15]_i_21_n_0 ;
  wire \write_data[15]_i_22_n_0 ;
  wire \write_data[15]_i_23_n_0 ;
  wire \write_data[15]_i_2_n_0 ;
  wire \write_data[15]_i_3_n_0 ;
  wire \write_data[15]_i_4_n_0 ;
  wire \write_data[15]_i_5_n_0 ;
  wire \write_data[15]_i_6_n_0 ;
  wire \write_data[15]_i_7_n_0 ;
  wire \write_data[15]_i_8_n_0 ;
  wire \write_data[15]_i_9_n_0 ;
  wire \write_data[1]_i_1_n_0 ;
  wire \write_data[2]_i_1_n_0 ;
  wire \write_data[3]_i_1_n_0 ;
  wire \write_data[4]_i_1_n_0 ;
  wire \write_data[5]_i_1_n_0 ;
  wire \write_data[6]_i_1_n_0 ;
  wire \write_data[7]_i_1_n_0 ;
  wire \write_data[8]_i_1_n_0 ;
  wire \write_data[9]_i_1_n_0 ;
  wire [15:0]write_data_buf;
  wire write_data_buf0;
  wire [3:0]\NLW_addr_cnt_reg[21]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_addr_cnt_reg[21]_i_2_O_UNCONNECTED ;

  FDCE \A_reg[0] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[0] ),
        .Q(A[0]));
  FDCE \A_reg[10] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[10] ),
        .Q(A[10]));
  FDCE \A_reg[11] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[11] ),
        .Q(A[11]));
  FDCE \A_reg[12] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[12] ),
        .Q(A[12]));
  FDCE \A_reg[13] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[13] ),
        .Q(A[13]));
  FDCE \A_reg[14] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[14] ),
        .Q(A[14]));
  FDCE \A_reg[15] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[15] ),
        .Q(A[15]));
  FDCE \A_reg[16] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[16] ),
        .Q(A[16]));
  FDCE \A_reg[17] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[17] ),
        .Q(A[17]));
  FDCE \A_reg[18] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[18] ),
        .Q(A[18]));
  FDCE \A_reg[19] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[19] ),
        .Q(A[19]));
  FDCE \A_reg[1] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[1] ),
        .Q(A[1]));
  FDCE \A_reg[20] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[20] ),
        .Q(A[20]));
  FDCE \A_reg[21] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[21] ),
        .Q(A[21]));
  FDCE \A_reg[2] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[2] ),
        .Q(A[2]));
  FDCE \A_reg[3] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[3] ),
        .Q(A[3]));
  FDCE \A_reg[4] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[4] ),
        .Q(A[4]));
  FDCE \A_reg[5] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[5] ),
        .Q(A[5]));
  FDCE \A_reg[6] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[6] ),
        .Q(A[6]));
  FDCE \A_reg[7] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[7] ),
        .Q(A[7]));
  FDCE \A_reg[8] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[8] ),
        .Q(A[8]));
  FDCE \A_reg[9] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[9] ),
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
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(write_active_0),
        .I1(\wait_count_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\write_data[15]_i_3_n_0 ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "write:00010,write_finish:00100,next_addr:01000,write_start:00001,done:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(addr_cnt),
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
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cnt[0]_i_1 
       (.I0(\addr_cnt_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFAAABAAABAAAB)) 
    \addr_cnt[10]_i_1 
       (.I0(\addr_cnt[12]_i_2_n_0 ),
        .I1(\addr_cnt[16]_i_5_n_0 ),
        .I2(\addr_cnt[16]_i_4_n_0 ),
        .I3(\addr_cnt[16]_i_3_n_0 ),
        .I4(data0[10]),
        .I5(\addr_cnt[12]_i_4_n_0 ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \addr_cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\addr_cnt[11]_i_2_n_0 ),
        .I2(\addr_cnt[11]_i_3_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hFFFFFCFFFAFAFCFF)) 
    \addr_cnt[11]_i_2 
       (.I0(\addr_cnt[12]_i_9_n_0 ),
        .I1(\addr_cnt[11]_i_4_n_0 ),
        .I2(\addr_cnt[11]_i_5_n_0 ),
        .I3(\addr_cnt[11]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[12] ),
        .I5(\addr_cnt[11]_i_7_n_0 ),
        .O(\addr_cnt[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    \addr_cnt[11]_i_3 
       (.I0(\write_data[15]_i_11_n_0 ),
        .I1(\addr_cnt[16]_i_4_n_0 ),
        .I2(\addr_cnt[16]_i_5_n_0 ),
        .I3(\addr_cnt[16]_i_3_n_0 ),
        .O(\addr_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr_cnt[11]_i_4 
       (.I0(\addr_cnt_reg_n_0_[10] ),
        .I1(\addr_cnt_reg_n_0_[1] ),
        .O(\addr_cnt[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \addr_cnt[11]_i_5 
       (.I0(\addr_cnt_reg_n_0_[9] ),
        .I1(\addr_cnt_reg_n_0_[16] ),
        .I2(\addr_cnt_reg_n_0_[0] ),
        .I3(\addr_cnt_reg_n_0_[11] ),
        .I4(\addr_cnt[20]_i_8_n_0 ),
        .O(\addr_cnt[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \addr_cnt[11]_i_6 
       (.I0(\addr_cnt_reg_n_0_[17] ),
        .I1(\addr_cnt_reg_n_0_[14] ),
        .I2(\addr_cnt_reg_n_0_[15] ),
        .I3(\addr_cnt_reg_n_0_[19] ),
        .I4(\addr_cnt[20]_i_7_n_0 ),
        .I5(\write_data[15]_i_18_n_0 ),
        .O(\addr_cnt[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \addr_cnt[11]_i_7 
       (.I0(\addr_cnt_reg_n_0_[5] ),
        .I1(\addr_cnt_reg_n_0_[20] ),
        .I2(\addr_cnt_reg_n_0_[18] ),
        .I3(\addr_cnt_reg_n_0_[14] ),
        .I4(\addr_cnt[12]_i_6_n_0 ),
        .O(\addr_cnt[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAABAAABAAAB)) 
    \addr_cnt[12]_i_1 
       (.I0(\addr_cnt[12]_i_2_n_0 ),
        .I1(\addr_cnt[16]_i_5_n_0 ),
        .I2(\addr_cnt[16]_i_4_n_0 ),
        .I3(\addr_cnt[16]_i_3_n_0 ),
        .I4(data0[12]),
        .I5(\addr_cnt[12]_i_4_n_0 ),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \addr_cnt[12]_i_10 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[1] ),
        .I2(\addr_cnt_reg_n_0_[10] ),
        .I3(\addr_cnt_reg_n_0_[16] ),
        .I4(\addr_cnt[8]_i_5_n_0 ),
        .O(\addr_cnt[12]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \addr_cnt[12]_i_11 
       (.I0(\addr_cnt_reg_n_0_[7] ),
        .I1(\addr_cnt_reg_n_0_[20] ),
        .I2(\addr_cnt_reg_n_0_[18] ),
        .I3(\addr_cnt_reg_n_0_[14] ),
        .I4(\addr_cnt_reg_n_0_[17] ),
        .O(\addr_cnt[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \addr_cnt[12]_i_2 
       (.I0(\addr_cnt[12]_i_5_n_0 ),
        .I1(\addr_cnt[12]_i_6_n_0 ),
        .I2(\addr_cnt[12]_i_7_n_0 ),
        .I3(\addr_cnt[12]_i_8_n_0 ),
        .I4(\addr_cnt[12]_i_9_n_0 ),
        .I5(\addr_cnt_reg_n_0_[0] ),
        .O(\addr_cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEFFFE)) 
    \addr_cnt[12]_i_4 
       (.I0(\addr_cnt[16]_i_3_n_0 ),
        .I1(\addr_cnt[12]_i_10_n_0 ),
        .I2(\addr_cnt_reg_n_0_[7] ),
        .I3(\write_data[15]_i_10_n_0 ),
        .I4(\addr_cnt_reg_n_0_[9] ),
        .I5(\addr_cnt[12]_i_11_n_0 ),
        .O(\addr_cnt[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr_cnt[12]_i_5 
       (.I0(\addr_cnt_reg_n_0_[9] ),
        .I1(\addr_cnt_reg_n_0_[16] ),
        .O(\addr_cnt[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \addr_cnt[12]_i_6 
       (.I0(\addr_cnt_reg_n_0_[4] ),
        .I1(\addr_cnt_reg_n_0_[2] ),
        .I2(\addr_cnt_reg_n_0_[8] ),
        .I3(\addr_cnt_reg_n_0_[6] ),
        .O(\addr_cnt[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \addr_cnt[12]_i_7 
       (.I0(\addr_cnt_reg_n_0_[14] ),
        .I1(\addr_cnt_reg_n_0_[18] ),
        .I2(\addr_cnt_reg_n_0_[20] ),
        .I3(\addr_cnt_reg_n_0_[5] ),
        .O(\addr_cnt[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \addr_cnt[12]_i_8 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[21] ),
        .I2(\addr_cnt_reg_n_0_[13] ),
        .I3(\addr_cnt_reg_n_0_[7] ),
        .I4(\addr_cnt_reg_n_0_[11] ),
        .O(\addr_cnt[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \addr_cnt[12]_i_9 
       (.I0(\addr_cnt_reg_n_0_[17] ),
        .I1(\addr_cnt_reg_n_0_[3] ),
        .I2(\addr_cnt_reg_n_0_[15] ),
        .I3(\addr_cnt_reg_n_0_[19] ),
        .I4(\addr_cnt_reg_n_0_[1] ),
        .I5(\addr_cnt_reg_n_0_[10] ),
        .O(\addr_cnt[12]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \addr_cnt[13]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(data0[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFFFFFEAA)) 
    \addr_cnt[14]_i_1 
       (.I0(\addr_cnt[17]_i_2_n_0 ),
        .I1(\addr_cnt[17]_i_3_n_0 ),
        .I2(\addr_cnt[17]_i_4_n_0 ),
        .I3(data0[14]),
        .I4(\addr_cnt[20]_i_6_n_0 ),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \addr_cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\addr_cnt[19]_i_2_n_0 ),
        .I2(\addr_cnt[19]_i_3_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hFDFDFDFDFDFDFDDD)) 
    \addr_cnt[16]_i_1 
       (.I0(\addr_cnt[19]_i_2_n_0 ),
        .I1(\addr_cnt[20]_i_6_n_0 ),
        .I2(data0[16]),
        .I3(\addr_cnt[16]_i_3_n_0 ),
        .I4(\addr_cnt[16]_i_4_n_0 ),
        .I5(\addr_cnt[16]_i_5_n_0 ),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \addr_cnt[16]_i_3 
       (.I0(\write_data[15]_i_18_n_0 ),
        .I1(\addr_cnt_reg_n_0_[0] ),
        .O(\addr_cnt[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \addr_cnt[16]_i_4 
       (.I0(\addr_cnt[20]_i_10_n_0 ),
        .I1(\addr_cnt_reg_n_0_[18] ),
        .I2(\addr_cnt_reg_n_0_[20] ),
        .I3(\addr_cnt_reg_n_0_[16] ),
        .I4(\addr_cnt_reg_n_0_[9] ),
        .O(\addr_cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFF7F)) 
    \addr_cnt[16]_i_5 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[21] ),
        .I2(\addr_cnt_reg_n_0_[13] ),
        .I3(\addr_cnt_reg_n_0_[7] ),
        .I4(\addr_cnt_reg_n_0_[17] ),
        .I5(\addr_cnt_reg_n_0_[14] ),
        .O(\addr_cnt[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEAA)) 
    \addr_cnt[17]_i_1 
       (.I0(\addr_cnt[17]_i_2_n_0 ),
        .I1(\addr_cnt[17]_i_3_n_0 ),
        .I2(\addr_cnt[17]_i_4_n_0 ),
        .I3(data0[17]),
        .I4(\addr_cnt[20]_i_6_n_0 ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \addr_cnt[17]_i_2 
       (.I0(\addr_cnt[20]_i_8_n_0 ),
        .I1(\addr_cnt_reg_n_0_[12] ),
        .I2(\addr_cnt_reg_n_0_[14] ),
        .I3(\addr_cnt_reg_n_0_[17] ),
        .I4(\addr_cnt[16]_i_3_n_0 ),
        .I5(\addr_cnt[16]_i_4_n_0 ),
        .O(\addr_cnt[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF8A)) 
    \addr_cnt[17]_i_3 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[16] ),
        .I2(\addr_cnt_reg_n_0_[9] ),
        .I3(\addr_cnt[16]_i_3_n_0 ),
        .O(\addr_cnt[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBBBA)) 
    \addr_cnt[17]_i_4 
       (.I0(\addr_cnt_reg_n_0_[14] ),
        .I1(\addr_cnt_reg_n_0_[12] ),
        .I2(\addr_cnt_reg_n_0_[15] ),
        .I3(\addr_cnt_reg_n_0_[19] ),
        .I4(\addr_cnt_reg_n_0_[17] ),
        .I5(\addr_cnt[20]_i_3_n_0 ),
        .O(\addr_cnt[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA88A8)) 
    \addr_cnt[18]_i_1 
       (.I0(data0[18]),
        .I1(\addr_cnt[20]_i_3_n_0 ),
        .I2(\addr_cnt[20]_i_4_n_0 ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\addr_cnt[20]_i_5_n_0 ),
        .I5(\addr_cnt[20]_i_6_n_0 ),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \addr_cnt[19]_i_1 
       (.I0(data0[19]),
        .I1(\addr_cnt[19]_i_2_n_0 ),
        .I2(\addr_cnt[19]_i_3_n_0 ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \addr_cnt[19]_i_2 
       (.I0(\addr_cnt[16]_i_3_n_0 ),
        .I1(\addr_cnt[20]_i_9_n_0 ),
        .I2(\addr_cnt_reg_n_0_[12] ),
        .I3(\addr_cnt_reg_n_0_[9] ),
        .I4(\addr_cnt[20]_i_8_n_0 ),
        .I5(\write_data[15]_i_10_n_0 ),
        .O(\addr_cnt[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0F0FFF1)) 
    \addr_cnt[19]_i_3 
       (.I0(\addr_cnt[16]_i_4_n_0 ),
        .I1(\addr_cnt[16]_i_5_n_0 ),
        .I2(\addr_cnt[12]_i_2_n_0 ),
        .I3(\write_data[15]_i_11_n_0 ),
        .I4(\addr_cnt[16]_i_3_n_0 ),
        .O(\addr_cnt[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFEEFFEEFF)) 
    \addr_cnt[1]_i_1 
       (.I0(\addr_cnt[1]_i_2_n_0 ),
        .I1(\addr_cnt[7]_i_3_n_0 ),
        .I2(\addr_cnt[7]_i_4_n_0 ),
        .I3(\addr_cnt[19]_i_2_n_0 ),
        .I4(\addr_cnt[16]_i_5_n_0 ),
        .I5(data0[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h88C8)) 
    \addr_cnt[1]_i_2 
       (.I0(\write_data[15]_i_13_n_0 ),
        .I1(data0[1]),
        .I2(\addr_cnt_reg_n_0_[3] ),
        .I3(\addr_cnt_reg_n_0_[11] ),
        .O(\addr_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA88A8)) 
    \addr_cnt[20]_i_1 
       (.I0(data0[20]),
        .I1(\addr_cnt[20]_i_3_n_0 ),
        .I2(\addr_cnt[20]_i_4_n_0 ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\addr_cnt[20]_i_5_n_0 ),
        .I5(\addr_cnt[20]_i_6_n_0 ),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \addr_cnt[20]_i_10 
       (.I0(\addr_cnt_reg_n_0_[11] ),
        .I1(\addr_cnt_reg_n_0_[15] ),
        .I2(\addr_cnt_reg_n_0_[19] ),
        .I3(\addr_cnt_reg_n_0_[10] ),
        .I4(\addr_cnt_reg_n_0_[1] ),
        .O(\addr_cnt[20]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEFFFE)) 
    \addr_cnt[20]_i_3 
       (.I0(\addr_cnt[20]_i_7_n_0 ),
        .I1(\addr_cnt[20]_i_8_n_0 ),
        .I2(\addr_cnt_reg_n_0_[9] ),
        .I3(\addr_cnt[20]_i_9_n_0 ),
        .I4(\addr_cnt_reg_n_0_[12] ),
        .I5(\addr_cnt[20]_i_10_n_0 ),
        .O(\addr_cnt[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \addr_cnt[20]_i_4 
       (.I0(\addr_cnt_reg_n_0_[19] ),
        .I1(\addr_cnt_reg_n_0_[15] ),
        .I2(\addr_cnt_reg_n_0_[14] ),
        .O(\addr_cnt[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFFFFFFFFFBAA)) 
    \addr_cnt[20]_i_5 
       (.I0(\addr_cnt[16]_i_3_n_0 ),
        .I1(\addr_cnt_reg_n_0_[9] ),
        .I2(\addr_cnt_reg_n_0_[16] ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\addr_cnt_reg_n_0_[17] ),
        .I5(\addr_cnt_reg_n_0_[14] ),
        .O(\addr_cnt[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \addr_cnt[20]_i_6 
       (.I0(\addr_cnt[16]_i_3_n_0 ),
        .I1(\write_data[15]_i_11_n_0 ),
        .I2(\addr_cnt[12]_i_2_n_0 ),
        .O(\addr_cnt[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \addr_cnt[20]_i_7 
       (.I0(\addr_cnt_reg_n_0_[18] ),
        .I1(\addr_cnt_reg_n_0_[20] ),
        .O(\addr_cnt[20]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \addr_cnt[20]_i_8 
       (.I0(\addr_cnt_reg_n_0_[21] ),
        .I1(\addr_cnt_reg_n_0_[13] ),
        .I2(\addr_cnt_reg_n_0_[7] ),
        .O(\addr_cnt[20]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \addr_cnt[20]_i_9 
       (.I0(\addr_cnt_reg_n_0_[16] ),
        .I1(\addr_cnt_reg_n_0_[10] ),
        .I2(\addr_cnt_reg_n_0_[1] ),
        .I3(\addr_cnt_reg_n_0_[11] ),
        .O(\addr_cnt[20]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \addr_cnt[21]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(data0[21]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \addr_cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\addr_cnt[8]_i_3_n_0 ),
        .I2(\addr_cnt[8]_i_4_n_0 ),
        .I3(\addr_cnt[20]_i_5_n_0 ),
        .I4(\addr_cnt[12]_i_2_n_0 ),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \addr_cnt[3]_i_1 
       (.I0(\addr_cnt[19]_i_2_n_0 ),
        .I1(\addr_cnt[11]_i_3_n_0 ),
        .I2(\addr_cnt[12]_i_2_n_0 ),
        .I3(data0[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \addr_cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\addr_cnt[8]_i_3_n_0 ),
        .I2(\addr_cnt[8]_i_4_n_0 ),
        .I3(\addr_cnt[20]_i_5_n_0 ),
        .I4(\addr_cnt[12]_i_2_n_0 ),
        .O(\addr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \addr_cnt[5]_i_1 
       (.I0(\addr_cnt[19]_i_2_n_0 ),
        .I1(\addr_cnt[11]_i_3_n_0 ),
        .I2(\addr_cnt[12]_i_2_n_0 ),
        .I3(data0[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \addr_cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\addr_cnt[8]_i_3_n_0 ),
        .I2(\addr_cnt[8]_i_4_n_0 ),
        .I3(\addr_cnt[20]_i_5_n_0 ),
        .I4(\addr_cnt[12]_i_2_n_0 ),
        .O(\addr_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFEEFFEE)) 
    \addr_cnt[7]_i_1 
       (.I0(\addr_cnt[7]_i_2_n_0 ),
        .I1(\addr_cnt[7]_i_3_n_0 ),
        .I2(\addr_cnt[7]_i_4_n_0 ),
        .I3(\addr_cnt[7]_i_5_n_0 ),
        .I4(\addr_cnt[7]_i_6_n_0 ),
        .I5(data0[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \addr_cnt[7]_i_10 
       (.I0(\addr_cnt_reg_n_0_[11] ),
        .I1(\addr_cnt_reg_n_0_[1] ),
        .I2(\addr_cnt_reg_n_0_[10] ),
        .I3(\addr_cnt_reg_n_0_[16] ),
        .I4(\addr_cnt[20]_i_4_n_0 ),
        .O(\addr_cnt[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDF00550055005500)) 
    \addr_cnt[7]_i_2 
       (.I0(\addr_cnt[7]_i_7_n_0 ),
        .I1(\addr_cnt[7]_i_8_n_0 ),
        .I2(\addr_cnt_reg_n_0_[11] ),
        .I3(data0[7]),
        .I4(\addr_cnt_reg_n_0_[12] ),
        .I5(\addr_cnt_reg_n_0_[3] ),
        .O(\addr_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[7]_i_3 
       (.I0(\write_data[15]_i_11_n_0 ),
        .I1(\addr_cnt[16]_i_3_n_0 ),
        .O(\addr_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \addr_cnt[7]_i_4 
       (.I0(\addr_cnt_reg_n_0_[0] ),
        .I1(\addr_cnt_reg_n_0_[11] ),
        .I2(\addr_cnt_reg_n_0_[3] ),
        .I3(\write_data[15]_i_16_n_0 ),
        .O(\addr_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F80000FF880000)) 
    \addr_cnt[7]_i_5 
       (.I0(\addr_cnt_reg_n_0_[3] ),
        .I1(\addr_cnt[20]_i_7_n_0 ),
        .I2(\addr_cnt[7]_i_9_n_0 ),
        .I3(\addr_cnt[7]_i_10_n_0 ),
        .I4(data0[7]),
        .I5(\addr_cnt_reg_n_0_[12] ),
        .O(\addr_cnt[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFBFFFBF)) 
    \addr_cnt[7]_i_6 
       (.I0(\addr_cnt_reg_n_0_[7] ),
        .I1(\addr_cnt_reg_n_0_[13] ),
        .I2(\addr_cnt_reg_n_0_[21] ),
        .I3(\addr_cnt_reg_n_0_[9] ),
        .I4(\addr_cnt_reg_n_0_[12] ),
        .O(\addr_cnt[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \addr_cnt[7]_i_7 
       (.I0(\addr_cnt_reg_n_0_[14] ),
        .I1(\addr_cnt_reg_n_0_[17] ),
        .O(\addr_cnt[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr_cnt[7]_i_8 
       (.I0(\addr_cnt_reg_n_0_[16] ),
        .I1(\addr_cnt_reg_n_0_[9] ),
        .O(\addr_cnt[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \addr_cnt[7]_i_9 
       (.I0(\addr_cnt_reg_n_0_[10] ),
        .I1(\addr_cnt_reg_n_0_[1] ),
        .I2(\addr_cnt_reg_n_0_[19] ),
        .I3(\addr_cnt_reg_n_0_[15] ),
        .O(\addr_cnt[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \addr_cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\addr_cnt[8]_i_3_n_0 ),
        .I2(\addr_cnt[8]_i_4_n_0 ),
        .I3(\addr_cnt[20]_i_5_n_0 ),
        .I4(\addr_cnt[12]_i_2_n_0 ),
        .O(\addr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEFFAEAE)) 
    \addr_cnt[8]_i_3 
       (.I0(\addr_cnt[8]_i_5_n_0 ),
        .I1(\addr_cnt[8]_i_6_n_0 ),
        .I2(\addr_cnt_reg_n_0_[12] ),
        .I3(\addr_cnt_reg_n_0_[9] ),
        .I4(\addr_cnt_reg_n_0_[7] ),
        .O(\addr_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFFFFFCCCFEEE)) 
    \addr_cnt[8]_i_4 
       (.I0(\addr_cnt[20]_i_4_n_0 ),
        .I1(\write_data[15]_i_14_n_0 ),
        .I2(\addr_cnt[8]_i_7_n_0 ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\addr_cnt_reg_n_0_[9] ),
        .I5(\addr_cnt[20]_i_7_n_0 ),
        .O(\addr_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6EEEFFFFFFFFFFFF)) 
    \addr_cnt[8]_i_5 
       (.I0(\addr_cnt_reg_n_0_[11] ),
        .I1(\addr_cnt_reg_n_0_[9] ),
        .I2(\addr_cnt_reg_n_0_[15] ),
        .I3(\addr_cnt_reg_n_0_[19] ),
        .I4(\addr_cnt_reg_n_0_[21] ),
        .I5(\addr_cnt_reg_n_0_[13] ),
        .O(\addr_cnt[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \addr_cnt[8]_i_6 
       (.I0(\addr_cnt_reg_n_0_[1] ),
        .I1(\addr_cnt_reg_n_0_[10] ),
        .I2(\addr_cnt_reg_n_0_[16] ),
        .O(\addr_cnt[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \addr_cnt[8]_i_7 
       (.I0(\addr_cnt_reg_n_0_[1] ),
        .I1(\addr_cnt_reg_n_0_[10] ),
        .O(\addr_cnt[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \addr_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\addr_cnt[11]_i_2_n_0 ),
        .I2(\addr_cnt[11]_i_3_n_0 ),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[0]),
        .Q(\addr_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[10]),
        .Q(\addr_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[11]),
        .Q(\addr_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[12]),
        .Q(\addr_cnt_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \addr_cnt_reg[12]_i_3 
       (.CI(\addr_cnt_reg[8]_i_2_n_0 ),
        .CO({\addr_cnt_reg[12]_i_3_n_0 ,\addr_cnt_reg[12]_i_3_n_1 ,\addr_cnt_reg[12]_i_3_n_2 ,\addr_cnt_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\addr_cnt_reg_n_0_[12] ,\addr_cnt_reg_n_0_[11] ,\addr_cnt_reg_n_0_[10] ,\addr_cnt_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[13] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[13]),
        .Q(\addr_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[14]),
        .Q(\addr_cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[15]),
        .Q(\addr_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[16]),
        .Q(\addr_cnt_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \addr_cnt_reg[16]_i_2 
       (.CI(\addr_cnt_reg[12]_i_3_n_0 ),
        .CO({\addr_cnt_reg[16]_i_2_n_0 ,\addr_cnt_reg[16]_i_2_n_1 ,\addr_cnt_reg[16]_i_2_n_2 ,\addr_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\addr_cnt_reg_n_0_[16] ,\addr_cnt_reg_n_0_[15] ,\addr_cnt_reg_n_0_[14] ,\addr_cnt_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[17] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[17]),
        .Q(\addr_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[18]),
        .Q(\addr_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[19]),
        .Q(\addr_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[1]),
        .Q(\addr_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[20]),
        .Q(\addr_cnt_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \addr_cnt_reg[20]_i_2 
       (.CI(\addr_cnt_reg[16]_i_2_n_0 ),
        .CO({\addr_cnt_reg[20]_i_2_n_0 ,\addr_cnt_reg[20]_i_2_n_1 ,\addr_cnt_reg[20]_i_2_n_2 ,\addr_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\addr_cnt_reg_n_0_[20] ,\addr_cnt_reg_n_0_[19] ,\addr_cnt_reg_n_0_[18] ,\addr_cnt_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[21] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[21]),
        .Q(\addr_cnt_reg_n_0_[21] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \addr_cnt_reg[21]_i_2 
       (.CI(\addr_cnt_reg[20]_i_2_n_0 ),
        .CO(\NLW_addr_cnt_reg[21]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_cnt_reg[21]_i_2_O_UNCONNECTED [3:1],data0[21]}),
        .S({1'b0,1'b0,1'b0,\addr_cnt_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[3]),
        .Q(\addr_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \addr_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\addr_cnt_reg[4]_i_2_n_0 ,\addr_cnt_reg[4]_i_2_n_1 ,\addr_cnt_reg[4]_i_2_n_2 ,\addr_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\addr_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\addr_cnt_reg_n_0_[4] ,\addr_cnt_reg_n_0_[3] ,\addr_cnt_reg_n_0_[2] ,\addr_cnt_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[5]),
        .Q(\addr_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[7]),
        .Q(\addr_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \addr_cnt_reg[8]_i_2 
       (.CI(\addr_cnt_reg[4]_i_2_n_0 ),
        .CO({\addr_cnt_reg[8]_i_2_n_0 ,\addr_cnt_reg[8]_i_2_n_1 ,\addr_cnt_reg[8]_i_2_n_2 ,\addr_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\addr_cnt_reg_n_0_[8] ,\addr_cnt_reg_n_0_[7] ,\addr_cnt_reg_n_0_[6] ,\addr_cnt_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[9]),
        .Q(\addr_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0350)) 
    \wait_count[0]_i_1 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(write_active_0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h03A0)) 
    \wait_count[1]_i_1 
       (.I0(\wait_count_reg_n_0_[0] ),
        .I1(write_active_0),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[1] ),
        .O(\wait_count[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[1]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[0]_i_1 
       (.I0(DQ_o[0]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[0]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[10]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[10]),
        .I3(write_data_buf[10]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[11]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[11]),
        .I3(write_data_buf[11]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[12]_i_1 
       (.I0(DQ_o[12]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[12]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[13]_i_1 
       (.I0(DQ_o[13]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[13]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[14]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[14]),
        .I3(write_data_buf[14]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \write_data[15]_i_1 
       (.I0(\write_data[15]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(addr_cnt));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_data[15]_i_10 
       (.I0(\addr_cnt_reg_n_0_[18] ),
        .I1(\addr_cnt_reg_n_0_[20] ),
        .I2(\addr_cnt_reg_n_0_[19] ),
        .I3(\addr_cnt_reg_n_0_[15] ),
        .I4(\addr_cnt_reg_n_0_[14] ),
        .I5(\addr_cnt_reg_n_0_[17] ),
        .O(\write_data[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \write_data[15]_i_11 
       (.I0(\write_data[15]_i_20_n_0 ),
        .I1(\addr_cnt[8]_i_6_n_0 ),
        .I2(\addr_cnt[12]_i_11_n_0 ),
        .I3(\write_data[15]_i_21_n_0 ),
        .I4(\addr_cnt_reg_n_0_[21] ),
        .I5(\addr_cnt_reg_n_0_[13] ),
        .O(\write_data[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \write_data[15]_i_12 
       (.I0(\addr_cnt_reg_n_0_[9] ),
        .I1(\addr_cnt_reg_n_0_[16] ),
        .I2(\addr_cnt_reg_n_0_[20] ),
        .I3(\addr_cnt_reg_n_0_[18] ),
        .I4(\addr_cnt[20]_i_10_n_0 ),
        .I5(\addr_cnt[16]_i_5_n_0 ),
        .O(\write_data[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA2)) 
    \write_data[15]_i_13 
       (.I0(\addr_cnt_reg_n_0_[3] ),
        .I1(\addr_cnt_reg_n_0_[9] ),
        .I2(\addr_cnt_reg_n_0_[16] ),
        .I3(\addr_cnt_reg_n_0_[20] ),
        .I4(\addr_cnt_reg_n_0_[18] ),
        .I5(\addr_cnt[7]_i_9_n_0 ),
        .O(\write_data[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF0000)) 
    \write_data[15]_i_14 
       (.I0(\addr_cnt_reg_n_0_[7] ),
        .I1(\addr_cnt_reg_n_0_[20] ),
        .I2(\addr_cnt_reg_n_0_[18] ),
        .I3(\addr_cnt_reg_n_0_[14] ),
        .I4(\addr_cnt_reg_n_0_[9] ),
        .I5(\addr_cnt_reg_n_0_[12] ),
        .O(\write_data[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1110FFFFFFFF1110)) 
    \write_data[15]_i_15 
       (.I0(\addr_cnt_reg_n_0_[9] ),
        .I1(\addr_cnt_reg_n_0_[12] ),
        .I2(\addr_cnt[20]_i_4_n_0 ),
        .I3(\addr_cnt[20]_i_7_n_0 ),
        .I4(\addr_cnt_reg_n_0_[17] ),
        .I5(\addr_cnt_reg_n_0_[14] ),
        .O(\write_data[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBB8B)) 
    \write_data[15]_i_16 
       (.I0(\write_data[15]_i_22_n_0 ),
        .I1(\addr_cnt_reg_n_0_[3] ),
        .I2(\addr_cnt_reg_n_0_[16] ),
        .I3(\addr_cnt_reg_n_0_[9] ),
        .I4(\addr_cnt[12]_i_6_n_0 ),
        .I5(\addr_cnt[12]_i_7_n_0 ),
        .O(\write_data[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \write_data[15]_i_17 
       (.I0(\write_data[15]_i_18_n_0 ),
        .I1(\write_data[15]_i_10_n_0 ),
        .I2(\addr_cnt[20]_i_9_n_0 ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .I4(\addr_cnt_reg_n_0_[9] ),
        .I5(\addr_cnt[20]_i_8_n_0 ),
        .O(\write_data[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \write_data[15]_i_18 
       (.I0(\addr_cnt_reg_n_0_[4] ),
        .I1(\addr_cnt_reg_n_0_[5] ),
        .I2(\addr_cnt_reg_n_0_[8] ),
        .I3(\addr_cnt_reg_n_0_[6] ),
        .I4(\addr_cnt_reg_n_0_[2] ),
        .I5(\addr_cnt_reg_n_0_[3] ),
        .O(\write_data[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \write_data[15]_i_19 
       (.I0(\addr_cnt[12]_i_9_n_0 ),
        .I1(\write_data[15]_i_23_n_0 ),
        .I2(\addr_cnt_reg_n_0_[11] ),
        .I3(\addr_cnt[12]_i_7_n_0 ),
        .I4(\addr_cnt[12]_i_6_n_0 ),
        .I5(\addr_cnt[12]_i_5_n_0 ),
        .O(\write_data[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[15]_i_2 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[15]),
        .I3(write_data_buf[15]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \write_data[15]_i_20 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[9] ),
        .O(\write_data[15]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \write_data[15]_i_21 
       (.I0(\addr_cnt_reg_n_0_[19] ),
        .I1(\addr_cnt_reg_n_0_[15] ),
        .I2(\addr_cnt_reg_n_0_[11] ),
        .O(\write_data[15]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \write_data[15]_i_22 
       (.I0(\addr_cnt_reg_n_0_[2] ),
        .I1(\addr_cnt_reg_n_0_[6] ),
        .I2(\addr_cnt_reg_n_0_[8] ),
        .I3(\addr_cnt_reg_n_0_[5] ),
        .I4(\addr_cnt_reg_n_0_[4] ),
        .O(\write_data[15]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \write_data[15]_i_23 
       (.I0(\addr_cnt_reg_n_0_[7] ),
        .I1(\addr_cnt_reg_n_0_[13] ),
        .I2(\addr_cnt_reg_n_0_[21] ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .O(\write_data[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \write_data[15]_i_3 
       (.I0(\addr_cnt_reg_n_0_[1] ),
        .I1(\addr_cnt_reg_n_0_[0] ),
        .I2(\addr_cnt_reg_n_0_[9] ),
        .I3(\addr_cnt_reg_n_0_[5] ),
        .I4(\write_data[15]_i_7_n_0 ),
        .I5(\write_data[15]_i_8_n_0 ),
        .O(\write_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0F0FFFFF0F01)) 
    \write_data[15]_i_4 
       (.I0(\write_data[15]_i_9_n_0 ),
        .I1(\write_data[15]_i_10_n_0 ),
        .I2(\addr_cnt[16]_i_3_n_0 ),
        .I3(\write_data[15]_i_11_n_0 ),
        .I4(\addr_cnt[12]_i_2_n_0 ),
        .I5(\write_data[15]_i_12_n_0 ),
        .O(\write_data[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \write_data[15]_i_5 
       (.I0(\addr_cnt[8]_i_3_n_0 ),
        .I1(\write_data[15]_i_13_n_0 ),
        .I2(\addr_cnt_reg_n_0_[12] ),
        .I3(\write_data[15]_i_14_n_0 ),
        .I4(\write_data[15]_i_15_n_0 ),
        .I5(\write_data[15]_i_16_n_0 ),
        .O(\write_data[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBBFF)) 
    \write_data[15]_i_6 
       (.I0(\write_data[15]_i_17_n_0 ),
        .I1(\write_data[15]_i_18_n_0 ),
        .I2(\write_data[15]_i_11_n_0 ),
        .I3(\write_data[15]_i_19_n_0 ),
        .I4(\addr_cnt[16]_i_5_n_0 ),
        .I5(\addr_cnt[16]_i_4_n_0 ),
        .O(\write_data[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \write_data[15]_i_7 
       (.I0(\addr_cnt_reg_n_0_[3] ),
        .I1(\addr_cnt_reg_n_0_[12] ),
        .I2(\addr_cnt_reg_n_0_[10] ),
        .I3(\addr_cnt_reg_n_0_[16] ),
        .I4(\addr_cnt[12]_i_6_n_0 ),
        .O(\write_data[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \write_data[15]_i_8 
       (.I0(\addr_cnt_reg_n_0_[13] ),
        .I1(\addr_cnt_reg_n_0_[21] ),
        .I2(\addr_cnt_reg_n_0_[19] ),
        .I3(\addr_cnt_reg_n_0_[15] ),
        .I4(\addr_cnt_reg_n_0_[11] ),
        .I5(\addr_cnt[12]_i_11_n_0 ),
        .O(\write_data[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \write_data[15]_i_9 
       (.I0(\addr_cnt_reg_n_0_[21] ),
        .I1(\addr_cnt_reg_n_0_[13] ),
        .I2(\addr_cnt_reg_n_0_[7] ),
        .I3(\addr_cnt_reg_n_0_[9] ),
        .I4(\addr_cnt_reg_n_0_[12] ),
        .I5(\addr_cnt[20]_i_9_n_0 ),
        .O(\write_data[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[1]_i_1 
       (.I0(DQ_o[1]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[1]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[2]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[2]),
        .I3(write_data_buf[2]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[3]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[3]),
        .I3(write_data_buf[3]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[4]_i_1 
       (.I0(DQ_o[4]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[4]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[5]_i_1 
       (.I0(DQ_o[5]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[5]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \write_data[6]_i_1 
       (.I0(\write_data[15]_i_4_n_0 ),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(DQ_o[6]),
        .I3(write_data_buf[6]),
        .I4(\write_data[15]_i_6_n_0 ),
        .O(\write_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[7]_i_1 
       (.I0(DQ_o[7]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[7]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[8]_i_1 
       (.I0(DQ_o[8]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[8]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \write_data[9]_i_1 
       (.I0(DQ_o[9]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[9]),
        .I3(\write_data[15]_i_6_n_0 ),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .O(\write_data[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \write_data_buf[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(reset_n),
        .I2(\write_data[15]_i_4_n_0 ),
        .O(write_data_buf0));
  FDRE \write_data_buf_reg[0] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[0]),
        .Q(write_data_buf[0]),
        .R(1'b0));
  FDRE \write_data_buf_reg[10] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[10]),
        .Q(write_data_buf[10]),
        .R(1'b0));
  FDRE \write_data_buf_reg[11] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[11]),
        .Q(write_data_buf[11]),
        .R(1'b0));
  FDRE \write_data_buf_reg[12] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[12]),
        .Q(write_data_buf[12]),
        .R(1'b0));
  FDRE \write_data_buf_reg[13] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[13]),
        .Q(write_data_buf[13]),
        .R(1'b0));
  FDRE \write_data_buf_reg[14] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[14]),
        .Q(write_data_buf[14]),
        .R(1'b0));
  FDRE \write_data_buf_reg[15] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[15]),
        .Q(write_data_buf[15]),
        .R(1'b0));
  FDRE \write_data_buf_reg[1] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[1]),
        .Q(write_data_buf[1]),
        .R(1'b0));
  FDRE \write_data_buf_reg[2] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[2]),
        .Q(write_data_buf[2]),
        .R(1'b0));
  FDRE \write_data_buf_reg[3] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[3]),
        .Q(write_data_buf[3]),
        .R(1'b0));
  FDRE \write_data_buf_reg[4] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[4]),
        .Q(write_data_buf[4]),
        .R(1'b0));
  FDRE \write_data_buf_reg[5] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[5]),
        .Q(write_data_buf[5]),
        .R(1'b0));
  FDRE \write_data_buf_reg[6] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[6]),
        .Q(write_data_buf[6]),
        .R(1'b0));
  FDRE \write_data_buf_reg[7] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[7]),
        .Q(write_data_buf[7]),
        .R(1'b0));
  FDRE \write_data_buf_reg[8] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[8]),
        .Q(write_data_buf[8]),
        .R(1'b0));
  FDRE \write_data_buf_reg[9] 
       (.C(sysclk),
        .CE(write_data_buf0),
        .D(DQ_o[9]),
        .Q(write_data_buf[9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[0] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[0]_i_1_n_0 ),
        .Q(DQ_o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[10] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[10]_i_1_n_0 ),
        .Q(DQ_o[10]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[11]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[12]_i_1_n_0 ),
        .Q(DQ_o[12]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[13] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[13]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[13]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[14]_i_1_n_0 ),
        .Q(DQ_o[14]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[15]_i_2_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[15]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[1]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[2]_i_1_n_0 ),
        .Q(DQ_o[2]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[3]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[4]_i_1_n_0 ),
        .Q(DQ_o[4]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[5] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[5]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[6]_i_1_n_0 ),
        .Q(DQ_o[6]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[7]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[8]_i_1_n_0 ),
        .Q(DQ_o[8]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[9] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(\write_data[9]_i_1_n_0 ),
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

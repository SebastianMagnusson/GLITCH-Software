// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Sep 28 15:16:09 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_Write1_100MHZ_0_0/testwith1speed_Write1_100MHZ_0_0_sim_netlist.v
// Design      : testwith1speed_Write1_100MHZ_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testwith1speed_Write1_100MHZ_0_0,Write1_100MHZ,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Write1_100MHZ,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module testwith1speed_Write1_100MHZ_0_0
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
  wire \<const1> ;
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
  assign decoder[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_o(DQ_o),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Write1_100MHZ" *) 
module testwith1speed_Write1_100MHZ_0_0_Write1_100MHZ
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
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
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
  wire [15:0]p_1_in;
  wire reset_n;
  wire sysclk;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count[1]_i_1_n_0 ;
  wire \wait_count[2]_i_1_n_0 ;
  wire \wait_count[3]_i_1_n_0 ;
  wire \wait_count[3]_i_2_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire \wait_count_reg_n_0_[1] ;
  wire \wait_count_reg_n_0_[2] ;
  wire \wait_count_reg_n_0_[3] ;
  wire write_active;
  wire write_active_0;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire write_complete_i_1_n_0;
  wire write_complete_i_2_n_0;
  wire \write_data[13]_i_2_n_0 ;
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
  wire \write_data[15]_i_24_n_0 ;
  wire \write_data[15]_i_25_n_0 ;
  wire \write_data[15]_i_26_n_0 ;
  wire \write_data[15]_i_27_n_0 ;
  wire \write_data[15]_i_28_n_0 ;
  wire \write_data[15]_i_29_n_0 ;
  wire \write_data[15]_i_30_n_0 ;
  wire \write_data[15]_i_31_n_0 ;
  wire \write_data[15]_i_3_n_0 ;
  wire \write_data[15]_i_4_n_0 ;
  wire \write_data[15]_i_5_n_0 ;
  wire \write_data[15]_i_6_n_0 ;
  wire \write_data[15]_i_7_n_0 ;
  wire \write_data[15]_i_8_n_0 ;
  wire \write_data[15]_i_9_n_0 ;
  wire [15:0]write_data_buf;
  wire write_data_buf0;
  wire [3:1]\NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \A_reg[0] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[0]),
        .Q(A[0]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[10] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[10]),
        .Q(A[10]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[11] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[11]),
        .Q(A[11]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[12] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[12]),
        .Q(A[12]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[13] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[13]),
        .Q(A[13]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[14] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[14]),
        .Q(A[14]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[15] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[15]),
        .Q(A[15]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[16] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[16]),
        .Q(A[16]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[17] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[17]),
        .Q(A[17]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[18] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[18]),
        .Q(A[18]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[19] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[19]),
        .Q(A[19]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[1] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[1]),
        .Q(A[1]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[20] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[20]),
        .Q(A[20]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[21] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[21]),
        .Q(A[21]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[2] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[2]),
        .Q(A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[3] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[3]),
        .Q(A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[4] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[4]),
        .Q(A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[5] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[5]),
        .Q(A[5]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[6] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[6]),
        .Q(A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[7] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[7]),
        .Q(A[7]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[8] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[8]),
        .Q(A[8]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[9] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(addr_cnt_reg[9]),
        .Q(A[9]));
  FDCE CE_n_reg
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(1'b1),
        .Q(CE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(write_active_0),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\write_data[15]_i_5_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\write_data[15]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\wait_count_reg_n_0_[3] ),
        .I1(\wait_count_reg_n_0_[2] ),
        .I2(\wait_count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04444444)) 
    \wait_count[0]_i_1 
       (.I0(\wait_count_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\wait_count_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[2] ),
        .I4(\wait_count_reg_n_0_[3] ),
        .O(\wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00F07000)) 
    \wait_count[1]_i_1 
       (.I0(\wait_count_reg_n_0_[2] ),
        .I1(\wait_count_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h1FC00000)) 
    \wait_count[2]_i_1 
       (.I0(\wait_count_reg_n_0_[3] ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(\wait_count_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\wait_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_count[3]_i_1 
       (.I0(write_active_0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\wait_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h77008000)) 
    \wait_count[3]_i_2 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(\wait_count_reg_n_0_[2] ),
        .I2(\wait_count_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[3] ),
        .O(\wait_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[0] 
       (.C(sysclk),
        .CE(\wait_count[3]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[1] 
       (.C(sysclk),
        .CE(\wait_count[3]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[1]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[2] 
       (.C(sysclk),
        .CE(\wait_count[3]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[2]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[3] 
       (.C(sysclk),
        .CE(\wait_count[3]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[3]_i_2_n_0 ),
        .Q(\wait_count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[0]_i_1 
       (.I0(DQ_o[0]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[0]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[10]_i_1 
       (.I0(DQ_o[10]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[10]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[11]_i_1 
       (.I0(DQ_o[11]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[11]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[12]_i_1 
       (.I0(DQ_o[12]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[12]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[12]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[13]_i_1 
       (.I0(DQ_o[13]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[13]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \write_data[13]_i_2 
       (.I0(\write_data[15]_i_6_n_0 ),
        .I1(\write_data[15]_i_9_n_0 ),
        .I2(\write_data[15]_i_8_n_0 ),
        .I3(A[0]),
        .I4(\write_data[15]_i_7_n_0 ),
        .O(\write_data[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[14]_i_1 
       (.I0(DQ_o[14]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[14]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[14]));
  LUT3 #(
    .INIT(8'hE0)) 
    \write_data[15]_i_1 
       (.I0(\write_data[15]_i_3_n_0 ),
        .I1(\write_data[15]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(addr_cnt));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \write_data[15]_i_10 
       (.I0(\write_data[15]_i_28_n_0 ),
        .I1(addr_cnt_reg[11]),
        .I2(addr_cnt_reg[10]),
        .I3(addr_cnt_reg[13]),
        .I4(addr_cnt_reg[12]),
        .I5(\write_data[15]_i_29_n_0 ),
        .O(\write_data[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_data[15]_i_11 
       (.I0(addr_cnt_reg[7]),
        .I1(addr_cnt_reg[6]),
        .I2(addr_cnt_reg[9]),
        .I3(addr_cnt_reg[8]),
        .O(\write_data[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FF7)) 
    \write_data[15]_i_12 
       (.I0(A[21]),
        .I1(A[13]),
        .I2(A[17]),
        .I3(A[14]),
        .O(\write_data[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F3FFF2AFF2AFF)) 
    \write_data[15]_i_13 
       (.I0(A[9]),
        .I1(A[15]),
        .I2(A[19]),
        .I3(A[16]),
        .I4(A[3]),
        .I5(A[12]),
        .O(\write_data[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEA222A2)) 
    \write_data[15]_i_14 
       (.I0(\write_data[15]_i_30_n_0 ),
        .I1(A[3]),
        .I2(A[9]),
        .I3(A[12]),
        .I4(\write_data[15]_i_24_n_0 ),
        .I5(\write_data[15]_i_31_n_0 ),
        .O(\write_data[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDBFFFFFFF)) 
    \write_data[15]_i_15 
       (.I0(A[3]),
        .I1(A[2]),
        .I2(A[6]),
        .I3(A[8]),
        .I4(A[4]),
        .I5(A[5]),
        .O(\write_data[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFFF4FFFFFFF4)) 
    \write_data[15]_i_16 
       (.I0(A[12]),
        .I1(\write_data[15]_i_18_n_0 ),
        .I2(A[11]),
        .I3(A[7]),
        .I4(A[9]),
        .I5(A[3]),
        .O(\write_data[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \write_data[15]_i_17 
       (.I0(A[9]),
        .I1(A[12]),
        .I2(A[7]),
        .I3(A[11]),
        .I4(A[14]),
        .I5(A[3]),
        .O(\write_data[15]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \write_data[15]_i_18 
       (.I0(A[15]),
        .I1(A[18]),
        .I2(A[20]),
        .I3(A[19]),
        .I4(A[17]),
        .O(\write_data[15]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \write_data[15]_i_19 
       (.I0(A[16]),
        .I1(A[21]),
        .I2(A[13]),
        .O(\write_data[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[15]_i_2 
       (.I0(DQ_o[15]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[15]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \write_data[15]_i_20 
       (.I0(A[2]),
        .I1(A[6]),
        .I2(A[8]),
        .I3(A[5]),
        .I4(A[4]),
        .O(\write_data[15]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \write_data[15]_i_21 
       (.I0(A[12]),
        .I1(A[3]),
        .I2(A[11]),
        .I3(A[9]),
        .I4(A[7]),
        .O(\write_data[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_data[15]_i_22 
       (.I0(A[15]),
        .I1(A[19]),
        .I2(A[14]),
        .I3(A[17]),
        .I4(A[18]),
        .I5(A[20]),
        .O(\write_data[15]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \write_data[15]_i_23 
       (.I0(A[12]),
        .I1(A[3]),
        .I2(A[19]),
        .I3(A[15]),
        .O(\write_data[15]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \write_data[15]_i_24 
       (.I0(A[9]),
        .I1(A[16]),
        .I2(A[20]),
        .I3(A[18]),
        .O(\write_data[15]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \write_data[15]_i_25 
       (.I0(A[10]),
        .I1(A[1]),
        .I2(A[7]),
        .O(\write_data[15]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \write_data[15]_i_26 
       (.I0(A[2]),
        .I1(A[6]),
        .I2(A[8]),
        .I3(A[4]),
        .I4(A[5]),
        .O(\write_data[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \write_data[15]_i_27 
       (.I0(A[7]),
        .I1(A[11]),
        .I2(A[1]),
        .I3(A[10]),
        .I4(A[9]),
        .I5(A[3]),
        .O(\write_data[15]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_data[15]_i_28 
       (.I0(addr_cnt_reg[15]),
        .I1(addr_cnt_reg[14]),
        .I2(addr_cnt_reg[17]),
        .I3(addr_cnt_reg[16]),
        .O(\write_data[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_data[15]_i_29 
       (.I0(addr_cnt_reg[20]),
        .I1(addr_cnt_reg[21]),
        .I2(addr_cnt_reg[18]),
        .I3(addr_cnt_reg[19]),
        .I4(addr_cnt_reg[1]),
        .I5(addr_cnt_reg[0]),
        .O(\write_data[15]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \write_data[15]_i_3 
       (.I0(\write_data[15]_i_6_n_0 ),
        .I1(\write_data[15]_i_7_n_0 ),
        .I2(\write_data[15]_i_8_n_0 ),
        .I3(\write_data[15]_i_9_n_0 ),
        .O(\write_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \write_data[15]_i_30 
       (.I0(A[20]),
        .I1(A[18]),
        .I2(A[17]),
        .O(\write_data[15]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFDDBAFF)) 
    \write_data[15]_i_31 
       (.I0(A[12]),
        .I1(A[7]),
        .I2(A[9]),
        .I3(A[1]),
        .I4(A[10]),
        .O(\write_data[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \write_data[15]_i_4 
       (.I0(\write_data[15]_i_10_n_0 ),
        .I1(\write_data[15]_i_11_n_0 ),
        .I2(addr_cnt_reg[3]),
        .I3(addr_cnt_reg[2]),
        .I4(addr_cnt_reg[5]),
        .I5(addr_cnt_reg[4]),
        .O(\write_data[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \write_data[15]_i_5 
       (.I0(\write_data[15]_i_12_n_0 ),
        .I1(\write_data[15]_i_13_n_0 ),
        .I2(\write_data[15]_i_14_n_0 ),
        .I3(\write_data[15]_i_15_n_0 ),
        .I4(\write_data[15]_i_16_n_0 ),
        .O(\write_data[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \write_data[15]_i_6 
       (.I0(\write_data[15]_i_17_n_0 ),
        .I1(\write_data[15]_i_18_n_0 ),
        .I2(A[10]),
        .I3(A[1]),
        .I4(\write_data[15]_i_19_n_0 ),
        .I5(\write_data[15]_i_20_n_0 ),
        .O(\write_data[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \write_data[15]_i_7 
       (.I0(\write_data[15]_i_21_n_0 ),
        .I1(\write_data[15]_i_22_n_0 ),
        .I2(A[10]),
        .I3(A[1]),
        .I4(\write_data[15]_i_19_n_0 ),
        .I5(\write_data[15]_i_20_n_0 ),
        .O(\write_data[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \write_data[15]_i_8 
       (.I0(\write_data[15]_i_20_n_0 ),
        .I1(\write_data[15]_i_23_n_0 ),
        .I2(\write_data[15]_i_12_n_0 ),
        .I3(\write_data[15]_i_24_n_0 ),
        .I4(A[11]),
        .I5(\write_data[15]_i_25_n_0 ),
        .O(\write_data[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \write_data[15]_i_9 
       (.I0(\write_data[15]_i_19_n_0 ),
        .I1(A[12]),
        .I2(\write_data[15]_i_22_n_0 ),
        .I3(\write_data[15]_i_26_n_0 ),
        .I4(\write_data[15]_i_27_n_0 ),
        .O(\write_data[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[1]_i_1 
       (.I0(DQ_o[1]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[1]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[2]_i_1 
       (.I0(DQ_o[2]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[2]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[3]_i_1 
       (.I0(DQ_o[3]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[3]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[4]_i_1 
       (.I0(DQ_o[4]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[4]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[5]_i_1 
       (.I0(DQ_o[5]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[5]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \write_data[6]_i_1 
       (.I0(DQ_o[6]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[6]),
        .I3(A[0]),
        .I4(\write_data[15]_i_3_n_0 ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[7]_i_1 
       (.I0(DQ_o[7]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[7]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[8]_i_1 
       (.I0(DQ_o[8]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[8]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[8]));
  LUT4 #(
    .INIT(16'hF444)) 
    \write_data[9]_i_1 
       (.I0(DQ_o[9]),
        .I1(\write_data[15]_i_5_n_0 ),
        .I2(write_data_buf[9]),
        .I3(\write_data[13]_i_2_n_0 ),
        .O(p_1_in[9]));
  LUT4 #(
    .INIT(16'h4000)) 
    \write_data_buf[15]_i_1 
       (.I0(A[0]),
        .I1(reset_n),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\write_data[15]_i_3_n_0 ),
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
        .D(p_1_in[0]),
        .Q(DQ_o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[10] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[10]),
        .Q(DQ_o[10]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[11]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[11]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[12]),
        .Q(DQ_o[12]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[13] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[13]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[13]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[14]),
        .Q(DQ_o[14]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[15]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[15]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[1]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[2]),
        .Q(DQ_o[2]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[3]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[3]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[4]),
        .Q(DQ_o[4]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[5] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[5]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[5]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[6]),
        .Q(DQ_o[6]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[7]),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[7]));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(p_1_in[8]),
        .Q(DQ_o[8]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[9] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[9]),
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

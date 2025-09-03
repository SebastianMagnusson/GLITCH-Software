// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep  3 10:56:52 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/I2C/SRAM_Breadbord_Test/SRAM_Breadbord_Test.gen/sources_1/bd/Main_Blocks/ip/Main_Blocks_sram_ctrl_0_0/Main_Blocks_sram_ctrl_0_0_sim_netlist.v
// Design      : Main_Blocks_sram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Main_Blocks_sram_ctrl_0_0,sram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sram_ctrl,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Main_Blocks_sram_ctrl_0_0
   (sysclk,
    reset_n,
    done,
    i_TX_done,
    o_TX_DV,
    o_TX_data,
    A,
    DQ_i,
    DQ_o,
    DQ_t,
    CE_n,
    OE_n,
    WE_n,
    CE2,
    LB_n,
    UB_n);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output done;
  input i_TX_done;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output [21:0]A;
  input [15:0]DQ_i;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output CE_n;
  output OE_n;
  output WE_n;
  output CE2;
  output LB_n;
  output UB_n;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]\^A ;
  wire CE2;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [0:0]\^DQ_t ;
  wire OE_n;
  wire WE_n;
  wire done;
  wire i_TX_done;
  wire o_TX_DV;
  wire [7:0]o_TX_data;
  wire reset_n;
  wire sysclk;

  assign A[21] = \^A [0];
  assign A[20] = \^A [0];
  assign A[19] = \^A [0];
  assign A[18] = \^A [0];
  assign A[17] = \^A [0];
  assign A[16] = \^A [0];
  assign A[15] = \^A [0];
  assign A[14] = \^A [0];
  assign A[13] = \^A [0];
  assign A[12] = \^A [0];
  assign A[11] = \^A [0];
  assign A[10] = \^A [0];
  assign A[9] = \^A [0];
  assign A[8] = \^A [0];
  assign A[7] = \^A [0];
  assign A[6] = \^A [0];
  assign A[5] = \^A [0];
  assign A[4] = \^A [0];
  assign A[3] = \^A [0];
  assign A[2] = \^A [0];
  assign A[1] = \^A [0];
  assign A[0] = \^A [0];
  assign DQ_o[15] = \<const0> ;
  assign DQ_o[14] = \<const0> ;
  assign DQ_o[13] = \<const1> ;
  assign DQ_o[12] = \<const0> ;
  assign DQ_o[11] = \<const0> ;
  assign DQ_o[10] = \<const0> ;
  assign DQ_o[9] = \<const1> ;
  assign DQ_o[8] = \<const0> ;
  assign DQ_o[7] = \<const0> ;
  assign DQ_o[6] = \<const1> ;
  assign DQ_o[5] = \<const0> ;
  assign DQ_o[4] = \<const0> ;
  assign DQ_o[3] = \<const0> ;
  assign DQ_o[2] = \<const1> ;
  assign DQ_o[1] = \<const0> ;
  assign DQ_o[0] = \<const0> ;
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
  assign LB_n = \<const0> ;
  assign UB_n = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Main_Blocks_sram_ctrl_0_0_sram_ctrl U0
       (.A(\^A ),
        .CE2(CE2),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .DQ_t(\^DQ_t ),
        .OE_n(OE_n),
        .WE_n(WE_n),
        .done(done),
        .i_TX_done(i_TX_done),
        .o_TX_DV(o_TX_DV),
        .o_TX_data(o_TX_data),
        .reset_n(reset_n),
        .sysclk(sysclk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "sram_ctrl" *) 
module Main_Blocks_sram_ctrl_0_0_sram_ctrl
   (CE2,
    o_TX_data,
    DQ_t,
    done,
    o_TX_DV,
    A,
    CE_n,
    OE_n,
    WE_n,
    i_TX_done,
    sysclk,
    DQ_i,
    reset_n);
  output CE2;
  output [7:0]o_TX_data;
  output [0:0]DQ_t;
  output done;
  output o_TX_DV;
  output [0:0]A;
  output CE_n;
  output OE_n;
  output WE_n;
  input i_TX_done;
  input sysclk;
  input [15:0]DQ_i;
  input reset_n;

  wire [0:0]A;
  wire \A[0]_i_1_n_0 ;
  wire CE2;
  wire CE_n;
  wire CE_n_i_1_n_0;
  wire [15:0]DQ_i;
  wire [0:0]DQ_t;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire \FSM_sequential_state_reg_n_0_[2] ;
  wire OE_n;
  wire OE_n_i_1_n_0;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire [15:0]data_buf;
  wire data_buf0;
  wire done;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire i_TX_done;
  wire loop_cnt;
  wire \loop_cnt[0]_i_1_n_0 ;
  wire \mess_cnt[0]_i_1_n_0 ;
  wire \mess_cnt_reg_n_0_[0] ;
  wire o_TX_DV;
  wire o_TX_DV_i_1_n_0;
  wire [7:0]o_TX_data;
  wire o_TX_data0;
  wire [7:0]p_0_in;
  wire reset_n;
  wire [0:0]state;
  wire sysclk;
  wire write_active;
  wire write_active_i_1_n_0;

  LUT4 #(
    .INIT(16'hFD00)) 
    \A[0]_i_1 
       (.I0(reset_n),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state),
        .I3(A),
        .O(\A[0]_i_1_n_0 ));
  FDRE \A_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\A[0]_i_1_n_0 ),
        .Q(A),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    CE2_reg
       (.CLR(1'b0),
        .D(done_i_2_n_0),
        .G(reset_n),
        .GE(1'b1),
        .Q(CE2));
  LUT3 #(
    .INIT(8'hB8)) 
    CE_n_i_1
       (.I0(CE_n),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .O(CE_n_i_1_n_0));
  FDPE CE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(CE_n_i_1_n_0),
        .PRE(done_i_2_n_0),
        .Q(CE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  LUT6 #(
    .INIT(64'h3331F331F331F331)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(loop_cnt),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(\mess_cnt_reg_n_0_[0] ),
        .I5(i_TX_done),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5ADADADA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(\mess_cnt_reg_n_0_[0] ),
        .I4(i_TX_done),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CECECEC)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(\mess_cnt_reg_n_0_[0] ),
        .I4(i_TX_done),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state));
  (* FSM_ENCODED_STATES = "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB41)) 
    OE_n_i_1
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(OE_n),
        .O(OE_n_i_1_n_0));
  FDPE OE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(OE_n_i_1_n_0),
        .PRE(done_i_2_n_0),
        .Q(OE_n));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    WE_n_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(done_i_2_n_0),
        .Q(WE_n));
  LUT4 #(
    .INIT(16'h2000)) 
    \data_buf[15]_i_1 
       (.I0(reset_n),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    done_i_1
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(done),
        .O(done_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    done_i_2
       (.I0(reset_n),
        .O(done_i_2_n_0));
  FDCE done_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(done_i_1_n_0),
        .Q(done));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \loop_cnt[0]_i_1 
       (.I0(\mess_cnt_reg_n_0_[0] ),
        .I1(i_TX_done),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(state),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .I5(loop_cnt),
        .O(\loop_cnt[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \loop_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\loop_cnt[0]_i_1_n_0 ),
        .Q(loop_cnt));
  LUT5 #(
    .INIT(32'h7FFFC000)) 
    \mess_cnt[0]_i_1 
       (.I0(i_TX_done),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(state),
        .I4(\mess_cnt_reg_n_0_[0] ),
        .O(\mess_cnt[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mess_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(\mess_cnt[0]_i_1_n_0 ),
        .Q(\mess_cnt_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hDFFFFFF0D0000000)) 
    o_TX_DV_i_1
       (.I0(\mess_cnt_reg_n_0_[0] ),
        .I1(i_TX_done),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(\FSM_sequential_state_reg_n_0_[2] ),
        .I5(o_TX_DV),
        .O(o_TX_DV_i_1_n_0));
  FDCE o_TX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(o_TX_DV_i_1_n_0),
        .Q(o_TX_DV));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[0]_i_1 
       (.I0(data_buf[0]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[8]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[1]_i_1 
       (.I0(data_buf[1]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[9]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[2]_i_1 
       (.I0(data_buf[2]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[10]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[3]_i_1 
       (.I0(data_buf[3]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[11]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[4]_i_1 
       (.I0(data_buf[4]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[12]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[5]_i_1 
       (.I0(data_buf[5]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[13]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[6]_i_1 
       (.I0(data_buf[6]),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(data_buf[14]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    \o_TX_data[7]_i_1 
       (.I0(reset_n),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\mess_cnt_reg_n_0_[0] ),
        .I5(i_TX_done),
        .O(o_TX_data0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC404)) 
    write_active_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(write_active),
        .O(write_active_i_1_n_0));
  FDCE write_active_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(done_i_2_n_0),
        .D(write_active_i_1_n_0),
        .Q(write_active));
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

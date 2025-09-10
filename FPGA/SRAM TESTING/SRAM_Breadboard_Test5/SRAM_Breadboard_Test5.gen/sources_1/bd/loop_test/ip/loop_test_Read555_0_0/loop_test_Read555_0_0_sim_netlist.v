// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep 10 15:40:20 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadboard_Test5/SRAM_Breadboard_Test5.gen/sources_1/bd/loop_test/ip/loop_test_Read555_0_0/loop_test_Read555_0_0_sim_netlist.v}
// Design      : loop_test_Read555_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "loop_test_Read555_0_0,Read555,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Read555,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module loop_test_Read555_0_0
   (sysclk,
    reset_n,
    read_complete,
    write_complete,
    i_TX_active,
    i_TX_done,
    o_TX_DV,
    o_TX_data,
    A,
    CE_n,
    WE_n,
    DQ_i,
    DQ_t,
    DQ_o);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output read_complete;
  input write_complete;
  input i_TX_active;
  input i_TX_done;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output [21:0]A;
  output CE_n;
  output WE_n;
  input [15:0]DQ_i;
  output [15:0]DQ_t;
  output [15:0]DQ_o;

  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [15:0]DQ_o;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire i_TX_active;
  wire i_TX_done;
  wire o_TX_DV;
  wire [7:0]o_TX_data;
  wire read_complete;
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
  loop_test_Read555_0_0_Read555 U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .DQ_o(DQ_o),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .i_TX_active(i_TX_active),
        .i_TX_done(i_TX_done),
        .o_TX_DV(o_TX_DV),
        .o_TX_data(o_TX_data),
        .read_complete(read_complete),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
endmodule

(* ORIG_REF_NAME = "Read555" *) 
module loop_test_Read555_0_0_Read555
   (DQ_o,
    o_TX_data,
    A,
    CE_n,
    DQ_t,
    read_complete,
    o_TX_DV,
    WE_n,
    sysclk,
    i_TX_done,
    i_TX_active,
    DQ_i,
    reset_n,
    write_complete);
  output [15:0]DQ_o;
  output [7:0]o_TX_data;
  output [21:0]A;
  output CE_n;
  output [0:0]DQ_t;
  output read_complete;
  output o_TX_DV;
  output WE_n;
  input sysclk;
  input i_TX_done;
  input i_TX_active;
  input [15:0]DQ_i;
  input reset_n;
  input write_complete;

  wire [21:0]A;
  wire \A[21]_i_1_n_0 ;
  wire A_buf;
  wire \A_buf_reg_n_0_[0] ;
  wire \A_buf_reg_n_0_[10] ;
  wire \A_buf_reg_n_0_[11] ;
  wire \A_buf_reg_n_0_[12] ;
  wire \A_buf_reg_n_0_[13] ;
  wire \A_buf_reg_n_0_[14] ;
  wire \A_buf_reg_n_0_[15] ;
  wire \A_buf_reg_n_0_[1] ;
  wire \A_buf_reg_n_0_[2] ;
  wire \A_buf_reg_n_0_[3] ;
  wire \A_buf_reg_n_0_[4] ;
  wire \A_buf_reg_n_0_[5] ;
  wire \A_buf_reg_n_0_[6] ;
  wire \A_buf_reg_n_0_[7] ;
  wire \A_buf_reg_n_0_[8] ;
  wire \A_buf_reg_n_0_[9] ;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [15:0]DQ_o;
  wire [0:0]DQ_t;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire TX_done_prev_i_1_n_0;
  wire TX_done_prev_i_2_n_0;
  wire TX_done_prev_reg_n_0;
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
  wire bitflip_flag_i_1_n_0;
  wire bitflip_flag_i_2_n_0;
  wire bitflip_flag_reg_n_0;
  wire data_buf0;
  wire \data_buf_reg_n_0_[0] ;
  wire \data_buf_reg_n_0_[10] ;
  wire \data_buf_reg_n_0_[11] ;
  wire \data_buf_reg_n_0_[12] ;
  wire \data_buf_reg_n_0_[13] ;
  wire \data_buf_reg_n_0_[14] ;
  wire \data_buf_reg_n_0_[15] ;
  wire \data_buf_reg_n_0_[1] ;
  wire \data_buf_reg_n_0_[2] ;
  wire \data_buf_reg_n_0_[3] ;
  wire \data_buf_reg_n_0_[4] ;
  wire \data_buf_reg_n_0_[5] ;
  wire \data_buf_reg_n_0_[6] ;
  wire \data_buf_reg_n_0_[7] ;
  wire \data_buf_reg_n_0_[8] ;
  wire \data_buf_reg_n_0_[9] ;
  wire data_rewritten_flag;
  wire data_rewritten_flag_i_1_n_0;
  wire data_rewritten_flag_i_3_n_0;
  wire data_rewritten_flag_reg_n_0;
  wire i_TX_active;
  wire i_TX_done;
  wire [3:0]loop_cnt;
  wire \loop_cnt[3]_i_1_n_0 ;
  wire \loop_cnt[3]_i_3_n_0 ;
  wire \loop_cnt[3]_i_4_n_0 ;
  wire \loop_cnt_reg_n_0_[0] ;
  wire \loop_cnt_reg_n_0_[1] ;
  wire \loop_cnt_reg_n_0_[2] ;
  wire \loop_cnt_reg_n_0_[3] ;
  wire \mess_cnt[0]_i_1_n_0 ;
  wire \mess_cnt[0]_i_2_n_0 ;
  wire \mess_cnt[0]_i_3_n_0 ;
  wire \mess_cnt[0]_i_4_n_0 ;
  wire \mess_cnt[1]_i_1_n_0 ;
  wire \mess_cnt[1]_i_2_n_0 ;
  wire \mess_cnt[1]_i_3_n_0 ;
  wire \mess_cnt_reg_n_0_[0] ;
  wire \mess_cnt_reg_n_0_[1] ;
  wire o_TX_DV;
  wire o_TX_DV_i_1_n_0;
  wire o_TX_DV_i_2_n_0;
  wire o_TX_DV_i_3_n_0;
  wire o_TX_DV_i_4_n_0;
  wire o_TX_DV_i_5_n_0;
  wire [7:0]o_TX_data;
  wire o_TX_data0;
  wire \o_TX_data[0]_i_1_n_0 ;
  wire \o_TX_data[0]_i_2_n_0 ;
  wire \o_TX_data[1]_i_1_n_0 ;
  wire \o_TX_data[1]_i_2_n_0 ;
  wire \o_TX_data[2]_i_1_n_0 ;
  wire \o_TX_data[2]_i_2_n_0 ;
  wire \o_TX_data[3]_i_1_n_0 ;
  wire \o_TX_data[3]_i_2_n_0 ;
  wire \o_TX_data[4]_i_1_n_0 ;
  wire \o_TX_data[4]_i_2_n_0 ;
  wire \o_TX_data[5]_i_1_n_0 ;
  wire \o_TX_data[5]_i_2_n_0 ;
  wire \o_TX_data[6]_i_1_n_0 ;
  wire \o_TX_data[6]_i_2_n_0 ;
  wire \o_TX_data[7]_i_2_n_0 ;
  wire \o_TX_data[7]_i_3_n_0 ;
  wire \o_TX_data[7]_i_4_n_0 ;
  wire \o_TX_data[7]_i_5_n_0 ;
  wire \o_TX_data[7]_i_6_n_0 ;
  wire \o_TX_data[7]_i_7_n_0 ;
  wire \o_TX_data[7]_i_8_n_0 ;
  wire \o_TX_data[7]_i_9_n_0 ;
  wire [15:0]p_1_in;
  wire read_complete;
  wire read_complete_i_1_n_0;
  wire read_complete_i_2_n_0;
  wire reset_n;
  wire [3:0]state;
  wire state1__6;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire [3:0]state__0;
  wire sysclk;
  wire write_active;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire [3:1]\NLW_addr_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_cnt_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:2]NLW_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h1001)) 
    \A[21]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\A[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \A_buf[15]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .O(A_buf));
  FDCE \A_buf_reg[0] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[0]),
        .Q(\A_buf_reg_n_0_[0] ));
  FDCE \A_buf_reg[10] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[10]),
        .Q(\A_buf_reg_n_0_[10] ));
  FDCE \A_buf_reg[11] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[11]),
        .Q(\A_buf_reg_n_0_[11] ));
  FDCE \A_buf_reg[12] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[12]),
        .Q(\A_buf_reg_n_0_[12] ));
  FDCE \A_buf_reg[13] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[13]),
        .Q(\A_buf_reg_n_0_[13] ));
  FDCE \A_buf_reg[14] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[14]),
        .Q(\A_buf_reg_n_0_[14] ));
  FDCE \A_buf_reg[15] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[15]),
        .Q(\A_buf_reg_n_0_[15] ));
  FDCE \A_buf_reg[1] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[1]),
        .Q(\A_buf_reg_n_0_[1] ));
  FDCE \A_buf_reg[2] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[2]),
        .Q(\A_buf_reg_n_0_[2] ));
  FDCE \A_buf_reg[3] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[3]),
        .Q(\A_buf_reg_n_0_[3] ));
  FDCE \A_buf_reg[4] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[4]),
        .Q(\A_buf_reg_n_0_[4] ));
  FDCE \A_buf_reg[5] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[5]),
        .Q(\A_buf_reg_n_0_[5] ));
  FDCE \A_buf_reg[6] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[6]),
        .Q(\A_buf_reg_n_0_[6] ));
  FDCE \A_buf_reg[7] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[7]),
        .Q(\A_buf_reg_n_0_[7] ));
  FDCE \A_buf_reg[8] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[8]),
        .Q(\A_buf_reg_n_0_[8] ));
  FDCE \A_buf_reg[9] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[9]),
        .Q(\A_buf_reg_n_0_[9] ));
  FDCE \A_reg[0] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[0]),
        .Q(A[0]));
  FDCE \A_reg[10] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[10]),
        .Q(A[10]));
  FDCE \A_reg[11] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[11]),
        .Q(A[11]));
  FDCE \A_reg[12] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[12]),
        .Q(A[12]));
  FDCE \A_reg[13] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[13]),
        .Q(A[13]));
  FDCE \A_reg[14] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[14]),
        .Q(A[14]));
  FDCE \A_reg[15] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[15]),
        .Q(A[15]));
  FDCE \A_reg[16] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[16]),
        .Q(A[16]));
  FDCE \A_reg[17] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[17]),
        .Q(A[17]));
  FDCE \A_reg[18] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[18]),
        .Q(A[18]));
  FDCE \A_reg[19] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[19]),
        .Q(A[19]));
  FDCE \A_reg[1] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[1]),
        .Q(A[1]));
  FDCE \A_reg[20] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[20]),
        .Q(A[20]));
  FDCE \A_reg[21] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[21]),
        .Q(A[21]));
  FDCE \A_reg[2] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[2]),
        .Q(A[2]));
  FDCE \A_reg[3] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[3]),
        .Q(A[3]));
  FDCE \A_reg[4] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[4]),
        .Q(A[4]));
  FDCE \A_reg[5] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[5]),
        .Q(A[5]));
  FDCE \A_reg[6] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[6]),
        .Q(A[6]));
  FDCE \A_reg[7] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[7]),
        .Q(A[7]));
  FDCE \A_reg[8] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[8]),
        .Q(A[8]));
  FDCE \A_reg[9] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt_reg[9]),
        .Q(A[9]));
  FDPE CE_n_reg
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .D(1'b0),
        .PRE(read_complete_i_2_n_0),
        .Q(CE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBAAA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(bitflip_flag_reg_n_0),
        .I2(state1__6),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'h00000000AAA80000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\loop_cnt_reg_n_0_[3] ),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[2]),
        .I1(data_rewritten_flag_reg_n_0),
        .I2(state[3]),
        .I3(state[1]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(write_complete),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF14141414141414)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(addr_cnt_reg[12]),
        .I1(addr_cnt_reg[13]),
        .I2(addr_cnt_reg[10]),
        .I3(addr_cnt_reg[11]),
        .I4(addr_cnt_reg[15]),
        .I5(addr_cnt_reg[14]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(addr_cnt_reg[6]),
        .I1(addr_cnt_reg[7]),
        .I2(addr_cnt_reg[4]),
        .I3(addr_cnt_reg[5]),
        .I4(addr_cnt_reg[9]),
        .I5(addr_cnt_reg[8]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(addr_cnt_reg[1]),
        .I4(addr_cnt_reg[0]),
        .I5(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(addr_cnt_reg[2]),
        .I1(addr_cnt_reg[3]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFBAAAAAAAAAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state1__6),
        .I2(bitflip_flag_reg_n_0),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00005030)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[1]),
        .I1(\loop_cnt[3]_i_3_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[1]),
        .I1(state[3]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFAEAF)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(\FSM_sequential_state[3]_i_5_n_0 ),
        .I4(state1__6),
        .I5(bitflip_flag_reg_n_0),
        .O(state__0[3]));
  LUT6 #(
    .INIT(64'h444C000C000C0000)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state[3]),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_7_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(i_TX_done),
        .I1(TX_done_prev_reg_n_0),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(addr_cnt_reg[18]),
        .I1(addr_cnt_reg[19]),
        .I2(addr_cnt_reg[16]),
        .I3(addr_cnt_reg[17]),
        .I4(addr_cnt_reg[21]),
        .I5(addr_cnt_reg[20]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(state[3]),
        .I1(addr_cnt_reg[0]),
        .I2(addr_cnt_reg[1]),
        .I3(addr_cnt_reg[3]),
        .I4(addr_cnt_reg[2]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "next_addr:1001,data_validation:0011,read_capture:0010,done:1010,read:0001,read_start:0000,write_fix_finish:0111,write_fix_start:0101,write_fix:0110,send_data:1000,send_data_and_addr:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "next_addr:1001,data_validation:0011,read_capture:0010,done:1010,read:0001,read_start:0000,write_fix_finish:0111,write_fix_start:0101,write_fix:0110,send_data:1000,send_data_and_addr:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "next_addr:1001,data_validation:0011,read_capture:0010,done:1010,read:0001,read_start:0000,write_fix_finish:0111,write_fix_start:0101,write_fix:0110,send_data:1000,send_data_and_addr:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[2]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "next_addr:1001,data_validation:0011,read_capture:0010,done:1010,read:0001,read_start:0000,write_fix_finish:0111,write_fix_start:0101,write_fix:0110,send_data:1000,send_data_and_addr:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[3]),
        .Q(state[3]));
  LUT6 #(
    .INIT(64'h1300FFFF13000000)) 
    TX_done_prev_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(i_TX_done),
        .I4(TX_done_prev_i_2_n_0),
        .I5(TX_done_prev_reg_n_0),
        .O(TX_done_prev_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000003003020)) 
    TX_done_prev_i_2
       (.I0(\mess_cnt_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state[3]),
        .I3(\mess_cnt_reg_n_0_[1] ),
        .I4(state[2]),
        .I5(state[0]),
        .O(TX_done_prev_i_2_n_0));
  FDPE TX_done_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(TX_done_prev_i_1_n_0),
        .PRE(read_complete_i_2_n_0),
        .Q(TX_done_prev_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hEFFF2001)) 
    WE_n_i_1
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_5 ),
        .Q(addr_cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_4 ),
        .Q(addr_cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_6 ),
        .Q(addr_cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_5 ),
        .Q(addr_cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[12]_i_1_n_4 ),
        .Q(addr_cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_6 ),
        .Q(addr_cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_5 ),
        .Q(addr_cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[16]_i_1_n_4 ),
        .Q(addr_cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_6 ),
        .Q(addr_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[20]_i_1_n_6 ),
        .Q(addr_cnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_5 ),
        .Q(addr_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[0]_i_1_n_4 ),
        .Q(addr_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_6 ),
        .Q(addr_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_5 ),
        .Q(addr_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[4]_i_1_n_4 ),
        .Q(addr_cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
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
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg[8]_i_1_n_6 ),
        .Q(addr_cnt_reg[9]));
  LUT6 #(
    .INIT(64'hF3FFFFFF44444444)) 
    bitflip_flag_i_1
       (.I0(state1__6),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .I2(bitflip_flag_i_2_n_0),
        .I3(\loop_cnt_reg_n_0_[3] ),
        .I4(\loop_cnt_reg_n_0_[0] ),
        .I5(bitflip_flag_reg_n_0),
        .O(bitflip_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    bitflip_flag_i_2
       (.I0(\loop_cnt_reg_n_0_[1] ),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .O(bitflip_flag_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    bitflip_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(bitflip_flag_i_1_n_0),
        .Q(bitflip_flag_reg_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \data_buf[15]_i_1 
       (.I0(reset_n),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[1]),
        .O(data_buf0));
  FDRE \data_buf_reg[0] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[0]),
        .Q(\data_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_buf_reg[10] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[10]),
        .Q(\data_buf_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_buf_reg[11] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[11]),
        .Q(\data_buf_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_buf_reg[12] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[12]),
        .Q(\data_buf_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_buf_reg[13] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[13]),
        .Q(\data_buf_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_buf_reg[14] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[14]),
        .Q(\data_buf_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_buf_reg[15] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[15]),
        .Q(\data_buf_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_buf_reg[1] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[1]),
        .Q(\data_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_buf_reg[2] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[2]),
        .Q(\data_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_buf_reg[3] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[3]),
        .Q(\data_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_buf_reg[4] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[4]),
        .Q(\data_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_buf_reg[5] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[5]),
        .Q(\data_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_buf_reg[6] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[6]),
        .Q(\data_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_buf_reg[7] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[7]),
        .Q(\data_buf_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_buf_reg[8] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[8]),
        .Q(\data_buf_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_buf_reg[9] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[9]),
        .Q(\data_buf_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[0]_i_1 
       (.I0(DQ_o[0]),
        .O(p_1_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[10]_i_1 
       (.I0(DQ_o[10]),
        .O(p_1_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[11]_i_1 
       (.I0(DQ_o[11]),
        .O(p_1_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[12]_i_1 
       (.I0(DQ_o[12]),
        .O(p_1_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[13]_i_1 
       (.I0(DQ_o[13]),
        .O(p_1_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[14]_i_1 
       (.I0(DQ_o[14]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'h0400)) 
    \data_exp[15]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .O(addr_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[15]_i_2 
       (.I0(DQ_o[15]),
        .O(p_1_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[1]_i_1 
       (.I0(DQ_o[1]),
        .O(p_1_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[2]_i_1 
       (.I0(DQ_o[2]),
        .O(p_1_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[3]_i_1 
       (.I0(DQ_o[3]),
        .O(p_1_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[4]_i_1 
       (.I0(DQ_o[4]),
        .O(p_1_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[5]_i_1 
       (.I0(DQ_o[5]),
        .O(p_1_in[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[6]_i_1 
       (.I0(DQ_o[6]),
        .O(p_1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[7]_i_1 
       (.I0(DQ_o[7]),
        .O(p_1_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[8]_i_1 
       (.I0(DQ_o[8]),
        .O(p_1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[9]_i_1 
       (.I0(DQ_o[9]),
        .O(p_1_in[9]));
  FDCE \data_exp_reg[0] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[0]),
        .Q(DQ_o[0]));
  FDCE \data_exp_reg[10] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[10]),
        .Q(DQ_o[10]));
  FDPE \data_exp_reg[11] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[11]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[11]));
  FDCE \data_exp_reg[12] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[12]),
        .Q(DQ_o[12]));
  FDPE \data_exp_reg[13] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[13]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[13]));
  FDCE \data_exp_reg[14] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[14]),
        .Q(DQ_o[14]));
  FDPE \data_exp_reg[15] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[15]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[15]));
  FDPE \data_exp_reg[1] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[1]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[1]));
  FDCE \data_exp_reg[2] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[2]),
        .Q(DQ_o[2]));
  FDPE \data_exp_reg[3] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[3]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[3]));
  FDCE \data_exp_reg[4] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[4]),
        .Q(DQ_o[4]));
  FDPE \data_exp_reg[5] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[5]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[5]));
  FDCE \data_exp_reg[6] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[6]),
        .Q(DQ_o[6]));
  FDPE \data_exp_reg[7] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[7]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[7]));
  FDCE \data_exp_reg[8] 
       (.C(sysclk),
        .CE(addr_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[8]),
        .Q(DQ_o[8]));
  FDPE \data_exp_reg[9] 
       (.C(sysclk),
        .CE(addr_cnt),
        .D(p_1_in[9]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[9]));
  LUT6 #(
    .INIT(64'hBB88BB88AB88BB88)) 
    data_rewritten_flag_i_1
       (.I0(data_rewritten_flag),
        .I1(data_rewritten_flag_i_3_n_0),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(data_rewritten_flag_reg_n_0),
        .I4(state1__6),
        .I5(bitflip_flag_reg_n_0),
        .O(data_rewritten_flag_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_rewritten_flag_i_2
       (.I0(state[2]),
        .I1(state[3]),
        .O(data_rewritten_flag));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    data_rewritten_flag_i_3
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .O(data_rewritten_flag_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_rewritten_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(data_rewritten_flag_i_1_n_0),
        .Q(data_rewritten_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \loop_cnt[0]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \loop_cnt[1]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \loop_cnt[2]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .I4(\loop_cnt_reg_n_0_[1] ),
        .O(loop_cnt[2]));
  LUT5 #(
    .INIT(32'hFF020202)) 
    \loop_cnt[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_5_n_0 ),
        .I1(state1__6),
        .I2(bitflip_flag_reg_n_0),
        .I3(\loop_cnt[3]_i_3_n_0 ),
        .I4(\loop_cnt[3]_i_4_n_0 ),
        .O(\loop_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \loop_cnt[3]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[3] ),
        .I3(\loop_cnt_reg_n_0_[2] ),
        .I4(\loop_cnt_reg_n_0_[1] ),
        .I5(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \loop_cnt[3]_i_3 
       (.I0(\loop_cnt_reg_n_0_[0] ),
        .I1(\loop_cnt_reg_n_0_[1] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[3] ),
        .O(\loop_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \loop_cnt[3]_i_4 
       (.I0(i_TX_done),
        .I1(TX_done_prev_reg_n_0),
        .I2(\mess_cnt_reg_n_0_[1] ),
        .I3(\o_TX_data[7]_i_8_n_0 ),
        .I4(\mess_cnt[0]_i_3_n_0 ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\loop_cnt[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \loop_cnt_reg[0] 
       (.C(sysclk),
        .CE(\loop_cnt[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(loop_cnt[0]),
        .Q(\loop_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \loop_cnt_reg[1] 
       (.C(sysclk),
        .CE(\loop_cnt[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(loop_cnt[1]),
        .Q(\loop_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \loop_cnt_reg[2] 
       (.C(sysclk),
        .CE(\loop_cnt[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(loop_cnt[2]),
        .Q(\loop_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \loop_cnt_reg[3] 
       (.C(sysclk),
        .CE(\loop_cnt[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(loop_cnt[3]),
        .Q(\loop_cnt_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAB0000)) 
    \mess_cnt[0]_i_1 
       (.I0(\mess_cnt[0]_i_2_n_0 ),
        .I1(i_TX_active),
        .I2(\mess_cnt[0]_i_3_n_0 ),
        .I3(\mess_cnt_reg_n_0_[1] ),
        .I4(\mess_cnt[1]_i_2_n_0 ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\mess_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \mess_cnt[0]_i_2 
       (.I0(\mess_cnt_reg_n_0_[0] ),
        .I1(\mess_cnt_reg_n_0_[1] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(i_TX_active),
        .I5(\mess_cnt[0]_i_4_n_0 ),
        .O(\mess_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mess_cnt[0]_i_3 
       (.I0(state[1]),
        .I1(state[3]),
        .O(\mess_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000250)) 
    \mess_cnt[0]_i_4 
       (.I0(i_TX_done),
        .I1(TX_done_prev_reg_n_0),
        .I2(\mess_cnt_reg_n_0_[0] ),
        .I3(\mess_cnt_reg_n_0_[1] ),
        .I4(state[3]),
        .I5(state[1]),
        .O(\mess_cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03FF0800)) 
    \mess_cnt[1]_i_1 
       (.I0(i_TX_done),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(state[3]),
        .I3(\mess_cnt[1]_i_2_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .O(\mess_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C00A0)) 
    \mess_cnt[1]_i_2 
       (.I0(o_TX_DV_i_4_n_0),
        .I1(\mess_cnt[1]_i_3_n_0 ),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\mess_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F77)) 
    \mess_cnt[1]_i_3 
       (.I0(\mess_cnt_reg_n_0_[1] ),
        .I1(\mess_cnt_reg_n_0_[0] ),
        .I2(TX_done_prev_reg_n_0),
        .I3(i_TX_done),
        .O(\mess_cnt[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mess_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\mess_cnt[0]_i_1_n_0 ),
        .Q(\mess_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mess_cnt_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\mess_cnt[1]_i_1_n_0 ),
        .Q(\mess_cnt_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    o_TX_DV_i_1
       (.I0(o_TX_DV_i_2_n_0),
        .I1(o_TX_DV_i_3_n_0),
        .I2(o_TX_DV),
        .O(o_TX_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000F00000F400)) 
    o_TX_DV_i_2
       (.I0(\mess_cnt_reg_n_0_[1] ),
        .I1(i_TX_done),
        .I2(o_TX_DV_i_4_n_0),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[3]),
        .O(o_TX_DV_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000FDFD33)) 
    o_TX_DV_i_3
       (.I0(i_TX_active),
        .I1(state[0]),
        .I2(o_TX_DV_i_5_n_0),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[1]),
        .O(o_TX_DV_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h444F)) 
    o_TX_DV_i_4
       (.I0(TX_done_prev_reg_n_0),
        .I1(i_TX_done),
        .I2(\mess_cnt_reg_n_0_[1] ),
        .I3(\mess_cnt_reg_n_0_[0] ),
        .O(o_TX_DV_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_TX_DV_i_5
       (.I0(\mess_cnt_reg_n_0_[0] ),
        .I1(\mess_cnt_reg_n_0_[1] ),
        .O(o_TX_DV_i_5_n_0));
  FDCE o_TX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(o_TX_DV_i_1_n_0),
        .Q(o_TX_DV));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[0]_i_1 
       (.I0(\data_buf_reg_n_0_[0] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[0] ),
        .I4(\o_TX_data[0]_i_2_n_0 ),
        .O(\o_TX_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[0]_i_2 
       (.I0(\data_buf_reg_n_0_[8] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[8] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[1]_i_1 
       (.I0(\data_buf_reg_n_0_[1] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[1] ),
        .I4(\o_TX_data[1]_i_2_n_0 ),
        .O(\o_TX_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[1]_i_2 
       (.I0(\data_buf_reg_n_0_[9] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[9] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[2]_i_1 
       (.I0(\data_buf_reg_n_0_[2] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[2] ),
        .I4(\o_TX_data[2]_i_2_n_0 ),
        .O(\o_TX_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[2]_i_2 
       (.I0(\data_buf_reg_n_0_[10] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[10] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[3]_i_1 
       (.I0(\data_buf_reg_n_0_[3] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[3] ),
        .I4(\o_TX_data[3]_i_2_n_0 ),
        .O(\o_TX_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[3]_i_2 
       (.I0(\data_buf_reg_n_0_[11] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[11] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[4]_i_1 
       (.I0(\data_buf_reg_n_0_[4] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[4] ),
        .I4(\o_TX_data[4]_i_2_n_0 ),
        .O(\o_TX_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[4]_i_2 
       (.I0(\data_buf_reg_n_0_[12] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[12] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[5]_i_1 
       (.I0(\data_buf_reg_n_0_[5] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[5] ),
        .I4(\o_TX_data[5]_i_2_n_0 ),
        .O(\o_TX_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[5]_i_2 
       (.I0(\data_buf_reg_n_0_[13] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[13] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[6]_i_1 
       (.I0(\data_buf_reg_n_0_[6] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[6] ),
        .I4(\o_TX_data[6]_i_2_n_0 ),
        .O(\o_TX_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[6]_i_2 
       (.I0(\data_buf_reg_n_0_[14] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[14] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \o_TX_data[7]_i_1 
       (.I0(\o_TX_data[7]_i_3_n_0 ),
        .I1(reset_n),
        .I2(i_TX_active),
        .I3(\o_TX_data[7]_i_4_n_0 ),
        .O(o_TX_data0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \o_TX_data[7]_i_2 
       (.I0(\data_buf_reg_n_0_[7] ),
        .I1(\o_TX_data[7]_i_5_n_0 ),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(\A_buf_reg_n_0_[7] ),
        .I4(\o_TX_data[7]_i_7_n_0 ),
        .O(\o_TX_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \o_TX_data[7]_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22000000F2000000)) 
    \o_TX_data[7]_i_4 
       (.I0(TX_done_prev_i_2_n_0),
        .I1(TX_done_prev_reg_n_0),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(i_TX_done),
        .I4(reset_n),
        .I5(\o_TX_data[7]_i_8_n_0 ),
        .O(\o_TX_data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h15111100)) 
    \o_TX_data[7]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(\mess_cnt_reg_n_0_[1] ),
        .I4(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \o_TX_data[7]_i_6 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(\mess_cnt_reg_n_0_[0] ),
        .I3(\mess_cnt_reg_n_0_[1] ),
        .O(\o_TX_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888F8)) 
    \o_TX_data[7]_i_7 
       (.I0(\data_buf_reg_n_0_[15] ),
        .I1(\o_TX_data[7]_i_9_n_0 ),
        .I2(\A_buf_reg_n_0_[15] ),
        .I3(\mess_cnt[0]_i_3_n_0 ),
        .I4(\mess_cnt_reg_n_0_[1] ),
        .I5(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_TX_data[7]_i_8 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\o_TX_data[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000311)) 
    \o_TX_data[7]_i_9 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(\mess_cnt_reg_n_0_[1] ),
        .I4(\mess_cnt_reg_n_0_[0] ),
        .O(\o_TX_data[7]_i_9_n_0 ));
  FDRE \o_TX_data_reg[0] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[0]_i_1_n_0 ),
        .Q(o_TX_data[0]),
        .R(1'b0));
  FDRE \o_TX_data_reg[1] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[1]_i_1_n_0 ),
        .Q(o_TX_data[1]),
        .R(1'b0));
  FDRE \o_TX_data_reg[2] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[2]_i_1_n_0 ),
        .Q(o_TX_data[2]),
        .R(1'b0));
  FDRE \o_TX_data_reg[3] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[3]_i_1_n_0 ),
        .Q(o_TX_data[3]),
        .R(1'b0));
  FDRE \o_TX_data_reg[4] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[4]_i_1_n_0 ),
        .Q(o_TX_data[4]),
        .R(1'b0));
  FDRE \o_TX_data_reg[5] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[5]_i_1_n_0 ),
        .Q(o_TX_data[5]),
        .R(1'b0));
  FDRE \o_TX_data_reg[6] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[6]_i_1_n_0 ),
        .Q(o_TX_data[6]),
        .R(1'b0));
  FDRE \o_TX_data_reg[7] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[7]_i_2_n_0 ),
        .Q(o_TX_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFE1000)) 
    read_complete_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(read_complete),
        .O(read_complete_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    read_complete_i_2
       (.I0(reset_n),
        .O(read_complete_i_2_n_0));
  FDCE read_complete_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(read_complete_i_1_n_0),
        .Q(read_complete));
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}));
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({NLW_state1_carry__0_CO_UNCONNECTED[3:2],state1__6,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    state1_carry__0_i_1
       (.I0(DQ_o[15]),
        .I1(\data_buf_reg_n_0_[15] ),
        .O(state1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry__0_i_2
       (.I0(DQ_o[14]),
        .I1(\data_buf_reg_n_0_[14] ),
        .I2(DQ_o[13]),
        .I3(\data_buf_reg_n_0_[13] ),
        .I4(\data_buf_reg_n_0_[12] ),
        .I5(DQ_o[12]),
        .O(state1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_1
       (.I0(DQ_o[11]),
        .I1(\data_buf_reg_n_0_[11] ),
        .I2(DQ_o[10]),
        .I3(\data_buf_reg_n_0_[10] ),
        .I4(\data_buf_reg_n_0_[9] ),
        .I5(DQ_o[9]),
        .O(state1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_2
       (.I0(DQ_o[8]),
        .I1(\data_buf_reg_n_0_[8] ),
        .I2(DQ_o[7]),
        .I3(\data_buf_reg_n_0_[7] ),
        .I4(\data_buf_reg_n_0_[6] ),
        .I5(DQ_o[6]),
        .O(state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_3
       (.I0(DQ_o[5]),
        .I1(\data_buf_reg_n_0_[5] ),
        .I2(DQ_o[4]),
        .I3(\data_buf_reg_n_0_[4] ),
        .I4(\data_buf_reg_n_0_[3] ),
        .I5(DQ_o[3]),
        .O(state1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_4
       (.I0(DQ_o[2]),
        .I1(\data_buf_reg_n_0_[2] ),
        .I2(DQ_o[1]),
        .I3(\data_buf_reg_n_0_[1] ),
        .I4(\data_buf_reg_n_0_[0] ),
        .I5(DQ_o[0]),
        .O(state1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hDFFE1000)) 
    write_active_i_1
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(write_active),
        .O(write_active_i_1_n_0));
  FDCE write_active_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
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

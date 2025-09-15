// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Sep 13 11:55:52 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadboard_Test6/SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_Read6_0_0/Func_test1_Read6_0_0_sim_netlist.v}
// Design      : Func_test1_Read6_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Func_test1_Read6_0_0,Read6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Read6,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Func_test1_Read6_0_0
   (sysclk,
    reset_n,
    read_complete,
    write_complete,
    A,
    CE_n,
    WE_n,
    DQ_i,
    DQ_t,
    DQ_o,
    o_BF_data,
    o_BF_drive,
    addresses_searched,
    led0,
    led1);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output read_complete;
  input write_complete;
  output [21:0]A;
  output CE_n;
  output WE_n;
  input [15:0]DQ_i;
  output [15:0]DQ_t;
  output [15:0]DQ_o;
  output [46:0]o_BF_data;
  output o_BF_drive;
  output addresses_searched;
  output led0;
  output led1;

  wire \<const0> ;
  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [15:0]DQ_o;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire addresses_searched;
  wire led0;
  wire [46:0]\^o_BF_data ;
  wire o_BF_drive;
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
  assign led1 = \<const0> ;
  assign o_BF_data[46:9] = \^o_BF_data [46:9];
  assign o_BF_data[8] = \<const0> ;
  assign o_BF_data[7] = \<const0> ;
  assign o_BF_data[6] = \<const0> ;
  assign o_BF_data[5] = \<const0> ;
  assign o_BF_data[4:0] = \^o_BF_data [4:0];
  assign read_complete = addresses_searched;
  GND GND
       (.G(\<const0> ));
  Func_test1_Read6_0_0_Read6 U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .DQ_o(DQ_o),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .addresses_searched(addresses_searched),
        .led0(led0),
        .o_BF_data({\^o_BF_data [46:9],\^o_BF_data [4:0]}),
        .o_BF_drive(o_BF_drive),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
endmodule

(* ORIG_REF_NAME = "Read6" *) 
module Func_test1_Read6_0_0_Read6
   (DQ_o,
    A,
    CE_n,
    o_BF_data,
    DQ_t,
    addresses_searched,
    o_BF_drive,
    WE_n,
    led0,
    reset_n,
    sysclk,
    DQ_i,
    write_complete);
  output [15:0]DQ_o;
  output [21:0]A;
  output CE_n;
  output [42:0]o_BF_data;
  output [0:0]DQ_t;
  output addresses_searched;
  output o_BF_drive;
  output WE_n;
  output led0;
  input reset_n;
  input sysclk;
  input [15:0]DQ_i;
  input write_complete;

  wire [21:0]A;
  wire \A[21]_i_1_n_0 ;
  wire A_buf;
  wire BF_data_buf0;
  wire \BF_data_buf[46]_i_1_n_0 ;
  wire \BF_data_buf[4]_i_1_n_0 ;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [15:0]DQ_o;
  wire [0:0]DQ_t;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_4_n_0 ;
  wire \FSM_onehot_state[10]_i_5_n_0 ;
  wire \FSM_onehot_state[10]_i_6_n_0 ;
  wire \FSM_onehot_state[10]_i_7_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire [21:0]addr_cnt;
  wire \addr_cnt[0]_i_1_n_0 ;
  wire \addr_cnt[10]_i_1_n_0 ;
  wire \addr_cnt[11]_i_1_n_0 ;
  wire \addr_cnt[12]_i_1_n_0 ;
  wire \addr_cnt[13]_i_1_n_0 ;
  wire \addr_cnt[14]_i_1_n_0 ;
  wire \addr_cnt[15]_i_1_n_0 ;
  wire \addr_cnt[16]_i_1_n_0 ;
  wire \addr_cnt[17]_i_1_n_0 ;
  wire \addr_cnt[18]_i_1_n_0 ;
  wire \addr_cnt[19]_i_1_n_0 ;
  wire \addr_cnt[1]_i_1_n_0 ;
  wire \addr_cnt[20]_i_1_n_0 ;
  wire \addr_cnt[21]_i_1_n_0 ;
  wire \addr_cnt[21]_i_2_n_0 ;
  wire \addr_cnt[2]_i_1_n_0 ;
  wire \addr_cnt[3]_i_1_n_0 ;
  wire \addr_cnt[4]_i_1_n_0 ;
  wire \addr_cnt[5]_i_1_n_0 ;
  wire \addr_cnt[6]_i_1_n_0 ;
  wire \addr_cnt[7]_i_1_n_0 ;
  wire \addr_cnt[8]_i_1_n_0 ;
  wire \addr_cnt[9]_i_1_n_0 ;
  wire addresses_searched;
  wire bitflip_flag_i_1_n_0;
  wire bitflip_flag_i_2_n_0;
  wire bitflip_flag_reg_n_0;
  wire data_buf;
  wire data_buf0;
  wire data_exp;
  wire [15:0]data_prev;
  wire data_prev_1;
  wire data_rewritten_flag_i_1_n_0;
  wire data_rewritten_flag_reg_n_0;
  wire [46:9]in13;
  wire [21:1]in17;
  wire led0;
  wire led0_i_1_n_0;
  wire [3:1]loop_cnt;
  wire \loop_cnt[0]_i_1_n_0 ;
  wire \loop_cnt[3]_i_1_n_0 ;
  wire \loop_cnt[3]_i_3_n_0 ;
  wire \loop_cnt_reg_n_0_[0] ;
  wire \loop_cnt_reg_n_0_[1] ;
  wire \loop_cnt_reg_n_0_[2] ;
  wire \loop_cnt_reg_n_0_[3] ;
  wire [42:0]o_BF_data;
  wire o_BF_drive;
  wire o_BF_drive_i_1_n_0;
  wire osc_cnt0__6;
  wire osc_cnt0_carry__0_i_1_n_0;
  wire osc_cnt0_carry__0_i_2_n_0;
  wire osc_cnt0_carry__0_n_2;
  wire osc_cnt0_carry__0_n_3;
  wire osc_cnt0_carry_i_1_n_0;
  wire osc_cnt0_carry_i_2_n_0;
  wire osc_cnt0_carry_i_3_n_0;
  wire osc_cnt0_carry_i_4_n_0;
  wire osc_cnt0_carry_n_0;
  wire osc_cnt0_carry_n_1;
  wire osc_cnt0_carry_n_2;
  wire osc_cnt0_carry_n_3;
  wire [3:0]osc_cnt_reg;
  wire [3:0]p_0_in;
  wire [15:0]p_1_in;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire read_complete_i_1_n_0;
  wire read_complete_i_2_n_0;
  wire reset_n;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire sysclk;
  wire write_active;
  wire write_active_0;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire [3:0]NLW_osc_cnt0_carry_O_UNCONNECTED;
  wire [3:2]NLW_osc_cnt0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_osc_cnt0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:2]NLW_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \A[21]_i_1 
       (.I0(A_buf),
        .I1(write_active_0),
        .O(\A[21]_i_1_n_0 ));
  FDCE \A_buf_reg[0] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[0]),
        .Q(in13[25]));
  FDCE \A_buf_reg[10] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[10]),
        .Q(in13[35]));
  FDCE \A_buf_reg[11] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[11]),
        .Q(in13[36]));
  FDCE \A_buf_reg[12] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[12]),
        .Q(in13[37]));
  FDCE \A_buf_reg[13] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[13]),
        .Q(in13[38]));
  FDCE \A_buf_reg[14] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[14]),
        .Q(in13[39]));
  FDCE \A_buf_reg[15] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[15]),
        .Q(in13[40]));
  FDCE \A_buf_reg[16] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[16]),
        .Q(in13[41]));
  FDCE \A_buf_reg[17] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[17]),
        .Q(in13[42]));
  FDCE \A_buf_reg[18] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[18]),
        .Q(in13[43]));
  FDCE \A_buf_reg[19] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[19]),
        .Q(in13[44]));
  FDCE \A_buf_reg[1] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[1]),
        .Q(in13[26]));
  FDCE \A_buf_reg[20] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[20]),
        .Q(in13[45]));
  FDCE \A_buf_reg[21] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[21]),
        .Q(in13[46]));
  FDCE \A_buf_reg[2] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[2]),
        .Q(in13[27]));
  FDCE \A_buf_reg[3] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[3]),
        .Q(in13[28]));
  FDCE \A_buf_reg[4] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[4]),
        .Q(in13[29]));
  FDCE \A_buf_reg[5] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[5]),
        .Q(in13[30]));
  FDCE \A_buf_reg[6] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[6]),
        .Q(in13[31]));
  FDCE \A_buf_reg[7] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[7]),
        .Q(in13[32]));
  FDCE \A_buf_reg[8] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[8]),
        .Q(in13[33]));
  FDCE \A_buf_reg[9] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[9]),
        .Q(in13[34]));
  FDCE \A_reg[0] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[0]),
        .Q(A[0]));
  FDCE \A_reg[10] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[10]),
        .Q(A[10]));
  FDCE \A_reg[11] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[11]),
        .Q(A[11]));
  FDCE \A_reg[12] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[12]),
        .Q(A[12]));
  FDCE \A_reg[13] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[13]),
        .Q(A[13]));
  FDCE \A_reg[14] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[14]),
        .Q(A[14]));
  FDCE \A_reg[15] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[15]),
        .Q(A[15]));
  FDCE \A_reg[16] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[16]),
        .Q(A[16]));
  FDCE \A_reg[17] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[17]),
        .Q(A[17]));
  FDCE \A_reg[18] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[18]),
        .Q(A[18]));
  FDCE \A_reg[19] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[19]),
        .Q(A[19]));
  FDCE \A_reg[1] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[1]),
        .Q(A[1]));
  FDCE \A_reg[20] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[20]),
        .Q(A[20]));
  FDCE \A_reg[21] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[21]),
        .Q(A[21]));
  FDCE \A_reg[2] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[2]),
        .Q(A[2]));
  FDCE \A_reg[3] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[3]),
        .Q(A[3]));
  FDCE \A_reg[4] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[4]),
        .Q(A[4]));
  FDCE \A_reg[5] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[5]),
        .Q(A[5]));
  FDCE \A_reg[6] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[6]),
        .Q(A[6]));
  FDCE \A_reg[7] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[7]),
        .Q(A[7]));
  FDCE \A_reg[8] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[8]),
        .Q(A[8]));
  FDCE \A_reg[9] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[9]),
        .Q(A[9]));
  LUT4 #(
    .INIT(16'h1000)) 
    \BF_data_buf[46]_i_1 
       (.I0(state1_carry__0_n_2),
        .I1(bitflip_flag_reg_n_0),
        .I2(data_prev_1),
        .I3(reset_n),
        .O(\BF_data_buf[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00000000000000)) 
    \BF_data_buf[4]_i_1 
       (.I0(\loop_cnt_reg_n_0_[0] ),
        .I1(\loop_cnt_reg_n_0_[1] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(reset_n),
        .O(\BF_data_buf[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \BF_data_buf[4]_i_2 
       (.I0(osc_cnt_reg[2]),
        .I1(osc_cnt_reg[1]),
        .I2(osc_cnt_reg[0]),
        .I3(osc_cnt_reg[3]),
        .O(BF_data_buf0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[0] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(osc_cnt_reg[0]),
        .Q(o_BF_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[10] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[10]),
        .Q(o_BF_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[11] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[11]),
        .Q(o_BF_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[12] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[12]),
        .Q(o_BF_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[13] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[13]),
        .Q(o_BF_data[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[14] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[14]),
        .Q(o_BF_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[15] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[15]),
        .Q(o_BF_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[16] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[16]),
        .Q(o_BF_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[17] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[17]),
        .Q(o_BF_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[18] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[18]),
        .Q(o_BF_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[19] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[19]),
        .Q(o_BF_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[1] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(osc_cnt_reg[1]),
        .Q(o_BF_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[20] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[20]),
        .Q(o_BF_data[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[21] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[21]),
        .Q(o_BF_data[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[22] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[22]),
        .Q(o_BF_data[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[23] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[23]),
        .Q(o_BF_data[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[24] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[24]),
        .Q(o_BF_data[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[25] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[25]),
        .Q(o_BF_data[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[26] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[26]),
        .Q(o_BF_data[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[27] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[27]),
        .Q(o_BF_data[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[28] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[28]),
        .Q(o_BF_data[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[29] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[29]),
        .Q(o_BF_data[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[2] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(osc_cnt_reg[2]),
        .Q(o_BF_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[30] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[30]),
        .Q(o_BF_data[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[31] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[31]),
        .Q(o_BF_data[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[32] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[32]),
        .Q(o_BF_data[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[33] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[33]),
        .Q(o_BF_data[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[34] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[34]),
        .Q(o_BF_data[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[35] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[35]),
        .Q(o_BF_data[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[36] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[36]),
        .Q(o_BF_data[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[37] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[37]),
        .Q(o_BF_data[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[38] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[38]),
        .Q(o_BF_data[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[39] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[39]),
        .Q(o_BF_data[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[3] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(osc_cnt_reg[3]),
        .Q(o_BF_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[40] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[40]),
        .Q(o_BF_data[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[41] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[41]),
        .Q(o_BF_data[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[42] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[42]),
        .Q(o_BF_data[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[43] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[43]),
        .Q(o_BF_data[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[44] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[44]),
        .Q(o_BF_data[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[45] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[45]),
        .Q(o_BF_data[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[46] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[46]),
        .Q(o_BF_data[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[4] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(BF_data_buf0),
        .Q(o_BF_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[9] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_1_n_0 ),
        .D(in13[9]),
        .Q(o_BF_data[5]),
        .R(1'b0));
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
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state[0]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_state[10]_i_2_n_0 ),
        .I4(data_exp),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(write_complete),
        .I1(A_buf),
        .I2(\loop_cnt[3]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(data_exp),
        .I1(\FSM_onehot_state[10]_i_2_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state[10]_i_4_n_0 ),
        .I2(\FSM_onehot_state[10]_i_5_n_0 ),
        .I3(\FSM_onehot_state[10]_i_6_n_0 ),
        .I4(\FSM_onehot_state[10]_i_7_n_0 ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(addr_cnt[21]),
        .I1(addr_cnt[20]),
        .I2(addr_cnt[17]),
        .I3(addr_cnt[16]),
        .I4(addr_cnt[19]),
        .I5(addr_cnt[18]),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_4 
       (.I0(addr_cnt[6]),
        .I1(addr_cnt[7]),
        .I2(addr_cnt[4]),
        .I3(addr_cnt[5]),
        .O(\FSM_onehot_state[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_5 
       (.I0(addr_cnt[2]),
        .I1(addr_cnt[3]),
        .I2(addr_cnt[0]),
        .I3(addr_cnt[1]),
        .O(\FSM_onehot_state[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_6 
       (.I0(addr_cnt[14]),
        .I1(addr_cnt[15]),
        .I2(addr_cnt[12]),
        .I3(addr_cnt[13]),
        .O(\FSM_onehot_state[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_7 
       (.I0(addr_cnt[10]),
        .I1(addr_cnt[11]),
        .I2(addr_cnt[8]),
        .I3(addr_cnt[9]),
        .O(\FSM_onehot_state[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(A_buf),
        .I1(write_complete),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA2)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(data_prev_1),
        .I1(state1_carry__0_n_2),
        .I2(bitflip_flag_reg_n_0),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\loop_cnt_reg_n_0_[3] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[1] ),
        .I4(\loop_cnt_reg_n_0_[0] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(data_prev_1),
        .I1(state1_carry__0_n_2),
        .I2(data_rewritten_flag_reg_n_0),
        .I3(bitflip_flag_reg_n_0),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAEAAAA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(state1_carry__0_n_2),
        .I2(bitflip_flag_reg_n_0),
        .I3(data_rewritten_flag_reg_n_0),
        .I4(data_prev_1),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(read_complete_i_2_n_0),
        .Q(A_buf));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(data_buf));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf),
        .Q(data_prev_1));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(write_active_0));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(write_active_0),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "next_addr:01000000000,data_validation:00000001000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_finish:00010000000,write_fix_start:00000100000,write_fix:00001000000,oscillator:00000010000,send_to_fetcher:00100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(data_exp));
  LUT4 #(
    .INIT(16'hFDFC)) 
    WE_n_i_1
       (.I0(write_active_0),
        .I1(A_buf),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(read_complete_i_2_n_0),
        .Q(WE_n));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[0]_i_1 
       (.I0(data_exp),
        .I1(addr_cnt[0]),
        .O(\addr_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[10]_i_1 
       (.I0(data_exp),
        .I1(in17[10]),
        .O(\addr_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[11]_i_1 
       (.I0(data_exp),
        .I1(in17[11]),
        .O(\addr_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[12]_i_1 
       (.I0(data_exp),
        .I1(in17[12]),
        .O(\addr_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[13]_i_1 
       (.I0(data_exp),
        .I1(in17[13]),
        .O(\addr_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[14]_i_1 
       (.I0(data_exp),
        .I1(in17[14]),
        .O(\addr_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[15]_i_1 
       (.I0(data_exp),
        .I1(in17[15]),
        .O(\addr_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[16]_i_1 
       (.I0(data_exp),
        .I1(in17[16]),
        .O(\addr_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[17]_i_1 
       (.I0(data_exp),
        .I1(in17[17]),
        .O(\addr_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[18]_i_1 
       (.I0(data_exp),
        .I1(in17[18]),
        .O(\addr_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[19]_i_1 
       (.I0(data_exp),
        .I1(in17[19]),
        .O(\addr_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[1]_i_1 
       (.I0(data_exp),
        .I1(in17[1]),
        .O(\addr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[20]_i_1 
       (.I0(data_exp),
        .I1(in17[20]),
        .O(\addr_cnt[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \addr_cnt[21]_i_1 
       (.I0(data_exp),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\addr_cnt[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[21]_i_2 
       (.I0(data_exp),
        .I1(in17[21]),
        .O(\addr_cnt[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[2]_i_1 
       (.I0(data_exp),
        .I1(in17[2]),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[3]_i_1 
       (.I0(data_exp),
        .I1(in17[3]),
        .O(\addr_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[4]_i_1 
       (.I0(data_exp),
        .I1(in17[4]),
        .O(\addr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[5]_i_1 
       (.I0(data_exp),
        .I1(in17[5]),
        .O(\addr_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[6]_i_1 
       (.I0(data_exp),
        .I1(in17[6]),
        .O(\addr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[7]_i_1 
       (.I0(data_exp),
        .I1(in17[7]),
        .O(\addr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[8]_i_1 
       (.I0(data_exp),
        .I1(in17[8]),
        .O(\addr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[9]_i_1 
       (.I0(data_exp),
        .I1(in17[9]),
        .O(\addr_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[0]_i_1_n_0 ),
        .Q(addr_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[10]_i_1_n_0 ),
        .Q(addr_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[11]_i_1_n_0 ),
        .Q(addr_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[12]_i_1_n_0 ),
        .Q(addr_cnt[12]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[13] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[13]_i_1_n_0 ),
        .Q(addr_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[14]_i_1_n_0 ),
        .Q(addr_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[15]_i_1_n_0 ),
        .Q(addr_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[16]_i_1_n_0 ),
        .Q(addr_cnt[16]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[17] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[17]_i_1_n_0 ),
        .Q(addr_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[18]_i_1_n_0 ),
        .Q(addr_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[19]_i_1_n_0 ),
        .Q(addr_cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[1]_i_1_n_0 ),
        .Q(addr_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[20]_i_1_n_0 ),
        .Q(addr_cnt[20]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[21] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[21]_i_2_n_0 ),
        .Q(addr_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(addr_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[3]_i_1_n_0 ),
        .Q(addr_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(addr_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[5]_i_1_n_0 ),
        .Q(addr_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(addr_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[7]_i_1_n_0 ),
        .Q(addr_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(addr_cnt[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(sysclk),
        .CE(\addr_cnt[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[9]_i_1_n_0 ),
        .Q(addr_cnt[9]));
  LUT4 #(
    .INIT(16'h5F30)) 
    bitflip_flag_i_1
       (.I0(bitflip_flag_i_2_n_0),
        .I1(state1_carry__0_n_2),
        .I2(data_prev_1),
        .I3(bitflip_flag_reg_n_0),
        .O(bitflip_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    bitflip_flag_i_2
       (.I0(\loop_cnt_reg_n_0_[1] ),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .I2(\loop_cnt_reg_n_0_[0] ),
        .I3(\loop_cnt_reg_n_0_[3] ),
        .O(bitflip_flag_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    bitflip_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(bitflip_flag_i_1_n_0),
        .Q(bitflip_flag_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_buf[15]_i_1 
       (.I0(reset_n),
        .I1(data_buf),
        .O(data_buf0));
  FDRE \data_buf_reg[0] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[0]),
        .Q(in13[9]),
        .R(1'b0));
  FDRE \data_buf_reg[10] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[10]),
        .Q(in13[19]),
        .R(1'b0));
  FDRE \data_buf_reg[11] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[11]),
        .Q(in13[20]),
        .R(1'b0));
  FDRE \data_buf_reg[12] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[12]),
        .Q(in13[21]),
        .R(1'b0));
  FDRE \data_buf_reg[13] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[13]),
        .Q(in13[22]),
        .R(1'b0));
  FDRE \data_buf_reg[14] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[14]),
        .Q(in13[23]),
        .R(1'b0));
  FDRE \data_buf_reg[15] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[15]),
        .Q(in13[24]),
        .R(1'b0));
  FDRE \data_buf_reg[1] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[1]),
        .Q(in13[10]),
        .R(1'b0));
  FDRE \data_buf_reg[2] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[2]),
        .Q(in13[11]),
        .R(1'b0));
  FDRE \data_buf_reg[3] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[3]),
        .Q(in13[12]),
        .R(1'b0));
  FDRE \data_buf_reg[4] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[4]),
        .Q(in13[13]),
        .R(1'b0));
  FDRE \data_buf_reg[5] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[5]),
        .Q(in13[14]),
        .R(1'b0));
  FDRE \data_buf_reg[6] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[6]),
        .Q(in13[15]),
        .R(1'b0));
  FDRE \data_buf_reg[7] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[7]),
        .Q(in13[16]),
        .R(1'b0));
  FDRE \data_buf_reg[8] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[8]),
        .Q(in13[17]),
        .R(1'b0));
  FDRE \data_buf_reg[9] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[9]),
        .Q(in13[18]),
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
  LUT1 #(
    .INIT(2'h1)) 
    \data_exp[15]_i_1 
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
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[0]),
        .Q(DQ_o[0]));
  FDCE \data_exp_reg[10] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[10]),
        .Q(DQ_o[10]));
  FDPE \data_exp_reg[11] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[11]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[11]));
  FDCE \data_exp_reg[12] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[12]),
        .Q(DQ_o[12]));
  FDPE \data_exp_reg[13] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[13]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[13]));
  FDCE \data_exp_reg[14] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[14]),
        .Q(DQ_o[14]));
  FDPE \data_exp_reg[15] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[15]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[15]));
  FDPE \data_exp_reg[1] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[1]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[1]));
  FDCE \data_exp_reg[2] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[2]),
        .Q(DQ_o[2]));
  FDPE \data_exp_reg[3] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[3]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[3]));
  FDCE \data_exp_reg[4] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[4]),
        .Q(DQ_o[4]));
  FDPE \data_exp_reg[5] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[5]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[5]));
  FDCE \data_exp_reg[6] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[6]),
        .Q(DQ_o[6]));
  FDPE \data_exp_reg[7] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[7]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[7]));
  FDCE \data_exp_reg[8] 
       (.C(sysclk),
        .CE(data_exp),
        .CLR(read_complete_i_2_n_0),
        .D(p_1_in[8]),
        .Q(DQ_o[8]));
  FDPE \data_exp_reg[9] 
       (.C(sysclk),
        .CE(data_exp),
        .D(p_1_in[9]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[0] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[9]),
        .Q(data_prev[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[10] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[19]),
        .Q(data_prev[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[11] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[20]),
        .Q(data_prev[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[12] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[21]),
        .Q(data_prev[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[13] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[22]),
        .Q(data_prev[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[14] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[23]),
        .Q(data_prev[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[15] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[24]),
        .Q(data_prev[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[1] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[10]),
        .Q(data_prev[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[2] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[11]),
        .Q(data_prev[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[3] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[12]),
        .Q(data_prev[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[4] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[13]),
        .Q(data_prev[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[5] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[14]),
        .Q(data_prev[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[6] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[15]),
        .Q(data_prev[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[7] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[16]),
        .Q(data_prev[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[8] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[17]),
        .Q(data_prev[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[9] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in13[18]),
        .Q(data_prev[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEAFAFAFA)) 
    data_rewritten_flag_i_1
       (.I0(write_active_0),
        .I1(bitflip_flag_reg_n_0),
        .I2(data_rewritten_flag_reg_n_0),
        .I3(state1_carry__0_n_2),
        .I4(data_prev_1),
        .O(data_rewritten_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_rewritten_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(data_rewritten_flag_i_1_n_0),
        .Q(data_rewritten_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led0_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(led0),
        .O(led0_i_1_n_0));
  FDCE led0_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(led0_i_1_n_0),
        .Q(led0));
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\loop_cnt_reg_n_0_[0] ),
        .O(\loop_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \loop_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\loop_cnt_reg_n_0_[1] ),
        .I2(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \loop_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[2]));
  LUT4 #(
    .INIT(16'hFF10)) 
    \loop_cnt[3]_i_1 
       (.I0(bitflip_flag_reg_n_0),
        .I1(state1_carry__0_n_2),
        .I2(data_prev_1),
        .I3(\loop_cnt[3]_i_3_n_0 ),
        .O(\loop_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \loop_cnt[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\loop_cnt_reg_n_0_[3] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .I4(\loop_cnt_reg_n_0_[1] ),
        .O(loop_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2222222A)) 
    \loop_cnt[3]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\loop_cnt_reg_n_0_[3] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[1] ),
        .I4(\loop_cnt_reg_n_0_[0] ),
        .O(\loop_cnt[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \loop_cnt_reg[0] 
       (.C(sysclk),
        .CE(\loop_cnt[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\loop_cnt[0]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    o_BF_drive_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(A_buf),
        .I2(data_exp),
        .I3(o_BF_drive),
        .O(o_BF_drive_i_1_n_0));
  FDCE o_BF_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(o_BF_drive_i_1_n_0),
        .Q(o_BF_drive));
  CARRY4 osc_cnt0_carry
       (.CI(1'b0),
        .CO({osc_cnt0_carry_n_0,osc_cnt0_carry_n_1,osc_cnt0_carry_n_2,osc_cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_osc_cnt0_carry_O_UNCONNECTED[3:0]),
        .S({osc_cnt0_carry_i_1_n_0,osc_cnt0_carry_i_2_n_0,osc_cnt0_carry_i_3_n_0,osc_cnt0_carry_i_4_n_0}));
  CARRY4 osc_cnt0_carry__0
       (.CI(osc_cnt0_carry_n_0),
        .CO({NLW_osc_cnt0_carry__0_CO_UNCONNECTED[3:2],osc_cnt0_carry__0_n_2,osc_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_osc_cnt0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,osc_cnt0_carry__0_i_1_n_0,osc_cnt0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    osc_cnt0_carry__0_i_1
       (.I0(data_prev[15]),
        .I1(in13[24]),
        .O(osc_cnt0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    osc_cnt0_carry__0_i_2
       (.I0(in13[21]),
        .I1(data_prev[12]),
        .I2(data_prev[14]),
        .I3(in13[23]),
        .I4(data_prev[13]),
        .I5(in13[22]),
        .O(osc_cnt0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    osc_cnt0_carry_i_1
       (.I0(in13[18]),
        .I1(data_prev[9]),
        .I2(data_prev[11]),
        .I3(in13[20]),
        .I4(data_prev[10]),
        .I5(in13[19]),
        .O(osc_cnt0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    osc_cnt0_carry_i_2
       (.I0(in13[15]),
        .I1(data_prev[6]),
        .I2(data_prev[8]),
        .I3(in13[17]),
        .I4(data_prev[7]),
        .I5(in13[16]),
        .O(osc_cnt0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    osc_cnt0_carry_i_3
       (.I0(in13[12]),
        .I1(data_prev[3]),
        .I2(data_prev[5]),
        .I3(in13[14]),
        .I4(data_prev[4]),
        .I5(in13[13]),
        .O(osc_cnt0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    osc_cnt0_carry_i_4
       (.I0(in13[9]),
        .I1(data_prev[0]),
        .I2(data_prev[2]),
        .I3(in13[11]),
        .I4(data_prev[1]),
        .I5(in13[10]),
        .O(osc_cnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \osc_cnt[0]_i_1 
       (.I0(osc_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \osc_cnt[1]_i_1 
       (.I0(osc_cnt_reg[0]),
        .I1(osc_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \osc_cnt[2]_i_1 
       (.I0(osc_cnt_reg[0]),
        .I1(osc_cnt_reg[1]),
        .I2(osc_cnt_reg[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \osc_cnt[3]_i_1 
       (.I0(reset_n),
        .I1(bitflip_flag_reg_n_0),
        .I2(osc_cnt0_carry__0_n_2),
        .I3(data_prev_1),
        .O(osc_cnt0__6));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \osc_cnt[3]_i_2 
       (.I0(osc_cnt_reg[1]),
        .I1(osc_cnt_reg[0]),
        .I2(osc_cnt_reg[2]),
        .I3(osc_cnt_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[0] 
       (.C(sysclk),
        .CE(osc_cnt0__6),
        .D(p_0_in[0]),
        .Q(osc_cnt_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[1] 
       (.C(sysclk),
        .CE(osc_cnt0__6),
        .D(p_0_in[1]),
        .Q(osc_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[2] 
       (.C(sysclk),
        .CE(osc_cnt0__6),
        .D(p_0_in[2]),
        .Q(osc_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[3] 
       (.C(sysclk),
        .CE(osc_cnt0__6),
        .D(p_0_in[3]),
        .Q(osc_cnt_reg[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(addr_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[4:1]),
        .S(addr_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[8:5]),
        .S(addr_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[12:9]),
        .S(addr_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[16:13]),
        .S(addr_cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[20:17]),
        .S(addr_cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO(NLW_plusOp_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3:1],in17[21]}),
        .S({1'b0,1'b0,1'b0,addr_cnt[21]}));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    read_complete_i_1
       (.I0(A_buf),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(addresses_searched),
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
        .Q(addresses_searched));
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}));
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({NLW_state1_carry__0_CO_UNCONNECTED[3:2],state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    state1_carry__0_i_1
       (.I0(DQ_o[15]),
        .I1(in13[24]),
        .O(state1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry__0_i_2
       (.I0(in13[21]),
        .I1(DQ_o[12]),
        .I2(DQ_o[14]),
        .I3(in13[23]),
        .I4(DQ_o[13]),
        .I5(in13[22]),
        .O(state1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_1
       (.I0(in13[18]),
        .I1(DQ_o[9]),
        .I2(DQ_o[11]),
        .I3(in13[20]),
        .I4(DQ_o[10]),
        .I5(in13[19]),
        .O(state1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_2
       (.I0(in13[15]),
        .I1(DQ_o[6]),
        .I2(DQ_o[8]),
        .I3(in13[17]),
        .I4(DQ_o[7]),
        .I5(in13[16]),
        .O(state1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_3
       (.I0(in13[12]),
        .I1(DQ_o[3]),
        .I2(DQ_o[5]),
        .I3(in13[14]),
        .I4(DQ_o[4]),
        .I5(in13[13]),
        .O(state1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state1_carry_i_4
       (.I0(in13[9]),
        .I1(DQ_o[0]),
        .I2(DQ_o[2]),
        .I3(in13[11]),
        .I4(DQ_o[1]),
        .I5(in13[10]),
        .O(state1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    write_active_i_1
       (.I0(write_active_0),
        .I1(A_buf),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(write_active),
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

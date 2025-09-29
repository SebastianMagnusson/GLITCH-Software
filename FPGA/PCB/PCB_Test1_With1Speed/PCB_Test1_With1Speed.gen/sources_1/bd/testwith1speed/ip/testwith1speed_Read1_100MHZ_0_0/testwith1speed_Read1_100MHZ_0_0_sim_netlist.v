// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Sep 28 15:47:40 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_Read1_100MHZ_0_0/testwith1speed_Read1_100MHZ_0_0_sim_netlist.v
// Design      : testwith1speed_Read1_100MHZ_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testwith1speed_Read1_100MHZ_0_0,Read1_100MHZ,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Read1_100MHZ,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module testwith1speed_Read1_100MHZ_0_0
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
    decoder,
    o_BF_data,
    o_BF_drive,
    addresses_searched,
    led0,
    led1,
    led2);
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
  output [2:0]decoder;
  output [46:0]o_BF_data;
  output o_BF_drive;
  output addresses_searched;
  output led0;
  output led1;
  output led2;

  wire \<const0> ;
  wire \<const1> ;
  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [13:12]\^DQ_o ;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire addresses_searched;
  wire led0;
  wire led1;
  wire led2;
  wire [46:0]\^o_BF_data ;
  wire o_BF_drive;
  wire reset_n;
  wire sysclk;
  wire write_complete;

  assign DQ_o[15:14] = \^DQ_o [13:12];
  assign DQ_o[13:12] = \^DQ_o [13:12];
  assign DQ_o[11:10] = \^DQ_o [13:12];
  assign DQ_o[9:8] = \^DQ_o [13:12];
  assign DQ_o[7:6] = \^DQ_o [13:12];
  assign DQ_o[5:4] = \^DQ_o [13:12];
  assign DQ_o[3:2] = \^DQ_o [13:12];
  assign DQ_o[1:0] = \^DQ_o [13:12];
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
  assign decoder[1] = \<const1> ;
  assign decoder[0] = \<const0> ;
  assign o_BF_data[46:9] = \^o_BF_data [46:9];
  assign o_BF_data[8] = \<const0> ;
  assign o_BF_data[7] = \<const0> ;
  assign o_BF_data[6] = \<const0> ;
  assign o_BF_data[5] = \<const0> ;
  assign o_BF_data[4:0] = \^o_BF_data [4:0];
  assign read_complete = addresses_searched;
  GND GND
       (.G(\<const0> ));
  testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .DQ_o(\^DQ_o ),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .addresses_searched(addresses_searched),
        .led0(led0),
        .led1(led1),
        .led2(led2),
        .o_BF_data({\^o_BF_data [46:9],\^o_BF_data [4:0]}),
        .o_BF_drive(o_BF_drive),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Read1_100MHZ" *) 
module testwith1speed_Read1_100MHZ_0_0_Read1_100MHZ
   (A,
    CE_n,
    DQ_o,
    o_BF_data,
    DQ_t,
    addresses_searched,
    o_BF_drive,
    led2,
    WE_n,
    led0,
    led1,
    reset_n,
    sysclk,
    DQ_i,
    write_complete);
  output [21:0]A;
  output CE_n;
  output [1:0]DQ_o;
  output [42:0]o_BF_data;
  output [0:0]DQ_t;
  output addresses_searched;
  output o_BF_drive;
  output led2;
  output WE_n;
  output led0;
  output led1;
  input reset_n;
  input sysclk;
  input [15:0]DQ_i;
  input write_complete;

  wire [21:0]A;
  wire \A[21]_i_1_n_0 ;
  wire A_buf;
  wire \BF_data_buf[46]_i_10_n_0 ;
  wire \BF_data_buf[46]_i_11_n_0 ;
  wire \BF_data_buf[46]_i_12_n_0 ;
  wire \BF_data_buf[46]_i_13_n_0 ;
  wire \BF_data_buf[46]_i_1_n_0 ;
  wire \BF_data_buf[46]_i_2_n_0 ;
  wire \BF_data_buf[46]_i_3_n_0 ;
  wire \BF_data_buf[46]_i_4_n_0 ;
  wire \BF_data_buf[46]_i_5_n_0 ;
  wire \BF_data_buf[46]_i_6_n_0 ;
  wire \BF_data_buf[46]_i_7_n_0 ;
  wire \BF_data_buf[46]_i_8_n_0 ;
  wire \BF_data_buf[46]_i_9_n_0 ;
  wire \BF_data_buf[4]_i_1_n_0 ;
  wire \BF_data_buf[4]_i_2_n_0 ;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [1:0]DQ_o;
  wire [0:0]DQ_t;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_10_n_0 ;
  wire \FSM_onehot_state[10]_i_11_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_4_n_0 ;
  wire \FSM_onehot_state[10]_i_5_n_0 ;
  wire \FSM_onehot_state[10]_i_6_n_0 ;
  wire \FSM_onehot_state[10]_i_7_n_0 ;
  wire \FSM_onehot_state[10]_i_8_n_0 ;
  wire \FSM_onehot_state[10]_i_9_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
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
  wire \data_exp[14]_i_1_n_0 ;
  wire \data_exp[15]_i_1_n_0 ;
  wire \data_exp[15]_i_2_n_0 ;
  wire [15:0]data_prev;
  wire data_prev_1;
  wire data_rewritten_flag_i_1_n_0;
  wire data_rewritten_flag_reg_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [46:9]in22;
  wire [21:1]in26;
  wire led0;
  wire led0_i_1_n_0;
  wire led1;
  wire led1_i_1_n_0;
  wire led2;
  wire led2_i_1_n_0;
  wire [3:0]loop_cnt;
  wire \loop_cnt[1]_i_1_n_0 ;
  wire \loop_cnt[3]_i_1_n_0 ;
  wire \loop_cnt[3]_i_3_n_0 ;
  wire \loop_cnt_reg_n_0_[0] ;
  wire \loop_cnt_reg_n_0_[1] ;
  wire \loop_cnt_reg_n_0_[2] ;
  wire \loop_cnt_reg_n_0_[3] ;
  wire [42:0]o_BF_data;
  wire o_BF_drive;
  wire o_BF_drive_i_1_n_0;
  wire [3:0]osc_cnt;
  wire osc_cnt0;
  wire \osc_cnt0_inferred__0/i__carry__0_n_2 ;
  wire \osc_cnt0_inferred__0/i__carry__0_n_3 ;
  wire \osc_cnt0_inferred__0/i__carry_n_0 ;
  wire \osc_cnt0_inferred__0/i__carry_n_1 ;
  wire \osc_cnt0_inferred__0/i__carry_n_2 ;
  wire \osc_cnt0_inferred__0/i__carry_n_3 ;
  wire \osc_cnt[1]_i_1_n_0 ;
  wire \osc_cnt[2]_i_1_n_0 ;
  wire \osc_cnt_reg_n_0_[0] ;
  wire \osc_cnt_reg_n_0_[1] ;
  wire \osc_cnt_reg_n_0_[2] ;
  wire \osc_cnt_reg_n_0_[3] ;
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
  wire sysclk;
  wire \wait_aftre_count[0]_i_1_n_0 ;
  wire \wait_aftre_count[1]_i_1_n_0 ;
  wire \wait_aftre_count[2]_i_1_n_0 ;
  wire \wait_aftre_count[3]_i_1_n_0 ;
  wire \wait_aftre_count[3]_i_2_n_0 ;
  wire \wait_aftre_count_reg_n_0_[0] ;
  wire \wait_aftre_count_reg_n_0_[1] ;
  wire \wait_aftre_count_reg_n_0_[2] ;
  wire \wait_aftre_count_reg_n_0_[3] ;
  wire \wait_aftwr_count[0]_i_1_n_0 ;
  wire \wait_aftwr_count[1]_i_1_n_0 ;
  wire \wait_aftwr_count[2]_i_1_n_0 ;
  wire \wait_aftwr_count[3]_i_1_n_0 ;
  wire \wait_aftwr_count[3]_i_2_n_0 ;
  wire \wait_aftwr_count_reg_n_0_[0] ;
  wire \wait_aftwr_count_reg_n_0_[1] ;
  wire \wait_aftwr_count_reg_n_0_[2] ;
  wire \wait_aftwr_count_reg_n_0_[3] ;
  wire [7:0]wait_count;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count[1]_i_1_n_0 ;
  wire \wait_count[2]_i_1_n_0 ;
  wire \wait_count[3]_i_1_n_0 ;
  wire \wait_count[4]_i_1_n_0 ;
  wire \wait_count[5]_i_1_n_0 ;
  wire \wait_count[5]_i_2_n_0 ;
  wire \wait_count[6]_i_1_n_0 ;
  wire \wait_count[7]_i_1_n_0 ;
  wire \wait_count[7]_i_2_n_0 ;
  wire \wait_count[7]_i_3_n_0 ;
  wire write_active;
  wire write_active_0;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire [3:0]\NLW_osc_cnt0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_osc_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_osc_cnt0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__4_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \A[21]_i_1 
       (.I0(write_active_0),
        .I1(A_buf),
        .O(\A[21]_i_1_n_0 ));
  FDCE \A_buf_reg[0] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[0]),
        .Q(in22[25]));
  FDCE \A_buf_reg[10] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[10]),
        .Q(in22[35]));
  FDCE \A_buf_reg[11] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[11]),
        .Q(in22[36]));
  FDCE \A_buf_reg[12] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[12]),
        .Q(in22[37]));
  FDCE \A_buf_reg[13] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[13]),
        .Q(in22[38]));
  FDCE \A_buf_reg[14] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[14]),
        .Q(in22[39]));
  FDCE \A_buf_reg[15] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[15]),
        .Q(in22[40]));
  FDCE \A_buf_reg[16] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[16]),
        .Q(in22[41]));
  FDCE \A_buf_reg[17] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[17]),
        .Q(in22[42]));
  FDCE \A_buf_reg[18] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[18]),
        .Q(in22[43]));
  FDCE \A_buf_reg[19] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[19]),
        .Q(in22[44]));
  FDCE \A_buf_reg[1] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[1]),
        .Q(in22[26]));
  FDCE \A_buf_reg[20] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[20]),
        .Q(in22[45]));
  FDCE \A_buf_reg[21] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[21]),
        .Q(in22[46]));
  FDCE \A_buf_reg[2] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[2]),
        .Q(in22[27]));
  FDCE \A_buf_reg[3] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[3]),
        .Q(in22[28]));
  FDCE \A_buf_reg[4] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[4]),
        .Q(in22[29]));
  FDCE \A_buf_reg[5] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[5]),
        .Q(in22[30]));
  FDCE \A_buf_reg[6] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[6]),
        .Q(in22[31]));
  FDCE \A_buf_reg[7] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[7]),
        .Q(in22[32]));
  FDCE \A_buf_reg[8] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[8]),
        .Q(in22[33]));
  FDCE \A_buf_reg[9] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[9]),
        .Q(in22[34]));
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
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    \BF_data_buf[46]_i_1 
       (.I0(\BF_data_buf[46]_i_3_n_0 ),
        .I1(\BF_data_buf[46]_i_4_n_0 ),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(\BF_data_buf[46]_i_6_n_0 ),
        .I4(reset_n),
        .I5(data_prev_1),
        .O(\BF_data_buf[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \BF_data_buf[46]_i_10 
       (.I0(in22[23]),
        .I1(in22[21]),
        .I2(in22[19]),
        .I3(in22[13]),
        .O(\BF_data_buf[46]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \BF_data_buf[46]_i_11 
       (.I0(in22[16]),
        .I1(in22[10]),
        .I2(in22[24]),
        .I3(in22[20]),
        .O(\BF_data_buf[46]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \BF_data_buf[46]_i_12 
       (.I0(in22[22]),
        .I1(in22[14]),
        .I2(in22[18]),
        .I3(in22[12]),
        .O(\BF_data_buf[46]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \BF_data_buf[46]_i_13 
       (.I0(in22[11]),
        .I1(in22[9]),
        .I2(in22[17]),
        .I3(in22[15]),
        .O(\BF_data_buf[46]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000202)) 
    \BF_data_buf[46]_i_2 
       (.I0(reset_n),
        .I1(\BF_data_buf[46]_i_6_n_0 ),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(\BF_data_buf[46]_i_4_n_0 ),
        .I4(\BF_data_buf[46]_i_7_n_0 ),
        .I5(\BF_data_buf[46]_i_8_n_0 ),
        .O(\BF_data_buf[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \BF_data_buf[46]_i_3 
       (.I0(in22[16]),
        .I1(in22[22]),
        .I2(in22[14]),
        .I3(in22[24]),
        .I4(\BF_data_buf[46]_i_8_n_0 ),
        .O(\BF_data_buf[46]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \BF_data_buf[46]_i_4 
       (.I0(in22[9]),
        .I1(in22[17]),
        .I2(in22[11]),
        .I3(in22[15]),
        .I4(\BF_data_buf[46]_i_9_n_0 ),
        .O(\BF_data_buf[46]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000040F0404)) 
    \BF_data_buf[46]_i_5 
       (.I0(\BF_data_buf[46]_i_8_n_0 ),
        .I1(\BF_data_buf[46]_i_7_n_0 ),
        .I2(\BF_data_buf[46]_i_10_n_0 ),
        .I3(\BF_data_buf[46]_i_11_n_0 ),
        .I4(\BF_data_buf[46]_i_12_n_0 ),
        .I5(\BF_data_buf[46]_i_13_n_0 ),
        .O(\BF_data_buf[46]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \BF_data_buf[46]_i_6 
       (.I0(bitflip_flag_reg_n_0),
        .I1(data_rewritten_flag_reg_n_0),
        .I2(data_prev_1),
        .O(\BF_data_buf[46]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \BF_data_buf[46]_i_7 
       (.I0(in22[24]),
        .I1(in22[14]),
        .I2(in22[22]),
        .I3(in22[16]),
        .O(\BF_data_buf[46]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \BF_data_buf[46]_i_8 
       (.I0(in22[20]),
        .I1(in22[10]),
        .I2(in22[18]),
        .I3(in22[12]),
        .O(\BF_data_buf[46]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \BF_data_buf[46]_i_9 
       (.I0(in22[23]),
        .I1(in22[21]),
        .I2(in22[19]),
        .I3(in22[13]),
        .O(\BF_data_buf[46]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8888888000000000)) 
    \BF_data_buf[4]_i_1 
       (.I0(reset_n),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[1] ),
        .I4(\loop_cnt_reg_n_0_[0] ),
        .I5(\loop_cnt_reg_n_0_[3] ),
        .O(\BF_data_buf[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \BF_data_buf[4]_i_2 
       (.I0(\osc_cnt_reg_n_0_[3] ),
        .I1(\osc_cnt_reg_n_0_[2] ),
        .I2(\osc_cnt_reg_n_0_[1] ),
        .I3(\osc_cnt_reg_n_0_[0] ),
        .O(\BF_data_buf[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[0] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(\osc_cnt_reg_n_0_[0] ),
        .Q(o_BF_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[10] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[10]),
        .Q(o_BF_data[6]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[11] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[11]),
        .Q(o_BF_data[7]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[12] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[12]),
        .Q(o_BF_data[8]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[13] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[13]),
        .Q(o_BF_data[9]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[14] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[14]),
        .Q(o_BF_data[10]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[15] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[15]),
        .Q(o_BF_data[11]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[16] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[16]),
        .Q(o_BF_data[12]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[17] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[17]),
        .Q(o_BF_data[13]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[18] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[18]),
        .Q(o_BF_data[14]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[19] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[19]),
        .Q(o_BF_data[15]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[1] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(\osc_cnt_reg_n_0_[1] ),
        .Q(o_BF_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[20] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[20]),
        .Q(o_BF_data[16]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[21] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[21]),
        .Q(o_BF_data[17]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[22] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[22]),
        .Q(o_BF_data[18]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[23] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[23]),
        .Q(o_BF_data[19]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[24] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[24]),
        .Q(o_BF_data[20]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[25] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[25]),
        .Q(o_BF_data[21]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[26] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[26]),
        .Q(o_BF_data[22]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[27] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[27]),
        .Q(o_BF_data[23]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[28] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[28]),
        .Q(o_BF_data[24]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[29] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[29]),
        .Q(o_BF_data[25]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[2] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(\osc_cnt_reg_n_0_[2] ),
        .Q(o_BF_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[30] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[30]),
        .Q(o_BF_data[26]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[31] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[31]),
        .Q(o_BF_data[27]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[32] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[32]),
        .Q(o_BF_data[28]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[33] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[33]),
        .Q(o_BF_data[29]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[34] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[34]),
        .Q(o_BF_data[30]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[35] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[35]),
        .Q(o_BF_data[31]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[36] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[36]),
        .Q(o_BF_data[32]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[37] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[37]),
        .Q(o_BF_data[33]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[38] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[38]),
        .Q(o_BF_data[34]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[39] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[39]),
        .Q(o_BF_data[35]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[3] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(\osc_cnt_reg_n_0_[3] ),
        .Q(o_BF_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[40] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[40]),
        .Q(o_BF_data[36]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[41] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[41]),
        .Q(o_BF_data[37]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[42] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[42]),
        .Q(o_BF_data[38]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[43] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[43]),
        .Q(o_BF_data[39]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[44] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[44]),
        .Q(o_BF_data[40]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[45] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[45]),
        .Q(o_BF_data[41]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[46] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[46]),
        .Q(o_BF_data[42]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[4] 
       (.C(sysclk),
        .CE(\BF_data_buf[4]_i_1_n_0 ),
        .D(\BF_data_buf[4]_i_2_n_0 ),
        .Q(o_BF_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[9] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(in22[9]),
        .Q(o_BF_data[5]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDCE CE_n_reg
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(1'b1),
        .Q(CE_n));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[10]_i_5_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state[0]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAEFFAE)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\loop_cnt[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state[0]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[10] ),
        .I4(write_complete),
        .I5(A_buf),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\wait_aftwr_count_reg_n_0_[0] ),
        .I1(\wait_aftwr_count_reg_n_0_[1] ),
        .I2(\wait_aftwr_count_reg_n_0_[2] ),
        .I3(\wait_aftwr_count_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state[10]_i_3_n_0 ),
        .I3(\FSM_onehot_state[10]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .I5(\A[21]_i_1_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_10 
       (.I0(addr_cnt[19]),
        .I1(addr_cnt[5]),
        .I2(addr_cnt[20]),
        .I3(addr_cnt[8]),
        .O(\FSM_onehot_state[10]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_11 
       (.I0(addr_cnt[10]),
        .I1(addr_cnt[2]),
        .I2(addr_cnt[18]),
        .I3(addr_cnt[0]),
        .O(\FSM_onehot_state[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state[10]_i_5_n_0 ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(wait_count[4]),
        .I1(wait_count[7]),
        .I2(wait_count[5]),
        .I3(wait_count[6]),
        .I4(wait_count[1]),
        .I5(\FSM_onehot_state[10]_i_6_n_0 ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[10]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(data_buf),
        .I5(data_prev_1),
        .O(\FSM_onehot_state[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[10]_i_5 
       (.I0(\FSM_onehot_state[10]_i_7_n_0 ),
        .I1(\FSM_onehot_state[10]_i_8_n_0 ),
        .I2(\FSM_onehot_state[10]_i_9_n_0 ),
        .I3(\FSM_onehot_state[10]_i_10_n_0 ),
        .I4(\FSM_onehot_state[10]_i_11_n_0 ),
        .O(\FSM_onehot_state[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[10]_i_6 
       (.I0(wait_count[2]),
        .I1(wait_count[3]),
        .O(\FSM_onehot_state[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[10]_i_7 
       (.I0(addr_cnt[17]),
        .I1(addr_cnt[13]),
        .I2(addr_cnt[11]),
        .I3(addr_cnt[16]),
        .I4(addr_cnt[12]),
        .I5(addr_cnt[14]),
        .O(\FSM_onehot_state[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_8 
       (.I0(addr_cnt[21]),
        .I1(addr_cnt[3]),
        .I2(addr_cnt[7]),
        .I3(addr_cnt[4]),
        .O(\FSM_onehot_state[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[10]_i_9 
       (.I0(addr_cnt[15]),
        .I1(addr_cnt[1]),
        .I2(addr_cnt[9]),
        .I3(addr_cnt[6]),
        .O(\FSM_onehot_state[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(A_buf),
        .I1(write_complete),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBFFFAAAAAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\wait_aftre_count_reg_n_0_[3] ),
        .I2(\wait_aftre_count_reg_n_0_[0] ),
        .I3(\wait_aftre_count_reg_n_0_[1] ),
        .I4(\wait_aftre_count_reg_n_0_[2] ),
        .I5(data_buf),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\wait_aftre_count_reg_n_0_[2] ),
        .I1(\wait_aftre_count_reg_n_0_[1] ),
        .I2(\wait_aftre_count_reg_n_0_[0] ),
        .I3(\wait_aftre_count_reg_n_0_[3] ),
        .I4(data_buf),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(data_prev_1),
        .I1(data_rewritten_flag_reg_n_0),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888A8A)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(bitflip_flag_reg_n_0),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(\BF_data_buf[46]_i_4_n_0 ),
        .I4(\BF_data_buf[46]_i_7_n_0 ),
        .I5(\BF_data_buf[46]_i_8_n_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(data_prev_1),
        .I1(data_rewritten_flag_reg_n_0),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA80000)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .I4(\loop_cnt_reg_n_0_[3] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFFAAAAAAAA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\wait_aftwr_count_reg_n_0_[0] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[2] ),
        .I4(\wait_aftwr_count_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABABABBBABA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\BF_data_buf[46]_i_6_n_0 ),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(\BF_data_buf[46]_i_4_n_0 ),
        .I4(\BF_data_buf[46]_i_7_n_0 ),
        .I5(\BF_data_buf[46]_i_8_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(read_complete_i_2_n_0),
        .Q(A_buf));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[10]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(data_buf));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(data_prev_1));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(write_active_0));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(write_active_0),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "data_validation:00000001000,next_addr:01000000000,read_capture:00000000100,done:10000000000,read:00000000010,read_start:00000000001,write_fix_start:00001000000,write_fix_finish:00100000000,write_fix:00010000000,oscillator:00000100000,send_to_fetcher:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    WE_n_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(A_buf),
        .I2(write_active_0),
        .I3(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(read_complete_i_2_n_0),
        .Q(WE_n));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(addr_cnt[0]),
        .O(\addr_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[10]),
        .O(\addr_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[11]),
        .O(\addr_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[12]),
        .O(\addr_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[13]),
        .O(\addr_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[14]),
        .O(\addr_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[15]),
        .O(\addr_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[16]),
        .O(\addr_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[17]),
        .O(\addr_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[18]),
        .O(\addr_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[19]),
        .O(\addr_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[1]),
        .O(\addr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[20]),
        .O(\addr_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[21]),
        .O(\addr_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[2]),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[3]),
        .O(\addr_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[4]),
        .O(\addr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[5]),
        .O(\addr_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[6]),
        .O(\addr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[7]),
        .O(\addr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[8]),
        .O(\addr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in26[9]),
        .O(\addr_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[0]_i_1_n_0 ),
        .Q(addr_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[10]_i_1_n_0 ),
        .Q(addr_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[11]_i_1_n_0 ),
        .Q(addr_cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[12]_i_1_n_0 ),
        .Q(addr_cnt[12]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[13] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[13]_i_1_n_0 ),
        .Q(addr_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[14]_i_1_n_0 ),
        .Q(addr_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[15]_i_1_n_0 ),
        .Q(addr_cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[16]_i_1_n_0 ),
        .Q(addr_cnt[16]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[17] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[17]_i_1_n_0 ),
        .Q(addr_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[18]_i_1_n_0 ),
        .Q(addr_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[19]_i_1_n_0 ),
        .Q(addr_cnt[19]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[1]_i_1_n_0 ),
        .Q(addr_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[20]_i_1_n_0 ),
        .Q(addr_cnt[20]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[21] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[21]_i_1_n_0 ),
        .Q(addr_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(addr_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[3]_i_1_n_0 ),
        .Q(addr_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(addr_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[5]_i_1_n_0 ),
        .Q(addr_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(addr_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[7]_i_1_n_0 ),
        .Q(addr_cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(addr_cnt[8]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt[9]_i_1_n_0 ),
        .Q(addr_cnt[9]));
  LUT6 #(
    .INIT(64'hBBBBBBBB04000404)) 
    bitflip_flag_i_1
       (.I0(bitflip_flag_i_2_n_0),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(\BF_data_buf[46]_i_4_n_0 ),
        .I4(\BF_data_buf[46]_i_3_n_0 ),
        .I5(bitflip_flag_reg_n_0),
        .O(bitflip_flag_i_1_n_0));
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    bitflip_flag_i_2
       (.I0(bitflip_flag_reg_n_0),
        .I1(\loop_cnt_reg_n_0_[2] ),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .I4(\loop_cnt_reg_n_0_[3] ),
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
       (.I0(data_buf),
        .I1(reset_n),
        .O(data_buf0));
  FDRE \data_buf_reg[0] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[0]),
        .Q(in22[9]),
        .R(1'b0));
  FDRE \data_buf_reg[10] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[10]),
        .Q(in22[19]),
        .R(1'b0));
  FDRE \data_buf_reg[11] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[11]),
        .Q(in22[20]),
        .R(1'b0));
  FDRE \data_buf_reg[12] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[12]),
        .Q(in22[21]),
        .R(1'b0));
  FDRE \data_buf_reg[13] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[13]),
        .Q(in22[22]),
        .R(1'b0));
  FDRE \data_buf_reg[14] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[14]),
        .Q(in22[23]),
        .R(1'b0));
  FDRE \data_buf_reg[15] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[15]),
        .Q(in22[24]),
        .R(1'b0));
  FDRE \data_buf_reg[1] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[1]),
        .Q(in22[10]),
        .R(1'b0));
  FDRE \data_buf_reg[2] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[2]),
        .Q(in22[11]),
        .R(1'b0));
  FDRE \data_buf_reg[3] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[3]),
        .Q(in22[12]),
        .R(1'b0));
  FDRE \data_buf_reg[4] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[4]),
        .Q(in22[13]),
        .R(1'b0));
  FDRE \data_buf_reg[5] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[5]),
        .Q(in22[14]),
        .R(1'b0));
  FDRE \data_buf_reg[6] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[6]),
        .Q(in22[15]),
        .R(1'b0));
  FDRE \data_buf_reg[7] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[7]),
        .Q(in22[16]),
        .R(1'b0));
  FDRE \data_buf_reg[8] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[8]),
        .Q(in22[17]),
        .R(1'b0));
  FDRE \data_buf_reg[9] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[9]),
        .Q(in22[18]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_exp[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(in22[25]),
        .O(\data_exp[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_exp[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\data_exp[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \data_exp[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(in22[25]),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\data_exp[15]_i_2_n_0 ));
  FDCE \data_exp_reg[14] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\data_exp[14]_i_1_n_0 ),
        .Q(DQ_o[0]));
  FDPE \data_exp_reg[15] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .D(\data_exp[15]_i_2_n_0 ),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[0] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[9]),
        .Q(data_prev[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[10] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[19]),
        .Q(data_prev[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[11] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[20]),
        .Q(data_prev[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[12] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[21]),
        .Q(data_prev[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[13] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[22]),
        .Q(data_prev[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[14] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[23]),
        .Q(data_prev[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[15] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[24]),
        .Q(data_prev[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[1] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[10]),
        .Q(data_prev[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[2] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[11]),
        .Q(data_prev[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[3] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[12]),
        .Q(data_prev[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[4] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[13]),
        .Q(data_prev[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[5] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[14]),
        .Q(data_prev[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[6] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[15]),
        .Q(data_prev[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[7] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[16]),
        .Q(data_prev[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[8] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[17]),
        .Q(data_prev[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[9] 
       (.C(sysclk),
        .CE(data_prev_1),
        .CLR(read_complete_i_2_n_0),
        .D(in22[18]),
        .Q(data_prev[9]));
  LUT3 #(
    .INIT(8'hAE)) 
    data_rewritten_flag_i_1
       (.I0(write_active_0),
        .I1(data_rewritten_flag_reg_n_0),
        .I2(data_prev_1),
        .O(data_rewritten_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_rewritten_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(data_rewritten_flag_i_1_n_0),
        .Q(data_rewritten_flag_reg_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(data_prev[15]),
        .I1(in22[24]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(in22[23]),
        .I1(data_prev[14]),
        .I2(in22[21]),
        .I3(data_prev[12]),
        .I4(data_prev[13]),
        .I5(in22[22]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(in22[18]),
        .I1(data_prev[9]),
        .I2(in22[19]),
        .I3(data_prev[10]),
        .I4(data_prev[11]),
        .I5(in22[20]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(in22[15]),
        .I1(data_prev[6]),
        .I2(in22[16]),
        .I3(data_prev[7]),
        .I4(data_prev[8]),
        .I5(in22[17]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(in22[12]),
        .I1(data_prev[3]),
        .I2(in22[13]),
        .I3(data_prev[4]),
        .I4(data_prev[5]),
        .I5(in22[14]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(in22[10]),
        .I1(data_prev[1]),
        .I2(in22[9]),
        .I3(data_prev[0]),
        .I4(data_prev[2]),
        .I5(in22[11]),
        .O(i__carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led0_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(led0),
        .O(led0_i_1_n_0));
  FDCE led0_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(led0_i_1_n_0),
        .Q(led0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led1_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(led1),
        .O(led1_i_1_n_0));
  FDCE led1_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(led1_i_1_n_0),
        .Q(led1));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF04)) 
    led2_i_1
       (.I0(\BF_data_buf[46]_i_8_n_0 ),
        .I1(\BF_data_buf[46]_i_7_n_0 ),
        .I2(\BF_data_buf[46]_i_4_n_0 ),
        .I3(\BF_data_buf[46]_i_5_n_0 ),
        .I4(\BF_data_buf[46]_i_6_n_0 ),
        .I5(led2),
        .O(led2_i_1_n_0));
  FDCE led2_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(led2_i_1_n_0),
        .Q(led2));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \loop_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \loop_cnt[1]_i_1 
       (.I0(\loop_cnt_reg_n_0_[1] ),
        .I1(\loop_cnt_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\loop_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \loop_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\loop_cnt_reg_n_0_[0] ),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[2] ),
        .O(loop_cnt[2]));
  LUT6 #(
    .INIT(64'hABABABABABAAABAB)) 
    \loop_cnt[3]_i_1 
       (.I0(\loop_cnt[3]_i_3_n_0 ),
        .I1(\BF_data_buf[46]_i_6_n_0 ),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(\BF_data_buf[46]_i_4_n_0 ),
        .I4(\BF_data_buf[46]_i_7_n_0 ),
        .I5(\BF_data_buf[46]_i_8_n_0 ),
        .O(\loop_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \loop_cnt[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\loop_cnt_reg_n_0_[1] ),
        .I2(\loop_cnt_reg_n_0_[0] ),
        .I3(\loop_cnt_reg_n_0_[2] ),
        .I4(\loop_cnt_reg_n_0_[3] ),
        .O(loop_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55570000)) 
    \loop_cnt[3]_i_3 
       (.I0(\loop_cnt_reg_n_0_[3] ),
        .I1(\loop_cnt_reg_n_0_[0] ),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\loop_cnt[3]_i_3_n_0 ));
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
        .D(\loop_cnt[1]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    o_BF_drive_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(A_buf),
        .I3(o_BF_drive),
        .O(o_BF_drive_i_1_n_0));
  FDCE o_BF_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(o_BF_drive_i_1_n_0),
        .Q(o_BF_drive));
  CARRY4 \osc_cnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\osc_cnt0_inferred__0/i__carry_n_0 ,\osc_cnt0_inferred__0/i__carry_n_1 ,\osc_cnt0_inferred__0/i__carry_n_2 ,\osc_cnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_osc_cnt0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \osc_cnt0_inferred__0/i__carry__0 
       (.CI(\osc_cnt0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_osc_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\osc_cnt0_inferred__0/i__carry__0_n_2 ,\osc_cnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_osc_cnt0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \osc_cnt[0]_i_1 
       (.I0(data_prev_1),
        .I1(\osc_cnt_reg_n_0_[0] ),
        .O(osc_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \osc_cnt[1]_i_1 
       (.I0(\osc_cnt_reg_n_0_[1] ),
        .I1(\osc_cnt_reg_n_0_[0] ),
        .I2(data_prev_1),
        .O(\osc_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \osc_cnt[2]_i_1 
       (.I0(\osc_cnt_reg_n_0_[0] ),
        .I1(\osc_cnt_reg_n_0_[1] ),
        .I2(\osc_cnt_reg_n_0_[2] ),
        .I3(data_prev_1),
        .O(\osc_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888A88888888888)) 
    \osc_cnt[3]_i_1 
       (.I0(reset_n),
        .I1(write_active_0),
        .I2(\osc_cnt0_inferred__0/i__carry__0_n_2 ),
        .I3(bitflip_flag_reg_n_0),
        .I4(data_rewritten_flag_reg_n_0),
        .I5(data_prev_1),
        .O(osc_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \osc_cnt[3]_i_2 
       (.I0(data_prev_1),
        .I1(\osc_cnt_reg_n_0_[2] ),
        .I2(\osc_cnt_reg_n_0_[1] ),
        .I3(\osc_cnt_reg_n_0_[0] ),
        .I4(\osc_cnt_reg_n_0_[3] ),
        .O(osc_cnt[3]));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[0] 
       (.C(sysclk),
        .CE(osc_cnt0),
        .D(osc_cnt[0]),
        .Q(\osc_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[1] 
       (.C(sysclk),
        .CE(osc_cnt0),
        .D(\osc_cnt[1]_i_1_n_0 ),
        .Q(\osc_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[2] 
       (.C(sysclk),
        .CE(osc_cnt0),
        .D(\osc_cnt[2]_i_1_n_0 ),
        .Q(\osc_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[3] 
       (.C(sysclk),
        .CE(osc_cnt0),
        .D(osc_cnt[3]),
        .Q(\osc_cnt_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(addr_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[4:1]),
        .S(addr_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[8:5]),
        .S(addr_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[12:9]),
        .S(addr_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[16:13]),
        .S(addr_cnt[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[20:17]),
        .S(addr_cnt[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO(NLW_plusOp_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3:1],in26[21]}),
        .S({1'b0,1'b0,1'b0,addr_cnt[21]}));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_aftre_count[0]_i_1 
       (.I0(\wait_aftre_count_reg_n_0_[3] ),
        .I1(\wait_aftre_count_reg_n_0_[2] ),
        .I2(data_buf),
        .I3(\wait_aftre_count_reg_n_0_[0] ),
        .O(\wait_aftre_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00707000)) 
    \wait_aftre_count[1]_i_1 
       (.I0(\wait_aftre_count_reg_n_0_[3] ),
        .I1(\wait_aftre_count_reg_n_0_[2] ),
        .I2(data_buf),
        .I3(\wait_aftre_count_reg_n_0_[1] ),
        .I4(\wait_aftre_count_reg_n_0_[0] ),
        .O(\wait_aftre_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \wait_aftre_count[2]_i_1 
       (.I0(\wait_aftre_count_reg_n_0_[3] ),
        .I1(data_buf),
        .I2(\wait_aftre_count_reg_n_0_[2] ),
        .I3(\wait_aftre_count_reg_n_0_[1] ),
        .I4(\wait_aftre_count_reg_n_0_[0] ),
        .O(\wait_aftre_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_aftre_count[3]_i_1 
       (.I0(data_buf),
        .I1(A_buf),
        .O(\wait_aftre_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h02228000)) 
    \wait_aftre_count[3]_i_2 
       (.I0(data_buf),
        .I1(\wait_aftre_count_reg_n_0_[2] ),
        .I2(\wait_aftre_count_reg_n_0_[1] ),
        .I3(\wait_aftre_count_reg_n_0_[0] ),
        .I4(\wait_aftre_count_reg_n_0_[3] ),
        .O(\wait_aftre_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftre_count_reg[0] 
       (.C(sysclk),
        .CE(\wait_aftre_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftre_count[0]_i_1_n_0 ),
        .Q(\wait_aftre_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftre_count_reg[1] 
       (.C(sysclk),
        .CE(\wait_aftre_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftre_count[1]_i_1_n_0 ),
        .Q(\wait_aftre_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftre_count_reg[2] 
       (.C(sysclk),
        .CE(\wait_aftre_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftre_count[2]_i_1_n_0 ),
        .Q(\wait_aftre_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftre_count_reg[3] 
       (.C(sysclk),
        .CE(\wait_aftre_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftre_count[3]_i_2_n_0 ),
        .Q(\wait_aftre_count_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_aftwr_count[0]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[2] ),
        .I1(\wait_aftwr_count_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\wait_aftwr_count_reg_n_0_[0] ),
        .O(\wait_aftwr_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00707000)) 
    \wait_aftwr_count[1]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[2] ),
        .I1(\wait_aftwr_count_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\wait_aftwr_count_reg_n_0_[1] ),
        .I4(\wait_aftwr_count_reg_n_0_[0] ),
        .O(\wait_aftwr_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \wait_aftwr_count[2]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\wait_aftwr_count_reg_n_0_[2] ),
        .I3(\wait_aftwr_count_reg_n_0_[1] ),
        .I4(\wait_aftwr_count_reg_n_0_[0] ),
        .O(\wait_aftwr_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_aftwr_count[3]_i_1 
       (.I0(A_buf),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\wait_aftwr_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h02228000)) 
    \wait_aftwr_count[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(\wait_aftwr_count_reg_n_0_[2] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[0] ),
        .I4(\wait_aftwr_count_reg_n_0_[3] ),
        .O(\wait_aftwr_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[0] 
       (.C(sysclk),
        .CE(\wait_aftwr_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftwr_count[0]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[1] 
       (.C(sysclk),
        .CE(\wait_aftwr_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftwr_count[1]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[2] 
       (.C(sysclk),
        .CE(\wait_aftwr_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftwr_count[2]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[3] 
       (.C(sysclk),
        .CE(\wait_aftwr_count[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_aftwr_count[3]_i_2_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00DC)) 
    \wait_count[0]_i_1 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(wait_count[0]),
        .O(\wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00DCDC00)) 
    \wait_count[1]_i_1 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(wait_count[1]),
        .I4(wait_count[0]),
        .O(\wait_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00DCDCDCDC000000)) 
    \wait_count[2]_i_1 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(wait_count[0]),
        .I4(wait_count[1]),
        .I5(wait_count[2]),
        .O(\wait_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDC00DCDC00DC0000)) 
    \wait_count[3]_i_1 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\wait_count[5]_i_2_n_0 ),
        .I4(wait_count[2]),
        .I5(wait_count[3]),
        .O(\wait_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \wait_count[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(wait_count[3]),
        .I2(wait_count[2]),
        .I3(wait_count[1]),
        .I4(wait_count[0]),
        .I5(wait_count[4]),
        .O(\wait_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \wait_count[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\wait_count[5]_i_2_n_0 ),
        .I2(wait_count[2]),
        .I3(wait_count[3]),
        .I4(wait_count[4]),
        .I5(wait_count[5]),
        .O(\wait_count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \wait_count[5]_i_2 
       (.I0(wait_count[0]),
        .I1(wait_count[1]),
        .O(\wait_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \wait_count[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\wait_count[7]_i_3_n_0 ),
        .I2(wait_count[6]),
        .O(\wait_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \wait_count[7]_i_1 
       (.I0(\FSM_onehot_state[10]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(write_active_0),
        .I3(A_buf),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\wait_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \wait_count[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\wait_count[7]_i_3_n_0 ),
        .I2(wait_count[6]),
        .I3(wait_count[7]),
        .O(\wait_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wait_count[7]_i_3 
       (.I0(wait_count[5]),
        .I1(wait_count[4]),
        .I2(wait_count[3]),
        .I3(wait_count[2]),
        .I4(wait_count[1]),
        .I5(wait_count[0]),
        .O(\wait_count[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[0] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(wait_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[1] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[1]_i_1_n_0 ),
        .Q(wait_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[2] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[2]_i_1_n_0 ),
        .Q(wait_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[3] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[3]_i_1_n_0 ),
        .Q(wait_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[4] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[4]_i_1_n_0 ),
        .Q(wait_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[5] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[5]_i_1_n_0 ),
        .Q(wait_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[6] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[6]_i_1_n_0 ),
        .Q(wait_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[7] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\wait_count[7]_i_2_n_0 ),
        .Q(wait_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    write_active_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(A_buf),
        .I2(write_active_0),
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

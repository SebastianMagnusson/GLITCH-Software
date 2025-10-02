// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 29 20:01:17 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Read_8SRAM_100MHZ_0_0/PCB_All_SRAM_Read_8SRAM_100MHZ_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_Read_8SRAM_100MHZ_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_Read_8SRAM_100MHZ_0_0,Read_8SRAM_100MHZ,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Read_8SRAM_100MHZ,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_Read_8SRAM_100MHZ_0_0
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
  wire [21:0]A;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [13:12]\^DQ_o ;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire addresses_searched;
  wire [2:0]decoder;
  wire led0;
  wire led2;
  wire [46:0]\^o_BF_data ;
  wire o_BF_drive;
  wire read_complete;
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
  assign led1 = \<const0> ;
  assign o_BF_data[46:9] = \^o_BF_data [46:9];
  assign o_BF_data[8] = \<const0> ;
  assign o_BF_data[7:0] = \^o_BF_data [7:0];
  GND GND
       (.G(\<const0> ));
  PCB_All_SRAM_Read_8SRAM_100MHZ_0_0_Read_8SRAM_100MHZ U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .DQ_o(\^DQ_o ),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .addresses_searched(addresses_searched),
        .decoder(decoder),
        .led0(led0),
        .led2(led2),
        .o_BF_data({\^o_BF_data [46:9],\^o_BF_data [7:0]}),
        .o_BF_drive(o_BF_drive),
        .read_complete(read_complete),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
endmodule

(* ORIG_REF_NAME = "Read_8SRAM_100MHZ" *) 
module PCB_All_SRAM_Read_8SRAM_100MHZ_0_0_Read_8SRAM_100MHZ
   (A,
    CE_n,
    DQ_o,
    decoder,
    o_BF_data,
    DQ_t,
    read_complete,
    o_BF_drive,
    addresses_searched,
    led2,
    WE_n,
    led0,
    sysclk,
    DQ_i,
    write_complete,
    reset_n);
  output [21:0]A;
  output CE_n;
  output [1:0]DQ_o;
  output [2:0]decoder;
  output [45:0]o_BF_data;
  output [0:0]DQ_t;
  output read_complete;
  output o_BF_drive;
  output addresses_searched;
  output led2;
  output WE_n;
  output led0;
  input sysclk;
  input [15:0]DQ_i;
  input write_complete;
  input reset_n;

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
  wire \A_buf_reg_n_0_[16] ;
  wire \A_buf_reg_n_0_[17] ;
  wire \A_buf_reg_n_0_[18] ;
  wire \A_buf_reg_n_0_[19] ;
  wire \A_buf_reg_n_0_[1] ;
  wire \A_buf_reg_n_0_[20] ;
  wire \A_buf_reg_n_0_[21] ;
  wire \A_buf_reg_n_0_[2] ;
  wire \A_buf_reg_n_0_[3] ;
  wire \A_buf_reg_n_0_[4] ;
  wire \A_buf_reg_n_0_[5] ;
  wire \A_buf_reg_n_0_[6] ;
  wire \A_buf_reg_n_0_[7] ;
  wire \A_buf_reg_n_0_[8] ;
  wire \A_buf_reg_n_0_[9] ;
  wire \BF_data_buf[3]_i_1_n_0 ;
  wire \BF_data_buf[3]_i_2_n_0 ;
  wire \BF_data_buf[3]_i_3_n_0 ;
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
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_13_n_0 ;
  wire \FSM_sequential_state[3]_i_14_n_0 ;
  wire \FSM_sequential_state[3]_i_15_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire [2:0]SRAM;
  wire SRAM_cnt;
  wire \SRAM_cnt[0]_i_1_n_0 ;
  wire \SRAM_cnt[1]_i_1_n_0 ;
  wire \SRAM_cnt[2]_i_1_n_0 ;
  wire \SRAM_cnt[3]_i_2_n_0 ;
  wire \SRAM_cnt_reg_n_0_[0] ;
  wire \SRAM_cnt_reg_n_0_[1] ;
  wire \SRAM_cnt_reg_n_0_[2] ;
  wire \SRAM_cnt_reg_n_0_[3] ;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire [21:0]addr_cnt;
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
  wire addresses_searched;
  wire addresses_searched_i_1_n_0;
  wire bitflip_flag_i_1_n_0;
  wire bitflip_flag_i_2_n_0;
  wire bitflip_flag_i_3_n_0;
  wire bitflip_flag_reg_n_0;
  wire [15:0]data_buf;
  wire data_buf0;
  wire [15:14]data_exp1_in;
  wire \data_exp[15]_i_1_n_0 ;
  wire [15:0]data_prev;
  wire data_prev_0;
  wire data_rewritten_flag_i_1_n_0;
  wire data_rewritten_flag_reg_n_0;
  wire [2:0]decoder;
  wire \decoder[0]_i_1_n_0 ;
  wire \decoder[1]_i_1_n_0 ;
  wire \decoder[2]_i_1_n_0 ;
  wire \decoder_cnt[0]_i_1_n_0 ;
  wire \decoder_cnt[1]_i_1_n_0 ;
  wire \decoder_cnt[2]_i_1_n_0 ;
  wire \decoder_cnt_reg_n_0_[0] ;
  wire \decoder_cnt_reg_n_0_[1] ;
  wire \decoder_cnt_reg_n_0_[2] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [21:1]in28;
  wire led0;
  wire led0_i_1_n_0;
  wire led2;
  wire led2_i_10_n_0;
  wire led2_i_1_n_0;
  wire led2_i_3_n_0;
  wire led2_i_4_n_0;
  wire led2_i_5_n_0;
  wire led2_i_6_n_0;
  wire led2_i_7_n_0;
  wire led2_i_8_n_0;
  wire led2_i_9_n_0;
  wire [3:0]loop_cnt;
  wire \loop_cnt[3]_i_1_n_0 ;
  wire \loop_cnt[3]_i_3_n_0 ;
  wire \loop_cnt_reg_n_0_[0] ;
  wire \loop_cnt_reg_n_0_[1] ;
  wire \loop_cnt_reg_n_0_[2] ;
  wire \loop_cnt_reg_n_0_[3] ;
  wire next_cnt;
  wire \next_cnt[0]_i_1_n_0 ;
  wire \next_cnt[1]_i_1_n_0 ;
  wire \next_cnt[2]_i_1_n_0 ;
  wire \next_cnt[3]_i_2_n_0 ;
  wire \next_cnt_reg_n_0_[0] ;
  wire \next_cnt_reg_n_0_[1] ;
  wire \next_cnt_reg_n_0_[2] ;
  wire \next_cnt_reg_n_0_[3] ;
  wire [45:0]o_BF_data;
  wire o_BF_drive;
  wire o_BF_drive_i_1_n_0;
  wire osc_cnt0;
  wire \osc_cnt0_inferred__0/i__carry__0_n_2 ;
  wire \osc_cnt0_inferred__0/i__carry__0_n_3 ;
  wire \osc_cnt0_inferred__0/i__carry_n_0 ;
  wire \osc_cnt0_inferred__0/i__carry_n_1 ;
  wire \osc_cnt0_inferred__0/i__carry_n_2 ;
  wire \osc_cnt0_inferred__0/i__carry_n_3 ;
  wire \osc_cnt[0]_i_1_n_0 ;
  wire \osc_cnt[1]_i_1_n_0 ;
  wire \osc_cnt[2]_i_1_n_0 ;
  wire \osc_cnt[3]_i_2_n_0 ;
  wire \osc_cnt[3]_i_3_n_0 ;
  wire \osc_cnt[3]_i_4_n_0 ;
  wire \osc_cnt_reg_n_0_[0] ;
  wire \osc_cnt_reg_n_0_[1] ;
  wire \osc_cnt_reg_n_0_[2] ;
  wire \osc_cnt_reg_n_0_[3] ;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire read_complete;
  wire read_complete_i_1_n_0;
  wire read_complete_i_2_n_0;
  wire reset_n;
  wire [3:0]state;
  wire state1;
  wire [3:0]state__0;
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
  wire \wait_count[7]_i_1_n_0 ;
  wire \wait_count[7]_i_3_n_0 ;
  wire \wait_count[7]_i_4_n_0 ;
  wire \wait_count[7]_i_5_n_0 ;
  wire \wait_count[7]_i_6_n_0 ;
  wire \wait_count[7]_i_7_n_0 ;
  wire \wait_count[7]_i_8_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire \wait_count_reg_n_0_[1] ;
  wire \wait_count_reg_n_0_[2] ;
  wire \wait_count_reg_n_0_[3] ;
  wire \wait_count_reg_n_0_[4] ;
  wire \wait_count_reg_n_0_[5] ;
  wire \wait_count_reg_n_0_[6] ;
  wire \wait_count_reg_n_0_[7] ;
  wire write_active;
  wire write_active_1;
  wire write_active_i_1_n_0;
  wire write_complete;
  wire [3:0]\NLW_osc_cnt0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_osc_cnt0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_osc_cnt0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:1]\NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h1001)) 
    \A[21]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\A[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \A_buf[21]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .O(A_buf));
  FDCE \A_buf_reg[0] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[0] ),
        .Q(\A_buf_reg_n_0_[0] ));
  FDCE \A_buf_reg[10] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[10] ),
        .Q(\A_buf_reg_n_0_[10] ));
  FDCE \A_buf_reg[11] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[11] ),
        .Q(\A_buf_reg_n_0_[11] ));
  FDCE \A_buf_reg[12] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[12] ),
        .Q(\A_buf_reg_n_0_[12] ));
  FDCE \A_buf_reg[13] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[13] ),
        .Q(\A_buf_reg_n_0_[13] ));
  FDCE \A_buf_reg[14] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[14] ),
        .Q(\A_buf_reg_n_0_[14] ));
  FDCE \A_buf_reg[15] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[15] ),
        .Q(\A_buf_reg_n_0_[15] ));
  FDCE \A_buf_reg[16] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[16] ),
        .Q(\A_buf_reg_n_0_[16] ));
  FDCE \A_buf_reg[17] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[17] ),
        .Q(\A_buf_reg_n_0_[17] ));
  FDCE \A_buf_reg[18] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[18] ),
        .Q(\A_buf_reg_n_0_[18] ));
  FDCE \A_buf_reg[19] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[19] ),
        .Q(\A_buf_reg_n_0_[19] ));
  FDCE \A_buf_reg[1] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[1] ),
        .Q(\A_buf_reg_n_0_[1] ));
  FDCE \A_buf_reg[20] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[20] ),
        .Q(\A_buf_reg_n_0_[20] ));
  FDCE \A_buf_reg[21] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[21] ),
        .Q(\A_buf_reg_n_0_[21] ));
  FDCE \A_buf_reg[2] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[2] ),
        .Q(\A_buf_reg_n_0_[2] ));
  FDCE \A_buf_reg[3] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[3] ),
        .Q(\A_buf_reg_n_0_[3] ));
  FDCE \A_buf_reg[4] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[4] ),
        .Q(\A_buf_reg_n_0_[4] ));
  FDCE \A_buf_reg[5] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[5] ),
        .Q(\A_buf_reg_n_0_[5] ));
  FDCE \A_buf_reg[6] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[6] ),
        .Q(\A_buf_reg_n_0_[6] ));
  FDCE \A_buf_reg[7] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[7] ),
        .Q(\A_buf_reg_n_0_[7] ));
  FDCE \A_buf_reg[8] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[8] ),
        .Q(\A_buf_reg_n_0_[8] ));
  FDCE \A_buf_reg[9] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[9] ),
        .Q(\A_buf_reg_n_0_[9] ));
  FDCE \A_reg[0] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[0] ),
        .Q(A[0]));
  FDCE \A_reg[10] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[10] ),
        .Q(A[10]));
  FDCE \A_reg[11] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[11] ),
        .Q(A[11]));
  FDCE \A_reg[12] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[12] ),
        .Q(A[12]));
  FDCE \A_reg[13] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[13] ),
        .Q(A[13]));
  FDCE \A_reg[14] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[14] ),
        .Q(A[14]));
  FDCE \A_reg[15] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[15] ),
        .Q(A[15]));
  FDCE \A_reg[16] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[16] ),
        .Q(A[16]));
  FDCE \A_reg[17] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[17] ),
        .Q(A[17]));
  FDCE \A_reg[18] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[18] ),
        .Q(A[18]));
  FDCE \A_reg[19] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[19] ),
        .Q(A[19]));
  FDCE \A_reg[1] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[1] ),
        .Q(A[1]));
  FDCE \A_reg[20] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[20] ),
        .Q(A[20]));
  FDCE \A_reg[21] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[21] ),
        .Q(A[21]));
  FDCE \A_reg[2] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[2] ),
        .Q(A[2]));
  FDCE \A_reg[3] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[3] ),
        .Q(A[3]));
  FDCE \A_reg[4] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[4] ),
        .Q(A[4]));
  FDCE \A_reg[5] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[5] ),
        .Q(A[5]));
  FDCE \A_reg[6] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[6] ),
        .Q(A[6]));
  FDCE \A_reg[7] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[7] ),
        .Q(A[7]));
  FDCE \A_reg[8] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[8] ),
        .Q(A[8]));
  FDCE \A_reg[9] 
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[9] ),
        .Q(A[9]));
  LUT3 #(
    .INIT(8'h8A)) 
    \BF_data_buf[3]_i_1 
       (.I0(\BF_data_buf[3]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .O(\BF_data_buf[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \BF_data_buf[3]_i_2 
       (.I0(reset_n),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\BF_data_buf[3]_i_3_n_0 ),
        .O(\BF_data_buf[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \BF_data_buf[3]_i_3 
       (.I0(\loop_cnt_reg_n_0_[0] ),
        .I1(\loop_cnt_reg_n_0_[1] ),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[3] ),
        .O(\BF_data_buf[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888800080)) 
    \BF_data_buf[46]_i_1 
       (.I0(\BF_data_buf[46]_i_3_n_0 ),
        .I1(\BF_data_buf[46]_i_4_n_0 ),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(data_buf[2]),
        .I4(\BF_data_buf[46]_i_6_n_0 ),
        .I5(\BF_data_buf[46]_i_7_n_0 ),
        .O(\BF_data_buf[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \BF_data_buf[46]_i_10 
       (.I0(data_buf[10]),
        .I1(data_buf[8]),
        .I2(data_buf[14]),
        .I3(data_buf[12]),
        .O(\BF_data_buf[46]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \BF_data_buf[46]_i_11 
       (.I0(data_buf[11]),
        .I1(data_buf[13]),
        .I2(data_buf[7]),
        .I3(data_buf[9]),
        .I4(data_buf[3]),
        .I5(data_buf[1]),
        .O(\BF_data_buf[46]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \BF_data_buf[46]_i_12 
       (.I0(data_buf[9]),
        .I1(data_buf[11]),
        .I2(data_buf[3]),
        .I3(data_buf[7]),
        .I4(data_buf[1]),
        .I5(\BF_data_buf[46]_i_13_n_0 ),
        .O(\BF_data_buf[46]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \BF_data_buf[46]_i_13 
       (.I0(data_buf[13]),
        .I1(data_buf[15]),
        .O(\BF_data_buf[46]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEFEA000000000000)) 
    \BF_data_buf[46]_i_2 
       (.I0(\BF_data_buf[46]_i_7_n_0 ),
        .I1(\BF_data_buf[46]_i_6_n_0 ),
        .I2(data_buf[2]),
        .I3(\BF_data_buf[46]_i_5_n_0 ),
        .I4(reset_n),
        .I5(\BF_data_buf[46]_i_8_n_0 ),
        .O(\BF_data_buf[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \BF_data_buf[46]_i_3 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\BF_data_buf[46]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \BF_data_buf[46]_i_4 
       (.I0(bitflip_flag_reg_n_0),
        .I1(data_prev_0),
        .I2(data_rewritten_flag_reg_n_0),
        .I3(reset_n),
        .O(\BF_data_buf[46]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \BF_data_buf[46]_i_5 
       (.I0(data_buf[8]),
        .I1(data_buf[10]),
        .I2(data_buf[4]),
        .I3(data_buf[6]),
        .I4(data_buf[0]),
        .I5(\BF_data_buf[46]_i_9_n_0 ),
        .O(\BF_data_buf[46]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \BF_data_buf[46]_i_6 
       (.I0(data_buf[5]),
        .I1(data_buf[6]),
        .I2(data_buf[0]),
        .I3(data_buf[4]),
        .I4(\BF_data_buf[46]_i_10_n_0 ),
        .O(\BF_data_buf[46]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hACFC)) 
    \BF_data_buf[46]_i_7 
       (.I0(\BF_data_buf[46]_i_11_n_0 ),
        .I1(\BF_data_buf[46]_i_12_n_0 ),
        .I2(data_buf[5]),
        .I3(data_buf[15]),
        .O(\BF_data_buf[46]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \BF_data_buf[46]_i_8 
       (.I0(data_rewritten_flag_reg_n_0),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(bitflip_flag_reg_n_0),
        .O(\BF_data_buf[46]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \BF_data_buf[46]_i_9 
       (.I0(data_buf[12]),
        .I1(data_buf[14]),
        .O(\BF_data_buf[46]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \BF_data_buf[4]_i_1 
       (.I0(\BF_data_buf[4]_i_2_n_0 ),
        .I1(\BF_data_buf[3]_i_2_n_0 ),
        .I2(o_BF_data[4]),
        .O(\BF_data_buf[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F000F000E00)) 
    \BF_data_buf[4]_i_2 
       (.I0(\osc_cnt_reg_n_0_[1] ),
        .I1(\osc_cnt_reg_n_0_[0] ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\osc_cnt_reg_n_0_[3] ),
        .I5(\osc_cnt_reg_n_0_[2] ),
        .O(\BF_data_buf[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[0] 
       (.C(sysclk),
        .CE(\BF_data_buf[3]_i_2_n_0 ),
        .D(\osc_cnt_reg_n_0_[0] ),
        .Q(o_BF_data[0]),
        .R(\BF_data_buf[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[10] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[1]),
        .Q(o_BF_data[9]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[11] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[2]),
        .Q(o_BF_data[10]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[12] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[3]),
        .Q(o_BF_data[11]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[13] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[4]),
        .Q(o_BF_data[12]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[14] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[5]),
        .Q(o_BF_data[13]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[15] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[6]),
        .Q(o_BF_data[14]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[16] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[7]),
        .Q(o_BF_data[15]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[17] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[8]),
        .Q(o_BF_data[16]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[18] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[9]),
        .Q(o_BF_data[17]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[19] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[10]),
        .Q(o_BF_data[18]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[1] 
       (.C(sysclk),
        .CE(\BF_data_buf[3]_i_2_n_0 ),
        .D(\osc_cnt_reg_n_0_[1] ),
        .Q(o_BF_data[1]),
        .R(\BF_data_buf[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[20] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[11]),
        .Q(o_BF_data[19]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[21] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[12]),
        .Q(o_BF_data[20]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[22] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[13]),
        .Q(o_BF_data[21]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[23] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[14]),
        .Q(o_BF_data[22]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[24] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[15]),
        .Q(o_BF_data[23]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[25] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[0] ),
        .Q(o_BF_data[24]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[26] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[1] ),
        .Q(o_BF_data[25]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[27] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[2] ),
        .Q(o_BF_data[26]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[28] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[3] ),
        .Q(o_BF_data[27]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[29] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[4] ),
        .Q(o_BF_data[28]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[2] 
       (.C(sysclk),
        .CE(\BF_data_buf[3]_i_2_n_0 ),
        .D(\osc_cnt_reg_n_0_[2] ),
        .Q(o_BF_data[2]),
        .R(\BF_data_buf[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[30] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[5] ),
        .Q(o_BF_data[29]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[31] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[6] ),
        .Q(o_BF_data[30]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[32] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[7] ),
        .Q(o_BF_data[31]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[33] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[8] ),
        .Q(o_BF_data[32]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[34] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[9] ),
        .Q(o_BF_data[33]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[35] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[10] ),
        .Q(o_BF_data[34]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[36] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[11] ),
        .Q(o_BF_data[35]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[37] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[12] ),
        .Q(o_BF_data[36]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[38] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[13] ),
        .Q(o_BF_data[37]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[39] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[14] ),
        .Q(o_BF_data[38]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[3] 
       (.C(sysclk),
        .CE(\BF_data_buf[3]_i_2_n_0 ),
        .D(\osc_cnt_reg_n_0_[3] ),
        .Q(o_BF_data[3]),
        .R(\BF_data_buf[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[40] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[15] ),
        .Q(o_BF_data[39]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[41] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[16] ),
        .Q(o_BF_data[40]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[42] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[17] ),
        .Q(o_BF_data[41]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[43] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[18] ),
        .Q(o_BF_data[42]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[44] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[19] ),
        .Q(o_BF_data[43]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[45] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[20] ),
        .Q(o_BF_data[44]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[46] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(\A_buf_reg_n_0_[21] ),
        .Q(o_BF_data[45]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\BF_data_buf[4]_i_1_n_0 ),
        .Q(o_BF_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[5] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(SRAM[0]),
        .Q(o_BF_data[5]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[6] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(SRAM[1]),
        .Q(o_BF_data[6]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[7] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(SRAM[2]),
        .Q(o_BF_data[7]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BF_data_buf_reg[9] 
       (.C(sysclk),
        .CE(\BF_data_buf[46]_i_2_n_0 ),
        .D(data_buf[0]),
        .Q(o_BF_data[8]),
        .R(\BF_data_buf[46]_i_1_n_0 ));
  FDCE CE_n_reg
       (.C(sysclk),
        .CE(\A[21]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(1'b1),
        .Q(CE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  LUT5 #(
    .INIT(32'hFFFFFFF2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(data_prev_0),
        .I1(data_rewritten_flag_reg_n_0),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'h04000400040F0400)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_5_n_0 ),
        .I1(\wait_aftre_count_reg_n_0_[3] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(write_complete),
        .I5(state[3]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA200)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state[3]_i_9_n_0 ),
        .I3(state[3]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000FF0080)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\wait_aftre_count_reg_n_0_[2] ),
        .I1(\wait_aftre_count_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\wait_aftre_count_reg_n_0_[0] ),
        .I1(\wait_aftre_count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_7_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(write_active_1),
        .I5(\BF_data_buf[3]_i_3_n_0 ),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA003FF00)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEAAAEA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(data_prev_0),
        .I2(\BF_data_buf[46]_i_5_n_0 ),
        .I3(data_buf[2]),
        .I4(\BF_data_buf[46]_i_6_n_0 ),
        .I5(\BF_data_buf[46]_i_7_n_0 ),
        .O(state__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF88F888)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(write_active_1),
        .I1(\osc_cnt[3]_i_3_n_0 ),
        .I2(data_rewritten_flag_reg_n_0),
        .I3(data_prev_0),
        .I4(bitflip_flag_reg_n_0),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\BF_data_buf[3]_i_3_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FFEAEA)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(\wait_count_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[3]),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(\wait_aftwr_count_reg_n_0_[2] ),
        .I1(\wait_aftwr_count_reg_n_0_[0] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(\addr_cnt_reg_n_0_[18] ),
        .I1(\addr_cnt_reg_n_0_[19] ),
        .I2(\addr_cnt_reg_n_0_[16] ),
        .I3(\addr_cnt_reg_n_0_[17] ),
        .I4(\addr_cnt_reg_n_0_[21] ),
        .I5(\addr_cnt_reg_n_0_[20] ),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(\FSM_sequential_state[3]_i_15_n_0 ),
        .I1(\addr_cnt_reg_n_0_[2] ),
        .I2(\addr_cnt_reg_n_0_[3] ),
        .I3(state[3]),
        .I4(\addr_cnt_reg_n_0_[0] ),
        .I5(\addr_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[3]_i_13 
       (.I0(\addr_cnt_reg_n_0_[6] ),
        .I1(\addr_cnt_reg_n_0_[7] ),
        .I2(\addr_cnt_reg_n_0_[4] ),
        .I3(\addr_cnt_reg_n_0_[5] ),
        .I4(\addr_cnt_reg_n_0_[9] ),
        .I5(\addr_cnt_reg_n_0_[8] ),
        .O(\FSM_sequential_state[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[3]_i_14 
       (.I0(\addr_cnt_reg_n_0_[12] ),
        .I1(\addr_cnt_reg_n_0_[13] ),
        .I2(\addr_cnt_reg_n_0_[10] ),
        .I3(\addr_cnt_reg_n_0_[11] ),
        .I4(\addr_cnt_reg_n_0_[15] ),
        .I5(\addr_cnt_reg_n_0_[14] ),
        .O(\FSM_sequential_state[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[3]_i_15 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\FSM_sequential_state[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEFEEEE)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_5_n_0 ),
        .I1(led2_i_3_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(write_active_1),
        .I5(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\wait_count_reg_n_0_[2] ),
        .I1(\wait_count_reg_n_0_[1] ),
        .I2(state[0]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\wait_count_reg_n_0_[4] ),
        .I1(\wait_count_reg_n_0_[5] ),
        .I2(\wait_count_reg_n_0_[7] ),
        .I3(\wait_count_reg_n_0_[6] ),
        .I4(\wait_count_reg_n_0_[3] ),
        .I5(\FSM_sequential_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8800FC00)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(state[1]),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(state[3]),
        .I4(state[0]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state[2]),
        .I1(state[3]),
        .O(write_active_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\FSM_sequential_state[3]_i_11_n_0 ),
        .I1(\FSM_sequential_state[3]_i_12_n_0 ),
        .I2(\FSM_sequential_state[3]_i_13_n_0 ),
        .I3(\FSM_sequential_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\next_cnt_reg_n_0_[2] ),
        .I1(\next_cnt_reg_n_0_[0] ),
        .I2(\next_cnt_reg_n_0_[1] ),
        .I3(\next_cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[2]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "data_validation:0011,next_addr:1001,read_capture:0010,set_decoder:1011,done:1010,read:0001,read_start:0000,write_fix_finish:1000,write_fix_start:0110,write_fix:0111,oscillator:0101,send_to_fetcher:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(sysclk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(state__0[3]),
        .Q(state[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \SRAM_cnt[0]_i_1 
       (.I0(\SRAM_cnt_reg_n_0_[0] ),
        .I1(\SRAM_cnt_reg_n_0_[3] ),
        .O(\SRAM_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \SRAM_cnt[1]_i_1 
       (.I0(\SRAM_cnt_reg_n_0_[1] ),
        .I1(\SRAM_cnt_reg_n_0_[0] ),
        .I2(\SRAM_cnt_reg_n_0_[3] ),
        .O(\SRAM_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \SRAM_cnt[2]_i_1 
       (.I0(\SRAM_cnt_reg_n_0_[2] ),
        .I1(\SRAM_cnt_reg_n_0_[0] ),
        .I2(\SRAM_cnt_reg_n_0_[1] ),
        .I3(\SRAM_cnt_reg_n_0_[3] ),
        .O(\SRAM_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \SRAM_cnt[3]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .O(SRAM_cnt));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \SRAM_cnt[3]_i_2 
       (.I0(\SRAM_cnt_reg_n_0_[2] ),
        .I1(\SRAM_cnt_reg_n_0_[1] ),
        .I2(\SRAM_cnt_reg_n_0_[0] ),
        .I3(\SRAM_cnt_reg_n_0_[3] ),
        .O(\SRAM_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[0] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\SRAM_cnt[0]_i_1_n_0 ),
        .Q(\SRAM_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[1] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\SRAM_cnt[1]_i_1_n_0 ),
        .Q(\SRAM_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[2] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\SRAM_cnt[2]_i_1_n_0 ),
        .Q(\SRAM_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[3] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\SRAM_cnt[3]_i_2_n_0 ),
        .Q(\SRAM_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_reg[0] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder_cnt_reg_n_0_[0] ),
        .Q(SRAM[0]));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_reg[1] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder_cnt_reg_n_0_[1] ),
        .Q(SRAM[1]));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_reg[2] 
       (.C(sysclk),
        .CE(A_buf),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder_cnt_reg_n_0_[2] ),
        .Q(SRAM[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFDF0005)) 
    WE_n_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(read_complete_i_2_n_0),
        .Q(WE_n));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \addr_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(\addr_cnt_reg_n_0_[0] ),
        .O(addr_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[10]_i_1 
       (.I0(state[1]),
        .I1(in28[10]),
        .O(addr_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[11]_i_1 
       (.I0(state[1]),
        .I1(in28[11]),
        .O(addr_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[12]_i_1 
       (.I0(state[1]),
        .I1(in28[12]),
        .O(addr_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[13]_i_1 
       (.I0(state[1]),
        .I1(in28[13]),
        .O(addr_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[14]_i_1 
       (.I0(state[1]),
        .I1(in28[14]),
        .O(addr_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[15]_i_1 
       (.I0(state[1]),
        .I1(in28[15]),
        .O(addr_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[16]_i_1 
       (.I0(state[1]),
        .I1(in28[16]),
        .O(addr_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[17]_i_1 
       (.I0(state[1]),
        .I1(in28[17]),
        .O(addr_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[18]_i_1 
       (.I0(state[1]),
        .I1(in28[18]),
        .O(addr_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[19]_i_1 
       (.I0(state[1]),
        .I1(in28[19]),
        .O(addr_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(in28[1]),
        .O(addr_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[20]_i_1 
       (.I0(state[1]),
        .I1(in28[20]),
        .O(addr_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[21]_i_1 
       (.I0(state[1]),
        .I1(in28[21]),
        .O(addr_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(in28[2]),
        .O(addr_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[3]_i_1 
       (.I0(state[1]),
        .I1(in28[3]),
        .O(addr_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[4]_i_1 
       (.I0(state[1]),
        .I1(in28[4]),
        .O(addr_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[5]_i_1 
       (.I0(state[1]),
        .I1(in28[5]),
        .O(addr_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[6]_i_1 
       (.I0(state[1]),
        .I1(in28[6]),
        .O(addr_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[7]_i_1 
       (.I0(state[1]),
        .I1(in28[7]),
        .O(addr_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[8]_i_1 
       (.I0(state[1]),
        .I1(in28[8]),
        .O(addr_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \addr_cnt[9]_i_1 
       (.I0(state[1]),
        .I1(in28[9]),
        .O(addr_cnt[9]));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[0]),
        .Q(\addr_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[10]),
        .Q(\addr_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[11]),
        .Q(\addr_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[12]),
        .Q(\addr_cnt_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[13] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[13]),
        .Q(\addr_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[14]),
        .Q(\addr_cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[15]),
        .Q(\addr_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[16]),
        .Q(\addr_cnt_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[17] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[17]),
        .Q(\addr_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[18]),
        .Q(\addr_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[19]),
        .Q(\addr_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[1]),
        .Q(\addr_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[20]),
        .Q(\addr_cnt_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[21] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[21]),
        .Q(\addr_cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[2]),
        .Q(\addr_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[3]),
        .Q(\addr_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[4]),
        .Q(\addr_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[5]),
        .Q(\addr_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[6]),
        .Q(\addr_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[7]),
        .Q(\addr_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[8]),
        .Q(\addr_cnt_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(addr_cnt[9]),
        .Q(\addr_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFE1000)) 
    addresses_searched_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(addresses_searched),
        .O(addresses_searched_i_1_n_0));
  FDCE addresses_searched_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(addresses_searched_i_1_n_0),
        .Q(addresses_searched));
  LUT6 #(
    .INIT(64'h00BB00FFFF44FF40)) 
    bitflip_flag_i_1
       (.I0(data_rewritten_flag_reg_n_0),
        .I1(data_prev_0),
        .I2(\BF_data_buf[46]_i_7_n_0 ),
        .I3(bitflip_flag_i_2_n_0),
        .I4(bitflip_flag_i_3_n_0),
        .I5(bitflip_flag_reg_n_0),
        .O(bitflip_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0030002000000020)) 
    bitflip_flag_i_2
       (.I0(\BF_data_buf[46]_i_5_n_0 ),
        .I1(bitflip_flag_reg_n_0),
        .I2(data_prev_0),
        .I3(data_rewritten_flag_reg_n_0),
        .I4(data_buf[2]),
        .I5(\BF_data_buf[46]_i_6_n_0 ),
        .O(bitflip_flag_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    bitflip_flag_i_3
       (.I0(\loop_cnt_reg_n_0_[0] ),
        .I1(\loop_cnt_reg_n_0_[3] ),
        .I2(bitflip_flag_reg_n_0),
        .I3(\loop_cnt_reg_n_0_[2] ),
        .I4(\loop_cnt_reg_n_0_[1] ),
        .O(bitflip_flag_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    bitflip_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(bitflip_flag_i_1_n_0),
        .Q(bitflip_flag_reg_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    \data_buf[15]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(reset_n),
        .I3(state[0]),
        .I4(state[1]),
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
  LUT2 #(
    .INIT(4'h4)) 
    \data_exp[14]_i_1 
       (.I0(state[1]),
        .I1(\A_buf_reg_n_0_[0] ),
        .O(data_exp1_in[14]));
  LUT4 #(
    .INIT(16'h0440)) 
    \data_exp[15]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\data_exp[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data_exp[15]_i_2 
       (.I0(state[1]),
        .I1(\A_buf_reg_n_0_[0] ),
        .O(data_exp1_in[15]));
  FDCE \data_exp_reg[14] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(data_exp1_in[14]),
        .Q(DQ_o[0]));
  FDPE \data_exp_reg[15] 
       (.C(sysclk),
        .CE(\data_exp[15]_i_1_n_0 ),
        .D(data_exp1_in[15]),
        .PRE(read_complete_i_2_n_0),
        .Q(DQ_o[1]));
  LUT4 #(
    .INIT(16'h1000)) 
    \data_prev[15]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .O(data_prev_0));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[0] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[0]),
        .Q(data_prev[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[10] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[10]),
        .Q(data_prev[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[11] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[11]),
        .Q(data_prev[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[12] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[12]),
        .Q(data_prev[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[13] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[13]),
        .Q(data_prev[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[14] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[14]),
        .Q(data_prev[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[15] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[15]),
        .Q(data_prev[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[1] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[1]),
        .Q(data_prev[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[2] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[2]),
        .Q(data_prev[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[3] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[3]),
        .Q(data_prev[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[4] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[4]),
        .Q(data_prev[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[5] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[5]),
        .Q(data_prev[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[6] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[6]),
        .Q(data_prev[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[7] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[7]),
        .Q(data_prev[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[8] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[8]),
        .Q(data_prev[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_prev_reg[9] 
       (.C(sysclk),
        .CE(data_prev_0),
        .CLR(read_complete_i_2_n_0),
        .D(data_buf[9]),
        .Q(data_prev[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hA8AEAAAA)) 
    data_rewritten_flag_i_1
       (.I0(data_rewritten_flag_reg_n_0),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .O(data_rewritten_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_rewritten_flag_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(data_rewritten_flag_i_1_n_0),
        .Q(data_rewritten_flag_reg_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFE20000002)) 
    \decoder[0]_i_1 
       (.I0(\decoder_cnt_reg_n_0_[0] ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(decoder[0]),
        .O(\decoder[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFE20000002)) 
    \decoder[1]_i_1 
       (.I0(\decoder_cnt_reg_n_0_[1] ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(decoder[1]),
        .O(\decoder[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFE20000002)) 
    \decoder[2]_i_1 
       (.I0(\decoder_cnt_reg_n_0_[2] ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(decoder[2]),
        .O(\decoder[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \decoder_cnt[0]_i_1 
       (.I0(\SRAM_cnt_reg_n_0_[3] ),
        .I1(\decoder_cnt_reg_n_0_[0] ),
        .O(\decoder_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \decoder_cnt[1]_i_1 
       (.I0(\decoder_cnt_reg_n_0_[1] ),
        .I1(\decoder_cnt_reg_n_0_[0] ),
        .I2(\SRAM_cnt_reg_n_0_[3] ),
        .O(\decoder_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \decoder_cnt[2]_i_1 
       (.I0(\decoder_cnt_reg_n_0_[2] ),
        .I1(\decoder_cnt_reg_n_0_[1] ),
        .I2(\decoder_cnt_reg_n_0_[0] ),
        .I3(\SRAM_cnt_reg_n_0_[3] ),
        .O(\decoder_cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \decoder_cnt_reg[0] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder_cnt[0]_i_1_n_0 ),
        .Q(\decoder_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \decoder_cnt_reg[1] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder_cnt[1]_i_1_n_0 ),
        .Q(\decoder_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \decoder_cnt_reg[2] 
       (.C(sysclk),
        .CE(SRAM_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder_cnt[2]_i_1_n_0 ),
        .Q(\decoder_cnt_reg_n_0_[2] ));
  FDCE \decoder_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder[0]_i_1_n_0 ),
        .Q(decoder[0]));
  FDCE \decoder_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder[1]_i_1_n_0 ),
        .Q(decoder[1]));
  FDCE \decoder_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(\decoder[2]_i_1_n_0 ),
        .Q(decoder[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(data_prev[15]),
        .I1(data_buf[15]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(data_prev[14]),
        .I1(data_buf[14]),
        .I2(data_prev[13]),
        .I3(data_buf[13]),
        .I4(data_buf[12]),
        .I5(data_prev[12]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(data_prev[11]),
        .I1(data_buf[11]),
        .I2(data_prev[10]),
        .I3(data_buf[10]),
        .I4(data_buf[9]),
        .I5(data_prev[9]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(data_prev[8]),
        .I1(data_buf[8]),
        .I2(data_prev[7]),
        .I3(data_buf[7]),
        .I4(data_buf[6]),
        .I5(data_prev[6]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(data_prev[5]),
        .I1(data_buf[5]),
        .I2(data_prev[4]),
        .I3(data_buf[4]),
        .I4(data_buf[3]),
        .I5(data_prev[3]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(data_prev[2]),
        .I1(data_buf[2]),
        .I2(data_prev[1]),
        .I3(data_buf[1]),
        .I4(data_buf[0]),
        .I5(data_prev[0]),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    led0_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(led0),
        .O(led0_i_1_n_0));
  FDCE led0_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(led0_i_1_n_0),
        .Q(led0));
  LUT3 #(
    .INIT(8'hB8)) 
    led2_i_1
       (.I0(state1),
        .I1(led2_i_3_n_0),
        .I2(led2),
        .O(led2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led2_i_10
       (.I0(data_buf[4]),
        .I1(data_buf[6]),
        .O(led2_i_10_n_0));
  LUT5 #(
    .INIT(32'h111100F0)) 
    led2_i_2
       (.I0(\BF_data_buf[46]_i_6_n_0 ),
        .I1(\BF_data_buf[46]_i_12_n_0 ),
        .I2(led2_i_4_n_0),
        .I3(\BF_data_buf[46]_i_5_n_0 ),
        .I4(data_buf[2]),
        .O(state1));
  LUT6 #(
    .INIT(64'h20F0200020002000)) 
    led2_i_3
       (.I0(led2_i_5_n_0),
        .I1(\BF_data_buf[46]_i_12_n_0 ),
        .I2(\BF_data_buf[46]_i_8_n_0 ),
        .I3(data_buf[2]),
        .I4(led2_i_6_n_0),
        .I5(led2_i_4_n_0),
        .O(led2_i_3_n_0));
  LUT6 #(
    .INIT(64'hA00000000000000C)) 
    led2_i_4
       (.I0(led2_i_7_n_0),
        .I1(led2_i_8_n_0),
        .I2(data_buf[15]),
        .I3(data_buf[13]),
        .I4(data_buf[11]),
        .I5(data_buf[9]),
        .O(led2_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    led2_i_5
       (.I0(data_buf[10]),
        .I1(data_buf[12]),
        .I2(data_buf[14]),
        .I3(data_buf[5]),
        .I4(led2_i_9_n_0),
        .O(led2_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    led2_i_6
       (.I0(data_buf[8]),
        .I1(data_buf[10]),
        .I2(data_buf[12]),
        .I3(data_buf[14]),
        .I4(data_buf[0]),
        .I5(led2_i_10_n_0),
        .O(led2_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    led2_i_7
       (.I0(data_buf[7]),
        .I1(data_buf[5]),
        .I2(data_buf[3]),
        .I3(data_buf[1]),
        .O(led2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    led2_i_8
       (.I0(data_buf[3]),
        .I1(data_buf[1]),
        .I2(data_buf[7]),
        .I3(data_buf[5]),
        .O(led2_i_8_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    led2_i_9
       (.I0(data_buf[8]),
        .I1(data_buf[6]),
        .I2(data_buf[4]),
        .I3(data_buf[0]),
        .O(led2_i_9_n_0));
  FDCE led2_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(read_complete_i_2_n_0),
        .D(led2_i_1_n_0),
        .Q(led2));
  LUT3 #(
    .INIT(8'h04)) 
    \loop_cnt[0]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \loop_cnt[1]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[1] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .O(loop_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \loop_cnt[2]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(\loop_cnt_reg_n_0_[2] ),
        .I3(\loop_cnt_reg_n_0_[0] ),
        .I4(\loop_cnt_reg_n_0_[1] ),
        .O(loop_cnt[2]));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAEAAAEA)) 
    \loop_cnt[3]_i_1 
       (.I0(\loop_cnt[3]_i_3_n_0 ),
        .I1(\BF_data_buf[46]_i_5_n_0 ),
        .I2(\BF_data_buf[46]_i_8_n_0 ),
        .I3(data_buf[2]),
        .I4(\BF_data_buf[46]_i_6_n_0 ),
        .I5(\BF_data_buf[46]_i_7_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \loop_cnt[3]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\BF_data_buf[3]_i_3_n_0 ),
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
  LUT3 #(
    .INIT(8'h07)) 
    \next_cnt[0]_i_1 
       (.I0(\next_cnt_reg_n_0_[2] ),
        .I1(\next_cnt_reg_n_0_[3] ),
        .I2(\next_cnt_reg_n_0_[0] ),
        .O(\next_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \next_cnt[1]_i_1 
       (.I0(\next_cnt_reg_n_0_[3] ),
        .I1(\next_cnt_reg_n_0_[2] ),
        .I2(\next_cnt_reg_n_0_[1] ),
        .I3(\next_cnt_reg_n_0_[0] ),
        .O(\next_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1444)) 
    \next_cnt[2]_i_1 
       (.I0(\next_cnt_reg_n_0_[3] ),
        .I1(\next_cnt_reg_n_0_[2] ),
        .I2(\next_cnt_reg_n_0_[0] ),
        .I3(\next_cnt_reg_n_0_[1] ),
        .O(\next_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \next_cnt[3]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(next_cnt));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h4222)) 
    \next_cnt[3]_i_2 
       (.I0(\next_cnt_reg_n_0_[3] ),
        .I1(\next_cnt_reg_n_0_[2] ),
        .I2(\next_cnt_reg_n_0_[1] ),
        .I3(\next_cnt_reg_n_0_[0] ),
        .O(\next_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[0] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\next_cnt[0]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[1] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\next_cnt[1]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[2] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\next_cnt[2]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[3] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(read_complete_i_2_n_0),
        .D(\next_cnt[3]_i_2_n_0 ),
        .Q(\next_cnt_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFBE0002)) 
    o_BF_drive_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(o_BF_drive),
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
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \osc_cnt[0]_i_1 
       (.I0(\osc_cnt_reg_n_0_[0] ),
        .I1(state[2]),
        .O(\osc_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \osc_cnt[1]_i_1 
       (.I0(\osc_cnt_reg_n_0_[1] ),
        .I1(\osc_cnt_reg_n_0_[0] ),
        .I2(state[2]),
        .O(\osc_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \osc_cnt[2]_i_1 
       (.I0(\osc_cnt_reg_n_0_[2] ),
        .I1(\osc_cnt_reg_n_0_[0] ),
        .I2(\osc_cnt_reg_n_0_[1] ),
        .I3(state[2]),
        .O(\osc_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888800000000)) 
    \osc_cnt[3]_i_1 
       (.I0(write_active_1),
        .I1(\osc_cnt[3]_i_3_n_0 ),
        .I2(\osc_cnt[3]_i_4_n_0 ),
        .I3(bitflip_flag_reg_n_0),
        .I4(\osc_cnt0_inferred__0/i__carry__0_n_2 ),
        .I5(reset_n),
        .O(osc_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \osc_cnt[3]_i_2 
       (.I0(\osc_cnt_reg_n_0_[3] ),
        .I1(\osc_cnt_reg_n_0_[2] ),
        .I2(\osc_cnt_reg_n_0_[1] ),
        .I3(\osc_cnt_reg_n_0_[0] ),
        .I4(state[2]),
        .O(\osc_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \osc_cnt[3]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\osc_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \osc_cnt[3]_i_4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(data_rewritten_flag_reg_n_0),
        .O(\osc_cnt[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \osc_cnt_reg[0] 
       (.C(sysclk),
        .CE(osc_cnt0),
        .D(\osc_cnt[0]_i_1_n_0 ),
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
        .D(\osc_cnt[3]_i_2_n_0 ),
        .Q(\osc_cnt_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(\addr_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in28[4:1]),
        .S({\addr_cnt_reg_n_0_[4] ,\addr_cnt_reg_n_0_[3] ,\addr_cnt_reg_n_0_[2] ,\addr_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in28[8:5]),
        .S({\addr_cnt_reg_n_0_[8] ,\addr_cnt_reg_n_0_[7] ,\addr_cnt_reg_n_0_[6] ,\addr_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in28[12:9]),
        .S({\addr_cnt_reg_n_0_[12] ,\addr_cnt_reg_n_0_[11] ,\addr_cnt_reg_n_0_[10] ,\addr_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in28[16:13]),
        .S({\addr_cnt_reg_n_0_[16] ,\addr_cnt_reg_n_0_[15] ,\addr_cnt_reg_n_0_[14] ,\addr_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in28[20:17]),
        .S({\addr_cnt_reg_n_0_[20] ,\addr_cnt_reg_n_0_[19] ,\addr_cnt_reg_n_0_[18] ,\addr_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO(\NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED [3:1],in28[21]}),
        .S({1'b0,1'b0,1'b0,\addr_cnt_reg_n_0_[21] }));
  LUT6 #(
    .INIT(64'hFFFEFFFE02000000)) 
    read_complete_i_1
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\SRAM_cnt_reg_n_0_[3] ),
        .I5(read_complete),
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \wait_aftre_count[0]_i_1 
       (.I0(\wait_aftre_count_reg_n_0_[0] ),
        .I1(\wait_aftre_count_reg_n_0_[2] ),
        .I2(\wait_aftre_count_reg_n_0_[3] ),
        .I3(state[1]),
        .O(\wait_aftre_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h02200AA0)) 
    \wait_aftre_count[1]_i_1 
       (.I0(state[1]),
        .I1(\wait_aftre_count_reg_n_0_[3] ),
        .I2(\wait_aftre_count_reg_n_0_[1] ),
        .I3(\wait_aftre_count_reg_n_0_[0] ),
        .I4(\wait_aftre_count_reg_n_0_[2] ),
        .O(\wait_aftre_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \wait_aftre_count[2]_i_1 
       (.I0(state[1]),
        .I1(\wait_aftre_count_reg_n_0_[3] ),
        .I2(\wait_aftre_count_reg_n_0_[1] ),
        .I3(\wait_aftre_count_reg_n_0_[0] ),
        .I4(\wait_aftre_count_reg_n_0_[2] ),
        .O(\wait_aftre_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \wait_aftre_count[3]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\wait_aftre_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h20000888)) 
    \wait_aftre_count[3]_i_2 
       (.I0(state[1]),
        .I1(\wait_aftre_count_reg_n_0_[3] ),
        .I2(\wait_aftre_count_reg_n_0_[1] ),
        .I3(\wait_aftre_count_reg_n_0_[0] ),
        .I4(\wait_aftre_count_reg_n_0_[2] ),
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
    .INIT(16'h0444)) 
    \wait_aftwr_count[0]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[0] ),
        .I1(state[3]),
        .I2(\wait_aftwr_count_reg_n_0_[3] ),
        .I3(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\wait_aftwr_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h02200AA0)) 
    \wait_aftwr_count[1]_i_1 
       (.I0(state[3]),
        .I1(\wait_aftwr_count_reg_n_0_[3] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[0] ),
        .I4(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\wait_aftwr_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \wait_aftwr_count[2]_i_1 
       (.I0(state[3]),
        .I1(\wait_aftwr_count_reg_n_0_[3] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[0] ),
        .I4(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\wait_aftwr_count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \wait_aftwr_count[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\wait_aftwr_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h20000888)) 
    \wait_aftwr_count[3]_i_2 
       (.I0(state[3]),
        .I1(\wait_aftwr_count_reg_n_0_[3] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[0] ),
        .I4(\wait_aftwr_count_reg_n_0_[2] ),
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
  LUT5 #(
    .INIT(32'h01010F01)) 
    \wait_count[0]_i_1 
       (.I0(\wait_count[7]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .I2(\wait_count_reg_n_0_[0] ),
        .I3(state[0]),
        .I4(state[2]),
        .O(wait_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \wait_count[1]_i_1 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[1] ),
        .I2(\wait_count_reg_n_0_[0] ),
        .O(wait_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \wait_count[2]_i_1 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[2] ),
        .I2(\wait_count_reg_n_0_[0] ),
        .I3(\wait_count_reg_n_0_[1] ),
        .O(wait_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \wait_count[3]_i_1 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[3] ),
        .I2(\wait_count_reg_n_0_[0] ),
        .I3(\wait_count_reg_n_0_[2] ),
        .I4(\wait_count_reg_n_0_[1] ),
        .O(wait_count[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \wait_count[4]_i_1 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[4] ),
        .I2(\wait_count_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[2] ),
        .I4(\wait_count_reg_n_0_[0] ),
        .I5(\wait_count_reg_n_0_[3] ),
        .O(wait_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \wait_count[5]_i_1 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[5] ),
        .I2(\wait_count[7]_i_6_n_0 ),
        .I3(\wait_count_reg_n_0_[4] ),
        .O(wait_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \wait_count[6]_i_1 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[6] ),
        .I2(\wait_count_reg_n_0_[5] ),
        .I3(\wait_count_reg_n_0_[4] ),
        .I4(\wait_count[7]_i_6_n_0 ),
        .O(wait_count[6]));
  LUT6 #(
    .INIT(64'h0000F0F00000040F)) 
    \wait_count[7]_i_1 
       (.I0(\wait_count[7]_i_3_n_0 ),
        .I1(\wait_count[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .I5(state[2]),
        .O(\wait_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \wait_count[7]_i_2 
       (.I0(\wait_count[7]_i_5_n_0 ),
        .I1(\wait_count_reg_n_0_[7] ),
        .I2(\wait_count_reg_n_0_[4] ),
        .I3(\wait_count_reg_n_0_[5] ),
        .I4(\wait_count_reg_n_0_[6] ),
        .I5(\wait_count[7]_i_6_n_0 ),
        .O(wait_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_count[7]_i_3 
       (.I0(\wait_count_reg_n_0_[3] ),
        .I1(\wait_count_reg_n_0_[6] ),
        .I2(\wait_count_reg_n_0_[7] ),
        .I3(\wait_count_reg_n_0_[5] ),
        .I4(\wait_count_reg_n_0_[4] ),
        .O(\wait_count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \wait_count[7]_i_4 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(\wait_count_reg_n_0_[2] ),
        .O(\wait_count[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1F00FFFF1F001F00)) 
    \wait_count[7]_i_5 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(\wait_count_reg_n_0_[2] ),
        .I3(\wait_count[7]_i_7_n_0 ),
        .I4(\BF_data_buf[46]_i_3_n_0 ),
        .I5(state[0]),
        .O(\wait_count[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wait_count[7]_i_6 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(\wait_count_reg_n_0_[2] ),
        .I2(\wait_count_reg_n_0_[0] ),
        .I3(\wait_count_reg_n_0_[3] ),
        .O(\wait_count[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \wait_count[7]_i_7 
       (.I0(\wait_count_reg_n_0_[6] ),
        .I1(\wait_count_reg_n_0_[7] ),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\wait_count_reg_n_0_[3] ),
        .I5(\wait_count[7]_i_8_n_0 ),
        .O(\wait_count[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wait_count[7]_i_8 
       (.I0(\wait_count_reg_n_0_[4] ),
        .I1(\wait_count_reg_n_0_[5] ),
        .O(\wait_count[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[0] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[0]),
        .Q(\wait_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[1] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[1]),
        .Q(\wait_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[2] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[2]),
        .Q(\wait_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[3] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[3]),
        .Q(\wait_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[4] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[4]),
        .Q(\wait_count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[5] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[5]),
        .Q(\wait_count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[6] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[6]),
        .Q(\wait_count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[7] 
       (.C(sysclk),
        .CE(\wait_count[7]_i_1_n_0 ),
        .CLR(read_complete_i_2_n_0),
        .D(wait_count[7]),
        .Q(\wait_count_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFA0020)) 
    write_active_i_1
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
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

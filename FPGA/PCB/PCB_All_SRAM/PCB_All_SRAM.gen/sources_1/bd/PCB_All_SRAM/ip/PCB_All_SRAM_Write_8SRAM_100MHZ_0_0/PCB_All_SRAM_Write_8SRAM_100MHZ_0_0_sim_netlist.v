// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Oct  2 11:12:27 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Write_8SRAM_100MHZ_0_0/PCB_All_SRAM_Write_8SRAM_100MHZ_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_Write_8SRAM_100MHZ_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_Write_8SRAM_100MHZ_0_0,Write_8SRAM_100MHZ,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Write_8SRAM_100MHZ,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_Write_8SRAM_100MHZ_0_0
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

  wire [21:0]A;
  wire CE_n;
  wire [13:12]\^DQ_o ;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire [2:0]decoder;
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
  PCB_All_SRAM_Write_8SRAM_100MHZ_0_0_Write_8SRAM_100MHZ U0
       (.A(A),
        .CE_n(CE_n),
        .DQ_o(\^DQ_o ),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .decoder(decoder),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .write_complete(write_complete));
endmodule

(* ORIG_REF_NAME = "Write_8SRAM_100MHZ" *) 
module PCB_All_SRAM_Write_8SRAM_100MHZ_0_0_Write_8SRAM_100MHZ
   (A,
    CE_n,
    WE_n,
    DQ_o,
    decoder,
    DQ_t,
    write_complete,
    sysclk,
    reset_n);
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [1:0]DQ_o;
  output [2:0]decoder;
  output [0:0]DQ_t;
  output write_complete;
  input sysclk;
  input reset_n;

  wire [21:0]A;
  wire CE_n;
  wire [1:0]DQ_o;
  wire [0:0]DQ_t;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_5_n_0 ;
  wire \FSM_onehot_state[4]_i_6_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_3_n_0 ;
  wire \FSM_onehot_state[6]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [3:0]SRAM_cnt;
  wire SRAM_cnt_1;
  wire WE_n;
  wire WE_n_i_1_n_0;
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
  wire [2:0]decoder;
  wire \decoder[0]_i_1_n_0 ;
  wire \decoder[1]_i_1_n_0 ;
  wire \decoder[2]_i_1_n_0 ;
  wire [2:0]decoder_cnt;
  wire [21:1]in10;
  wire next_cnt;
  wire \next_cnt[0]_i_1_n_0 ;
  wire \next_cnt[1]_i_1_n_0 ;
  wire \next_cnt[2]_i_1_n_0 ;
  wire \next_cnt[3]_i_1_n_0 ;
  wire \next_cnt_reg_n_0_[0] ;
  wire \next_cnt_reg_n_0_[1] ;
  wire \next_cnt_reg_n_0_[2] ;
  wire \next_cnt_reg_n_0_[3] ;
  wire [3:0]p_0_in;
  wire [2:0]plusOp;
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
  wire reset_n;
  wire sysclk;
  wire \wait_aftwr_count[0]_i_1_n_0 ;
  wire \wait_aftwr_count[1]_i_1_n_0 ;
  wire \wait_aftwr_count[2]_i_1_n_0 ;
  wire \wait_aftwr_count[3]_i_1_n_0 ;
  wire \wait_aftwr_count_reg_n_0_[0] ;
  wire \wait_aftwr_count_reg_n_0_[1] ;
  wire \wait_aftwr_count_reg_n_0_[2] ;
  wire \wait_aftwr_count_reg_n_0_[3] ;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count[1]_i_1_n_0 ;
  wire \wait_count[2]_i_1_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire \wait_count_reg_n_0_[1] ;
  wire \wait_count_reg_n_0_[2] ;
  wire write_active;
  wire write_active_0;
  wire write_complete;
  wire write_complete_i_1_n_0;
  wire write_complete_i_2_n_0;
  wire \write_data[14]_i_1_n_0 ;
  wire \write_data[15]_i_1_n_0 ;
  wire \write_data[15]_i_2_n_0 ;
  wire \write_data[15]_i_3_n_0 ;
  wire [3:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__4_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \A_reg[0] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[0] ),
        .Q(A[0]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[10] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[10] ),
        .Q(A[10]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[11] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[11] ),
        .Q(A[11]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[12] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[12] ),
        .Q(A[12]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[13] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[13] ),
        .Q(A[13]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[14] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[14] ),
        .Q(A[14]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[15] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[15] ),
        .Q(A[15]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[16] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[16] ),
        .Q(A[16]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[17] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[17] ),
        .Q(A[17]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[18] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[18] ),
        .Q(A[18]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[19] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[19] ),
        .Q(A[19]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[1] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[1] ),
        .Q(A[1]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[20] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[20] ),
        .Q(A[20]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[21] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[21] ),
        .Q(A[21]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[2] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[2] ),
        .Q(A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[3] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[3] ),
        .Q(A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[4] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[4] ),
        .Q(A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[5] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[5] ),
        .Q(A[5]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[6] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[6] ),
        .Q(A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[7] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[7] ),
        .Q(A[7]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[8] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[8] ),
        .Q(A[8]));
  FDCE #(
    .INIT(1'b0)) 
    \A_reg[9] 
       (.C(sysclk),
        .CE(write_active_0),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt_reg_n_0_[9] ),
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
    .INIT(64'hFFFFFFFF88808080)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(next_cnt),
        .I1(\next_cnt_reg_n_0_[3] ),
        .I2(\next_cnt_reg_n_0_[2] ),
        .I3(\next_cnt_reg_n_0_[1] ),
        .I4(\next_cnt_reg_n_0_[0] ),
        .I5(\write_data[15]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDCCCCDFFFCCCC)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\wait_aftwr_count_reg_n_0_[0] ),
        .I3(\wait_aftwr_count_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[0] ),
        .I1(\wait_aftwr_count_reg_n_0_[1] ),
        .I2(\wait_aftwr_count_reg_n_0_[2] ),
        .I3(\wait_aftwr_count_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .I3(\FSM_onehot_state[4]_i_5_n_0 ),
        .I4(\FSM_onehot_state[4]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\addr_cnt_reg_n_0_[20] ),
        .I1(\addr_cnt_reg_n_0_[21] ),
        .I2(\addr_cnt_reg_n_0_[18] ),
        .I3(\addr_cnt_reg_n_0_[19] ),
        .I4(\addr_cnt_reg_n_0_[1] ),
        .I5(\addr_cnt_reg_n_0_[0] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\addr_cnt_reg_n_0_[11] ),
        .I1(\addr_cnt_reg_n_0_[10] ),
        .I2(\addr_cnt_reg_n_0_[13] ),
        .I3(\addr_cnt_reg_n_0_[12] ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(\addr_cnt_reg_n_0_[15] ),
        .I1(\addr_cnt_reg_n_0_[14] ),
        .I2(\addr_cnt_reg_n_0_[17] ),
        .I3(\addr_cnt_reg_n_0_[16] ),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_5 
       (.I0(\addr_cnt_reg_n_0_[7] ),
        .I1(\addr_cnt_reg_n_0_[6] ),
        .I2(\addr_cnt_reg_n_0_[9] ),
        .I3(\addr_cnt_reg_n_0_[8] ),
        .O(\FSM_onehot_state[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_6 
       (.I0(\addr_cnt_reg_n_0_[3] ),
        .I1(\addr_cnt_reg_n_0_[2] ),
        .I2(\addr_cnt_reg_n_0_[5] ),
        .I3(\addr_cnt_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDCCCCDFFFCCCC)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\next_cnt_reg_n_0_[3] ),
        .I1(SRAM_cnt_1),
        .I2(\next_cnt_reg_n_0_[0] ),
        .I3(\next_cnt_reg_n_0_[1] ),
        .I4(next_cnt),
        .I5(\next_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(write_active_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[6]_i_3_n_0 ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(SRAM_cnt[3]),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(next_cnt),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state[6]_i_4_n_0 ),
        .I4(\wait_count_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(\wait_count_reg_n_0_[0] ),
        .I1(\wait_count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(write_active_0));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(write_active_0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(next_cnt));
  (* FSM_ENCODED_STATES = "write:0000010,next_addr:0001000,write_finish:0000100,done:0010000,complete:1000000,write_start:0000001,set_decoder:0100000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\FSM_onehot_state[6]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \SRAM_cnt[0]_i_1 
       (.I0(SRAM_cnt[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \SRAM_cnt[1]_i_1 
       (.I0(SRAM_cnt[0]),
        .I1(SRAM_cnt[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \SRAM_cnt[2]_i_1 
       (.I0(SRAM_cnt[1]),
        .I1(SRAM_cnt[0]),
        .I2(SRAM_cnt[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRAM_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(SRAM_cnt[3]),
        .O(SRAM_cnt_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \SRAM_cnt[3]_i_2 
       (.I0(SRAM_cnt[2]),
        .I1(SRAM_cnt[0]),
        .I2(SRAM_cnt[1]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[0] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[0]),
        .Q(SRAM_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[1] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[1]),
        .Q(SRAM_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[2] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[2]),
        .Q(SRAM_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \SRAM_cnt_reg[3] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(p_0_in[3]),
        .Q(SRAM_cnt[3]));
  LUT2 #(
    .INIT(4'hE)) 
    WE_n_i_1
       (.I0(write_active_0),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(WE_n_i_1_n_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .PRE(write_complete_i_2_n_0),
        .Q(WE_n));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\addr_cnt_reg_n_0_[0] ),
        .O(\addr_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[10]),
        .O(\addr_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[11]),
        .O(\addr_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[12]),
        .O(\addr_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[13]),
        .O(\addr_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[14]),
        .O(\addr_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[15]),
        .O(\addr_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[16]),
        .O(\addr_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[17]),
        .O(\addr_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[18]),
        .O(\addr_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[19]),
        .O(\addr_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[1]),
        .O(\addr_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[20]),
        .O(\addr_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[21]),
        .O(\addr_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[2]),
        .O(\addr_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[3]),
        .O(\addr_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[4]),
        .O(\addr_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[5]),
        .O(\addr_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[6]),
        .O(\addr_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[7]),
        .O(\addr_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[8]),
        .O(\addr_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(in10[9]),
        .O(\addr_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[0] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[0]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[10] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[10]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[11] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[11]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[12] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[12]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[13] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[13]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[14] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[14]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[15] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[15]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[16] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[16]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[17] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[17]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[18] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[18]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[19] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[19]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[1] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[1]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[20] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[20]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[21] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[21]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[2] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[2]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[3] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[3]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[4] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[4]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[5] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[5]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[6] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[6]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[7] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[7]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[8] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[8]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \addr_cnt_reg[9] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\addr_cnt[9]_i_1_n_0 ),
        .Q(\addr_cnt_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \decoder[0]_i_1 
       (.I0(decoder_cnt[0]),
        .I1(write_active_0),
        .I2(next_cnt),
        .I3(decoder[0]),
        .O(\decoder[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \decoder[1]_i_1 
       (.I0(decoder_cnt[1]),
        .I1(write_active_0),
        .I2(next_cnt),
        .I3(decoder[1]),
        .O(\decoder[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \decoder[2]_i_1 
       (.I0(decoder_cnt[2]),
        .I1(write_active_0),
        .I2(next_cnt),
        .I3(decoder[2]),
        .O(\decoder[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \decoder_cnt[0]_i_1 
       (.I0(decoder_cnt[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \decoder_cnt[1]_i_1 
       (.I0(decoder_cnt[0]),
        .I1(decoder_cnt[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \decoder_cnt[2]_i_1 
       (.I0(decoder_cnt[0]),
        .I1(decoder_cnt[1]),
        .I2(decoder_cnt[2]),
        .O(plusOp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \decoder_cnt_reg[0] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(plusOp[0]),
        .Q(decoder_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \decoder_cnt_reg[1] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(plusOp[1]),
        .Q(decoder_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \decoder_cnt_reg[2] 
       (.C(sysclk),
        .CE(SRAM_cnt_1),
        .CLR(write_complete_i_2_n_0),
        .D(plusOp[2]),
        .Q(decoder_cnt[2]));
  FDCE \decoder_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(\decoder[0]_i_1_n_0 ),
        .Q(decoder[0]));
  FDCE \decoder_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(\decoder[1]_i_1_n_0 ),
        .Q(decoder[1]));
  FDCE \decoder_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(\decoder[2]_i_1_n_0 ),
        .Q(decoder[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \next_cnt[0]_i_1 
       (.I0(\next_cnt_reg_n_0_[3] ),
        .I1(\next_cnt_reg_n_0_[2] ),
        .I2(\next_cnt_reg_n_0_[0] ),
        .O(\next_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \next_cnt[1]_i_1 
       (.I0(\next_cnt_reg_n_0_[2] ),
        .I1(\next_cnt_reg_n_0_[3] ),
        .I2(\next_cnt_reg_n_0_[0] ),
        .I3(\next_cnt_reg_n_0_[1] ),
        .O(\next_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \next_cnt[2]_i_1 
       (.I0(\next_cnt_reg_n_0_[0] ),
        .I1(\next_cnt_reg_n_0_[1] ),
        .I2(\next_cnt_reg_n_0_[2] ),
        .I3(\next_cnt_reg_n_0_[3] ),
        .O(\next_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0780)) 
    \next_cnt[3]_i_1 
       (.I0(\next_cnt_reg_n_0_[0] ),
        .I1(\next_cnt_reg_n_0_[1] ),
        .I2(\next_cnt_reg_n_0_[2] ),
        .I3(\next_cnt_reg_n_0_[3] ),
        .O(\next_cnt[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[0] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\next_cnt[0]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[1] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\next_cnt[1]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[2] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\next_cnt[2]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_cnt_reg[3] 
       (.C(sysclk),
        .CE(next_cnt),
        .CLR(write_complete_i_2_n_0),
        .D(\next_cnt[3]_i_1_n_0 ),
        .Q(\next_cnt_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\addr_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[4:1]),
        .S({\addr_cnt_reg_n_0_[4] ,\addr_cnt_reg_n_0_[3] ,\addr_cnt_reg_n_0_[2] ,\addr_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:5]),
        .S({\addr_cnt_reg_n_0_[8] ,\addr_cnt_reg_n_0_[7] ,\addr_cnt_reg_n_0_[6] ,\addr_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[12:9]),
        .S({\addr_cnt_reg_n_0_[12] ,\addr_cnt_reg_n_0_[11] ,\addr_cnt_reg_n_0_[10] ,\addr_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:13]),
        .S({\addr_cnt_reg_n_0_[16] ,\addr_cnt_reg_n_0_[15] ,\addr_cnt_reg_n_0_[14] ,\addr_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in10[20:17]),
        .S({\addr_cnt_reg_n_0_[20] ,\addr_cnt_reg_n_0_[19] ,\addr_cnt_reg_n_0_[18] ,\addr_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO(NLW_plusOp_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3:1],in10[21]}),
        .S({1'b0,1'b0,1'b0,\addr_cnt_reg_n_0_[21] }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_aftwr_count[0]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\wait_aftwr_count_reg_n_0_[3] ),
        .I3(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\wait_aftwr_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h002A2A00)) 
    \wait_aftwr_count[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\wait_aftwr_count_reg_n_0_[2] ),
        .I2(\wait_aftwr_count_reg_n_0_[3] ),
        .I3(\wait_aftwr_count_reg_n_0_[1] ),
        .I4(\wait_aftwr_count_reg_n_0_[0] ),
        .O(\wait_aftwr_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \wait_aftwr_count[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\wait_aftwr_count_reg_n_0_[3] ),
        .I2(\wait_aftwr_count_reg_n_0_[1] ),
        .I3(\wait_aftwr_count_reg_n_0_[0] ),
        .I4(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\wait_aftwr_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08007000)) 
    \wait_aftwr_count[3]_i_1 
       (.I0(\wait_aftwr_count_reg_n_0_[0] ),
        .I1(\wait_aftwr_count_reg_n_0_[1] ),
        .I2(\wait_aftwr_count_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\wait_aftwr_count_reg_n_0_[2] ),
        .O(\wait_aftwr_count[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[0] 
       (.C(sysclk),
        .CE(WE_n_i_1_n_0),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_aftwr_count[0]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[1] 
       (.C(sysclk),
        .CE(WE_n_i_1_n_0),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_aftwr_count[1]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[2] 
       (.C(sysclk),
        .CE(WE_n_i_1_n_0),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_aftwr_count[2]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \wait_aftwr_count_reg[3] 
       (.C(sysclk),
        .CE(WE_n_i_1_n_0),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_aftwr_count[3]_i_1_n_0 ),
        .Q(\wait_aftwr_count_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000F7700)) 
    \wait_count[0]_i_1 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(\wait_count_reg_n_0_[2] ),
        .I2(write_active_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h110F4400)) 
    \wait_count[1]_i_1 
       (.I0(\wait_count_reg_n_0_[2] ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(write_active_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[1] ),
        .O(\wait_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h110F8800)) 
    \wait_count[2]_i_1 
       (.I0(\wait_count_reg_n_0_[0] ),
        .I1(\wait_count_reg_n_0_[1] ),
        .I2(write_active_0),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[2] ),
        .O(\wait_count[2]_i_1_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \wait_count_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(write_complete_i_2_n_0),
        .D(\wait_count[2]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[2] ));
  FDCE write_active_reg
       (.C(sysclk),
        .CE(WE_n_i_1_n_0),
        .CLR(write_complete_i_2_n_0),
        .D(write_active_0),
        .Q(write_active));
  LUT5 #(
    .INIT(32'hFAFFFAEA)) 
    write_complete_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(SRAM_cnt[3]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(write_active_0),
        .I4(write_complete),
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
  LUT2 #(
    .INIT(4'h8)) 
    \write_data[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(A[0]),
        .O(\write_data[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \write_data[15]_i_1 
       (.I0(\write_data[15]_i_3_n_0 ),
        .I1(SRAM_cnt[3]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\write_data[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \write_data[15]_i_2 
       (.I0(A[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\write_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \write_data[15]_i_3 
       (.I0(\FSM_onehot_state[4]_i_6_n_0 ),
        .I1(\FSM_onehot_state[4]_i_5_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\write_data[15]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \write_data_reg[14] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .CLR(write_complete_i_2_n_0),
        .D(\write_data[14]_i_1_n_0 ),
        .Q(DQ_o[0]));
  FDPE #(
    .INIT(1'b1)) 
    \write_data_reg[15] 
       (.C(sysclk),
        .CE(\write_data[15]_i_1_n_0 ),
        .D(\write_data[15]_i_2_n_0 ),
        .PRE(write_complete_i_2_n_0),
        .Q(DQ_o[1]));
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

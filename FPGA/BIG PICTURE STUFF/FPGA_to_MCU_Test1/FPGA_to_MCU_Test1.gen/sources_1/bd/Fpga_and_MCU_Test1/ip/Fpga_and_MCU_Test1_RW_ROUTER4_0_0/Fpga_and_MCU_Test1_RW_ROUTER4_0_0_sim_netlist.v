// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep 18 13:18:58 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/BIG PICTURE
//               STUFF/FPGA_to_MCU_Test1/FPGA_to_MCU_Test1.gen/sources_1/bd/Fpga_and_MCU_Test1/ip/Fpga_and_MCU_Test1_RW_ROUTER4_0_0/Fpga_and_MCU_Test1_RW_ROUTER4_0_0_sim_netlist.v}
// Design      : Fpga_and_MCU_Test1_RW_ROUTER4_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Fpga_and_MCU_Test1_RW_ROUTER4_0_0,RW_ROUTER4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RW_ROUTER4,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Fpga_and_MCU_Test1_RW_ROUTER4_0_0
   (sysclk,
    reset_n,
    led1,
    A,
    CE_n,
    WE_n,
    DQ_o,
    DQ_t,
    Toggle,
    A_write,
    CE_n_write,
    WE_n_write,
    DQ_o_write,
    DQ_t_write,
    A_read,
    CE_n_read,
    WE_n_read,
    DQ_t_read,
    DQ_o_read);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output led1;
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  input Toggle;
  input [21:0]A_write;
  input CE_n_write;
  input WE_n_write;
  input [15:0]DQ_o_write;
  input [15:0]DQ_t_write;
  input [21:0]A_read;
  input CE_n_read;
  input WE_n_read;
  input [15:0]DQ_t_read;
  input [15:0]DQ_o_read;

  wire [21:0]A;
  wire [21:0]A_read;
  wire [21:0]A_write;
  wire CE_n;
  wire CE_n_read;
  wire CE_n_write;
  wire [15:0]DQ_o;
  wire [15:0]DQ_o_read;
  wire [15:0]DQ_o_write;
  wire [15:0]DQ_t;
  wire [15:0]DQ_t_read;
  wire [15:0]DQ_t_write;
  wire Toggle;
  wire WE_n;
  wire WE_n_read;
  wire WE_n_write;
  wire led1;
  wire reset_n;
  wire sysclk;

  Fpga_and_MCU_Test1_RW_ROUTER4_0_0_RW_ROUTER4 U0
       (.A(A),
        .A_read(A_read),
        .A_write(A_write),
        .CE_n(CE_n),
        .CE_n_read(CE_n_read),
        .CE_n_write(CE_n_write),
        .DQ_o(DQ_o),
        .DQ_o_read(DQ_o_read),
        .DQ_o_write(DQ_o_write),
        .DQ_t(DQ_t),
        .DQ_t_read(DQ_t_read),
        .DQ_t_write(DQ_t_write),
        .Toggle(Toggle),
        .WE_n(WE_n),
        .WE_n_read(WE_n_read),
        .WE_n_write(WE_n_write),
        .led1(led1),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "RW_ROUTER4" *) 
module Fpga_and_MCU_Test1_RW_ROUTER4_0_0_RW_ROUTER4
   (led1,
    A,
    CE_n,
    WE_n,
    DQ_o,
    DQ_t,
    sysclk,
    reset_n,
    A_read,
    A_write,
    DQ_o_read,
    DQ_o_write,
    DQ_t_read,
    DQ_t_write,
    CE_n_read,
    CE_n_write,
    WE_n_read,
    WE_n_write,
    Toggle);
  output led1;
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  input sysclk;
  input reset_n;
  input [21:0]A_read;
  input [21:0]A_write;
  input [15:0]DQ_o_read;
  input [15:0]DQ_o_write;
  input [15:0]DQ_t_read;
  input [15:0]DQ_t_write;
  input CE_n_read;
  input CE_n_write;
  input WE_n_read;
  input WE_n_write;
  input Toggle;

  wire [21:0]A;
  wire [21:0]A_read;
  wire [21:0]A_write;
  wire CE_n;
  wire CE_n_i_1_n_0;
  wire CE_n_read;
  wire CE_n_write;
  wire [15:0]DQ_o;
  wire \DQ_o[0]_i_1_n_0 ;
  wire \DQ_o[10]_i_1_n_0 ;
  wire \DQ_o[11]_i_1_n_0 ;
  wire \DQ_o[12]_i_1_n_0 ;
  wire \DQ_o[13]_i_1_n_0 ;
  wire \DQ_o[14]_i_1_n_0 ;
  wire \DQ_o[15]_i_1_n_0 ;
  wire \DQ_o[1]_i_1_n_0 ;
  wire \DQ_o[2]_i_1_n_0 ;
  wire \DQ_o[3]_i_1_n_0 ;
  wire \DQ_o[4]_i_1_n_0 ;
  wire \DQ_o[5]_i_1_n_0 ;
  wire \DQ_o[6]_i_1_n_0 ;
  wire \DQ_o[7]_i_1_n_0 ;
  wire \DQ_o[8]_i_1_n_0 ;
  wire \DQ_o[9]_i_1_n_0 ;
  wire [15:0]DQ_o_read;
  wire [15:0]DQ_o_write;
  wire [15:0]DQ_t;
  wire \DQ_t[0]_i_1_n_0 ;
  wire \DQ_t[10]_i_1_n_0 ;
  wire \DQ_t[11]_i_1_n_0 ;
  wire \DQ_t[12]_i_1_n_0 ;
  wire \DQ_t[13]_i_1_n_0 ;
  wire \DQ_t[14]_i_1_n_0 ;
  wire \DQ_t[15]_i_1_n_0 ;
  wire \DQ_t[1]_i_1_n_0 ;
  wire \DQ_t[2]_i_1_n_0 ;
  wire \DQ_t[3]_i_1_n_0 ;
  wire \DQ_t[4]_i_1_n_0 ;
  wire \DQ_t[5]_i_1_n_0 ;
  wire \DQ_t[6]_i_1_n_0 ;
  wire \DQ_t[7]_i_1_n_0 ;
  wire \DQ_t[8]_i_1_n_0 ;
  wire \DQ_t[9]_i_1_n_0 ;
  wire [15:0]DQ_t_read;
  wire [15:0]DQ_t_write;
  wire Toggle;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire WE_n_read;
  wire WE_n_write;
  wire led1;
  wire p_0_in;
  wire [21:0]p_1_in;
  wire reset_n;
  wire state;
  wire state_i_1_n_0;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[0]_i_1 
       (.I0(A_read[0]),
        .I1(A_write[0]),
        .I2(state),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[10]_i_1 
       (.I0(A_read[10]),
        .I1(A_write[10]),
        .I2(state),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[11]_i_1 
       (.I0(A_read[11]),
        .I1(A_write[11]),
        .I2(state),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[12]_i_1 
       (.I0(A_read[12]),
        .I1(A_write[12]),
        .I2(state),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[13]_i_1 
       (.I0(A_read[13]),
        .I1(A_write[13]),
        .I2(state),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[14]_i_1 
       (.I0(A_read[14]),
        .I1(A_write[14]),
        .I2(state),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[15]_i_1 
       (.I0(A_read[15]),
        .I1(A_write[15]),
        .I2(state),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[16]_i_1 
       (.I0(A_read[16]),
        .I1(A_write[16]),
        .I2(state),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[17]_i_1 
       (.I0(A_read[17]),
        .I1(A_write[17]),
        .I2(state),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[18]_i_1 
       (.I0(A_read[18]),
        .I1(A_write[18]),
        .I2(state),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[19]_i_1 
       (.I0(A_read[19]),
        .I1(A_write[19]),
        .I2(state),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[1]_i_1 
       (.I0(A_read[1]),
        .I1(A_write[1]),
        .I2(state),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[20]_i_1 
       (.I0(A_read[20]),
        .I1(A_write[20]),
        .I2(state),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[21]_i_1 
       (.I0(A_read[21]),
        .I1(A_write[21]),
        .I2(state),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[2]_i_1 
       (.I0(A_read[2]),
        .I1(A_write[2]),
        .I2(state),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[3]_i_1 
       (.I0(A_read[3]),
        .I1(A_write[3]),
        .I2(state),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[4]_i_1 
       (.I0(A_read[4]),
        .I1(A_write[4]),
        .I2(state),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[5]_i_1 
       (.I0(A_read[5]),
        .I1(A_write[5]),
        .I2(state),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[6]_i_1 
       (.I0(A_read[6]),
        .I1(A_write[6]),
        .I2(state),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[7]_i_1 
       (.I0(A_read[7]),
        .I1(A_write[7]),
        .I2(state),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[8]_i_1 
       (.I0(A_read[8]),
        .I1(A_write[8]),
        .I2(state),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \A[9]_i_1 
       (.I0(A_read[9]),
        .I1(A_write[9]),
        .I2(state),
        .O(p_1_in[9]));
  FDRE \A_reg[0] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[0]),
        .Q(A[0]),
        .R(1'b0));
  FDRE \A_reg[10] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[10]),
        .Q(A[10]),
        .R(1'b0));
  FDRE \A_reg[11] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[11]),
        .Q(A[11]),
        .R(1'b0));
  FDRE \A_reg[12] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[12]),
        .Q(A[12]),
        .R(1'b0));
  FDRE \A_reg[13] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[13]),
        .Q(A[13]),
        .R(1'b0));
  FDRE \A_reg[14] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[14]),
        .Q(A[14]),
        .R(1'b0));
  FDRE \A_reg[15] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[15]),
        .Q(A[15]),
        .R(1'b0));
  FDRE \A_reg[16] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[16]),
        .Q(A[16]),
        .R(1'b0));
  FDRE \A_reg[17] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[17]),
        .Q(A[17]),
        .R(1'b0));
  FDRE \A_reg[18] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[18]),
        .Q(A[18]),
        .R(1'b0));
  FDRE \A_reg[19] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[19]),
        .Q(A[19]),
        .R(1'b0));
  FDRE \A_reg[1] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[1]),
        .Q(A[1]),
        .R(1'b0));
  FDRE \A_reg[20] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[20]),
        .Q(A[20]),
        .R(1'b0));
  FDRE \A_reg[21] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[21]),
        .Q(A[21]),
        .R(1'b0));
  FDRE \A_reg[2] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[2]),
        .Q(A[2]),
        .R(1'b0));
  FDRE \A_reg[3] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[3]),
        .Q(A[3]),
        .R(1'b0));
  FDRE \A_reg[4] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[4]),
        .Q(A[4]),
        .R(1'b0));
  FDRE \A_reg[5] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[5]),
        .Q(A[5]),
        .R(1'b0));
  FDRE \A_reg[6] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[6]),
        .Q(A[6]),
        .R(1'b0));
  FDRE \A_reg[7] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[7]),
        .Q(A[7]),
        .R(1'b0));
  FDRE \A_reg[8] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[8]),
        .Q(A[8]),
        .R(1'b0));
  FDRE \A_reg[9] 
       (.C(sysclk),
        .CE(reset_n),
        .D(p_1_in[9]),
        .Q(A[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    CE_n_i_1
       (.I0(CE_n_read),
        .I1(state),
        .I2(CE_n_write),
        .O(CE_n_i_1_n_0));
  FDRE CE_n_reg
       (.C(sysclk),
        .CE(reset_n),
        .D(CE_n_i_1_n_0),
        .Q(CE_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[0]_i_1 
       (.I0(DQ_o_read[0]),
        .I1(DQ_o_write[0]),
        .I2(state),
        .O(\DQ_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[10]_i_1 
       (.I0(DQ_o_read[10]),
        .I1(DQ_o_write[10]),
        .I2(state),
        .O(\DQ_o[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[11]_i_1 
       (.I0(DQ_o_read[11]),
        .I1(DQ_o_write[11]),
        .I2(state),
        .O(\DQ_o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[12]_i_1 
       (.I0(DQ_o_read[12]),
        .I1(DQ_o_write[12]),
        .I2(state),
        .O(\DQ_o[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[13]_i_1 
       (.I0(DQ_o_read[13]),
        .I1(DQ_o_write[13]),
        .I2(state),
        .O(\DQ_o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[14]_i_1 
       (.I0(DQ_o_read[14]),
        .I1(DQ_o_write[14]),
        .I2(state),
        .O(\DQ_o[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[15]_i_1 
       (.I0(DQ_o_read[15]),
        .I1(DQ_o_write[15]),
        .I2(state),
        .O(\DQ_o[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[1]_i_1 
       (.I0(DQ_o_read[1]),
        .I1(DQ_o_write[1]),
        .I2(state),
        .O(\DQ_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[2]_i_1 
       (.I0(DQ_o_read[2]),
        .I1(DQ_o_write[2]),
        .I2(state),
        .O(\DQ_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[3]_i_1 
       (.I0(DQ_o_read[3]),
        .I1(DQ_o_write[3]),
        .I2(state),
        .O(\DQ_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[4]_i_1 
       (.I0(DQ_o_read[4]),
        .I1(DQ_o_write[4]),
        .I2(state),
        .O(\DQ_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[5]_i_1 
       (.I0(DQ_o_read[5]),
        .I1(DQ_o_write[5]),
        .I2(state),
        .O(\DQ_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[6]_i_1 
       (.I0(DQ_o_read[6]),
        .I1(DQ_o_write[6]),
        .I2(state),
        .O(\DQ_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[7]_i_1 
       (.I0(DQ_o_read[7]),
        .I1(DQ_o_write[7]),
        .I2(state),
        .O(\DQ_o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[8]_i_1 
       (.I0(DQ_o_read[8]),
        .I1(DQ_o_write[8]),
        .I2(state),
        .O(\DQ_o[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_o[9]_i_1 
       (.I0(DQ_o_read[9]),
        .I1(DQ_o_write[9]),
        .I2(state),
        .O(\DQ_o[9]_i_1_n_0 ));
  FDRE \DQ_o_reg[0] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[0]_i_1_n_0 ),
        .Q(DQ_o[0]),
        .R(1'b0));
  FDRE \DQ_o_reg[10] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[10]_i_1_n_0 ),
        .Q(DQ_o[10]),
        .R(1'b0));
  FDRE \DQ_o_reg[11] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[11]_i_1_n_0 ),
        .Q(DQ_o[11]),
        .R(1'b0));
  FDRE \DQ_o_reg[12] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[12]_i_1_n_0 ),
        .Q(DQ_o[12]),
        .R(1'b0));
  FDRE \DQ_o_reg[13] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[13]_i_1_n_0 ),
        .Q(DQ_o[13]),
        .R(1'b0));
  FDRE \DQ_o_reg[14] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[14]_i_1_n_0 ),
        .Q(DQ_o[14]),
        .R(1'b0));
  FDRE \DQ_o_reg[15] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[15]_i_1_n_0 ),
        .Q(DQ_o[15]),
        .R(1'b0));
  FDRE \DQ_o_reg[1] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[1]_i_1_n_0 ),
        .Q(DQ_o[1]),
        .R(1'b0));
  FDRE \DQ_o_reg[2] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[2]_i_1_n_0 ),
        .Q(DQ_o[2]),
        .R(1'b0));
  FDRE \DQ_o_reg[3] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[3]_i_1_n_0 ),
        .Q(DQ_o[3]),
        .R(1'b0));
  FDRE \DQ_o_reg[4] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[4]_i_1_n_0 ),
        .Q(DQ_o[4]),
        .R(1'b0));
  FDRE \DQ_o_reg[5] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[5]_i_1_n_0 ),
        .Q(DQ_o[5]),
        .R(1'b0));
  FDRE \DQ_o_reg[6] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[6]_i_1_n_0 ),
        .Q(DQ_o[6]),
        .R(1'b0));
  FDRE \DQ_o_reg[7] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[7]_i_1_n_0 ),
        .Q(DQ_o[7]),
        .R(1'b0));
  FDRE \DQ_o_reg[8] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[8]_i_1_n_0 ),
        .Q(DQ_o[8]),
        .R(1'b0));
  FDRE \DQ_o_reg[9] 
       (.C(sysclk),
        .CE(reset_n),
        .D(\DQ_o[9]_i_1_n_0 ),
        .Q(DQ_o[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[0]_i_1 
       (.I0(DQ_t_read[0]),
        .I1(DQ_t_write[0]),
        .I2(state),
        .O(\DQ_t[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[10]_i_1 
       (.I0(DQ_t_read[10]),
        .I1(DQ_t_write[10]),
        .I2(state),
        .O(\DQ_t[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[11]_i_1 
       (.I0(DQ_t_read[11]),
        .I1(DQ_t_write[11]),
        .I2(state),
        .O(\DQ_t[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[12]_i_1 
       (.I0(DQ_t_read[12]),
        .I1(DQ_t_write[12]),
        .I2(state),
        .O(\DQ_t[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[13]_i_1 
       (.I0(DQ_t_read[13]),
        .I1(DQ_t_write[13]),
        .I2(state),
        .O(\DQ_t[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[14]_i_1 
       (.I0(DQ_t_read[14]),
        .I1(DQ_t_write[14]),
        .I2(state),
        .O(\DQ_t[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[15]_i_1 
       (.I0(DQ_t_read[15]),
        .I1(DQ_t_write[15]),
        .I2(state),
        .O(\DQ_t[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[1]_i_1 
       (.I0(DQ_t_read[1]),
        .I1(DQ_t_write[1]),
        .I2(state),
        .O(\DQ_t[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[2]_i_1 
       (.I0(DQ_t_read[2]),
        .I1(DQ_t_write[2]),
        .I2(state),
        .O(\DQ_t[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[3]_i_1 
       (.I0(DQ_t_read[3]),
        .I1(DQ_t_write[3]),
        .I2(state),
        .O(\DQ_t[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[4]_i_1 
       (.I0(DQ_t_read[4]),
        .I1(DQ_t_write[4]),
        .I2(state),
        .O(\DQ_t[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[5]_i_1 
       (.I0(DQ_t_read[5]),
        .I1(DQ_t_write[5]),
        .I2(state),
        .O(\DQ_t[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[6]_i_1 
       (.I0(DQ_t_read[6]),
        .I1(DQ_t_write[6]),
        .I2(state),
        .O(\DQ_t[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[7]_i_1 
       (.I0(DQ_t_read[7]),
        .I1(DQ_t_write[7]),
        .I2(state),
        .O(\DQ_t[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[8]_i_1 
       (.I0(DQ_t_read[8]),
        .I1(DQ_t_write[8]),
        .I2(state),
        .O(\DQ_t[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \DQ_t[9]_i_1 
       (.I0(DQ_t_read[9]),
        .I1(DQ_t_write[9]),
        .I2(state),
        .O(\DQ_t[9]_i_1_n_0 ));
  FDPE \DQ_t_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[0]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[0]));
  FDPE \DQ_t_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[10]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[10]));
  FDPE \DQ_t_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[11]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[11]));
  FDPE \DQ_t_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[12]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[12]));
  FDPE \DQ_t_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[13]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[13]));
  FDPE \DQ_t_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[14]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[14]));
  FDPE \DQ_t_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[15]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[15]));
  FDPE \DQ_t_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[1]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[1]));
  FDPE \DQ_t_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[2]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[2]));
  FDPE \DQ_t_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[3]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[3]));
  FDPE \DQ_t_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[4]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[4]));
  FDPE \DQ_t_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[5]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[5]));
  FDPE \DQ_t_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[6]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[6]));
  FDPE \DQ_t_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[7]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[7]));
  FDPE \DQ_t_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[8]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[8]));
  FDPE \DQ_t_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\DQ_t[9]_i_1_n_0 ),
        .PRE(p_0_in),
        .Q(DQ_t[9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    WE_n_i_1
       (.I0(WE_n_read),
        .I1(state),
        .I2(WE_n_write),
        .O(WE_n_i_1_n_0));
  FDRE WE_n_reg
       (.C(sysclk),
        .CE(reset_n),
        .D(WE_n_i_1_n_0),
        .Q(WE_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    led1_i_1
       (.I0(reset_n),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    led1_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(state),
        .Q(led1));
  LUT2 #(
    .INIT(4'hE)) 
    state_i_1
       (.I0(state),
        .I1(Toggle),
        .O(state_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(state_i_1_n_0),
        .Q(state));
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

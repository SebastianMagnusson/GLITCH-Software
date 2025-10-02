// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 29 14:37:56 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_RW_ROUTER_100MHZ_1_0/PCB_All_SRAM_RW_ROUTER_100MHZ_1_0_sim_netlist.v
// Design      : PCB_All_SRAM_RW_ROUTER_100MHZ_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_RW_ROUTER_100MHZ_1_0,RW_ROUTER_100MHZ,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RW_ROUTER_100MHZ,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_RW_ROUTER_100MHZ_1_0
   (sysclk,
    reset_n,
    led1,
    A,
    CE_n,
    WE_n,
    DQ_o,
    DQ_t,
    decoder,
    Toggle,
    A_write,
    CE_n_write,
    WE_n_write,
    DQ_o_write,
    DQ_t_write,
    decoder_write,
    A_read,
    CE_n_read,
    WE_n_read,
    DQ_t_read,
    DQ_o_read,
    decoder_read);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output led1;
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output [2:0]decoder;
  input Toggle;
  input [21:0]A_write;
  input CE_n_write;
  input WE_n_write;
  input [15:0]DQ_o_write;
  input [15:0]DQ_t_write;
  input [2:0]decoder_write;
  input [21:0]A_read;
  input CE_n_read;
  input WE_n_read;
  input [15:0]DQ_t_read;
  input [15:0]DQ_o_read;
  input [2:0]decoder_read;

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
  wire [2:0]decoder;
  wire [2:0]decoder_read;
  wire [2:0]decoder_write;
  wire led1;
  wire reset_n;
  wire sysclk;

  PCB_All_SRAM_RW_ROUTER_100MHZ_1_0_RW_ROUTER_100MHZ U0
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
        .decoder(decoder),
        .decoder_read(decoder_read),
        .decoder_write(decoder_write),
        .led1(led1),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "RW_ROUTER_100MHZ" *) 
module PCB_All_SRAM_RW_ROUTER_100MHZ_1_0_RW_ROUTER_100MHZ
   (led1,
    A,
    DQ_o,
    DQ_t,
    decoder,
    CE_n,
    WE_n,
    sysclk,
    reset_n,
    CE_n_write,
    CE_n_read,
    WE_n_write,
    WE_n_read,
    decoder_write,
    decoder_read,
    Toggle,
    A_write,
    A_read,
    DQ_o_write,
    DQ_o_read,
    DQ_t_read,
    DQ_t_write);
  output led1;
  output [21:0]A;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output [2:0]decoder;
  output CE_n;
  output WE_n;
  input sysclk;
  input reset_n;
  input CE_n_write;
  input CE_n_read;
  input WE_n_write;
  input WE_n_read;
  input [2:0]decoder_write;
  input [2:0]decoder_read;
  input Toggle;
  input [21:0]A_write;
  input [21:0]A_read;
  input [15:0]DQ_o_write;
  input [15:0]DQ_o_read;
  input [15:0]DQ_t_read;
  input [15:0]DQ_t_write;

  wire [21:0]A;
  wire A0;
  wire \A[0]_i_1_n_0 ;
  wire \A[10]_i_1_n_0 ;
  wire \A[11]_i_1_n_0 ;
  wire \A[12]_i_1_n_0 ;
  wire \A[13]_i_1_n_0 ;
  wire \A[14]_i_1_n_0 ;
  wire \A[15]_i_1_n_0 ;
  wire \A[16]_i_1_n_0 ;
  wire \A[17]_i_1_n_0 ;
  wire \A[18]_i_1_n_0 ;
  wire \A[19]_i_1_n_0 ;
  wire \A[1]_i_1_n_0 ;
  wire \A[20]_i_1_n_0 ;
  wire \A[21]_i_1_n_0 ;
  wire \A[21]_i_3_n_0 ;
  wire \A[2]_i_1_n_0 ;
  wire \A[3]_i_1_n_0 ;
  wire \A[4]_i_1_n_0 ;
  wire \A[5]_i_1_n_0 ;
  wire \A[6]_i_1_n_0 ;
  wire \A[7]_i_1_n_0 ;
  wire \A[8]_i_1_n_0 ;
  wire \A[9]_i_1_n_0 ;
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
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire Toggle;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire WE_n_read;
  wire WE_n_write;
  wire cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire [2:0]decoder;
  wire \decoder[0]_i_1_n_0 ;
  wire \decoder[1]_i_1_n_0 ;
  wire \decoder[2]_i_1_n_0 ;
  wire [2:0]decoder_read;
  wire [2:0]decoder_write;
  wire led1;
  wire led1_i_1_n_0;
  wire led1_i_2_n_0;
  wire reset_n;
  wire sysclk;

  LUT4 #(
    .INIT(16'hF888)) 
    \A[0]_i_1 
       (.I0(A_write[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[0]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[10]_i_1 
       (.I0(A_write[10]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[10]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[11]_i_1 
       (.I0(A_write[11]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[11]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[12]_i_1 
       (.I0(A_write[12]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[12]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[13]_i_1 
       (.I0(A_write[13]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[13]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[14]_i_1 
       (.I0(A_write[14]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[14]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[15]_i_1 
       (.I0(A_write[15]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[15]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[16]_i_1 
       (.I0(A_write[16]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[16]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[17]_i_1 
       (.I0(A_write[17]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[17]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[18]_i_1 
       (.I0(A_write[18]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[18]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[19]_i_1 
       (.I0(A_write[19]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[19]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[1]_i_1 
       (.I0(A_write[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[1]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[20]_i_1 
       (.I0(A_write[20]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[20]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \A[21]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(reset_n),
        .O(\A[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \A[21]_i_2 
       (.I0(reset_n),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(A0));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[21]_i_3 
       (.I0(A_write[21]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[21]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[21]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[2]_i_1 
       (.I0(A_write[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[2]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[3]_i_1 
       (.I0(A_write[3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[4]_i_1 
       (.I0(A_write[4]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[4]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[5]_i_1 
       (.I0(A_write[5]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[5]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[6]_i_1 
       (.I0(A_write[6]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[6]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[7]_i_1 
       (.I0(A_write[7]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[7]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[8]_i_1 
       (.I0(A_write[8]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[8]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \A[9]_i_1 
       (.I0(A_write[9]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(A_read[9]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\A[9]_i_1_n_0 ));
  FDSE \A_reg[0] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[0]_i_1_n_0 ),
        .Q(A[0]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[10] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[10]_i_1_n_0 ),
        .Q(A[10]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[11] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[11]_i_1_n_0 ),
        .Q(A[11]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[12] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[12]_i_1_n_0 ),
        .Q(A[12]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[13] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[13]_i_1_n_0 ),
        .Q(A[13]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[14] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[14]_i_1_n_0 ),
        .Q(A[14]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[15] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[15]_i_1_n_0 ),
        .Q(A[15]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[16] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[16]_i_1_n_0 ),
        .Q(A[16]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[17] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[17]_i_1_n_0 ),
        .Q(A[17]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[18] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[18]_i_1_n_0 ),
        .Q(A[18]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[19] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[19]_i_1_n_0 ),
        .Q(A[19]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[1] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[1]_i_1_n_0 ),
        .Q(A[1]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[20] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[20]_i_1_n_0 ),
        .Q(A[20]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[21] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[21]_i_3_n_0 ),
        .Q(A[21]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[2] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[2]_i_1_n_0 ),
        .Q(A[2]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[3] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[3]_i_1_n_0 ),
        .Q(A[3]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[4] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[4]_i_1_n_0 ),
        .Q(A[4]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[5] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[5]_i_1_n_0 ),
        .Q(A[5]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[6] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[6]_i_1_n_0 ),
        .Q(A[6]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[7] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[7]_i_1_n_0 ),
        .Q(A[7]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[8] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[8]_i_1_n_0 ),
        .Q(A[8]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \A_reg[9] 
       (.C(sysclk),
        .CE(A0),
        .D(\A[9]_i_1_n_0 ),
        .Q(A[9]),
        .S(\A[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    CE_n_i_1
       (.I0(CE_n_write),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(CE_n_read),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(CE_n_i_1_n_0));
  FDSE CE_n_reg
       (.C(sysclk),
        .CE(A0),
        .D(CE_n_i_1_n_0),
        .Q(CE_n),
        .S(\A[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[0]_i_1 
       (.I0(DQ_o_write[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[0]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[10]_i_1 
       (.I0(DQ_o_write[10]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[10]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[11]_i_1 
       (.I0(DQ_o_write[11]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[11]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[12]_i_1 
       (.I0(DQ_o_write[12]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[12]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[13]_i_1 
       (.I0(DQ_o_write[13]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[13]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[14]_i_1 
       (.I0(DQ_o_write[14]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[14]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[15]_i_1 
       (.I0(DQ_o_write[15]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[15]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[1]_i_1 
       (.I0(DQ_o_write[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[1]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[2]_i_1 
       (.I0(DQ_o_write[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[2]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[3]_i_1 
       (.I0(DQ_o_write[3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[3]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[4]_i_1 
       (.I0(DQ_o_write[4]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[4]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[5]_i_1 
       (.I0(DQ_o_write[5]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[5]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[6]_i_1 
       (.I0(DQ_o_write[6]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[6]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[7]_i_1 
       (.I0(DQ_o_write[7]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[7]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[8]_i_1 
       (.I0(DQ_o_write[8]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[8]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \DQ_o[9]_i_1 
       (.I0(DQ_o_write[9]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(DQ_o_read[9]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\DQ_o[9]_i_1_n_0 ));
  FDSE \DQ_o_reg[0] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[0]_i_1_n_0 ),
        .Q(DQ_o[0]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[10] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[10]_i_1_n_0 ),
        .Q(DQ_o[10]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[11] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[11]_i_1_n_0 ),
        .Q(DQ_o[11]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[12] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[12]_i_1_n_0 ),
        .Q(DQ_o[12]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[13] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[13]_i_1_n_0 ),
        .Q(DQ_o[13]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[14] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[14]_i_1_n_0 ),
        .Q(DQ_o[14]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[15] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[15]_i_1_n_0 ),
        .Q(DQ_o[15]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[1] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[1]_i_1_n_0 ),
        .Q(DQ_o[1]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[2] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[2]_i_1_n_0 ),
        .Q(DQ_o[2]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[3] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[3]_i_1_n_0 ),
        .Q(DQ_o[3]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[4] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[4]_i_1_n_0 ),
        .Q(DQ_o[4]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[5] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[5]_i_1_n_0 ),
        .Q(DQ_o[5]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[6] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[6]_i_1_n_0 ),
        .Q(DQ_o[6]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[7] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[7]_i_1_n_0 ),
        .Q(DQ_o[7]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[8] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[8]_i_1_n_0 ),
        .Q(DQ_o[8]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \DQ_o_reg[9] 
       (.C(sysclk),
        .CE(A0),
        .D(\DQ_o[9]_i_1_n_0 ),
        .Q(DQ_o[9]),
        .S(\A[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[0]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[0]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[0]),
        .O(\DQ_t[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[10]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[10]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[10]),
        .O(\DQ_t[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[11]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[11]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[11]),
        .O(\DQ_t[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[12]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[12]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[12]),
        .O(\DQ_t[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[13]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[13]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[13]),
        .O(\DQ_t[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[14]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[14]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[14]),
        .O(\DQ_t[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[15]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[15]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[15]),
        .O(\DQ_t[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[1]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[1]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[1]),
        .O(\DQ_t[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[2]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[2]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[2]),
        .O(\DQ_t[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[3]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[3]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[3]),
        .O(\DQ_t[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[4]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[4]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[4]),
        .O(\DQ_t[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[5]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[5]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[5]),
        .O(\DQ_t[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[6]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[6]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[6]),
        .O(\DQ_t[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[7]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[7]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[7]),
        .O(\DQ_t[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[8]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[8]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[8]),
        .O(\DQ_t[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \DQ_t[9]_i_1 
       (.I0(cnt),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(DQ_t_read[9]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(DQ_t_write[9]),
        .O(\DQ_t[9]_i_1_n_0 ));
  FDPE \DQ_t_reg[0] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[0]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[0]));
  FDPE \DQ_t_reg[10] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[10]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[10]));
  FDPE \DQ_t_reg[11] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[11]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[11]));
  FDPE \DQ_t_reg[12] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[12]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[12]));
  FDPE \DQ_t_reg[13] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[13]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[13]));
  FDPE \DQ_t_reg[14] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[14]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[14]));
  FDPE \DQ_t_reg[15] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[15]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[15]));
  FDPE \DQ_t_reg[1] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[1]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[1]));
  FDPE \DQ_t_reg[2] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[2]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[2]));
  FDPE \DQ_t_reg[3] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[3]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[3]));
  FDPE \DQ_t_reg[4] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[4]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[4]));
  FDPE \DQ_t_reg[5] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[5]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[5]));
  FDPE \DQ_t_reg[6] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[6]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[6]));
  FDPE \DQ_t_reg[7] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[7]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[7]));
  FDPE \DQ_t_reg[8] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[8]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[8]));
  FDPE \DQ_t_reg[9] 
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .D(\DQ_t[9]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(DQ_t[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Toggle),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Toggle),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[1]_i_2_n_0 ),
        .I3(cnt),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(cnt),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(cnt),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "write:001,read:100,turnover:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(led1_i_2_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "write:001,read:100,turnover:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(led1_i_2_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(cnt));
  (* FSM_ENCODED_STATES = "write:001,read:100,turnover:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(sysclk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(led1_i_2_n_0),
        .D(\FSM_onehot_state[2]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hF888)) 
    WE_n_i_1
       (.I0(WE_n_write),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(WE_n_read),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(WE_n_i_1_n_0));
  FDSE WE_n_reg
       (.C(sysclk),
        .CE(A0),
        .D(WE_n_i_1_n_0),
        .Q(WE_n),
        .S(\A[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1444)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4222)) 
    \cnt[3]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(sysclk),
        .CE(cnt),
        .CLR(led1_i_2_n_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(sysclk),
        .CE(cnt),
        .CLR(led1_i_2_n_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(sysclk),
        .CE(cnt),
        .CLR(led1_i_2_n_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(sysclk),
        .CE(cnt),
        .CLR(led1_i_2_n_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoder[0]_i_1 
       (.I0(decoder_write[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(decoder_read[0]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\decoder[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoder[1]_i_1 
       (.I0(decoder_write[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(decoder_read[1]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\decoder[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \decoder[2]_i_1 
       (.I0(decoder_write[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(decoder_read[2]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\decoder[2]_i_1_n_0 ));
  FDSE \decoder_reg[0] 
       (.C(sysclk),
        .CE(A0),
        .D(\decoder[0]_i_1_n_0 ),
        .Q(decoder[0]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \decoder_reg[1] 
       (.C(sysclk),
        .CE(A0),
        .D(\decoder[1]_i_1_n_0 ),
        .Q(decoder[1]),
        .S(\A[21]_i_1_n_0 ));
  FDSE \decoder_reg[2] 
       (.C(sysclk),
        .CE(A0),
        .D(\decoder[2]_i_1_n_0 ),
        .Q(decoder[2]),
        .S(\A[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    led1_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(led1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    led1_i_2
       (.I0(reset_n),
        .O(led1_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    led1_reg
       (.C(sysclk),
        .CE(led1_i_1_n_0),
        .CLR(led1_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(led1));
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

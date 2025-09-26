// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep 24 16:16:00 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_GNSS_Fetcher_mod_0_0/testwith1speed_GNSS_Fetcher_mod_0_0_sim_netlist.v
// Design      : testwith1speed_GNSS_Fetcher_mod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testwith1speed_GNSS_Fetcher_mod_0_0,GNSS_Fetcher_mod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "GNSS_Fetcher_mod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module testwith1speed_GNSS_Fetcher_mod_0_0
   (sysclk,
    reset_n,
    i_RX_drive,
    i_gnss_data,
    o_gnss_data,
    o_gnss_drive,
    led1);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input i_RX_drive;
  input [7:0]i_gnss_data;
  output [383:0]o_gnss_data;
  output o_gnss_drive;
  output led1;

  wire \<const0> ;
  wire \<const1> ;
  wire i_RX_drive;
  wire [7:0]i_gnss_data;
  wire led1;
  wire [351:0]\^o_gnss_data ;
  wire o_gnss_drive;
  wire reset_n;
  wire sysclk;

  assign o_gnss_data[383] = \<const0> ;
  assign o_gnss_data[382] = \<const0> ;
  assign o_gnss_data[381] = \<const1> ;
  assign o_gnss_data[380] = \<const0> ;
  assign o_gnss_data[379] = \<const0> ;
  assign o_gnss_data[378] = \<const1> ;
  assign o_gnss_data[377] = \<const0> ;
  assign o_gnss_data[376] = \<const0> ;
  assign o_gnss_data[375] = \<const0> ;
  assign o_gnss_data[374] = \<const1> ;
  assign o_gnss_data[373] = \<const0> ;
  assign o_gnss_data[372] = \<const0> ;
  assign o_gnss_data[371] = \<const0> ;
  assign o_gnss_data[370] = \<const1> ;
  assign o_gnss_data[369] = \<const1> ;
  assign o_gnss_data[368] = \<const1> ;
  assign o_gnss_data[367] = \<const0> ;
  assign o_gnss_data[366] = \<const1> ;
  assign o_gnss_data[365] = \<const0> ;
  assign o_gnss_data[364] = \<const1> ;
  assign o_gnss_data[363] = \<const0> ;
  assign o_gnss_data[362] = \<const0> ;
  assign o_gnss_data[361] = \<const0> ;
  assign o_gnss_data[360] = \<const0> ;
  assign o_gnss_data[359] = \<const0> ;
  assign o_gnss_data[358] = \<const1> ;
  assign o_gnss_data[357] = \<const0> ;
  assign o_gnss_data[356] = \<const1> ;
  assign o_gnss_data[355] = \<const0> ;
  assign o_gnss_data[354] = \<const0> ;
  assign o_gnss_data[353] = \<const1> ;
  assign o_gnss_data[352] = \<const0> ;
  assign o_gnss_data[351:0] = \^o_gnss_data [351:0];
  GND GND
       (.G(\<const0> ));
  testwith1speed_GNSS_Fetcher_mod_0_0_GNSS_Fetcher_mod U0
       (.i_RX_drive(i_RX_drive),
        .i_gnss_data(i_gnss_data),
        .led1(led1),
        .o_gnss_data(\^o_gnss_data ),
        .o_gnss_drive(o_gnss_drive),
        .reset_n(reset_n),
        .sysclk(sysclk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "GNSS_Fetcher_mod" *) 
module testwith1speed_GNSS_Fetcher_mod_0_0_GNSS_Fetcher_mod
   (o_gnss_data,
    o_gnss_drive,
    led1,
    reset_n,
    i_RX_drive,
    sysclk,
    i_gnss_data);
  output [351:0]o_gnss_data;
  output o_gnss_drive;
  output led1;
  input reset_n;
  input i_RX_drive;
  input sysclk;
  input [7:0]i_gnss_data;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire RX_prev_C_i_1_n_0;
  wire RX_prev_reg_C_n_0;
  wire RX_prev_reg_LDC_i_1_n_0;
  wire RX_prev_reg_LDC_i_2_n_0;
  wire RX_prev_reg_LDC_n_0;
  wire RX_prev_reg_P_n_0;
  wire byte_cnt0;
  wire \byte_cnt[0]_i_1_n_0 ;
  wire \byte_cnt[1]_i_1_n_0 ;
  wire \byte_cnt[2]_i_1_n_0 ;
  wire \byte_cnt[3]_i_1_n_0 ;
  wire \byte_cnt[4]_i_1_n_0 ;
  wire \byte_cnt[5]_i_2_n_0 ;
  wire \byte_cnt[5]_i_3_n_0 ;
  wire \byte_cnt_reg_n_0_[0] ;
  wire \byte_cnt_reg_n_0_[1] ;
  wire \byte_cnt_reg_n_0_[2] ;
  wire \byte_cnt_reg_n_0_[3] ;
  wire \byte_cnt_reg_n_0_[4] ;
  wire \byte_cnt_reg_n_0_[5] ;
  wire \gnss_data_buf[103]_i_1_n_0 ;
  wire \gnss_data_buf[111]_i_1_n_0 ;
  wire \gnss_data_buf[119]_i_1_n_0 ;
  wire \gnss_data_buf[127]_i_1_n_0 ;
  wire \gnss_data_buf[135]_i_1_n_0 ;
  wire \gnss_data_buf[143]_i_1_n_0 ;
  wire \gnss_data_buf[151]_i_1_n_0 ;
  wire \gnss_data_buf[159]_i_1_n_0 ;
  wire \gnss_data_buf[15]_i_1_n_0 ;
  wire \gnss_data_buf[167]_i_1_n_0 ;
  wire \gnss_data_buf[175]_i_1_n_0 ;
  wire \gnss_data_buf[183]_i_1_n_0 ;
  wire \gnss_data_buf[183]_i_2_n_0 ;
  wire \gnss_data_buf[191]_i_1_n_0 ;
  wire \gnss_data_buf[191]_i_2_n_0 ;
  wire \gnss_data_buf[199]_i_1_n_0 ;
  wire \gnss_data_buf[207]_i_1_n_0 ;
  wire \gnss_data_buf[215]_i_1_n_0 ;
  wire \gnss_data_buf[215]_i_2_n_0 ;
  wire \gnss_data_buf[223]_i_1_n_0 ;
  wire \gnss_data_buf[223]_i_2_n_0 ;
  wire \gnss_data_buf[231]_i_1_n_0 ;
  wire \gnss_data_buf[239]_i_1_n_0 ;
  wire \gnss_data_buf[23]_i_1_n_0 ;
  wire \gnss_data_buf[247]_i_1_n_0 ;
  wire \gnss_data_buf[255]_i_1_n_0 ;
  wire \gnss_data_buf[263]_i_1_n_0 ;
  wire \gnss_data_buf[271]_i_1_n_0 ;
  wire \gnss_data_buf[279]_i_1_n_0 ;
  wire \gnss_data_buf[287]_i_1_n_0 ;
  wire \gnss_data_buf[295]_i_1_n_0 ;
  wire \gnss_data_buf[303]_i_1_n_0 ;
  wire \gnss_data_buf[311]_i_1_n_0 ;
  wire \gnss_data_buf[311]_i_2_n_0 ;
  wire \gnss_data_buf[319]_i_1_n_0 ;
  wire \gnss_data_buf[319]_i_2_n_0 ;
  wire \gnss_data_buf[31]_i_1_n_0 ;
  wire \gnss_data_buf[327]_i_1_n_0 ;
  wire \gnss_data_buf[335]_i_1_n_0 ;
  wire \gnss_data_buf[343]_i_1_n_0 ;
  wire \gnss_data_buf[343]_i_2_n_0 ;
  wire \gnss_data_buf[351]_i_1_n_0 ;
  wire \gnss_data_buf[351]_i_2_n_0 ;
  wire \gnss_data_buf[351]_i_3_n_0 ;
  wire \gnss_data_buf[351]_i_4_n_0 ;
  wire \gnss_data_buf[39]_i_1_n_0 ;
  wire \gnss_data_buf[47]_i_1_n_0 ;
  wire \gnss_data_buf[55]_i_1_n_0 ;
  wire \gnss_data_buf[55]_i_2_n_0 ;
  wire \gnss_data_buf[63]_i_1_n_0 ;
  wire \gnss_data_buf[63]_i_2_n_0 ;
  wire \gnss_data_buf[71]_i_1_n_0 ;
  wire \gnss_data_buf[79]_i_1_n_0 ;
  wire \gnss_data_buf[7]_i_1_n_0 ;
  wire \gnss_data_buf[87]_i_1_n_0 ;
  wire \gnss_data_buf[87]_i_2_n_0 ;
  wire \gnss_data_buf[95]_i_1_n_0 ;
  wire \gnss_data_buf[95]_i_2_n_0 ;
  wire i_RX_drive;
  wire [7:0]i_gnss_data;
  wire led1;
  wire led1_i_1_n_0;
  wire led1_i_2_n_0;
  wire led1_i_3_n_0;
  wire [351:0]o_gnss_data;
  wire o_gnss_drive;
  wire o_gnss_drive_i_1_n_0;
  wire reset_n;
  wire [1:0]state;
  wire [1:0]state__0;
  wire sysclk;

  LUT6 #(
    .INIT(64'hFF40FF40FF40EA40)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\gnss_data_buf[351]_i_3_n_0 ),
        .I1(led1_i_2_n_0),
        .I2(led1_i_3_n_0),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\gnss_data_buf[63]_i_2_n_0 ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[63]_i_2_n_0 ),
        .O(state__0[1]));
  (* FSM_ENCODED_STATES = "search:00,capture:01,send:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "search:00,capture:01,send:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(state__0[1]),
        .Q(state[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    RX_prev_C_i_1
       (.I0(RX_prev_reg_P_n_0),
        .I1(RX_prev_reg_LDC_n_0),
        .I2(RX_prev_reg_C_n_0),
        .I3(state[1]),
        .I4(i_RX_drive),
        .O(RX_prev_C_i_1_n_0));
  FDCE RX_prev_reg_C
       (.C(sysclk),
        .CE(1'b1),
        .CLR(RX_prev_reg_LDC_i_2_n_0),
        .D(RX_prev_C_i_1_n_0),
        .Q(RX_prev_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    RX_prev_reg_LDC
       (.CLR(RX_prev_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(RX_prev_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(RX_prev_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    RX_prev_reg_LDC_i_1
       (.I0(i_RX_drive),
        .I1(reset_n),
        .O(RX_prev_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    RX_prev_reg_LDC_i_2
       (.I0(reset_n),
        .I1(i_RX_drive),
        .O(RX_prev_reg_LDC_i_2_n_0));
  FDPE RX_prev_reg_P
       (.C(sysclk),
        .CE(1'b1),
        .D(RX_prev_C_i_1_n_0),
        .PRE(RX_prev_reg_LDC_i_1_n_0),
        .Q(RX_prev_reg_P_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_cnt[0]_i_1 
       (.I0(state[0]),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .O(\byte_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \byte_cnt[1]_i_1 
       (.I0(state[0]),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[1] ),
        .O(\byte_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \byte_cnt[2]_i_1 
       (.I0(\byte_cnt_reg_n_0_[0] ),
        .I1(\byte_cnt_reg_n_0_[1] ),
        .I2(state[0]),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .O(\byte_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4CCC8000)) 
    \byte_cnt[3]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(state[0]),
        .I2(\byte_cnt_reg_n_0_[2] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .I4(\byte_cnt_reg_n_0_[3] ),
        .O(\byte_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \byte_cnt[4]_i_1 
       (.I0(\byte_cnt_reg_n_0_[2] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(\byte_cnt_reg_n_0_[1] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\byte_cnt_reg_n_0_[4] ),
        .O(\byte_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0404040444444404)) 
    \byte_cnt[5]_i_1 
       (.I0(state[1]),
        .I1(reset_n),
        .I2(state[0]),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(\gnss_data_buf[63]_i_2_n_0 ),
        .I5(\gnss_data_buf[351]_i_3_n_0 ),
        .O(byte_cnt0));
  LUT6 #(
    .INIT(64'hAAAA00006AAA0000)) 
    \byte_cnt[5]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\byte_cnt[5]_i_3_n_0 ),
        .O(\byte_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \byte_cnt[5]_i_3 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .O(\byte_cnt[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[0] 
       (.C(sysclk),
        .CE(byte_cnt0),
        .D(\byte_cnt[0]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[1] 
       (.C(sysclk),
        .CE(byte_cnt0),
        .D(\byte_cnt[1]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[2] 
       (.C(sysclk),
        .CE(byte_cnt0),
        .D(\byte_cnt[2]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[3] 
       (.C(sysclk),
        .CE(byte_cnt0),
        .D(\byte_cnt[3]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[4] 
       (.C(sysclk),
        .CE(byte_cnt0),
        .D(\byte_cnt[4]_i_1_n_0 ),
        .Q(\byte_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[5] 
       (.C(sysclk),
        .CE(byte_cnt0),
        .D(\byte_cnt[5]_i_2_n_0 ),
        .Q(\byte_cnt_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[103]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[183]_i_2_n_0 ),
        .O(\gnss_data_buf[103]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[111]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[191]_i_2_n_0 ),
        .O(\gnss_data_buf[111]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[119]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[183]_i_2_n_0 ),
        .O(\gnss_data_buf[119]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[127]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[191]_i_2_n_0 ),
        .O(\gnss_data_buf[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[135]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[215]_i_2_n_0 ),
        .O(\gnss_data_buf[135]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[143]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[223]_i_2_n_0 ),
        .O(\gnss_data_buf[143]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[151]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[215]_i_2_n_0 ),
        .O(\gnss_data_buf[151]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[159]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[223]_i_2_n_0 ),
        .O(\gnss_data_buf[159]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[15]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[95]_i_2_n_0 ),
        .O(\gnss_data_buf[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[167]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[183]_i_2_n_0 ),
        .O(\gnss_data_buf[167]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[175]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[191]_i_2_n_0 ),
        .O(\gnss_data_buf[175]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[183]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[183]_i_2_n_0 ),
        .O(\gnss_data_buf[183]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gnss_data_buf[183]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .O(\gnss_data_buf[183]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[191]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[191]_i_2_n_0 ),
        .O(\gnss_data_buf[191]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \gnss_data_buf[191]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .O(\gnss_data_buf[191]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[199]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[215]_i_2_n_0 ),
        .O(\gnss_data_buf[199]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[207]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[223]_i_2_n_0 ),
        .O(\gnss_data_buf[207]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[215]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[215]_i_2_n_0 ),
        .O(\gnss_data_buf[215]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \gnss_data_buf[215]_i_2 
       (.I0(\byte_cnt_reg_n_0_[2] ),
        .I1(\byte_cnt_reg_n_0_[4] ),
        .I2(\byte_cnt_reg_n_0_[5] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .O(\gnss_data_buf[215]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[223]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[223]_i_2_n_0 ),
        .O(\gnss_data_buf[223]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \gnss_data_buf[223]_i_2 
       (.I0(\byte_cnt_reg_n_0_[2] ),
        .I1(\byte_cnt_reg_n_0_[4] ),
        .I2(\byte_cnt_reg_n_0_[5] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .O(\gnss_data_buf[223]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[231]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[311]_i_2_n_0 ),
        .O(\gnss_data_buf[231]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[239]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[319]_i_2_n_0 ),
        .O(\gnss_data_buf[239]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[23]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[87]_i_2_n_0 ),
        .O(\gnss_data_buf[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[247]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[311]_i_2_n_0 ),
        .O(\gnss_data_buf[247]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[255]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[319]_i_2_n_0 ),
        .O(\gnss_data_buf[255]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[263]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[343]_i_2_n_0 ),
        .O(\gnss_data_buf[263]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[271]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[351]_i_4_n_0 ),
        .O(\gnss_data_buf[271]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[279]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[343]_i_2_n_0 ),
        .O(\gnss_data_buf[279]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[287]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[351]_i_4_n_0 ),
        .O(\gnss_data_buf[287]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[295]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[311]_i_2_n_0 ),
        .O(\gnss_data_buf[295]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[303]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[319]_i_2_n_0 ),
        .O(\gnss_data_buf[303]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[311]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[311]_i_2_n_0 ),
        .O(\gnss_data_buf[311]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \gnss_data_buf[311]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[2] ),
        .I3(\byte_cnt_reg_n_0_[4] ),
        .O(\gnss_data_buf[311]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[319]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[319]_i_2_n_0 ),
        .O(\gnss_data_buf[319]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gnss_data_buf[319]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[2] ),
        .I3(\byte_cnt_reg_n_0_[4] ),
        .O(\gnss_data_buf[319]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \gnss_data_buf[31]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[95]_i_2_n_0 ),
        .O(\gnss_data_buf[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[327]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[343]_i_2_n_0 ),
        .O(\gnss_data_buf[327]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[335]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[351]_i_4_n_0 ),
        .O(\gnss_data_buf[335]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[343]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[343]_i_2_n_0 ),
        .O(\gnss_data_buf[343]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \gnss_data_buf[343]_i_2 
       (.I0(\byte_cnt_reg_n_0_[4] ),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[5] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .O(\gnss_data_buf[343]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[351]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[351]_i_4_n_0 ),
        .O(\gnss_data_buf[351]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gnss_data_buf[351]_i_2 
       (.I0(reset_n),
        .O(\gnss_data_buf[351]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \gnss_data_buf[351]_i_3 
       (.I0(RX_prev_reg_C_n_0),
        .I1(RX_prev_reg_LDC_n_0),
        .I2(RX_prev_reg_P_n_0),
        .I3(i_RX_drive),
        .O(\gnss_data_buf[351]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gnss_data_buf[351]_i_4 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[0] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .O(\gnss_data_buf[351]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[39]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[55]_i_2_n_0 ),
        .O(\gnss_data_buf[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \gnss_data_buf[47]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[63]_i_2_n_0 ),
        .O(\gnss_data_buf[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[55]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[55]_i_2_n_0 ),
        .O(\gnss_data_buf[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gnss_data_buf[55]_i_2 
       (.I0(\byte_cnt_reg_n_0_[0] ),
        .I1(\byte_cnt_reg_n_0_[5] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[2] ),
        .O(\gnss_data_buf[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gnss_data_buf[63]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[63]_i_2_n_0 ),
        .O(\gnss_data_buf[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \gnss_data_buf[63]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[4] ),
        .I2(\byte_cnt_reg_n_0_[2] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .O(\gnss_data_buf[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[71]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[87]_i_2_n_0 ),
        .O(\gnss_data_buf[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gnss_data_buf[79]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[95]_i_2_n_0 ),
        .O(\gnss_data_buf[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \gnss_data_buf[7]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[87]_i_2_n_0 ),
        .O(\gnss_data_buf[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[87]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[87]_i_2_n_0 ),
        .O(\gnss_data_buf[87]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \gnss_data_buf[87]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .O(\gnss_data_buf[87]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \gnss_data_buf[95]_i_1 
       (.I0(\byte_cnt_reg_n_0_[1] ),
        .I1(\byte_cnt_reg_n_0_[3] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\gnss_data_buf[351]_i_3_n_0 ),
        .I5(\gnss_data_buf[95]_i_2_n_0 ),
        .O(\gnss_data_buf[95]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gnss_data_buf[95]_i_2 
       (.I0(\byte_cnt_reg_n_0_[5] ),
        .I1(\byte_cnt_reg_n_0_[2] ),
        .I2(\byte_cnt_reg_n_0_[4] ),
        .I3(\byte_cnt_reg_n_0_[0] ),
        .O(\gnss_data_buf[95]_i_2_n_0 ));
  FDCE \gnss_data_buf_reg[0] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[0]));
  FDCE \gnss_data_buf_reg[100] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[100]));
  FDCE \gnss_data_buf_reg[101] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[101]));
  FDCE \gnss_data_buf_reg[102] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[102]));
  FDCE \gnss_data_buf_reg[103] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[103]));
  FDCE \gnss_data_buf_reg[104] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[104]));
  FDCE \gnss_data_buf_reg[105] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[105]));
  FDCE \gnss_data_buf_reg[106] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[106]));
  FDCE \gnss_data_buf_reg[107] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[107]));
  FDCE \gnss_data_buf_reg[108] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[108]));
  FDCE \gnss_data_buf_reg[109] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[109]));
  FDCE \gnss_data_buf_reg[10] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[10]));
  FDCE \gnss_data_buf_reg[110] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[110]));
  FDCE \gnss_data_buf_reg[111] 
       (.C(sysclk),
        .CE(\gnss_data_buf[111]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[111]));
  FDCE \gnss_data_buf_reg[112] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[112]));
  FDCE \gnss_data_buf_reg[113] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[113]));
  FDCE \gnss_data_buf_reg[114] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[114]));
  FDCE \gnss_data_buf_reg[115] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[115]));
  FDCE \gnss_data_buf_reg[116] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[116]));
  FDCE \gnss_data_buf_reg[117] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[117]));
  FDCE \gnss_data_buf_reg[118] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[118]));
  FDCE \gnss_data_buf_reg[119] 
       (.C(sysclk),
        .CE(\gnss_data_buf[119]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[119]));
  FDCE \gnss_data_buf_reg[11] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[11]));
  FDCE \gnss_data_buf_reg[120] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[120]));
  FDCE \gnss_data_buf_reg[121] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[121]));
  FDCE \gnss_data_buf_reg[122] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[122]));
  FDCE \gnss_data_buf_reg[123] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[123]));
  FDCE \gnss_data_buf_reg[124] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[124]));
  FDCE \gnss_data_buf_reg[125] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[125]));
  FDCE \gnss_data_buf_reg[126] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[126]));
  FDCE \gnss_data_buf_reg[127] 
       (.C(sysclk),
        .CE(\gnss_data_buf[127]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[127]));
  FDCE \gnss_data_buf_reg[128] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[128]));
  FDCE \gnss_data_buf_reg[129] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[129]));
  FDCE \gnss_data_buf_reg[12] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[12]));
  FDCE \gnss_data_buf_reg[130] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[130]));
  FDCE \gnss_data_buf_reg[131] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[131]));
  FDCE \gnss_data_buf_reg[132] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[132]));
  FDCE \gnss_data_buf_reg[133] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[133]));
  FDCE \gnss_data_buf_reg[134] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[134]));
  FDCE \gnss_data_buf_reg[135] 
       (.C(sysclk),
        .CE(\gnss_data_buf[135]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[135]));
  FDCE \gnss_data_buf_reg[136] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[136]));
  FDCE \gnss_data_buf_reg[137] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[137]));
  FDCE \gnss_data_buf_reg[138] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[138]));
  FDCE \gnss_data_buf_reg[139] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[139]));
  FDCE \gnss_data_buf_reg[13] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[13]));
  FDCE \gnss_data_buf_reg[140] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[140]));
  FDCE \gnss_data_buf_reg[141] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[141]));
  FDCE \gnss_data_buf_reg[142] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[142]));
  FDCE \gnss_data_buf_reg[143] 
       (.C(sysclk),
        .CE(\gnss_data_buf[143]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[143]));
  FDCE \gnss_data_buf_reg[144] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[144]));
  FDCE \gnss_data_buf_reg[145] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[145]));
  FDCE \gnss_data_buf_reg[146] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[146]));
  FDCE \gnss_data_buf_reg[147] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[147]));
  FDCE \gnss_data_buf_reg[148] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[148]));
  FDCE \gnss_data_buf_reg[149] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[149]));
  FDCE \gnss_data_buf_reg[14] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[14]));
  FDCE \gnss_data_buf_reg[150] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[150]));
  FDCE \gnss_data_buf_reg[151] 
       (.C(sysclk),
        .CE(\gnss_data_buf[151]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[151]));
  FDCE \gnss_data_buf_reg[152] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[152]));
  FDCE \gnss_data_buf_reg[153] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[153]));
  FDCE \gnss_data_buf_reg[154] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[154]));
  FDCE \gnss_data_buf_reg[155] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[155]));
  FDCE \gnss_data_buf_reg[156] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[156]));
  FDCE \gnss_data_buf_reg[157] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[157]));
  FDCE \gnss_data_buf_reg[158] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[158]));
  FDCE \gnss_data_buf_reg[159] 
       (.C(sysclk),
        .CE(\gnss_data_buf[159]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[159]));
  FDCE \gnss_data_buf_reg[15] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[15]));
  FDCE \gnss_data_buf_reg[160] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[160]));
  FDCE \gnss_data_buf_reg[161] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[161]));
  FDCE \gnss_data_buf_reg[162] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[162]));
  FDCE \gnss_data_buf_reg[163] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[163]));
  FDCE \gnss_data_buf_reg[164] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[164]));
  FDCE \gnss_data_buf_reg[165] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[165]));
  FDCE \gnss_data_buf_reg[166] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[166]));
  FDCE \gnss_data_buf_reg[167] 
       (.C(sysclk),
        .CE(\gnss_data_buf[167]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[167]));
  FDCE \gnss_data_buf_reg[168] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[168]));
  FDCE \gnss_data_buf_reg[169] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[169]));
  FDCE \gnss_data_buf_reg[16] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[16]));
  FDCE \gnss_data_buf_reg[170] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[170]));
  FDCE \gnss_data_buf_reg[171] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[171]));
  FDCE \gnss_data_buf_reg[172] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[172]));
  FDCE \gnss_data_buf_reg[173] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[173]));
  FDCE \gnss_data_buf_reg[174] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[174]));
  FDCE \gnss_data_buf_reg[175] 
       (.C(sysclk),
        .CE(\gnss_data_buf[175]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[175]));
  FDCE \gnss_data_buf_reg[176] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[176]));
  FDCE \gnss_data_buf_reg[177] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[177]));
  FDCE \gnss_data_buf_reg[178] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[178]));
  FDCE \gnss_data_buf_reg[179] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[179]));
  FDCE \gnss_data_buf_reg[17] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[17]));
  FDCE \gnss_data_buf_reg[180] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[180]));
  FDCE \gnss_data_buf_reg[181] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[181]));
  FDCE \gnss_data_buf_reg[182] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[182]));
  FDCE \gnss_data_buf_reg[183] 
       (.C(sysclk),
        .CE(\gnss_data_buf[183]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[183]));
  FDCE \gnss_data_buf_reg[184] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[184]));
  FDCE \gnss_data_buf_reg[185] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[185]));
  FDCE \gnss_data_buf_reg[186] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[186]));
  FDCE \gnss_data_buf_reg[187] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[187]));
  FDCE \gnss_data_buf_reg[188] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[188]));
  FDCE \gnss_data_buf_reg[189] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[189]));
  FDCE \gnss_data_buf_reg[18] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[18]));
  FDCE \gnss_data_buf_reg[190] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[190]));
  FDCE \gnss_data_buf_reg[191] 
       (.C(sysclk),
        .CE(\gnss_data_buf[191]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[191]));
  FDCE \gnss_data_buf_reg[192] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[192]));
  FDCE \gnss_data_buf_reg[193] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[193]));
  FDCE \gnss_data_buf_reg[194] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[194]));
  FDCE \gnss_data_buf_reg[195] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[195]));
  FDCE \gnss_data_buf_reg[196] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[196]));
  FDCE \gnss_data_buf_reg[197] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[197]));
  FDCE \gnss_data_buf_reg[198] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[198]));
  FDCE \gnss_data_buf_reg[199] 
       (.C(sysclk),
        .CE(\gnss_data_buf[199]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[199]));
  FDCE \gnss_data_buf_reg[19] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[19]));
  FDCE \gnss_data_buf_reg[1] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[1]));
  FDCE \gnss_data_buf_reg[200] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[200]));
  FDCE \gnss_data_buf_reg[201] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[201]));
  FDCE \gnss_data_buf_reg[202] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[202]));
  FDCE \gnss_data_buf_reg[203] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[203]));
  FDCE \gnss_data_buf_reg[204] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[204]));
  FDCE \gnss_data_buf_reg[205] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[205]));
  FDCE \gnss_data_buf_reg[206] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[206]));
  FDCE \gnss_data_buf_reg[207] 
       (.C(sysclk),
        .CE(\gnss_data_buf[207]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[207]));
  FDCE \gnss_data_buf_reg[208] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[208]));
  FDCE \gnss_data_buf_reg[209] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[209]));
  FDCE \gnss_data_buf_reg[20] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[20]));
  FDCE \gnss_data_buf_reg[210] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[210]));
  FDCE \gnss_data_buf_reg[211] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[211]));
  FDCE \gnss_data_buf_reg[212] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[212]));
  FDCE \gnss_data_buf_reg[213] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[213]));
  FDCE \gnss_data_buf_reg[214] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[214]));
  FDCE \gnss_data_buf_reg[215] 
       (.C(sysclk),
        .CE(\gnss_data_buf[215]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[215]));
  FDCE \gnss_data_buf_reg[216] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[216]));
  FDCE \gnss_data_buf_reg[217] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[217]));
  FDCE \gnss_data_buf_reg[218] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[218]));
  FDCE \gnss_data_buf_reg[219] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[219]));
  FDCE \gnss_data_buf_reg[21] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[21]));
  FDCE \gnss_data_buf_reg[220] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[220]));
  FDCE \gnss_data_buf_reg[221] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[221]));
  FDCE \gnss_data_buf_reg[222] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[222]));
  FDCE \gnss_data_buf_reg[223] 
       (.C(sysclk),
        .CE(\gnss_data_buf[223]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[223]));
  FDCE \gnss_data_buf_reg[224] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[224]));
  FDCE \gnss_data_buf_reg[225] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[225]));
  FDCE \gnss_data_buf_reg[226] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[226]));
  FDCE \gnss_data_buf_reg[227] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[227]));
  FDCE \gnss_data_buf_reg[228] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[228]));
  FDCE \gnss_data_buf_reg[229] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[229]));
  FDCE \gnss_data_buf_reg[22] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[22]));
  FDCE \gnss_data_buf_reg[230] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[230]));
  FDCE \gnss_data_buf_reg[231] 
       (.C(sysclk),
        .CE(\gnss_data_buf[231]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[231]));
  FDCE \gnss_data_buf_reg[232] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[232]));
  FDCE \gnss_data_buf_reg[233] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[233]));
  FDCE \gnss_data_buf_reg[234] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[234]));
  FDCE \gnss_data_buf_reg[235] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[235]));
  FDCE \gnss_data_buf_reg[236] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[236]));
  FDCE \gnss_data_buf_reg[237] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[237]));
  FDCE \gnss_data_buf_reg[238] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[238]));
  FDCE \gnss_data_buf_reg[239] 
       (.C(sysclk),
        .CE(\gnss_data_buf[239]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[239]));
  FDCE \gnss_data_buf_reg[23] 
       (.C(sysclk),
        .CE(\gnss_data_buf[23]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[23]));
  FDCE \gnss_data_buf_reg[240] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[240]));
  FDCE \gnss_data_buf_reg[241] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[241]));
  FDCE \gnss_data_buf_reg[242] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[242]));
  FDCE \gnss_data_buf_reg[243] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[243]));
  FDCE \gnss_data_buf_reg[244] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[244]));
  FDCE \gnss_data_buf_reg[245] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[245]));
  FDCE \gnss_data_buf_reg[246] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[246]));
  FDCE \gnss_data_buf_reg[247] 
       (.C(sysclk),
        .CE(\gnss_data_buf[247]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[247]));
  FDCE \gnss_data_buf_reg[248] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[248]));
  FDCE \gnss_data_buf_reg[249] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[249]));
  FDCE \gnss_data_buf_reg[24] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[24]));
  FDCE \gnss_data_buf_reg[250] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[250]));
  FDCE \gnss_data_buf_reg[251] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[251]));
  FDCE \gnss_data_buf_reg[252] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[252]));
  FDCE \gnss_data_buf_reg[253] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[253]));
  FDCE \gnss_data_buf_reg[254] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[254]));
  FDCE \gnss_data_buf_reg[255] 
       (.C(sysclk),
        .CE(\gnss_data_buf[255]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[255]));
  FDCE \gnss_data_buf_reg[256] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[256]));
  FDCE \gnss_data_buf_reg[257] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[257]));
  FDCE \gnss_data_buf_reg[258] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[258]));
  FDCE \gnss_data_buf_reg[259] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[259]));
  FDCE \gnss_data_buf_reg[25] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[25]));
  FDCE \gnss_data_buf_reg[260] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[260]));
  FDCE \gnss_data_buf_reg[261] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[261]));
  FDCE \gnss_data_buf_reg[262] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[262]));
  FDCE \gnss_data_buf_reg[263] 
       (.C(sysclk),
        .CE(\gnss_data_buf[263]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[263]));
  FDCE \gnss_data_buf_reg[264] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[264]));
  FDCE \gnss_data_buf_reg[265] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[265]));
  FDCE \gnss_data_buf_reg[266] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[266]));
  FDCE \gnss_data_buf_reg[267] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[267]));
  FDCE \gnss_data_buf_reg[268] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[268]));
  FDCE \gnss_data_buf_reg[269] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[269]));
  FDCE \gnss_data_buf_reg[26] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[26]));
  FDCE \gnss_data_buf_reg[270] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[270]));
  FDCE \gnss_data_buf_reg[271] 
       (.C(sysclk),
        .CE(\gnss_data_buf[271]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[271]));
  FDCE \gnss_data_buf_reg[272] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[272]));
  FDCE \gnss_data_buf_reg[273] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[273]));
  FDCE \gnss_data_buf_reg[274] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[274]));
  FDCE \gnss_data_buf_reg[275] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[275]));
  FDCE \gnss_data_buf_reg[276] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[276]));
  FDCE \gnss_data_buf_reg[277] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[277]));
  FDCE \gnss_data_buf_reg[278] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[278]));
  FDCE \gnss_data_buf_reg[279] 
       (.C(sysclk),
        .CE(\gnss_data_buf[279]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[279]));
  FDCE \gnss_data_buf_reg[27] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[27]));
  FDCE \gnss_data_buf_reg[280] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[280]));
  FDCE \gnss_data_buf_reg[281] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[281]));
  FDCE \gnss_data_buf_reg[282] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[282]));
  FDCE \gnss_data_buf_reg[283] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[283]));
  FDCE \gnss_data_buf_reg[284] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[284]));
  FDCE \gnss_data_buf_reg[285] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[285]));
  FDCE \gnss_data_buf_reg[286] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[286]));
  FDCE \gnss_data_buf_reg[287] 
       (.C(sysclk),
        .CE(\gnss_data_buf[287]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[287]));
  FDCE \gnss_data_buf_reg[288] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[288]));
  FDCE \gnss_data_buf_reg[289] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[289]));
  FDCE \gnss_data_buf_reg[28] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[28]));
  FDCE \gnss_data_buf_reg[290] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[290]));
  FDCE \gnss_data_buf_reg[291] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[291]));
  FDCE \gnss_data_buf_reg[292] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[292]));
  FDCE \gnss_data_buf_reg[293] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[293]));
  FDCE \gnss_data_buf_reg[294] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[294]));
  FDCE \gnss_data_buf_reg[295] 
       (.C(sysclk),
        .CE(\gnss_data_buf[295]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[295]));
  FDCE \gnss_data_buf_reg[296] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[296]));
  FDCE \gnss_data_buf_reg[297] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[297]));
  FDCE \gnss_data_buf_reg[298] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[298]));
  FDCE \gnss_data_buf_reg[299] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[299]));
  FDCE \gnss_data_buf_reg[29] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[29]));
  FDCE \gnss_data_buf_reg[2] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[2]));
  FDCE \gnss_data_buf_reg[300] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[300]));
  FDCE \gnss_data_buf_reg[301] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[301]));
  FDCE \gnss_data_buf_reg[302] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[302]));
  FDCE \gnss_data_buf_reg[303] 
       (.C(sysclk),
        .CE(\gnss_data_buf[303]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[303]));
  FDCE \gnss_data_buf_reg[304] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[304]));
  FDCE \gnss_data_buf_reg[305] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[305]));
  FDCE \gnss_data_buf_reg[306] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[306]));
  FDCE \gnss_data_buf_reg[307] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[307]));
  FDCE \gnss_data_buf_reg[308] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[308]));
  FDCE \gnss_data_buf_reg[309] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[309]));
  FDCE \gnss_data_buf_reg[30] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[30]));
  FDCE \gnss_data_buf_reg[310] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[310]));
  FDCE \gnss_data_buf_reg[311] 
       (.C(sysclk),
        .CE(\gnss_data_buf[311]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[311]));
  FDCE \gnss_data_buf_reg[312] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[312]));
  FDCE \gnss_data_buf_reg[313] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[313]));
  FDCE \gnss_data_buf_reg[314] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[314]));
  FDCE \gnss_data_buf_reg[315] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[315]));
  FDCE \gnss_data_buf_reg[316] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[316]));
  FDCE \gnss_data_buf_reg[317] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[317]));
  FDCE \gnss_data_buf_reg[318] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[318]));
  FDCE \gnss_data_buf_reg[319] 
       (.C(sysclk),
        .CE(\gnss_data_buf[319]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[319]));
  FDCE \gnss_data_buf_reg[31] 
       (.C(sysclk),
        .CE(\gnss_data_buf[31]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[31]));
  FDCE \gnss_data_buf_reg[320] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[320]));
  FDCE \gnss_data_buf_reg[321] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[321]));
  FDCE \gnss_data_buf_reg[322] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[322]));
  FDCE \gnss_data_buf_reg[323] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[323]));
  FDCE \gnss_data_buf_reg[324] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[324]));
  FDCE \gnss_data_buf_reg[325] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[325]));
  FDCE \gnss_data_buf_reg[326] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[326]));
  FDCE \gnss_data_buf_reg[327] 
       (.C(sysclk),
        .CE(\gnss_data_buf[327]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[327]));
  FDCE \gnss_data_buf_reg[328] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[328]));
  FDCE \gnss_data_buf_reg[329] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[329]));
  FDCE \gnss_data_buf_reg[32] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[32]));
  FDCE \gnss_data_buf_reg[330] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[330]));
  FDCE \gnss_data_buf_reg[331] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[331]));
  FDCE \gnss_data_buf_reg[332] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[332]));
  FDCE \gnss_data_buf_reg[333] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[333]));
  FDCE \gnss_data_buf_reg[334] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[334]));
  FDCE \gnss_data_buf_reg[335] 
       (.C(sysclk),
        .CE(\gnss_data_buf[335]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[335]));
  FDCE \gnss_data_buf_reg[336] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[336]));
  FDCE \gnss_data_buf_reg[337] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[337]));
  FDCE \gnss_data_buf_reg[338] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[338]));
  FDCE \gnss_data_buf_reg[339] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[339]));
  FDCE \gnss_data_buf_reg[33] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[33]));
  FDCE \gnss_data_buf_reg[340] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[340]));
  FDCE \gnss_data_buf_reg[341] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[341]));
  FDCE \gnss_data_buf_reg[342] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[342]));
  FDCE \gnss_data_buf_reg[343] 
       (.C(sysclk),
        .CE(\gnss_data_buf[343]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[343]));
  FDCE \gnss_data_buf_reg[344] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[344]));
  FDCE \gnss_data_buf_reg[345] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[345]));
  FDCE \gnss_data_buf_reg[346] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[346]));
  FDCE \gnss_data_buf_reg[347] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[347]));
  FDCE \gnss_data_buf_reg[348] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[348]));
  FDCE \gnss_data_buf_reg[349] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[349]));
  FDCE \gnss_data_buf_reg[34] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[34]));
  FDCE \gnss_data_buf_reg[350] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[350]));
  FDCE \gnss_data_buf_reg[351] 
       (.C(sysclk),
        .CE(\gnss_data_buf[351]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[351]));
  FDCE \gnss_data_buf_reg[35] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[35]));
  FDCE \gnss_data_buf_reg[36] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[36]));
  FDCE \gnss_data_buf_reg[37] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[37]));
  FDCE \gnss_data_buf_reg[38] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[38]));
  FDCE \gnss_data_buf_reg[39] 
       (.C(sysclk),
        .CE(\gnss_data_buf[39]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[39]));
  FDCE \gnss_data_buf_reg[3] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[3]));
  FDCE \gnss_data_buf_reg[40] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[40]));
  FDCE \gnss_data_buf_reg[41] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[41]));
  FDCE \gnss_data_buf_reg[42] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[42]));
  FDCE \gnss_data_buf_reg[43] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[43]));
  FDCE \gnss_data_buf_reg[44] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[44]));
  FDCE \gnss_data_buf_reg[45] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[45]));
  FDCE \gnss_data_buf_reg[46] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[46]));
  FDCE \gnss_data_buf_reg[47] 
       (.C(sysclk),
        .CE(\gnss_data_buf[47]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[47]));
  FDCE \gnss_data_buf_reg[48] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[48]));
  FDCE \gnss_data_buf_reg[49] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[49]));
  FDCE \gnss_data_buf_reg[4] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[4]));
  FDCE \gnss_data_buf_reg[50] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[50]));
  FDCE \gnss_data_buf_reg[51] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[51]));
  FDCE \gnss_data_buf_reg[52] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[52]));
  FDCE \gnss_data_buf_reg[53] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[53]));
  FDCE \gnss_data_buf_reg[54] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[54]));
  FDCE \gnss_data_buf_reg[55] 
       (.C(sysclk),
        .CE(\gnss_data_buf[55]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[55]));
  FDCE \gnss_data_buf_reg[56] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[56]));
  FDCE \gnss_data_buf_reg[57] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[57]));
  FDCE \gnss_data_buf_reg[58] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[58]));
  FDCE \gnss_data_buf_reg[59] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[59]));
  FDCE \gnss_data_buf_reg[5] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[5]));
  FDCE \gnss_data_buf_reg[60] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[60]));
  FDCE \gnss_data_buf_reg[61] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[61]));
  FDCE \gnss_data_buf_reg[62] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[62]));
  FDCE \gnss_data_buf_reg[63] 
       (.C(sysclk),
        .CE(\gnss_data_buf[63]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[63]));
  FDCE \gnss_data_buf_reg[64] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[64]));
  FDCE \gnss_data_buf_reg[65] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[65]));
  FDCE \gnss_data_buf_reg[66] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[66]));
  FDCE \gnss_data_buf_reg[67] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[67]));
  FDCE \gnss_data_buf_reg[68] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[68]));
  FDCE \gnss_data_buf_reg[69] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[69]));
  FDCE \gnss_data_buf_reg[6] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[6]));
  FDCE \gnss_data_buf_reg[70] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[70]));
  FDCE \gnss_data_buf_reg[71] 
       (.C(sysclk),
        .CE(\gnss_data_buf[71]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[71]));
  FDCE \gnss_data_buf_reg[72] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[72]));
  FDCE \gnss_data_buf_reg[73] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[73]));
  FDCE \gnss_data_buf_reg[74] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[74]));
  FDCE \gnss_data_buf_reg[75] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[75]));
  FDCE \gnss_data_buf_reg[76] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[76]));
  FDCE \gnss_data_buf_reg[77] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[77]));
  FDCE \gnss_data_buf_reg[78] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[78]));
  FDCE \gnss_data_buf_reg[79] 
       (.C(sysclk),
        .CE(\gnss_data_buf[79]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[79]));
  FDCE \gnss_data_buf_reg[7] 
       (.C(sysclk),
        .CE(\gnss_data_buf[7]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[7]));
  FDCE \gnss_data_buf_reg[80] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[80]));
  FDCE \gnss_data_buf_reg[81] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[81]));
  FDCE \gnss_data_buf_reg[82] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[82]));
  FDCE \gnss_data_buf_reg[83] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[83]));
  FDCE \gnss_data_buf_reg[84] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[84]));
  FDCE \gnss_data_buf_reg[85] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[85]));
  FDCE \gnss_data_buf_reg[86] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[86]));
  FDCE \gnss_data_buf_reg[87] 
       (.C(sysclk),
        .CE(\gnss_data_buf[87]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[87]));
  FDCE \gnss_data_buf_reg[88] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[88]));
  FDCE \gnss_data_buf_reg[89] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[89]));
  FDCE \gnss_data_buf_reg[8] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[8]));
  FDCE \gnss_data_buf_reg[90] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[90]));
  FDCE \gnss_data_buf_reg[91] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[91]));
  FDCE \gnss_data_buf_reg[92] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[92]));
  FDCE \gnss_data_buf_reg[93] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[93]));
  FDCE \gnss_data_buf_reg[94] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[94]));
  FDCE \gnss_data_buf_reg[95] 
       (.C(sysclk),
        .CE(\gnss_data_buf[95]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[95]));
  FDCE \gnss_data_buf_reg[96] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[96]));
  FDCE \gnss_data_buf_reg[97] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[97]));
  FDCE \gnss_data_buf_reg[98] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[98]));
  FDCE \gnss_data_buf_reg[99] 
       (.C(sysclk),
        .CE(\gnss_data_buf[103]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[99]));
  FDCE \gnss_data_buf_reg[9] 
       (.C(sysclk),
        .CE(\gnss_data_buf[15]_i_1_n_0 ),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[9]));
  LUT4 #(
    .INIT(16'hFF40)) 
    led1_i_1
       (.I0(\gnss_data_buf[351]_i_3_n_0 ),
        .I1(led1_i_2_n_0),
        .I2(led1_i_3_n_0),
        .I3(led1),
        .O(led1_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    led1_i_2
       (.I0(i_gnss_data[0]),
        .I1(i_gnss_data[1]),
        .I2(i_gnss_data[3]),
        .I3(i_gnss_data[2]),
        .O(led1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    led1_i_3
       (.I0(i_gnss_data[6]),
        .I1(i_gnss_data[7]),
        .I2(i_gnss_data[4]),
        .I3(i_gnss_data[5]),
        .I4(state[1]),
        .I5(state[0]),
        .O(led1_i_3_n_0));
  FDCE led1_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(led1_i_1_n_0),
        .Q(led1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    o_gnss_drive_i_1
       (.I0(o_gnss_drive),
        .I1(state[0]),
        .I2(state[1]),
        .O(o_gnss_drive_i_1_n_0));
  FDCE o_gnss_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[351]_i_2_n_0 ),
        .D(o_gnss_drive_i_1_n_0),
        .Q(o_gnss_drive));
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Sep 28 14:06:00 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_simple_SRAM_test/PCB_simple_SRAM_test.gen/sources_1/bd/simple_PCB_test/ip/simple_PCB_test_SRAM_controller_0_0/simple_PCB_test_SRAM_controller_0_0_sim_netlist.v
// Design      : simple_PCB_test_SRAM_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simple_PCB_test_SRAM_controller_0_0,SRAM_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SRAM_controller,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module simple_PCB_test_SRAM_controller_0_0
   (sysclk,
    reset_n,
    o_BF_drive,
    A,
    DQ_i,
    DQ_o,
    DQ_t,
    dec,
    CE_n,
    WE_n,
    BF_packet);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output o_BF_drive;
  output [21:0]A;
  input [15:0]DQ_i;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output [2:0]dec;
  output CE_n;
  output WE_n;
  output [223:0]BF_packet;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]\^A ;
  wire [165:150]\^BF_packet ;
  wire CE_n;
  wire [15:0]DQ_i;
  wire [0:0]\^DQ_t ;
  wire WE_n;
  wire o_BF_drive;
  wire reset_n;
  wire sysclk;

  assign A[21] = \<const0> ;
  assign A[20] = \<const0> ;
  assign A[19] = \<const0> ;
  assign A[18] = \<const0> ;
  assign A[17] = \<const0> ;
  assign A[16] = \<const0> ;
  assign A[15] = \<const0> ;
  assign A[14] = \<const0> ;
  assign A[13] = \<const0> ;
  assign A[12] = \<const0> ;
  assign A[11] = \<const0> ;
  assign A[10] = \<const0> ;
  assign A[9] = \<const0> ;
  assign A[8] = \<const0> ;
  assign A[7] = \<const0> ;
  assign A[6] = \<const0> ;
  assign A[5] = \<const0> ;
  assign A[4] = \<const0> ;
  assign A[3] = \<const0> ;
  assign A[2] = \<const0> ;
  assign A[1] = \<const0> ;
  assign A[0] = \^A [0];
  assign BF_packet[223] = \<const0> ;
  assign BF_packet[222] = \<const1> ;
  assign BF_packet[221] = \<const0> ;
  assign BF_packet[220] = \<const0> ;
  assign BF_packet[219] = \<const0> ;
  assign BF_packet[218] = \<const0> ;
  assign BF_packet[217] = \<const0> ;
  assign BF_packet[216] = \<const0> ;
  assign BF_packet[215] = \<const0> ;
  assign BF_packet[214] = \<const0> ;
  assign BF_packet[213] = \<const0> ;
  assign BF_packet[212] = \<const0> ;
  assign BF_packet[211] = \<const0> ;
  assign BF_packet[210] = \<const0> ;
  assign BF_packet[209] = \<const0> ;
  assign BF_packet[208] = \<const0> ;
  assign BF_packet[207] = \<const0> ;
  assign BF_packet[206] = \<const0> ;
  assign BF_packet[205] = \<const0> ;
  assign BF_packet[204] = \<const0> ;
  assign BF_packet[203] = \<const0> ;
  assign BF_packet[202] = \<const0> ;
  assign BF_packet[201] = \<const0> ;
  assign BF_packet[200] = \<const0> ;
  assign BF_packet[199] = \<const0> ;
  assign BF_packet[198] = \<const0> ;
  assign BF_packet[197] = \<const0> ;
  assign BF_packet[196] = \<const0> ;
  assign BF_packet[195] = \<const0> ;
  assign BF_packet[194] = \<const0> ;
  assign BF_packet[193] = \<const0> ;
  assign BF_packet[192] = \<const0> ;
  assign BF_packet[191] = \<const0> ;
  assign BF_packet[190] = \<const0> ;
  assign BF_packet[189] = \<const0> ;
  assign BF_packet[188] = \<const0> ;
  assign BF_packet[187] = \<const0> ;
  assign BF_packet[186] = \<const0> ;
  assign BF_packet[185] = \<const0> ;
  assign BF_packet[184] = \<const0> ;
  assign BF_packet[183] = \<const0> ;
  assign BF_packet[182] = \<const0> ;
  assign BF_packet[181] = \<const0> ;
  assign BF_packet[180] = \<const0> ;
  assign BF_packet[179] = \<const0> ;
  assign BF_packet[178] = \<const0> ;
  assign BF_packet[177] = \<const0> ;
  assign BF_packet[176] = \<const0> ;
  assign BF_packet[175] = \<const0> ;
  assign BF_packet[174] = \<const0> ;
  assign BF_packet[173] = \<const0> ;
  assign BF_packet[172] = \<const0> ;
  assign BF_packet[171] = \<const0> ;
  assign BF_packet[170] = \<const0> ;
  assign BF_packet[169] = \<const0> ;
  assign BF_packet[168] = \<const0> ;
  assign BF_packet[167] = \<const0> ;
  assign BF_packet[166] = \<const1> ;
  assign BF_packet[165:150] = \^BF_packet [165:150];
  assign BF_packet[149] = \<const0> ;
  assign BF_packet[148] = \<const0> ;
  assign BF_packet[147] = \<const0> ;
  assign BF_packet[146] = \<const0> ;
  assign BF_packet[145] = \<const0> ;
  assign BF_packet[144] = \<const0> ;
  assign BF_packet[143] = \<const0> ;
  assign BF_packet[142] = \<const0> ;
  assign BF_packet[141] = \<const0> ;
  assign BF_packet[140] = \<const0> ;
  assign BF_packet[139] = \<const0> ;
  assign BF_packet[138] = \<const0> ;
  assign BF_packet[137] = \<const0> ;
  assign BF_packet[136] = \<const0> ;
  assign BF_packet[135] = \<const0> ;
  assign BF_packet[134] = \<const0> ;
  assign BF_packet[133] = \<const0> ;
  assign BF_packet[132] = \<const0> ;
  assign BF_packet[131] = \<const0> ;
  assign BF_packet[130] = \<const0> ;
  assign BF_packet[129] = \<const0> ;
  assign BF_packet[128] = \<const0> ;
  assign BF_packet[127] = \<const0> ;
  assign BF_packet[126] = \<const0> ;
  assign BF_packet[125] = \<const0> ;
  assign BF_packet[124] = \<const0> ;
  assign BF_packet[123] = \<const0> ;
  assign BF_packet[122] = \<const0> ;
  assign BF_packet[121] = \<const0> ;
  assign BF_packet[120] = \<const0> ;
  assign BF_packet[119] = \<const0> ;
  assign BF_packet[118] = \<const0> ;
  assign BF_packet[117] = \<const0> ;
  assign BF_packet[116] = \<const0> ;
  assign BF_packet[115] = \<const0> ;
  assign BF_packet[114] = \<const0> ;
  assign BF_packet[113] = \<const0> ;
  assign BF_packet[112] = \<const0> ;
  assign BF_packet[111] = \<const0> ;
  assign BF_packet[110] = \<const0> ;
  assign BF_packet[109] = \<const0> ;
  assign BF_packet[108] = \<const0> ;
  assign BF_packet[107] = \<const0> ;
  assign BF_packet[106] = \<const0> ;
  assign BF_packet[105] = \<const0> ;
  assign BF_packet[104] = \<const0> ;
  assign BF_packet[103] = \<const0> ;
  assign BF_packet[102] = \<const0> ;
  assign BF_packet[101] = \<const0> ;
  assign BF_packet[100] = \<const0> ;
  assign BF_packet[99] = \<const0> ;
  assign BF_packet[98] = \<const0> ;
  assign BF_packet[97] = \<const0> ;
  assign BF_packet[96] = \<const0> ;
  assign BF_packet[95] = \<const0> ;
  assign BF_packet[94] = \<const0> ;
  assign BF_packet[93] = \<const0> ;
  assign BF_packet[92] = \<const0> ;
  assign BF_packet[91] = \<const0> ;
  assign BF_packet[90] = \<const0> ;
  assign BF_packet[89] = \<const0> ;
  assign BF_packet[88] = \<const0> ;
  assign BF_packet[87] = \<const0> ;
  assign BF_packet[86] = \<const0> ;
  assign BF_packet[85] = \<const0> ;
  assign BF_packet[84] = \<const0> ;
  assign BF_packet[83] = \<const0> ;
  assign BF_packet[82] = \<const0> ;
  assign BF_packet[81] = \<const0> ;
  assign BF_packet[80] = \<const0> ;
  assign BF_packet[79] = \<const0> ;
  assign BF_packet[78] = \<const0> ;
  assign BF_packet[77] = \<const0> ;
  assign BF_packet[76] = \<const0> ;
  assign BF_packet[75] = \<const0> ;
  assign BF_packet[74] = \<const0> ;
  assign BF_packet[73] = \<const0> ;
  assign BF_packet[72] = \<const0> ;
  assign BF_packet[71] = \<const0> ;
  assign BF_packet[70] = \<const0> ;
  assign BF_packet[69] = \<const0> ;
  assign BF_packet[68] = \<const0> ;
  assign BF_packet[67] = \<const0> ;
  assign BF_packet[66] = \<const0> ;
  assign BF_packet[65] = \<const0> ;
  assign BF_packet[64] = \<const0> ;
  assign BF_packet[63] = \<const0> ;
  assign BF_packet[62] = \<const0> ;
  assign BF_packet[61] = \<const0> ;
  assign BF_packet[60] = \<const0> ;
  assign BF_packet[59] = \<const0> ;
  assign BF_packet[58] = \<const0> ;
  assign BF_packet[57] = \<const0> ;
  assign BF_packet[56] = \<const0> ;
  assign BF_packet[55] = \<const0> ;
  assign BF_packet[54] = \<const0> ;
  assign BF_packet[53] = \<const0> ;
  assign BF_packet[52] = \<const0> ;
  assign BF_packet[51] = \<const0> ;
  assign BF_packet[50] = \<const0> ;
  assign BF_packet[49] = \<const0> ;
  assign BF_packet[48] = \<const0> ;
  assign BF_packet[47] = \<const0> ;
  assign BF_packet[46] = \<const0> ;
  assign BF_packet[45] = \<const0> ;
  assign BF_packet[44] = \<const0> ;
  assign BF_packet[43] = \<const0> ;
  assign BF_packet[42] = \<const0> ;
  assign BF_packet[41] = \<const0> ;
  assign BF_packet[40] = \<const0> ;
  assign BF_packet[39] = \<const0> ;
  assign BF_packet[38] = \<const0> ;
  assign BF_packet[37] = \<const0> ;
  assign BF_packet[36] = \<const0> ;
  assign BF_packet[35] = \<const0> ;
  assign BF_packet[34] = \<const0> ;
  assign BF_packet[33] = \<const0> ;
  assign BF_packet[32] = \<const0> ;
  assign BF_packet[31] = \<const0> ;
  assign BF_packet[30] = \<const0> ;
  assign BF_packet[29] = \<const0> ;
  assign BF_packet[28] = \<const0> ;
  assign BF_packet[27] = \<const0> ;
  assign BF_packet[26] = \<const0> ;
  assign BF_packet[25] = \<const0> ;
  assign BF_packet[24] = \<const0> ;
  assign BF_packet[23] = \<const0> ;
  assign BF_packet[22] = \<const0> ;
  assign BF_packet[21] = \<const0> ;
  assign BF_packet[20] = \<const0> ;
  assign BF_packet[19] = \<const0> ;
  assign BF_packet[18] = \<const0> ;
  assign BF_packet[17] = \<const0> ;
  assign BF_packet[16] = \<const0> ;
  assign BF_packet[15] = \<const0> ;
  assign BF_packet[14] = \<const0> ;
  assign BF_packet[13] = \<const0> ;
  assign BF_packet[12] = \<const0> ;
  assign BF_packet[11] = \<const0> ;
  assign BF_packet[10] = \<const0> ;
  assign BF_packet[9] = \<const0> ;
  assign BF_packet[8] = \<const0> ;
  assign BF_packet[7] = \<const0> ;
  assign BF_packet[6] = \<const0> ;
  assign BF_packet[5] = \<const0> ;
  assign BF_packet[4] = \<const0> ;
  assign BF_packet[3] = \<const0> ;
  assign BF_packet[2] = \<const0> ;
  assign BF_packet[1] = \<const0> ;
  assign BF_packet[0] = \<const0> ;
  assign DQ_o[15] = \<const1> ;
  assign DQ_o[14] = \<const0> ;
  assign DQ_o[13] = \<const1> ;
  assign DQ_o[12] = \<const0> ;
  assign DQ_o[11] = \<const1> ;
  assign DQ_o[10] = \<const0> ;
  assign DQ_o[9] = \<const1> ;
  assign DQ_o[8] = \<const0> ;
  assign DQ_o[7] = \<const1> ;
  assign DQ_o[6] = \<const0> ;
  assign DQ_o[5] = \<const1> ;
  assign DQ_o[4] = \<const0> ;
  assign DQ_o[3] = \<const1> ;
  assign DQ_o[2] = \<const0> ;
  assign DQ_o[1] = \<const1> ;
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
  assign dec[2] = \<const0> ;
  assign dec[1] = \<const1> ;
  assign dec[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  simple_PCB_test_SRAM_controller_0_0_SRAM_controller U0
       (.A(\^A ),
        .BF_packet(\^BF_packet ),
        .CE_n(CE_n),
        .DQ_i(DQ_i),
        .DQ_t(\^DQ_t ),
        .WE_n(WE_n),
        .o_BF_drive(o_BF_drive),
        .reset_n(reset_n),
        .sysclk(sysclk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "SRAM_controller" *) 
module simple_PCB_test_SRAM_controller_0_0_SRAM_controller
   (CE_n,
    BF_packet,
    DQ_t,
    o_BF_drive,
    A,
    WE_n,
    sysclk,
    reset_n,
    DQ_i);
  output CE_n;
  output [15:0]BF_packet;
  output [0:0]DQ_t;
  output o_BF_drive;
  output [0:0]A;
  output WE_n;
  input sysclk;
  input reset_n;
  input [15:0]DQ_i;

  wire [0:0]A;
  wire \A[0]_i_1_n_0 ;
  wire [15:0]BF_packet;
  wire BF_packet0;
  wire CE_n;
  wire CE_n_i_1_n_0;
  wire [15:0]DQ_i;
  wire [0:0]DQ_t;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire \FSM_sequential_state_reg_n_0_[2] ;
  wire WE_n;
  wire WE_n_i_1_n_0;
  wire data_buf0;
  wire o_BF_drive;
  wire o_BF_drive_i_1_n_0;
  wire o_BF_drive_i_2_n_0;
  wire [165:150]p_0_in;
  wire reset_n;
  wire [0:0]state;
  wire sysclk;
  wire wait_count0;
  wire \wait_count[0]_i_1_n_0 ;
  wire \wait_count[1]_i_1_n_0 ;
  wire \wait_count[2]_i_1_n_0 ;
  wire \wait_count[3]_i_1_n_0 ;
  wire \wait_count[4]_i_1_n_0 ;
  wire \wait_count[5]_i_1_n_0 ;
  wire \wait_count[6]_i_1_n_0 ;
  wire \wait_count[6]_i_3_n_0 ;
  wire \wait_count[6]_i_4_n_0 ;
  wire \wait_count[6]_i_5_n_0 ;
  wire \wait_count[6]_i_6_n_0 ;
  wire \wait_count[7]_i_1_n_0 ;
  wire \wait_count[7]_i_2_n_0 ;
  wire \wait_count_reg_n_0_[0] ;
  wire \wait_count_reg_n_0_[1] ;
  wire \wait_count_reg_n_0_[2] ;
  wire \wait_count_reg_n_0_[3] ;
  wire \wait_count_reg_n_0_[4] ;
  wire \wait_count_reg_n_0_[5] ;
  wire \wait_count_reg_n_0_[6] ;
  wire \wait_count_reg_n_0_[7] ;
  wire write_active;
  wire write_active_i_1_n_0;

  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \A[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(reset_n),
        .I3(state),
        .I4(A),
        .O(\A[0]_i_1_n_0 ));
  FDRE \A_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\A[0]_i_1_n_0 ),
        .Q(A),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \BF_packet[165]_i_1 
       (.I0(reset_n),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(BF_packet0));
  FDRE \BF_packet_reg[150] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[150]),
        .Q(BF_packet[0]),
        .R(1'b0));
  FDRE \BF_packet_reg[151] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[151]),
        .Q(BF_packet[1]),
        .R(1'b0));
  FDRE \BF_packet_reg[152] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[152]),
        .Q(BF_packet[2]),
        .R(1'b0));
  FDRE \BF_packet_reg[153] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[153]),
        .Q(BF_packet[3]),
        .R(1'b0));
  FDRE \BF_packet_reg[154] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[154]),
        .Q(BF_packet[4]),
        .R(1'b0));
  FDRE \BF_packet_reg[155] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[155]),
        .Q(BF_packet[5]),
        .R(1'b0));
  FDRE \BF_packet_reg[156] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[156]),
        .Q(BF_packet[6]),
        .R(1'b0));
  FDRE \BF_packet_reg[157] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[157]),
        .Q(BF_packet[7]),
        .R(1'b0));
  FDRE \BF_packet_reg[158] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[158]),
        .Q(BF_packet[8]),
        .R(1'b0));
  FDRE \BF_packet_reg[159] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[159]),
        .Q(BF_packet[9]),
        .R(1'b0));
  FDRE \BF_packet_reg[160] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[160]),
        .Q(BF_packet[10]),
        .R(1'b0));
  FDRE \BF_packet_reg[161] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[161]),
        .Q(BF_packet[11]),
        .R(1'b0));
  FDRE \BF_packet_reg[162] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[162]),
        .Q(BF_packet[12]),
        .R(1'b0));
  FDRE \BF_packet_reg[163] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[163]),
        .Q(BF_packet[13]),
        .R(1'b0));
  FDRE \BF_packet_reg[164] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[164]),
        .Q(BF_packet[14]),
        .R(1'b0));
  FDRE \BF_packet_reg[165] 
       (.C(sysclk),
        .CE(BF_packet0),
        .D(p_0_in[165]),
        .Q(BF_packet[15]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    CE_n_i_1
       (.I0(CE_n),
        .I1(state),
        .O(CE_n_i_1_n_0));
  FDCE CE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_BF_drive_i_2_n_0),
        .D(CE_n_i_1_n_0),
        .Q(CE_n));
  LUT1 #(
    .INIT(2'h1)) 
    \DQ_t[0]_INST_0 
       (.I0(write_active),
        .O(DQ_t));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h3788)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h38F0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[2] ),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\wait_count_reg_n_0_[1] ),
        .I2(\wait_count_reg_n_0_[4] ),
        .I3(\wait_count_reg_n_0_[7] ),
        .I4(\wait_count_reg_n_0_[5] ),
        .I5(\wait_count_reg_n_0_[6] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\wait_count_reg_n_0_[2] ),
        .I1(\wait_count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_BF_drive_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state));
  (* FSM_ENCODED_STATES = "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_BF_drive_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "write_hold:010,turnaround:011,read_setup:100,read_wait:101,read_capture:110,send_data:111,idle:000,write_setup:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_BF_drive_i_2_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hFE02)) 
    WE_n_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state),
        .I3(WE_n),
        .O(WE_n_i_1_n_0));
  FDPE WE_n_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(WE_n_i_1_n_0),
        .PRE(o_BF_drive_i_2_n_0),
        .Q(WE_n));
  LUT4 #(
    .INIT(16'h0080)) 
    \data_buf[15]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(reset_n),
        .I3(state),
        .O(data_buf0));
  FDRE \data_buf_reg[0] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[0]),
        .Q(p_0_in[150]),
        .R(1'b0));
  FDRE \data_buf_reg[10] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[10]),
        .Q(p_0_in[160]),
        .R(1'b0));
  FDRE \data_buf_reg[11] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[11]),
        .Q(p_0_in[161]),
        .R(1'b0));
  FDRE \data_buf_reg[12] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[12]),
        .Q(p_0_in[162]),
        .R(1'b0));
  FDRE \data_buf_reg[13] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[13]),
        .Q(p_0_in[163]),
        .R(1'b0));
  FDRE \data_buf_reg[14] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[14]),
        .Q(p_0_in[164]),
        .R(1'b0));
  FDRE \data_buf_reg[15] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[15]),
        .Q(p_0_in[165]),
        .R(1'b0));
  FDRE \data_buf_reg[1] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[1]),
        .Q(p_0_in[151]),
        .R(1'b0));
  FDRE \data_buf_reg[2] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[2]),
        .Q(p_0_in[152]),
        .R(1'b0));
  FDRE \data_buf_reg[3] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[3]),
        .Q(p_0_in[153]),
        .R(1'b0));
  FDRE \data_buf_reg[4] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[4]),
        .Q(p_0_in[154]),
        .R(1'b0));
  FDRE \data_buf_reg[5] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[5]),
        .Q(p_0_in[155]),
        .R(1'b0));
  FDRE \data_buf_reg[6] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[6]),
        .Q(p_0_in[156]),
        .R(1'b0));
  FDRE \data_buf_reg[7] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[7]),
        .Q(p_0_in[157]),
        .R(1'b0));
  FDRE \data_buf_reg[8] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[8]),
        .Q(p_0_in[158]),
        .R(1'b0));
  FDRE \data_buf_reg[9] 
       (.C(sysclk),
        .CE(data_buf0),
        .D(DQ_i[9]),
        .Q(p_0_in[159]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE80)) 
    o_BF_drive_i_1
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(o_BF_drive),
        .O(o_BF_drive_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_BF_drive_i_2
       (.I0(reset_n),
        .O(o_BF_drive_i_2_n_0));
  FDCE o_BF_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_BF_drive_i_2_n_0),
        .D(o_BF_drive_i_1_n_0),
        .Q(o_BF_drive));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_count[0]_i_1 
       (.I0(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wait_count[1]_i_1 
       (.I0(\wait_count_reg_n_0_[0] ),
        .I1(\wait_count_reg_n_0_[1] ),
        .O(\wait_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wait_count[2]_i_1 
       (.I0(\wait_count_reg_n_0_[2] ),
        .I1(\wait_count_reg_n_0_[1] ),
        .I2(\wait_count_reg_n_0_[0] ),
        .O(\wait_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wait_count[3]_i_1 
       (.I0(\wait_count_reg_n_0_[3] ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(\wait_count_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[2] ),
        .O(\wait_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wait_count[4]_i_1 
       (.I0(\wait_count_reg_n_0_[4] ),
        .I1(\wait_count_reg_n_0_[0] ),
        .I2(\wait_count_reg_n_0_[1] ),
        .I3(\wait_count_reg_n_0_[2] ),
        .I4(\wait_count_reg_n_0_[3] ),
        .O(\wait_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wait_count[5]_i_1 
       (.I0(\wait_count_reg_n_0_[5] ),
        .I1(\wait_count_reg_n_0_[3] ),
        .I2(\wait_count_reg_n_0_[2] ),
        .I3(\wait_count_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[0] ),
        .I5(\wait_count_reg_n_0_[4] ),
        .O(\wait_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h202F0000)) 
    \wait_count[6]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg_n_0_[2] ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(reset_n),
        .O(\wait_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02A202A202A222A2)) 
    \wait_count[6]_i_2 
       (.I0(reset_n),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(\wait_count[6]_i_4_n_0 ),
        .I5(\wait_count[6]_i_5_n_0 ),
        .O(wait_count0));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \wait_count[6]_i_3 
       (.I0(\wait_count_reg_n_0_[6] ),
        .I1(\wait_count_reg_n_0_[4] ),
        .I2(\wait_count[6]_i_6_n_0 ),
        .I3(\wait_count_reg_n_0_[2] ),
        .I4(\wait_count_reg_n_0_[3] ),
        .I5(\wait_count_reg_n_0_[5] ),
        .O(\wait_count[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_count[6]_i_4 
       (.I0(\wait_count_reg_n_0_[6] ),
        .I1(\wait_count_reg_n_0_[5] ),
        .I2(\wait_count_reg_n_0_[7] ),
        .I3(\wait_count_reg_n_0_[4] ),
        .O(\wait_count[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wait_count[6]_i_5 
       (.I0(\wait_count_reg_n_0_[1] ),
        .I1(\wait_count_reg_n_0_[3] ),
        .I2(\wait_count_reg_n_0_[2] ),
        .O(\wait_count[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wait_count[6]_i_6 
       (.I0(\wait_count_reg_n_0_[0] ),
        .I1(\wait_count_reg_n_0_[1] ),
        .O(\wait_count[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2A00FFFF80000000)) 
    \wait_count[7]_i_1 
       (.I0(state),
        .I1(\wait_count_reg_n_0_[6] ),
        .I2(\wait_count[7]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(wait_count0),
        .I5(\wait_count_reg_n_0_[7] ),
        .O(\wait_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wait_count[7]_i_2 
       (.I0(\wait_count_reg_n_0_[5] ),
        .I1(\wait_count_reg_n_0_[3] ),
        .I2(\wait_count_reg_n_0_[2] ),
        .I3(\wait_count_reg_n_0_[1] ),
        .I4(\wait_count_reg_n_0_[0] ),
        .I5(\wait_count_reg_n_0_[4] ),
        .O(\wait_count[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[0] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[0]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[0] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[1] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[1]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[1] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[2] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[2]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[2] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[3] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[3]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[3] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[4] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[4]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[4] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[5] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[5]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[5] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[6] 
       (.C(sysclk),
        .CE(wait_count0),
        .D(\wait_count[6]_i_3_n_0 ),
        .Q(\wait_count_reg_n_0_[6] ),
        .R(\wait_count[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_count_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\wait_count[7]_i_1_n_0 ),
        .Q(\wait_count_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hCC4C0044)) 
    write_active_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg_n_0_[2] ),
        .I4(write_active),
        .O(write_active_i_1_n_0));
  FDCE write_active_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_BF_drive_i_2_n_0),
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

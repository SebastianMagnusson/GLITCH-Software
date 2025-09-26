// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep 24 16:14:10 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_GNSS_Sender_0_0/testwith1speed_GNSS_Sender_0_0_sim_netlist.v
// Design      : testwith1speed_GNSS_Sender_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testwith1speed_GNSS_Sender_0_0,GNSS_Sender,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "GNSS_Sender,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module testwith1speed_GNSS_Sender_0_0
   (sysclk,
    reset_n,
    data_ready,
    i_gnss_data,
    o_gnss_data,
    o_gnss_drive,
    led1);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input data_ready;
  input [383:0]i_gnss_data;
  output [383:0]o_gnss_data;
  output o_gnss_drive;
  output led1;

  wire data_ready;
  wire [383:0]i_gnss_data;
  wire led1;
  wire [383:0]o_gnss_data;
  wire o_gnss_drive;
  wire reset_n;
  wire sysclk;

  testwith1speed_GNSS_Sender_0_0_GNSS_Sender U0
       (.data_ready(data_ready),
        .i_gnss_data(i_gnss_data),
        .led1(led1),
        .o_gnss_data(o_gnss_data),
        .o_gnss_drive(o_gnss_drive),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "GNSS_Sender" *) 
module testwith1speed_GNSS_Sender_0_0_GNSS_Sender
   (o_gnss_data,
    o_gnss_drive,
    led1,
    data_ready,
    sysclk,
    i_gnss_data,
    reset_n);
  output [383:0]o_gnss_data;
  output o_gnss_drive;
  output led1;
  input data_ready;
  input sysclk;
  input [383:0]i_gnss_data;
  input reset_n;

  wire data_ready;
  wire data_ready_prev;
  wire data_ready_prev_i_1_n_0;
  wire \gnss_data_buf[383]_i_1_n_0 ;
  wire \gnss_data_buf[383]_i_2_n_0 ;
  wire [383:0]i_gnss_data;
  wire led1;
  wire led1_i_1_n_0;
  wire [383:0]o_gnss_data;
  wire o_gnss_drive;
  wire reset_n;
  wire state;
  wire sysclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ready_prev_i_1
       (.I0(data_ready_prev),
        .I1(state),
        .I2(data_ready),
        .O(data_ready_prev_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_ready_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(data_ready_prev_i_1_n_0),
        .Q(data_ready_prev));
  LUT3 #(
    .INIT(8'h04)) 
    \gnss_data_buf[383]_i_1 
       (.I0(data_ready_prev),
        .I1(data_ready),
        .I2(state),
        .O(\gnss_data_buf[383]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gnss_data_buf[383]_i_2 
       (.I0(reset_n),
        .O(\gnss_data_buf[383]_i_2_n_0 ));
  FDCE \gnss_data_buf_reg[0] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[0]),
        .Q(o_gnss_data[0]));
  FDCE \gnss_data_buf_reg[100] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[100]),
        .Q(o_gnss_data[100]));
  FDCE \gnss_data_buf_reg[101] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[101]),
        .Q(o_gnss_data[101]));
  FDCE \gnss_data_buf_reg[102] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[102]),
        .Q(o_gnss_data[102]));
  FDCE \gnss_data_buf_reg[103] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[103]),
        .Q(o_gnss_data[103]));
  FDCE \gnss_data_buf_reg[104] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[104]),
        .Q(o_gnss_data[104]));
  FDCE \gnss_data_buf_reg[105] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[105]),
        .Q(o_gnss_data[105]));
  FDCE \gnss_data_buf_reg[106] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[106]),
        .Q(o_gnss_data[106]));
  FDCE \gnss_data_buf_reg[107] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[107]),
        .Q(o_gnss_data[107]));
  FDCE \gnss_data_buf_reg[108] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[108]),
        .Q(o_gnss_data[108]));
  FDCE \gnss_data_buf_reg[109] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[109]),
        .Q(o_gnss_data[109]));
  FDCE \gnss_data_buf_reg[10] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[10]),
        .Q(o_gnss_data[10]));
  FDCE \gnss_data_buf_reg[110] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[110]),
        .Q(o_gnss_data[110]));
  FDCE \gnss_data_buf_reg[111] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[111]),
        .Q(o_gnss_data[111]));
  FDCE \gnss_data_buf_reg[112] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[112]),
        .Q(o_gnss_data[112]));
  FDCE \gnss_data_buf_reg[113] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[113]),
        .Q(o_gnss_data[113]));
  FDCE \gnss_data_buf_reg[114] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[114]),
        .Q(o_gnss_data[114]));
  FDCE \gnss_data_buf_reg[115] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[115]),
        .Q(o_gnss_data[115]));
  FDCE \gnss_data_buf_reg[116] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[116]),
        .Q(o_gnss_data[116]));
  FDCE \gnss_data_buf_reg[117] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[117]),
        .Q(o_gnss_data[117]));
  FDCE \gnss_data_buf_reg[118] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[118]),
        .Q(o_gnss_data[118]));
  FDCE \gnss_data_buf_reg[119] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[119]),
        .Q(o_gnss_data[119]));
  FDCE \gnss_data_buf_reg[11] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[11]),
        .Q(o_gnss_data[11]));
  FDCE \gnss_data_buf_reg[120] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[120]),
        .Q(o_gnss_data[120]));
  FDCE \gnss_data_buf_reg[121] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[121]),
        .Q(o_gnss_data[121]));
  FDCE \gnss_data_buf_reg[122] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[122]),
        .Q(o_gnss_data[122]));
  FDCE \gnss_data_buf_reg[123] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[123]),
        .Q(o_gnss_data[123]));
  FDCE \gnss_data_buf_reg[124] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[124]),
        .Q(o_gnss_data[124]));
  FDCE \gnss_data_buf_reg[125] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[125]),
        .Q(o_gnss_data[125]));
  FDCE \gnss_data_buf_reg[126] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[126]),
        .Q(o_gnss_data[126]));
  FDCE \gnss_data_buf_reg[127] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[127]),
        .Q(o_gnss_data[127]));
  FDCE \gnss_data_buf_reg[128] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[128]),
        .Q(o_gnss_data[128]));
  FDCE \gnss_data_buf_reg[129] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[129]),
        .Q(o_gnss_data[129]));
  FDCE \gnss_data_buf_reg[12] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[12]),
        .Q(o_gnss_data[12]));
  FDCE \gnss_data_buf_reg[130] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[130]),
        .Q(o_gnss_data[130]));
  FDCE \gnss_data_buf_reg[131] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[131]),
        .Q(o_gnss_data[131]));
  FDCE \gnss_data_buf_reg[132] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[132]),
        .Q(o_gnss_data[132]));
  FDCE \gnss_data_buf_reg[133] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[133]),
        .Q(o_gnss_data[133]));
  FDCE \gnss_data_buf_reg[134] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[134]),
        .Q(o_gnss_data[134]));
  FDCE \gnss_data_buf_reg[135] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[135]),
        .Q(o_gnss_data[135]));
  FDCE \gnss_data_buf_reg[136] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[136]),
        .Q(o_gnss_data[136]));
  FDCE \gnss_data_buf_reg[137] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[137]),
        .Q(o_gnss_data[137]));
  FDCE \gnss_data_buf_reg[138] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[138]),
        .Q(o_gnss_data[138]));
  FDCE \gnss_data_buf_reg[139] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[139]),
        .Q(o_gnss_data[139]));
  FDCE \gnss_data_buf_reg[13] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[13]),
        .Q(o_gnss_data[13]));
  FDCE \gnss_data_buf_reg[140] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[140]),
        .Q(o_gnss_data[140]));
  FDCE \gnss_data_buf_reg[141] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[141]),
        .Q(o_gnss_data[141]));
  FDCE \gnss_data_buf_reg[142] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[142]),
        .Q(o_gnss_data[142]));
  FDCE \gnss_data_buf_reg[143] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[143]),
        .Q(o_gnss_data[143]));
  FDCE \gnss_data_buf_reg[144] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[144]),
        .Q(o_gnss_data[144]));
  FDCE \gnss_data_buf_reg[145] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[145]),
        .Q(o_gnss_data[145]));
  FDCE \gnss_data_buf_reg[146] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[146]),
        .Q(o_gnss_data[146]));
  FDCE \gnss_data_buf_reg[147] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[147]),
        .Q(o_gnss_data[147]));
  FDCE \gnss_data_buf_reg[148] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[148]),
        .Q(o_gnss_data[148]));
  FDCE \gnss_data_buf_reg[149] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[149]),
        .Q(o_gnss_data[149]));
  FDCE \gnss_data_buf_reg[14] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[14]),
        .Q(o_gnss_data[14]));
  FDCE \gnss_data_buf_reg[150] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[150]),
        .Q(o_gnss_data[150]));
  FDCE \gnss_data_buf_reg[151] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[151]),
        .Q(o_gnss_data[151]));
  FDCE \gnss_data_buf_reg[152] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[152]),
        .Q(o_gnss_data[152]));
  FDCE \gnss_data_buf_reg[153] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[153]),
        .Q(o_gnss_data[153]));
  FDCE \gnss_data_buf_reg[154] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[154]),
        .Q(o_gnss_data[154]));
  FDCE \gnss_data_buf_reg[155] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[155]),
        .Q(o_gnss_data[155]));
  FDCE \gnss_data_buf_reg[156] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[156]),
        .Q(o_gnss_data[156]));
  FDCE \gnss_data_buf_reg[157] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[157]),
        .Q(o_gnss_data[157]));
  FDCE \gnss_data_buf_reg[158] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[158]),
        .Q(o_gnss_data[158]));
  FDCE \gnss_data_buf_reg[159] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[159]),
        .Q(o_gnss_data[159]));
  FDCE \gnss_data_buf_reg[15] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[15]),
        .Q(o_gnss_data[15]));
  FDCE \gnss_data_buf_reg[160] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[160]),
        .Q(o_gnss_data[160]));
  FDCE \gnss_data_buf_reg[161] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[161]),
        .Q(o_gnss_data[161]));
  FDCE \gnss_data_buf_reg[162] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[162]),
        .Q(o_gnss_data[162]));
  FDCE \gnss_data_buf_reg[163] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[163]),
        .Q(o_gnss_data[163]));
  FDCE \gnss_data_buf_reg[164] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[164]),
        .Q(o_gnss_data[164]));
  FDCE \gnss_data_buf_reg[165] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[165]),
        .Q(o_gnss_data[165]));
  FDCE \gnss_data_buf_reg[166] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[166]),
        .Q(o_gnss_data[166]));
  FDCE \gnss_data_buf_reg[167] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[167]),
        .Q(o_gnss_data[167]));
  FDCE \gnss_data_buf_reg[168] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[168]),
        .Q(o_gnss_data[168]));
  FDCE \gnss_data_buf_reg[169] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[169]),
        .Q(o_gnss_data[169]));
  FDCE \gnss_data_buf_reg[16] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[16]),
        .Q(o_gnss_data[16]));
  FDCE \gnss_data_buf_reg[170] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[170]),
        .Q(o_gnss_data[170]));
  FDCE \gnss_data_buf_reg[171] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[171]),
        .Q(o_gnss_data[171]));
  FDCE \gnss_data_buf_reg[172] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[172]),
        .Q(o_gnss_data[172]));
  FDCE \gnss_data_buf_reg[173] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[173]),
        .Q(o_gnss_data[173]));
  FDCE \gnss_data_buf_reg[174] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[174]),
        .Q(o_gnss_data[174]));
  FDCE \gnss_data_buf_reg[175] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[175]),
        .Q(o_gnss_data[175]));
  FDCE \gnss_data_buf_reg[176] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[176]),
        .Q(o_gnss_data[176]));
  FDCE \gnss_data_buf_reg[177] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[177]),
        .Q(o_gnss_data[177]));
  FDCE \gnss_data_buf_reg[178] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[178]),
        .Q(o_gnss_data[178]));
  FDCE \gnss_data_buf_reg[179] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[179]),
        .Q(o_gnss_data[179]));
  FDCE \gnss_data_buf_reg[17] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[17]),
        .Q(o_gnss_data[17]));
  FDCE \gnss_data_buf_reg[180] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[180]),
        .Q(o_gnss_data[180]));
  FDCE \gnss_data_buf_reg[181] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[181]),
        .Q(o_gnss_data[181]));
  FDCE \gnss_data_buf_reg[182] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[182]),
        .Q(o_gnss_data[182]));
  FDCE \gnss_data_buf_reg[183] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[183]),
        .Q(o_gnss_data[183]));
  FDCE \gnss_data_buf_reg[184] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[184]),
        .Q(o_gnss_data[184]));
  FDCE \gnss_data_buf_reg[185] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[185]),
        .Q(o_gnss_data[185]));
  FDCE \gnss_data_buf_reg[186] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[186]),
        .Q(o_gnss_data[186]));
  FDCE \gnss_data_buf_reg[187] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[187]),
        .Q(o_gnss_data[187]));
  FDCE \gnss_data_buf_reg[188] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[188]),
        .Q(o_gnss_data[188]));
  FDCE \gnss_data_buf_reg[189] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[189]),
        .Q(o_gnss_data[189]));
  FDCE \gnss_data_buf_reg[18] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[18]),
        .Q(o_gnss_data[18]));
  FDCE \gnss_data_buf_reg[190] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[190]),
        .Q(o_gnss_data[190]));
  FDCE \gnss_data_buf_reg[191] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[191]),
        .Q(o_gnss_data[191]));
  FDCE \gnss_data_buf_reg[192] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[192]),
        .Q(o_gnss_data[192]));
  FDCE \gnss_data_buf_reg[193] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[193]),
        .Q(o_gnss_data[193]));
  FDCE \gnss_data_buf_reg[194] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[194]),
        .Q(o_gnss_data[194]));
  FDCE \gnss_data_buf_reg[195] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[195]),
        .Q(o_gnss_data[195]));
  FDCE \gnss_data_buf_reg[196] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[196]),
        .Q(o_gnss_data[196]));
  FDCE \gnss_data_buf_reg[197] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[197]),
        .Q(o_gnss_data[197]));
  FDCE \gnss_data_buf_reg[198] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[198]),
        .Q(o_gnss_data[198]));
  FDCE \gnss_data_buf_reg[199] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[199]),
        .Q(o_gnss_data[199]));
  FDCE \gnss_data_buf_reg[19] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[19]),
        .Q(o_gnss_data[19]));
  FDCE \gnss_data_buf_reg[1] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[1]),
        .Q(o_gnss_data[1]));
  FDCE \gnss_data_buf_reg[200] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[200]),
        .Q(o_gnss_data[200]));
  FDCE \gnss_data_buf_reg[201] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[201]),
        .Q(o_gnss_data[201]));
  FDCE \gnss_data_buf_reg[202] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[202]),
        .Q(o_gnss_data[202]));
  FDCE \gnss_data_buf_reg[203] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[203]),
        .Q(o_gnss_data[203]));
  FDCE \gnss_data_buf_reg[204] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[204]),
        .Q(o_gnss_data[204]));
  FDCE \gnss_data_buf_reg[205] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[205]),
        .Q(o_gnss_data[205]));
  FDCE \gnss_data_buf_reg[206] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[206]),
        .Q(o_gnss_data[206]));
  FDCE \gnss_data_buf_reg[207] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[207]),
        .Q(o_gnss_data[207]));
  FDCE \gnss_data_buf_reg[208] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[208]),
        .Q(o_gnss_data[208]));
  FDCE \gnss_data_buf_reg[209] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[209]),
        .Q(o_gnss_data[209]));
  FDCE \gnss_data_buf_reg[20] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[20]),
        .Q(o_gnss_data[20]));
  FDCE \gnss_data_buf_reg[210] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[210]),
        .Q(o_gnss_data[210]));
  FDCE \gnss_data_buf_reg[211] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[211]),
        .Q(o_gnss_data[211]));
  FDCE \gnss_data_buf_reg[212] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[212]),
        .Q(o_gnss_data[212]));
  FDCE \gnss_data_buf_reg[213] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[213]),
        .Q(o_gnss_data[213]));
  FDCE \gnss_data_buf_reg[214] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[214]),
        .Q(o_gnss_data[214]));
  FDCE \gnss_data_buf_reg[215] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[215]),
        .Q(o_gnss_data[215]));
  FDCE \gnss_data_buf_reg[216] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[216]),
        .Q(o_gnss_data[216]));
  FDCE \gnss_data_buf_reg[217] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[217]),
        .Q(o_gnss_data[217]));
  FDCE \gnss_data_buf_reg[218] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[218]),
        .Q(o_gnss_data[218]));
  FDCE \gnss_data_buf_reg[219] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[219]),
        .Q(o_gnss_data[219]));
  FDCE \gnss_data_buf_reg[21] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[21]),
        .Q(o_gnss_data[21]));
  FDCE \gnss_data_buf_reg[220] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[220]),
        .Q(o_gnss_data[220]));
  FDCE \gnss_data_buf_reg[221] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[221]),
        .Q(o_gnss_data[221]));
  FDCE \gnss_data_buf_reg[222] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[222]),
        .Q(o_gnss_data[222]));
  FDCE \gnss_data_buf_reg[223] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[223]),
        .Q(o_gnss_data[223]));
  FDCE \gnss_data_buf_reg[224] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[224]),
        .Q(o_gnss_data[224]));
  FDCE \gnss_data_buf_reg[225] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[225]),
        .Q(o_gnss_data[225]));
  FDCE \gnss_data_buf_reg[226] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[226]),
        .Q(o_gnss_data[226]));
  FDCE \gnss_data_buf_reg[227] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[227]),
        .Q(o_gnss_data[227]));
  FDCE \gnss_data_buf_reg[228] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[228]),
        .Q(o_gnss_data[228]));
  FDCE \gnss_data_buf_reg[229] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[229]),
        .Q(o_gnss_data[229]));
  FDCE \gnss_data_buf_reg[22] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[22]),
        .Q(o_gnss_data[22]));
  FDCE \gnss_data_buf_reg[230] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[230]),
        .Q(o_gnss_data[230]));
  FDCE \gnss_data_buf_reg[231] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[231]),
        .Q(o_gnss_data[231]));
  FDCE \gnss_data_buf_reg[232] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[232]),
        .Q(o_gnss_data[232]));
  FDCE \gnss_data_buf_reg[233] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[233]),
        .Q(o_gnss_data[233]));
  FDCE \gnss_data_buf_reg[234] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[234]),
        .Q(o_gnss_data[234]));
  FDCE \gnss_data_buf_reg[235] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[235]),
        .Q(o_gnss_data[235]));
  FDCE \gnss_data_buf_reg[236] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[236]),
        .Q(o_gnss_data[236]));
  FDCE \gnss_data_buf_reg[237] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[237]),
        .Q(o_gnss_data[237]));
  FDCE \gnss_data_buf_reg[238] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[238]),
        .Q(o_gnss_data[238]));
  FDCE \gnss_data_buf_reg[239] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[239]),
        .Q(o_gnss_data[239]));
  FDCE \gnss_data_buf_reg[23] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[23]),
        .Q(o_gnss_data[23]));
  FDCE \gnss_data_buf_reg[240] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[240]),
        .Q(o_gnss_data[240]));
  FDCE \gnss_data_buf_reg[241] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[241]),
        .Q(o_gnss_data[241]));
  FDCE \gnss_data_buf_reg[242] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[242]),
        .Q(o_gnss_data[242]));
  FDCE \gnss_data_buf_reg[243] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[243]),
        .Q(o_gnss_data[243]));
  FDCE \gnss_data_buf_reg[244] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[244]),
        .Q(o_gnss_data[244]));
  FDCE \gnss_data_buf_reg[245] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[245]),
        .Q(o_gnss_data[245]));
  FDCE \gnss_data_buf_reg[246] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[246]),
        .Q(o_gnss_data[246]));
  FDCE \gnss_data_buf_reg[247] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[247]),
        .Q(o_gnss_data[247]));
  FDCE \gnss_data_buf_reg[248] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[248]),
        .Q(o_gnss_data[248]));
  FDCE \gnss_data_buf_reg[249] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[249]),
        .Q(o_gnss_data[249]));
  FDCE \gnss_data_buf_reg[24] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[24]),
        .Q(o_gnss_data[24]));
  FDCE \gnss_data_buf_reg[250] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[250]),
        .Q(o_gnss_data[250]));
  FDCE \gnss_data_buf_reg[251] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[251]),
        .Q(o_gnss_data[251]));
  FDCE \gnss_data_buf_reg[252] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[252]),
        .Q(o_gnss_data[252]));
  FDCE \gnss_data_buf_reg[253] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[253]),
        .Q(o_gnss_data[253]));
  FDCE \gnss_data_buf_reg[254] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[254]),
        .Q(o_gnss_data[254]));
  FDCE \gnss_data_buf_reg[255] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[255]),
        .Q(o_gnss_data[255]));
  FDCE \gnss_data_buf_reg[256] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[256]),
        .Q(o_gnss_data[256]));
  FDCE \gnss_data_buf_reg[257] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[257]),
        .Q(o_gnss_data[257]));
  FDCE \gnss_data_buf_reg[258] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[258]),
        .Q(o_gnss_data[258]));
  FDCE \gnss_data_buf_reg[259] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[259]),
        .Q(o_gnss_data[259]));
  FDCE \gnss_data_buf_reg[25] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[25]),
        .Q(o_gnss_data[25]));
  FDCE \gnss_data_buf_reg[260] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[260]),
        .Q(o_gnss_data[260]));
  FDCE \gnss_data_buf_reg[261] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[261]),
        .Q(o_gnss_data[261]));
  FDCE \gnss_data_buf_reg[262] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[262]),
        .Q(o_gnss_data[262]));
  FDCE \gnss_data_buf_reg[263] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[263]),
        .Q(o_gnss_data[263]));
  FDCE \gnss_data_buf_reg[264] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[264]),
        .Q(o_gnss_data[264]));
  FDCE \gnss_data_buf_reg[265] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[265]),
        .Q(o_gnss_data[265]));
  FDCE \gnss_data_buf_reg[266] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[266]),
        .Q(o_gnss_data[266]));
  FDCE \gnss_data_buf_reg[267] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[267]),
        .Q(o_gnss_data[267]));
  FDCE \gnss_data_buf_reg[268] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[268]),
        .Q(o_gnss_data[268]));
  FDCE \gnss_data_buf_reg[269] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[269]),
        .Q(o_gnss_data[269]));
  FDCE \gnss_data_buf_reg[26] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[26]),
        .Q(o_gnss_data[26]));
  FDCE \gnss_data_buf_reg[270] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[270]),
        .Q(o_gnss_data[270]));
  FDCE \gnss_data_buf_reg[271] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[271]),
        .Q(o_gnss_data[271]));
  FDCE \gnss_data_buf_reg[272] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[272]),
        .Q(o_gnss_data[272]));
  FDCE \gnss_data_buf_reg[273] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[273]),
        .Q(o_gnss_data[273]));
  FDCE \gnss_data_buf_reg[274] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[274]),
        .Q(o_gnss_data[274]));
  FDCE \gnss_data_buf_reg[275] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[275]),
        .Q(o_gnss_data[275]));
  FDCE \gnss_data_buf_reg[276] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[276]),
        .Q(o_gnss_data[276]));
  FDCE \gnss_data_buf_reg[277] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[277]),
        .Q(o_gnss_data[277]));
  FDCE \gnss_data_buf_reg[278] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[278]),
        .Q(o_gnss_data[278]));
  FDCE \gnss_data_buf_reg[279] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[279]),
        .Q(o_gnss_data[279]));
  FDCE \gnss_data_buf_reg[27] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[27]),
        .Q(o_gnss_data[27]));
  FDCE \gnss_data_buf_reg[280] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[280]),
        .Q(o_gnss_data[280]));
  FDCE \gnss_data_buf_reg[281] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[281]),
        .Q(o_gnss_data[281]));
  FDCE \gnss_data_buf_reg[282] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[282]),
        .Q(o_gnss_data[282]));
  FDCE \gnss_data_buf_reg[283] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[283]),
        .Q(o_gnss_data[283]));
  FDCE \gnss_data_buf_reg[284] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[284]),
        .Q(o_gnss_data[284]));
  FDCE \gnss_data_buf_reg[285] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[285]),
        .Q(o_gnss_data[285]));
  FDCE \gnss_data_buf_reg[286] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[286]),
        .Q(o_gnss_data[286]));
  FDCE \gnss_data_buf_reg[287] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[287]),
        .Q(o_gnss_data[287]));
  FDCE \gnss_data_buf_reg[288] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[288]),
        .Q(o_gnss_data[288]));
  FDCE \gnss_data_buf_reg[289] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[289]),
        .Q(o_gnss_data[289]));
  FDCE \gnss_data_buf_reg[28] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[28]),
        .Q(o_gnss_data[28]));
  FDCE \gnss_data_buf_reg[290] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[290]),
        .Q(o_gnss_data[290]));
  FDCE \gnss_data_buf_reg[291] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[291]),
        .Q(o_gnss_data[291]));
  FDCE \gnss_data_buf_reg[292] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[292]),
        .Q(o_gnss_data[292]));
  FDCE \gnss_data_buf_reg[293] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[293]),
        .Q(o_gnss_data[293]));
  FDCE \gnss_data_buf_reg[294] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[294]),
        .Q(o_gnss_data[294]));
  FDCE \gnss_data_buf_reg[295] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[295]),
        .Q(o_gnss_data[295]));
  FDCE \gnss_data_buf_reg[296] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[296]),
        .Q(o_gnss_data[296]));
  FDCE \gnss_data_buf_reg[297] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[297]),
        .Q(o_gnss_data[297]));
  FDCE \gnss_data_buf_reg[298] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[298]),
        .Q(o_gnss_data[298]));
  FDCE \gnss_data_buf_reg[299] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[299]),
        .Q(o_gnss_data[299]));
  FDCE \gnss_data_buf_reg[29] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[29]),
        .Q(o_gnss_data[29]));
  FDCE \gnss_data_buf_reg[2] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[2]),
        .Q(o_gnss_data[2]));
  FDCE \gnss_data_buf_reg[300] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[300]),
        .Q(o_gnss_data[300]));
  FDCE \gnss_data_buf_reg[301] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[301]),
        .Q(o_gnss_data[301]));
  FDCE \gnss_data_buf_reg[302] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[302]),
        .Q(o_gnss_data[302]));
  FDCE \gnss_data_buf_reg[303] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[303]),
        .Q(o_gnss_data[303]));
  FDCE \gnss_data_buf_reg[304] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[304]),
        .Q(o_gnss_data[304]));
  FDCE \gnss_data_buf_reg[305] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[305]),
        .Q(o_gnss_data[305]));
  FDCE \gnss_data_buf_reg[306] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[306]),
        .Q(o_gnss_data[306]));
  FDCE \gnss_data_buf_reg[307] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[307]),
        .Q(o_gnss_data[307]));
  FDCE \gnss_data_buf_reg[308] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[308]),
        .Q(o_gnss_data[308]));
  FDCE \gnss_data_buf_reg[309] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[309]),
        .Q(o_gnss_data[309]));
  FDCE \gnss_data_buf_reg[30] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[30]),
        .Q(o_gnss_data[30]));
  FDCE \gnss_data_buf_reg[310] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[310]),
        .Q(o_gnss_data[310]));
  FDCE \gnss_data_buf_reg[311] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[311]),
        .Q(o_gnss_data[311]));
  FDCE \gnss_data_buf_reg[312] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[312]),
        .Q(o_gnss_data[312]));
  FDCE \gnss_data_buf_reg[313] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[313]),
        .Q(o_gnss_data[313]));
  FDCE \gnss_data_buf_reg[314] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[314]),
        .Q(o_gnss_data[314]));
  FDCE \gnss_data_buf_reg[315] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[315]),
        .Q(o_gnss_data[315]));
  FDCE \gnss_data_buf_reg[316] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[316]),
        .Q(o_gnss_data[316]));
  FDCE \gnss_data_buf_reg[317] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[317]),
        .Q(o_gnss_data[317]));
  FDCE \gnss_data_buf_reg[318] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[318]),
        .Q(o_gnss_data[318]));
  FDCE \gnss_data_buf_reg[319] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[319]),
        .Q(o_gnss_data[319]));
  FDCE \gnss_data_buf_reg[31] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[31]),
        .Q(o_gnss_data[31]));
  FDCE \gnss_data_buf_reg[320] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[320]),
        .Q(o_gnss_data[320]));
  FDCE \gnss_data_buf_reg[321] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[321]),
        .Q(o_gnss_data[321]));
  FDCE \gnss_data_buf_reg[322] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[322]),
        .Q(o_gnss_data[322]));
  FDCE \gnss_data_buf_reg[323] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[323]),
        .Q(o_gnss_data[323]));
  FDCE \gnss_data_buf_reg[324] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[324]),
        .Q(o_gnss_data[324]));
  FDCE \gnss_data_buf_reg[325] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[325]),
        .Q(o_gnss_data[325]));
  FDCE \gnss_data_buf_reg[326] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[326]),
        .Q(o_gnss_data[326]));
  FDCE \gnss_data_buf_reg[327] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[327]),
        .Q(o_gnss_data[327]));
  FDCE \gnss_data_buf_reg[328] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[328]),
        .Q(o_gnss_data[328]));
  FDCE \gnss_data_buf_reg[329] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[329]),
        .Q(o_gnss_data[329]));
  FDCE \gnss_data_buf_reg[32] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[32]),
        .Q(o_gnss_data[32]));
  FDCE \gnss_data_buf_reg[330] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[330]),
        .Q(o_gnss_data[330]));
  FDCE \gnss_data_buf_reg[331] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[331]),
        .Q(o_gnss_data[331]));
  FDCE \gnss_data_buf_reg[332] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[332]),
        .Q(o_gnss_data[332]));
  FDCE \gnss_data_buf_reg[333] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[333]),
        .Q(o_gnss_data[333]));
  FDCE \gnss_data_buf_reg[334] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[334]),
        .Q(o_gnss_data[334]));
  FDCE \gnss_data_buf_reg[335] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[335]),
        .Q(o_gnss_data[335]));
  FDCE \gnss_data_buf_reg[336] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[336]),
        .Q(o_gnss_data[336]));
  FDCE \gnss_data_buf_reg[337] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[337]),
        .Q(o_gnss_data[337]));
  FDCE \gnss_data_buf_reg[338] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[338]),
        .Q(o_gnss_data[338]));
  FDCE \gnss_data_buf_reg[339] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[339]),
        .Q(o_gnss_data[339]));
  FDCE \gnss_data_buf_reg[33] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[33]),
        .Q(o_gnss_data[33]));
  FDCE \gnss_data_buf_reg[340] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[340]),
        .Q(o_gnss_data[340]));
  FDCE \gnss_data_buf_reg[341] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[341]),
        .Q(o_gnss_data[341]));
  FDCE \gnss_data_buf_reg[342] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[342]),
        .Q(o_gnss_data[342]));
  FDCE \gnss_data_buf_reg[343] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[343]),
        .Q(o_gnss_data[343]));
  FDCE \gnss_data_buf_reg[344] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[344]),
        .Q(o_gnss_data[344]));
  FDCE \gnss_data_buf_reg[345] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[345]),
        .Q(o_gnss_data[345]));
  FDCE \gnss_data_buf_reg[346] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[346]),
        .Q(o_gnss_data[346]));
  FDCE \gnss_data_buf_reg[347] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[347]),
        .Q(o_gnss_data[347]));
  FDCE \gnss_data_buf_reg[348] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[348]),
        .Q(o_gnss_data[348]));
  FDCE \gnss_data_buf_reg[349] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[349]),
        .Q(o_gnss_data[349]));
  FDCE \gnss_data_buf_reg[34] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[34]),
        .Q(o_gnss_data[34]));
  FDCE \gnss_data_buf_reg[350] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[350]),
        .Q(o_gnss_data[350]));
  FDCE \gnss_data_buf_reg[351] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[351]),
        .Q(o_gnss_data[351]));
  FDCE \gnss_data_buf_reg[352] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[352]),
        .Q(o_gnss_data[352]));
  FDCE \gnss_data_buf_reg[353] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[353]),
        .Q(o_gnss_data[353]));
  FDCE \gnss_data_buf_reg[354] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[354]),
        .Q(o_gnss_data[354]));
  FDCE \gnss_data_buf_reg[355] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[355]),
        .Q(o_gnss_data[355]));
  FDCE \gnss_data_buf_reg[356] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[356]),
        .Q(o_gnss_data[356]));
  FDCE \gnss_data_buf_reg[357] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[357]),
        .Q(o_gnss_data[357]));
  FDCE \gnss_data_buf_reg[358] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[358]),
        .Q(o_gnss_data[358]));
  FDCE \gnss_data_buf_reg[359] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[359]),
        .Q(o_gnss_data[359]));
  FDCE \gnss_data_buf_reg[35] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[35]),
        .Q(o_gnss_data[35]));
  FDCE \gnss_data_buf_reg[360] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[360]),
        .Q(o_gnss_data[360]));
  FDCE \gnss_data_buf_reg[361] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[361]),
        .Q(o_gnss_data[361]));
  FDCE \gnss_data_buf_reg[362] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[362]),
        .Q(o_gnss_data[362]));
  FDCE \gnss_data_buf_reg[363] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[363]),
        .Q(o_gnss_data[363]));
  FDCE \gnss_data_buf_reg[364] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[364]),
        .Q(o_gnss_data[364]));
  FDCE \gnss_data_buf_reg[365] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[365]),
        .Q(o_gnss_data[365]));
  FDCE \gnss_data_buf_reg[366] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[366]),
        .Q(o_gnss_data[366]));
  FDCE \gnss_data_buf_reg[367] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[367]),
        .Q(o_gnss_data[367]));
  FDCE \gnss_data_buf_reg[368] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[368]),
        .Q(o_gnss_data[368]));
  FDCE \gnss_data_buf_reg[369] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[369]),
        .Q(o_gnss_data[369]));
  FDCE \gnss_data_buf_reg[36] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[36]),
        .Q(o_gnss_data[36]));
  FDCE \gnss_data_buf_reg[370] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[370]),
        .Q(o_gnss_data[370]));
  FDCE \gnss_data_buf_reg[371] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[371]),
        .Q(o_gnss_data[371]));
  FDCE \gnss_data_buf_reg[372] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[372]),
        .Q(o_gnss_data[372]));
  FDCE \gnss_data_buf_reg[373] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[373]),
        .Q(o_gnss_data[373]));
  FDCE \gnss_data_buf_reg[374] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[374]),
        .Q(o_gnss_data[374]));
  FDCE \gnss_data_buf_reg[375] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[375]),
        .Q(o_gnss_data[375]));
  FDCE \gnss_data_buf_reg[376] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[376]),
        .Q(o_gnss_data[376]));
  FDCE \gnss_data_buf_reg[377] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[377]),
        .Q(o_gnss_data[377]));
  FDCE \gnss_data_buf_reg[378] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[378]),
        .Q(o_gnss_data[378]));
  FDCE \gnss_data_buf_reg[379] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[379]),
        .Q(o_gnss_data[379]));
  FDCE \gnss_data_buf_reg[37] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[37]),
        .Q(o_gnss_data[37]));
  FDCE \gnss_data_buf_reg[380] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[380]),
        .Q(o_gnss_data[380]));
  FDCE \gnss_data_buf_reg[381] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[381]),
        .Q(o_gnss_data[381]));
  FDCE \gnss_data_buf_reg[382] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[382]),
        .Q(o_gnss_data[382]));
  FDCE \gnss_data_buf_reg[383] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[383]),
        .Q(o_gnss_data[383]));
  FDCE \gnss_data_buf_reg[38] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[38]),
        .Q(o_gnss_data[38]));
  FDCE \gnss_data_buf_reg[39] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[39]),
        .Q(o_gnss_data[39]));
  FDCE \gnss_data_buf_reg[3] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[3]),
        .Q(o_gnss_data[3]));
  FDCE \gnss_data_buf_reg[40] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[40]),
        .Q(o_gnss_data[40]));
  FDCE \gnss_data_buf_reg[41] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[41]),
        .Q(o_gnss_data[41]));
  FDCE \gnss_data_buf_reg[42] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[42]),
        .Q(o_gnss_data[42]));
  FDCE \gnss_data_buf_reg[43] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[43]),
        .Q(o_gnss_data[43]));
  FDCE \gnss_data_buf_reg[44] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[44]),
        .Q(o_gnss_data[44]));
  FDCE \gnss_data_buf_reg[45] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[45]),
        .Q(o_gnss_data[45]));
  FDCE \gnss_data_buf_reg[46] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[46]),
        .Q(o_gnss_data[46]));
  FDCE \gnss_data_buf_reg[47] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[47]),
        .Q(o_gnss_data[47]));
  FDCE \gnss_data_buf_reg[48] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[48]),
        .Q(o_gnss_data[48]));
  FDCE \gnss_data_buf_reg[49] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[49]),
        .Q(o_gnss_data[49]));
  FDCE \gnss_data_buf_reg[4] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[4]),
        .Q(o_gnss_data[4]));
  FDCE \gnss_data_buf_reg[50] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[50]),
        .Q(o_gnss_data[50]));
  FDCE \gnss_data_buf_reg[51] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[51]),
        .Q(o_gnss_data[51]));
  FDCE \gnss_data_buf_reg[52] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[52]),
        .Q(o_gnss_data[52]));
  FDCE \gnss_data_buf_reg[53] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[53]),
        .Q(o_gnss_data[53]));
  FDCE \gnss_data_buf_reg[54] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[54]),
        .Q(o_gnss_data[54]));
  FDCE \gnss_data_buf_reg[55] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[55]),
        .Q(o_gnss_data[55]));
  FDCE \gnss_data_buf_reg[56] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[56]),
        .Q(o_gnss_data[56]));
  FDCE \gnss_data_buf_reg[57] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[57]),
        .Q(o_gnss_data[57]));
  FDCE \gnss_data_buf_reg[58] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[58]),
        .Q(o_gnss_data[58]));
  FDCE \gnss_data_buf_reg[59] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[59]),
        .Q(o_gnss_data[59]));
  FDCE \gnss_data_buf_reg[5] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[5]),
        .Q(o_gnss_data[5]));
  FDCE \gnss_data_buf_reg[60] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[60]),
        .Q(o_gnss_data[60]));
  FDCE \gnss_data_buf_reg[61] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[61]),
        .Q(o_gnss_data[61]));
  FDCE \gnss_data_buf_reg[62] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[62]),
        .Q(o_gnss_data[62]));
  FDCE \gnss_data_buf_reg[63] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[63]),
        .Q(o_gnss_data[63]));
  FDCE \gnss_data_buf_reg[64] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[64]),
        .Q(o_gnss_data[64]));
  FDCE \gnss_data_buf_reg[65] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[65]),
        .Q(o_gnss_data[65]));
  FDCE \gnss_data_buf_reg[66] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[66]),
        .Q(o_gnss_data[66]));
  FDCE \gnss_data_buf_reg[67] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[67]),
        .Q(o_gnss_data[67]));
  FDCE \gnss_data_buf_reg[68] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[68]),
        .Q(o_gnss_data[68]));
  FDCE \gnss_data_buf_reg[69] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[69]),
        .Q(o_gnss_data[69]));
  FDCE \gnss_data_buf_reg[6] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[6]),
        .Q(o_gnss_data[6]));
  FDCE \gnss_data_buf_reg[70] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[70]),
        .Q(o_gnss_data[70]));
  FDCE \gnss_data_buf_reg[71] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[71]),
        .Q(o_gnss_data[71]));
  FDCE \gnss_data_buf_reg[72] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[72]),
        .Q(o_gnss_data[72]));
  FDCE \gnss_data_buf_reg[73] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[73]),
        .Q(o_gnss_data[73]));
  FDCE \gnss_data_buf_reg[74] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[74]),
        .Q(o_gnss_data[74]));
  FDCE \gnss_data_buf_reg[75] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[75]),
        .Q(o_gnss_data[75]));
  FDCE \gnss_data_buf_reg[76] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[76]),
        .Q(o_gnss_data[76]));
  FDCE \gnss_data_buf_reg[77] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[77]),
        .Q(o_gnss_data[77]));
  FDCE \gnss_data_buf_reg[78] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[78]),
        .Q(o_gnss_data[78]));
  FDCE \gnss_data_buf_reg[79] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[79]),
        .Q(o_gnss_data[79]));
  FDCE \gnss_data_buf_reg[7] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[7]),
        .Q(o_gnss_data[7]));
  FDCE \gnss_data_buf_reg[80] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[80]),
        .Q(o_gnss_data[80]));
  FDCE \gnss_data_buf_reg[81] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[81]),
        .Q(o_gnss_data[81]));
  FDCE \gnss_data_buf_reg[82] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[82]),
        .Q(o_gnss_data[82]));
  FDCE \gnss_data_buf_reg[83] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[83]),
        .Q(o_gnss_data[83]));
  FDCE \gnss_data_buf_reg[84] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[84]),
        .Q(o_gnss_data[84]));
  FDCE \gnss_data_buf_reg[85] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[85]),
        .Q(o_gnss_data[85]));
  FDCE \gnss_data_buf_reg[86] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[86]),
        .Q(o_gnss_data[86]));
  FDCE \gnss_data_buf_reg[87] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[87]),
        .Q(o_gnss_data[87]));
  FDCE \gnss_data_buf_reg[88] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[88]),
        .Q(o_gnss_data[88]));
  FDCE \gnss_data_buf_reg[89] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[89]),
        .Q(o_gnss_data[89]));
  FDCE \gnss_data_buf_reg[8] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[8]),
        .Q(o_gnss_data[8]));
  FDCE \gnss_data_buf_reg[90] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[90]),
        .Q(o_gnss_data[90]));
  FDCE \gnss_data_buf_reg[91] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[91]),
        .Q(o_gnss_data[91]));
  FDCE \gnss_data_buf_reg[92] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[92]),
        .Q(o_gnss_data[92]));
  FDCE \gnss_data_buf_reg[93] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[93]),
        .Q(o_gnss_data[93]));
  FDCE \gnss_data_buf_reg[94] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[94]),
        .Q(o_gnss_data[94]));
  FDCE \gnss_data_buf_reg[95] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[95]),
        .Q(o_gnss_data[95]));
  FDCE \gnss_data_buf_reg[96] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[96]),
        .Q(o_gnss_data[96]));
  FDCE \gnss_data_buf_reg[97] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[97]),
        .Q(o_gnss_data[97]));
  FDCE \gnss_data_buf_reg[98] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[98]),
        .Q(o_gnss_data[98]));
  FDCE \gnss_data_buf_reg[99] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[99]),
        .Q(o_gnss_data[99]));
  FDCE \gnss_data_buf_reg[9] 
       (.C(sysclk),
        .CE(\gnss_data_buf[383]_i_1_n_0 ),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(i_gnss_data[9]),
        .Q(o_gnss_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led1_i_1
       (.I0(state),
        .I1(led1),
        .O(led1_i_1_n_0));
  FDCE led1_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(led1_i_1_n_0),
        .Q(led1));
  FDCE o_gnss_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(state),
        .Q(o_gnss_drive));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\gnss_data_buf[383]_i_2_n_0 ),
        .D(\gnss_data_buf[383]_i_1_n_0 ),
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

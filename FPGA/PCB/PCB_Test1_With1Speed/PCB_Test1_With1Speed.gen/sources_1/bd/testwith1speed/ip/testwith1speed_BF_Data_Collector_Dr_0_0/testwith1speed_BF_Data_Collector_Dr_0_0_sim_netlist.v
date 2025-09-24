// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 23 16:02:25 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_BF_Data_Collector_Dr_0_0/testwith1speed_BF_Data_Collector_Dr_0_0_sim_netlist.v
// Design      : testwith1speed_BF_Data_Collector_Dr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testwith1speed_BF_Data_Collector_Dr_0_0,BF_Data_Collector_Draft2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BF_Data_Collector_Draft2,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module testwith1speed_BF_Data_Collector_Dr_0_0
   (sysclk,
    reset_n,
    data_ready,
    i_dump,
    i_BF_data,
    o_BF_data,
    o_BF_drive,
    led1);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input data_ready;
  input i_dump;
  input [46:0]i_BF_data;
  output [197:0]o_BF_data;
  output o_BF_drive;
  output led1;

  wire data_ready;
  wire [46:0]i_BF_data;
  wire i_dump;
  wire led1;
  wire [197:0]o_BF_data;
  wire o_BF_drive;
  wire reset_n;
  wire sysclk;

  testwith1speed_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft2 U0
       (.data_ready(data_ready),
        .i_BF_data(i_BF_data),
        .i_dump(i_dump),
        .led1(led1),
        .o_BF_data(o_BF_data),
        .o_BF_drive(o_BF_drive),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "BF_Data_Collector_Draft2" *) 
module testwith1speed_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft2
   (o_BF_data,
    o_BF_drive,
    led1,
    data_ready,
    i_dump,
    sysclk,
    i_BF_data,
    reset_n);
  output [197:0]o_BF_data;
  output o_BF_drive;
  output led1;
  input data_ready;
  input i_dump;
  input sysclk;
  input [46:0]i_BF_data;
  input reset_n;

  wire [7:0]BF_data_buf;
  wire \BF_data_buf[188]_i_1_n_0 ;
  wire \BF_data_buf[189]_i_1_n_0 ;
  wire \BF_data_buf[196]_i_2_n_0 ;
  wire \BF_data_buf[197]_i_3_n_0 ;
  wire \BF_data_buf[197]_i_4_n_0 ;
  wire \BF_data_buf[197]_i_5_n_0 ;
  wire \BF_data_buf[197]_i_6_n_0 ;
  wire \FSM_sequential_flip_cnt[0]_i_1_n_0 ;
  wire \FSM_sequential_flip_cnt[0]_rep_i_1_n_0 ;
  wire \FSM_sequential_flip_cnt[1]_i_1_n_0 ;
  wire \FSM_sequential_flip_cnt[1]_rep_i_1_n_0 ;
  wire \FSM_sequential_flip_cnt[2]_i_1_n_0 ;
  wire \FSM_sequential_flip_cnt[2]_rep_i_1_n_0 ;
  wire \FSM_sequential_flip_cnt_reg[0]_rep_n_0 ;
  wire \FSM_sequential_flip_cnt_reg[1]_rep_n_0 ;
  wire \FSM_sequential_flip_cnt_reg[2]_rep_n_0 ;
  wire data_ready;
  wire data_ready_prev;
  wire data_ready_prev_i_1_n_0;
  wire \flight_total[7]_i_1_n_0 ;
  wire [7:0]flight_total__0;
  wire [2:0]flip_cnt__0;
  wire [46:0]i_BF_data;
  wire i_dump;
  wire just_dumped;
  wire just_dumped_reg_rep_n_0;
  wire led1;
  wire led1_i_1_n_0;
  wire [197:0]o_BF_data;
  wire o_BF_drive;
  wire [197:46]p_0_in;
  wire [187:0]p_1_in;
  wire reset_n;
  wire sysclk;

  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[0]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[0]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[100]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[6]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[100]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[101]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[7]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[101]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[102]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[8]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[102]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[103]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[9]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[103]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[104]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[10]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[104]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[105]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[11]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[105]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[106]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[12]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[106]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[107]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[13]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[107]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[108]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[14]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[108]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[109]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[15]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[109]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[10]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[10]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[110]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[16]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[110]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[111]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[17]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[111]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[112]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[18]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[112]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[113]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[19]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[113]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[114]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[20]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[114]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[115]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[21]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[115]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[116]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[22]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[116]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[117]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[23]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[117]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[118]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[24]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[118]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[119]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[25]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[119]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[11]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[11]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[120]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[26]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[120]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[121]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[27]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[121]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[122]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[28]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[122]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[123]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[29]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[123]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[124]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[30]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[124]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[125]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[31]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[125]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[126]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[32]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[126]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[127]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[33]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[127]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[128]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[34]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[128]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[129]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[35]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[129]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[12]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[12]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[130]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[36]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[130]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[131]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[37]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[131]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[132]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[38]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[132]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[133]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[39]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[133]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[134]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[40]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[134]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[135]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[41]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[135]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[136]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[42]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[136]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[137]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[43]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[137]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[138]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[44]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[138]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[139]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[45]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[139]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[13]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[13]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h00000000FFFF0200)) 
    \BF_data_buf[140]_i_1 
       (.I0(\BF_data_buf[197]_i_4_n_0 ),
        .I1(flip_cnt__0[1]),
        .I2(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I3(flip_cnt__0[0]),
        .I4(just_dumped),
        .I5(i_dump),
        .O(p_0_in[140]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[140]_i_2 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[46]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[140]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[141]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[141]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[142]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[1]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[142]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[143]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[2]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[143]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[144]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[3]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[144]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[145]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[4]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[145]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[146]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[5]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[146]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[147]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[6]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[147]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[148]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[7]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[148]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[149]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[8]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[149]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[14]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[14]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[150]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[9]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[150]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[151]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[10]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[151]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[152]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[11]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[152]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[153]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[12]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[153]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[154]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[13]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[154]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[155]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[14]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[155]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[156]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[15]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[156]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[157]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[16]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[157]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[158]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[17]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[158]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[159]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[18]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[159]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[15]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[15]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[160]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[19]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[160]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[161]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[20]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[161]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[162]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[21]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[162]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[163]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[22]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[163]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[164]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[23]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[164]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[165]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[24]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[165]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[166]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[25]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[166]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[167]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[26]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[167]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[168]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[27]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[168]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[169]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[28]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[169]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[16]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[16]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[170]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[29]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[170]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[171]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[30]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[171]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[172]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[31]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[172]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[173]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[32]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[173]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[174]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[33]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[174]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[175]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[34]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[175]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[176]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[35]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[176]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[177]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[36]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[177]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[178]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[37]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[178]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[179]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[38]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[179]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[17]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[17]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[180]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[39]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[180]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[181]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[40]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[181]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[182]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[41]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[182]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[183]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[42]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[183]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[184]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[43]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[184]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[185]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[44]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[185]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[186]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[45]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[186]));
  LUT6 #(
    .INIT(64'h00000000FFFF0002)) 
    \BF_data_buf[187]_i_1 
       (.I0(\BF_data_buf[197]_i_4_n_0 ),
        .I1(flip_cnt__0[2]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .I5(i_dump),
        .O(p_0_in[187]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \BF_data_buf[187]_i_2 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[0]),
        .I2(i_BF_data[46]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped_reg_rep_n_0),
        .O(p_1_in[187]));
  LUT6 #(
    .INIT(64'hFFFF00FB00000008)) 
    \BF_data_buf[188]_i_1 
       (.I0(flip_cnt__0[0]),
        .I1(\BF_data_buf[197]_i_4_n_0 ),
        .I2(flip_cnt__0[2]),
        .I3(just_dumped_reg_rep_n_0),
        .I4(i_dump),
        .I5(o_BF_data[188]),
        .O(\BF_data_buf[188]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FB00000008)) 
    \BF_data_buf[189]_i_1 
       (.I0(flip_cnt__0[1]),
        .I1(\BF_data_buf[197]_i_4_n_0 ),
        .I2(flip_cnt__0[2]),
        .I3(just_dumped_reg_rep_n_0),
        .I4(i_dump),
        .I5(o_BF_data[189]),
        .O(\BF_data_buf[189]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[18]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[18]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \BF_data_buf[190]_i_1 
       (.I0(flight_total__0[0]),
        .O(BF_data_buf[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BF_data_buf[191]_i_1 
       (.I0(flight_total__0[0]),
        .I1(flight_total__0[1]),
        .O(BF_data_buf[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BF_data_buf[192]_i_1 
       (.I0(flight_total__0[2]),
        .I1(flight_total__0[0]),
        .I2(flight_total__0[1]),
        .O(BF_data_buf[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \BF_data_buf[193]_i_1 
       (.I0(flight_total__0[3]),
        .I1(flight_total__0[0]),
        .I2(flight_total__0[1]),
        .I3(flight_total__0[2]),
        .O(BF_data_buf[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \BF_data_buf[194]_i_1 
       (.I0(flight_total__0[4]),
        .I1(flight_total__0[2]),
        .I2(flight_total__0[1]),
        .I3(flight_total__0[0]),
        .I4(flight_total__0[3]),
        .O(BF_data_buf[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \BF_data_buf[195]_i_1 
       (.I0(flight_total__0[5]),
        .I1(flight_total__0[3]),
        .I2(flight_total__0[0]),
        .I3(flight_total__0[1]),
        .I4(flight_total__0[2]),
        .I5(flight_total__0[4]),
        .O(BF_data_buf[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \BF_data_buf[196]_i_1 
       (.I0(flight_total__0[6]),
        .I1(flight_total__0[4]),
        .I2(flight_total__0[2]),
        .I3(\BF_data_buf[196]_i_2_n_0 ),
        .I4(flight_total__0[3]),
        .I5(flight_total__0[5]),
        .O(BF_data_buf[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BF_data_buf[196]_i_2 
       (.I0(flight_total__0[1]),
        .I1(flight_total__0[0]),
        .O(\BF_data_buf[196]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044444)) 
    \BF_data_buf[197]_i_1 
       (.I0(just_dumped_reg_rep_n_0),
        .I1(\BF_data_buf[197]_i_4_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(flip_cnt__0[2]),
        .I5(i_dump),
        .O(p_0_in[197]));
  LUT4 #(
    .INIT(16'hB8CC)) 
    \BF_data_buf[197]_i_2 
       (.I0(\BF_data_buf[197]_i_5_n_0 ),
        .I1(flight_total__0[7]),
        .I2(\BF_data_buf[197]_i_6_n_0 ),
        .I3(flight_total__0[6]),
        .O(BF_data_buf[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \BF_data_buf[197]_i_3 
       (.I0(reset_n),
        .O(\BF_data_buf[197]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \BF_data_buf[197]_i_4 
       (.I0(data_ready),
        .I1(data_ready_prev),
        .O(\BF_data_buf[197]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \BF_data_buf[197]_i_5 
       (.I0(flight_total__0[4]),
        .I1(flight_total__0[2]),
        .I2(flight_total__0[0]),
        .I3(flight_total__0[1]),
        .I4(flight_total__0[3]),
        .I5(flight_total__0[5]),
        .O(\BF_data_buf[197]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \BF_data_buf[197]_i_6 
       (.I0(flight_total__0[4]),
        .I1(flight_total__0[2]),
        .I2(flight_total__0[1]),
        .I3(flight_total__0[0]),
        .I4(flight_total__0[3]),
        .I5(flight_total__0[5]),
        .O(\BF_data_buf[197]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[19]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[19]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[1]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[1]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[20]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[20]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[21]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[21]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[22]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[22]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[23]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[23]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[24]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[24]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[25]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[25]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[26]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[26]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[27]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[27]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[28]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[28]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[29]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[29]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[2]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[2]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[30]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[30]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[31]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[31]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[32]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[32]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[32]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[33]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[33]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[33]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[34]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[34]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[34]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[35]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[35]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[35]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[36]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[36]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[36]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[37]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[37]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[37]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[38]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[38]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[38]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[39]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[39]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[39]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[3]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[3]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[40]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[40]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[40]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[41]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[41]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[41]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[42]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[42]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[42]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[43]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[43]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[43]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[44]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[44]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[44]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[45]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[45]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[45]));
  LUT6 #(
    .INIT(64'h00000000FFFF0080)) 
    \BF_data_buf[46]_i_1 
       (.I0(\BF_data_buf[197]_i_4_n_0 ),
        .I1(flip_cnt__0[1]),
        .I2(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I3(flip_cnt__0[2]),
        .I4(just_dumped),
        .I5(i_dump),
        .O(p_0_in[46]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[46]_i_2 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[46]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[46]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[47]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[0]),
        .I4(just_dumped),
        .O(p_1_in[47]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[48]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[1]),
        .I4(just_dumped),
        .O(p_1_in[48]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[49]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[2]),
        .I4(just_dumped),
        .O(p_1_in[49]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[4]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[4]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[50]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[3]),
        .I4(just_dumped),
        .O(p_1_in[50]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[51]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[4]),
        .I4(just_dumped),
        .O(p_1_in[51]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[52]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[5]),
        .I4(just_dumped),
        .O(p_1_in[52]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[53]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[6]),
        .I4(just_dumped),
        .O(p_1_in[53]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[54]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[7]),
        .I4(just_dumped),
        .O(p_1_in[54]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[55]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[8]),
        .I4(just_dumped),
        .O(p_1_in[55]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[56]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[9]),
        .I4(just_dumped),
        .O(p_1_in[56]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[57]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[10]),
        .I4(just_dumped),
        .O(p_1_in[57]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[58]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[11]),
        .I4(just_dumped),
        .O(p_1_in[58]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[59]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[12]),
        .I4(just_dumped),
        .O(p_1_in[59]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[5]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[5]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[60]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[13]),
        .I4(just_dumped),
        .O(p_1_in[60]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[61]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[14]),
        .I4(just_dumped),
        .O(p_1_in[61]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[62]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[15]),
        .I4(just_dumped),
        .O(p_1_in[62]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[63]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[16]),
        .I4(just_dumped),
        .O(p_1_in[63]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[64]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[17]),
        .I4(just_dumped),
        .O(p_1_in[64]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[65]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[18]),
        .I4(just_dumped),
        .O(p_1_in[65]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[66]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[19]),
        .I4(just_dumped),
        .O(p_1_in[66]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[67]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[20]),
        .I4(just_dumped),
        .O(p_1_in[67]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[68]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[21]),
        .I4(just_dumped),
        .O(p_1_in[68]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[69]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[22]),
        .I4(just_dumped),
        .O(p_1_in[69]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[6]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[6]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[70]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[23]),
        .I4(just_dumped),
        .O(p_1_in[70]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[71]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[24]),
        .I4(just_dumped),
        .O(p_1_in[71]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[72]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[25]),
        .I4(just_dumped),
        .O(p_1_in[72]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[73]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[26]),
        .I4(just_dumped),
        .O(p_1_in[73]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[74]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[27]),
        .I4(just_dumped),
        .O(p_1_in[74]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[75]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[28]),
        .I4(just_dumped),
        .O(p_1_in[75]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[76]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[29]),
        .I4(just_dumped),
        .O(p_1_in[76]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[77]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[30]),
        .I4(just_dumped),
        .O(p_1_in[77]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[78]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[31]),
        .I4(just_dumped),
        .O(p_1_in[78]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[79]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[32]),
        .I4(just_dumped),
        .O(p_1_in[79]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[7]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[7]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[80]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[33]),
        .I4(just_dumped),
        .O(p_1_in[80]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[81]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[34]),
        .I4(just_dumped),
        .O(p_1_in[81]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[82]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[35]),
        .I4(just_dumped),
        .O(p_1_in[82]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[83]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[36]),
        .I4(just_dumped),
        .O(p_1_in[83]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[84]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[37]),
        .I4(just_dumped),
        .O(p_1_in[84]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[85]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[38]),
        .I4(just_dumped),
        .O(p_1_in[85]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[86]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[39]),
        .I4(just_dumped),
        .O(p_1_in[86]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[87]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[40]),
        .I4(just_dumped),
        .O(p_1_in[87]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[88]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[41]),
        .I4(just_dumped),
        .O(p_1_in[88]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[89]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[42]),
        .I4(just_dumped),
        .O(p_1_in[89]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[8]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[8]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[90]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[43]),
        .I4(just_dumped),
        .O(p_1_in[90]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[91]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[44]),
        .I4(just_dumped),
        .O(p_1_in[91]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[92]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[45]),
        .I4(just_dumped),
        .O(p_1_in[92]));
  LUT6 #(
    .INIT(64'h00000000FFFF0200)) 
    \BF_data_buf[93]_i_1 
       (.I0(\BF_data_buf[197]_i_4_n_0 ),
        .I1(flip_cnt__0[2]),
        .I2(flip_cnt__0[0]),
        .I3(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I4(just_dumped),
        .I5(i_dump),
        .O(p_0_in[93]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \BF_data_buf[93]_i_2 
       (.I0(flip_cnt__0[2]),
        .I1(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ),
        .I2(flip_cnt__0[0]),
        .I3(i_BF_data[46]),
        .I4(just_dumped),
        .O(p_1_in[93]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[94]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[0]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[94]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[95]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[1]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[95]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[96]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[2]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[96]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[97]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[3]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[97]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[98]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[4]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[98]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \BF_data_buf[99]_i_1 
       (.I0(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ),
        .I1(i_BF_data[5]),
        .I2(flip_cnt__0[0]),
        .I3(flip_cnt__0[1]),
        .I4(just_dumped),
        .O(p_1_in[99]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \BF_data_buf[9]_i_1 
       (.I0(flip_cnt__0[2]),
        .I1(flip_cnt__0[1]),
        .I2(i_BF_data[9]),
        .I3(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ),
        .I4(just_dumped),
        .O(p_1_in[9]));
  FDCE \BF_data_buf_reg[0] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[0]),
        .Q(o_BF_data[0]));
  FDCE \BF_data_buf_reg[100] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[100]),
        .Q(o_BF_data[100]));
  FDCE \BF_data_buf_reg[101] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[101]),
        .Q(o_BF_data[101]));
  FDCE \BF_data_buf_reg[102] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[102]),
        .Q(o_BF_data[102]));
  FDCE \BF_data_buf_reg[103] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[103]),
        .Q(o_BF_data[103]));
  FDCE \BF_data_buf_reg[104] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[104]),
        .Q(o_BF_data[104]));
  FDCE \BF_data_buf_reg[105] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[105]),
        .Q(o_BF_data[105]));
  FDCE \BF_data_buf_reg[106] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[106]),
        .Q(o_BF_data[106]));
  FDCE \BF_data_buf_reg[107] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[107]),
        .Q(o_BF_data[107]));
  FDCE \BF_data_buf_reg[108] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[108]),
        .Q(o_BF_data[108]));
  FDCE \BF_data_buf_reg[109] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[109]),
        .Q(o_BF_data[109]));
  FDCE \BF_data_buf_reg[10] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[10]),
        .Q(o_BF_data[10]));
  FDCE \BF_data_buf_reg[110] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[110]),
        .Q(o_BF_data[110]));
  FDCE \BF_data_buf_reg[111] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[111]),
        .Q(o_BF_data[111]));
  FDCE \BF_data_buf_reg[112] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[112]),
        .Q(o_BF_data[112]));
  FDCE \BF_data_buf_reg[113] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[113]),
        .Q(o_BF_data[113]));
  FDCE \BF_data_buf_reg[114] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[114]),
        .Q(o_BF_data[114]));
  FDCE \BF_data_buf_reg[115] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[115]),
        .Q(o_BF_data[115]));
  FDCE \BF_data_buf_reg[116] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[116]),
        .Q(o_BF_data[116]));
  FDCE \BF_data_buf_reg[117] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[117]),
        .Q(o_BF_data[117]));
  FDCE \BF_data_buf_reg[118] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[118]),
        .Q(o_BF_data[118]));
  FDCE \BF_data_buf_reg[119] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[119]),
        .Q(o_BF_data[119]));
  FDCE \BF_data_buf_reg[11] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[11]),
        .Q(o_BF_data[11]));
  FDCE \BF_data_buf_reg[120] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[120]),
        .Q(o_BF_data[120]));
  FDCE \BF_data_buf_reg[121] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[121]),
        .Q(o_BF_data[121]));
  FDCE \BF_data_buf_reg[122] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[122]),
        .Q(o_BF_data[122]));
  FDCE \BF_data_buf_reg[123] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[123]),
        .Q(o_BF_data[123]));
  FDCE \BF_data_buf_reg[124] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[124]),
        .Q(o_BF_data[124]));
  FDCE \BF_data_buf_reg[125] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[125]),
        .Q(o_BF_data[125]));
  FDCE \BF_data_buf_reg[126] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[126]),
        .Q(o_BF_data[126]));
  FDCE \BF_data_buf_reg[127] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[127]),
        .Q(o_BF_data[127]));
  FDCE \BF_data_buf_reg[128] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[128]),
        .Q(o_BF_data[128]));
  FDCE \BF_data_buf_reg[129] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[129]),
        .Q(o_BF_data[129]));
  FDCE \BF_data_buf_reg[12] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[12]),
        .Q(o_BF_data[12]));
  FDCE \BF_data_buf_reg[130] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[130]),
        .Q(o_BF_data[130]));
  FDCE \BF_data_buf_reg[131] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[131]),
        .Q(o_BF_data[131]));
  FDCE \BF_data_buf_reg[132] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[132]),
        .Q(o_BF_data[132]));
  FDCE \BF_data_buf_reg[133] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[133]),
        .Q(o_BF_data[133]));
  FDCE \BF_data_buf_reg[134] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[134]),
        .Q(o_BF_data[134]));
  FDCE \BF_data_buf_reg[135] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[135]),
        .Q(o_BF_data[135]));
  FDCE \BF_data_buf_reg[136] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[136]),
        .Q(o_BF_data[136]));
  FDCE \BF_data_buf_reg[137] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[137]),
        .Q(o_BF_data[137]));
  FDCE \BF_data_buf_reg[138] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[138]),
        .Q(o_BF_data[138]));
  FDCE \BF_data_buf_reg[139] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[139]),
        .Q(o_BF_data[139]));
  FDCE \BF_data_buf_reg[13] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[13]),
        .Q(o_BF_data[13]));
  FDCE \BF_data_buf_reg[140] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[140]),
        .Q(o_BF_data[140]));
  FDCE \BF_data_buf_reg[141] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[141]),
        .Q(o_BF_data[141]));
  FDCE \BF_data_buf_reg[142] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[142]),
        .Q(o_BF_data[142]));
  FDCE \BF_data_buf_reg[143] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[143]),
        .Q(o_BF_data[143]));
  FDCE \BF_data_buf_reg[144] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[144]),
        .Q(o_BF_data[144]));
  FDCE \BF_data_buf_reg[145] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[145]),
        .Q(o_BF_data[145]));
  FDCE \BF_data_buf_reg[146] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[146]),
        .Q(o_BF_data[146]));
  FDCE \BF_data_buf_reg[147] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[147]),
        .Q(o_BF_data[147]));
  FDCE \BF_data_buf_reg[148] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[148]),
        .Q(o_BF_data[148]));
  FDCE \BF_data_buf_reg[149] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[149]),
        .Q(o_BF_data[149]));
  FDCE \BF_data_buf_reg[14] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[14]),
        .Q(o_BF_data[14]));
  FDCE \BF_data_buf_reg[150] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[150]),
        .Q(o_BF_data[150]));
  FDCE \BF_data_buf_reg[151] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[151]),
        .Q(o_BF_data[151]));
  FDCE \BF_data_buf_reg[152] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[152]),
        .Q(o_BF_data[152]));
  FDCE \BF_data_buf_reg[153] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[153]),
        .Q(o_BF_data[153]));
  FDCE \BF_data_buf_reg[154] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[154]),
        .Q(o_BF_data[154]));
  FDCE \BF_data_buf_reg[155] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[155]),
        .Q(o_BF_data[155]));
  FDCE \BF_data_buf_reg[156] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[156]),
        .Q(o_BF_data[156]));
  FDCE \BF_data_buf_reg[157] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[157]),
        .Q(o_BF_data[157]));
  FDCE \BF_data_buf_reg[158] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[158]),
        .Q(o_BF_data[158]));
  FDCE \BF_data_buf_reg[159] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[159]),
        .Q(o_BF_data[159]));
  FDCE \BF_data_buf_reg[15] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[15]),
        .Q(o_BF_data[15]));
  FDCE \BF_data_buf_reg[160] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[160]),
        .Q(o_BF_data[160]));
  FDCE \BF_data_buf_reg[161] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[161]),
        .Q(o_BF_data[161]));
  FDCE \BF_data_buf_reg[162] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[162]),
        .Q(o_BF_data[162]));
  FDCE \BF_data_buf_reg[163] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[163]),
        .Q(o_BF_data[163]));
  FDCE \BF_data_buf_reg[164] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[164]),
        .Q(o_BF_data[164]));
  FDCE \BF_data_buf_reg[165] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[165]),
        .Q(o_BF_data[165]));
  FDCE \BF_data_buf_reg[166] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[166]),
        .Q(o_BF_data[166]));
  FDCE \BF_data_buf_reg[167] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[167]),
        .Q(o_BF_data[167]));
  FDCE \BF_data_buf_reg[168] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[168]),
        .Q(o_BF_data[168]));
  FDCE \BF_data_buf_reg[169] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[169]),
        .Q(o_BF_data[169]));
  FDCE \BF_data_buf_reg[16] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[16]),
        .Q(o_BF_data[16]));
  FDCE \BF_data_buf_reg[170] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[170]),
        .Q(o_BF_data[170]));
  FDCE \BF_data_buf_reg[171] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[171]),
        .Q(o_BF_data[171]));
  FDCE \BF_data_buf_reg[172] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[172]),
        .Q(o_BF_data[172]));
  FDCE \BF_data_buf_reg[173] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[173]),
        .Q(o_BF_data[173]));
  FDCE \BF_data_buf_reg[174] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[174]),
        .Q(o_BF_data[174]));
  FDCE \BF_data_buf_reg[175] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[175]),
        .Q(o_BF_data[175]));
  FDCE \BF_data_buf_reg[176] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[176]),
        .Q(o_BF_data[176]));
  FDCE \BF_data_buf_reg[177] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[177]),
        .Q(o_BF_data[177]));
  FDCE \BF_data_buf_reg[178] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[178]),
        .Q(o_BF_data[178]));
  FDCE \BF_data_buf_reg[179] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[179]),
        .Q(o_BF_data[179]));
  FDCE \BF_data_buf_reg[17] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[17]),
        .Q(o_BF_data[17]));
  FDCE \BF_data_buf_reg[180] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[180]),
        .Q(o_BF_data[180]));
  FDCE \BF_data_buf_reg[181] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[181]),
        .Q(o_BF_data[181]));
  FDCE \BF_data_buf_reg[182] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[182]),
        .Q(o_BF_data[182]));
  FDCE \BF_data_buf_reg[183] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[183]),
        .Q(o_BF_data[183]));
  FDCE \BF_data_buf_reg[184] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[184]),
        .Q(o_BF_data[184]));
  FDCE \BF_data_buf_reg[185] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[185]),
        .Q(o_BF_data[185]));
  FDCE \BF_data_buf_reg[186] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[186]),
        .Q(o_BF_data[186]));
  FDCE \BF_data_buf_reg[187] 
       (.C(sysclk),
        .CE(p_0_in[187]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[187]),
        .Q(o_BF_data[187]));
  FDCE \BF_data_buf_reg[188] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\BF_data_buf[188]_i_1_n_0 ),
        .Q(o_BF_data[188]));
  FDCE \BF_data_buf_reg[189] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\BF_data_buf[189]_i_1_n_0 ),
        .Q(o_BF_data[189]));
  FDCE \BF_data_buf_reg[18] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[18]),
        .Q(o_BF_data[18]));
  FDCE \BF_data_buf_reg[190] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[0]),
        .Q(o_BF_data[190]));
  FDCE \BF_data_buf_reg[191] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[1]),
        .Q(o_BF_data[191]));
  FDCE \BF_data_buf_reg[192] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[2]),
        .Q(o_BF_data[192]));
  FDCE \BF_data_buf_reg[193] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[3]),
        .Q(o_BF_data[193]));
  FDCE \BF_data_buf_reg[194] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[4]),
        .Q(o_BF_data[194]));
  FDCE \BF_data_buf_reg[195] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[5]),
        .Q(o_BF_data[195]));
  FDCE \BF_data_buf_reg[196] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[6]),
        .Q(o_BF_data[196]));
  FDCE \BF_data_buf_reg[197] 
       (.C(sysclk),
        .CE(p_0_in[197]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[7]),
        .Q(o_BF_data[197]));
  FDCE \BF_data_buf_reg[19] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[19]),
        .Q(o_BF_data[19]));
  FDCE \BF_data_buf_reg[1] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[1]),
        .Q(o_BF_data[1]));
  FDCE \BF_data_buf_reg[20] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[20]),
        .Q(o_BF_data[20]));
  FDCE \BF_data_buf_reg[21] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[21]),
        .Q(o_BF_data[21]));
  FDCE \BF_data_buf_reg[22] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[22]),
        .Q(o_BF_data[22]));
  FDCE \BF_data_buf_reg[23] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[23]),
        .Q(o_BF_data[23]));
  FDCE \BF_data_buf_reg[24] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[24]),
        .Q(o_BF_data[24]));
  FDCE \BF_data_buf_reg[25] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[25]),
        .Q(o_BF_data[25]));
  FDCE \BF_data_buf_reg[26] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[26]),
        .Q(o_BF_data[26]));
  FDCE \BF_data_buf_reg[27] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[27]),
        .Q(o_BF_data[27]));
  FDCE \BF_data_buf_reg[28] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[28]),
        .Q(o_BF_data[28]));
  FDCE \BF_data_buf_reg[29] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[29]),
        .Q(o_BF_data[29]));
  FDCE \BF_data_buf_reg[2] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[2]),
        .Q(o_BF_data[2]));
  FDCE \BF_data_buf_reg[30] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[30]),
        .Q(o_BF_data[30]));
  FDCE \BF_data_buf_reg[31] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[31]),
        .Q(o_BF_data[31]));
  FDCE \BF_data_buf_reg[32] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[32]),
        .Q(o_BF_data[32]));
  FDCE \BF_data_buf_reg[33] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[33]),
        .Q(o_BF_data[33]));
  FDCE \BF_data_buf_reg[34] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[34]),
        .Q(o_BF_data[34]));
  FDCE \BF_data_buf_reg[35] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[35]),
        .Q(o_BF_data[35]));
  FDCE \BF_data_buf_reg[36] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[36]),
        .Q(o_BF_data[36]));
  FDCE \BF_data_buf_reg[37] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[37]),
        .Q(o_BF_data[37]));
  FDCE \BF_data_buf_reg[38] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[38]),
        .Q(o_BF_data[38]));
  FDCE \BF_data_buf_reg[39] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[39]),
        .Q(o_BF_data[39]));
  FDCE \BF_data_buf_reg[3] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[3]),
        .Q(o_BF_data[3]));
  FDCE \BF_data_buf_reg[40] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[40]),
        .Q(o_BF_data[40]));
  FDCE \BF_data_buf_reg[41] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[41]),
        .Q(o_BF_data[41]));
  FDCE \BF_data_buf_reg[42] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[42]),
        .Q(o_BF_data[42]));
  FDCE \BF_data_buf_reg[43] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[43]),
        .Q(o_BF_data[43]));
  FDCE \BF_data_buf_reg[44] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[44]),
        .Q(o_BF_data[44]));
  FDCE \BF_data_buf_reg[45] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[45]),
        .Q(o_BF_data[45]));
  FDCE \BF_data_buf_reg[46] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[46]),
        .Q(o_BF_data[46]));
  FDCE \BF_data_buf_reg[47] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[47]),
        .Q(o_BF_data[47]));
  FDCE \BF_data_buf_reg[48] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[48]),
        .Q(o_BF_data[48]));
  FDCE \BF_data_buf_reg[49] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[49]),
        .Q(o_BF_data[49]));
  FDCE \BF_data_buf_reg[4] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[4]),
        .Q(o_BF_data[4]));
  FDCE \BF_data_buf_reg[50] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[50]),
        .Q(o_BF_data[50]));
  FDCE \BF_data_buf_reg[51] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[51]),
        .Q(o_BF_data[51]));
  FDCE \BF_data_buf_reg[52] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[52]),
        .Q(o_BF_data[52]));
  FDCE \BF_data_buf_reg[53] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[53]),
        .Q(o_BF_data[53]));
  FDCE \BF_data_buf_reg[54] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[54]),
        .Q(o_BF_data[54]));
  FDCE \BF_data_buf_reg[55] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[55]),
        .Q(o_BF_data[55]));
  FDCE \BF_data_buf_reg[56] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[56]),
        .Q(o_BF_data[56]));
  FDCE \BF_data_buf_reg[57] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[57]),
        .Q(o_BF_data[57]));
  FDCE \BF_data_buf_reg[58] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[58]),
        .Q(o_BF_data[58]));
  FDCE \BF_data_buf_reg[59] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[59]),
        .Q(o_BF_data[59]));
  FDCE \BF_data_buf_reg[5] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[5]),
        .Q(o_BF_data[5]));
  FDCE \BF_data_buf_reg[60] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[60]),
        .Q(o_BF_data[60]));
  FDCE \BF_data_buf_reg[61] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[61]),
        .Q(o_BF_data[61]));
  FDCE \BF_data_buf_reg[62] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[62]),
        .Q(o_BF_data[62]));
  FDCE \BF_data_buf_reg[63] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[63]),
        .Q(o_BF_data[63]));
  FDCE \BF_data_buf_reg[64] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[64]),
        .Q(o_BF_data[64]));
  FDCE \BF_data_buf_reg[65] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[65]),
        .Q(o_BF_data[65]));
  FDCE \BF_data_buf_reg[66] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[66]),
        .Q(o_BF_data[66]));
  FDCE \BF_data_buf_reg[67] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[67]),
        .Q(o_BF_data[67]));
  FDCE \BF_data_buf_reg[68] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[68]),
        .Q(o_BF_data[68]));
  FDCE \BF_data_buf_reg[69] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[69]),
        .Q(o_BF_data[69]));
  FDCE \BF_data_buf_reg[6] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[6]),
        .Q(o_BF_data[6]));
  FDCE \BF_data_buf_reg[70] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[70]),
        .Q(o_BF_data[70]));
  FDCE \BF_data_buf_reg[71] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[71]),
        .Q(o_BF_data[71]));
  FDCE \BF_data_buf_reg[72] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[72]),
        .Q(o_BF_data[72]));
  FDCE \BF_data_buf_reg[73] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[73]),
        .Q(o_BF_data[73]));
  FDCE \BF_data_buf_reg[74] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[74]),
        .Q(o_BF_data[74]));
  FDCE \BF_data_buf_reg[75] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[75]),
        .Q(o_BF_data[75]));
  FDCE \BF_data_buf_reg[76] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[76]),
        .Q(o_BF_data[76]));
  FDCE \BF_data_buf_reg[77] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[77]),
        .Q(o_BF_data[77]));
  FDCE \BF_data_buf_reg[78] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[78]),
        .Q(o_BF_data[78]));
  FDCE \BF_data_buf_reg[79] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[79]),
        .Q(o_BF_data[79]));
  FDCE \BF_data_buf_reg[7] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[7]),
        .Q(o_BF_data[7]));
  FDCE \BF_data_buf_reg[80] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[80]),
        .Q(o_BF_data[80]));
  FDCE \BF_data_buf_reg[81] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[81]),
        .Q(o_BF_data[81]));
  FDCE \BF_data_buf_reg[82] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[82]),
        .Q(o_BF_data[82]));
  FDCE \BF_data_buf_reg[83] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[83]),
        .Q(o_BF_data[83]));
  FDCE \BF_data_buf_reg[84] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[84]),
        .Q(o_BF_data[84]));
  FDCE \BF_data_buf_reg[85] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[85]),
        .Q(o_BF_data[85]));
  FDCE \BF_data_buf_reg[86] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[86]),
        .Q(o_BF_data[86]));
  FDCE \BF_data_buf_reg[87] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[87]),
        .Q(o_BF_data[87]));
  FDCE \BF_data_buf_reg[88] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[88]),
        .Q(o_BF_data[88]));
  FDCE \BF_data_buf_reg[89] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[89]),
        .Q(o_BF_data[89]));
  FDCE \BF_data_buf_reg[8] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[8]),
        .Q(o_BF_data[8]));
  FDCE \BF_data_buf_reg[90] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[90]),
        .Q(o_BF_data[90]));
  FDCE \BF_data_buf_reg[91] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[91]),
        .Q(o_BF_data[91]));
  FDCE \BF_data_buf_reg[92] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[92]),
        .Q(o_BF_data[92]));
  FDCE \BF_data_buf_reg[93] 
       (.C(sysclk),
        .CE(p_0_in[93]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[93]),
        .Q(o_BF_data[93]));
  FDCE \BF_data_buf_reg[94] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[94]),
        .Q(o_BF_data[94]));
  FDCE \BF_data_buf_reg[95] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[95]),
        .Q(o_BF_data[95]));
  FDCE \BF_data_buf_reg[96] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[96]),
        .Q(o_BF_data[96]));
  FDCE \BF_data_buf_reg[97] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[97]),
        .Q(o_BF_data[97]));
  FDCE \BF_data_buf_reg[98] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[98]),
        .Q(o_BF_data[98]));
  FDCE \BF_data_buf_reg[99] 
       (.C(sysclk),
        .CE(p_0_in[140]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[99]),
        .Q(o_BF_data[99]));
  FDCE \BF_data_buf_reg[9] 
       (.C(sysclk),
        .CE(p_0_in[46]),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(p_1_in[9]),
        .Q(o_BF_data[9]));
  LUT6 #(
    .INIT(64'hFFFF00FB00000004)) 
    \FSM_sequential_flip_cnt[0]_i_1 
       (.I0(data_ready_prev),
        .I1(data_ready),
        .I2(flip_cnt__0[2]),
        .I3(just_dumped_reg_rep_n_0),
        .I4(i_dump),
        .I5(flip_cnt__0[0]),
        .O(\FSM_sequential_flip_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FB00000004)) 
    \FSM_sequential_flip_cnt[0]_rep_i_1 
       (.I0(data_ready_prev),
        .I1(data_ready),
        .I2(flip_cnt__0[2]),
        .I3(just_dumped),
        .I4(i_dump),
        .I5(flip_cnt__0[0]),
        .O(\FSM_sequential_flip_cnt[0]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F700000008)) 
    \FSM_sequential_flip_cnt[1]_i_1 
       (.I0(flip_cnt__0[0]),
        .I1(\BF_data_buf[197]_i_4_n_0 ),
        .I2(flip_cnt__0[2]),
        .I3(just_dumped_reg_rep_n_0),
        .I4(i_dump),
        .I5(flip_cnt__0[1]),
        .O(\FSM_sequential_flip_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F700000008)) 
    \FSM_sequential_flip_cnt[1]_rep_i_1 
       (.I0(flip_cnt__0[0]),
        .I1(\BF_data_buf[197]_i_4_n_0 ),
        .I2(flip_cnt__0[2]),
        .I3(just_dumped),
        .I4(i_dump),
        .I5(flip_cnt__0[1]),
        .O(\FSM_sequential_flip_cnt[1]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF000000FF80)) 
    \FSM_sequential_flip_cnt[2]_i_1 
       (.I0(flip_cnt__0[0]),
        .I1(flip_cnt__0[1]),
        .I2(\BF_data_buf[197]_i_4_n_0 ),
        .I3(flip_cnt__0[2]),
        .I4(just_dumped_reg_rep_n_0),
        .I5(i_dump),
        .O(\FSM_sequential_flip_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF000000FF80)) 
    \FSM_sequential_flip_cnt[2]_rep_i_1 
       (.I0(flip_cnt__0[0]),
        .I1(flip_cnt__0[1]),
        .I2(\BF_data_buf[197]_i_4_n_0 ),
        .I3(flip_cnt__0[2]),
        .I4(just_dumped),
        .I5(i_dump),
        .O(\FSM_sequential_flip_cnt[2]_rep_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100," *) 
  (* ORIG_CELL_NAME = "FSM_sequential_flip_cnt_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flip_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\FSM_sequential_flip_cnt[0]_i_1_n_0 ),
        .Q(flip_cnt__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100," *) 
  (* ORIG_CELL_NAME = "FSM_sequential_flip_cnt_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flip_cnt_reg[0]_rep 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\FSM_sequential_flip_cnt[0]_rep_i_1_n_0 ),
        .Q(\FSM_sequential_flip_cnt_reg[0]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100," *) 
  (* ORIG_CELL_NAME = "FSM_sequential_flip_cnt_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flip_cnt_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\FSM_sequential_flip_cnt[1]_i_1_n_0 ),
        .Q(flip_cnt__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100," *) 
  (* ORIG_CELL_NAME = "FSM_sequential_flip_cnt_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flip_cnt_reg[1]_rep 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\FSM_sequential_flip_cnt[1]_rep_i_1_n_0 ),
        .Q(\FSM_sequential_flip_cnt_reg[1]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100," *) 
  (* ORIG_CELL_NAME = "FSM_sequential_flip_cnt_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flip_cnt_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\FSM_sequential_flip_cnt[2]_i_1_n_0 ),
        .Q(flip_cnt__0[2]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100," *) 
  (* ORIG_CELL_NAME = "FSM_sequential_flip_cnt_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_flip_cnt_reg[2]_rep 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(\FSM_sequential_flip_cnt[2]_rep_i_1_n_0 ),
        .Q(\FSM_sequential_flip_cnt_reg[2]_rep_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ready_prev_i_1
       (.I0(data_ready_prev),
        .I1(i_dump),
        .I2(data_ready),
        .O(data_ready_prev_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_ready_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(data_ready_prev_i_1_n_0),
        .Q(data_ready_prev));
  LUT4 #(
    .INIT(16'h0004)) 
    \flight_total[7]_i_1 
       (.I0(just_dumped_reg_rep_n_0),
        .I1(data_ready),
        .I2(data_ready_prev),
        .I3(i_dump),
        .O(\flight_total[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[0] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[0]),
        .Q(flight_total__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[1] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[1]),
        .Q(flight_total__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[2] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[2]),
        .Q(flight_total__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[3] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[3]),
        .Q(flight_total__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[4] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[4]),
        .Q(flight_total__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[5] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[5]),
        .Q(flight_total__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[6] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[6]),
        .Q(flight_total__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \flight_total_reg[7] 
       (.C(sysclk),
        .CE(\flight_total[7]_i_1_n_0 ),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(BF_data_buf[7]),
        .Q(flight_total__0[7]));
  (* ORIG_CELL_NAME = "just_dumped_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    just_dumped_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(i_dump),
        .Q(just_dumped));
  (* ORIG_CELL_NAME = "just_dumped_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    just_dumped_reg_rep
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(i_dump),
        .Q(just_dumped_reg_rep_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led1_i_1
       (.I0(i_dump),
        .I1(led1),
        .O(led1_i_1_n_0));
  FDCE led1_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(led1_i_1_n_0),
        .Q(led1));
  FDCE o_BF_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(\BF_data_buf[197]_i_3_n_0 ),
        .D(i_dump),
        .Q(o_BF_drive));
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

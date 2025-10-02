// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 29 19:57:06 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_full_sensor_data_0_0/PCB_All_SRAM_I2C_full_sensor_data_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_I2C_full_sensor_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2C_full_sensor_data_fetcher,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_I2C_full_sensor_data_0_0
   (clk,
    rst,
    i_busy,
    i_data_read,
    i_TX_done_HK,
    i_TX_done_BF,
    i_TX_done_RAD,
    i_TX_done_HTR,
    i_HK_RTC_request,
    i_BF_RTC_request,
    i_RAD_RTC_request,
    i_HK_ALT_request,
    i_HK_TEMP_request,
    i_HTR_TEMP_request,
    i_SET_RTC_request,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    o_TX_DV_HK,
    o_TX_DV_BF,
    o_TX_DV_RAD,
    o_TX_DV_HTR,
    o_SET_RTC_done,
    o_TX_RTC_data,
    o_TX_ALT_data,
    o_TX_TEMP_data,
    led1,
    led2,
    led3);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input i_busy;
  input [7:0]i_data_read;
  input i_TX_done_HK;
  input i_TX_done_BF;
  input i_TX_done_RAD;
  input i_TX_done_HTR;
  input i_HK_RTC_request;
  input i_BF_RTC_request;
  input i_RAD_RTC_request;
  input i_HK_ALT_request;
  input i_HK_TEMP_request;
  input i_HTR_TEMP_request;
  input i_SET_RTC_request;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV_HK;
  output o_TX_DV_BF;
  output o_TX_DV_RAD;
  output o_TX_DV_HTR;
  output o_SET_RTC_done;
  output [23:0]o_TX_RTC_data;
  output [23:0]o_TX_ALT_data;
  output [31:0]o_TX_TEMP_data;
  output led1;
  output led2;
  output led3;

  wire \<const0> ;
  wire clk;
  wire i_BF_RTC_request;
  wire i_HK_ALT_request;
  wire i_HK_RTC_request;
  wire i_HK_TEMP_request;
  wire i_HTR_TEMP_request;
  wire i_RAD_RTC_request;
  wire i_SET_RTC_request;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led3;
  wire o_SET_RTC_done;
  wire [11:11]\^o_TX_ALT_data ;
  wire o_TX_DV_BF;
  wire o_TX_DV_HK;
  wire o_TX_DV_HTR;
  wire o_TX_DV_RAD;
  wire [23:0]o_TX_RTC_data;
  wire [15:0]\^o_TX_TEMP_data ;
  wire [6:3]\^o_i2c_address ;
  wire [7:5]\^o_i2c_data_wr ;
  wire o_i2c_ena;
  wire o_i2c_rw;
  wire rst;

  assign led1 = \<const0> ;
  assign led2 = \<const0> ;
  assign o_TX_ALT_data[23] = \<const0> ;
  assign o_TX_ALT_data[22] = \<const0> ;
  assign o_TX_ALT_data[21] = \<const0> ;
  assign o_TX_ALT_data[20] = \<const0> ;
  assign o_TX_ALT_data[19] = \<const0> ;
  assign o_TX_ALT_data[18] = \<const0> ;
  assign o_TX_ALT_data[17] = \<const0> ;
  assign o_TX_ALT_data[16] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[15] = \<const0> ;
  assign o_TX_ALT_data[14] = \<const0> ;
  assign o_TX_ALT_data[13] = \<const0> ;
  assign o_TX_ALT_data[12] = \<const0> ;
  assign o_TX_ALT_data[11] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[10] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[9] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[8] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[7] = \<const0> ;
  assign o_TX_ALT_data[6] = \<const0> ;
  assign o_TX_ALT_data[5] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[4] = \<const0> ;
  assign o_TX_ALT_data[3] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[2] = \^o_TX_ALT_data [11];
  assign o_TX_ALT_data[1] = \<const0> ;
  assign o_TX_ALT_data[0] = \<const0> ;
  assign o_TX_TEMP_data[31:16] = \^o_TX_TEMP_data [15:0];
  assign o_TX_TEMP_data[15:0] = \^o_TX_TEMP_data [15:0];
  assign o_i2c_address[6] = \^o_i2c_address [6];
  assign o_i2c_address[5] = \^o_i2c_address [3];
  assign o_i2c_address[4] = \<const0> ;
  assign o_i2c_address[3] = \^o_i2c_address [3];
  assign o_i2c_address[2] = \^o_i2c_address [3];
  assign o_i2c_address[1] = \^o_i2c_address [3];
  assign o_i2c_address[0] = \^o_i2c_address [3];
  assign o_i2c_data_wr[7] = \^o_i2c_data_wr [7];
  assign o_i2c_data_wr[6] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[5] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \<const0> ;
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[0] = \^o_i2c_data_wr [5];
  GND GND
       (.G(\<const0> ));
  PCB_All_SRAM_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher U0
       (.clk(clk),
        .i_BF_RTC_request(i_BF_RTC_request),
        .i_HK_ALT_request(i_HK_ALT_request),
        .i_HK_RTC_request(i_HK_RTC_request),
        .i_HK_TEMP_request(i_HK_TEMP_request),
        .i_HTR_TEMP_request(i_HTR_TEMP_request),
        .i_RAD_RTC_request(i_RAD_RTC_request),
        .i_SET_RTC_request(i_SET_RTC_request),
        .i_busy(i_busy),
        .i_data_read(i_data_read),
        .led3(led3),
        .o_SET_RTC_done(o_SET_RTC_done),
        .o_TX_ALT_data(\^o_TX_ALT_data ),
        .o_TX_DV_BF(o_TX_DV_BF),
        .o_TX_DV_HK(o_TX_DV_HK),
        .o_TX_DV_HTR(o_TX_DV_HTR),
        .o_TX_DV_RAD(o_TX_DV_RAD),
        .o_TX_RTC_data(o_TX_RTC_data),
        .o_TX_TEMP_data(\^o_TX_TEMP_data ),
        .o_i2c_address({\^o_i2c_address [6],\^o_i2c_address [3]}),
        .o_i2c_data_wr({\^o_i2c_data_wr [7],\^o_i2c_data_wr [5]}),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "I2C_full_sensor_data_fetcher" *) 
module PCB_All_SRAM_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher
   (o_i2c_address,
    o_i2c_data_wr,
    o_TX_RTC_data,
    o_TX_TEMP_data,
    o_i2c_ena,
    o_i2c_rw,
    o_TX_DV_HK,
    o_TX_DV_BF,
    o_TX_DV_RAD,
    o_TX_DV_HTR,
    o_SET_RTC_done,
    o_TX_ALT_data,
    led3,
    i_SET_RTC_request,
    clk,
    i_HK_RTC_request,
    i_BF_RTC_request,
    i_HK_TEMP_request,
    i_HTR_TEMP_request,
    i_RAD_RTC_request,
    i_HK_ALT_request,
    rst,
    i_busy,
    i_data_read);
  output [1:0]o_i2c_address;
  output [1:0]o_i2c_data_wr;
  output [23:0]o_TX_RTC_data;
  output [15:0]o_TX_TEMP_data;
  output o_i2c_ena;
  output o_i2c_rw;
  output o_TX_DV_HK;
  output o_TX_DV_BF;
  output o_TX_DV_RAD;
  output o_TX_DV_HTR;
  output o_SET_RTC_done;
  output [0:0]o_TX_ALT_data;
  output led3;
  input i_SET_RTC_request;
  input clk;
  input i_HK_RTC_request;
  input i_BF_RTC_request;
  input i_HK_TEMP_request;
  input i_HTR_TEMP_request;
  input i_RAD_RTC_request;
  input i_HK_ALT_request;
  input rst;
  input i_busy;
  input [7:0]i_data_read;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire [2:0]busy_cnt;
  wire \busy_cnt[0]_i_2_n_0 ;
  wire \busy_cnt[1]_i_2_n_0 ;
  wire \busy_cnt[2]_i_1_n_0 ;
  wire \busy_cnt[2]_i_3_n_0 ;
  wire \busy_cnt[2]_i_4_n_0 ;
  wire \busy_cnt[2]_i_5_n_0 ;
  wire \busy_cnt_reg_n_0_[0] ;
  wire \busy_cnt_reg_n_0_[1] ;
  wire \busy_cnt_reg_n_0_[2] ;
  wire busy_prev;
  wire busy_prev_reg_n_0;
  wire clk;
  wire i_BF_RTC_request;
  wire i_HK_ALT_request;
  wire i_HK_RTC_request;
  wire i_HK_TEMP_request;
  wire i_HTR_TEMP_request;
  wire i_RAD_RTC_request;
  wire i_SET_RTC_request;
  wire i_busy;
  wire [7:0]i_data_read;
  wire [25:1]in12;
  wire led3;
  wire led3_i_1_n_0;
  wire o_SET_RTC_done;
  wire o_SET_RTC_done_i_1_n_0;
  wire o_SET_RTC_done_i_2_n_0;
  wire o_SET_RTC_done_i_3_n_0;
  wire [0:0]o_TX_ALT_data;
  wire \o_TX_ALT_data[16]_i_1_n_0 ;
  wire \o_TX_ALT_data[16]_i_2_n_0 ;
  wire \o_TX_ALT_data[16]_i_3_n_0 ;
  wire o_TX_DV_BF;
  wire o_TX_DV_BF_i_1_n_0;
  wire o_TX_DV_BF_i_2_n_0;
  wire o_TX_DV_BF_i_3_n_0;
  wire o_TX_DV_HK;
  wire o_TX_DV_HK_i_1_n_0;
  wire o_TX_DV_HK_i_2_n_0;
  wire o_TX_DV_HK_i_3_n_0;
  wire o_TX_DV_HTR;
  wire o_TX_DV_HTR_i_1_n_0;
  wire o_TX_DV_RAD;
  wire o_TX_DV_RAD_i_1_n_0;
  wire [23:0]o_TX_RTC_data;
  wire \o_TX_RTC_data[23]_i_1_n_0 ;
  wire \o_TX_RTC_data[23]_i_2_n_0 ;
  wire [15:0]o_TX_TEMP_data;
  wire \o_TX_TEMP_data[31]_i_1_n_0 ;
  wire [1:0]o_i2c_address;
  wire \o_i2c_address[5]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_2_n_0 ;
  wire \o_i2c_address[6]_i_3_n_0 ;
  wire [1:0]o_i2c_data_wr;
  wire [6:6]o_i2c_data_wr0_in;
  wire \o_i2c_data_wr[6]_i_1_n_0 ;
  wire \o_i2c_data_wr[6]_i_3_n_0 ;
  wire \o_i2c_data_wr[6]_i_4_n_0 ;
  wire \o_i2c_data_wr[6]_i_5_n_0 ;
  wire \o_i2c_data_wr[6]_i_6_n_0 ;
  wire \o_i2c_data_wr[6]_i_7_n_0 ;
  wire \o_i2c_data_wr[6]_i_8_n_0 ;
  wire \o_i2c_data_wr[7]_i_1_n_0 ;
  wire \o_i2c_data_wr[7]_i_2_n_0 ;
  wire \o_i2c_data_wr[7]_i_3_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_10_n_0;
  wire o_i2c_ena_i_11_n_0;
  wire o_i2c_ena_i_12_n_0;
  wire o_i2c_ena_i_1_n_0;
  wire o_i2c_ena_i_2_n_0;
  wire o_i2c_ena_i_3_n_0;
  wire o_i2c_ena_i_4_n_0;
  wire o_i2c_ena_i_5_n_0;
  wire o_i2c_ena_i_6_n_0;
  wire o_i2c_ena_i_7_n_0;
  wire o_i2c_ena_i_8_n_0;
  wire o_i2c_ena_i_9_n_0;
  wire o_i2c_rw;
  wire o_i2c_rw_i_1_n_0;
  wire o_i2c_rw_i_2_n_0;
  wire o_i2c_rw_i_3_n_0;
  wire o_i2c_rw_i_4_n_0;
  wire o_i2c_rw_i_5_n_0;
  wire rst;
  wire [23:16]rtc_data;
  wire \rtc_data[15]_i_1_n_0 ;
  wire \rtc_data[23]_i_1_n_0 ;
  wire \rtc_data[23]_i_3_n_0 ;
  wire \rtc_data[7]_i_1_n_0 ;
  wire \rtc_data[7]_i_2_n_0 ;
  wire \rtc_data_reg_n_0_[0] ;
  wire \rtc_data_reg_n_0_[10] ;
  wire \rtc_data_reg_n_0_[11] ;
  wire \rtc_data_reg_n_0_[12] ;
  wire \rtc_data_reg_n_0_[13] ;
  wire \rtc_data_reg_n_0_[14] ;
  wire \rtc_data_reg_n_0_[15] ;
  wire \rtc_data_reg_n_0_[16] ;
  wire \rtc_data_reg_n_0_[17] ;
  wire \rtc_data_reg_n_0_[18] ;
  wire \rtc_data_reg_n_0_[19] ;
  wire \rtc_data_reg_n_0_[1] ;
  wire \rtc_data_reg_n_0_[20] ;
  wire \rtc_data_reg_n_0_[21] ;
  wire \rtc_data_reg_n_0_[22] ;
  wire \rtc_data_reg_n_0_[23] ;
  wire \rtc_data_reg_n_0_[2] ;
  wire \rtc_data_reg_n_0_[3] ;
  wire \rtc_data_reg_n_0_[4] ;
  wire \rtc_data_reg_n_0_[5] ;
  wire \rtc_data_reg_n_0_[6] ;
  wire \rtc_data_reg_n_0_[7] ;
  wire \rtc_data_reg_n_0_[8] ;
  wire \rtc_data_reg_n_0_[9] ;
  wire [25:0]start_cnt;
  wire start_cnt0_carry__0_n_0;
  wire start_cnt0_carry__0_n_1;
  wire start_cnt0_carry__0_n_2;
  wire start_cnt0_carry__0_n_3;
  wire start_cnt0_carry__1_n_0;
  wire start_cnt0_carry__1_n_1;
  wire start_cnt0_carry__1_n_2;
  wire start_cnt0_carry__1_n_3;
  wire start_cnt0_carry__2_n_0;
  wire start_cnt0_carry__2_n_1;
  wire start_cnt0_carry__2_n_2;
  wire start_cnt0_carry__2_n_3;
  wire start_cnt0_carry__3_n_0;
  wire start_cnt0_carry__3_n_1;
  wire start_cnt0_carry__3_n_2;
  wire start_cnt0_carry__3_n_3;
  wire start_cnt0_carry__4_n_0;
  wire start_cnt0_carry__4_n_1;
  wire start_cnt0_carry__4_n_2;
  wire start_cnt0_carry__4_n_3;
  wire start_cnt0_carry_n_0;
  wire start_cnt0_carry_n_1;
  wire start_cnt0_carry_n_2;
  wire start_cnt0_carry_n_3;
  wire \start_cnt[25]_i_1_n_0 ;
  wire \start_cnt[25]_i_3_n_0 ;
  wire \start_cnt[25]_i_4_n_0 ;
  wire \start_cnt[25]_i_5_n_0 ;
  wire \start_cnt[25]_i_6_n_0 ;
  wire \start_cnt[25]_i_7_n_0 ;
  wire \start_cnt[25]_i_8_n_0 ;
  wire \start_cnt[25]_i_9_n_0 ;
  wire \start_cnt_reg_n_0_[0] ;
  wire \start_cnt_reg_n_0_[10] ;
  wire \start_cnt_reg_n_0_[11] ;
  wire \start_cnt_reg_n_0_[12] ;
  wire \start_cnt_reg_n_0_[13] ;
  wire \start_cnt_reg_n_0_[14] ;
  wire \start_cnt_reg_n_0_[15] ;
  wire \start_cnt_reg_n_0_[16] ;
  wire \start_cnt_reg_n_0_[17] ;
  wire \start_cnt_reg_n_0_[18] ;
  wire \start_cnt_reg_n_0_[19] ;
  wire \start_cnt_reg_n_0_[1] ;
  wire \start_cnt_reg_n_0_[20] ;
  wire \start_cnt_reg_n_0_[21] ;
  wire \start_cnt_reg_n_0_[22] ;
  wire \start_cnt_reg_n_0_[23] ;
  wire \start_cnt_reg_n_0_[24] ;
  wire \start_cnt_reg_n_0_[25] ;
  wire \start_cnt_reg_n_0_[2] ;
  wire \start_cnt_reg_n_0_[3] ;
  wire \start_cnt_reg_n_0_[4] ;
  wire \start_cnt_reg_n_0_[5] ;
  wire \start_cnt_reg_n_0_[6] ;
  wire \start_cnt_reg_n_0_[7] ;
  wire \start_cnt_reg_n_0_[8] ;
  wire \start_cnt_reg_n_0_[9] ;
  wire [2:0]state;
  wire [15:8]temp_data;
  wire \temp_data[15]_i_1_n_0 ;
  wire \temp_data[7]_i_1_n_0 ;
  wire \temp_data_reg_n_0_[0] ;
  wire \temp_data_reg_n_0_[10] ;
  wire \temp_data_reg_n_0_[11] ;
  wire \temp_data_reg_n_0_[12] ;
  wire \temp_data_reg_n_0_[13] ;
  wire \temp_data_reg_n_0_[14] ;
  wire \temp_data_reg_n_0_[15] ;
  wire \temp_data_reg_n_0_[1] ;
  wire \temp_data_reg_n_0_[2] ;
  wire \temp_data_reg_n_0_[3] ;
  wire \temp_data_reg_n_0_[4] ;
  wire \temp_data_reg_n_0_[5] ;
  wire \temp_data_reg_n_0_[6] ;
  wire \temp_data_reg_n_0_[7] ;
  wire \temp_data_reg_n_0_[8] ;
  wire \temp_data_reg_n_0_[9] ;
  wire \who_requested[0]_i_1_n_0 ;
  wire \who_requested[1]_i_1_n_0 ;
  wire \who_requested[1]_i_2_n_0 ;
  wire \who_requested[1]_i_3_n_0 ;
  wire \who_requested_reg_n_0_[0] ;
  wire \who_requested_reg_n_0_[1] ;
  wire [3:0]NLW_start_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_start_cnt0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FF3E00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(i_SET_RTC_request),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFFFFFAAAE0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state[2]),
        .I3(i_SET_RTC_request),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF10)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(i_HTR_TEMP_request),
        .I1(i_HK_TEMP_request),
        .I2(i_RAD_RTC_request),
        .I3(i_HK_ALT_request),
        .I4(i_BF_RTC_request),
        .I5(i_HK_RTC_request),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(o_TX_DV_HK_i_2_n_0),
        .I1(state[0]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(i_BF_RTC_request),
        .I1(i_HK_RTC_request),
        .I2(state[1]),
        .I3(i_SET_RTC_request),
        .I4(i_HK_TEMP_request),
        .I5(i_HTR_TEMP_request),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEEA)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(\start_cnt_reg_n_0_[24] ),
        .I3(o_i2c_ena_i_10_n_0),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0F00F088)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\rtc_data[23]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\start_cnt_reg_n_0_[25] ),
        .I3(o_SET_RTC_done_i_2_n_0),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E3)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(o_SET_RTC_done_i_2_n_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "send_temp:101,send_rtc:011,set_rtc:001,cleanup:110,temp:100,idle:000,rtc:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_temp:101,send_rtc:011,set_rtc:001,cleanup:110,temp:100,idle:000,rtc:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_temp:101,send_rtc:011,set_rtc:001,cleanup:110,temp:100,idle:000,rtc:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h22201210AAAA5A5A)) 
    \busy_cnt[0]_i_1 
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(i_busy),
        .I3(\busy_cnt[0]_i_2_n_0 ),
        .I4(busy_prev_reg_n_0),
        .I5(state[2]),
        .O(busy_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \busy_cnt[0]_i_2 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .O(\busy_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A000A0A)) 
    \busy_cnt[1]_i_1 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .I5(\busy_cnt[1]_i_2_n_0 ),
        .O(busy_cnt[1]));
  LUT6 #(
    .INIT(64'h0C0C05550FFF0000)) 
    \busy_cnt[1]_i_2 
       (.I0(o_i2c_ena_i_8_n_0),
        .I1(\busy_cnt[2]_i_4_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[0] ),
        .O(\busy_cnt[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F80)) 
    \busy_cnt[2]_i_1 
       (.I0(\o_i2c_data_wr[6]_i_5_n_0 ),
        .I1(\start_cnt_reg_n_0_[25] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\busy_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFEAAFFAAFEAA)) 
    \busy_cnt[2]_i_2 
       (.I0(\busy_cnt[2]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\busy_cnt[2]_i_4_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(busy_cnt[2]));
  LUT6 #(
    .INIT(64'hDF00200000000000)) 
    \busy_cnt[2]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(busy_prev_reg_n_0),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .I5(\busy_cnt[2]_i_5_n_0 ),
        .O(\busy_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \busy_cnt[2]_i_4 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(i_busy),
        .O(\busy_cnt[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \busy_cnt[2]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\busy_cnt[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[0] 
       (.C(clk),
        .CE(\busy_cnt[2]_i_1_n_0 ),
        .D(busy_cnt[0]),
        .Q(\busy_cnt_reg_n_0_[0] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[1] 
       (.C(clk),
        .CE(\busy_cnt[2]_i_1_n_0 ),
        .D(busy_cnt[1]),
        .Q(\busy_cnt_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[2] 
       (.C(clk),
        .CE(\busy_cnt[2]_i_1_n_0 ),
        .D(busy_cnt[2]),
        .Q(\busy_cnt_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h70)) 
    busy_prev_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(i_busy),
        .O(busy_prev));
  FDRE busy_prev_reg
       (.C(clk),
        .CE(\busy_cnt[2]_i_1_n_0 ),
        .D(busy_prev),
        .Q(busy_prev_reg_n_0),
        .R(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF704)) 
    led3_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(led3),
        .O(led3_i_1_n_0));
  FDRE led3_reg
       (.C(clk),
        .CE(1'b1),
        .D(led3_i_1_n_0),
        .Q(led3),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h55557FFF55554000)) 
    o_SET_RTC_done_i_1
       (.I0(state[2]),
        .I1(\o_i2c_data_wr[6]_i_5_n_0 ),
        .I2(o_SET_RTC_done_i_2_n_0),
        .I3(o_SET_RTC_done_i_3_n_0),
        .I4(o_i2c_ena_i_5_n_0),
        .I5(o_SET_RTC_done),
        .O(o_SET_RTC_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    o_SET_RTC_done_i_2
       (.I0(i_busy),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(o_SET_RTC_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    o_SET_RTC_done_i_3
       (.I0(\start_cnt_reg_n_0_[25] ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(o_SET_RTC_done_i_3_n_0));
  FDRE o_SET_RTC_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_SET_RTC_done_i_1_n_0),
        .Q(o_SET_RTC_done),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h5F5F1F5F0A0A0A0A)) 
    \o_TX_ALT_data[16]_i_1 
       (.I0(\o_TX_ALT_data[16]_i_2_n_0 ),
        .I1(rst),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(o_TX_ALT_data),
        .O(\o_TX_ALT_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \o_TX_ALT_data[16]_i_2 
       (.I0(\o_TX_ALT_data[16]_i_3_n_0 ),
        .I1(rst),
        .I2(state[0]),
        .I3(o_i2c_rw_i_4_n_0),
        .I4(i_HK_ALT_request),
        .I5(i_SET_RTC_request),
        .O(\o_TX_ALT_data[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_TX_ALT_data[16]_i_3 
       (.I0(i_BF_RTC_request),
        .I1(i_HK_RTC_request),
        .O(\o_TX_ALT_data[16]_i_3_n_0 ));
  FDRE \o_TX_ALT_data_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_TX_ALT_data[16]_i_1_n_0 ),
        .Q(o_TX_ALT_data),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAA2000)) 
    o_TX_DV_BF_i_1
       (.I0(o_TX_DV_BF_i_2_n_0),
        .I1(\who_requested_reg_n_0_[1] ),
        .I2(\who_requested_reg_n_0_[0] ),
        .I3(state[1]),
        .I4(o_TX_DV_BF_i_3_n_0),
        .I5(o_TX_DV_BF),
        .O(o_TX_DV_BF_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_TX_DV_BF_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .O(o_TX_DV_BF_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00E3)) 
    o_TX_DV_BF_i_3
       (.I0(o_i2c_ena_i_7_n_0),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(o_TX_DV_BF_i_3_n_0));
  FDRE o_TX_DV_BF_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_BF_i_1_n_0),
        .Q(o_TX_DV_BF),
        .R(o_i2c_ena_i_1_n_0));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    o_TX_DV_HK_i_1
       (.I0(o_TX_DV_HK_i_2_n_0),
        .I1(state[2]),
        .I2(state[0]),
        .I3(o_TX_DV_HK_i_3_n_0),
        .I4(o_TX_DV_HK),
        .O(o_TX_DV_HK_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF00000100)) 
    o_TX_DV_HK_i_2
       (.I0(i_BF_RTC_request),
        .I1(i_HK_RTC_request),
        .I2(i_SET_RTC_request),
        .I3(i_HK_ALT_request),
        .I4(state[1]),
        .I5(state[2]),
        .O(o_TX_DV_HK_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F101F0F0F10100F)) 
    o_TX_DV_HK_i_3
       (.I0(\who_requested_reg_n_0_[0] ),
        .I1(\who_requested_reg_n_0_[1] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(o_i2c_ena_i_7_n_0),
        .O(o_TX_DV_HK_i_3_n_0));
  FDRE o_TX_DV_HK_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HK_i_1_n_0),
        .Q(o_TX_DV_HK),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF0FF000800000)) 
    o_TX_DV_HTR_i_1
       (.I0(\who_requested_reg_n_0_[1] ),
        .I1(\who_requested_reg_n_0_[0] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(o_TX_DV_HTR),
        .O(o_TX_DV_HTR_i_1_n_0));
  FDRE o_TX_DV_HTR_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HTR_i_1_n_0),
        .Q(o_TX_DV_HTR),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAA2000)) 
    o_TX_DV_RAD_i_1
       (.I0(o_TX_DV_BF_i_2_n_0),
        .I1(\who_requested_reg_n_0_[0] ),
        .I2(\who_requested_reg_n_0_[1] ),
        .I3(state[1]),
        .I4(o_TX_DV_BF_i_3_n_0),
        .I5(o_TX_DV_RAD),
        .O(o_TX_DV_RAD_i_1_n_0));
  FDRE o_TX_DV_RAD_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_RAD_i_1_n_0),
        .Q(o_TX_DV_RAD),
        .R(o_i2c_ena_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    \o_TX_RTC_data[23]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(rst),
        .O(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2080)) 
    \o_TX_RTC_data[23]_i_2 
       (.I0(rst),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\o_TX_RTC_data[23]_i_2_n_0 ));
  FDRE \o_TX_RTC_data_reg[0] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[0] ),
        .Q(o_TX_RTC_data[0]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[10] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[10] ),
        .Q(o_TX_RTC_data[10]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[11] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[11] ),
        .Q(o_TX_RTC_data[11]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[12] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[12] ),
        .Q(o_TX_RTC_data[12]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[13] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[13] ),
        .Q(o_TX_RTC_data[13]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[14] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[14] ),
        .Q(o_TX_RTC_data[14]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[15] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[15] ),
        .Q(o_TX_RTC_data[15]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[16] ),
        .Q(o_TX_RTC_data[16]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[17] ),
        .Q(o_TX_RTC_data[17]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[18] ),
        .Q(o_TX_RTC_data[18]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[19] ),
        .Q(o_TX_RTC_data[19]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[1] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[1] ),
        .Q(o_TX_RTC_data[1]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[20] ),
        .Q(o_TX_RTC_data[20]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[21] ),
        .Q(o_TX_RTC_data[21]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[22] ),
        .Q(o_TX_RTC_data[22]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[23] ),
        .Q(o_TX_RTC_data[23]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[2] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[2] ),
        .Q(o_TX_RTC_data[2]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[3] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[3] ),
        .Q(o_TX_RTC_data[3]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[4] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[4] ),
        .Q(o_TX_RTC_data[4]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[5] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[5] ),
        .Q(o_TX_RTC_data[5]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[6] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[6] ),
        .Q(o_TX_RTC_data[6]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[7] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[7] ),
        .Q(o_TX_RTC_data[7]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[8] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[8] ),
        .Q(o_TX_RTC_data[8]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[9] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(\rtc_data_reg_n_0_[9] ),
        .Q(o_TX_RTC_data[9]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0880)) 
    \o_TX_TEMP_data[31]_i_1 
       (.I0(rst),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[0] ),
        .Q(o_TX_TEMP_data[0]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[1] ),
        .Q(o_TX_TEMP_data[1]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[2] ),
        .Q(o_TX_TEMP_data[2]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[3] ),
        .Q(o_TX_TEMP_data[3]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[4] ),
        .Q(o_TX_TEMP_data[4]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[5] ),
        .Q(o_TX_TEMP_data[5]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[6] ),
        .Q(o_TX_TEMP_data[6]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[7] ),
        .Q(o_TX_TEMP_data[7]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[24] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[8] ),
        .Q(o_TX_TEMP_data[8]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[25] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[9] ),
        .Q(o_TX_TEMP_data[9]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[26] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[10] ),
        .Q(o_TX_TEMP_data[10]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[27] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[11] ),
        .Q(o_TX_TEMP_data[11]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[28] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[12] ),
        .Q(o_TX_TEMP_data[12]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[29] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[13] ),
        .Q(o_TX_TEMP_data[13]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[30] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[14] ),
        .Q(o_TX_TEMP_data[14]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[31] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_1_n_0 ),
        .D(\temp_data_reg_n_0_[15] ),
        .Q(o_TX_TEMP_data[15]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FF15FF00EA00AA)) 
    \o_i2c_address[5]_i_1 
       (.I0(\o_i2c_address[6]_i_2_n_0 ),
        .I1(o_i2c_ena_i_7_n_0),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(o_i2c_address[0]),
        .O(\o_i2c_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFF00EAEAAA)) 
    \o_i2c_address[6]_i_1 
       (.I0(\o_i2c_address[6]_i_2_n_0 ),
        .I1(o_i2c_ena_i_7_n_0),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(o_i2c_address[1]),
        .O(\o_i2c_address[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAAA00000000)) 
    \o_i2c_address[6]_i_2 
       (.I0(o_i2c_ena_i_5_n_0),
        .I1(o_i2c_ena_i_7_n_0),
        .I2(o_SET_RTC_done_i_3_n_0),
        .I3(\start_cnt_reg_n_0_[24] ),
        .I4(o_i2c_ena_i_10_n_0),
        .I5(rst),
        .O(\o_i2c_address[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[6]_i_3 
       (.I0(rst),
        .I1(state[0]),
        .O(\o_i2c_address[6]_i_3_n_0 ));
  FDRE \o_i2c_address_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_address[5]_i_1_n_0 ),
        .Q(o_i2c_address[0]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_address[6]_i_1_n_0 ),
        .Q(o_i2c_address[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \o_i2c_data_wr[6]_i_1 
       (.I0(o_i2c_data_wr0_in),
        .I1(\o_i2c_data_wr[6]_i_3_n_0 ),
        .I2(\o_TX_RTC_data[23]_i_1_n_0 ),
        .I3(\o_i2c_data_wr[6]_i_4_n_0 ),
        .I4(\o_i2c_data_wr[6]_i_5_n_0 ),
        .I5(o_i2c_data_wr[0]),
        .O(\o_i2c_data_wr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_data_wr[6]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .O(o_i2c_data_wr0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    \o_i2c_data_wr[6]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(rst),
        .I3(state[0]),
        .I4(o_i2c_ena_i_7_n_0),
        .O(\o_i2c_data_wr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000800000)) 
    \o_i2c_data_wr[6]_i_4 
       (.I0(rst),
        .I1(\start_cnt_reg_n_0_[25] ),
        .I2(state[0]),
        .I3(o_i2c_rw_i_4_n_0),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .I5(\o_i2c_data_wr[6]_i_6_n_0 ),
        .O(\o_i2c_data_wr[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    \o_i2c_data_wr[6]_i_5 
       (.I0(\start_cnt_reg_n_0_[17] ),
        .I1(\o_i2c_data_wr[6]_i_7_n_0 ),
        .I2(\start_cnt_reg_n_0_[18] ),
        .I3(\o_i2c_data_wr[6]_i_8_n_0 ),
        .I4(\start_cnt_reg_n_0_[24] ),
        .O(\o_i2c_data_wr[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \o_i2c_data_wr[6]_i_6 
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .O(\o_i2c_data_wr[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \o_i2c_data_wr[6]_i_7 
       (.I0(\start_cnt[25]_i_6_n_0 ),
        .I1(\start_cnt_reg_n_0_[13] ),
        .I2(\start_cnt_reg_n_0_[12] ),
        .I3(\start_cnt_reg_n_0_[15] ),
        .I4(\start_cnt_reg_n_0_[14] ),
        .I5(\start_cnt_reg_n_0_[16] ),
        .O(\o_i2c_data_wr[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \o_i2c_data_wr[6]_i_8 
       (.I0(\start_cnt_reg_n_0_[19] ),
        .I1(\start_cnt_reg_n_0_[20] ),
        .I2(\start_cnt_reg_n_0_[21] ),
        .I3(\start_cnt_reg_n_0_[23] ),
        .I4(\start_cnt_reg_n_0_[22] ),
        .O(\o_i2c_data_wr[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0F02FFFF0F020000)) 
    \o_i2c_data_wr[7]_i_1 
       (.I0(\o_i2c_data_wr[7]_i_2_n_0 ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\o_i2c_data_wr[7]_i_3_n_0 ),
        .I5(o_i2c_data_wr[1]),
        .O(\o_i2c_data_wr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \o_i2c_data_wr[7]_i_2 
       (.I0(i_busy),
        .I1(busy_prev_reg_n_0),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .O(\o_i2c_data_wr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFEAEAEA)) 
    \o_i2c_data_wr[7]_i_3 
       (.I0(\o_i2c_data_wr[6]_i_3_n_0 ),
        .I1(o_i2c_ena_i_5_n_0),
        .I2(rst),
        .I3(\o_i2c_data_wr[6]_i_4_n_0 ),
        .I4(\start_cnt_reg_n_0_[24] ),
        .I5(o_i2c_ena_i_10_n_0),
        .O(\o_i2c_data_wr[7]_i_3_n_0 ));
  FDRE \o_i2c_data_wr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[6]_i_1_n_0 ),
        .Q(o_i2c_data_wr[0]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[7]_i_1_n_0 ),
        .Q(o_i2c_data_wr[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    o_i2c_ena_i_1
       (.I0(rst),
        .O(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8A8A888888888)) 
    o_i2c_ena_i_10
       (.I0(\o_i2c_data_wr[6]_i_8_n_0 ),
        .I1(\start_cnt_reg_n_0_[18] ),
        .I2(\start_cnt_reg_n_0_[16] ),
        .I3(o_i2c_ena_i_12_n_0),
        .I4(\start_cnt[25]_i_6_n_0 ),
        .I5(\start_cnt_reg_n_0_[17] ),
        .O(o_i2c_ena_i_10_n_0));
  LUT6 #(
    .INIT(64'h0040000000000040)) 
    o_i2c_ena_i_11
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .I5(o_i2c_ena_i_8_n_0),
        .O(o_i2c_ena_i_11_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    o_i2c_ena_i_12
       (.I0(\start_cnt_reg_n_0_[13] ),
        .I1(\start_cnt_reg_n_0_[12] ),
        .I2(\start_cnt_reg_n_0_[15] ),
        .I3(\start_cnt_reg_n_0_[14] ),
        .O(o_i2c_ena_i_12_n_0));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    o_i2c_ena_i_2
       (.I0(o_i2c_ena_i_3_n_0),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(o_i2c_ena_i_5_n_0),
        .I3(o_i2c_ena_i_6_n_0),
        .I4(o_i2c_ena_i_7_n_0),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_2_n_0));
  LUT6 #(
    .INIT(64'h0470040437433737)) 
    o_i2c_ena_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(o_i2c_ena_i_8_n_0),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_ena_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0E0A0)) 
    o_i2c_ena_i_4
       (.I0(\rtc_data[7]_i_2_n_0 ),
        .I1(o_SET_RTC_done_i_3_n_0),
        .I2(o_i2c_ena_i_9_n_0),
        .I3(\start_cnt_reg_n_0_[24] ),
        .I4(o_i2c_ena_i_10_n_0),
        .I5(o_i2c_ena_i_11_n_0),
        .O(o_i2c_ena_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    o_i2c_ena_i_5
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(o_i2c_ena_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_i2c_ena_i_6
       (.I0(state[2]),
        .I1(state[0]),
        .O(o_i2c_ena_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h4000000B)) 
    o_i2c_ena_i_7
       (.I0(busy_prev_reg_n_0),
        .I1(i_busy),
        .I2(\busy_cnt_reg_n_0_[2] ),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .O(o_i2c_ena_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    o_i2c_ena_i_8
       (.I0(busy_prev_reg_n_0),
        .I1(i_busy),
        .O(o_i2c_ena_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0851)) 
    o_i2c_ena_i_9
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(o_i2c_ena_i_9_n_0));
  FDRE o_i2c_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_ena_i_2_n_0),
        .Q(o_i2c_ena),
        .R(o_i2c_ena_i_1_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    o_i2c_rw_i_1
       (.I0(o_i2c_rw_i_2_n_0),
        .I1(\o_i2c_address[6]_i_2_n_0 ),
        .I2(o_i2c_rw_i_3_n_0),
        .I3(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  LUT6 #(
    .INIT(64'h510451040000F30C)) 
    o_i2c_rw_i_2
       (.I0(state[1]),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(state[0]),
        .I5(state[2]),
        .O(o_i2c_rw_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000808000000)) 
    o_i2c_rw_i_3
       (.I0(o_i2c_rw_i_4_n_0),
        .I1(rst),
        .I2(state[0]),
        .I3(\busy_cnt_reg_n_0_[2] ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(o_i2c_rw_i_5_n_0),
        .O(o_i2c_rw_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_i2c_rw_i_4
       (.I0(state[1]),
        .I1(state[2]),
        .O(o_i2c_rw_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    o_i2c_rw_i_5
       (.I0(i_busy),
        .I1(busy_prev_reg_n_0),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .O(o_i2c_rw_i_5_n_0));
  FDRE o_i2c_rw_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0F000800)) 
    \rtc_data[15]_i_1 
       (.I0(\rtc_data[23]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\rtc_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[16]_i_1 
       (.I0(i_data_read[0]),
        .I1(state[2]),
        .O(rtc_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[17]_i_1 
       (.I0(i_data_read[1]),
        .I1(state[2]),
        .O(rtc_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[18]_i_1 
       (.I0(i_data_read[2]),
        .I1(state[2]),
        .O(rtc_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[19]_i_1 
       (.I0(i_data_read[3]),
        .I1(state[2]),
        .O(rtc_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[20]_i_1 
       (.I0(i_data_read[4]),
        .I1(state[2]),
        .O(rtc_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[21]_i_1 
       (.I0(i_data_read[5]),
        .I1(state[2]),
        .O(rtc_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[22]_i_1 
       (.I0(i_data_read[6]),
        .I1(state[2]),
        .O(rtc_data[22]));
  LUT5 #(
    .INIT(32'h0F000200)) 
    \rtc_data[23]_i_1 
       (.I0(\rtc_data[23]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\rtc_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[23]_i_2 
       (.I0(i_data_read[7]),
        .I1(state[2]),
        .O(rtc_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rtc_data[23]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(i_busy),
        .O(\rtc_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \rtc_data[7]_i_1 
       (.I0(\rtc_data[7]_i_2_n_0 ),
        .I1(i_busy),
        .I2(\busy_cnt_reg_n_0_[2] ),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .I5(o_i2c_ena_i_5_n_0),
        .O(\rtc_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[7]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\rtc_data[7]_i_2_n_0 ));
  FDRE \rtc_data_reg[0] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[16]),
        .Q(\rtc_data_reg_n_0_[0] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[10] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[18]),
        .Q(\rtc_data_reg_n_0_[10] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[11] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[19]),
        .Q(\rtc_data_reg_n_0_[11] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[12] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[20]),
        .Q(\rtc_data_reg_n_0_[12] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[13] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[21]),
        .Q(\rtc_data_reg_n_0_[13] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[14] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[22]),
        .Q(\rtc_data_reg_n_0_[14] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[15] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[23]),
        .Q(\rtc_data_reg_n_0_[15] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[16] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[16]),
        .Q(\rtc_data_reg_n_0_[16] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[17] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[17]),
        .Q(\rtc_data_reg_n_0_[17] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[18] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[18]),
        .Q(\rtc_data_reg_n_0_[18] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[19] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[19]),
        .Q(\rtc_data_reg_n_0_[19] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[1] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[17]),
        .Q(\rtc_data_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[20] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[20]),
        .Q(\rtc_data_reg_n_0_[20] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[21] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[21]),
        .Q(\rtc_data_reg_n_0_[21] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[22] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[22]),
        .Q(\rtc_data_reg_n_0_[22] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[23] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(rtc_data[23]),
        .Q(\rtc_data_reg_n_0_[23] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[2] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[18]),
        .Q(\rtc_data_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[3] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[19]),
        .Q(\rtc_data_reg_n_0_[3] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[4] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[20]),
        .Q(\rtc_data_reg_n_0_[4] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[5] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[21]),
        .Q(\rtc_data_reg_n_0_[5] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[6] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[22]),
        .Q(\rtc_data_reg_n_0_[6] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[7] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(rtc_data[23]),
        .Q(\rtc_data_reg_n_0_[7] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[8] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[16]),
        .Q(\rtc_data_reg_n_0_[8] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[9] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(rtc_data[17]),
        .Q(\rtc_data_reg_n_0_[9] ),
        .R(o_i2c_ena_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry
       (.CI(1'b0),
        .CO({start_cnt0_carry_n_0,start_cnt0_carry_n_1,start_cnt0_carry_n_2,start_cnt0_carry_n_3}),
        .CYINIT(\start_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[4:1]),
        .S({\start_cnt_reg_n_0_[4] ,\start_cnt_reg_n_0_[3] ,\start_cnt_reg_n_0_[2] ,\start_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry__0
       (.CI(start_cnt0_carry_n_0),
        .CO({start_cnt0_carry__0_n_0,start_cnt0_carry__0_n_1,start_cnt0_carry__0_n_2,start_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[8:5]),
        .S({\start_cnt_reg_n_0_[8] ,\start_cnt_reg_n_0_[7] ,\start_cnt_reg_n_0_[6] ,\start_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry__1
       (.CI(start_cnt0_carry__0_n_0),
        .CO({start_cnt0_carry__1_n_0,start_cnt0_carry__1_n_1,start_cnt0_carry__1_n_2,start_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[12:9]),
        .S({\start_cnt_reg_n_0_[12] ,\start_cnt_reg_n_0_[11] ,\start_cnt_reg_n_0_[10] ,\start_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry__2
       (.CI(start_cnt0_carry__1_n_0),
        .CO({start_cnt0_carry__2_n_0,start_cnt0_carry__2_n_1,start_cnt0_carry__2_n_2,start_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[16:13]),
        .S({\start_cnt_reg_n_0_[16] ,\start_cnt_reg_n_0_[15] ,\start_cnt_reg_n_0_[14] ,\start_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry__3
       (.CI(start_cnt0_carry__2_n_0),
        .CO({start_cnt0_carry__3_n_0,start_cnt0_carry__3_n_1,start_cnt0_carry__3_n_2,start_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[20:17]),
        .S({\start_cnt_reg_n_0_[20] ,\start_cnt_reg_n_0_[19] ,\start_cnt_reg_n_0_[18] ,\start_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry__4
       (.CI(start_cnt0_carry__3_n_0),
        .CO({start_cnt0_carry__4_n_0,start_cnt0_carry__4_n_1,start_cnt0_carry__4_n_2,start_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[24:21]),
        .S({\start_cnt_reg_n_0_[24] ,\start_cnt_reg_n_0_[23] ,\start_cnt_reg_n_0_[22] ,\start_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 start_cnt0_carry__5
       (.CI(start_cnt0_carry__4_n_0),
        .CO(NLW_start_cnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_start_cnt0_carry__5_O_UNCONNECTED[3:1],in12[25]}),
        .S({1'b0,1'b0,1'b0,\start_cnt_reg_n_0_[25] }));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \start_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\start_cnt_reg_n_0_[0] ),
        .O(start_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[10]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[10]),
        .O(start_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[11]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[11]),
        .O(start_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[12]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[12]),
        .O(start_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[13]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[13]),
        .O(start_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[14]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[14]),
        .O(start_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[15]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[15]),
        .O(start_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[16]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[16]),
        .O(start_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[17]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[17]),
        .O(start_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[18]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[18]),
        .O(start_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[19]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[19]),
        .O(start_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[1]),
        .O(start_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[20]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[20]),
        .O(start_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[21]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[21]),
        .O(start_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[22]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[22]),
        .O(start_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[23]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[23]),
        .O(start_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[24]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[24]),
        .O(start_cnt[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFC)) 
    \start_cnt[25]_i_1 
       (.I0(\start_cnt_reg_n_0_[12] ),
        .I1(\start_cnt[25]_i_3_n_0 ),
        .I2(\start_cnt[25]_i_4_n_0 ),
        .I3(\start_cnt[25]_i_5_n_0 ),
        .I4(\start_cnt[25]_i_6_n_0 ),
        .I5(\start_cnt[25]_i_7_n_0 ),
        .O(\start_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[25]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[25]),
        .O(start_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \start_cnt[25]_i_3 
       (.I0(\start_cnt_reg_n_0_[18] ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\start_cnt_reg_n_0_[24] ),
        .I4(\start_cnt_reg_n_0_[16] ),
        .O(\start_cnt[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7F00FF00FF00FF00)) 
    \start_cnt[25]_i_4 
       (.I0(\start_cnt_reg_n_0_[19] ),
        .I1(\start_cnt_reg_n_0_[22] ),
        .I2(\start_cnt_reg_n_0_[23] ),
        .I3(\start_cnt[25]_i_8_n_0 ),
        .I4(\start_cnt_reg_n_0_[21] ),
        .I5(\start_cnt_reg_n_0_[20] ),
        .O(\start_cnt[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \start_cnt[25]_i_5 
       (.I0(\start_cnt_reg_n_0_[25] ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\start_cnt[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \start_cnt[25]_i_6 
       (.I0(\start_cnt_reg_n_0_[7] ),
        .I1(\start_cnt_reg_n_0_[10] ),
        .I2(\start_cnt_reg_n_0_[11] ),
        .I3(\start_cnt_reg_n_0_[9] ),
        .I4(\start_cnt_reg_n_0_[8] ),
        .O(\start_cnt[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F070F000F0F0F0)) 
    \start_cnt[25]_i_7 
       (.I0(\start_cnt_reg_n_0_[14] ),
        .I1(\start_cnt_reg_n_0_[13] ),
        .I2(\start_cnt[25]_i_9_n_0 ),
        .I3(\start_cnt_reg_n_0_[17] ),
        .I4(\start_cnt_reg_n_0_[16] ),
        .I5(\start_cnt_reg_n_0_[15] ),
        .O(\start_cnt[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \start_cnt[25]_i_8 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\start_cnt_reg_n_0_[24] ),
        .O(\start_cnt[25]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \start_cnt[25]_i_9 
       (.I0(\start_cnt_reg_n_0_[24] ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\start_cnt_reg_n_0_[18] ),
        .O(\start_cnt[25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[2]),
        .O(start_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[3]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[3]),
        .O(start_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[4]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[4]),
        .O(start_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[5]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[5]),
        .O(start_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[6]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[6]),
        .O(start_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[7]),
        .O(start_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[8]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[8]),
        .O(start_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \start_cnt[9]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(in12[9]),
        .O(start_cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[0] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[0]),
        .Q(\start_cnt_reg_n_0_[0] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[10] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[10]),
        .Q(\start_cnt_reg_n_0_[10] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[11] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[11]),
        .Q(\start_cnt_reg_n_0_[11] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[12] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[12]),
        .Q(\start_cnt_reg_n_0_[12] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[13] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[13]),
        .Q(\start_cnt_reg_n_0_[13] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[14] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[14]),
        .Q(\start_cnt_reg_n_0_[14] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[15] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[15]),
        .Q(\start_cnt_reg_n_0_[15] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[16] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[16]),
        .Q(\start_cnt_reg_n_0_[16] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[17] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[17]),
        .Q(\start_cnt_reg_n_0_[17] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[18] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[18]),
        .Q(\start_cnt_reg_n_0_[18] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[19] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[19]),
        .Q(\start_cnt_reg_n_0_[19] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[1] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[1]),
        .Q(\start_cnt_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[20] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[20]),
        .Q(\start_cnt_reg_n_0_[20] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[21] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[21]),
        .Q(\start_cnt_reg_n_0_[21] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[22] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[22]),
        .Q(\start_cnt_reg_n_0_[22] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[23] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[23]),
        .Q(\start_cnt_reg_n_0_[23] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[24] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[24]),
        .Q(\start_cnt_reg_n_0_[24] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[25] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[25]),
        .Q(\start_cnt_reg_n_0_[25] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[2] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[2]),
        .Q(\start_cnt_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[3] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[3]),
        .Q(\start_cnt_reg_n_0_[3] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[4] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[4]),
        .Q(\start_cnt_reg_n_0_[4] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[5] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[5]),
        .Q(\start_cnt_reg_n_0_[5] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[6] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[6]),
        .Q(\start_cnt_reg_n_0_[6] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[7] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[7]),
        .Q(\start_cnt_reg_n_0_[7] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[8] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[8]),
        .Q(\start_cnt_reg_n_0_[8] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[9] 
       (.C(clk),
        .CE(\start_cnt[25]_i_1_n_0 ),
        .D(start_cnt[9]),
        .Q(\start_cnt_reg_n_0_[9] ),
        .R(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[10]_i_1 
       (.I0(i_data_read[2]),
        .I1(state[1]),
        .O(temp_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[11]_i_1 
       (.I0(i_data_read[3]),
        .I1(state[1]),
        .O(temp_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[12]_i_1 
       (.I0(i_data_read[4]),
        .I1(state[1]),
        .O(temp_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[13]_i_1 
       (.I0(i_data_read[5]),
        .I1(state[1]),
        .O(temp_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[14]_i_1 
       (.I0(i_data_read[6]),
        .I1(state[1]),
        .O(temp_data[14]));
  LUT5 #(
    .INIT(32'h0F020000)) 
    \temp_data[15]_i_1 
       (.I0(\rtc_data[23]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\temp_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[15]_i_2 
       (.I0(i_data_read[7]),
        .I1(state[1]),
        .O(temp_data[15]));
  LUT5 #(
    .INIT(32'h0F080000)) 
    \temp_data[7]_i_1 
       (.I0(\rtc_data[23]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\temp_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[8]_i_1 
       (.I0(i_data_read[0]),
        .I1(state[1]),
        .O(temp_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[9]_i_1 
       (.I0(i_data_read[1]),
        .I1(state[1]),
        .O(temp_data[9]));
  FDRE \temp_data_reg[0] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[8]),
        .Q(\temp_data_reg_n_0_[0] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[10] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[10]),
        .Q(\temp_data_reg_n_0_[10] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[11] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[11]),
        .Q(\temp_data_reg_n_0_[11] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[12] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[12]),
        .Q(\temp_data_reg_n_0_[12] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[13] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[13]),
        .Q(\temp_data_reg_n_0_[13] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[14] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[14]),
        .Q(\temp_data_reg_n_0_[14] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[15] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[15]),
        .Q(\temp_data_reg_n_0_[15] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[1] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[9]),
        .Q(\temp_data_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[2] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[10]),
        .Q(\temp_data_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[3] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[11]),
        .Q(\temp_data_reg_n_0_[3] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[4] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[12]),
        .Q(\temp_data_reg_n_0_[4] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[5] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[13]),
        .Q(\temp_data_reg_n_0_[5] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[6] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[14]),
        .Q(\temp_data_reg_n_0_[6] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[7] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[15]),
        .Q(\temp_data_reg_n_0_[7] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[8] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[8]),
        .Q(\temp_data_reg_n_0_[8] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[9] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[9]),
        .Q(\temp_data_reg_n_0_[9] ),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h0F02FFFF0F020000)) 
    \who_requested[0]_i_1 
       (.I0(i_HTR_TEMP_request),
        .I1(i_HK_TEMP_request),
        .I2(i_HK_RTC_request),
        .I3(i_BF_RTC_request),
        .I4(\who_requested[1]_i_2_n_0 ),
        .I5(\who_requested_reg_n_0_[0] ),
        .O(\who_requested[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \who_requested[1]_i_1 
       (.I0(i_HK_RTC_request),
        .I1(i_BF_RTC_request),
        .I2(i_HK_TEMP_request),
        .I3(\who_requested[1]_i_2_n_0 ),
        .I4(\who_requested_reg_n_0_[1] ),
        .O(\who_requested[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \who_requested[1]_i_2 
       (.I0(rst),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(i_SET_RTC_request),
        .I5(\who_requested[1]_i_3_n_0 ),
        .O(\who_requested[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5554)) 
    \who_requested[1]_i_3 
       (.I0(i_HK_ALT_request),
        .I1(i_HK_TEMP_request),
        .I2(i_HTR_TEMP_request),
        .I3(i_RAD_RTC_request),
        .I4(i_HK_RTC_request),
        .I5(i_BF_RTC_request),
        .O(\who_requested[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \who_requested_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\who_requested[0]_i_1_n_0 ),
        .Q(\who_requested_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \who_requested_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\who_requested[1]_i_1_n_0 ),
        .Q(\who_requested_reg_n_0_[1] ),
        .R(1'b0));
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep 17 11:18:00 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadboard_Test7/SRAM_Breadboard_Test7.gen/sources_1/bd/BF_Test2/ip/BF_Test2_I2C_full_sensor_data_0_0/BF_Test2_I2C_full_sensor_data_0_0_sim_netlist.v}
// Design      : BF_Test2_I2C_full_sensor_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BF_Test2_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2C_full_sensor_data_fetcher,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module BF_Test2_I2C_full_sensor_data_0_0
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
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    o_TX_DV_HK,
    o_TX_DV_BF,
    o_TX_DV_RAD,
    o_TX_DV_HTR,
    o_TX_RTC_data,
    o_TX_ALT_data,
    o_TX_TEMP_data,
    led2);
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
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV_HK;
  output o_TX_DV_BF;
  output o_TX_DV_RAD;
  output o_TX_DV_HTR;
  output [23:0]o_TX_RTC_data;
  output [23:0]o_TX_ALT_data;
  output [31:0]o_TX_TEMP_data;
  output led2;

  wire \<const0> ;
  wire clk;
  wire i_BF_RTC_request;
  wire i_HK_ALT_request;
  wire i_HK_RTC_request;
  wire i_HK_TEMP_request;
  wire i_HTR_TEMP_request;
  wire i_RAD_RTC_request;
  wire i_TX_done_BF;
  wire i_TX_done_HK;
  wire i_TX_done_HTR;
  wire i_TX_done_RAD;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led2;
  wire [23:0]o_TX_ALT_data;
  wire o_TX_DV_BF;
  wire o_TX_DV_HK;
  wire o_TX_DV_HTR;
  wire o_TX_DV_RAD;
  wire [23:0]o_TX_RTC_data;
  wire [15:0]\^o_TX_TEMP_data ;
  wire [6:2]\^o_i2c_address ;
  wire [6:1]\^o_i2c_data_wr ;
  wire o_i2c_ena;
  wire o_i2c_rw;
  wire rst;

  assign o_TX_TEMP_data[31:16] = \^o_TX_TEMP_data [15:0];
  assign o_TX_TEMP_data[15:0] = \^o_TX_TEMP_data [15:0];
  assign o_i2c_address[6:5] = \^o_i2c_address [6:5];
  assign o_i2c_address[4] = \^o_i2c_address [2];
  assign o_i2c_address[3:2] = \^o_i2c_address [3:2];
  assign o_i2c_address[1] = \^o_i2c_address [2];
  assign o_i2c_address[0] = \<const0> ;
  assign o_i2c_data_wr[7] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[6] = \^o_i2c_data_wr [6];
  assign o_i2c_data_wr[5] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \^o_i2c_data_wr [3];
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[0] = \^o_i2c_data_wr [1];
  GND GND
       (.G(\<const0> ));
  BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher U0
       (.clk(clk),
        .i_BF_RTC_request(i_BF_RTC_request),
        .i_HK_ALT_request(i_HK_ALT_request),
        .i_HK_RTC_request(i_HK_RTC_request),
        .i_HK_TEMP_request(i_HK_TEMP_request),
        .i_HTR_TEMP_request(i_HTR_TEMP_request),
        .i_RAD_RTC_request(i_RAD_RTC_request),
        .i_TX_done_BF(i_TX_done_BF),
        .i_TX_done_HK(i_TX_done_HK),
        .i_TX_done_HTR(i_TX_done_HTR),
        .i_TX_done_RAD(i_TX_done_RAD),
        .i_busy(i_busy),
        .i_data_read(i_data_read),
        .led2(led2),
        .o_TX_ALT_data(o_TX_ALT_data),
        .o_TX_DV_BF(o_TX_DV_BF),
        .o_TX_DV_HK(o_TX_DV_HK),
        .o_TX_DV_HTR(o_TX_DV_HTR),
        .o_TX_DV_RAD(o_TX_DV_RAD),
        .o_TX_RTC_data(o_TX_RTC_data),
        .o_TX_TEMP_data(\^o_TX_TEMP_data ),
        .o_i2c_address({\^o_i2c_address [6:5],\^o_i2c_address [2],\^o_i2c_address [3]}),
        .o_i2c_data_wr({\^o_i2c_data_wr [1],\^o_i2c_data_wr [6],\^o_i2c_data_wr [3]}),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "I2C_full_sensor_data_fetcher" *) 
module BF_Test2_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher
   (o_i2c_address,
    o_i2c_data_wr,
    o_TX_RTC_data,
    o_TX_ALT_data,
    o_TX_TEMP_data,
    o_i2c_ena,
    o_i2c_rw,
    o_TX_DV_HK,
    o_TX_DV_BF,
    o_TX_DV_RAD,
    o_TX_DV_HTR,
    led2,
    i_busy,
    rst,
    clk,
    i_HK_RTC_request,
    i_BF_RTC_request,
    i_RAD_RTC_request,
    i_HTR_TEMP_request,
    i_HK_ALT_request,
    i_HK_TEMP_request,
    i_TX_done_HTR,
    i_TX_done_HK,
    i_TX_done_BF,
    i_TX_done_RAD,
    i_data_read);
  output [3:0]o_i2c_address;
  output [2:0]o_i2c_data_wr;
  output [23:0]o_TX_RTC_data;
  output [23:0]o_TX_ALT_data;
  output [15:0]o_TX_TEMP_data;
  output o_i2c_ena;
  output o_i2c_rw;
  output o_TX_DV_HK;
  output o_TX_DV_BF;
  output o_TX_DV_RAD;
  output o_TX_DV_HTR;
  output led2;
  input i_busy;
  input rst;
  input clk;
  input i_HK_RTC_request;
  input i_BF_RTC_request;
  input i_RAD_RTC_request;
  input i_HTR_TEMP_request;
  input i_HK_ALT_request;
  input i_HK_TEMP_request;
  input i_TX_done_HTR;
  input i_TX_done_HK;
  input i_TX_done_BF;
  input i_TX_done_RAD;
  input [7:0]i_data_read;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_2_n_0 ;
  wire \FSM_onehot_state[9]_i_3_n_0 ;
  wire \FSM_onehot_state[9]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_7_n_0 ;
  wire \FSM_onehot_state[9]_i_8_n_0 ;
  wire \FSM_onehot_state[9]_i_9_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [23:0]alt_data;
  wire \alt_data[15]_i_1_n_0 ;
  wire \alt_data[16]_i_1_n_0 ;
  wire \alt_data[17]_i_1_n_0 ;
  wire \alt_data[18]_i_1_n_0 ;
  wire \alt_data[19]_i_1_n_0 ;
  wire \alt_data[20]_i_1_n_0 ;
  wire \alt_data[21]_i_1_n_0 ;
  wire \alt_data[22]_i_1_n_0 ;
  wire \alt_data[23]_i_1_n_0 ;
  wire \alt_data[23]_i_2_n_0 ;
  wire \alt_data[7]_i_1_n_0 ;
  wire [2:0]busy_cnt;
  wire \busy_cnt[0]_i_2_n_0 ;
  wire \busy_cnt[0]_i_3_n_0 ;
  wire \busy_cnt[1]_i_2_n_0 ;
  wire \busy_cnt[1]_i_3_n_0 ;
  wire \busy_cnt[1]_i_4_n_0 ;
  wire \busy_cnt[2]_i_1_n_0 ;
  wire \busy_cnt[2]_i_3_n_0 ;
  wire \busy_cnt[2]_i_4_n_0 ;
  wire \busy_cnt[2]_i_5_n_0 ;
  wire \busy_cnt[2]_i_6_n_0 ;
  wire \busy_cnt_reg_n_0_[0] ;
  wire \busy_cnt_reg_n_0_[1] ;
  wire \busy_cnt_reg_n_0_[2] ;
  wire busy_prev;
  wire busy_prev_reg_n_0;
  wire clk;
  wire [16:0]conv_cnt;
  wire [16:1]conv_cnt0;
  wire \conv_cnt[0]_i_1_n_0 ;
  wire \conv_cnt[10]_i_1_n_0 ;
  wire \conv_cnt[11]_i_1_n_0 ;
  wire \conv_cnt[12]_i_1_n_0 ;
  wire \conv_cnt[13]_i_1_n_0 ;
  wire \conv_cnt[14]_i_1_n_0 ;
  wire \conv_cnt[15]_i_1_n_0 ;
  wire \conv_cnt[16]_i_1_n_0 ;
  wire \conv_cnt[16]_i_2_n_0 ;
  wire \conv_cnt[1]_i_1_n_0 ;
  wire \conv_cnt[2]_i_1_n_0 ;
  wire \conv_cnt[3]_i_1_n_0 ;
  wire \conv_cnt[4]_i_1_n_0 ;
  wire \conv_cnt[5]_i_1_n_0 ;
  wire \conv_cnt[6]_i_1_n_0 ;
  wire \conv_cnt[7]_i_1_n_0 ;
  wire \conv_cnt[8]_i_1_n_0 ;
  wire \conv_cnt[9]_i_1_n_0 ;
  wire \conv_cnt_reg[12]_i_2_n_0 ;
  wire \conv_cnt_reg[12]_i_2_n_1 ;
  wire \conv_cnt_reg[12]_i_2_n_2 ;
  wire \conv_cnt_reg[12]_i_2_n_3 ;
  wire \conv_cnt_reg[16]_i_3_n_1 ;
  wire \conv_cnt_reg[16]_i_3_n_2 ;
  wire \conv_cnt_reg[16]_i_3_n_3 ;
  wire \conv_cnt_reg[4]_i_2_n_0 ;
  wire \conv_cnt_reg[4]_i_2_n_1 ;
  wire \conv_cnt_reg[4]_i_2_n_2 ;
  wire \conv_cnt_reg[4]_i_2_n_3 ;
  wire \conv_cnt_reg[8]_i_2_n_0 ;
  wire \conv_cnt_reg[8]_i_2_n_1 ;
  wire \conv_cnt_reg[8]_i_2_n_2 ;
  wire \conv_cnt_reg[8]_i_2_n_3 ;
  wire i_BF_RTC_request;
  wire i_HK_ALT_request;
  wire i_HK_RTC_request;
  wire i_HK_TEMP_request;
  wire i_HTR_TEMP_request;
  wire i_RAD_RTC_request;
  wire i_TX_done_BF;
  wire i_TX_done_HK;
  wire i_TX_done_HTR;
  wire i_TX_done_RAD;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led2;
  wire led2_i_1_n_0;
  wire [23:0]o_TX_ALT_data;
  wire \o_TX_ALT_data[23]_i_1_n_0 ;
  wire \o_TX_ALT_data[23]_i_2_n_0 ;
  wire o_TX_DV_BF;
  wire o_TX_DV_BF_i_1_n_0;
  wire o_TX_DV_BF_i_2_n_0;
  wire o_TX_DV_HK;
  wire o_TX_DV_HK_i_1_n_0;
  wire o_TX_DV_HK_i_2_n_0;
  wire o_TX_DV_HK_i_3_n_0;
  wire o_TX_DV_HK_i_4_n_0;
  wire o_TX_DV_HTR;
  wire o_TX_DV_HTR_i_1_n_0;
  wire o_TX_DV_RAD;
  wire o_TX_DV_RAD_i_1_n_0;
  wire [23:0]o_TX_RTC_data;
  wire \o_TX_RTC_data[23]_i_1_n_0 ;
  wire \o_TX_RTC_data[23]_i_2_n_0 ;
  wire [15:0]o_TX_TEMP_data;
  wire \o_TX_TEMP_data[31]_i_1_n_0 ;
  wire \o_TX_TEMP_data[31]_i_2_n_0 ;
  wire [3:0]o_i2c_address;
  wire \o_i2c_address[4]_i_1_n_0 ;
  wire \o_i2c_address[5]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_2_n_0 ;
  wire \o_i2c_address[6]_i_3_n_0 ;
  wire \o_i2c_address[6]_i_4_n_0 ;
  wire [2:0]o_i2c_data_wr;
  wire \o_i2c_data_wr[0]_i_1_n_0 ;
  wire \o_i2c_data_wr[0]_i_2_n_0 ;
  wire \o_i2c_data_wr[0]_i_3_n_0 ;
  wire \o_i2c_data_wr[3]_i_1_n_0 ;
  wire \o_i2c_data_wr[6]_i_1_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_10_n_0;
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
  wire rst;
  wire [23:0]rtc_data;
  wire \rtc_data[15]_i_1_n_0 ;
  wire \rtc_data[16]_i_1_n_0 ;
  wire \rtc_data[17]_i_1_n_0 ;
  wire \rtc_data[18]_i_1_n_0 ;
  wire \rtc_data[19]_i_1_n_0 ;
  wire \rtc_data[20]_i_1_n_0 ;
  wire \rtc_data[21]_i_1_n_0 ;
  wire \rtc_data[22]_i_1_n_0 ;
  wire \rtc_data[23]_i_1_n_0 ;
  wire \rtc_data[23]_i_2_n_0 ;
  wire \rtc_data[7]_i_1_n_0 ;
  wire [15:0]temp_data;
  wire \temp_data[10]_i_1_n_0 ;
  wire \temp_data[11]_i_1_n_0 ;
  wire \temp_data[12]_i_1_n_0 ;
  wire \temp_data[13]_i_1_n_0 ;
  wire \temp_data[14]_i_1_n_0 ;
  wire \temp_data[15]_i_1_n_0 ;
  wire \temp_data[15]_i_2_n_0 ;
  wire \temp_data[7]_i_1_n_0 ;
  wire \temp_data[8]_i_1_n_0 ;
  wire \temp_data[9]_i_1_n_0 ;
  wire \who_requested[0]_i_1_n_0 ;
  wire \who_requested[1]_i_1_n_0 ;
  wire \who_requested[1]_i_2_n_0 ;
  wire \who_requested_reg_n_0_[0] ;
  wire \who_requested_reg_n_0_[1] ;
  wire [3:3]\NLW_conv_cnt_reg[16]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(i_HK_ALT_request),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[7]_i_2_n_0 ),
        .I4(i_HK_TEMP_request),
        .I5(i_HTR_TEMP_request),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(i_RAD_RTC_request),
        .I2(i_BF_RTC_request),
        .I3(i_HK_RTC_request),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_TX_done_BF),
        .I2(i_TX_done_RAD),
        .I3(i_TX_done_HK),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(i_HK_RTC_request),
        .I2(i_BF_RTC_request),
        .I3(i_RAD_RTC_request),
        .I4(i_HK_ALT_request),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_TX_done_HK),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202000)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state[7]_i_2_n_0 ),
        .I1(i_HK_ALT_request),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(i_HTR_TEMP_request),
        .I4(i_HK_TEMP_request),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(i_HK_RTC_request),
        .I1(i_BF_RTC_request),
        .I2(i_RAD_RTC_request),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_TX_done_HTR),
        .I2(i_TX_done_HK),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5444)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[9]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[9]_i_4_n_0 ),
        .I4(\FSM_onehot_state[9]_i_5_n_0 ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FF44F4F4F444)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(\FSM_onehot_state[9]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(i_TX_done_HK),
        .I4(i_TX_done_HTR),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state[9]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .O(\FSM_onehot_state[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF200000000000000)) 
    \FSM_onehot_state[9]_i_4 
       (.I0(conv_cnt[12]),
        .I1(o_i2c_ena_i_8_n_0),
        .I2(conv_cnt[13]),
        .I3(conv_cnt[15]),
        .I4(conv_cnt[14]),
        .I5(conv_cnt[16]),
        .O(\FSM_onehot_state[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state[9]_i_7_n_0 ),
        .I3(\FSM_onehot_state[9]_i_8_n_0 ),
        .I4(\FSM_onehot_state[9]_i_9_n_0 ),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(i_TX_done_BF),
        .I1(i_TX_done_RAD),
        .I2(i_TX_done_HK),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_state[9]_i_7 
       (.I0(i_busy),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(\busy_cnt_reg_n_0_[2] ),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_state[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_state[9]_i_8 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(i_busy),
        .O(\FSM_onehot_state[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_9 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[9]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0000001000,alt_read:0000010000,send_temp:0100000000,temp:0010000000,idle:0000000001,rtc:0000000010,cleanup:1000000000,send_alt:0001000000,send_rtc:0000000100,alt:0000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(\FSM_onehot_state[9]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \alt_data[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt[2]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\alt_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[0]),
        .O(\alt_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[1]),
        .O(\alt_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[2]),
        .O(\alt_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[3]),
        .O(\alt_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[4]),
        .O(\alt_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[5]),
        .O(\alt_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[6]),
        .O(\alt_data[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \alt_data[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\alt_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alt_data[23]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(i_data_read[7]),
        .O(\alt_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \alt_data[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(i_busy),
        .I3(\o_i2c_address[6]_i_3_n_0 ),
        .I4(\busy_cnt[2]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\alt_data[7]_i_1_n_0 ));
  FDRE \alt_data_reg[0] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[16]_i_1_n_0 ),
        .Q(alt_data[0]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[10] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[18]_i_1_n_0 ),
        .Q(alt_data[10]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[11] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[19]_i_1_n_0 ),
        .Q(alt_data[11]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[12] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[20]_i_1_n_0 ),
        .Q(alt_data[12]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[13] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[21]_i_1_n_0 ),
        .Q(alt_data[13]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[14] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[22]_i_1_n_0 ),
        .Q(alt_data[14]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[15] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[23]_i_2_n_0 ),
        .Q(alt_data[15]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[16] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[16]_i_1_n_0 ),
        .Q(alt_data[16]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[17] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[17]_i_1_n_0 ),
        .Q(alt_data[17]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[18] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[18]_i_1_n_0 ),
        .Q(alt_data[18]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[19] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[19]_i_1_n_0 ),
        .Q(alt_data[19]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[1] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[17]_i_1_n_0 ),
        .Q(alt_data[1]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[20] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[20]_i_1_n_0 ),
        .Q(alt_data[20]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[21] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[21]_i_1_n_0 ),
        .Q(alt_data[21]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[22] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[22]_i_1_n_0 ),
        .Q(alt_data[22]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[23] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(\alt_data[23]_i_2_n_0 ),
        .Q(alt_data[23]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[2] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[18]_i_1_n_0 ),
        .Q(alt_data[2]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[3] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[19]_i_1_n_0 ),
        .Q(alt_data[3]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[4] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[20]_i_1_n_0 ),
        .Q(alt_data[4]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[5] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[21]_i_1_n_0 ),
        .Q(alt_data[5]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[6] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[22]_i_1_n_0 ),
        .Q(alt_data[6]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[7] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(\alt_data[23]_i_2_n_0 ),
        .Q(alt_data[7]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[8] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[16]_i_1_n_0 ),
        .Q(alt_data[8]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[9] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(\alt_data[17]_i_1_n_0 ),
        .Q(alt_data[9]),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFAFFF8FFFAFFFA)) 
    \busy_cnt[0]_i_1 
       (.I0(\o_i2c_address[6]_i_3_n_0 ),
        .I1(\busy_cnt[0]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\busy_cnt[0]_i_3_n_0 ),
        .O(busy_cnt[0]));
  LUT6 #(
    .INIT(64'h3F3F3F3F2F222F2F)) 
    \busy_cnt[0]_i_2 
       (.I0(o_i2c_ena_i_4_n_0),
        .I1(\busy_cnt[2]_i_4_n_0 ),
        .I2(\busy_cnt[2]_i_3_n_0 ),
        .I3(\busy_cnt[2]_i_6_n_0 ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(i_busy),
        .O(\busy_cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4544FFFF)) 
    \busy_cnt[0]_i_3 
       (.I0(o_i2c_ena_i_9_n_0),
        .I1(conv_cnt[13]),
        .I2(o_i2c_ena_i_8_n_0),
        .I3(conv_cnt[12]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\busy_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF040F0F0)) 
    \busy_cnt[1]_i_1 
       (.I0(\busy_cnt[2]_i_3_n_0 ),
        .I1(\busy_cnt[1]_i_2_n_0 ),
        .I2(\busy_cnt[1]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\busy_cnt[2]_i_4_n_0 ),
        .I5(\busy_cnt[1]_i_4_n_0 ),
        .O(busy_cnt[1]));
  LUT3 #(
    .INIT(8'hFB)) 
    \busy_cnt[1]_i_2 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .O(\busy_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \busy_cnt[1]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(\busy_cnt[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \busy_cnt[1]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\busy_cnt[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \busy_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\busy_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFEEEEEEEE)) 
    \busy_cnt[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\busy_cnt[2]_i_3_n_0 ),
        .I3(\busy_cnt[2]_i_4_n_0 ),
        .I4(\busy_cnt[2]_i_5_n_0 ),
        .I5(\busy_cnt[2]_i_6_n_0 ),
        .O(busy_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \busy_cnt[2]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\busy_cnt[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \busy_cnt[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\busy_cnt[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \busy_cnt[2]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .O(\busy_cnt[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \busy_cnt[2]_i_6 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(busy_prev_reg_n_0),
        .O(\busy_cnt[2]_i_6_n_0 ));
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
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    busy_prev_i_1
       (.I0(i_busy),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(busy_prev));
  FDRE busy_prev_reg
       (.C(clk),
        .CE(\busy_cnt[2]_i_1_n_0 ),
        .D(busy_prev),
        .Q(busy_prev_reg_n_0),
        .R(o_i2c_ena_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \conv_cnt[0]_i_1 
       (.I0(conv_cnt[0]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[10]_i_1 
       (.I0(conv_cnt0[10]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[11]_i_1 
       (.I0(conv_cnt0[11]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[12]_i_1 
       (.I0(conv_cnt0[12]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[13]_i_1 
       (.I0(conv_cnt0[13]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[14]_i_1 
       (.I0(conv_cnt0[14]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[15]_i_1 
       (.I0(conv_cnt0[15]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAAAABABAAA)) 
    \conv_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(i_busy),
        .I5(busy_prev_reg_n_0),
        .O(\conv_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[16]_i_2 
       (.I0(conv_cnt0[16]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[1]_i_1 
       (.I0(conv_cnt0[1]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[2]_i_1 
       (.I0(conv_cnt0[2]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[3]_i_1 
       (.I0(conv_cnt0[3]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[4]_i_1 
       (.I0(conv_cnt0[4]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[5]_i_1 
       (.I0(conv_cnt0[5]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[6]_i_1 
       (.I0(conv_cnt0[6]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[7]_i_1 
       (.I0(conv_cnt0[7]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[8]_i_1 
       (.I0(conv_cnt0[8]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conv_cnt[9]_i_1 
       (.I0(conv_cnt0[9]),
        .I1(\busy_cnt[0]_i_3_n_0 ),
        .O(\conv_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[0] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[0]_i_1_n_0 ),
        .Q(conv_cnt[0]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[10] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[10]_i_1_n_0 ),
        .Q(conv_cnt[10]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[11] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[11]_i_1_n_0 ),
        .Q(conv_cnt[11]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[12] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[12]_i_1_n_0 ),
        .Q(conv_cnt[12]),
        .R(o_i2c_ena_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \conv_cnt_reg[12]_i_2 
       (.CI(\conv_cnt_reg[8]_i_2_n_0 ),
        .CO({\conv_cnt_reg[12]_i_2_n_0 ,\conv_cnt_reg[12]_i_2_n_1 ,\conv_cnt_reg[12]_i_2_n_2 ,\conv_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[12:9]),
        .S(conv_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[13] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[13]_i_1_n_0 ),
        .Q(conv_cnt[13]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[14] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[14]_i_1_n_0 ),
        .Q(conv_cnt[14]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[15] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[15]_i_1_n_0 ),
        .Q(conv_cnt[15]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[16] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[16]_i_2_n_0 ),
        .Q(conv_cnt[16]),
        .R(o_i2c_ena_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \conv_cnt_reg[16]_i_3 
       (.CI(\conv_cnt_reg[12]_i_2_n_0 ),
        .CO({\NLW_conv_cnt_reg[16]_i_3_CO_UNCONNECTED [3],\conv_cnt_reg[16]_i_3_n_1 ,\conv_cnt_reg[16]_i_3_n_2 ,\conv_cnt_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[16:13]),
        .S(conv_cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[1] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[1]_i_1_n_0 ),
        .Q(conv_cnt[1]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[2] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[2]_i_1_n_0 ),
        .Q(conv_cnt[2]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[3] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[3]_i_1_n_0 ),
        .Q(conv_cnt[3]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[4] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[4]_i_1_n_0 ),
        .Q(conv_cnt[4]),
        .R(o_i2c_ena_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \conv_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\conv_cnt_reg[4]_i_2_n_0 ,\conv_cnt_reg[4]_i_2_n_1 ,\conv_cnt_reg[4]_i_2_n_2 ,\conv_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(conv_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[4:1]),
        .S(conv_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[5] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[5]_i_1_n_0 ),
        .Q(conv_cnt[5]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[6] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[6]_i_1_n_0 ),
        .Q(conv_cnt[6]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[7] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[7]_i_1_n_0 ),
        .Q(conv_cnt[7]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[8] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[8]_i_1_n_0 ),
        .Q(conv_cnt[8]),
        .R(o_i2c_ena_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \conv_cnt_reg[8]_i_2 
       (.CI(\conv_cnt_reg[4]_i_2_n_0 ),
        .CO({\conv_cnt_reg[8]_i_2_n_0 ,\conv_cnt_reg[8]_i_2_n_1 ,\conv_cnt_reg[8]_i_2_n_2 ,\conv_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[8:5]),
        .S(conv_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[9] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(\conv_cnt[9]_i_1_n_0 ),
        .Q(conv_cnt[9]),
        .R(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF57AA00)) 
    led2_i_1
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(led2),
        .O(led2_i_1_n_0));
  FDRE led2_reg
       (.C(clk),
        .CE(1'b1),
        .D(led2_i_1_n_0),
        .Q(led2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \o_TX_ALT_data[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(rst),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\o_TX_ALT_data[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \o_TX_ALT_data[23]_i_2 
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\o_TX_ALT_data[23]_i_2_n_0 ));
  FDRE \o_TX_ALT_data_reg[0] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[0]),
        .Q(o_TX_ALT_data[0]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[10] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[10]),
        .Q(o_TX_ALT_data[10]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[11] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[11]),
        .Q(o_TX_ALT_data[11]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[12] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[12]),
        .Q(o_TX_ALT_data[12]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[13] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[13]),
        .Q(o_TX_ALT_data[13]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[14] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[14]),
        .Q(o_TX_ALT_data[14]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[15] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[15]),
        .Q(o_TX_ALT_data[15]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[16]),
        .Q(o_TX_ALT_data[16]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[17]),
        .Q(o_TX_ALT_data[17]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[18]),
        .Q(o_TX_ALT_data[18]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[19]),
        .Q(o_TX_ALT_data[19]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[1] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[1]),
        .Q(o_TX_ALT_data[1]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[20]),
        .Q(o_TX_ALT_data[20]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[21]),
        .Q(o_TX_ALT_data[21]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[22]),
        .Q(o_TX_ALT_data[22]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[23]),
        .Q(o_TX_ALT_data[23]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[2] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[2]),
        .Q(o_TX_ALT_data[2]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[3] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[3]),
        .Q(o_TX_ALT_data[3]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[4] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[4]),
        .Q(o_TX_ALT_data[4]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[5] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[5]),
        .Q(o_TX_ALT_data[5]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[6] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[6]),
        .Q(o_TX_ALT_data[6]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[7] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[7]),
        .Q(o_TX_ALT_data[7]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[8] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[8]),
        .Q(o_TX_ALT_data[8]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[9] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_2_n_0 ),
        .D(alt_data[9]),
        .Q(o_TX_ALT_data[9]),
        .R(\o_TX_ALT_data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0FFF040)) 
    o_TX_DV_BF_i_1
       (.I0(\who_requested_reg_n_0_[1] ),
        .I1(\who_requested_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(o_TX_DV_BF_i_2_n_0),
        .I4(o_TX_DV_BF),
        .O(o_TX_DV_BF_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0010)) 
    o_TX_DV_BF_i_2
       (.I0(\o_i2c_address[6]_i_3_n_0 ),
        .I1(\busy_cnt[1]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\busy_cnt[2]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(o_TX_DV_BF_i_2_n_0));
  FDRE o_TX_DV_BF_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_BF_i_1_n_0),
        .Q(o_TX_DV_BF),
        .R(o_i2c_ena_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    o_TX_DV_HK_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(o_TX_DV_HK_i_2_n_0),
        .I4(o_TX_DV_HK),
        .O(o_TX_DV_HK_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFABFFABFFABFFAA)) 
    o_TX_DV_HK_i_2
       (.I0(o_TX_DV_HK_i_3_n_0),
        .I1(\who_requested_reg_n_0_[0] ),
        .I2(\who_requested_reg_n_0_[1] ),
        .I3(o_TX_DV_HK_i_4_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[8] ),
        .O(o_TX_DV_HK_i_2_n_0));
  LUT6 #(
    .INIT(64'h0080000004000404)) 
    o_TX_DV_HK_i_3
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .I5(\busy_cnt_reg_n_0_[0] ),
        .O(o_TX_DV_HK_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    o_TX_DV_HK_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(o_TX_DV_HK_i_4_n_0));
  FDRE o_TX_DV_HK_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HK_i_1_n_0),
        .Q(o_TX_DV_HK),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF11FF11FE00EE00)) 
    o_TX_DV_HTR_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\who_requested_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\who_requested_reg_n_0_[1] ),
        .I5(o_TX_DV_HTR),
        .O(o_TX_DV_HTR_i_1_n_0));
  FDRE o_TX_DV_HTR_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HTR_i_1_n_0),
        .Q(o_TX_DV_HTR),
        .R(o_i2c_ena_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF55BA00)) 
    o_TX_DV_RAD_i_1
       (.I0(o_TX_DV_BF_i_2_n_0),
        .I1(\who_requested_reg_n_0_[0] ),
        .I2(\who_requested_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(o_TX_DV_RAD),
        .O(o_TX_DV_RAD_i_1_n_0));
  FDRE o_TX_DV_RAD_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_RAD_i_1_n_0),
        .Q(o_TX_DV_RAD),
        .R(o_i2c_ena_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \o_TX_RTC_data[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(rst),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \o_TX_RTC_data[23]_i_2 
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\o_TX_RTC_data[23]_i_2_n_0 ));
  FDRE \o_TX_RTC_data_reg[0] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[0]),
        .Q(o_TX_RTC_data[0]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[10] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[10]),
        .Q(o_TX_RTC_data[10]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[11] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[11]),
        .Q(o_TX_RTC_data[11]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[12] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[12]),
        .Q(o_TX_RTC_data[12]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[13] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[13]),
        .Q(o_TX_RTC_data[13]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[14] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[14]),
        .Q(o_TX_RTC_data[14]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[15] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[15]),
        .Q(o_TX_RTC_data[15]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[16]),
        .Q(o_TX_RTC_data[16]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[17]),
        .Q(o_TX_RTC_data[17]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[18]),
        .Q(o_TX_RTC_data[18]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[19]),
        .Q(o_TX_RTC_data[19]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[1] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[1]),
        .Q(o_TX_RTC_data[1]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[20]),
        .Q(o_TX_RTC_data[20]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[21]),
        .Q(o_TX_RTC_data[21]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[22]),
        .Q(o_TX_RTC_data[22]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[23]),
        .Q(o_TX_RTC_data[23]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[2] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[2]),
        .Q(o_TX_RTC_data[2]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[3] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[3]),
        .Q(o_TX_RTC_data[3]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[4] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[4]),
        .Q(o_TX_RTC_data[4]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[5] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[5]),
        .Q(o_TX_RTC_data[5]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[6] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[6]),
        .Q(o_TX_RTC_data[6]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[7] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[7]),
        .Q(o_TX_RTC_data[7]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[8] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[8]),
        .Q(o_TX_RTC_data[8]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_RTC_data_reg[9] 
       (.C(clk),
        .CE(\o_TX_RTC_data[23]_i_2_n_0 ),
        .D(rtc_data[9]),
        .Q(o_TX_RTC_data[9]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \o_TX_TEMP_data[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(rst),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\o_TX_TEMP_data[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \o_TX_TEMP_data[31]_i_2 
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\o_TX_TEMP_data[31]_i_2_n_0 ));
  FDRE \o_TX_TEMP_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[0]),
        .Q(o_TX_TEMP_data[0]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[1]),
        .Q(o_TX_TEMP_data[1]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[2]),
        .Q(o_TX_TEMP_data[2]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[3]),
        .Q(o_TX_TEMP_data[3]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[4]),
        .Q(o_TX_TEMP_data[4]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[5]),
        .Q(o_TX_TEMP_data[5]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[6]),
        .Q(o_TX_TEMP_data[6]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[7]),
        .Q(o_TX_TEMP_data[7]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[24] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[8]),
        .Q(o_TX_TEMP_data[8]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[25] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[9]),
        .Q(o_TX_TEMP_data[9]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[26] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[10]),
        .Q(o_TX_TEMP_data[10]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[27] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[11]),
        .Q(o_TX_TEMP_data[11]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[28] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[12]),
        .Q(o_TX_TEMP_data[12]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[29] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[13]),
        .Q(o_TX_TEMP_data[13]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[30] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[14]),
        .Q(o_TX_TEMP_data[14]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[31] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(temp_data[15]),
        .Q(o_TX_TEMP_data[15]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_i2c_address[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\o_i2c_address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_i2c_address[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\o_i2c_address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0002)) 
    \o_i2c_address[6]_i_1 
       (.I0(rst),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(\o_i2c_address[6]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\o_i2c_address[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_i2c_address[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\o_i2c_address[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \o_i2c_address[6]_i_3 
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .O(\o_i2c_address[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \o_i2c_address[6]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\o_i2c_address[6]_i_4_n_0 ));
  FDRE \o_i2c_address_reg[3] 
       (.C(clk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(o_i2c_address[0]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[4] 
       (.C(clk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[4]_i_1_n_0 ),
        .Q(o_i2c_address[1]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[5] 
       (.C(clk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[5]_i_1_n_0 ),
        .Q(o_i2c_address[2]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[6] 
       (.C(clk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[6]_i_2_n_0 ),
        .Q(o_i2c_address[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_i2c_data_wr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\o_i2c_data_wr[0]_i_2_n_0 ),
        .I2(o_i2c_data_wr[2]),
        .O(\o_i2c_data_wr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8880AAAA8888)) 
    \o_i2c_data_wr[0]_i_2 
       (.I0(rst),
        .I1(\o_i2c_data_wr[0]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_state_reg_n_0_[9] ),
        .I5(\busy_cnt[2]_i_4_n_0 ),
        .O(\o_i2c_data_wr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20000045)) 
    \o_i2c_data_wr[0]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .O(\o_i2c_data_wr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_i2c_data_wr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\o_i2c_data_wr[0]_i_2_n_0 ),
        .I2(o_i2c_data_wr[0]),
        .O(\o_i2c_data_wr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \o_i2c_data_wr[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\o_i2c_data_wr[0]_i_2_n_0 ),
        .I3(o_i2c_data_wr[1]),
        .O(\o_i2c_data_wr[6]_i_1_n_0 ));
  FDRE \o_i2c_data_wr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[0]_i_1_n_0 ),
        .Q(o_i2c_data_wr[2]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[3]_i_1_n_0 ),
        .Q(o_i2c_data_wr[0]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[6]_i_1_n_0 ),
        .Q(o_i2c_data_wr[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    o_i2c_ena_i_1
       (.I0(rst),
        .O(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAEABBABAAAAAAAA)) 
    o_i2c_ena_i_10
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(o_i2c_ena_i_10_n_0));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAA2000)) 
    o_i2c_ena_i_2
       (.I0(o_i2c_ena_i_3_n_0),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(o_i2c_ena_i_5_n_0),
        .I4(o_i2c_ena_i_6_n_0),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F4FF)) 
    o_i2c_ena_i_3
       (.I0(\busy_cnt[2]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\busy_cnt[1]_i_4_n_0 ),
        .I3(\busy_cnt[1]_i_3_n_0 ),
        .I4(\busy_cnt[2]_i_3_n_0 ),
        .I5(o_i2c_ena_i_7_n_0),
        .O(o_i2c_ena_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF7FAAEA)) 
    o_i2c_ena_i_4
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_ena_i_4_n_0));
  LUT6 #(
    .INIT(64'h00005504FFFFFFFF)) 
    o_i2c_ena_i_5
       (.I0(i_busy),
        .I1(conv_cnt[12]),
        .I2(o_i2c_ena_i_8_n_0),
        .I3(conv_cnt[13]),
        .I4(o_i2c_ena_i_9_n_0),
        .I5(\o_i2c_address[6]_i_3_n_0 ),
        .O(o_i2c_ena_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAEAAAEAFAEAAAF)) 
    o_i2c_ena_i_6
       (.I0(o_i2c_ena_i_10_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\busy_cnt[2]_i_6_n_0 ),
        .I3(\busy_cnt[1]_i_3_n_0 ),
        .I4(\o_i2c_address[6]_i_3_n_0 ),
        .I5(\busy_cnt[2]_i_3_n_0 ),
        .O(o_i2c_ena_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC0FAC8F2)) 
    o_i2c_ena_i_7
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(i_busy),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(busy_prev_reg_n_0),
        .O(o_i2c_ena_i_7_n_0));
  LUT6 #(
    .INIT(64'h000000005555557F)) 
    o_i2c_ena_i_8
       (.I0(conv_cnt[10]),
        .I1(conv_cnt[6]),
        .I2(conv_cnt[7]),
        .I3(conv_cnt[8]),
        .I4(conv_cnt[9]),
        .I5(conv_cnt[11]),
        .O(o_i2c_ena_i_8_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    o_i2c_ena_i_9
       (.I0(conv_cnt[16]),
        .I1(conv_cnt[14]),
        .I2(conv_cnt[15]),
        .O(o_i2c_ena_i_9_n_0));
  FDRE o_i2c_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_ena_i_2_n_0),
        .Q(o_i2c_ena),
        .R(o_i2c_ena_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    o_i2c_rw_i_1
       (.I0(o_i2c_rw_i_2_n_0),
        .I1(rst),
        .I2(o_i2c_rw_i_3_n_0),
        .I3(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFECC)) 
    o_i2c_rw_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt[1]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[7] ),
        .I3(\o_i2c_address[6]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(o_i2c_rw_i_2_n_0));
  LUT6 #(
    .INIT(64'h3330333230303030)) 
    o_i2c_rw_i_3
       (.I0(\busy_cnt[2]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(o_i2c_ena_i_4_n_0),
        .I3(\o_i2c_address[6]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(o_i2c_rw_i_4_n_0),
        .O(o_i2c_rw_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    o_i2c_rw_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(o_i2c_rw_i_4_n_0));
  FDRE o_i2c_rw_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \rtc_data[15]_i_1 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(\busy_cnt[2]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\rtc_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[0]),
        .O(\rtc_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[1]),
        .O(\rtc_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[2]),
        .O(\rtc_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[3]),
        .O(\rtc_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[4]),
        .O(\rtc_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[5]),
        .O(\rtc_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[6]),
        .O(\rtc_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \rtc_data[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt[2]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\rtc_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtc_data[23]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[7]),
        .O(\rtc_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \rtc_data[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(i_busy),
        .I2(\busy_cnt[2]_i_6_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\busy_cnt[1]_i_3_n_0 ),
        .I5(\o_i2c_address[6]_i_3_n_0 ),
        .O(\rtc_data[7]_i_1_n_0 ));
  FDRE \rtc_data_reg[0] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[16]_i_1_n_0 ),
        .Q(rtc_data[0]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[10] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[18]_i_1_n_0 ),
        .Q(rtc_data[10]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[11] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[19]_i_1_n_0 ),
        .Q(rtc_data[11]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[12] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[20]_i_1_n_0 ),
        .Q(rtc_data[12]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[13] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[21]_i_1_n_0 ),
        .Q(rtc_data[13]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[14] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[22]_i_1_n_0 ),
        .Q(rtc_data[14]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[15] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[23]_i_2_n_0 ),
        .Q(rtc_data[15]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[16] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[16]_i_1_n_0 ),
        .Q(rtc_data[16]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[17] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[17]_i_1_n_0 ),
        .Q(rtc_data[17]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[18] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[18]_i_1_n_0 ),
        .Q(rtc_data[18]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[19] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[19]_i_1_n_0 ),
        .Q(rtc_data[19]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[1] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[17]_i_1_n_0 ),
        .Q(rtc_data[1]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[20] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[20]_i_1_n_0 ),
        .Q(rtc_data[20]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[21] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[21]_i_1_n_0 ),
        .Q(rtc_data[21]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[22] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[22]_i_1_n_0 ),
        .Q(rtc_data[22]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[23] 
       (.C(clk),
        .CE(\rtc_data[23]_i_1_n_0 ),
        .D(\rtc_data[23]_i_2_n_0 ),
        .Q(rtc_data[23]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[2] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[18]_i_1_n_0 ),
        .Q(rtc_data[2]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[3] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[19]_i_1_n_0 ),
        .Q(rtc_data[3]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[4] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[20]_i_1_n_0 ),
        .Q(rtc_data[4]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[5] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[21]_i_1_n_0 ),
        .Q(rtc_data[5]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[6] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[22]_i_1_n_0 ),
        .Q(rtc_data[6]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[7] 
       (.C(clk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(\rtc_data[23]_i_2_n_0 ),
        .Q(rtc_data[7]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[8] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[16]_i_1_n_0 ),
        .Q(rtc_data[8]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \rtc_data_reg[9] 
       (.C(clk),
        .CE(\rtc_data[15]_i_1_n_0 ),
        .D(\rtc_data[17]_i_1_n_0 ),
        .Q(rtc_data[9]),
        .R(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[2]),
        .O(\temp_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[3]),
        .O(\temp_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[4]),
        .O(\temp_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[5]),
        .O(\temp_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[6]),
        .O(\temp_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \temp_data[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt[2]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\temp_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[7]),
        .O(\temp_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \temp_data[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(i_busy),
        .I3(\o_i2c_address[6]_i_3_n_0 ),
        .I4(\busy_cnt[2]_i_6_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\temp_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[0]),
        .O(\temp_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(i_data_read[1]),
        .O(\temp_data[9]_i_1_n_0 ));
  FDRE \temp_data_reg[0] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[8]_i_1_n_0 ),
        .Q(temp_data[0]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[10] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[10]_i_1_n_0 ),
        .Q(temp_data[10]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[11] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[11]_i_1_n_0 ),
        .Q(temp_data[11]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[12] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[12]_i_1_n_0 ),
        .Q(temp_data[12]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[13] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[13]_i_1_n_0 ),
        .Q(temp_data[13]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[14] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[14]_i_1_n_0 ),
        .Q(temp_data[14]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[15] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[15]_i_2_n_0 ),
        .Q(temp_data[15]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[1] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[9]_i_1_n_0 ),
        .Q(temp_data[1]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[2] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[10]_i_1_n_0 ),
        .Q(temp_data[2]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[3] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[11]_i_1_n_0 ),
        .Q(temp_data[3]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[4] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[12]_i_1_n_0 ),
        .Q(temp_data[4]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[5] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[13]_i_1_n_0 ),
        .Q(temp_data[5]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[6] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[14]_i_1_n_0 ),
        .Q(temp_data[6]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[7] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(\temp_data[15]_i_2_n_0 ),
        .Q(temp_data[7]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[8] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[8]_i_1_n_0 ),
        .Q(temp_data[8]),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \temp_data_reg[9] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(\temp_data[9]_i_1_n_0 ),
        .Q(temp_data[9]),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hCDCCFFFFCDCC0000)) 
    \who_requested[0]_i_1 
       (.I0(i_HK_RTC_request),
        .I1(i_BF_RTC_request),
        .I2(i_RAD_RTC_request),
        .I3(i_HTR_TEMP_request),
        .I4(\who_requested[1]_i_2_n_0 ),
        .I5(\who_requested_reg_n_0_[0] ),
        .O(\who_requested[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3130FFFF31300000)) 
    \who_requested[1]_i_1 
       (.I0(i_HK_RTC_request),
        .I1(i_BF_RTC_request),
        .I2(i_RAD_RTC_request),
        .I3(i_HTR_TEMP_request),
        .I4(\who_requested[1]_i_2_n_0 ),
        .I5(\who_requested_reg_n_0_[1] ),
        .O(\who_requested[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080088888888)) 
    \who_requested[1]_i_2 
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(i_HK_ALT_request),
        .I3(i_HTR_TEMP_request),
        .I4(i_HK_TEMP_request),
        .I5(\FSM_onehot_state[7]_i_2_n_0 ),
        .O(\who_requested[1]_i_2_n_0 ));
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

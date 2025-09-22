// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep 18 13:25:36 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/BIG PICTURE
//               STUFF/FPGA_to_MCU_Test1/FPGA_to_MCU_Test1.gen/sources_1/bd/Fpga_and_MCU_Test1/ip/Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0/Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0_sim_netlist.v}
// Design      : Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2C_full_sensor_data_fetcher,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0
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
  wire [6:3]\^o_i2c_data_wr ;
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
  assign o_i2c_data_wr[7] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[6:5] = \^o_i2c_data_wr [6:5];
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \^o_i2c_data_wr [3];
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[0] = \^o_i2c_data_wr [5];
  GND GND
       (.G(\<const0> ));
  Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher U0
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
        .o_i2c_data_wr({\^o_i2c_data_wr [5],\^o_i2c_data_wr [6],\^o_i2c_data_wr [3]}),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "I2C_full_sensor_data_fetcher" *) 
module Fpga_and_MCU_Test1_I2C_full_sensor_data_0_0_I2C_full_sensor_data_fetcher
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
    rst,
    i_TX_done_HK,
    i_HK_ALT_request,
    i_HK_TEMP_request,
    i_HTR_TEMP_request,
    i_busy,
    i_TX_done_RAD,
    i_TX_done_BF,
    i_TX_done_HTR,
    clk,
    i_HK_RTC_request,
    i_BF_RTC_request,
    i_RAD_RTC_request,
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
  input rst;
  input i_TX_done_HK;
  input i_HK_ALT_request;
  input i_HK_TEMP_request;
  input i_HTR_TEMP_request;
  input i_busy;
  input i_TX_done_RAD;
  input i_TX_done_BF;
  input i_TX_done_HTR;
  input clk;
  input i_HK_RTC_request;
  input i_BF_RTC_request;
  input i_RAD_RTC_request;
  input [7:0]i_data_read;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \alt_data[15]_i_1_n_0 ;
  wire \alt_data[23]_i_1_n_0 ;
  wire \alt_data[23]_i_2_n_0 ;
  wire \alt_data[7]_i_1_n_0 ;
  wire \alt_data_reg_n_0_[0] ;
  wire \alt_data_reg_n_0_[10] ;
  wire \alt_data_reg_n_0_[11] ;
  wire \alt_data_reg_n_0_[12] ;
  wire \alt_data_reg_n_0_[13] ;
  wire \alt_data_reg_n_0_[14] ;
  wire \alt_data_reg_n_0_[15] ;
  wire \alt_data_reg_n_0_[16] ;
  wire \alt_data_reg_n_0_[17] ;
  wire \alt_data_reg_n_0_[18] ;
  wire \alt_data_reg_n_0_[19] ;
  wire \alt_data_reg_n_0_[1] ;
  wire \alt_data_reg_n_0_[20] ;
  wire \alt_data_reg_n_0_[21] ;
  wire \alt_data_reg_n_0_[22] ;
  wire \alt_data_reg_n_0_[23] ;
  wire \alt_data_reg_n_0_[2] ;
  wire \alt_data_reg_n_0_[3] ;
  wire \alt_data_reg_n_0_[4] ;
  wire \alt_data_reg_n_0_[5] ;
  wire \alt_data_reg_n_0_[6] ;
  wire \alt_data_reg_n_0_[7] ;
  wire \alt_data_reg_n_0_[8] ;
  wire \alt_data_reg_n_0_[9] ;
  wire [2:0]busy_cnt;
  wire \busy_cnt[0]_i_2_n_0 ;
  wire \busy_cnt[0]_i_3_n_0 ;
  wire \busy_cnt[0]_i_4_n_0 ;
  wire \busy_cnt[0]_i_5_n_0 ;
  wire \busy_cnt[1]_i_2_n_0 ;
  wire \busy_cnt[1]_i_3_n_0 ;
  wire \busy_cnt[2]_i_1_n_0 ;
  wire \busy_cnt[2]_i_3_n_0 ;
  wire \busy_cnt_reg_n_0_[0] ;
  wire \busy_cnt_reg_n_0_[1] ;
  wire \busy_cnt_reg_n_0_[2] ;
  wire busy_prev;
  wire busy_prev_reg_n_0;
  wire clk;
  wire [16:0]conv_cnt;
  wire [16:1]conv_cnt0;
  wire conv_cnt0_carry__0_n_0;
  wire conv_cnt0_carry__0_n_1;
  wire conv_cnt0_carry__0_n_2;
  wire conv_cnt0_carry__0_n_3;
  wire conv_cnt0_carry__1_n_0;
  wire conv_cnt0_carry__1_n_1;
  wire conv_cnt0_carry__1_n_2;
  wire conv_cnt0_carry__1_n_3;
  wire conv_cnt0_carry__2_n_1;
  wire conv_cnt0_carry__2_n_2;
  wire conv_cnt0_carry__2_n_3;
  wire conv_cnt0_carry_n_0;
  wire conv_cnt0_carry_n_1;
  wire conv_cnt0_carry_n_2;
  wire conv_cnt0_carry_n_3;
  wire \conv_cnt[16]_i_1_n_0 ;
  wire \conv_cnt[16]_i_3_n_0 ;
  wire \conv_cnt[16]_i_4_n_0 ;
  wire \conv_cnt[16]_i_5_n_0 ;
  wire \conv_cnt[16]_i_6_n_0 ;
  wire \conv_cnt_reg_n_0_[0] ;
  wire \conv_cnt_reg_n_0_[10] ;
  wire \conv_cnt_reg_n_0_[11] ;
  wire \conv_cnt_reg_n_0_[12] ;
  wire \conv_cnt_reg_n_0_[13] ;
  wire \conv_cnt_reg_n_0_[14] ;
  wire \conv_cnt_reg_n_0_[15] ;
  wire \conv_cnt_reg_n_0_[16] ;
  wire \conv_cnt_reg_n_0_[1] ;
  wire \conv_cnt_reg_n_0_[2] ;
  wire \conv_cnt_reg_n_0_[3] ;
  wire \conv_cnt_reg_n_0_[4] ;
  wire \conv_cnt_reg_n_0_[5] ;
  wire \conv_cnt_reg_n_0_[6] ;
  wire \conv_cnt_reg_n_0_[7] ;
  wire \conv_cnt_reg_n_0_[8] ;
  wire \conv_cnt_reg_n_0_[9] ;
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
  wire led2_i_2_n_0;
  wire led2_i_3_n_0;
  wire [23:0]o_TX_ALT_data;
  wire \o_TX_ALT_data[23]_i_1_n_0 ;
  wire o_TX_DV_BF;
  wire o_TX_DV_BF_i_1_n_0;
  wire o_TX_DV_BF_i_2_n_0;
  wire o_TX_DV_HK;
  wire o_TX_DV_HK_i_1_n_0;
  wire o_TX_DV_HK_i_2_n_0;
  wire o_TX_DV_HK_i_3_n_0;
  wire o_TX_DV_HTR;
  wire o_TX_DV_HTR_i_1_n_0;
  wire o_TX_DV_HTR_i_2_n_0;
  wire o_TX_DV_RAD;
  wire o_TX_DV_RAD_i_1_n_0;
  wire o_TX_DV_RAD_i_2_n_0;
  wire [23:0]o_TX_RTC_data;
  wire \o_TX_RTC_data[23]_i_1_n_0 ;
  wire \o_TX_RTC_data[23]_i_2_n_0 ;
  wire [15:0]o_TX_TEMP_data;
  wire \o_TX_TEMP_data[31]_i_1_n_0 ;
  wire \o_TX_TEMP_data[31]_i_2_n_0 ;
  wire [3:0]o_i2c_address;
  wire \o_i2c_address[3]_i_1_n_0 ;
  wire \o_i2c_address[4]_i_1_n_0 ;
  wire \o_i2c_address[5]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_2_n_0 ;
  wire \o_i2c_address[6]_i_3_n_0 ;
  wire \o_i2c_address[6]_i_4_n_0 ;
  wire \o_i2c_address[6]_i_5_n_0 ;
  wire \o_i2c_address[6]_i_6_n_0 ;
  wire \o_i2c_address[6]_i_7_n_0 ;
  wire \o_i2c_address[6]_i_8_n_0 ;
  wire \o_i2c_address[6]_i_9_n_0 ;
  wire [2:0]o_i2c_data_wr;
  wire \o_i2c_data_wr[3]_i_1_n_0 ;
  wire \o_i2c_data_wr[6]_i_1_n_0 ;
  wire \o_i2c_data_wr[7]_i_1_n_0 ;
  wire \o_i2c_data_wr[7]_i_2_n_0 ;
  wire \o_i2c_data_wr[7]_i_3_n_0 ;
  wire \o_i2c_data_wr[7]_i_4_n_0 ;
  wire \o_i2c_data_wr[7]_i_5_n_0 ;
  wire \o_i2c_data_wr[7]_i_6_n_0 ;
  wire \o_i2c_data_wr[7]_i_7_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_10_n_0;
  wire o_i2c_ena_i_11_n_0;
  wire o_i2c_ena_i_12_n_0;
  wire o_i2c_ena_i_13_n_0;
  wire o_i2c_ena_i_14_n_0;
  wire o_i2c_ena_i_15_n_0;
  wire o_i2c_ena_i_16_n_0;
  wire o_i2c_ena_i_17_n_0;
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
  wire \rtc_data[15]_i_2_n_0 ;
  wire \rtc_data[23]_i_1_n_0 ;
  wire \rtc_data[23]_i_3_n_0 ;
  wire \rtc_data[7]_i_1_n_0 ;
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
  wire \start_cnt[0]_i_1_n_0 ;
  wire \start_cnt[0]_i_3_n_0 ;
  wire [20:7]start_cnt_reg;
  wire \start_cnt_reg[0]_i_2_n_0 ;
  wire \start_cnt_reg[0]_i_2_n_1 ;
  wire \start_cnt_reg[0]_i_2_n_2 ;
  wire \start_cnt_reg[0]_i_2_n_3 ;
  wire \start_cnt_reg[0]_i_2_n_4 ;
  wire \start_cnt_reg[0]_i_2_n_5 ;
  wire \start_cnt_reg[0]_i_2_n_6 ;
  wire \start_cnt_reg[0]_i_2_n_7 ;
  wire \start_cnt_reg[12]_i_1_n_0 ;
  wire \start_cnt_reg[12]_i_1_n_1 ;
  wire \start_cnt_reg[12]_i_1_n_2 ;
  wire \start_cnt_reg[12]_i_1_n_3 ;
  wire \start_cnt_reg[12]_i_1_n_4 ;
  wire \start_cnt_reg[12]_i_1_n_5 ;
  wire \start_cnt_reg[12]_i_1_n_6 ;
  wire \start_cnt_reg[12]_i_1_n_7 ;
  wire \start_cnt_reg[16]_i_1_n_0 ;
  wire \start_cnt_reg[16]_i_1_n_1 ;
  wire \start_cnt_reg[16]_i_1_n_2 ;
  wire \start_cnt_reg[16]_i_1_n_3 ;
  wire \start_cnt_reg[16]_i_1_n_4 ;
  wire \start_cnt_reg[16]_i_1_n_5 ;
  wire \start_cnt_reg[16]_i_1_n_6 ;
  wire \start_cnt_reg[16]_i_1_n_7 ;
  wire \start_cnt_reg[20]_i_1_n_7 ;
  wire \start_cnt_reg[4]_i_1_n_0 ;
  wire \start_cnt_reg[4]_i_1_n_1 ;
  wire \start_cnt_reg[4]_i_1_n_2 ;
  wire \start_cnt_reg[4]_i_1_n_3 ;
  wire \start_cnt_reg[4]_i_1_n_4 ;
  wire \start_cnt_reg[4]_i_1_n_5 ;
  wire \start_cnt_reg[4]_i_1_n_6 ;
  wire \start_cnt_reg[4]_i_1_n_7 ;
  wire \start_cnt_reg[8]_i_1_n_0 ;
  wire \start_cnt_reg[8]_i_1_n_1 ;
  wire \start_cnt_reg[8]_i_1_n_2 ;
  wire \start_cnt_reg[8]_i_1_n_3 ;
  wire \start_cnt_reg[8]_i_1_n_4 ;
  wire \start_cnt_reg[8]_i_1_n_5 ;
  wire \start_cnt_reg[8]_i_1_n_6 ;
  wire \start_cnt_reg[8]_i_1_n_7 ;
  wire \start_cnt_reg_n_0_[0] ;
  wire \start_cnt_reg_n_0_[1] ;
  wire \start_cnt_reg_n_0_[2] ;
  wire \start_cnt_reg_n_0_[3] ;
  wire \start_cnt_reg_n_0_[4] ;
  wire \start_cnt_reg_n_0_[5] ;
  wire \start_cnt_reg_n_0_[6] ;
  wire [3:0]state;
  wire [3:0]state__0;
  wire [15:8]temp_data;
  wire \temp_data[15]_i_1_n_0 ;
  wire \temp_data[15]_i_3_n_0 ;
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
  wire [3:3]NLW_conv_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:0]\NLW_start_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_start_cnt_reg[20]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h222AAAAAFFFFFFFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[3]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(i_TX_done_HTR),
        .I3(i_TX_done_HK),
        .I4(state[0]),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FAF0F0F8FAFFFF)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[0]),
        .I1(i_TX_done_HK),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[3]_i_12_n_0 ),
        .I1(i_HK_ALT_request),
        .I2(i_HK_TEMP_request),
        .I3(i_HTR_TEMP_request),
        .I4(state[1]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAA0A0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00A8FFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[0]),
        .I1(i_TX_done_HK),
        .I2(i_TX_done_HTR),
        .I3(state[1]),
        .I4(state[3]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(i_HK_RTC_request),
        .I1(i_BF_RTC_request),
        .I2(i_RAD_RTC_request),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h070F0000070F0F0F)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(i_TX_done_HK),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(i_HK_ALT_request),
        .I3(i_HK_RTC_request),
        .I4(i_BF_RTC_request),
        .I5(i_RAD_RTC_request),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554000)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_state[3]_i_6_n_0 ),
        .I4(\FSM_sequential_state[3]_i_7_n_0 ),
        .I5(\FSM_sequential_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(i_TX_done_HK),
        .I1(state[1]),
        .I2(i_TX_done_RAD),
        .I3(i_TX_done_BF),
        .I4(state[0]),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h54AE04AE04AE04AE)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[3]),
        .I1(\FSM_sequential_state[3]_i_9_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(i_TX_done_HK),
        .I5(state[0]),
        .O(state__0[3]));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAAAAAA)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_3_n_0 ),
        .I2(\conv_cnt[16]_i_4_n_0 ),
        .I3(i_busy),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAA8A8A8)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(start_cnt_reg[20]),
        .I1(start_cnt_reg[19]),
        .I2(start_cnt_reg[18]),
        .I3(start_cnt_reg[17]),
        .I4(o_i2c_ena_i_10_n_0),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\conv_cnt[16]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_10_n_0 ),
        .I2(\conv_cnt[16]_i_5_n_0 ),
        .I3(\FSM_sequential_state[3]_i_11_n_0 ),
        .I4(\rtc_data[15]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0505545004045450)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(\rtc_data[15]_i_2_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF000E)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(i_HTR_TEMP_request),
        .I1(i_HK_TEMP_request),
        .I2(i_HK_ALT_request),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(state[0]),
        .S(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(state[1]),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(o_i2c_ena_i_1_n_0));
  (* FSM_ENCODED_STATES = "prep_alt:0100,alt_read:0101,send_temp:1001,cleanup:1010,temp:1000,idle:0001,set_rtc:0000,rtc:0010,send_alt:0111,send_rtc:0011,alt:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .D(state__0[3]),
        .Q(state[3]),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0004)) 
    \alt_data[15]_i_1 
       (.I0(\o_i2c_address[6]_i_5_n_0 ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(state[3]),
        .I5(\alt_data[23]_i_2_n_0 ),
        .O(\alt_data[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF08)) 
    \alt_data[23]_i_1 
       (.I0(\conv_cnt[16]_i_3_n_0 ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(state[3]),
        .I4(\alt_data[23]_i_2_n_0 ),
        .O(\alt_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFBBF)) 
    \alt_data[23]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\alt_data[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002C00)) 
    \alt_data[7]_i_1 
       (.I0(\rtc_data[15]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\alt_data[7]_i_1_n_0 ));
  FDRE \alt_data_reg[0] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[16]),
        .Q(\alt_data_reg_n_0_[0] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[10] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[18]),
        .Q(\alt_data_reg_n_0_[10] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[11] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[19]),
        .Q(\alt_data_reg_n_0_[11] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[12] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[20]),
        .Q(\alt_data_reg_n_0_[12] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[13] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[21]),
        .Q(\alt_data_reg_n_0_[13] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[14] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[22]),
        .Q(\alt_data_reg_n_0_[14] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[15] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[23]),
        .Q(\alt_data_reg_n_0_[15] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[16] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[16]),
        .Q(\alt_data_reg_n_0_[16] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[17] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[17]),
        .Q(\alt_data_reg_n_0_[17] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[18] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[18]),
        .Q(\alt_data_reg_n_0_[18] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[19] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[19]),
        .Q(\alt_data_reg_n_0_[19] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[1] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[17]),
        .Q(\alt_data_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[20] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[20]),
        .Q(\alt_data_reg_n_0_[20] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[21] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[21]),
        .Q(\alt_data_reg_n_0_[21] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[22] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[22]),
        .Q(\alt_data_reg_n_0_[22] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[23] 
       (.C(clk),
        .CE(\alt_data[23]_i_1_n_0 ),
        .D(rtc_data[23]),
        .Q(\alt_data_reg_n_0_[23] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[2] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[18]),
        .Q(\alt_data_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[3] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[19]),
        .Q(\alt_data_reg_n_0_[3] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[4] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[20]),
        .Q(\alt_data_reg_n_0_[4] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[5] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[21]),
        .Q(\alt_data_reg_n_0_[5] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[6] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[22]),
        .Q(\alt_data_reg_n_0_[6] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[7] 
       (.C(clk),
        .CE(\alt_data[7]_i_1_n_0 ),
        .D(rtc_data[23]),
        .Q(\alt_data_reg_n_0_[7] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[8] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[16]),
        .Q(\alt_data_reg_n_0_[8] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE \alt_data_reg[9] 
       (.C(clk),
        .CE(\alt_data[15]_i_1_n_0 ),
        .D(rtc_data[17]),
        .Q(\alt_data_reg_n_0_[9] ),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F8F808F8080)) 
    \busy_cnt[0]_i_1 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\busy_cnt[0]_i_2_n_0 ),
        .I2(state[3]),
        .I3(\busy_cnt[0]_i_3_n_0 ),
        .I4(\busy_cnt[0]_i_4_n_0 ),
        .I5(\busy_cnt[0]_i_5_n_0 ),
        .O(busy_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF0BB0F00)) 
    \busy_cnt[0]_i_2 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .O(\busy_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF404F)) 
    \busy_cnt[0]_i_3 
       (.I0(\busy_cnt[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\conv_cnt[16]_i_4_n_0 ),
        .I4(state[0]),
        .O(\busy_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDF00FFFF)) 
    \busy_cnt[0]_i_4 
       (.I0(\conv_cnt[16]_i_5_n_0 ),
        .I1(i_busy),
        .I2(\conv_cnt[16]_i_3_n_0 ),
        .I3(\conv_cnt[16]_i_4_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(\busy_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF00FE0E000000000)) 
    \busy_cnt[0]_i_5 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .I5(state[0]),
        .O(\busy_cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000CEFFF00000000)) 
    \busy_cnt[1]_i_1 
       (.I0(state[0]),
        .I1(\busy_cnt[1]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(\busy_cnt[1]_i_3_n_0 ),
        .O(busy_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \busy_cnt[1]_i_2 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .O(\busy_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \busy_cnt[1]_i_3 
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .O(\busy_cnt[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000F30FE)) 
    \busy_cnt[2]_i_1 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[3]),
        .O(\busy_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000FFEFE00000000)) 
    \busy_cnt[2]_i_2 
       (.I0(state[0]),
        .I1(\busy_cnt[2]_i_3_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(\o_i2c_address[6]_i_5_n_0 ),
        .O(busy_cnt[2]));
  LUT3 #(
    .INIT(8'hFE)) 
    \busy_cnt[2]_i_3 
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .O(\busy_cnt[2]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h222A)) 
    busy_prev_i_1
       (.I0(i_busy),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .O(busy_prev));
  FDRE busy_prev_reg
       (.C(clk),
        .CE(\busy_cnt[2]_i_1_n_0 ),
        .D(busy_prev),
        .Q(busy_prev_reg_n_0),
        .R(o_i2c_ena_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conv_cnt0_carry
       (.CI(1'b0),
        .CO({conv_cnt0_carry_n_0,conv_cnt0_carry_n_1,conv_cnt0_carry_n_2,conv_cnt0_carry_n_3}),
        .CYINIT(\conv_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[4:1]),
        .S({\conv_cnt_reg_n_0_[4] ,\conv_cnt_reg_n_0_[3] ,\conv_cnt_reg_n_0_[2] ,\conv_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conv_cnt0_carry__0
       (.CI(conv_cnt0_carry_n_0),
        .CO({conv_cnt0_carry__0_n_0,conv_cnt0_carry__0_n_1,conv_cnt0_carry__0_n_2,conv_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[8:5]),
        .S({\conv_cnt_reg_n_0_[8] ,\conv_cnt_reg_n_0_[7] ,\conv_cnt_reg_n_0_[6] ,\conv_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conv_cnt0_carry__1
       (.CI(conv_cnt0_carry__0_n_0),
        .CO({conv_cnt0_carry__1_n_0,conv_cnt0_carry__1_n_1,conv_cnt0_carry__1_n_2,conv_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[12:9]),
        .S({\conv_cnt_reg_n_0_[12] ,\conv_cnt_reg_n_0_[11] ,\conv_cnt_reg_n_0_[10] ,\conv_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 conv_cnt0_carry__2
       (.CI(conv_cnt0_carry__1_n_0),
        .CO({NLW_conv_cnt0_carry__2_CO_UNCONNECTED[3],conv_cnt0_carry__2_n_1,conv_cnt0_carry__2_n_2,conv_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(conv_cnt0[16:13]),
        .S({\conv_cnt_reg_n_0_[16] ,\conv_cnt_reg_n_0_[15] ,\conv_cnt_reg_n_0_[14] ,\conv_cnt_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \conv_cnt[0]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(\conv_cnt_reg_n_0_[0] ),
        .O(conv_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[10]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[10]),
        .O(conv_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[11]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[11]),
        .O(conv_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[12]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[12]),
        .O(conv_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[13]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[13]),
        .O(conv_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[14]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[14]),
        .O(conv_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[15]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[15]),
        .O(conv_cnt[15]));
  LUT6 #(
    .INIT(64'h0000000030083000)) 
    \conv_cnt[16]_i_1 
       (.I0(\conv_cnt[16]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(\conv_cnt[16]_i_4_n_0 ),
        .I5(state[0]),
        .O(\conv_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[16]_i_2 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[16]),
        .O(conv_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h080000F7)) 
    \conv_cnt[16]_i_3 
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .O(\conv_cnt[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \conv_cnt[16]_i_4 
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .O(\conv_cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF200000000000000)) 
    \conv_cnt[16]_i_5 
       (.I0(\conv_cnt_reg_n_0_[12] ),
        .I1(\conv_cnt[16]_i_6_n_0 ),
        .I2(\conv_cnt_reg_n_0_[13] ),
        .I3(\conv_cnt_reg_n_0_[15] ),
        .I4(\conv_cnt_reg_n_0_[14] ),
        .I5(\conv_cnt_reg_n_0_[16] ),
        .O(\conv_cnt[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555557F)) 
    \conv_cnt[16]_i_6 
       (.I0(\conv_cnt_reg_n_0_[10] ),
        .I1(\conv_cnt_reg_n_0_[6] ),
        .I2(\conv_cnt_reg_n_0_[7] ),
        .I3(\conv_cnt_reg_n_0_[8] ),
        .I4(\conv_cnt_reg_n_0_[9] ),
        .I5(\conv_cnt_reg_n_0_[11] ),
        .O(\conv_cnt[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[1]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[1]),
        .O(conv_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[2]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[2]),
        .O(conv_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[3]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[3]),
        .O(conv_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[4]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[4]),
        .O(conv_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[5]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[5]),
        .O(conv_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[6]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[6]),
        .O(conv_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[7]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[7]),
        .O(conv_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[8]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[8]),
        .O(conv_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \conv_cnt[9]_i_1 
       (.I0(state[3]),
        .I1(\conv_cnt[16]_i_5_n_0 ),
        .I2(conv_cnt0[9]),
        .O(conv_cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[0] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[0]),
        .Q(\conv_cnt_reg_n_0_[0] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[10] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[10]),
        .Q(\conv_cnt_reg_n_0_[10] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[11] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[11]),
        .Q(\conv_cnt_reg_n_0_[11] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[12] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[12]),
        .Q(\conv_cnt_reg_n_0_[12] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[13] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[13]),
        .Q(\conv_cnt_reg_n_0_[13] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[14] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[14]),
        .Q(\conv_cnt_reg_n_0_[14] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[15] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[15]),
        .Q(\conv_cnt_reg_n_0_[15] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[16] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[16]),
        .Q(\conv_cnt_reg_n_0_[16] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[1] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[1]),
        .Q(\conv_cnt_reg_n_0_[1] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[2] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[2]),
        .Q(\conv_cnt_reg_n_0_[2] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[3] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[3]),
        .Q(\conv_cnt_reg_n_0_[3] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[4] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[4]),
        .Q(\conv_cnt_reg_n_0_[4] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[5] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[5]),
        .Q(\conv_cnt_reg_n_0_[5] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[6] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[6]),
        .Q(\conv_cnt_reg_n_0_[6] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[7] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[7]),
        .Q(\conv_cnt_reg_n_0_[7] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[8] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[8]),
        .Q(\conv_cnt_reg_n_0_[8] ),
        .R(o_i2c_ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \conv_cnt_reg[9] 
       (.C(clk),
        .CE(\conv_cnt[16]_i_1_n_0 ),
        .D(conv_cnt[9]),
        .Q(\conv_cnt_reg_n_0_[9] ),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hAEFFFFFFA2000000)) 
    led2_i_1
       (.I0(led2_i_2_n_0),
        .I1(\o_i2c_address[6]_i_4_n_0 ),
        .I2(led2_i_3_n_0),
        .I3(\o_i2c_address[3]_i_1_n_0 ),
        .I4(rst),
        .I5(led2),
        .O(led2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    led2_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\o_i2c_address[6]_i_5_n_0 ),
        .O(led2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led2_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .O(led2_i_3_n_0));
  FDRE led2_reg
       (.C(clk),
        .CE(1'b1),
        .D(led2_i_1_n_0),
        .Q(led2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02008000)) 
    \o_TX_ALT_data[23]_i_1 
       (.I0(rst),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .O(\o_TX_ALT_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[0] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[0] ),
        .Q(o_TX_ALT_data[0]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[10] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[10] ),
        .Q(o_TX_ALT_data[10]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[11] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[11] ),
        .Q(o_TX_ALT_data[11]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[12] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[12] ),
        .Q(o_TX_ALT_data[12]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[13] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[13] ),
        .Q(o_TX_ALT_data[13]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[14] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[14] ),
        .Q(o_TX_ALT_data[14]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[15] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[15] ),
        .Q(o_TX_ALT_data[15]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[16] ),
        .Q(o_TX_ALT_data[16]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[17] ),
        .Q(o_TX_ALT_data[17]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[18] ),
        .Q(o_TX_ALT_data[18]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[19] ),
        .Q(o_TX_ALT_data[19]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[1] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[1] ),
        .Q(o_TX_ALT_data[1]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[20] ),
        .Q(o_TX_ALT_data[20]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[21] ),
        .Q(o_TX_ALT_data[21]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[22] ),
        .Q(o_TX_ALT_data[22]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[23] ),
        .Q(o_TX_ALT_data[23]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[2] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[2] ),
        .Q(o_TX_ALT_data[2]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[3] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[3] ),
        .Q(o_TX_ALT_data[3]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[4] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[4] ),
        .Q(o_TX_ALT_data[4]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[5] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[5] ),
        .Q(o_TX_ALT_data[5]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[6] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[6] ),
        .Q(o_TX_ALT_data[6]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[7] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[7] ),
        .Q(o_TX_ALT_data[7]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[8] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[8] ),
        .Q(o_TX_ALT_data[8]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  FDRE \o_TX_ALT_data_reg[9] 
       (.C(clk),
        .CE(\o_TX_ALT_data[23]_i_1_n_0 ),
        .D(\alt_data_reg_n_0_[9] ),
        .Q(o_TX_ALT_data[9]),
        .R(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080808FF08080800)) 
    o_TX_DV_BF_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(o_TX_DV_HK_i_2_n_0),
        .I4(o_TX_DV_BF_i_2_n_0),
        .I5(o_TX_DV_BF),
        .O(o_TX_DV_BF_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000020002020202)) 
    o_TX_DV_BF_i_2
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(\who_requested_reg_n_0_[0] ),
        .I4(\who_requested_reg_n_0_[1] ),
        .I5(state[1]),
        .O(o_TX_DV_BF_i_2_n_0));
  FDRE o_TX_DV_BF_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_BF_i_1_n_0),
        .Q(o_TX_DV_BF),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h080808FF08080800)) 
    o_TX_DV_HK_i_1
       (.I0(state[0]),
        .I1(\o_i2c_address[6]_i_2_n_0 ),
        .I2(\o_i2c_address[6]_i_6_n_0 ),
        .I3(o_TX_DV_HK_i_2_n_0),
        .I4(o_TX_DV_HK_i_3_n_0),
        .I5(o_TX_DV_HK),
        .O(o_TX_DV_HK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h02000202)) 
    o_TX_DV_HK_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\o_i2c_address[6]_i_9_n_0 ),
        .O(o_TX_DV_HK_i_2_n_0));
  LUT6 #(
    .INIT(64'h00010000F01F0000)) 
    o_TX_DV_HK_i_3
       (.I0(\who_requested_reg_n_0_[0] ),
        .I1(\who_requested_reg_n_0_[1] ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[3]),
        .O(o_TX_DV_HK_i_3_n_0));
  FDRE o_TX_DV_HK_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HK_i_1_n_0),
        .Q(o_TX_DV_HK),
        .R(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    o_TX_DV_HTR_i_1
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(o_TX_DV_HTR_i_2_n_0),
        .I4(o_TX_DV_HTR),
        .O(o_TX_DV_HTR_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000008FF000)) 
    o_TX_DV_HTR_i_2
       (.I0(\who_requested_reg_n_0_[1] ),
        .I1(\who_requested_reg_n_0_[0] ),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(state[2]),
        .O(o_TX_DV_HTR_i_2_n_0));
  FDRE o_TX_DV_HTR_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HTR_i_1_n_0),
        .Q(o_TX_DV_HTR),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h080808FF08080800)) 
    o_TX_DV_RAD_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(o_TX_DV_HK_i_2_n_0),
        .I4(o_TX_DV_RAD_i_2_n_0),
        .I5(o_TX_DV_RAD),
        .O(o_TX_DV_RAD_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000020002020202)) 
    o_TX_DV_RAD_i_2
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(\who_requested_reg_n_0_[1] ),
        .I4(\who_requested_reg_n_0_[0] ),
        .I5(state[1]),
        .O(o_TX_DV_RAD_i_2_n_0));
  FDRE o_TX_DV_RAD_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_RAD_i_1_n_0),
        .Q(o_TX_DV_RAD),
        .R(o_i2c_ena_i_1_n_0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \o_TX_RTC_data[23]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(rst),
        .O(\o_TX_RTC_data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000800)) 
    \o_TX_RTC_data[23]_i_2 
       (.I0(rst),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
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
  LUT5 #(
    .INIT(32'h00080000)) 
    \o_TX_TEMP_data[31]_i_1 
       (.I0(state[3]),
        .I1(rst),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\o_TX_TEMP_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00600000)) 
    \o_TX_TEMP_data[31]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rst),
        .I3(state[2]),
        .I4(state[3]),
        .O(\o_TX_TEMP_data[31]_i_2_n_0 ));
  FDRE \o_TX_TEMP_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[0] ),
        .Q(o_TX_TEMP_data[0]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[1] ),
        .Q(o_TX_TEMP_data[1]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[2] ),
        .Q(o_TX_TEMP_data[2]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[3] ),
        .Q(o_TX_TEMP_data[3]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[4] ),
        .Q(o_TX_TEMP_data[4]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[5] ),
        .Q(o_TX_TEMP_data[5]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[6] ),
        .Q(o_TX_TEMP_data[6]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[7] ),
        .Q(o_TX_TEMP_data[7]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[24] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[8] ),
        .Q(o_TX_TEMP_data[8]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[25] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[9] ),
        .Q(o_TX_TEMP_data[9]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[26] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[10] ),
        .Q(o_TX_TEMP_data[10]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[27] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[11] ),
        .Q(o_TX_TEMP_data[11]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[28] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[12] ),
        .Q(o_TX_TEMP_data[12]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[29] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[13] ),
        .Q(o_TX_TEMP_data[13]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[30] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[14] ),
        .Q(o_TX_TEMP_data[14]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[31] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[15] ),
        .Q(o_TX_TEMP_data[15]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_i2c_address[3]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .O(\o_i2c_address[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[4]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\o_i2c_address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_i2c_address[5]_i_1 
       (.I0(state[3]),
        .O(\o_i2c_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAAAAAAAAA)) 
    \o_i2c_address[6]_i_1 
       (.I0(\o_i2c_address[6]_i_3_n_0 ),
        .I1(\o_i2c_address[6]_i_4_n_0 ),
        .I2(\o_i2c_address[6]_i_5_n_0 ),
        .I3(\o_i2c_address[6]_i_6_n_0 ),
        .I4(\o_i2c_address[6]_i_7_n_0 ),
        .I5(\o_i2c_address[6]_i_8_n_0 ),
        .O(\o_i2c_address[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \o_i2c_address[6]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .O(\o_i2c_address[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007000)) 
    \o_i2c_address[6]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(rst),
        .I3(state[2]),
        .I4(state[3]),
        .I5(\o_i2c_address[6]_i_9_n_0 ),
        .O(\o_i2c_address[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABFFFFFFFFF)) 
    \o_i2c_address[6]_i_4 
       (.I0(o_i2c_ena_i_11_n_0),
        .I1(o_i2c_ena_i_10_n_0),
        .I2(start_cnt_reg[17]),
        .I3(start_cnt_reg[18]),
        .I4(start_cnt_reg[19]),
        .I5(start_cnt_reg[20]),
        .O(\o_i2c_address[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \o_i2c_address[6]_i_5 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .O(\o_i2c_address[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_i2c_address[6]_i_6 
       (.I0(state[3]),
        .I1(state[1]),
        .O(\o_i2c_address[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \o_i2c_address[6]_i_7 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\o_i2c_address[6]_i_9_n_0 ),
        .O(\o_i2c_address[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \o_i2c_address[6]_i_8 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(rst),
        .O(\o_i2c_address[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF7FFEFEE)) 
    \o_i2c_address[6]_i_9 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .O(\o_i2c_address[6]_i_9_n_0 ));
  FDRE \o_i2c_address_reg[3] 
       (.C(clk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[3]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \o_i2c_data_wr[3]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\o_i2c_data_wr[7]_i_2_n_0 ),
        .I4(o_i2c_data_wr[0]),
        .O(\o_i2c_data_wr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0006FFFF00060000)) 
    \o_i2c_data_wr[6]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\o_i2c_data_wr[7]_i_2_n_0 ),
        .I5(o_i2c_data_wr[1]),
        .O(\o_i2c_data_wr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \o_i2c_data_wr[7]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(\o_i2c_data_wr[7]_i_2_n_0 ),
        .I4(o_i2c_data_wr[2]),
        .O(\o_i2c_data_wr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000022A2AAAAAAAA)) 
    \o_i2c_data_wr[7]_i_2 
       (.I0(rst),
        .I1(\o_i2c_address[6]_i_6_n_0 ),
        .I2(start_cnt_reg[20]),
        .I3(\o_i2c_data_wr[7]_i_3_n_0 ),
        .I4(\o_i2c_data_wr[7]_i_4_n_0 ),
        .I5(\o_i2c_data_wr[7]_i_5_n_0 ),
        .O(\o_i2c_data_wr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000001055FFFF)) 
    \o_i2c_data_wr[7]_i_3 
       (.I0(\o_i2c_data_wr[7]_i_6_n_0 ),
        .I1(\o_i2c_data_wr[7]_i_7_n_0 ),
        .I2(o_i2c_ena_i_15_n_0),
        .I3(start_cnt_reg[14]),
        .I4(start_cnt_reg[17]),
        .I5(o_i2c_ena_i_9_n_0),
        .O(\o_i2c_data_wr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFFFFEEEFEFEFE)) 
    \o_i2c_data_wr[7]_i_4 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\o_i2c_address[6]_i_5_n_0 ),
        .I3(state[1]),
        .I4(state[3]),
        .I5(o_i2c_ena_i_11_n_0),
        .O(\o_i2c_data_wr[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \o_i2c_data_wr[7]_i_5 
       (.I0(\conv_cnt[16]_i_4_n_0 ),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\conv_cnt[16]_i_3_n_0 ),
        .O(\o_i2c_data_wr[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_i2c_data_wr[7]_i_6 
       (.I0(start_cnt_reg[16]),
        .I1(start_cnt_reg[15]),
        .O(\o_i2c_data_wr[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \o_i2c_data_wr[7]_i_7 
       (.I0(start_cnt_reg[13]),
        .I1(start_cnt_reg[12]),
        .O(\o_i2c_data_wr[7]_i_7_n_0 ));
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
  FDRE \o_i2c_data_wr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[7]_i_1_n_0 ),
        .Q(o_i2c_data_wr[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    o_i2c_ena_i_1
       (.I0(rst),
        .O(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFEEEEEEEE)) 
    o_i2c_ena_i_10
       (.I0(start_cnt_reg[15]),
        .I1(start_cnt_reg[16]),
        .I2(start_cnt_reg[12]),
        .I3(start_cnt_reg[13]),
        .I4(o_i2c_ena_i_15_n_0),
        .I5(start_cnt_reg[14]),
        .O(o_i2c_ena_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF7AE)) 
    o_i2c_ena_i_11
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(o_i2c_ena_i_11_n_0));
  LUT6 #(
    .INIT(64'h00005504FFFFFFFF)) 
    o_i2c_ena_i_12
       (.I0(i_busy),
        .I1(\conv_cnt_reg_n_0_[12] ),
        .I2(\conv_cnt[16]_i_6_n_0 ),
        .I3(\conv_cnt_reg_n_0_[13] ),
        .I4(o_i2c_ena_i_16_n_0),
        .I5(\conv_cnt[16]_i_4_n_0 ),
        .O(o_i2c_ena_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    o_i2c_ena_i_13
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(o_i2c_ena_i_17_n_0),
        .O(o_i2c_ena_i_13_n_0));
  LUT6 #(
    .INIT(64'hA6AA000033000000)) 
    o_i2c_ena_i_14
       (.I0(\busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(state[2]),
        .I5(state[1]),
        .O(o_i2c_ena_i_14_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    o_i2c_ena_i_15
       (.I0(start_cnt_reg[7]),
        .I1(start_cnt_reg[10]),
        .I2(start_cnt_reg[11]),
        .I3(start_cnt_reg[9]),
        .I4(start_cnt_reg[8]),
        .O(o_i2c_ena_i_15_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    o_i2c_ena_i_16
       (.I0(\conv_cnt_reg_n_0_[16] ),
        .I1(\conv_cnt_reg_n_0_[14] ),
        .I2(\conv_cnt_reg_n_0_[15] ),
        .O(o_i2c_ena_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB6BBEFEE)) 
    o_i2c_ena_i_17
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_ena_i_17_n_0));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAA200)) 
    o_i2c_ena_i_2
       (.I0(o_i2c_ena_i_3_n_0),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(o_i2c_ena_i_5_n_0),
        .I3(o_i2c_ena_i_6_n_0),
        .I4(o_i2c_ena_i_7_n_0),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    o_i2c_ena_i_3
       (.I0(\busy_cnt[1]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(o_i2c_ena_i_8_n_0),
        .O(o_i2c_ena_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFF5777FFFFFFFF)) 
    o_i2c_ena_i_4
       (.I0(start_cnt_reg[20]),
        .I1(o_i2c_ena_i_9_n_0),
        .I2(start_cnt_reg[17]),
        .I3(o_i2c_ena_i_10_n_0),
        .I4(o_i2c_ena_i_11_n_0),
        .I5(\o_i2c_address[6]_i_6_n_0 ),
        .O(o_i2c_ena_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF034100)) 
    o_i2c_ena_i_5
       (.I0(\o_i2c_address[6]_i_5_n_0 ),
        .I1(\conv_cnt[16]_i_4_n_0 ),
        .I2(\busy_cnt[1]_i_3_n_0 ),
        .I3(state[3]),
        .I4(state[1]),
        .O(o_i2c_ena_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    o_i2c_ena_i_6
       (.I0(state[2]),
        .I1(state[0]),
        .O(o_i2c_ena_i_6_n_0));
  LUT6 #(
    .INIT(64'hFECCCCCCCCCCCCCC)) 
    o_i2c_ena_i_7
       (.I0(o_i2c_ena_i_12_n_0),
        .I1(o_i2c_ena_i_13_n_0),
        .I2(state[0]),
        .I3(\o_i2c_address[6]_i_6_n_0 ),
        .I4(state[2]),
        .I5(\conv_cnt[16]_i_3_n_0 ),
        .O(o_i2c_ena_i_7_n_0));
  LUT6 #(
    .INIT(64'h0311030003110311)) 
    o_i2c_ena_i_8
       (.I0(o_i2c_ena_i_14_n_0),
        .I1(state[3]),
        .I2(\conv_cnt[16]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\o_i2c_address[6]_i_5_n_0 ),
        .O(o_i2c_ena_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_i2c_ena_i_9
       (.I0(start_cnt_reg[19]),
        .I1(start_cnt_reg[18]),
        .O(o_i2c_ena_i_9_n_0));
  FDRE o_i2c_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_ena_i_2_n_0),
        .Q(o_i2c_ena),
        .R(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    o_i2c_rw_i_1
       (.I0(o_i2c_rw_i_2_n_0),
        .I1(\o_i2c_address[6]_i_3_n_0 ),
        .I2(o_i2c_rw_i_3_n_0),
        .I3(o_i2c_rw_i_4_n_0),
        .I4(\o_i2c_address[6]_i_8_n_0 ),
        .I5(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000009AFF9A0000)) 
    o_i2c_rw_i_2
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[3]),
        .O(o_i2c_rw_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBFBFBF)) 
    o_i2c_rw_i_3
       (.I0(o_i2c_rw_i_5_n_0),
        .I1(start_cnt_reg[20]),
        .I2(o_i2c_ena_i_9_n_0),
        .I3(start_cnt_reg[17]),
        .I4(o_i2c_ena_i_10_n_0),
        .I5(o_i2c_ena_i_11_n_0),
        .O(o_i2c_rw_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    o_i2c_rw_i_4
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\conv_cnt[16]_i_3_n_0 ),
        .O(o_i2c_rw_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    o_i2c_rw_i_5
       (.I0(\o_i2c_address[6]_i_5_n_0 ),
        .I1(state[1]),
        .I2(state[3]),
        .O(o_i2c_rw_i_5_n_0));
  FDRE o_i2c_rw_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02020200)) 
    \rtc_data[15]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\rtc_data[15]_i_2_n_0 ),
        .I4(state[3]),
        .O(\rtc_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \rtc_data[15]_i_2 
       (.I0(i_busy),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(\busy_cnt_reg_n_0_[2] ),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .O(\rtc_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[16]_i_1 
       (.I0(i_data_read[0]),
        .I1(state[3]),
        .O(rtc_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[17]_i_1 
       (.I0(i_data_read[1]),
        .I1(state[3]),
        .O(rtc_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[18]_i_1 
       (.I0(i_data_read[2]),
        .I1(state[3]),
        .O(rtc_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[19]_i_1 
       (.I0(i_data_read[3]),
        .I1(state[3]),
        .O(rtc_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[20]_i_1 
       (.I0(i_data_read[4]),
        .I1(state[3]),
        .O(rtc_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[21]_i_1 
       (.I0(i_data_read[5]),
        .I1(state[3]),
        .O(rtc_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[22]_i_1 
       (.I0(i_data_read[6]),
        .I1(state[3]),
        .O(rtc_data[22]));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000020)) 
    \rtc_data[23]_i_1 
       (.I0(\rtc_data[23]_i_3_n_0 ),
        .I1(\o_i2c_address[6]_i_5_n_0 ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .I5(state[3]),
        .O(\rtc_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[23]_i_2 
       (.I0(i_data_read[7]),
        .I1(state[3]),
        .O(rtc_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \rtc_data[23]_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\rtc_data[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \rtc_data[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[3]_i_5_n_0 ),
        .I4(state[3]),
        .O(\rtc_data[7]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \start_cnt[0]_i_1 
       (.I0(rst),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\start_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \start_cnt[0]_i_3 
       (.I0(\start_cnt_reg_n_0_[0] ),
        .O(\start_cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[0] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[0]_i_2_n_7 ),
        .Q(\start_cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \start_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\start_cnt_reg[0]_i_2_n_0 ,\start_cnt_reg[0]_i_2_n_1 ,\start_cnt_reg[0]_i_2_n_2 ,\start_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\start_cnt_reg[0]_i_2_n_4 ,\start_cnt_reg[0]_i_2_n_5 ,\start_cnt_reg[0]_i_2_n_6 ,\start_cnt_reg[0]_i_2_n_7 }),
        .S({\start_cnt_reg_n_0_[3] ,\start_cnt_reg_n_0_[2] ,\start_cnt_reg_n_0_[1] ,\start_cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[10] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[8]_i_1_n_5 ),
        .Q(start_cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[11] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[8]_i_1_n_4 ),
        .Q(start_cnt_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[12] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[12]_i_1_n_7 ),
        .Q(start_cnt_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \start_cnt_reg[12]_i_1 
       (.CI(\start_cnt_reg[8]_i_1_n_0 ),
        .CO({\start_cnt_reg[12]_i_1_n_0 ,\start_cnt_reg[12]_i_1_n_1 ,\start_cnt_reg[12]_i_1_n_2 ,\start_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\start_cnt_reg[12]_i_1_n_4 ,\start_cnt_reg[12]_i_1_n_5 ,\start_cnt_reg[12]_i_1_n_6 ,\start_cnt_reg[12]_i_1_n_7 }),
        .S(start_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[13] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[12]_i_1_n_6 ),
        .Q(start_cnt_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[14] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[12]_i_1_n_5 ),
        .Q(start_cnt_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[15] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[12]_i_1_n_4 ),
        .Q(start_cnt_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[16] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[16]_i_1_n_7 ),
        .Q(start_cnt_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \start_cnt_reg[16]_i_1 
       (.CI(\start_cnt_reg[12]_i_1_n_0 ),
        .CO({\start_cnt_reg[16]_i_1_n_0 ,\start_cnt_reg[16]_i_1_n_1 ,\start_cnt_reg[16]_i_1_n_2 ,\start_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\start_cnt_reg[16]_i_1_n_4 ,\start_cnt_reg[16]_i_1_n_5 ,\start_cnt_reg[16]_i_1_n_6 ,\start_cnt_reg[16]_i_1_n_7 }),
        .S(start_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[17] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[16]_i_1_n_6 ),
        .Q(start_cnt_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[18] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[16]_i_1_n_5 ),
        .Q(start_cnt_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[19] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[16]_i_1_n_4 ),
        .Q(start_cnt_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[1] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[0]_i_2_n_6 ),
        .Q(\start_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[20] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[20]_i_1_n_7 ),
        .Q(start_cnt_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \start_cnt_reg[20]_i_1 
       (.CI(\start_cnt_reg[16]_i_1_n_0 ),
        .CO(\NLW_start_cnt_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_start_cnt_reg[20]_i_1_O_UNCONNECTED [3:1],\start_cnt_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,start_cnt_reg[20]}));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[2] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[0]_i_2_n_5 ),
        .Q(\start_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[3] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[0]_i_2_n_4 ),
        .Q(\start_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[4] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[4]_i_1_n_7 ),
        .Q(\start_cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \start_cnt_reg[4]_i_1 
       (.CI(\start_cnt_reg[0]_i_2_n_0 ),
        .CO({\start_cnt_reg[4]_i_1_n_0 ,\start_cnt_reg[4]_i_1_n_1 ,\start_cnt_reg[4]_i_1_n_2 ,\start_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\start_cnt_reg[4]_i_1_n_4 ,\start_cnt_reg[4]_i_1_n_5 ,\start_cnt_reg[4]_i_1_n_6 ,\start_cnt_reg[4]_i_1_n_7 }),
        .S({start_cnt_reg[7],\start_cnt_reg_n_0_[6] ,\start_cnt_reg_n_0_[5] ,\start_cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[5] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[4]_i_1_n_6 ),
        .Q(\start_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[6] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[4]_i_1_n_5 ),
        .Q(\start_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[7] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[4]_i_1_n_4 ),
        .Q(start_cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[8] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[8]_i_1_n_7 ),
        .Q(start_cnt_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \start_cnt_reg[8]_i_1 
       (.CI(\start_cnt_reg[4]_i_1_n_0 ),
        .CO({\start_cnt_reg[8]_i_1_n_0 ,\start_cnt_reg[8]_i_1_n_1 ,\start_cnt_reg[8]_i_1_n_2 ,\start_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\start_cnt_reg[8]_i_1_n_4 ,\start_cnt_reg[8]_i_1_n_5 ,\start_cnt_reg[8]_i_1_n_6 ,\start_cnt_reg[8]_i_1_n_7 }),
        .S(start_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \start_cnt_reg[9] 
       (.C(clk),
        .CE(\start_cnt[0]_i_1_n_0 ),
        .D(\start_cnt_reg[8]_i_1_n_6 ),
        .Q(start_cnt_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[10]_i_1 
       (.I0(i_data_read[2]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[11]_i_1 
       (.I0(i_data_read[3]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[12]_i_1 
       (.I0(i_data_read[4]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[13]_i_1 
       (.I0(i_data_read[5]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[14]_i_1 
       (.I0(i_data_read[6]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[14]));
  LUT5 #(
    .INIT(32'h04040400)) 
    \temp_data[15]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(\temp_data[15]_i_3_n_0 ),
        .I4(state[1]),
        .O(\temp_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[15]_i_2 
       (.I0(i_data_read[7]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \temp_data[15]_i_3 
       (.I0(\busy_cnt_reg_n_0_[2] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .O(\temp_data[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04040400)) 
    \temp_data[7]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(\rtc_data[15]_i_2_n_0 ),
        .I4(state[1]),
        .O(\temp_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[8]_i_1 
       (.I0(i_data_read[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(temp_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[9]_i_1 
       (.I0(i_data_read[1]),
        .I1(state[2]),
        .I2(state[1]),
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
    .INIT(64'h0E00000000000000)) 
    \who_requested[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\who_requested[1]_i_3_n_0 ),
        .I2(state[1]),
        .I3(\o_i2c_address[3]_i_1_n_0 ),
        .I4(rst),
        .I5(state[0]),
        .O(\who_requested[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \who_requested[1]_i_3 
       (.I0(i_HK_ALT_request),
        .I1(i_HK_TEMP_request),
        .I2(i_HTR_TEMP_request),
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

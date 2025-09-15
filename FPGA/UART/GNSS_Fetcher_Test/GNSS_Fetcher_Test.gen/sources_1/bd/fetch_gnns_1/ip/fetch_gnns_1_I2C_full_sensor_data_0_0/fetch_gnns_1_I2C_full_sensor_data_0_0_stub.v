// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 15 15:25:16 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/UART/GNSS_Fetcher_Test/GNSS_Fetcher_Test.gen/sources_1/bd/fetch_gnns_1/ip/fetch_gnns_1_I2C_full_sensor_data_0_0/fetch_gnns_1_I2C_full_sensor_data_0_0_stub.v
// Design      : fetch_gnns_1_I2C_full_sensor_data_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "fetch_gnns_1_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{}" *) (* core_generation_info = "fetch_gnns_1_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2C_full_sensor_data_fetcher,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "I2C_full_sensor_data_fetcher,Vivado 2024.2" *) 
module fetch_gnns_1_I2C_full_sensor_data_0_0(clk, rst, i_busy, i_data_read, i_TX_done_HK, 
  i_TX_done_BF, i_TX_done_RAD, i_TX_done_HTR, i_HK_RTC_request, i_BF_RTC_request, 
  i_RAD_RTC_request, i_HK_ALT_request, i_HK_TEMP_request, i_HTR_TEMP_request, o_i2c_ena, 
  o_i2c_address, o_i2c_rw, o_i2c_data_wr, o_TX_DV_HK, o_TX_DV_BF, o_TX_DV_RAD, o_TX_DV_HTR, 
  o_TX_RTC_data, o_TX_ALT_data, o_TX_TEMP_data, led2)
/* synthesis syn_black_box black_box_pad_pin="rst,i_busy,i_data_read[7:0],i_TX_done_HK,i_TX_done_BF,i_TX_done_RAD,i_TX_done_HTR,i_HK_RTC_request,i_BF_RTC_request,i_RAD_RTC_request,i_HK_ALT_request,i_HK_TEMP_request,i_HTR_TEMP_request,o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],o_TX_DV_HK,o_TX_DV_BF,o_TX_DV_RAD,o_TX_DV_HTR,o_TX_RTC_data[23:0],o_TX_ALT_data[23:0],o_TX_TEMP_data[31:0],led2" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
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
endmodule

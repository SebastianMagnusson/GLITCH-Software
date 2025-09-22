// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Sep 21 13:41:56 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_HK_formatter_0_0/PCB_Test1_HK_formatter_0_0_stub.v
// Design      : PCB_Test1_HK_formatter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_Test1_HK_formatter_0_0,HK_formatter,{}" *) (* core_generation_info = "PCB_Test1_HK_formatter_0_0,HK_formatter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HK_formatter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000,Baud_Rate=400000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "HK_formatter,Vivado 2024.2" *) 
module PCB_Test1_HK_formatter_0_0(clk, rst, HK_packet_got, GNSS_data_DV, GNSS_data, 
  RTC_data_DV, RTC_data, RTC_request, ALT_data_DV, ALT_data, ALT_request, TEMP_data_DV, 
  TEMP_data, TEMP_request, I2C_read_done, HK_packet_DV, HK_packet, led1)
/* synthesis syn_black_box black_box_pad_pin="rst,HK_packet_got,GNSS_data_DV,GNSS_data[383:0],RTC_data_DV,RTC_data[23:0],RTC_request,ALT_data_DV,ALT_data[23:0],ALT_request,TEMP_data_DV,TEMP_data[31:0],TEMP_request,I2C_read_done,HK_packet_DV,HK_packet[471:0],led1" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input HK_packet_got;
  input GNSS_data_DV;
  input [383:0]GNSS_data;
  input RTC_data_DV;
  input [23:0]RTC_data;
  output RTC_request;
  input ALT_data_DV;
  input [23:0]ALT_data;
  output ALT_request;
  input TEMP_data_DV;
  input [31:0]TEMP_data;
  output TEMP_request;
  output I2C_read_done;
  output HK_packet_DV;
  output [471:0]HK_packet;
  output led1;
endmodule

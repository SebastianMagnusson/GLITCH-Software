// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Sep 26 15:07:15 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_RAD_formatter_0_0/testwith1speed_RAD_formatter_0_0_stub.v
// Design      : testwith1speed_RAD_formatter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "testwith1speed_RAD_formatter_0_0,RAD_formatter,{}" *) (* core_generation_info = "testwith1speed_RAD_formatter_0_0,RAD_formatter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RAD_formatter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "RAD_formatter,Vivado 2024.2" *) 
module testwith1speed_RAD_formatter_0_0(clk, rst, RAD_packet_got, RAD_data_DV, RAD_data, 
  RTC_data_DV, RTC_data, RTC_request, I2C_read_done, RAD_packet_DV, RAD_packet, led0, led1, led2)
/* synthesis syn_black_box black_box_pad_pin="rst,RAD_packet_got,RAD_data_DV,RAD_data[7:0],RTC_data_DV,RTC_data[23:0],RTC_request,I2C_read_done,RAD_packet_DV,RAD_packet[5015:0],led0,led1,led2" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input RAD_packet_got;
  input RAD_data_DV;
  input [7:0]RAD_data;
  input RTC_data_DV;
  input [23:0]RTC_data;
  output RTC_request;
  output I2C_read_done;
  output RAD_packet_DV;
  output [5015:0]RAD_packet;
  output led0;
  output led1;
  output led2;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 29 18:04:52 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_TM_packet_sender_0_0/PCB_All_SRAM_TM_packet_sender_0_0_stub.v
// Design      : PCB_All_SRAM_TM_packet_sender_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_TM_packet_sender_0_0,TM_packet_sender,{}" *) (* core_generation_info = "PCB_All_SRAM_TM_packet_sender_0_0,TM_packet_sender,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=TM_packet_sender,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000,Baud_Rate=400000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "TM_packet_sender,Vivado 2024.2" *) 
module PCB_All_SRAM_TM_packet_sender_0_0(clk, rst, i_HK_data, i_BF_data, i_RAD_data, 
  i_HK_DV, i_BF_DV, i_RAD_DV, i_HEY_DV, i_TX_done, i_TX_active, o_TX_DV, o_TX_byte, o_HK_got, 
  o_BF_got, o_RAD_got, o_HEY_got, led1, led2)
/* synthesis syn_black_box black_box_pad_pin="rst,i_HK_data[471:0],i_BF_data[223:0],i_RAD_data[5015:0],i_HK_DV,i_BF_DV,i_RAD_DV,i_HEY_DV,i_TX_done,i_TX_active,o_TX_DV,o_TX_byte[7:0],o_HK_got,o_BF_got,o_RAD_got,o_HEY_got,led1,led2" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [471:0]i_HK_data;
  input [223:0]i_BF_data;
  input [5015:0]i_RAD_data;
  input i_HK_DV;
  input i_BF_DV;
  input i_RAD_DV;
  input i_HEY_DV;
  input i_TX_done;
  input i_TX_active;
  output o_TX_DV;
  output [7:0]o_TX_byte;
  output o_HK_got;
  output o_BF_got;
  output o_RAD_got;
  output o_HEY_got;
  output led1;
  output led2;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 15 15:00:32 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/UART/GNSS_Fetcher_Test/GNSS_Fetcher_Test.gen/sources_1/bd/fetch_gnns_1/ip/fetch_gnns_1_Packet_chopper_0_0/fetch_gnns_1_Packet_chopper_0_0_stub.v
// Design      : fetch_gnns_1_Packet_chopper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "fetch_gnns_1_Packet_chopper_0_0,Packet_chopper,{}" *) (* core_generation_info = "fetch_gnns_1_Packet_chopper_0_0,Packet_chopper,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Packet_chopper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Packet_chopper,Vivado 2024.2" *) 
module fetch_gnns_1_Packet_chopper_0_0(clk, rst, i_data, i_DV, i_TX_done, o_TX_DV, 
  o_TX_byte, led2)
/* synthesis syn_black_box black_box_pad_pin="rst,i_data[383:0],i_DV,i_TX_done,o_TX_DV,o_TX_byte[7:0],led2" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [383:0]i_data;
  input i_DV;
  input i_TX_done;
  output o_TX_DV;
  output [7:0]o_TX_byte;
  output led2;
endmodule

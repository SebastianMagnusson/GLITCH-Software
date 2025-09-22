// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Sep 20 12:27:21 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_UART_TX_100MHZ_0_0/PCB_Test1_UART_TX_100MHZ_0_0_stub.v
// Design      : PCB_Test1_UART_TX_100MHZ_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_Test1_UART_TX_100MHZ_0_0,UART_TX_100MHZ,{}" *) (* core_generation_info = "PCB_Test1_UART_TX_100MHZ_0_0,UART_TX_100MHZ,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=UART_TX_100MHZ,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000,Baud_Rate=115200}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "UART_TX_100MHZ,Vivado 2024.2" *) 
module PCB_Test1_UART_TX_100MHZ_0_0(sysclk, i_TX_DV, i_TX_Byte, o_TX_Active, 
  o_TX_Serial, o_TX_Done)
/* synthesis syn_black_box black_box_pad_pin="i_TX_DV,i_TX_Byte[7:0],o_TX_Active,o_TX_Serial,o_TX_Done" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  input i_TX_DV;
  input [7:0]i_TX_Byte;
  output o_TX_Active;
  output o_TX_Serial;
  output o_TX_Done;
endmodule

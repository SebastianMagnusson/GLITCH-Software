// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep  8 13:16:28 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadboard_Test3/SRAM_Breadboard_Test3.gen/sources_1/bd/Error_Test/ip/Error_Test_Read_WithError_0_0/Error_Test_Read_WithError_0_0_stub.v}
// Design      : Error_Test_Read_WithError_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Error_Test_Read_WithError_0_0,Read_WithError,{}" *) (* core_generation_info = "Error_Test_Read_WithError_0_0,Read_WithError,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Read_WithError,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Read_WithError,Vivado 2024.2" *) 
module Error_Test_Read_WithError_0_0(sysclk, reset_n, read_complete, write_complete, 
  i_TX_done, o_TX_DV, o_TX_data, A, CE_n, WE_n, DQ_i, DQ_t)
/* synthesis syn_black_box black_box_pad_pin="read_complete,write_complete,i_TX_done,o_TX_DV,o_TX_data[7:0],A[21:0],CE_n,WE_n,DQ_i[15:0],DQ_t[15:0]" */
/* synthesis syn_force_seq_prim="sysclk" */
/* synthesis syn_force_seq_prim="reset_n" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n /* synthesis syn_isclock = 1 */;
  output read_complete;
  input write_complete;
  input i_TX_done;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output [21:0]A;
  output CE_n;
  output WE_n;
  input [15:0]DQ_i;
  output [15:0]DQ_t;
endmodule

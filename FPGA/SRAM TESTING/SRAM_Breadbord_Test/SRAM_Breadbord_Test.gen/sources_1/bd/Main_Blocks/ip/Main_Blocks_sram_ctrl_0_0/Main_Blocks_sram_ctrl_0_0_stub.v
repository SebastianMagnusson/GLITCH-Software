// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep  3 10:56:52 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/I2C/SRAM_Breadbord_Test/SRAM_Breadbord_Test.gen/sources_1/bd/Main_Blocks/ip/Main_Blocks_sram_ctrl_0_0/Main_Blocks_sram_ctrl_0_0_stub.v
// Design      : Main_Blocks_sram_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Main_Blocks_sram_ctrl_0_0,sram_ctrl,{}" *) (* core_generation_info = "Main_Blocks_sram_ctrl_0_0,sram_ctrl,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=sram_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "sram_ctrl,Vivado 2024.2" *) 
module Main_Blocks_sram_ctrl_0_0(sysclk, reset_n, done, i_TX_done, o_TX_DV, 
  o_TX_data, A, DQ_i, DQ_o, DQ_t, CE_n, OE_n, WE_n, CE2, LB_n, UB_n)
/* synthesis syn_black_box black_box_pad_pin="done,i_TX_done,o_TX_DV,o_TX_data[7:0],A[21:0],DQ_i[15:0],DQ_o[15:0],DQ_t[15:0],CE_n,OE_n,WE_n,CE2,LB_n,UB_n" */
/* synthesis syn_force_seq_prim="sysclk" */
/* synthesis syn_force_seq_prim="reset_n" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n /* synthesis syn_isclock = 1 */;
  output done;
  input i_TX_done;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output [21:0]A;
  input [15:0]DQ_i;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output CE_n;
  output OE_n;
  output WE_n;
  output CE2;
  output LB_n;
  output UB_n;
endmodule

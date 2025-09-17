// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 16 11:32:43 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/GitHub/GLITCH-Software/FPGA/BIG PICTURE
//               STUFF/BF_and_HK_Test1/BF_and_HK_Test1.gen/sources_1/bd/BK_HK_Combined_Test1/ip/BK_HK_Combined_Test1_Read6_0_0/BK_HK_Combined_Test1_Read6_0_0_stub.v}
// Design      : BK_HK_Combined_Test1_Read6_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "BK_HK_Combined_Test1_Read6_0_0,Read6,{}" *) (* core_generation_info = "BK_HK_Combined_Test1_Read6_0_0,Read6,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Read6,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Read6,Vivado 2024.2" *) 
module BK_HK_Combined_Test1_Read6_0_0(sysclk, reset_n, read_complete, write_complete, 
  A, CE_n, WE_n, DQ_i, DQ_t, DQ_o, o_BF_data, o_BF_drive, addresses_searched, led0, led1)
/* synthesis syn_black_box black_box_pad_pin="reset_n,read_complete,write_complete,A[21:0],CE_n,WE_n,DQ_i[15:0],DQ_t[15:0],DQ_o[15:0],o_BF_data[46:0],o_BF_drive,addresses_searched,led0,led1" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output read_complete;
  input write_complete;
  output [21:0]A;
  output CE_n;
  output WE_n;
  input [15:0]DQ_i;
  output [15:0]DQ_t;
  output [15:0]DQ_o;
  output [46:0]o_BF_data;
  output o_BF_drive;
  output addresses_searched;
  output led0;
  output led1;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 23 16:01:15 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_RW_ROUTER_100MHZ_0_0/testwith1speed_RW_ROUTER_100MHZ_0_0_stub.v
// Design      : testwith1speed_RW_ROUTER_100MHZ_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "testwith1speed_RW_ROUTER_100MHZ_0_0,RW_ROUTER_100MHZ,{}" *) (* core_generation_info = "testwith1speed_RW_ROUTER_100MHZ_0_0,RW_ROUTER_100MHZ,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=RW_ROUTER_100MHZ,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "RW_ROUTER_100MHZ,Vivado 2024.2" *) 
module testwith1speed_RW_ROUTER_100MHZ_0_0(sysclk, reset_n, led1, A, CE_n, WE_n, DQ_o, DQ_t, 
  decoder, Toggle, A_write, CE_n_write, WE_n_write, DQ_o_write, DQ_t_write, decoder_write, A_read, 
  CE_n_read, WE_n_read, DQ_t_read, DQ_o_read, decoder_read)
/* synthesis syn_black_box black_box_pad_pin="reset_n,led1,A[21:0],CE_n,WE_n,DQ_o[15:0],DQ_t[15:0],decoder[2:0],Toggle,A_write[21:0],CE_n_write,WE_n_write,DQ_o_write[15:0],DQ_t_write[15:0],decoder_write[2:0],A_read[21:0],CE_n_read,WE_n_read,DQ_t_read[15:0],DQ_o_read[15:0],decoder_read[2:0]" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output led1;
  output [21:0]A;
  output CE_n;
  output WE_n;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output [2:0]decoder;
  input Toggle;
  input [21:0]A_write;
  input CE_n_write;
  input WE_n_write;
  input [15:0]DQ_o_write;
  input [15:0]DQ_t_write;
  input [2:0]decoder_write;
  input [21:0]A_read;
  input CE_n_read;
  input WE_n_read;
  input [15:0]DQ_t_read;
  input [15:0]DQ_o_read;
  input [2:0]decoder_read;
endmodule

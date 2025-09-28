// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Sep 28 14:06:00 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_simple_SRAM_test/PCB_simple_SRAM_test.gen/sources_1/bd/simple_PCB_test/ip/simple_PCB_test_SRAM_controller_0_0/simple_PCB_test_SRAM_controller_0_0_stub.v
// Design      : simple_PCB_test_SRAM_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "simple_PCB_test_SRAM_controller_0_0,SRAM_controller,{}" *) (* core_generation_info = "simple_PCB_test_SRAM_controller_0_0,SRAM_controller,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SRAM_controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "SRAM_controller,Vivado 2024.2" *) 
module simple_PCB_test_SRAM_controller_0_0(sysclk, reset_n, o_BF_drive, A, DQ_i, DQ_o, DQ_t, dec, 
  CE_n, WE_n, BF_packet)
/* synthesis syn_black_box black_box_pad_pin="reset_n,o_BF_drive,A[21:0],DQ_i[15:0],DQ_o[15:0],DQ_t[15:0],dec[2:0],CE_n,WE_n,BF_packet[223:0]" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output o_BF_drive;
  output [21:0]A;
  input [15:0]DQ_i;
  output [15:0]DQ_o;
  output [15:0]DQ_t;
  output [2:0]dec;
  output CE_n;
  output WE_n;
  output [223:0]BF_packet;
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Sep 24 16:12:41 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_BF_Data_Collector_Dr_0_0/testwith1speed_BF_Data_Collector_Dr_0_0_stub.v
// Design      : testwith1speed_BF_Data_Collector_Dr_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "testwith1speed_BF_Data_Collector_Dr_0_0,BF_Data_Collector_Draft2,{}" *) (* core_generation_info = "testwith1speed_BF_Data_Collector_Dr_0_0,BF_Data_Collector_Draft2,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BF_Data_Collector_Draft2,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "BF_Data_Collector_Draft2,Vivado 2024.2" *) 
module testwith1speed_BF_Data_Collector_Dr_0_0(sysclk, reset_n, data_ready, i_dump, i_BF_data, 
  o_BF_data, o_BF_drive, led1)
/* synthesis syn_black_box black_box_pad_pin="reset_n,data_ready,i_dump,i_BF_data[46:0],o_BF_data[197:0],o_BF_drive,led1" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input data_ready;
  input i_dump;
  input [46:0]i_BF_data;
  output [197:0]o_BF_data;
  output o_BF_drive;
  output led1;
endmodule

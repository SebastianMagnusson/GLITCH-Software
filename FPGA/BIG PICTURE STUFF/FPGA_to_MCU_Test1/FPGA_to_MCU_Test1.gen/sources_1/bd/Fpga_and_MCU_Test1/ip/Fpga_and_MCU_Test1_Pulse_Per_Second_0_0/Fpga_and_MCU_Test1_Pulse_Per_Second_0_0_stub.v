// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep 18 13:14:49 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/GitHub/GLITCH-Software/FPGA/BIG PICTURE
//               STUFF/FPGA_to_MCU_Test1/FPGA_to_MCU_Test1.gen/sources_1/bd/Fpga_and_MCU_Test1/ip/Fpga_and_MCU_Test1_Pulse_Per_Second_0_0/Fpga_and_MCU_Test1_Pulse_Per_Second_0_0_stub.v}
// Design      : Fpga_and_MCU_Test1_Pulse_Per_Second_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Fpga_and_MCU_Test1_Pulse_Per_Second_0_0,Pulse_Per_Second,{}" *) (* core_generation_info = "Fpga_and_MCU_Test1_Pulse_Per_Second_0_0,Pulse_Per_Second,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Pulse_Per_Second,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,CLOCKFREQUENCY=12000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "Pulse_Per_Second,Vivado 2024.2" *) 
module Fpga_and_MCU_Test1_Pulse_Per_Second_0_0(sysclk, reset_n, o_pulse, led0)
/* synthesis syn_black_box black_box_pad_pin="reset_n,o_pulse,led0" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output o_pulse;
  output led0;
endmodule

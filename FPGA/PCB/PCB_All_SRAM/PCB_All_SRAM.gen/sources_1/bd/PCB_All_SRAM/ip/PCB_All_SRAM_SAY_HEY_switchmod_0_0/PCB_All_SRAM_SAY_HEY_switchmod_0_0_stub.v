// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 29 13:56:45 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_SAY_HEY_switchmod_0_0/PCB_All_SRAM_SAY_HEY_switchmod_0_0_stub.v
// Design      : PCB_All_SRAM_SAY_HEY_switchmod_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_SAY_HEY_switchmod_0_0,SAY_HEY_switchmod,{}" *) (* core_generation_info = "PCB_All_SRAM_SAY_HEY_switchmod_0_0,SAY_HEY_switchmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SAY_HEY_switchmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "SAY_HEY_switchmod,Vivado 2024.2" *) 
module PCB_All_SRAM_SAY_HEY_switchmod_0_0(sysclk, CMD6, SAY_HEY_done, SAY_HEY_request, 
  led0)
/* synthesis syn_black_box black_box_pad_pin="CMD6,SAY_HEY_done,SAY_HEY_request,led0" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  input CMD6;
  input SAY_HEY_done;
  output SAY_HEY_request;
  output led0;
endmodule

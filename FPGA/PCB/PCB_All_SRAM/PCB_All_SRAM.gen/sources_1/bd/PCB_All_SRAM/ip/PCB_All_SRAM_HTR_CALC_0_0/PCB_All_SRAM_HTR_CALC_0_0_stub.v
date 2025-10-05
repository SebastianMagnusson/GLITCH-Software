// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Oct  4 13:02:06 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_CALC_0_0/PCB_All_SRAM_HTR_CALC_0_0_stub.v
// Design      : PCB_All_SRAM_HTR_CALC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_HTR_CALC_0_0,HTR_CALC,{}" *) (* core_generation_info = "PCB_All_SRAM_HTR_CALC_0_0,HTR_CALC,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HTR_CALC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "HTR_CALC,Vivado 2024.2" *) 
module PCB_All_SRAM_HTR_CALC_0_0(clk, HTR_rst, temp_data, temp_DV, HTR_request, 
  I2C_read_done, command_htr1, command_htr2, led1)
/* synthesis syn_black_box black_box_pad_pin="HTR_rst,temp_data[31:0],temp_DV,HTR_request,I2C_read_done,command_htr1[31:0],command_htr2[31:0],led1" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  input [31:0]temp_data;
  input temp_DV;
  output HTR_request;
  output I2C_read_done;
  output [31:0]command_htr1;
  output [31:0]command_htr2;
  output led1;
endmodule

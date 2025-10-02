// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:45:25 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_ROUTER_0_0/PCB_All_SRAM_HTR_ROUTER_0_0_stub.v
// Design      : PCB_All_SRAM_HTR_ROUTER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{}" *) (* core_generation_info = "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HTR_ROUTER,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,CLK_FREQ=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "HTR_ROUTER,Vivado 2024.2" *) 
module PCB_All_SRAM_HTR_ROUTER_0_0(sysclk, reset_n, HTR_rst, led1, HTR_request, 
  I2C_read_done, HTR_request_normal, I2C_read_done_normal, temp_data_normal, 
  temp_DV_normal, HTR_request_heater, I2C_read_done_heater, temp_data_heater, 
  temp_DV_heater, temp_DV, temp_data)
/* synthesis syn_black_box black_box_pad_pin="reset_n,HTR_rst,led1,HTR_request,I2C_read_done,HTR_request_normal,I2C_read_done_normal,temp_data_normal[31:0],temp_DV_normal,HTR_request_heater,I2C_read_done_heater,temp_data_heater[31:0],temp_DV_heater,temp_DV,temp_data[31:0]" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  output led1;
  input HTR_request;
  input I2C_read_done;
  output HTR_request_normal;
  output I2C_read_done_normal;
  input [31:0]temp_data_normal;
  input temp_DV_normal;
  output HTR_request_heater;
  output I2C_read_done_heater;
  input [31:0]temp_data_heater;
  input temp_DV_heater;
  output temp_DV;
  output [31:0]temp_data;
endmodule

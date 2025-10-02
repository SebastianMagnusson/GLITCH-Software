// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:48:47 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_HTR_TEMP_0_0/PCB_All_SRAM_I2C_HTR_TEMP_0_0_stub.v
// Design      : PCB_All_SRAM_I2C_HTR_TEMP_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_I2C_HTR_TEMP_0_0,I2C_HTR_TEMP,{}" *) (* core_generation_info = "PCB_All_SRAM_I2C_HTR_TEMP_0_0,I2C_HTR_TEMP,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2C_HTR_TEMP,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "I2C_HTR_TEMP,Vivado 2024.2" *) 
module PCB_All_SRAM_I2C_HTR_TEMP_0_0(clk, HTR_rst, i_busy, i_data_read, i_TX_done_HTR, 
  i_HTR_TEMP_request, o_i2c_ena, o_i2c_address, o_i2c_rw, o_i2c_data_wr, o_TX_DV_HTR, 
  o_TX_TEMP_data, led1, led2, led3)
/* synthesis syn_black_box black_box_pad_pin="HTR_rst,i_busy,i_data_read[7:0],i_TX_done_HTR,i_HTR_TEMP_request,o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],o_TX_DV_HTR,o_TX_TEMP_data[31:0],led1,led2,led3" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  input i_busy;
  input [7:0]i_data_read;
  input i_TX_done_HTR;
  input i_HTR_TEMP_request;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV_HTR;
  output [31:0]o_TX_TEMP_data;
  output led1;
  output led2;
  output led3;
endmodule

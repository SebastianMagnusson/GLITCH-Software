// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:45:28 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_HTR_ROUTER_0_0/PCB_All_SRAM_I2C_HTR_ROUTER_0_0_stub.v
// Design      : PCB_All_SRAM_I2C_HTR_ROUTER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_I2C_HTR_ROUTER_0_0,I2C_HTR_ROUTER,{}" *) (* core_generation_info = "PCB_All_SRAM_I2C_HTR_ROUTER_0_0,I2C_HTR_ROUTER,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2C_HTR_ROUTER,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,CLK_FREQ=100000000}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "I2C_HTR_ROUTER,Vivado 2024.2" *) 
module PCB_All_SRAM_I2C_HTR_ROUTER_0_0(sysclk, reset_n, HTR_rst, led1, reset_i2c, i_busy, 
  i_data_read, o_i2c_ena, o_i2c_address, o_i2c_rw, o_i2c_data_wr, o_i2c_ena_heater, 
  o_i2c_address_heater, o_i2c_rw_heater, o_i2c_data_wr_heater, i_busy_heater, 
  i_data_read_heater, o_i2c_ena_normal, o_i2c_address_normal, o_i2c_rw_normal, 
  o_i2c_data_wr_normal, i_busy_normal, i_data_read_normal)
/* synthesis syn_black_box black_box_pad_pin="reset_n,HTR_rst,led1,reset_i2c,i_busy,i_data_read[7:0],o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],o_i2c_ena_heater,o_i2c_address_heater[6:0],o_i2c_rw_heater,o_i2c_data_wr_heater[7:0],i_busy_heater,i_data_read_heater[7:0],o_i2c_ena_normal,o_i2c_address_normal[6:0],o_i2c_rw_normal,o_i2c_data_wr_normal[7:0],i_busy_normal,i_data_read_normal[7:0]" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  output led1;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_i2c RST" *) (* x_interface_mode = "master reset_i2c" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_i2c, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_i2c;
  input i_busy;
  input [7:0]i_data_read;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  input o_i2c_ena_heater;
  input [6:0]o_i2c_address_heater;
  input o_i2c_rw_heater;
  input [7:0]o_i2c_data_wr_heater;
  output i_busy_heater;
  output [7:0]i_data_read_heater;
  input o_i2c_ena_normal;
  input [6:0]o_i2c_address_normal;
  input o_i2c_rw_normal;
  input [7:0]o_i2c_data_wr_normal;
  output i_busy_normal;
  output [7:0]i_data_read_normal;
endmodule

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:45:25 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_ROUTER_0_0/PCB_All_SRAM_HTR_ROUTER_0_0_stub.vhdl
-- Design      : PCB_All_SRAM_HTR_ROUTER_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PCB_All_SRAM_HTR_ROUTER_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    led1 : out STD_LOGIC;
    HTR_request : in STD_LOGIC;
    I2C_read_done : in STD_LOGIC;
    HTR_request_normal : out STD_LOGIC;
    I2C_read_done_normal : out STD_LOGIC;
    temp_data_normal : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV_normal : in STD_LOGIC;
    HTR_request_heater : out STD_LOGIC;
    I2C_read_done_heater : out STD_LOGIC;
    temp_data_heater : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV_heater : in STD_LOGIC;
    temp_DV : out STD_LOGIC;
    temp_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HTR_ROUTER,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,CLK_FREQ=100000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_HTR_ROUTER_0_0 : entity is "module_ref";
end PCB_All_SRAM_HTR_ROUTER_0_0;

architecture stub of PCB_All_SRAM_HTR_ROUTER_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,reset_n,HTR_rst,led1,HTR_request,I2C_read_done,HTR_request_normal,I2C_read_done_normal,temp_data_normal[31:0],temp_DV_normal,HTR_request_heater,I2C_read_done_heater,temp_data_heater[31:0],temp_DV_heater,temp_DV,temp_data[31:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of HTR_rst : signal is "xilinx.com:signal:reset:1.0 HTR_rst RST";
  attribute x_interface_mode of HTR_rst : signal is "slave HTR_rst";
  attribute x_interface_parameter of HTR_rst : signal is "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "HTR_ROUTER,Vivado 2024.2";
begin
end;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Sep 24 07:48:43 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_BF_formatter_0_0/testwith1speed_BF_formatter_0_0_stub.vhdl
-- Design      : testwith1speed_BF_formatter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testwith1speed_BF_formatter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    BF_packet_got : in STD_LOGIC;
    SRAM_data_DV : in STD_LOGIC;
    SRAM_data : in STD_LOGIC_VECTOR ( 197 downto 0 );
    RTC_data_DV : in STD_LOGIC;
    RTC_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RTC_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    BF_packet_DV : out STD_LOGIC;
    BF_packet : out STD_LOGIC_VECTOR ( 223 downto 0 );
    led1 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_BF_formatter_0_0 : entity is "testwith1speed_BF_formatter_0_0,BF_formatter,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of testwith1speed_BF_formatter_0_0 : entity is "testwith1speed_BF_formatter_0_0,BF_formatter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BF_formatter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000,Baud_Rate=400000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_BF_formatter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_BF_formatter_0_0 : entity is "module_ref";
end testwith1speed_BF_formatter_0_0;

architecture stub of testwith1speed_BF_formatter_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,BF_packet_got,SRAM_data_DV,SRAM_data[197:0],RTC_data_DV,RTC_data[23:0],RTC_request,I2C_read_done,BF_packet_DV,BF_packet[223:0],led1";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "BF_formatter,Vivado 2024.2";
begin
end;

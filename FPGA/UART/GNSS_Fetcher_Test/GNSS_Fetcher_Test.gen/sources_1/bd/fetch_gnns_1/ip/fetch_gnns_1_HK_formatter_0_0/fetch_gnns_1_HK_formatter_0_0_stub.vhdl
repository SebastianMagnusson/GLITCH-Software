-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 16 10:21:43 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/UART/GNSS_Fetcher_Test/GNSS_Fetcher_Test.gen/sources_1/bd/fetch_gnns_1/ip/fetch_gnns_1_HK_formatter_0_0/fetch_gnns_1_HK_formatter_0_0_stub.vhdl
-- Design      : fetch_gnns_1_HK_formatter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fetch_gnns_1_HK_formatter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    HK_packet_got : in STD_LOGIC;
    GNSS_data_DV : in STD_LOGIC;
    GNSS_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    RTC_data_DV : in STD_LOGIC;
    RTC_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RTC_request : out STD_LOGIC;
    ALT_data_DV : in STD_LOGIC;
    ALT_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ALT_request : out STD_LOGIC;
    TEMP_data_DV : in STD_LOGIC;
    TEMP_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TEMP_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    HK_packet_DV : out STD_LOGIC;
    HK_packet : out STD_LOGIC_VECTOR ( 471 downto 0 );
    led1 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fetch_gnns_1_HK_formatter_0_0 : entity is "fetch_gnns_1_HK_formatter_0_0,HK_formatter,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of fetch_gnns_1_HK_formatter_0_0 : entity is "fetch_gnns_1_HK_formatter_0_0,HK_formatter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HK_formatter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000,Baud_Rate=400000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fetch_gnns_1_HK_formatter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of fetch_gnns_1_HK_formatter_0_0 : entity is "module_ref";
end fetch_gnns_1_HK_formatter_0_0;

architecture stub of fetch_gnns_1_HK_formatter_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,HK_packet_got,GNSS_data_DV,GNSS_data[383:0],RTC_data_DV,RTC_data[23:0],RTC_request,ALT_data_DV,ALT_data[23:0],ALT_request,TEMP_data_DV,TEMP_data[31:0],TEMP_request,I2C_read_done,HK_packet_DV,HK_packet[471:0],led1";
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
  attribute x_core_info of stub : architecture is "HK_formatter,Vivado 2024.2";
begin
end;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Sep 25 12:36:04 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_I2C_full_sensor_data_0_0/testwith1speed_I2C_full_sensor_data_0_0_stub.vhdl
-- Design      : testwith1speed_I2C_full_sensor_data_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testwith1speed_I2C_full_sensor_data_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_done_HK : in STD_LOGIC;
    i_TX_done_BF : in STD_LOGIC;
    i_TX_done_RAD : in STD_LOGIC;
    i_TX_done_HTR : in STD_LOGIC;
    i_HK_RTC_request : in STD_LOGIC;
    i_BF_RTC_request : in STD_LOGIC;
    i_RAD_RTC_request : in STD_LOGIC;
    i_HK_ALT_request : in STD_LOGIC;
    i_HK_TEMP_request : in STD_LOGIC;
    i_HTR_TEMP_request : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV_HK : out STD_LOGIC;
    o_TX_DV_BF : out STD_LOGIC;
    o_TX_DV_RAD : out STD_LOGIC;
    o_TX_DV_HTR : out STD_LOGIC;
    o_TX_RTC_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_ALT_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led2 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_I2C_full_sensor_data_0_0 : entity is "testwith1speed_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of testwith1speed_I2C_full_sensor_data_0_0 : entity is "testwith1speed_I2C_full_sensor_data_0_0,I2C_full_sensor_data_fetcher,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=I2C_full_sensor_data_fetcher,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_I2C_full_sensor_data_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_I2C_full_sensor_data_0_0 : entity is "module_ref";
end testwith1speed_I2C_full_sensor_data_0_0;

architecture stub of testwith1speed_I2C_full_sensor_data_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,i_busy,i_data_read[7:0],i_TX_done_HK,i_TX_done_BF,i_TX_done_RAD,i_TX_done_HTR,i_HK_RTC_request,i_BF_RTC_request,i_RAD_RTC_request,i_HK_ALT_request,i_HK_TEMP_request,i_HTR_TEMP_request,o_i2c_ena,o_i2c_address[6:0],o_i2c_rw,o_i2c_data_wr[7:0],o_TX_DV_HK,o_TX_DV_BF,o_TX_DV_RAD,o_TX_DV_HTR,o_TX_RTC_data[23:0],o_TX_ALT_data[23:0],o_TX_TEMP_data[31:0],led2";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "I2C_full_sensor_data_fetcher,Vivado 2024.2";
begin
end;

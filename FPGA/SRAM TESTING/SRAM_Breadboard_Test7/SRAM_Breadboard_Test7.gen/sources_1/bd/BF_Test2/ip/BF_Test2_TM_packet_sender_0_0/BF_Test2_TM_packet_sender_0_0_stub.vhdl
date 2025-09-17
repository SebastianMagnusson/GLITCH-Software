-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Sep 17 11:20:51 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/GitHub/GLITCH-Software/FPGA/SRAM
--               TESTING/SRAM_Breadboard_Test7/SRAM_Breadboard_Test7.gen/sources_1/bd/BF_Test2/ip/BF_Test2_TM_packet_sender_0_0/BF_Test2_TM_packet_sender_0_0_stub.vhdl}
-- Design      : BF_Test2_TM_packet_sender_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BF_Test2_TM_packet_sender_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_HK_data : in STD_LOGIC_VECTOR ( 471 downto 0 );
    i_BF_data : in STD_LOGIC_VECTOR ( 223 downto 0 );
    i_RAD_data : in STD_LOGIC_VECTOR ( 10007 downto 0 );
    i_HK_DV : in STD_LOGIC;
    i_BF_DV : in STD_LOGIC;
    i_RAD_DV : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    i_TX_active : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_HK_got : out STD_LOGIC;
    o_BF_got : out STD_LOGIC;
    o_RAD_got : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BF_Test2_TM_packet_sender_0_0 : entity is "BF_Test2_TM_packet_sender_0_0,TM_packet_sender,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of BF_Test2_TM_packet_sender_0_0 : entity is "BF_Test2_TM_packet_sender_0_0,TM_packet_sender,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=TM_packet_sender,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=12000000,Baud_Rate=400000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BF_Test2_TM_packet_sender_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BF_Test2_TM_packet_sender_0_0 : entity is "module_ref";
end BF_Test2_TM_packet_sender_0_0;

architecture stub of BF_Test2_TM_packet_sender_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,i_HK_data[471:0],i_BF_data[223:0],i_RAD_data[10007:0],i_HK_DV,i_BF_DV,i_RAD_DV,i_TX_done,i_TX_active,o_TX_DV,o_TX_byte[7:0],o_HK_got,o_BF_got,o_RAD_got,led1,led2";
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
  attribute x_core_info of stub : architecture is "TM_packet_sender,Vivado 2024.2";
begin
end;

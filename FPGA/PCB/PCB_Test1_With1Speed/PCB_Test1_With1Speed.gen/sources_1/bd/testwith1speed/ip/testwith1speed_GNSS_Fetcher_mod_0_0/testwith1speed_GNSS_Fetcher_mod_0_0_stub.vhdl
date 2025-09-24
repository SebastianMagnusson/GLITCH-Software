-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 23 15:58:28 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_GNSS_Fetcher_mod_0_0/testwith1speed_GNSS_Fetcher_mod_0_0_stub.vhdl
-- Design      : testwith1speed_GNSS_Fetcher_mod_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testwith1speed_GNSS_Fetcher_mod_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_RX_drive : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_GNSS_Fetcher_mod_0_0 : entity is "testwith1speed_GNSS_Fetcher_mod_0_0,GNSS_Fetcher_mod,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of testwith1speed_GNSS_Fetcher_mod_0_0 : entity is "testwith1speed_GNSS_Fetcher_mod_0_0,GNSS_Fetcher_mod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=GNSS_Fetcher_mod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_GNSS_Fetcher_mod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_GNSS_Fetcher_mod_0_0 : entity is "module_ref";
end testwith1speed_GNSS_Fetcher_mod_0_0;

architecture stub of testwith1speed_GNSS_Fetcher_mod_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,reset_n,i_RX_drive,i_gnss_data[7:0],o_gnss_data[383:0],o_gnss_drive,led1";
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "GNSS_Fetcher_mod,Vivado 2024.2";
begin
end;

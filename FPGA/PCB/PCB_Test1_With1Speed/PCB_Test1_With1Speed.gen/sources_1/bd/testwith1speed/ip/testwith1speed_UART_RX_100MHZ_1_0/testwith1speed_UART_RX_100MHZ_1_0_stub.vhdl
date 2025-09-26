-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Sep 24 16:15:42 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_UART_RX_100MHZ_1_0/testwith1speed_UART_RX_100MHZ_1_0_stub.vhdl
-- Design      : testwith1speed_UART_RX_100MHZ_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testwith1speed_UART_RX_100MHZ_1_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led0 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of testwith1speed_UART_RX_100MHZ_1_0 : entity is "testwith1speed_UART_RX_100MHZ_1_0,UART_RX_100MHZ,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of testwith1speed_UART_RX_100MHZ_1_0 : entity is "testwith1speed_UART_RX_100MHZ_1_0,UART_RX_100MHZ,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=UART_RX_100MHZ,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000,Baud_Rate=9600}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of testwith1speed_UART_RX_100MHZ_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of testwith1speed_UART_RX_100MHZ_1_0 : entity is "module_ref";
end testwith1speed_UART_RX_100MHZ_1_0;

architecture stub of testwith1speed_UART_RX_100MHZ_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,i_RX_Serial,o_RX_DV,o_RX_byte[7:0],led0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "UART_RX_100MHZ,Vivado 2024.2";
begin
end;

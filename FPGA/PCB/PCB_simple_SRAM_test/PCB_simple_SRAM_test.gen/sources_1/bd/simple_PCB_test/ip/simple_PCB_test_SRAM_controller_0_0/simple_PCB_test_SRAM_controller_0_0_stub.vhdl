-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Sep 28 14:06:00 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_simple_SRAM_test/PCB_simple_SRAM_test.gen/sources_1/bd/simple_PCB_test/ip/simple_PCB_test_SRAM_controller_0_0/simple_PCB_test_SRAM_controller_0_0_stub.vhdl
-- Design      : simple_PCB_test_SRAM_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity simple_PCB_test_SRAM_controller_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_BF_drive : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dec : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    BF_packet : out STD_LOGIC_VECTOR ( 223 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of simple_PCB_test_SRAM_controller_0_0 : entity is "simple_PCB_test_SRAM_controller_0_0,SRAM_controller,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of simple_PCB_test_SRAM_controller_0_0 : entity is "simple_PCB_test_SRAM_controller_0_0,SRAM_controller,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SRAM_controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=100000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of simple_PCB_test_SRAM_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of simple_PCB_test_SRAM_controller_0_0 : entity is "module_ref";
end simple_PCB_test_SRAM_controller_0_0;

architecture stub of simple_PCB_test_SRAM_controller_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,reset_n,o_BF_drive,A[21:0],DQ_i[15:0],DQ_o[15:0],DQ_t[15:0],dec[2:0],CE_n,WE_n,BF_packet[223:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "SRAM_controller,Vivado 2024.2";
begin
end;

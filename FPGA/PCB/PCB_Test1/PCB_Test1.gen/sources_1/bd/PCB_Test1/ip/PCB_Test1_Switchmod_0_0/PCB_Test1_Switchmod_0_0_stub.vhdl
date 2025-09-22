-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Sep 20 12:22:44 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_Switchmod_0_0/PCB_Test1_Switchmod_0_0_stub.vhdl
-- Design      : PCB_Test1_Switchmod_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PCB_Test1_Switchmod_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_Test1_Switchmod_0_0 : entity is "PCB_Test1_Switchmod_0_0,Switchmod,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of PCB_Test1_Switchmod_0_0 : entity is "PCB_Test1_Switchmod_0_0,Switchmod,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Switchmod,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_Test1_Switchmod_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_Test1_Switchmod_0_0 : entity is "module_ref";
end PCB_Test1_Switchmod_0_0;

architecture stub of PCB_Test1_Switchmod_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,i_signal,o_signal,led0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "Switchmod,Vivado 2024.2";
begin
end;

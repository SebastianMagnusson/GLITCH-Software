-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 30 10:44:14 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Mode_control_0_0/PCB_All_SRAM_Mode_control_0_0_stub.vhdl
-- Design      : PCB_All_SRAM_Mode_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PCB_All_SRAM_Mode_control_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    Set_power_save : in STD_LOGIC;
    Set_power_on : in STD_LOGIC;
    Set_cutoff : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    o_htr : out STD_LOGIC;
    led0 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_Mode_control_0_0 : entity is "PCB_All_SRAM_Mode_control_0_0,Mode_control,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of PCB_All_SRAM_Mode_control_0_0 : entity is "PCB_All_SRAM_Mode_control_0_0,Mode_control,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Mode_control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_Mode_control_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_Mode_control_0_0 : entity is "module_ref";
end PCB_All_SRAM_Mode_control_0_0;

architecture stub of PCB_All_SRAM_Mode_control_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,Set_power_save,Set_power_on,Set_cutoff,o_signal,o_htr,led0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "Mode_control,Vivado 2024.2";
begin
end;

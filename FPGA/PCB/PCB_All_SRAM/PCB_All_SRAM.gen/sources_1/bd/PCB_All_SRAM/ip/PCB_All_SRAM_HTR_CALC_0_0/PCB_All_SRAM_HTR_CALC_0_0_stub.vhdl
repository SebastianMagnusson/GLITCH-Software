-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Oct  4 13:02:06 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_CALC_0_0/PCB_All_SRAM_HTR_CALC_0_0_stub.vhdl
-- Design      : PCB_All_SRAM_HTR_CALC_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PCB_All_SRAM_HTR_CALC_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    temp_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV : in STD_LOGIC;
    HTR_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    command_htr1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    command_htr2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led1 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PCB_All_SRAM_HTR_CALC_0_0 : entity is "PCB_All_SRAM_HTR_CALC_0_0,HTR_CALC,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of PCB_All_SRAM_HTR_CALC_0_0 : entity is "PCB_All_SRAM_HTR_CALC_0_0,HTR_CALC,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=HTR_CALC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Clockfrequency=100000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of PCB_All_SRAM_HTR_CALC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of PCB_All_SRAM_HTR_CALC_0_0 : entity is "module_ref";
end PCB_All_SRAM_HTR_CALC_0_0;

architecture stub of PCB_All_SRAM_HTR_CALC_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,HTR_rst,temp_data[31:0],temp_DV,HTR_request,I2C_read_done,command_htr1[31:0],command_htr2[31:0],led1";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of HTR_rst : signal is "xilinx.com:signal:reset:1.0 HTR_rst RST";
  attribute x_interface_mode of HTR_rst : signal is "slave HTR_rst";
  attribute x_interface_parameter of HTR_rst : signal is "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "HTR_CALC,Vivado 2024.2";
begin
end;

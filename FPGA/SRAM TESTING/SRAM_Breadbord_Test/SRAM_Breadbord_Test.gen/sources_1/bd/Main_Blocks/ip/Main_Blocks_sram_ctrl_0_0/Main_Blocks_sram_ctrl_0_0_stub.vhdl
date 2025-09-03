-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Sep  3 10:56:52 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/GitHub/GLITCH-Software/FPGA/I2C/SRAM_Breadbord_Test/SRAM_Breadbord_Test.gen/sources_1/bd/Main_Blocks/ip/Main_Blocks_sram_ctrl_0_0/Main_Blocks_sram_ctrl_0_0_stub.vhdl
-- Design      : Main_Blocks_sram_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main_Blocks_sram_ctrl_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    done : out STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CE_n : out STD_LOGIC;
    OE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    CE2 : out STD_LOGIC;
    LB_n : out STD_LOGIC;
    UB_n : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Main_Blocks_sram_ctrl_0_0 : entity is "Main_Blocks_sram_ctrl_0_0,sram_ctrl,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of Main_Blocks_sram_ctrl_0_0 : entity is "Main_Blocks_sram_ctrl_0_0,sram_ctrl,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=sram_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=12000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Main_Blocks_sram_ctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Main_Blocks_sram_ctrl_0_0 : entity is "module_ref";
end Main_Blocks_sram_ctrl_0_0;

architecture stub of Main_Blocks_sram_ctrl_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,reset_n,done,i_TX_done,o_TX_DV,o_TX_data[7:0],A[21:0],DQ_i[15:0],DQ_o[15:0],DQ_t[15:0],CE_n,OE_n,WE_n,CE2,LB_n,UB_n";
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "sram_ctrl,Vivado 2024.2";
begin
end;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Sep 16 11:32:43 2025
-- Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/GitHub/GLITCH-Software/FPGA/BIG PICTURE
--               STUFF/BF_and_HK_Test1/BF_and_HK_Test1.gen/sources_1/bd/BK_HK_Combined_Test1/ip/BK_HK_Combined_Test1_Read6_0_0/BK_HK_Combined_Test1_Read6_0_0_stub.vhdl}
-- Design      : BK_HK_Combined_Test1_Read6_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BK_HK_Combined_Test1_Read6_0_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    read_complete : out STD_LOGIC;
    write_complete : in STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_drive : out STD_LOGIC;
    addresses_searched : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BK_HK_Combined_Test1_Read6_0_0 : entity is "BK_HK_Combined_Test1_Read6_0_0,Read6,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of BK_HK_Combined_Test1_Read6_0_0 : entity is "BK_HK_Combined_Test1_Read6_0_0,Read6,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Read6,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,ADDR_WIDTH=22,DATA_WIDTH=16,CLK_FREQ=12000000}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of BK_HK_Combined_Test1_Read6_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of BK_HK_Combined_Test1_Read6_0_0 : entity is "module_ref";
end BK_HK_Combined_Test1_Read6_0_0;

architecture stub of BK_HK_Combined_Test1_Read6_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sysclk,reset_n,read_complete,write_complete,A[21:0],CE_n,WE_n,DQ_i[15:0],DQ_t[15:0],DQ_o[15:0],o_BF_data[46:0],o_BF_drive,addresses_searched,led0,led1";
  attribute x_interface_info : string;
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_n : signal is "slave reset_n";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "Read6,Vivado 2024.2";
begin
end;

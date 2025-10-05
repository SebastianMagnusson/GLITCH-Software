--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Sat Oct  4 13:01:22 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target PCB_All_SRAM.bd
--Design      : PCB_All_SRAM
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PCB_All_SRAM is
  port (
    GNSS_TX : in STD_LOGIC;
    HEATER_1 : out STD_LOGIC;
    HEATER_2 : out STD_LOGIC;
    SRAM1A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM1DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM1DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1_EN : out STD_LOGIC;
    SRAM1_WE : out STD_LOGIC;
    SRAM2A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM2DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM2DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM2_EN : out STD_LOGIC;
    SRAM2_WE : out STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of PCB_All_SRAM : entity is "PCB_All_SRAM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PCB_All_SRAM,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=30,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=30,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of PCB_All_SRAM : entity is "PCB_All_SRAM.hwdef";
end PCB_All_SRAM;

architecture STRUCTURE of PCB_All_SRAM is
  component PCB_All_SRAM_BF_formatter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    BF_packet_got : in STD_LOGIC;
    SRAM_data_DV : in STD_LOGIC;
    SRAM_data : in STD_LOGIC_VECTOR ( 197 downto 0 );
    RTC_data_DV : in STD_LOGIC;
    RTC_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RTC_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    BF_packet_DV : out STD_LOGIC;
    BF_packet : out STD_LOGIC_VECTOR ( 223 downto 0 );
    led1 : out STD_LOGIC
  );
  end component PCB_All_SRAM_BF_formatter_0_0;
  component PCB_All_SRAM_GNSS_Fetcher_mod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_RX_drive : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component PCB_All_SRAM_GNSS_Fetcher_mod_0_0;
  component PCB_All_SRAM_GNSS_Sender_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component PCB_All_SRAM_GNSS_Sender_0_0;
  component PCB_All_SRAM_HK_formatter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start_pulse : in STD_LOGIC;
    HK_packet_got : in STD_LOGIC;
    GNSS_data_DV : in STD_LOGIC;
    GNSS_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    RTC_data_DV : in STD_LOGIC;
    RTC_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RTC_request : out STD_LOGIC;
    ALT_data_DV : in STD_LOGIC;
    ALT_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ALT_request : out STD_LOGIC;
    TEMP_data_DV : in STD_LOGIC;
    TEMP_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TEMP_request : out STD_LOGIC;
    I2C_read_done : out STD_LOGIC;
    HK_packet_DV : out STD_LOGIC;
    HK_packet : out STD_LOGIC_VECTOR ( 471 downto 0 );
    led1 : out STD_LOGIC
  );
  end component PCB_All_SRAM_HK_formatter_0_0;
  component PCB_All_SRAM_HTR_CALC_0_0 is
  port (
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
  end component PCB_All_SRAM_HTR_CALC_0_0;
  component PCB_All_SRAM_I2C_full_sensor_data_0_0 is
  port (
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
    i_SET_RTC_request : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV_HK : out STD_LOGIC;
    o_TX_DV_BF : out STD_LOGIC;
    o_TX_DV_RAD : out STD_LOGIC;
    o_TX_DV_HTR : out STD_LOGIC;
    o_SET_RTC_done : out STD_LOGIC;
    o_TX_RTC_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_ALT_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC
  );
  end component PCB_All_SRAM_I2C_full_sensor_data_0_0;
  component PCB_All_SRAM_I2Cmod_0_0 is
  port (
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    ena : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rw : in STD_LOGIC;
    data_wr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    busy : out STD_LOGIC;
    data_rd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ack_error : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_I2Cmod_0_0;
  component PCB_All_SRAM_Mode_control_0_0 is
  port (
    sysclk : in STD_LOGIC;
    Set_power_save : in STD_LOGIC;
    Set_power_on : in STD_LOGIC;
    Set_cutoff : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    o_htr : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_Mode_control_0_0;
  component PCB_All_SRAM_Pulse_Per_Second_100_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_Pulse_Per_Second_100_0_0;
  component PCB_All_SRAM_Read_8SRAM_100MHZ_0_0 is
  port (
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
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_drive : out STD_LOGIC;
    addresses_searched : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC
  );
  end component PCB_All_SRAM_Read_8SRAM_100MHZ_0_0;
  component PCB_All_SRAM_RESTART_mod_0_0 is
  port (
    clk : in STD_LOGIC;
    reboot_trigger : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component PCB_All_SRAM_RESTART_mod_0_0;
  component PCB_All_SRAM_RW_ROUTER_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Toggle : in STD_LOGIC;
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_write : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_write : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_read : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_read : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component PCB_All_SRAM_RW_ROUTER_100MHZ_0_0;
  component PCB_All_SRAM_SAY_HEY_switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    CMD6 : in STD_LOGIC;
    SAY_HEY_done : in STD_LOGIC;
    SAY_HEY_request : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_SAY_HEY_switchmod_0_0;
  component PCB_All_SRAM_SET_RTC_switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    CMD5 : in STD_LOGIC;
    SET_RTC_done : in STD_LOGIC;
    SET_RTC_request : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_SET_RTC_switchmod_0_0;
  component PCB_All_SRAM_TC_distributor_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    TC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TC_DV : in STD_LOGIC;
    cmd0 : out STD_LOGIC;
    cmd1 : out STD_LOGIC;
    cmd2 : out STD_LOGIC;
    cmd3 : out STD_LOGIC;
    cmd4 : out STD_LOGIC;
    cmd5 : out STD_LOGIC;
    cmd6 : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_TC_distributor_0_0;
  component PCB_All_SRAM_TM_packet_sender_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_HK_data : in STD_LOGIC_VECTOR ( 471 downto 0 );
    i_BF_data : in STD_LOGIC_VECTOR ( 223 downto 0 );
    i_RAD_data : in STD_LOGIC_VECTOR ( 5015 downto 0 );
    i_HK_DV : in STD_LOGIC;
    i_BF_DV : in STD_LOGIC;
    i_RAD_DV : in STD_LOGIC;
    i_HEY_DV : in STD_LOGIC;
    i_TX_done : in STD_LOGIC;
    i_TX_active : in STD_LOGIC;
    o_TX_DV : out STD_LOGIC;
    o_TX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_HK_got : out STD_LOGIC;
    o_BF_got : out STD_LOGIC;
    o_RAD_got : out STD_LOGIC;
    o_HEY_got : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC
  );
  end component PCB_All_SRAM_TM_packet_sender_0_0;
  component PCB_All_SRAM_UART_RX_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_UART_RX_100MHZ_0_0;
  component PCB_All_SRAM_UART_RX_100MHZ_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_UART_RX_100MHZ_1_0;
  component PCB_All_SRAM_UART_TX_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_UART_TX_100MHZ_0_0;
  component PCB_All_SRAM_Write_8SRAM_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    write_complete : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component PCB_All_SRAM_Write_8SRAM_100MHZ_0_0;
  component PCB_All_SRAM_BF_Data_Collector_Dr_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready_0 : in STD_LOGIC;
    data_ready_1 : in STD_LOGIC;
    i_dump : in STD_LOGIC;
    i_BF_data_0 : in STD_LOGIC_VECTOR ( 46 downto 0 );
    i_BF_data_1 : in STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 197 downto 0 );
    o_BF_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component PCB_All_SRAM_BF_Data_Collector_Dr_0_0;
  component PCB_All_SRAM_Read_8SRAM_100MHZ_1_0 is
  port (
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
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_drive : out STD_LOGIC;
    addresses_searched : out STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC
  );
  end component PCB_All_SRAM_Read_8SRAM_100MHZ_1_0;
  component PCB_All_SRAM_Write_8SRAM_100MHZ_1_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    write_complete : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component PCB_All_SRAM_Write_8SRAM_100MHZ_1_0;
  component PCB_All_SRAM_RW_ROUTER_100MHZ_1_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    led1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n : out STD_LOGIC;
    WE_n : out STD_LOGIC;
    DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Toggle : in STD_LOGIC;
    A_write : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_write : in STD_LOGIC;
    WE_n_write : in STD_LOGIC;
    DQ_o_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_t_write : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_write : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A_read : in STD_LOGIC_VECTOR ( 21 downto 0 );
    CE_n_read : in STD_LOGIC;
    WE_n_read : in STD_LOGIC;
    DQ_t_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DQ_o_read : in STD_LOGIC_VECTOR ( 15 downto 0 );
    decoder_read : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component PCB_All_SRAM_RW_ROUTER_100MHZ_1_0;
  component PCB_All_SRAM_Pulse_WithDelay_Per_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component PCB_All_SRAM_Pulse_WithDelay_Per_0_0;
  component PCB_All_SRAM_I2C_HTR_TEMP_0_0 is
  port (
    clk : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_done_HTR : in STD_LOGIC;
    i_HTR_TEMP_request : in STD_LOGIC;
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV_HTR : out STD_LOGIC;
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC
  );
  end component PCB_All_SRAM_I2C_HTR_TEMP_0_0;
  component PCB_All_SRAM_HTR_ROUTER_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    led1 : out STD_LOGIC;
    HTR_request : in STD_LOGIC;
    I2C_read_done : in STD_LOGIC;
    HTR_request_normal : out STD_LOGIC;
    I2C_read_done_normal : out STD_LOGIC;
    temp_data_normal : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV_normal : in STD_LOGIC;
    HTR_request_heater : out STD_LOGIC;
    I2C_read_done_heater : out STD_LOGIC;
    temp_data_heater : in STD_LOGIC_VECTOR ( 31 downto 0 );
    temp_DV_heater : in STD_LOGIC;
    temp_DV : out STD_LOGIC;
    temp_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component PCB_All_SRAM_HTR_ROUTER_0_0;
  component PCB_All_SRAM_I2C_HTR_ROUTER_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    led1 : out STD_LOGIC;
    reset_i2c : out STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_data_read : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena_heater : in STD_LOGIC;
    o_i2c_address_heater : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw_heater : in STD_LOGIC;
    o_i2c_data_wr_heater : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_busy_heater : out STD_LOGIC;
    i_data_read_heater : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_i2c_ena_normal : in STD_LOGIC;
    o_i2c_address_normal : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw_normal : in STD_LOGIC;
    o_i2c_data_wr_normal : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_busy_normal : out STD_LOGIC;
    i_data_read_normal : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component PCB_All_SRAM_I2C_HTR_ROUTER_0_0;
  component PCB_All_SRAM_HTR_controller_new_0_0 is
  port (
    clk : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    HTR_DUTY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    nmos_out : out STD_LOGIC;
    diag_out : out STD_LOGIC
  );
  end component PCB_All_SRAM_HTR_controller_new_0_0;
  component PCB_All_SRAM_HTR_controller_new_1_0 is
  port (
    clk : in STD_LOGIC;
    HTR_rst : in STD_LOGIC;
    HTR_DUTY : in STD_LOGIC_VECTOR ( 31 downto 0 );
    nmos_out : out STD_LOGIC;
    diag_out : out STD_LOGIC
  );
  end component PCB_All_SRAM_HTR_controller_new_1_0;
  signal BF_Data_Collector_Dr_0_o_BF_data : STD_LOGIC_VECTOR ( 197 downto 0 );
  signal BF_Data_Collector_Dr_0_o_BF_drive : STD_LOGIC;
  signal BF_formatter_0_BF_packet : STD_LOGIC_VECTOR ( 223 downto 0 );
  signal BF_formatter_0_BF_packet_DV : STD_LOGIC;
  signal BF_formatter_0_I2C_read_done : STD_LOGIC;
  signal BF_formatter_0_RTC_request : STD_LOGIC;
  signal GNSS_Fetcher_mod_0_o_gnss_data : STD_LOGIC_VECTOR ( 383 downto 0 );
  signal GNSS_Fetcher_mod_0_o_gnss_drive : STD_LOGIC;
  signal GNSS_Sender_0_o_gnss_data : STD_LOGIC_VECTOR ( 383 downto 0 );
  signal GNSS_Sender_0_o_gnss_drive : STD_LOGIC;
  signal HK_formatter_0_ALT_request : STD_LOGIC;
  signal HK_formatter_0_HK_packet : STD_LOGIC_VECTOR ( 471 downto 0 );
  signal HK_formatter_0_HK_packet_DV : STD_LOGIC;
  signal HK_formatter_0_I2C_read_done : STD_LOGIC;
  signal HK_formatter_0_RTC_request : STD_LOGIC;
  signal HK_formatter_0_TEMP_request : STD_LOGIC;
  signal HTR_CALC_0_HTR_request : STD_LOGIC;
  signal HTR_CALC_0_I2C_read_done : STD_LOGIC;
  signal HTR_CALC_0_command_htr1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal HTR_CALC_0_command_htr2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal HTR_ROUTER_0_HTR_request_heater : STD_LOGIC;
  signal HTR_ROUTER_0_HTR_request_normal : STD_LOGIC;
  signal HTR_ROUTER_0_I2C_read_done_heater : STD_LOGIC;
  signal HTR_ROUTER_0_I2C_read_done_normal : STD_LOGIC;
  signal HTR_ROUTER_0_temp_DV : STD_LOGIC;
  signal HTR_ROUTER_0_temp_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal I2C_HTR_ROUTER_0_i_busy_heater : STD_LOGIC;
  signal I2C_HTR_ROUTER_0_i_busy_normal : STD_LOGIC;
  signal I2C_HTR_ROUTER_0_i_data_read_heater : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_HTR_ROUTER_0_i_data_read_normal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_HTR_ROUTER_0_o_i2c_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal I2C_HTR_ROUTER_0_o_i2c_data_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_HTR_ROUTER_0_o_i2c_ena : STD_LOGIC;
  signal I2C_HTR_ROUTER_0_o_i2c_rw : STD_LOGIC;
  signal I2C_HTR_ROUTER_0_reset_i2c : STD_LOGIC;
  signal I2C_HTR_TEMP_0_o_TX_DV_HTR : STD_LOGIC;
  signal I2C_HTR_TEMP_0_o_TX_TEMP_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal I2C_HTR_TEMP_0_o_i2c_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal I2C_HTR_TEMP_0_o_i2c_data_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_HTR_TEMP_0_o_i2c_ena : STD_LOGIC;
  signal I2C_HTR_TEMP_0_o_i2c_rw : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_SET_RTC_done : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_TX_ALT_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal I2C_full_sensor_data_0_o_TX_DV_BF : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_TX_DV_HK : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_TX_DV_HTR : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_TX_RTC_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal I2C_full_sensor_data_0_o_TX_TEMP_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal I2C_full_sensor_data_0_o_i2c_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal I2C_full_sensor_data_0_o_i2c_data_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_full_sensor_data_0_o_i2c_ena : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_i2c_rw : STD_LOGIC;
  signal I2Cmod_0_busy : STD_LOGIC;
  signal I2Cmod_0_data_rd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mode_control_0_o_signal : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Pulse_Per_Second_100_0_o_pulse : STD_LOGIC;
  signal Pulse_WithDelay_Per_0_o_pulse : STD_LOGIC;
  signal Read_8SRAM_100MHZ_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Read_8SRAM_100MHZ_0_CE_n : STD_LOGIC;
  signal Read_8SRAM_100MHZ_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read_8SRAM_100MHZ_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read_8SRAM_100MHZ_0_WE_n : STD_LOGIC;
  signal Read_8SRAM_100MHZ_0_decoder : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Read_8SRAM_100MHZ_0_o_BF_data : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal Read_8SRAM_100MHZ_0_o_BF_drive : STD_LOGIC;
  signal Read_8SRAM_100MHZ_1_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Read_8SRAM_100MHZ_1_CE_n : STD_LOGIC;
  signal Read_8SRAM_100MHZ_1_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read_8SRAM_100MHZ_1_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read_8SRAM_100MHZ_1_WE_n : STD_LOGIC;
  signal Read_8SRAM_100MHZ_1_decoder : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Read_8SRAM_100MHZ_1_o_BF_data : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal Read_8SRAM_100MHZ_1_o_BF_drive : STD_LOGIC;
  signal SAY_HEY_switchmod_0_SAY_HEY_request : STD_LOGIC;
  signal SET_RTC_switchmod_0_SET_RTC_request : STD_LOGIC;
  signal TC_distributor_0_cmd0 : STD_LOGIC;
  signal TC_distributor_0_cmd1 : STD_LOGIC;
  signal TC_distributor_0_cmd2 : STD_LOGIC;
  signal TC_distributor_0_cmd3 : STD_LOGIC;
  signal TC_distributor_0_cmd4 : STD_LOGIC;
  signal TC_distributor_0_cmd6 : STD_LOGIC;
  signal TM_packet_sender_0_o_BF_got : STD_LOGIC;
  signal TM_packet_sender_0_o_HEY_got : STD_LOGIC;
  signal TM_packet_sender_0_o_HK_got : STD_LOGIC;
  signal TM_packet_sender_0_o_TX_DV : STD_LOGIC;
  signal TM_packet_sender_0_o_TX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RX_100MHZ_0_o_RX_DV : STD_LOGIC;
  signal UART_RX_100MHZ_0_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RX_100MHZ_1_o_RX_DV : STD_LOGIC;
  signal UART_RX_100MHZ_1_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_TX_100MHZ_0_o_TX_Active : STD_LOGIC;
  signal UART_TX_100MHZ_0_o_TX_Done : STD_LOGIC;
  signal Write_8SRAM_100MHZ_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Write_8SRAM_100MHZ_0_CE_n : STD_LOGIC;
  signal Write_8SRAM_100MHZ_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write_8SRAM_100MHZ_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write_8SRAM_100MHZ_0_WE_n : STD_LOGIC;
  signal Write_8SRAM_100MHZ_0_decoder : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Write_8SRAM_100MHZ_0_write_complete : STD_LOGIC;
  signal Write_8SRAM_100MHZ_1_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Write_8SRAM_100MHZ_1_CE_n : STD_LOGIC;
  signal Write_8SRAM_100MHZ_1_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write_8SRAM_100MHZ_1_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write_8SRAM_100MHZ_1_WE_n : STD_LOGIC;
  signal Write_8SRAM_100MHZ_1_decoder : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Write_8SRAM_100MHZ_1_write_complete : STD_LOGIC;
  signal NLW_BF_Data_Collector_Dr_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_BF_formatter_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_GNSS_Fetcher_mod_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_GNSS_Sender_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_HK_formatter_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_HTR_CALC_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_HTR_ROUTER_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_HTR_controller_new_0_diag_out_UNCONNECTED : STD_LOGIC;
  signal NLW_HTR_controller_new_1_diag_out_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_HTR_ROUTER_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_HTR_TEMP_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_HTR_TEMP_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_HTR_TEMP_0_led3_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_led3_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_o_TX_DV_RAD_UNCONNECTED : STD_LOGIC;
  signal NLW_I2Cmod_0_ack_error_UNCONNECTED : STD_LOGIC;
  signal NLW_I2Cmod_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_Pulse_Per_Second_100_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_Pulse_WithDelay_Per_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_RESTART_mod_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_RESTART_mod_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_0_addresses_searched_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_0_read_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_1_addresses_searched_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_1_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_1_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_1_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_Read_8SRAM_100MHZ_1_read_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_SAY_HEY_switchmod_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_SET_RTC_switchmod_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_TC_distributor_0_cmd5_UNCONNECTED : STD_LOGIC;
  signal NLW_TC_distributor_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_TM_packet_sender_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_TM_packet_sender_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_TM_packet_sender_0_o_RAD_got_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_RX_100MHZ_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_RX_100MHZ_1_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TX_100MHZ_0_led0_UNCONNECTED : STD_LOGIC;
begin
BF_Data_Collector_Dr_0: component PCB_All_SRAM_BF_Data_Collector_Dr_0_0
     port map (
      data_ready_0 => Read_8SRAM_100MHZ_0_o_BF_drive,
      data_ready_1 => Read_8SRAM_100MHZ_1_o_BF_drive,
      i_BF_data_0(46 downto 0) => Read_8SRAM_100MHZ_0_o_BF_data(46 downto 0),
      i_BF_data_1(46 downto 0) => Read_8SRAM_100MHZ_1_o_BF_data(46 downto 0),
      i_dump => Pulse_Per_Second_100_0_o_pulse,
      led1 => NLW_BF_Data_Collector_Dr_0_led1_UNCONNECTED,
      o_BF_data(197 downto 0) => BF_Data_Collector_Dr_0_o_BF_data(197 downto 0),
      o_BF_drive => BF_Data_Collector_Dr_0_o_BF_drive,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
BF_formatter_0: component PCB_All_SRAM_BF_formatter_0_0
     port map (
      BF_packet(223 downto 0) => BF_formatter_0_BF_packet(223 downto 0),
      BF_packet_DV => BF_formatter_0_BF_packet_DV,
      BF_packet_got => TM_packet_sender_0_o_BF_got,
      I2C_read_done => BF_formatter_0_I2C_read_done,
      RTC_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_RTC_data(23 downto 0),
      RTC_data_DV => I2C_full_sensor_data_0_o_TX_DV_BF,
      RTC_request => BF_formatter_0_RTC_request,
      SRAM_data(197 downto 0) => BF_Data_Collector_Dr_0_o_BF_data(197 downto 0),
      SRAM_data_DV => BF_Data_Collector_Dr_0_o_BF_drive,
      clk => sysclk,
      led1 => NLW_BF_formatter_0_led1_UNCONNECTED,
      rst => Mode_control_0_o_signal
    );
GNSS_Fetcher_mod_0: component PCB_All_SRAM_GNSS_Fetcher_mod_0_0
     port map (
      i_RX_drive => UART_RX_100MHZ_0_o_RX_DV,
      i_gnss_data(7 downto 0) => UART_RX_100MHZ_0_o_RX_byte(7 downto 0),
      led1 => NLW_GNSS_Fetcher_mod_0_led1_UNCONNECTED,
      o_gnss_data(383 downto 0) => GNSS_Fetcher_mod_0_o_gnss_data(383 downto 0),
      o_gnss_drive => GNSS_Fetcher_mod_0_o_gnss_drive,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
GNSS_Sender_0: component PCB_All_SRAM_GNSS_Sender_0_0
     port map (
      data_ready => GNSS_Fetcher_mod_0_o_gnss_drive,
      i_gnss_data(383 downto 0) => GNSS_Fetcher_mod_0_o_gnss_data(383 downto 0),
      led1 => NLW_GNSS_Sender_0_led1_UNCONNECTED,
      o_gnss_data(383 downto 0) => GNSS_Sender_0_o_gnss_data(383 downto 0),
      o_gnss_drive => GNSS_Sender_0_o_gnss_drive,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
HK_formatter_0: component PCB_All_SRAM_HK_formatter_0_0
     port map (
      ALT_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_ALT_data(23 downto 0),
      ALT_data_DV => I2C_full_sensor_data_0_o_TX_DV_HK,
      ALT_request => HK_formatter_0_ALT_request,
      GNSS_data(383 downto 0) => GNSS_Sender_0_o_gnss_data(383 downto 0),
      GNSS_data_DV => GNSS_Sender_0_o_gnss_drive,
      HK_packet(471 downto 0) => HK_formatter_0_HK_packet(471 downto 0),
      HK_packet_DV => HK_formatter_0_HK_packet_DV,
      HK_packet_got => TM_packet_sender_0_o_HK_got,
      I2C_read_done => HK_formatter_0_I2C_read_done,
      RTC_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_RTC_data(23 downto 0),
      RTC_data_DV => I2C_full_sensor_data_0_o_TX_DV_HK,
      RTC_request => HK_formatter_0_RTC_request,
      TEMP_data(31 downto 0) => I2C_full_sensor_data_0_o_TX_TEMP_data(31 downto 0),
      TEMP_data_DV => I2C_full_sensor_data_0_o_TX_DV_HK,
      TEMP_request => HK_formatter_0_TEMP_request,
      clk => sysclk,
      led1 => NLW_HK_formatter_0_led1_UNCONNECTED,
      rst => Mode_control_0_o_signal,
      start_pulse => Pulse_WithDelay_Per_0_o_pulse
    );
HTR_CALC_0: component PCB_All_SRAM_HTR_CALC_0_0
     port map (
      HTR_request => HTR_CALC_0_HTR_request,
      HTR_rst => Net,
      I2C_read_done => HTR_CALC_0_I2C_read_done,
      clk => sysclk,
      command_htr1(31 downto 0) => HTR_CALC_0_command_htr1(31 downto 0),
      command_htr2(31 downto 0) => HTR_CALC_0_command_htr2(31 downto 0),
      led1 => NLW_HTR_CALC_0_led1_UNCONNECTED,
      temp_DV => HTR_ROUTER_0_temp_DV,
      temp_data(31 downto 0) => HTR_ROUTER_0_temp_data(31 downto 0)
    );
HTR_ROUTER_0: component PCB_All_SRAM_HTR_ROUTER_0_0
     port map (
      HTR_request => HTR_CALC_0_HTR_request,
      HTR_request_heater => HTR_ROUTER_0_HTR_request_heater,
      HTR_request_normal => HTR_ROUTER_0_HTR_request_normal,
      HTR_rst => Net,
      I2C_read_done => HTR_CALC_0_I2C_read_done,
      I2C_read_done_heater => HTR_ROUTER_0_I2C_read_done_heater,
      I2C_read_done_normal => HTR_ROUTER_0_I2C_read_done_normal,
      led1 => NLW_HTR_ROUTER_0_led1_UNCONNECTED,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk,
      temp_DV => HTR_ROUTER_0_temp_DV,
      temp_DV_heater => I2C_HTR_TEMP_0_o_TX_DV_HTR,
      temp_DV_normal => I2C_full_sensor_data_0_o_TX_DV_HTR,
      temp_data(31 downto 0) => HTR_ROUTER_0_temp_data(31 downto 0),
      temp_data_heater(31 downto 0) => I2C_HTR_TEMP_0_o_TX_TEMP_data(31 downto 0),
      temp_data_normal(31 downto 0) => I2C_full_sensor_data_0_o_TX_TEMP_data(31 downto 0)
    );
HTR_controller_new_0: component PCB_All_SRAM_HTR_controller_new_0_0
     port map (
      HTR_DUTY(31 downto 0) => HTR_CALC_0_command_htr1(31 downto 0),
      HTR_rst => Net,
      clk => sysclk,
      diag_out => NLW_HTR_controller_new_0_diag_out_UNCONNECTED,
      nmos_out => HEATER_1
    );
HTR_controller_new_1: component PCB_All_SRAM_HTR_controller_new_1_0
     port map (
      HTR_DUTY(31 downto 0) => HTR_CALC_0_command_htr2(31 downto 0),
      HTR_rst => Net,
      clk => sysclk,
      diag_out => NLW_HTR_controller_new_1_diag_out_UNCONNECTED,
      nmos_out => HEATER_2
    );
I2C_HTR_ROUTER_0: component PCB_All_SRAM_I2C_HTR_ROUTER_0_0
     port map (
      HTR_rst => Net,
      i_busy => I2Cmod_0_busy,
      i_busy_heater => I2C_HTR_ROUTER_0_i_busy_heater,
      i_busy_normal => I2C_HTR_ROUTER_0_i_busy_normal,
      i_data_read(7 downto 0) => I2Cmod_0_data_rd(7 downto 0),
      i_data_read_heater(7 downto 0) => I2C_HTR_ROUTER_0_i_data_read_heater(7 downto 0),
      i_data_read_normal(7 downto 0) => I2C_HTR_ROUTER_0_i_data_read_normal(7 downto 0),
      led1 => NLW_I2C_HTR_ROUTER_0_led1_UNCONNECTED,
      o_i2c_address(6 downto 0) => I2C_HTR_ROUTER_0_o_i2c_address(6 downto 0),
      o_i2c_address_heater(6 downto 0) => I2C_HTR_TEMP_0_o_i2c_address(6 downto 0),
      o_i2c_address_normal(6 downto 0) => I2C_full_sensor_data_0_o_i2c_address(6 downto 0),
      o_i2c_data_wr(7 downto 0) => I2C_HTR_ROUTER_0_o_i2c_data_wr(7 downto 0),
      o_i2c_data_wr_heater(7 downto 0) => I2C_HTR_TEMP_0_o_i2c_data_wr(7 downto 0),
      o_i2c_data_wr_normal(7 downto 0) => I2C_full_sensor_data_0_o_i2c_data_wr(7 downto 0),
      o_i2c_ena => I2C_HTR_ROUTER_0_o_i2c_ena,
      o_i2c_ena_heater => I2C_HTR_TEMP_0_o_i2c_ena,
      o_i2c_ena_normal => I2C_full_sensor_data_0_o_i2c_ena,
      o_i2c_rw => I2C_HTR_ROUTER_0_o_i2c_rw,
      o_i2c_rw_heater => I2C_HTR_TEMP_0_o_i2c_rw,
      o_i2c_rw_normal => I2C_full_sensor_data_0_o_i2c_rw,
      reset_i2c => I2C_HTR_ROUTER_0_reset_i2c,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
I2C_HTR_TEMP_0: component PCB_All_SRAM_I2C_HTR_TEMP_0_0
     port map (
      HTR_rst => Net,
      clk => sysclk,
      i_HTR_TEMP_request => HTR_ROUTER_0_HTR_request_heater,
      i_TX_done_HTR => HTR_ROUTER_0_I2C_read_done_heater,
      i_busy => I2C_HTR_ROUTER_0_i_busy_heater,
      i_data_read(7 downto 0) => I2C_HTR_ROUTER_0_i_data_read_heater(7 downto 0),
      led1 => NLW_I2C_HTR_TEMP_0_led1_UNCONNECTED,
      led2 => NLW_I2C_HTR_TEMP_0_led2_UNCONNECTED,
      led3 => NLW_I2C_HTR_TEMP_0_led3_UNCONNECTED,
      o_TX_DV_HTR => I2C_HTR_TEMP_0_o_TX_DV_HTR,
      o_TX_TEMP_data(31 downto 0) => I2C_HTR_TEMP_0_o_TX_TEMP_data(31 downto 0),
      o_i2c_address(6 downto 0) => I2C_HTR_TEMP_0_o_i2c_address(6 downto 0),
      o_i2c_data_wr(7 downto 0) => I2C_HTR_TEMP_0_o_i2c_data_wr(7 downto 0),
      o_i2c_ena => I2C_HTR_TEMP_0_o_i2c_ena,
      o_i2c_rw => I2C_HTR_TEMP_0_o_i2c_rw
    );
I2C_full_sensor_data_0: component PCB_All_SRAM_I2C_full_sensor_data_0_0
     port map (
      clk => sysclk,
      i_BF_RTC_request => BF_formatter_0_RTC_request,
      i_HK_ALT_request => HK_formatter_0_ALT_request,
      i_HK_RTC_request => HK_formatter_0_RTC_request,
      i_HK_TEMP_request => HK_formatter_0_TEMP_request,
      i_HTR_TEMP_request => HTR_ROUTER_0_HTR_request_normal,
      i_RAD_RTC_request => '0',
      i_SET_RTC_request => SET_RTC_switchmod_0_SET_RTC_request,
      i_TX_done_BF => BF_formatter_0_I2C_read_done,
      i_TX_done_HK => HK_formatter_0_I2C_read_done,
      i_TX_done_HTR => HTR_ROUTER_0_I2C_read_done_normal,
      i_TX_done_RAD => '0',
      i_busy => I2C_HTR_ROUTER_0_i_busy_normal,
      i_data_read(7 downto 0) => I2C_HTR_ROUTER_0_i_data_read_normal(7 downto 0),
      led1 => NLW_I2C_full_sensor_data_0_led1_UNCONNECTED,
      led2 => NLW_I2C_full_sensor_data_0_led2_UNCONNECTED,
      led3 => NLW_I2C_full_sensor_data_0_led3_UNCONNECTED,
      o_SET_RTC_done => I2C_full_sensor_data_0_o_SET_RTC_done,
      o_TX_ALT_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_ALT_data(23 downto 0),
      o_TX_DV_BF => I2C_full_sensor_data_0_o_TX_DV_BF,
      o_TX_DV_HK => I2C_full_sensor_data_0_o_TX_DV_HK,
      o_TX_DV_HTR => I2C_full_sensor_data_0_o_TX_DV_HTR,
      o_TX_DV_RAD => NLW_I2C_full_sensor_data_0_o_TX_DV_RAD_UNCONNECTED,
      o_TX_RTC_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_RTC_data(23 downto 0),
      o_TX_TEMP_data(31 downto 0) => I2C_full_sensor_data_0_o_TX_TEMP_data(31 downto 0),
      o_i2c_address(6 downto 0) => I2C_full_sensor_data_0_o_i2c_address(6 downto 0),
      o_i2c_data_wr(7 downto 0) => I2C_full_sensor_data_0_o_i2c_data_wr(7 downto 0),
      o_i2c_ena => I2C_full_sensor_data_0_o_i2c_ena,
      o_i2c_rw => I2C_full_sensor_data_0_o_i2c_rw,
      rst => Mode_control_0_o_signal
    );
I2Cmod_0: component PCB_All_SRAM_I2Cmod_0_0
     port map (
      ack_error => NLW_I2Cmod_0_ack_error_UNCONNECTED,
      addr(6 downto 0) => I2C_HTR_ROUTER_0_o_i2c_address(6 downto 0),
      busy => I2Cmod_0_busy,
      data_rd(7 downto 0) => I2Cmod_0_data_rd(7 downto 0),
      data_wr(7 downto 0) => I2C_HTR_ROUTER_0_o_i2c_data_wr(7 downto 0),
      ena => I2C_HTR_ROUTER_0_o_i2c_ena,
      led0 => NLW_I2Cmod_0_led0_UNCONNECTED,
      reset_n => I2C_HTR_ROUTER_0_reset_i2c,
      rw => I2C_HTR_ROUTER_0_o_i2c_rw,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
Mode_control_0: component PCB_All_SRAM_Mode_control_0_0
     port map (
      Set_cutoff => TC_distributor_0_cmd6,
      Set_power_on => TC_distributor_0_cmd2,
      Set_power_save => TC_distributor_0_cmd1,
      led0 => led0,
      o_htr => Net,
      o_signal => Mode_control_0_o_signal,
      sysclk => sysclk
    );
Pulse_Per_Second_100_0: component PCB_All_SRAM_Pulse_Per_Second_100_0_0
     port map (
      led0 => NLW_Pulse_Per_Second_100_0_led0_UNCONNECTED,
      o_pulse => Pulse_Per_Second_100_0_o_pulse,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
Pulse_WithDelay_Per_0: component PCB_All_SRAM_Pulse_WithDelay_Per_0_0
     port map (
      led0 => NLW_Pulse_WithDelay_Per_0_led0_UNCONNECTED,
      o_pulse => Pulse_WithDelay_Per_0_o_pulse,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
RESTART_mod_0: component PCB_All_SRAM_RESTART_mod_0_0
     port map (
      clk => sysclk,
      led0 => NLW_RESTART_mod_0_led0_UNCONNECTED,
      led1 => NLW_RESTART_mod_0_led1_UNCONNECTED,
      reboot_trigger => TC_distributor_0_cmd0
    );
RW_ROUTER_100MHZ_0: component PCB_All_SRAM_RW_ROUTER_100MHZ_0_0
     port map (
      A(21 downto 0) => SRAM1A(21 downto 0),
      A_read(21 downto 0) => Read_8SRAM_100MHZ_0_A(21 downto 0),
      A_write(21 downto 0) => Write_8SRAM_100MHZ_0_A(21 downto 0),
      CE_n => SRAM1_EN,
      CE_n_read => Read_8SRAM_100MHZ_0_CE_n,
      CE_n_write => Write_8SRAM_100MHZ_0_CE_n,
      DQ_o(15 downto 0) => SRAM1DQ_o(15 downto 0),
      DQ_o_read(15 downto 0) => Read_8SRAM_100MHZ_0_DQ_o(15 downto 0),
      DQ_o_write(15 downto 0) => Write_8SRAM_100MHZ_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => SRAM1DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => Read_8SRAM_100MHZ_0_DQ_t(15 downto 0),
      DQ_t_write(15 downto 0) => Write_8SRAM_100MHZ_0_DQ_t(15 downto 0),
      Toggle => Write_8SRAM_100MHZ_0_write_complete,
      WE_n => SRAM1_WE,
      WE_n_read => Read_8SRAM_100MHZ_0_WE_n,
      WE_n_write => Write_8SRAM_100MHZ_0_WE_n,
      decoder(2 downto 0) => SRAM1DEC(2 downto 0),
      decoder_read(2 downto 0) => Read_8SRAM_100MHZ_0_decoder(2 downto 0),
      decoder_write(2 downto 0) => Write_8SRAM_100MHZ_0_decoder(2 downto 0),
      led1 => led2,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
RW_ROUTER_100MHZ_1: component PCB_All_SRAM_RW_ROUTER_100MHZ_1_0
     port map (
      A(21 downto 0) => SRAM2A(21 downto 0),
      A_read(21 downto 0) => Read_8SRAM_100MHZ_1_A(21 downto 0),
      A_write(21 downto 0) => Write_8SRAM_100MHZ_1_A(21 downto 0),
      CE_n => SRAM2_EN,
      CE_n_read => Read_8SRAM_100MHZ_1_CE_n,
      CE_n_write => Write_8SRAM_100MHZ_1_CE_n,
      DQ_o(15 downto 0) => SRAM2DQ_o(15 downto 0),
      DQ_o_read(15 downto 0) => Read_8SRAM_100MHZ_1_DQ_o(15 downto 0),
      DQ_o_write(15 downto 0) => Write_8SRAM_100MHZ_1_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => SRAM2DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => Read_8SRAM_100MHZ_1_DQ_t(15 downto 0),
      DQ_t_write(15 downto 0) => Write_8SRAM_100MHZ_1_DQ_t(15 downto 0),
      Toggle => Write_8SRAM_100MHZ_1_write_complete,
      WE_n => SRAM2_WE,
      WE_n_read => Read_8SRAM_100MHZ_1_WE_n,
      WE_n_write => Write_8SRAM_100MHZ_1_WE_n,
      decoder(2 downto 0) => SRAM2DEC(2 downto 0),
      decoder_read(2 downto 0) => Read_8SRAM_100MHZ_1_decoder(2 downto 0),
      decoder_write(2 downto 0) => Write_8SRAM_100MHZ_1_decoder(2 downto 0),
      led1 => led1,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk
    );
Read_8SRAM_100MHZ_0: component PCB_All_SRAM_Read_8SRAM_100MHZ_0_0
     port map (
      A(21 downto 0) => Read_8SRAM_100MHZ_0_A(21 downto 0),
      CE_n => Read_8SRAM_100MHZ_0_CE_n,
      DQ_i(15 downto 0) => SRAM1DQ_i(15 downto 0),
      DQ_o(15 downto 0) => Read_8SRAM_100MHZ_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Read_8SRAM_100MHZ_0_DQ_t(15 downto 0),
      WE_n => Read_8SRAM_100MHZ_0_WE_n,
      addresses_searched => NLW_Read_8SRAM_100MHZ_0_addresses_searched_UNCONNECTED,
      decoder(2 downto 0) => Read_8SRAM_100MHZ_0_decoder(2 downto 0),
      led0 => NLW_Read_8SRAM_100MHZ_0_led0_UNCONNECTED,
      led1 => NLW_Read_8SRAM_100MHZ_0_led1_UNCONNECTED,
      led2 => NLW_Read_8SRAM_100MHZ_0_led2_UNCONNECTED,
      o_BF_data(46 downto 0) => Read_8SRAM_100MHZ_0_o_BF_data(46 downto 0),
      o_BF_drive => Read_8SRAM_100MHZ_0_o_BF_drive,
      read_complete => NLW_Read_8SRAM_100MHZ_0_read_complete_UNCONNECTED,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk,
      write_complete => Write_8SRAM_100MHZ_0_write_complete
    );
Read_8SRAM_100MHZ_1: component PCB_All_SRAM_Read_8SRAM_100MHZ_1_0
     port map (
      A(21 downto 0) => Read_8SRAM_100MHZ_1_A(21 downto 0),
      CE_n => Read_8SRAM_100MHZ_1_CE_n,
      DQ_i(15 downto 0) => SRAM2DQ_i(15 downto 0),
      DQ_o(15 downto 0) => Read_8SRAM_100MHZ_1_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Read_8SRAM_100MHZ_1_DQ_t(15 downto 0),
      WE_n => Read_8SRAM_100MHZ_1_WE_n,
      addresses_searched => NLW_Read_8SRAM_100MHZ_1_addresses_searched_UNCONNECTED,
      decoder(2 downto 0) => Read_8SRAM_100MHZ_1_decoder(2 downto 0),
      led0 => NLW_Read_8SRAM_100MHZ_1_led0_UNCONNECTED,
      led1 => NLW_Read_8SRAM_100MHZ_1_led1_UNCONNECTED,
      led2 => NLW_Read_8SRAM_100MHZ_1_led2_UNCONNECTED,
      o_BF_data(46 downto 0) => Read_8SRAM_100MHZ_1_o_BF_data(46 downto 0),
      o_BF_drive => Read_8SRAM_100MHZ_1_o_BF_drive,
      read_complete => NLW_Read_8SRAM_100MHZ_1_read_complete_UNCONNECTED,
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk,
      write_complete => Write_8SRAM_100MHZ_1_write_complete
    );
SAY_HEY_switchmod_0: component PCB_All_SRAM_SAY_HEY_switchmod_0_0
     port map (
      CMD6 => TC_distributor_0_cmd3,
      SAY_HEY_done => TM_packet_sender_0_o_HEY_got,
      SAY_HEY_request => SAY_HEY_switchmod_0_SAY_HEY_request,
      led0 => NLW_SAY_HEY_switchmod_0_led0_UNCONNECTED,
      sysclk => sysclk
    );
SET_RTC_switchmod_0: component PCB_All_SRAM_SET_RTC_switchmod_0_0
     port map (
      CMD5 => TC_distributor_0_cmd4,
      SET_RTC_done => I2C_full_sensor_data_0_o_SET_RTC_done,
      SET_RTC_request => SET_RTC_switchmod_0_SET_RTC_request,
      led0 => NLW_SET_RTC_switchmod_0_led0_UNCONNECTED,
      sysclk => sysclk
    );
TC_distributor_0: component PCB_All_SRAM_TC_distributor_0_0
     port map (
      TC(7 downto 0) => UART_RX_100MHZ_1_o_RX_byte(7 downto 0),
      TC_DV => UART_RX_100MHZ_1_o_RX_DV,
      clk => sysclk,
      cmd0 => TC_distributor_0_cmd0,
      cmd1 => TC_distributor_0_cmd1,
      cmd2 => TC_distributor_0_cmd2,
      cmd3 => TC_distributor_0_cmd3,
      cmd4 => TC_distributor_0_cmd4,
      cmd5 => NLW_TC_distributor_0_cmd5_UNCONNECTED,
      cmd6 => TC_distributor_0_cmd6,
      led0 => NLW_TC_distributor_0_led0_UNCONNECTED,
      rst => '0'
    );
TM_packet_sender_0: component PCB_All_SRAM_TM_packet_sender_0_0
     port map (
      clk => sysclk,
      i_BF_DV => BF_formatter_0_BF_packet_DV,
      i_BF_data(223 downto 0) => BF_formatter_0_BF_packet(223 downto 0),
      i_HEY_DV => SAY_HEY_switchmod_0_SAY_HEY_request,
      i_HK_DV => HK_formatter_0_HK_packet_DV,
      i_HK_data(471 downto 0) => HK_formatter_0_HK_packet(471 downto 0),
      i_RAD_DV => '0',
      i_RAD_data(5015 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      i_TX_active => UART_TX_100MHZ_0_o_TX_Active,
      i_TX_done => UART_TX_100MHZ_0_o_TX_Done,
      led1 => NLW_TM_packet_sender_0_led1_UNCONNECTED,
      led2 => NLW_TM_packet_sender_0_led2_UNCONNECTED,
      o_BF_got => TM_packet_sender_0_o_BF_got,
      o_HEY_got => TM_packet_sender_0_o_HEY_got,
      o_HK_got => TM_packet_sender_0_o_HK_got,
      o_RAD_got => NLW_TM_packet_sender_0_o_RAD_got_UNCONNECTED,
      o_TX_DV => TM_packet_sender_0_o_TX_DV,
      o_TX_byte(7 downto 0) => TM_packet_sender_0_o_TX_byte(7 downto 0),
      rst => Mode_control_0_o_signal
    );
UART_RX_100MHZ_0: component PCB_All_SRAM_UART_RX_100MHZ_0_0
     port map (
      i_RX_Serial => GNSS_TX,
      led0 => NLW_UART_RX_100MHZ_0_led0_UNCONNECTED,
      o_RX_DV => UART_RX_100MHZ_0_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RX_100MHZ_0_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_RX_100MHZ_1: component PCB_All_SRAM_UART_RX_100MHZ_1_0
     port map (
      i_RX_Serial => UART_MCU_RX,
      led0 => NLW_UART_RX_100MHZ_1_led0_UNCONNECTED,
      o_RX_DV => UART_RX_100MHZ_1_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RX_100MHZ_1_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_TX_100MHZ_0: component PCB_All_SRAM_UART_TX_100MHZ_0_0
     port map (
      i_TX_Byte(7 downto 0) => TM_packet_sender_0_o_TX_byte(7 downto 0),
      i_TX_DV => TM_packet_sender_0_o_TX_DV,
      led0 => NLW_UART_TX_100MHZ_0_led0_UNCONNECTED,
      o_TX_Active => UART_TX_100MHZ_0_o_TX_Active,
      o_TX_Done => UART_TX_100MHZ_0_o_TX_Done,
      o_TX_Serial => UART_MCU_TX,
      sysclk => sysclk
    );
Write_8SRAM_100MHZ_0: component PCB_All_SRAM_Write_8SRAM_100MHZ_0_0
     port map (
      A(21 downto 0) => Write_8SRAM_100MHZ_0_A(21 downto 0),
      CE_n => Write_8SRAM_100MHZ_0_CE_n,
      DQ_o(15 downto 0) => Write_8SRAM_100MHZ_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Write_8SRAM_100MHZ_0_DQ_t(15 downto 0),
      WE_n => Write_8SRAM_100MHZ_0_WE_n,
      decoder(2 downto 0) => Write_8SRAM_100MHZ_0_decoder(2 downto 0),
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk,
      write_complete => Write_8SRAM_100MHZ_0_write_complete
    );
Write_8SRAM_100MHZ_1: component PCB_All_SRAM_Write_8SRAM_100MHZ_1_0
     port map (
      A(21 downto 0) => Write_8SRAM_100MHZ_1_A(21 downto 0),
      CE_n => Write_8SRAM_100MHZ_1_CE_n,
      DQ_o(15 downto 0) => Write_8SRAM_100MHZ_1_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Write_8SRAM_100MHZ_1_DQ_t(15 downto 0),
      WE_n => Write_8SRAM_100MHZ_1_WE_n,
      decoder(2 downto 0) => Write_8SRAM_100MHZ_1_decoder(2 downto 0),
      reset_n => Mode_control_0_o_signal,
      sysclk => sysclk,
      write_complete => Write_8SRAM_100MHZ_1_write_complete
    );
end STRUCTURE;

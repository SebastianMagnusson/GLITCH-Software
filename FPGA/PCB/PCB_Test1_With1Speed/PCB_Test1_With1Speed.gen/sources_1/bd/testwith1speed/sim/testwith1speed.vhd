--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Sep 24 07:46:49 2025
--Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
--Command     : generate_target testwith1speed.bd
--Design      : testwith1speed
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity testwith1speed is
  port (
    GNSS_RX : in STD_LOGIC;
    SRAM1A : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SRAM1DEC : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SRAM1DQ_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1DQ_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SRAM1_EN : out STD_LOGIC;
    SRAM1_WE : out STD_LOGIC;
    UART_MCU_RX : in STD_LOGIC;
    UART_MCU_TX : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    sysclk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of testwith1speed : entity is "testwith1speed,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=testwith1speed,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=17,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of testwith1speed : entity is "testwith1speed.hwdef";
end testwith1speed;

architecture STRUCTURE of testwith1speed is
  component testwith1speed_BF_Data_Collector_Dr_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    i_dump : in STD_LOGIC;
    i_BF_data : in STD_LOGIC_VECTOR ( 46 downto 0 );
    o_BF_data : out STD_LOGIC_VECTOR ( 197 downto 0 );
    o_BF_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component testwith1speed_BF_Data_Collector_Dr_0_0;
  component testwith1speed_BF_formatter_0_0 is
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
  end component testwith1speed_BF_formatter_0_0;
  component testwith1speed_GNSS_Fetcher_mod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    i_RX_drive : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component testwith1speed_GNSS_Fetcher_mod_0_0;
  component testwith1speed_GNSS_Sender_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    i_gnss_data : in STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    o_gnss_drive : out STD_LOGIC;
    led1 : out STD_LOGIC
  );
  end component testwith1speed_GNSS_Sender_0_0;
  component testwith1speed_HK_formatter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
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
  end component testwith1speed_HK_formatter_0_0;
  component testwith1speed_I2C_full_sensor_data_0_0 is
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
    o_i2c_ena : out STD_LOGIC;
    o_i2c_address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_i2c_rw : out STD_LOGIC;
    o_i2c_data_wr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_DV_HK : out STD_LOGIC;
    o_TX_DV_BF : out STD_LOGIC;
    o_TX_DV_RAD : out STD_LOGIC;
    o_TX_DV_HTR : out STD_LOGIC;
    o_TX_RTC_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_ALT_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    o_TX_TEMP_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led2 : out STD_LOGIC
  );
  end component testwith1speed_I2C_full_sensor_data_0_0;
  component testwith1speed_I2Cmod_0_0 is
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
    ack_error : out STD_LOGIC
  );
  end component testwith1speed_I2Cmod_0_0;
  component testwith1speed_Pulse_Per_Second_100_0_0 is
  port (
    sysclk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    o_pulse : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component testwith1speed_Pulse_Per_Second_100_0_0;
  component testwith1speed_Read1_100MHZ_0_0 is
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
    led1 : out STD_LOGIC
  );
  end component testwith1speed_Read1_100MHZ_0_0;
  component testwith1speed_RW_ROUTER_100MHZ_0_0 is
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
  end component testwith1speed_RW_ROUTER_100MHZ_0_0;
  component testwith1speed_Write1_100MHZ_0_0 is
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
  end component testwith1speed_Write1_100MHZ_0_0;
  component testwith1speed_Switchmod_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC;
    led0 : out STD_LOGIC
  );
  end component testwith1speed_Switchmod_0_0;
  component testwith1speed_TC_distributor_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    TC : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TC_DV : in STD_LOGIC;
    cmd0 : out STD_LOGIC;
    cmd1 : out STD_LOGIC;
    cmd2 : out STD_LOGIC;
    cmd3 : out STD_LOGIC
  );
  end component testwith1speed_TC_distributor_0_0;
  component testwith1speed_TM_packet_sender_0_0 is
  port (
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
  end component testwith1speed_TM_packet_sender_0_0;
  component testwith1speed_UART_TX_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_TX_DV : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component testwith1speed_UART_TX_100MHZ_0_0;
  component testwith1speed_UART_RX_100MHZ_0_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component testwith1speed_UART_RX_100MHZ_0_0;
  component testwith1speed_UART_RX_100MHZ_1_0 is
  port (
    sysclk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_DV : out STD_LOGIC;
    o_RX_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component testwith1speed_UART_RX_100MHZ_1_0;
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
  signal I2C_full_sensor_data_0_o_TX_ALT_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal I2C_full_sensor_data_0_o_TX_DV_BF : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_TX_DV_HK : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_TX_RTC_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal I2C_full_sensor_data_0_o_TX_TEMP_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal I2C_full_sensor_data_0_o_i2c_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal I2C_full_sensor_data_0_o_i2c_data_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I2C_full_sensor_data_0_o_i2c_ena : STD_LOGIC;
  signal I2C_full_sensor_data_0_o_i2c_rw : STD_LOGIC;
  signal I2Cmod_0_busy : STD_LOGIC;
  signal I2Cmod_0_data_rd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Pulse_Per_Second_100_0_o_pulse : STD_LOGIC;
  signal Read1_100MHZ_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Read1_100MHZ_0_CE_n : STD_LOGIC;
  signal Read1_100MHZ_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read1_100MHZ_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Read1_100MHZ_0_WE_n : STD_LOGIC;
  signal Read1_100MHZ_0_decoder : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Read1_100MHZ_0_o_BF_data : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal Read1_100MHZ_0_o_BF_drive : STD_LOGIC;
  signal Switchmod_0_o_signal : STD_LOGIC;
  signal TC_distributor_0_cmd0 : STD_LOGIC;
  signal TM_packet_sender_0_o_BF_got : STD_LOGIC;
  signal TM_packet_sender_0_o_HK_got : STD_LOGIC;
  signal TM_packet_sender_0_o_TX_DV : STD_LOGIC;
  signal TM_packet_sender_0_o_TX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RX_100MHZ_0_o_RX_DV : STD_LOGIC;
  signal UART_RX_100MHZ_0_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_RX_100MHZ_1_o_RX_DV : STD_LOGIC;
  signal UART_RX_100MHZ_1_o_RX_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_TX_100MHZ_0_o_TX_Active : STD_LOGIC;
  signal UART_TX_100MHZ_0_o_TX_Done : STD_LOGIC;
  signal Write1_100MHZ_0_A : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Write1_100MHZ_0_CE_n : STD_LOGIC;
  signal Write1_100MHZ_0_DQ_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write1_100MHZ_0_DQ_t : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Write1_100MHZ_0_WE_n : STD_LOGIC;
  signal Write1_100MHZ_0_decoder : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Write1_100MHZ_0_write_complete : STD_LOGIC;
  signal NLW_BF_Data_Collector_Dr_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_BF_formatter_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_GNSS_Fetcher_mod_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_GNSS_Sender_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_HK_formatter_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_o_TX_DV_HTR_UNCONNECTED : STD_LOGIC;
  signal NLW_I2C_full_sensor_data_0_o_TX_DV_RAD_UNCONNECTED : STD_LOGIC;
  signal NLW_I2Cmod_0_ack_error_UNCONNECTED : STD_LOGIC;
  signal NLW_Pulse_Per_Second_100_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_RW_ROUTER_100MHZ_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_Read1_100MHZ_0_addresses_searched_UNCONNECTED : STD_LOGIC;
  signal NLW_Read1_100MHZ_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_Read1_100MHZ_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_Read1_100MHZ_0_read_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_Switchmod_0_led0_UNCONNECTED : STD_LOGIC;
  signal NLW_TC_distributor_0_cmd1_UNCONNECTED : STD_LOGIC;
  signal NLW_TC_distributor_0_cmd2_UNCONNECTED : STD_LOGIC;
  signal NLW_TC_distributor_0_cmd3_UNCONNECTED : STD_LOGIC;
  signal NLW_TM_packet_sender_0_led1_UNCONNECTED : STD_LOGIC;
  signal NLW_TM_packet_sender_0_led2_UNCONNECTED : STD_LOGIC;
  signal NLW_TM_packet_sender_0_o_RAD_got_UNCONNECTED : STD_LOGIC;
begin
BF_Data_Collector_Dr_0: component testwith1speed_BF_Data_Collector_Dr_0_0
     port map (
      data_ready => Read1_100MHZ_0_o_BF_drive,
      i_BF_data(46 downto 0) => Read1_100MHZ_0_o_BF_data(46 downto 0),
      i_dump => Pulse_Per_Second_100_0_o_pulse,
      led1 => NLW_BF_Data_Collector_Dr_0_led1_UNCONNECTED,
      o_BF_data(197 downto 0) => BF_Data_Collector_Dr_0_o_BF_data(197 downto 0),
      o_BF_drive => BF_Data_Collector_Dr_0_o_BF_drive,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
BF_formatter_0: component testwith1speed_BF_formatter_0_0
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
      rst => Switchmod_0_o_signal
    );
GNSS_Fetcher_mod_0: component testwith1speed_GNSS_Fetcher_mod_0_0
     port map (
      i_RX_drive => UART_RX_100MHZ_1_o_RX_DV,
      i_gnss_data(7 downto 0) => UART_RX_100MHZ_1_o_RX_byte(7 downto 0),
      led1 => NLW_GNSS_Fetcher_mod_0_led1_UNCONNECTED,
      o_gnss_data(383 downto 0) => GNSS_Fetcher_mod_0_o_gnss_data(383 downto 0),
      o_gnss_drive => GNSS_Fetcher_mod_0_o_gnss_drive,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
GNSS_Sender_0: component testwith1speed_GNSS_Sender_0_0
     port map (
      data_ready => GNSS_Fetcher_mod_0_o_gnss_drive,
      i_gnss_data(383 downto 0) => GNSS_Fetcher_mod_0_o_gnss_data(383 downto 0),
      led1 => NLW_GNSS_Sender_0_led1_UNCONNECTED,
      o_gnss_data(383 downto 0) => GNSS_Sender_0_o_gnss_data(383 downto 0),
      o_gnss_drive => GNSS_Sender_0_o_gnss_drive,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
HK_formatter_0: component testwith1speed_HK_formatter_0_0
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
      rst => Switchmod_0_o_signal
    );
I2C_full_sensor_data_0: component testwith1speed_I2C_full_sensor_data_0_0
     port map (
      clk => sysclk,
      i_BF_RTC_request => BF_formatter_0_RTC_request,
      i_HK_ALT_request => HK_formatter_0_ALT_request,
      i_HK_RTC_request => HK_formatter_0_RTC_request,
      i_HK_TEMP_request => HK_formatter_0_TEMP_request,
      i_HTR_TEMP_request => '0',
      i_RAD_RTC_request => '0',
      i_TX_done_BF => BF_formatter_0_I2C_read_done,
      i_TX_done_HK => HK_formatter_0_I2C_read_done,
      i_TX_done_HTR => '0',
      i_TX_done_RAD => '0',
      i_busy => I2Cmod_0_busy,
      i_data_read(7 downto 0) => I2Cmod_0_data_rd(7 downto 0),
      led2 => NLW_I2C_full_sensor_data_0_led2_UNCONNECTED,
      o_TX_ALT_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_ALT_data(23 downto 0),
      o_TX_DV_BF => I2C_full_sensor_data_0_o_TX_DV_BF,
      o_TX_DV_HK => I2C_full_sensor_data_0_o_TX_DV_HK,
      o_TX_DV_HTR => NLW_I2C_full_sensor_data_0_o_TX_DV_HTR_UNCONNECTED,
      o_TX_DV_RAD => NLW_I2C_full_sensor_data_0_o_TX_DV_RAD_UNCONNECTED,
      o_TX_RTC_data(23 downto 0) => I2C_full_sensor_data_0_o_TX_RTC_data(23 downto 0),
      o_TX_TEMP_data(31 downto 0) => I2C_full_sensor_data_0_o_TX_TEMP_data(31 downto 0),
      o_i2c_address(6 downto 0) => I2C_full_sensor_data_0_o_i2c_address(6 downto 0),
      o_i2c_data_wr(7 downto 0) => I2C_full_sensor_data_0_o_i2c_data_wr(7 downto 0),
      o_i2c_ena => I2C_full_sensor_data_0_o_i2c_ena,
      o_i2c_rw => I2C_full_sensor_data_0_o_i2c_rw,
      rst => Switchmod_0_o_signal
    );
I2Cmod_0: component testwith1speed_I2Cmod_0_0
     port map (
      ack_error => NLW_I2Cmod_0_ack_error_UNCONNECTED,
      addr(6 downto 0) => I2C_full_sensor_data_0_o_i2c_address(6 downto 0),
      busy => I2Cmod_0_busy,
      data_rd(7 downto 0) => I2Cmod_0_data_rd(7 downto 0),
      data_wr(7 downto 0) => I2C_full_sensor_data_0_o_i2c_data_wr(7 downto 0),
      ena => I2C_full_sensor_data_0_o_i2c_ena,
      reset_n => Switchmod_0_o_signal,
      rw => I2C_full_sensor_data_0_o_i2c_rw,
      scl_i => scl_i,
      scl_o => scl_o,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_o => sda_o,
      sda_t => sda_t,
      sysclk => sysclk
    );
Pulse_Per_Second_100_0: component testwith1speed_Pulse_Per_Second_100_0_0
     port map (
      led0 => NLW_Pulse_Per_Second_100_0_led0_UNCONNECTED,
      o_pulse => Pulse_Per_Second_100_0_o_pulse,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
RW_ROUTER_100MHZ_0: component testwith1speed_RW_ROUTER_100MHZ_0_0
     port map (
      A(21 downto 0) => SRAM1A(21 downto 0),
      A_read(21 downto 0) => Read1_100MHZ_0_A(21 downto 0),
      A_write(21 downto 0) => Write1_100MHZ_0_A(21 downto 0),
      CE_n => SRAM1_EN,
      CE_n_read => Read1_100MHZ_0_CE_n,
      CE_n_write => Write1_100MHZ_0_CE_n,
      DQ_o(15 downto 0) => SRAM1DQ_o(15 downto 0),
      DQ_o_read(15 downto 0) => Read1_100MHZ_0_DQ_o(15 downto 0),
      DQ_o_write(15 downto 0) => Write1_100MHZ_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => SRAM1DQ_t(15 downto 0),
      DQ_t_read(15 downto 0) => Read1_100MHZ_0_DQ_t(15 downto 0),
      DQ_t_write(15 downto 0) => Write1_100MHZ_0_DQ_t(15 downto 0),
      Toggle => Write1_100MHZ_0_write_complete,
      WE_n => SRAM1_WE,
      WE_n_read => Read1_100MHZ_0_WE_n,
      WE_n_write => Write1_100MHZ_0_WE_n,
      decoder(2 downto 0) => SRAM1DEC(2 downto 0),
      decoder_read(2 downto 0) => Read1_100MHZ_0_decoder(2 downto 0),
      decoder_write(2 downto 0) => Write1_100MHZ_0_decoder(2 downto 0),
      led1 => NLW_RW_ROUTER_100MHZ_0_led1_UNCONNECTED,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk
    );
Read1_100MHZ_0: component testwith1speed_Read1_100MHZ_0_0
     port map (
      A(21 downto 0) => Read1_100MHZ_0_A(21 downto 0),
      CE_n => Read1_100MHZ_0_CE_n,
      DQ_i(15 downto 0) => SRAM1DQ_i(15 downto 0),
      DQ_o(15 downto 0) => Read1_100MHZ_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Read1_100MHZ_0_DQ_t(15 downto 0),
      WE_n => Read1_100MHZ_0_WE_n,
      addresses_searched => NLW_Read1_100MHZ_0_addresses_searched_UNCONNECTED,
      decoder(2 downto 0) => Read1_100MHZ_0_decoder(2 downto 0),
      led0 => NLW_Read1_100MHZ_0_led0_UNCONNECTED,
      led1 => NLW_Read1_100MHZ_0_led1_UNCONNECTED,
      o_BF_data(46 downto 0) => Read1_100MHZ_0_o_BF_data(46 downto 0),
      o_BF_drive => Read1_100MHZ_0_o_BF_drive,
      read_complete => NLW_Read1_100MHZ_0_read_complete_UNCONNECTED,
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write1_100MHZ_0_write_complete
    );
Switchmod_0: component testwith1speed_Switchmod_0_0
     port map (
      i_signal => TC_distributor_0_cmd0,
      led0 => NLW_Switchmod_0_led0_UNCONNECTED,
      o_signal => Switchmod_0_o_signal,
      sysclk => sysclk
    );
TC_distributor_0: component testwith1speed_TC_distributor_0_0
     port map (
      TC(7 downto 0) => UART_RX_100MHZ_0_o_RX_byte(7 downto 0),
      TC_DV => UART_RX_100MHZ_0_o_RX_DV,
      clk => sysclk,
      cmd0 => TC_distributor_0_cmd0,
      cmd1 => NLW_TC_distributor_0_cmd1_UNCONNECTED,
      cmd2 => NLW_TC_distributor_0_cmd2_UNCONNECTED,
      cmd3 => NLW_TC_distributor_0_cmd3_UNCONNECTED,
      rst => Switchmod_0_o_signal
    );
TM_packet_sender_0: component testwith1speed_TM_packet_sender_0_0
     port map (
      clk => sysclk,
      i_BF_DV => BF_formatter_0_BF_packet_DV,
      i_BF_data(223 downto 0) => BF_formatter_0_BF_packet(223 downto 0),
      i_HK_DV => HK_formatter_0_HK_packet_DV,
      i_HK_data(471 downto 0) => HK_formatter_0_HK_packet(471 downto 0),
      i_RAD_DV => '0',
      i_RAD_data(10007 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      i_TX_active => UART_TX_100MHZ_0_o_TX_Active,
      i_TX_done => UART_TX_100MHZ_0_o_TX_Done,
      led1 => NLW_TM_packet_sender_0_led1_UNCONNECTED,
      led2 => NLW_TM_packet_sender_0_led2_UNCONNECTED,
      o_BF_got => TM_packet_sender_0_o_BF_got,
      o_HK_got => TM_packet_sender_0_o_HK_got,
      o_RAD_got => NLW_TM_packet_sender_0_o_RAD_got_UNCONNECTED,
      o_TX_DV => TM_packet_sender_0_o_TX_DV,
      o_TX_byte(7 downto 0) => TM_packet_sender_0_o_TX_byte(7 downto 0),
      rst => Switchmod_0_o_signal
    );
UART_RX_100MHZ_0: component testwith1speed_UART_RX_100MHZ_0_0
     port map (
      i_RX_Serial => UART_MCU_RX,
      o_RX_DV => UART_RX_100MHZ_0_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RX_100MHZ_0_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_RX_100MHZ_1: component testwith1speed_UART_RX_100MHZ_1_0
     port map (
      i_RX_Serial => GNSS_RX,
      o_RX_DV => UART_RX_100MHZ_1_o_RX_DV,
      o_RX_byte(7 downto 0) => UART_RX_100MHZ_1_o_RX_byte(7 downto 0),
      sysclk => sysclk
    );
UART_TX_100MHZ_0: component testwith1speed_UART_TX_100MHZ_0_0
     port map (
      i_TX_Byte(7 downto 0) => TM_packet_sender_0_o_TX_byte(7 downto 0),
      i_TX_DV => TM_packet_sender_0_o_TX_DV,
      o_TX_Active => UART_TX_100MHZ_0_o_TX_Active,
      o_TX_Done => UART_TX_100MHZ_0_o_TX_Done,
      o_TX_Serial => UART_MCU_TX,
      sysclk => sysclk
    );
Write1_100MHZ_0: component testwith1speed_Write1_100MHZ_0_0
     port map (
      A(21 downto 0) => Write1_100MHZ_0_A(21 downto 0),
      CE_n => Write1_100MHZ_0_CE_n,
      DQ_o(15 downto 0) => Write1_100MHZ_0_DQ_o(15 downto 0),
      DQ_t(15 downto 0) => Write1_100MHZ_0_DQ_t(15 downto 0),
      WE_n => Write1_100MHZ_0_WE_n,
      decoder(2 downto 0) => Write1_100MHZ_0_decoder(2 downto 0),
      reset_n => Switchmod_0_o_signal,
      sysclk => sysclk,
      write_complete => Write1_100MHZ_0_write_complete
    );
end STRUCTURE;

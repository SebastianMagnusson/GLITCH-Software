set_property SLEW FAST [get_ports {{SRAM2DQ[*]} {SRAM2A[*]} SRAM2_EN {SRAM1DEC[*]} {SRAM1DQ[*]} SRAM1_EN UART_RAD_RX UART_RAD_TX RTC_MFP SCL SDA P427 P431 P432 P435 P436 P443 P444 P447 P448 P455 P456 P459 P460 P463 P468 P470 P471 P474 P478 P482}]
set_property IOSTANDARD LVCMOS33 [get_ports {{SRAM2DQ[*]} {SRAM2A[*]} SRAM2_EN {SRAM1DEC[*]} {SRAM1DQ[*]} SRAM1_EN UART_RAD_RX UART_RAD_TX RTC_MFP SCL SDA P427 P431 P432 P435 P436 P443 P444 P447 P448 P455 P456 P459 P460 P463 P468 P470 P471 P474 P478 P482}]
set_property IOSTANDARD LVCMOS33 [get_ports {HEATER_1 HEATER_2 GNSS_FIX GNSS_TX GNSS_RX {SRAM2DEC[*]} {SRAM2A[*]} SRAM2_WE SRAM1_WE {SRAM1A[*]} {SRAM1DQ[*]} SD_MISO SD_MOSI SD_SCK SD_CS SD_DET UART_MCU_RX UART_MCU_TX P515 P519 P523 P527 P530 P533 P534 P537 P538 P539 P541 P542 P543 P553 P554 P557 P561}]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####################################################################
#                          Clock 100 MHz                            #
#####################################################################

set_property IOSTANDARD LVCMOS33 [get_ports sysclk]
set_property PACKAGE_PIN F4 [get_ports sysclk]

#####################################################################
#                          DDR3       : MT41J128M16XX-125           #
#                          Frequency  : 400 MHz                     #
#                          Data Width : 16                          #
#####################################################################

# PadFunction: IO_L23P_T3_34

# PadFunction: IO_L20N_T3_34

# PadFunction: IO_L24P_T3_34

# PadFunction: IO_L22P_T3_34

# PadFunction: IO_L20P_T3_34

# PadFunction: IO_L19P_T3_34

# PadFunction: IO_L22N_T3_34

# PadFunction: IO_L19N_T3_VREF_34

# PadFunction: IO_L12P_T1_MRCC_34

# PadFunction: IO_L8N_T1_34

# PadFunction: IO_L10P_T1_34

# PadFunction: IO_L8P_T1_34

# PadFunction: IO_L10N_T1_34

# PadFunction: IO_L12N_T1_MRCC_34

# PadFunction: IO_L7N_T1_34

# PadFunction: IO_L11N_T1_SRCC_34

# PadFunction: IO_L2P_T0_34

# PadFunction: IO_L18N_T2_34

# PadFunction: IO_L5P_T0_34

# PadFunction: IO_L15N_T2_DQS_34

# PadFunction: IO_L13P_T2_MRCC_34

# PadFunction: IO_L5N_T0_34

# PadFunction: IO_L3N_T0_DQS_34

# PadFunction: IO_L4N_T0_34

# PadFunction: IO_L13N_T2_MRCC_34

# PadFunction: IO_L2N_T0_34

# PadFunction: IO_L17N_T2_34

# PadFunction: IO_L18P_T2_34

# PadFunction: IO_L14P_T2_SRCC_34

# PadFunction: IO_L16P_T2_34

# PadFunction: IO_L17P_T2_34

# PadFunction: IO_L14N_T2_SRCC_34

# PadFunction: IO_L15P_T2_DQS_34

# PadFunction: IO_L16N_T2_34

# PadFunction: IO_L1P_T0_34

# PadFunction: IO_L3P_T0_DQS_34

# PadFunction: IO_25_34

# PadFunction: IO_L1N_T0_34

# PadFunction: IO_L4P_T0_34

# PadFunction: IO_0_34

# PadFunction: IO_L23N_T3_34

# PadFunction: IO_L7P_T1_34

# PadFunction: IO_L21P_T3_DQS_34

# PadFunction: IO_L21N_T3_DQS_34

# PadFunction: IO_L9P_T1_DQS_34

# PadFunction: IO_L9N_T1_DQS_34

# PadFunction: IO_L6P_T0_34

# PadFunction: IO_L6N_T0_VREF_34

#####################################################################
#                          FTDI - FT2232H                           #
#####################################################################







#####################################################################
#                          QSPI - Flash                             #
#####################################################################






#####################################################################
#                          Header P4                                #
#####################################################################
#set_property SLEW FAST [get_ports  {Header_P4[*]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Header_P4[*]}]



set_property PACKAGE_PIN F1 [get_ports {SRAM1DEC[0]}]
set_property PACKAGE_PIN E2 [get_ports {SRAM1DEC[1]}]
set_property PACKAGE_PIN J3 [get_ports {SRAM1DEC[2]}]
set_property PACKAGE_PIN E5 [get_ports {SRAM1DQ[0]}]
set_property PACKAGE_PIN E6 [get_ports {SRAM1DQ[8]}]
set_property PACKAGE_PIN F3 [get_ports {SRAM1DQ[1]}]
set_property PACKAGE_PIN F5 [get_ports {SRAM1DQ[9]}]
set_property PACKAGE_PIN G3 [get_ports SCL]
set_property PACKAGE_PIN H5 [get_ports {SRAM1DQ[2]}]
set_property PACKAGE_PIN H6 [get_ports {SRAM1DQ[10]}]
set_property PACKAGE_PIN H4 [get_ports SDA]
set_property PACKAGE_PIN J4 [get_ports SRAM1_EN]
set_property PACKAGE_PIN F6 [get_ports {SRAM1DQ[3]}]
set_property PACKAGE_PIN G6 [get_ports {SRAM1DQ[11]}]

#####################################################################
#                          Header P5                                #
#####################################################################
#set_property SLEW FAST [get_ports  {Header_P5[*]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Header_P5[*]}]

set_property SLEW FAST [get_ports SRAM1_WE]
set_property SLEW FAST [get_ports {SRAM1A[21]}]
set_property SLEW FAST [get_ports {SRAM1A[20]}]
set_property SLEW FAST [get_ports {SRAM1A[19]}]
set_property SLEW FAST [get_ports {SRAM1A[18]}]
set_property SLEW FAST [get_ports {SRAM1A[17]}]
set_property SLEW FAST [get_ports {SRAM1A[16]}]
set_property SLEW FAST [get_ports {SRAM1A[15]}]
set_property SLEW FAST [get_ports {SRAM1A[14]}]
set_property SLEW FAST [get_ports {SRAM1A[13]}]
set_property SLEW FAST [get_ports {SRAM1A[12]}]
set_property SLEW FAST [get_ports {SRAM1A[11]}]
set_property SLEW FAST [get_ports {SRAM1A[10]}]
set_property SLEW FAST [get_ports {SRAM1A[9]}]
set_property SLEW FAST [get_ports {SRAM1A[8]}]
set_property SLEW FAST [get_ports {SRAM1A[7]}]
set_property SLEW FAST [get_ports {SRAM1A[6]}]
set_property SLEW FAST [get_ports {SRAM1A[5]}]
set_property SLEW FAST [get_ports {SRAM1A[4]}]
set_property SLEW FAST [get_ports {SRAM1A[3]}]
set_property SLEW FAST [get_ports {SRAM1A[2]}]
set_property SLEW FAST [get_ports {SRAM1A[1]}]
set_property SLEW FAST [get_ports {SRAM1A[0]}]
set_property SLEW FAST [get_ports UART_MCU_TX]

set_property PACKAGE_PIN H15 [get_ports GNSS_RX]
set_property PACKAGE_PIN R13 [get_ports UART_MCU_RX]
set_property PACKAGE_PIN M17 [get_ports UART_MCU_TX]
set_property PACKAGE_PIN P15 [get_ports SRAM1_WE]
set_property PACKAGE_PIN R15 [get_ports {SRAM1A[10]}]
set_property PACKAGE_PIN N14 [get_ports {SRAM1A[11]}]
set_property PACKAGE_PIN P14 [get_ports {SRAM1A[12]}]
set_property PACKAGE_PIN R17 [get_ports {SRAM1A[0]}]
set_property PACKAGE_PIN N17 [get_ports {SRAM1A[13]}]
set_property PACKAGE_PIN P18 [get_ports {SRAM1A[14]}]
set_property PACKAGE_PIN U16 [get_ports {SRAM1DQ[4]}]
set_property PACKAGE_PIN V17 [get_ports {SRAM1DQ[12]}]
set_property PACKAGE_PIN U17 [get_ports {SRAM1A[15]}]
set_property PACKAGE_PIN U18 [get_ports {SRAM1A[9]}]
set_property PACKAGE_PIN U14 [get_ports {SRAM1DQ[5]}]
set_property PACKAGE_PIN V14 [get_ports {SRAM1DQ[13]}]
set_property PACKAGE_PIN V15 [get_ports {SRAM1A[8]}]
set_property PACKAGE_PIN V16 [get_ports {SRAM1A[19]}]
set_property PACKAGE_PIN T14 [get_ports {SRAM1DQ[6]}]
set_property PACKAGE_PIN T15 [get_ports {SRAM1DQ[14]}]
set_property PACKAGE_PIN R16 [get_ports {SRAM1A[20]}]
set_property PACKAGE_PIN T16 [get_ports {SRAM1A[21]}]
set_property PACKAGE_PIN T9 [get_ports {SRAM1DQ[7]}]
set_property PACKAGE_PIN T10 [get_ports {SRAM1DQ[15]}]
set_property PACKAGE_PIN T13 [get_ports {SRAM1A[18]}]
set_property PACKAGE_PIN U13 [get_ports {SRAM1A[17]}]
set_property PACKAGE_PIN T11 [get_ports {SRAM1A[16]}]
set_property PACKAGE_PIN U11 [get_ports {SRAM1A[1]}]
set_property PACKAGE_PIN R10 [get_ports {SRAM1A[7]}]
set_property PACKAGE_PIN R11 [get_ports {SRAM1A[6]}]
set_property PACKAGE_PIN V10 [get_ports {SRAM1A[2]}]
set_property PACKAGE_PIN V11 [get_ports {SRAM1A[3]}]
set_property PACKAGE_PIN U12 [get_ports {SRAM1A[5]}]
set_property PACKAGE_PIN V12 [get_ports {SRAM1A[4]}]

set_property CONFIG_MODE SPIx1 [current_design]

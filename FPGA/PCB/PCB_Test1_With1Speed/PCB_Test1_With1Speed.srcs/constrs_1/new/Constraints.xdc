set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####################################################################
#                          Clock 100 MHz                            #
#####################################################################

set_property IOSTANDARD LVCMOS33 [get_ports {sysclk}]
set_property PACKAGE_PIN F4 [get_ports {sysclk}]

#####################################################################
#                          DDR3       : MT41J128M16XX-125           #
#                          Frequency  : 400 MHz                     #
#                          Data Width : 16                          #
#####################################################################

# PadFunction: IO_L23P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[0]}]
set_property PACKAGE_PIN R7 [get_ports {ddr3_dq[0]}]

# PadFunction: IO_L20N_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[1]}]
set_property PACKAGE_PIN V6 [get_ports {ddr3_dq[1]}]

# PadFunction: IO_L24P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[2]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[2]}]
set_property PACKAGE_PIN R8 [get_ports {ddr3_dq[2]}]

# PadFunction: IO_L22P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[3]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[3]}]
set_property PACKAGE_PIN U7 [get_ports {ddr3_dq[3]}]

# PadFunction: IO_L20P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[4]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[4]}]
set_property PACKAGE_PIN V7 [get_ports {ddr3_dq[4]}]

# PadFunction: IO_L19P_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[5]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[5]}]
set_property PACKAGE_PIN R6 [get_ports {ddr3_dq[5]}]

# PadFunction: IO_L22N_T3_34 
set_property SLEW FAST [get_ports {ddr3_dq[6]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[6]}]
set_property PACKAGE_PIN U6 [get_ports {ddr3_dq[6]}]

# PadFunction: IO_L19N_T3_VREF_34 
set_property SLEW FAST [get_ports {ddr3_dq[7]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[7]}]
set_property PACKAGE_PIN R5 [get_ports {ddr3_dq[7]}]

# PadFunction: IO_L12P_T1_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_dq[8]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[8]}]
set_property PACKAGE_PIN T5 [get_ports {ddr3_dq[8]}]

# PadFunction: IO_L8N_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[9]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[9]}]
set_property PACKAGE_PIN U3 [get_ports {ddr3_dq[9]}]

# PadFunction: IO_L10P_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[10]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[10]}]
set_property PACKAGE_PIN V5 [get_ports {ddr3_dq[10]}]

# PadFunction: IO_L8P_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[11]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[11]}]
set_property PACKAGE_PIN U4 [get_ports {ddr3_dq[11]}]

# PadFunction: IO_L10N_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[12]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[12]}]
set_property PACKAGE_PIN V4 [get_ports {ddr3_dq[12]}]

# PadFunction: IO_L12N_T1_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_dq[13]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[13]}]
set_property PACKAGE_PIN T4 [get_ports {ddr3_dq[13]}]

# PadFunction: IO_L7N_T1_34 
set_property SLEW FAST [get_ports {ddr3_dq[14]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[14]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[14]}]
set_property PACKAGE_PIN V1 [get_ports {ddr3_dq[14]}]

# PadFunction: IO_L11N_T1_SRCC_34 
set_property SLEW FAST [get_ports {ddr3_dq[15]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dq[15]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dq[15]}]
set_property PACKAGE_PIN T3 [get_ports {ddr3_dq[15]}]

# PadFunction: IO_L2P_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[13]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[13]}]
set_property PACKAGE_PIN K3 [get_ports {ddr3_addr[13]}]

# PadFunction: IO_L18N_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[12]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[12]}]
set_property PACKAGE_PIN N6 [get_ports {ddr3_addr[12]}]

# PadFunction: IO_L5P_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[11]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[11]}]
set_property PACKAGE_PIN K5 [get_ports {ddr3_addr[11]}]

# PadFunction: IO_L15N_T2_DQS_34 
set_property SLEW FAST [get_ports {ddr3_addr[10]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[10]}]
set_property PACKAGE_PIN R2 [get_ports {ddr3_addr[10]}]

# PadFunction: IO_L13P_T2_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_addr[9]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[9]}]
set_property PACKAGE_PIN N5 [get_ports {ddr3_addr[9]}]

# PadFunction: IO_L5N_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[8]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[8]}]
set_property PACKAGE_PIN L4 [get_ports {ddr3_addr[8]}]

# PadFunction: IO_L3N_T0_DQS_34 
set_property SLEW FAST [get_ports {ddr3_addr[7]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[7]}]
set_property PACKAGE_PIN N1 [get_ports {ddr3_addr[7]}]

# PadFunction: IO_L4N_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[6]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[6]}]
set_property PACKAGE_PIN M2 [get_ports {ddr3_addr[6]}]

# PadFunction: IO_L13N_T2_MRCC_34 
set_property SLEW FAST [get_ports {ddr3_addr[5]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[5]}]
set_property PACKAGE_PIN P5 [get_ports {ddr3_addr[5]}]

# PadFunction: IO_L2N_T0_34 
set_property SLEW FAST [get_ports {ddr3_addr[4]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[4]}]
set_property PACKAGE_PIN L3 [get_ports {ddr3_addr[4]}]

# PadFunction: IO_L17N_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[3]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[3]}]
set_property PACKAGE_PIN T1 [get_ports {ddr3_addr[3]}]

# PadFunction: IO_L18P_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[2]}]
set_property PACKAGE_PIN M6 [get_ports {ddr3_addr[2]}]

# PadFunction: IO_L14P_T2_SRCC_34 
set_property SLEW FAST [get_ports {ddr3_addr[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[1]}]
set_property PACKAGE_PIN P4 [get_ports {ddr3_addr[1]}]

# PadFunction: IO_L16P_T2_34 
set_property SLEW FAST [get_ports {ddr3_addr[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_addr[0]}]
set_property PACKAGE_PIN M4 [get_ports {ddr3_addr[0]}]

# PadFunction: IO_L17P_T2_34 
set_property SLEW FAST [get_ports {ddr3_ba[2]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[2]}]
set_property PACKAGE_PIN R1 [get_ports {ddr3_ba[2]}]

# PadFunction: IO_L14N_T2_SRCC_34 
set_property SLEW FAST [get_ports {ddr3_ba[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[1]}]
set_property PACKAGE_PIN P3 [get_ports {ddr3_ba[1]}]

# PadFunction: IO_L15P_T2_DQS_34 
set_property SLEW FAST [get_ports {ddr3_ba[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ba[0]}]
set_property PACKAGE_PIN P2 [get_ports {ddr3_ba[0]}]

# PadFunction: IO_L16N_T2_34 
set_property SLEW FAST [get_ports {ddr3_ras_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_ras_n}]
set_property PACKAGE_PIN N4 [get_ports {ddr3_ras_n}]

# PadFunction: IO_L1P_T0_34 
set_property SLEW FAST [get_ports {ddr3_cas_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cas_n}]
set_property PACKAGE_PIN L1 [get_ports {ddr3_cas_n}]

# PadFunction: IO_L3P_T0_DQS_34 
set_property SLEW FAST [get_ports {ddr3_we_n}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_we_n}]
set_property PACKAGE_PIN N2 [get_ports {ddr3_we_n}]

# PadFunction: IO_25_34 
set_property SLEW FAST [get_ports {ddr3_reset_n}]
set_property IOSTANDARD LVCMOS15 [get_ports {ddr3_reset_n}]
set_property PACKAGE_PIN U8 [get_ports {ddr3_reset_n}]

# PadFunction: IO_L1N_T0_34 
set_property SLEW FAST [get_ports {ddr3_cke[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cke[0]}]
set_property PACKAGE_PIN M1 [get_ports {ddr3_cke[0]}]

# PadFunction: IO_L4P_T0_34 
set_property SLEW FAST [get_ports {ddr3_odt[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_odt[0]}]
set_property PACKAGE_PIN M3 [get_ports {ddr3_odt[0]}]

# PadFunction: IO_0_34 
set_property SLEW FAST [get_ports {ddr3_cs_n[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_cs_n[0]}]
set_property PACKAGE_PIN K6 [get_ports {ddr3_cs_n[0]}]

# PadFunction: IO_L23N_T3_34 
set_property SLEW FAST [get_ports {ddr3_dm[0]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[0]}]
set_property PACKAGE_PIN T6 [get_ports {ddr3_dm[0]}]

# PadFunction: IO_L7P_T1_34 
set_property SLEW FAST [get_ports {ddr3_dm[1]}]
set_property IOSTANDARD SSTL15 [get_ports {ddr3_dm[1]}]
set_property PACKAGE_PIN U1 [get_ports {ddr3_dm[1]}]

# PadFunction: IO_L21P_T3_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_p[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[0]}]
set_property PACKAGE_PIN U9 [get_ports {ddr3_dqs_p[0]}]

# PadFunction: IO_L21N_T3_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_n[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[0]}]
set_property PACKAGE_PIN V9 [get_ports {ddr3_dqs_n[0]}]

# PadFunction: IO_L9P_T1_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_p[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_p[1]}]
set_property PACKAGE_PIN U2 [get_ports {ddr3_dqs_p[1]}]

# PadFunction: IO_L9N_T1_DQS_34 
set_property SLEW FAST [get_ports {ddr3_dqs_n[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr3_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_dqs_n[1]}]
set_property PACKAGE_PIN V2 [get_ports {ddr3_dqs_n[1]}]

# PadFunction: IO_L6P_T0_34 
set_property SLEW FAST [get_ports {ddr3_ck_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_p[0]}]
set_property PACKAGE_PIN L6 [get_ports {ddr3_ck_p[0]}]

# PadFunction: IO_L6N_T0_VREF_34 
set_property SLEW FAST [get_ports {ddr3_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {ddr3_ck_n[0]}]
set_property PACKAGE_PIN L5 [get_ports {ddr3_ck_n[0]}]

#####################################################################
#                          FTDI - FT2232H                           #
#####################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {data[*]}]

set_property PACKAGE_PIN J18 [get_ports {data[7]}]
set_property PACKAGE_PIN J17 [get_ports {data[6]}]
set_property PACKAGE_PIN G18 [get_ports {data[5]}]
set_property PACKAGE_PIN F18 [get_ports {data[4]}]
set_property PACKAGE_PIN E18 [get_ports {data[3]}]
set_property PACKAGE_PIN D18 [get_ports {data[2]}]
set_property PACKAGE_PIN B18 [get_ports {data[1]}]
set_property PACKAGE_PIN A18 [get_ports {data[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {txe}]
set_property PACKAGE_PIN K16 [get_ports {txe}]

set_property IOSTANDARD LVCMOS33 [get_ports {rxf}]
set_property PACKAGE_PIN G13 [get_ports {rxf}]

set_property IOSTANDARD LVCMOS33 [get_ports {wr}]
set_property PACKAGE_PIN M13 [get_ports {wr}]

set_property IOSTANDARD LVCMOS33 [get_ports {rd}]
set_property PACKAGE_PIN D9 [get_ports {rd}]

set_property IOSTANDARD LVCMOS33 [get_ports {siwub}]
set_property PACKAGE_PIN D10 [get_ports {siwub}]

#####################################################################
#                          QSPI - Flash                             #
#####################################################################
set_property SLEW FAST [get_ports {QSPI_FLASH_IO0}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_FLASH_IO0}]
set_property PACKAGE_PIN K17 [get_ports {QSPI_FLASH_IO0}]

set_property SLEW FAST [get_ports {QSPI_FLASH_IO1}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_FLASH_IO1}]
set_property PACKAGE_PIN K18 [get_ports {QSPI_FLASH_IO1}]

set_property SLEW FAST [get_ports {QSPI_FLASH_IO2}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_FLASH_IO2}]
set_property PACKAGE_PIN L14 [get_ports {QSPI_FLASH_IO2}]

set_property SLEW FAST [get_ports {QSPI_FLASH_IO3}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_FLASH_IO3}]
set_property PACKAGE_PIN M14 [get_ports {QSPI_FLASH_IO3}]

set_property SLEW FAST [get_ports {QSPI_FLASH_SCLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_FLASH_SCLK}]
set_property PACKAGE_PIN E9 [get_ports {QSPI_FLASH_SCLK}]

set_property SLEW FAST [get_ports {QSPI_FLASH_SS}]
set_property IOSTANDARD LVCMOS33 [get_ports {QSPI_FLASH_SS}]
set_property PACKAGE_PIN L13 [get_ports {QSPI_FLASH_SS}]

#####################################################################
#                          Header P4                                #
#####################################################################
#set_property SLEW FAST [get_ports  {Header_P4[*]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {Header_P4[*]}]

set_property SLEW FAST [get_ports { \
  SRAM2DQ[*] SRAM2A[*] SRAM2_EN SRAM1DEC[*] SRAM1DQ[*] SRAM1_EN \
  UART_RAD_RX UART_RAD_TX RTC_MFP SCL SDA \
  P427 P431 P432 P435 P436 P443 P444 P447 P448 P455 P456 \
  P459 P460 P463 P468 P470 P471 P474 P478 P482 \
}]
set_property IOSTANDARD LVCMOS33 [get_ports { \
  SRAM2DQ[*] SRAM2A[*] SRAM2_EN SRAM1DEC[*] SRAM1DQ[*] SRAM1_EN \
  UART_RAD_RX UART_RAD_TX RTC_MFP SCL SDA \
  P427 P431 P432 P435 P436 P443 P444 P447 P448 P455 P456 \
  P459 P460 P463 P468 P470 P471 P474 P478 P482 \
}]


set_property PACKAGE_PIN A14 [get_ports {SRAM2DQ[12]}]
set_property PACKAGE_PIN A13 [get_ports {SRAM2DQ[5]}]
set_property PACKAGE_PIN D13 [get_ports {SRAM2DQ[13]}]
set_property PACKAGE_PIN D12 [get_ports {SRAM2DQ[6]}]
set_property PACKAGE_PIN A11 [get_ports {SRAM2A[10]}]
set_property PACKAGE_PIN B11 [get_ports {SRAM2A[11]}]
set_property PACKAGE_PIN F14 [get_ports {SRAM2DQ[14]}]
set_property PACKAGE_PIN F13 [get_ports {SRAM2DQ[7]}]
set_property PACKAGE_PIN B14 [get_ports {SRAM2DQ[4]}]
set_property PACKAGE_PIN B13 [get_ports {SRAM2A[0]}]
set_property PACKAGE_PIN A16 [get_ports {SRAM2DQ[15]}]
set_property PACKAGE_PIN A15 [get_ports {SRAM2A[16]}]
set_property PACKAGE_PIN A9  [get_ports {SRAM2DQ[0]}]
set_property PACKAGE_PIN A10 [get_ports {SRAM2DQ[8]}]
set_property PACKAGE_PIN B12 [get_ports {SRAM2A[12]}]
set_property PACKAGE_PIN C12 [get_ports {SRAM2A[13]}]
set_property PACKAGE_PIN A8  [get_ports {SRAM2DQ[1]}]
set_property PACKAGE_PIN B8  [get_ports {SRAM2DQ[9]}]
set_property PACKAGE_PIN C10 [get_ports {SRAM2A[14]}]
set_property PACKAGE_PIN C11 [get_ports {SRAM2A[15]}]
set_property PACKAGE_PIN B9 [get_ports {SRAM2DQ[2]}]
set_property PACKAGE_PIN C9 [get_ports {SRAM2DQ[10]}]
set_property PACKAGE_PIN B6 [get_ports {P427}]
set_property PACKAGE_PIN B7 [get_ports {SRAM2_EN}]
set_property PACKAGE_PIN C5 [get_ports {SRAM2DQ[3]}]
set_property PACKAGE_PIN C6 [get_ports {SRAM2DQ[11]}]
set_property PACKAGE_PIN A5 [get_ports {P431}]
set_property PACKAGE_PIN A6 [get_ports {P432}]
set_property PACKAGE_PIN C7 [get_ports {SRAM2A[9]}]
set_property PACKAGE_PIN D8 [get_ports {SRAM2A[8]}]
set_property PACKAGE_PIN D7 [get_ports {P435}]
set_property PACKAGE_PIN E7 [get_ports {P436}]
set_property PACKAGE_PIN D4 [get_ports {SRAM2A[19]}]
set_property PACKAGE_PIN D5 [get_ports {SRAM2A[20]}]
set_property PACKAGE_PIN D3 [get_ports {P443}]
set_property PACKAGE_PIN E3 [get_ports {P444}]
set_property PACKAGE_PIN A3 [get_ports {P447}]
set_property PACKAGE_PIN A4 [get_ports {P448}]
set_property PACKAGE_PIN B2 [get_ports {P455}]
set_property PACKAGE_PIN B3 [get_ports {P456}]
set_property PACKAGE_PIN C1 [get_ports {SRAM2A[21]}]
set_property PACKAGE_PIN C2 [get_ports {SRAM2A[18]}]
set_property PACKAGE_PIN A1 [get_ports {P459}]
set_property PACKAGE_PIN B1 [get_ports {P460}]
set_property PACKAGE_PIN G1 [get_ports {SRAM2A[17]}]
set_property PACKAGE_PIN H1 [get_ports {SRAM2A[7]}]
set_property PACKAGE_PIN E1 [get_ports {P463}]
set_property PACKAGE_PIN F1 [get_ports {SRAM1DEC[0]}]
set_property PACKAGE_PIN D2 [get_ports {P468}]
set_property PACKAGE_PIN E2 [get_ports {SRAM1DEC[1]}]
set_property PACKAGE_PIN K1 [get_ports {UART_RAD_RX}]
set_property PACKAGE_PIN K2 [get_ports {P470}]
set_property PACKAGE_PIN J2 [get_ports {P471}]
set_property PACKAGE_PIN J3 [get_ports {SRAM1DEC[2]}]
set_property PACKAGE_PIN B4 [get_ports {UART_RAD_TX}]
set_property PACKAGE_PIN C4 [get_ports {P474}]
set_property PACKAGE_PIN E5 [get_ports {SRAM1DQ[0]}]
set_property PACKAGE_PIN E6 [get_ports {SRAM1DQ[8]}]
set_property PACKAGE_PIN G2 [get_ports {RTC_MFP}]
set_property PACKAGE_PIN H2 [get_ports {P478}]
set_property PACKAGE_PIN F3 [get_ports {SRAM1DQ[1]}]
set_property PACKAGE_PIN F5 [get_ports {SRAM1DQ[9]}]
set_property PACKAGE_PIN G3 [get_ports {SCL}]
set_property PACKAGE_PIN G4 [get_ports {P482}]
set_property PACKAGE_PIN H5 [get_ports {SRAM1DQ[2]}]
set_property PACKAGE_PIN H6 [get_ports {SRAM1DQ[10]}]
set_property PACKAGE_PIN H4 [get_ports {SDA}]
set_property PACKAGE_PIN J4 [get_ports {SRAM1_EN}]
set_property PACKAGE_PIN F6 [get_ports {SRAM1DQ[3]}]
set_property PACKAGE_PIN G6 [get_ports {SRAM1DQ[11]}]

#####################################################################
#                          Header P5                                #
#####################################################################
#set_property SLEW FAST [get_ports  {Header_P5[*]}]   
#set_property IOSTANDARD LVCMOS33 [get_ports {Header_P5[*]}]

set_property SLEW FAST [get_ports { \
  HEATER_1 HEATER_2 GNSS_FIX GNSS_TX GNSS_RX \
  SRAM2DEC[*] SRAM2A[*] SRAM2_WE SRAM1_WE SRAM1A[*] SRAM1DQ[*] \
  SD_MISO SD_MOSI SD_SCK SD_CS SD_DET \
  UART_MCU_RX UART_MCU_TX \
  P515 P519 P523 P527 P530 P533 P534 P537 P538 P539 \
  P541 P542 P543 P553 P554 P557 P561 \
}]
set_property IOSTANDARD LVCMOS33 [get_ports { \
  HEATER_1 HEATER_2 GNSS_FIX GNSS_TX GNSS_RX \
  SRAM2DEC[*] SRAM2A[*] SRAM2_WE SRAM1_WE SRAM1A[*] SRAM1DQ[*] \
  SD_MISO SD_MOSI SD_SCK SD_CS SD_DET \
  UART_MCU_RX UART_MCU_TX \
  P515 P519 P523 P527 P530 P533 P534 P537 P538 P539 \
  P541 P542 P543 P553 P554 P557 P561 \
}]

set_property PACKAGE_PIN B16 [get_ports {HEATER_1}]
set_property PACKAGE_PIN B17 [get_ports {SRAM2DEC[2]}]
set_property PACKAGE_PIN D14 [get_ports {HEATER_2}]
set_property PACKAGE_PIN C14 [get_ports {SRAM2DEC[1]}]
set_property PACKAGE_PIN C16 [get_ports {P515}]
set_property PACKAGE_PIN C17 [get_ports {SRAM2DEC[0]}]
set_property PACKAGE_PIN H14 [get_ports {SRAM2A[2]}]
set_property PACKAGE_PIN G14 [get_ports {SRAM2A[1]}]
set_property PACKAGE_PIN T8 [get_ports {P519}]
set_property PACKAGE_PIN J5 [get_ports {GNSS_FIX}]
set_property PACKAGE_PIN E15 [get_ports {SRAM2A[4]}]
set_property PACKAGE_PIN E16 [get_ports {SRAM2A[3]}]
set_property PACKAGE_PIN E17 [get_ports {P523}]
set_property PACKAGE_PIN D17 [get_ports {GNSS_TX}]
set_property PACKAGE_PIN F15 [get_ports {SRAM2A[6]}]
set_property PACKAGE_PIN F16 [get_ports {SRAM2A[5]}]
set_property PACKAGE_PIN J14 [get_ports {P527}]
set_property PACKAGE_PIN H15 [get_ports {GNSS_RX}]
set_property PACKAGE_PIN H17 [get_ports {SRAM2_WE}]
set_property PACKAGE_PIN G17 [get_ports {P530}]
set_property PACKAGE_PIN H16 [get_ports {SD_MISO}]
set_property PACKAGE_PIN G16 [get_ports {SD_SCK}]
set_property PACKAGE_PIN K13 [get_ports {P533}]
set_property PACKAGE_PIN J13 [get_ports {P534}]
set_property PACKAGE_PIN L15 [get_ports {SD_CS}]
set_property PACKAGE_PIN L16 [get_ports {SD_MOSI}]
set_property PACKAGE_PIN L18 [get_ports {P537}]
set_property PACKAGE_PIN M18 [get_ports {P538}]
set_property PACKAGE_PIN R12 [get_ports {P539}]
set_property PACKAGE_PIN R13 [get_ports {UART_MCU_RX}]
set_property PACKAGE_PIN K15 [get_ports {P541}]
set_property PACKAGE_PIN J15 [get_ports {P542}]
set_property PACKAGE_PIN M16 [get_ports {P543}]
set_property PACKAGE_PIN M17 [get_ports {UART_MCU_TX}]
set_property PACKAGE_PIN R18 [get_ports {P553}]
set_property PACKAGE_PIN T18 [get_ports {P554}]
set_property PACKAGE_PIN P15 [get_ports {SRAM1_WE}]
set_property PACKAGE_PIN R15 [get_ports {SRAM1A[10]}]
set_property PACKAGE_PIN N15 [get_ports {P557}]
set_property PACKAGE_PIN N16 [get_ports {SD_DET}]
set_property PACKAGE_PIN N14 [get_ports {SRAM1A[11]}]
set_property PACKAGE_PIN P14 [get_ports {SRAM1A[12]}]
set_property PACKAGE_PIN P17 [get_ports {P561}]
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
set_property PACKAGE_PIN T9  [get_ports {SRAM1DQ[7]}]
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
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module PCB_All_SRAM (
  sysclk,
  UART_MCU_RX,
  SRAM1A,
  SRAM1_EN,
  SRAM1_WE,
  SRAM1DQ_o,
  SRAM1DQ_t,
  SRAM1DEC,
  led1,
  GNSS_TX,
  sda_i,
  scl_i,
  sda_o,
  sda_t,
  scl_o,
  scl_t,
  UART_RAD_TX,
  UART_MCU_TX,
  HEATER_1,
  HEATER_2,
  SRAM1DQ_i,
  led0,
  SRAM2DQ_i,
  SRAM2A,
  SRAM2_EN,
  SRAM2_WE,
  SRAM2DQ_o,
  SRAM2DQ_t,
  SRAM2DEC,
  led2,
  led3
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_MCU_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output [21:0]SRAM1A;
  (* X_INTERFACE_IGNORE = "true" *)
  output SRAM1_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output SRAM1_WE;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]SRAM1DQ_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]SRAM1DQ_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]SRAM1DEC;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  input GNSS_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  input sda_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input scl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_t;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_RAD_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_MCU_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  output HEATER_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output HEATER_2;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]SRAM1DQ_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output led0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]SRAM2DQ_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [21:0]SRAM2A;
  (* X_INTERFACE_IGNORE = "true" *)
  output SRAM2_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output SRAM2_WE;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]SRAM2DQ_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]SRAM2DQ_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]SRAM2DEC;
  (* X_INTERFACE_IGNORE = "true" *)
  output led2;
  (* X_INTERFACE_IGNORE = "true" *)
  output led3;

  // stub module has no contents

endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module testwith1speed (
  sysclk,
  SRAM1DQ_i,
  GNSS_TX,
  sda_i,
  scl_i,
  sda_o,
  sda_t,
  scl_o,
  scl_t,
  UART_MCU_RX,
  UART_MCU_TX,
  SRAM1A,
  SRAM1_EN,
  SRAM1_WE,
  SRAM1DQ_o,
  SRAM1DQ_t,
  SRAM1DEC,
  led0,
  led1,
  led2,
  led3,
  HEATER_1,
  HEATER_2
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]SRAM1DQ_i;
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
  input UART_MCU_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_MCU_TX;
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
  output led0;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  output led2;
  (* X_INTERFACE_IGNORE = "true" *)
  output led3;
  (* X_INTERFACE_IGNORE = "true" *)
  output HEATER_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output HEATER_2;

  // stub module has no contents

endmodule

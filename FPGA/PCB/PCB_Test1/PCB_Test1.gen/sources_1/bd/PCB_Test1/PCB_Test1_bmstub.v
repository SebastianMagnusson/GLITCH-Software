// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module PCB_Test1 (
  sysclk,
  SRAM1DQ_i,
  SRAM1DEC,
  SRAM1DQ_t,
  SRAM1DQ_o,
  SRAM1_WE,
  SRAM1_EN,
  SRAM1A,
  sda_i,
  scl_i,
  sda_o,
  sda_t,
  scl_o,
  scl_t,
  GNSS_RX,
  UART_MCU_TX,
  UART_MCU_RX
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]SRAM1DQ_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]SRAM1DEC;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]SRAM1DQ_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]SRAM1DQ_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output SRAM1_WE;
  (* X_INTERFACE_IGNORE = "true" *)
  output SRAM1_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output [21:0]SRAM1A;
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
  input GNSS_RX;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_MCU_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_MCU_RX;

  // stub module has no contents

endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Fpga_and_MCU_Test1 (
  sysclk,
  led0,
  A,
  CE_n,
  DQ_o,
  DQ_t,
  led1,
  DQ_i,
  uart_rxd_out,
  uart_tx_to_mcu,
  sda_o,
  sda_t,
  scl_o,
  scl_t,
  sda_i,
  scl_i,
  GNSS_TX,
  uart_rx_from_mcu
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output led0;
  (* X_INTERFACE_IGNORE = "true" *)
  output [21:0]A;
  (* X_INTERFACE_IGNORE = "true" *)
  output CE_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]DQ_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]DQ_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]DQ_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_tx_to_mcu;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_t;
  (* X_INTERFACE_IGNORE = "true" *)
  input sda_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input scl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input GNSS_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  input uart_rx_from_mcu;

  // stub module has no contents

endmodule

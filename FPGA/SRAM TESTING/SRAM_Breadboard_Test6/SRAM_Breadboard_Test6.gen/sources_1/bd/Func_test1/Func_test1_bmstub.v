// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Func_test1 (
  sysclk,
  btn0,
  led0,
  DQ_i,
  DQ_o,
  DQ_t,
  WE_n,
  CE_n,
  A,
  led1,
  sda_i,
  scl_i,
  sda_o,
  uart_rxd_out,
  sda_t,
  scl_o,
  scl_t
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output led0;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]DQ_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]DQ_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]DQ_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output WE_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output CE_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output [21:0]A;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  input sda_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input scl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  output sda_t;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output scl_t;

  // stub module has no contents

endmodule

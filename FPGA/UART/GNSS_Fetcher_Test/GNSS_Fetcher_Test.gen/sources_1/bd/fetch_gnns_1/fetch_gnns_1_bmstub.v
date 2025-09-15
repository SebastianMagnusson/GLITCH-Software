// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module fetch_gnns_1 (
  sysclk,
  GNSS_TX,
  btn0,
  led0,
  GNSS_EN,
  led1,
  uart_rxd_out
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input GNSS_TX;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output led0;
  (* X_INTERFACE_IGNORE = "true" *)
  output GNSS_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;

  // stub module has no contents

endmodule

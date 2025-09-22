// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Program_MCU (
  sysclk,
  MCU_tx,
  uart_rxd_out,
  uart_txd_in,
  MCU_rx
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  input MCU_tx;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  input uart_txd_in;
  (* X_INTERFACE_IGNORE = "true" *)
  output MCU_rx;

  // stub module has no contents

endmodule

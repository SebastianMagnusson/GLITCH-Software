// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module I2C_Test (
  sysclk,
  SDA,
  SCL,
  uart_rxd_out,
  btn0,
  led1,
  led2
);

  (* X_INTERFACE_IGNORE = "true" *)
  input sysclk;
  (* X_INTERFACE_IGNORE = "true" *)
  inout SDA;
  (* X_INTERFACE_IGNORE = "true" *)
  inout SCL;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_rxd_out;
  (* X_INTERFACE_IGNORE = "true" *)
  input btn0;
  (* X_INTERFACE_IGNORE = "true" *)
  output led1;
  (* X_INTERFACE_IGNORE = "true" *)
  output led2;

  // stub module has no contents

endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:45:28 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_HTR_ROUTER_0_0/PCB_All_SRAM_I2C_HTR_ROUTER_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_I2C_HTR_ROUTER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_I2C_HTR_ROUTER_0_0,I2C_HTR_ROUTER,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2C_HTR_ROUTER,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_I2C_HTR_ROUTER_0_0
   (sysclk,
    reset_n,
    HTR_rst,
    led1,
    reset_i2c,
    i_busy,
    i_data_read,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    o_i2c_ena_heater,
    o_i2c_address_heater,
    o_i2c_rw_heater,
    o_i2c_data_wr_heater,
    i_busy_heater,
    i_data_read_heater,
    o_i2c_ena_normal,
    o_i2c_address_normal,
    o_i2c_rw_normal,
    o_i2c_data_wr_normal,
    i_busy_normal,
    i_data_read_normal);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  output led1;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_i2c RST" *) (* x_interface_mode = "master reset_i2c" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_i2c, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_i2c;
  input i_busy;
  input [7:0]i_data_read;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  input o_i2c_ena_heater;
  input [6:0]o_i2c_address_heater;
  input o_i2c_rw_heater;
  input [7:0]o_i2c_data_wr_heater;
  output i_busy_heater;
  output [7:0]i_data_read_heater;
  input o_i2c_ena_normal;
  input [6:0]o_i2c_address_normal;
  input o_i2c_rw_normal;
  input [7:0]o_i2c_data_wr_normal;
  output i_busy_normal;
  output [7:0]i_data_read_normal;

  wire \<const0> ;
  wire HTR_rst;
  wire i_busy;
  wire i_busy_heater;
  wire i_busy_normal;
  wire [7:0]i_data_read;
  wire [7:0]i_data_read_heater;
  wire [7:0]i_data_read_normal;
  wire [6:0]o_i2c_address;
  wire [6:0]o_i2c_address_heater;
  wire [6:0]o_i2c_address_normal;
  wire [7:0]o_i2c_data_wr;
  wire [7:0]o_i2c_data_wr_heater;
  wire [7:0]o_i2c_data_wr_normal;
  wire o_i2c_ena;
  wire o_i2c_ena_heater;
  wire o_i2c_ena_normal;
  wire o_i2c_rw;
  wire o_i2c_rw_heater;
  wire o_i2c_rw_normal;
  wire reset_i2c;
  wire reset_n;
  wire sysclk;

  assign led1 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER U0
       (.HTR_rst(HTR_rst),
        .i_busy(i_busy),
        .i_busy_heater(i_busy_heater),
        .i_busy_normal(i_busy_normal),
        .i_data_read(i_data_read),
        .i_data_read_heater(i_data_read_heater),
        .i_data_read_normal(i_data_read_normal),
        .o_i2c_address(o_i2c_address),
        .o_i2c_address_heater(o_i2c_address_heater),
        .o_i2c_address_normal(o_i2c_address_normal),
        .o_i2c_data_wr(o_i2c_data_wr),
        .o_i2c_data_wr_heater(o_i2c_data_wr_heater),
        .o_i2c_data_wr_normal(o_i2c_data_wr_normal),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_ena_heater(o_i2c_ena_heater),
        .o_i2c_ena_normal(o_i2c_ena_normal),
        .o_i2c_rw(o_i2c_rw),
        .o_i2c_rw_heater(o_i2c_rw_heater),
        .o_i2c_rw_normal(o_i2c_rw_normal),
        .reset_i2c(reset_i2c),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "I2C_HTR_ROUTER" *) 
module PCB_All_SRAM_I2C_HTR_ROUTER_0_0_I2C_HTR_ROUTER
   (o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    i_data_read_heater,
    i_busy_normal,
    i_data_read_normal,
    i_busy_heater,
    reset_i2c,
    sysclk,
    reset_n,
    i_busy,
    i_data_read,
    o_i2c_ena_normal,
    HTR_rst,
    o_i2c_ena_heater,
    o_i2c_address_normal,
    o_i2c_address_heater,
    o_i2c_rw_normal,
    o_i2c_rw_heater,
    o_i2c_data_wr_normal,
    o_i2c_data_wr_heater);
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output [7:0]i_data_read_heater;
  output i_busy_normal;
  output [7:0]i_data_read_normal;
  output i_busy_heater;
  output reset_i2c;
  input sysclk;
  input reset_n;
  input i_busy;
  input [7:0]i_data_read;
  input o_i2c_ena_normal;
  input HTR_rst;
  input o_i2c_ena_heater;
  input [6:0]o_i2c_address_normal;
  input [6:0]o_i2c_address_heater;
  input o_i2c_rw_normal;
  input o_i2c_rw_heater;
  input [7:0]o_i2c_data_wr_normal;
  input [7:0]o_i2c_data_wr_heater;

  wire HTR_rst;
  wire i_busy;
  wire i_busy_heater;
  wire i_busy_heater_i_1_n_0;
  wire i_busy_normal;
  wire i_busy_normal_i_1_n_0;
  wire [7:0]i_data_read;
  wire [7:0]i_data_read_heater;
  wire \i_data_read_heater[0]_i_1_n_0 ;
  wire \i_data_read_heater[1]_i_1_n_0 ;
  wire \i_data_read_heater[2]_i_1_n_0 ;
  wire \i_data_read_heater[3]_i_1_n_0 ;
  wire \i_data_read_heater[4]_i_1_n_0 ;
  wire \i_data_read_heater[5]_i_1_n_0 ;
  wire \i_data_read_heater[6]_i_1_n_0 ;
  wire \i_data_read_heater[7]_i_1_n_0 ;
  wire [7:0]i_data_read_normal;
  wire [6:0]o_i2c_address;
  wire \o_i2c_address[0]_i_1_n_0 ;
  wire \o_i2c_address[1]_i_1_n_0 ;
  wire \o_i2c_address[2]_i_1_n_0 ;
  wire \o_i2c_address[3]_i_1_n_0 ;
  wire \o_i2c_address[4]_i_1_n_0 ;
  wire \o_i2c_address[5]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_1_n_0 ;
  wire [6:0]o_i2c_address_heater;
  wire [6:0]o_i2c_address_normal;
  wire [7:0]o_i2c_data_wr;
  wire [7:0]o_i2c_data_wr_heater;
  wire [7:0]o_i2c_data_wr_normal;
  wire o_i2c_ena;
  wire o_i2c_ena__0_n_0;
  wire o_i2c_ena_heater;
  wire o_i2c_ena_normal;
  wire o_i2c_rw;
  wire o_i2c_rw__0_n_0;
  wire o_i2c_rw_heater;
  wire o_i2c_rw_normal;
  wire [7:0]p_0_in;
  wire reset_i2c;
  wire reset_n;
  wire sysclk;

  LUT2 #(
    .INIT(4'h8)) 
    i_busy_heater_i_1
       (.I0(HTR_rst),
        .I1(i_busy),
        .O(i_busy_heater_i_1_n_0));
  FDRE i_busy_heater_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(i_busy_heater_i_1_n_0),
        .Q(i_busy_heater),
        .R(reset_n));
  LUT1 #(
    .INIT(2'h1)) 
    i_busy_normal_i_1
       (.I0(reset_n),
        .O(i_busy_normal_i_1_n_0));
  FDRE i_busy_normal_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(i_busy),
        .Q(i_busy_normal),
        .R(i_busy_normal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[0]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[0]),
        .O(\i_data_read_heater[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[1]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[1]),
        .O(\i_data_read_heater[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[2]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[2]),
        .O(\i_data_read_heater[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[3]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[3]),
        .O(\i_data_read_heater[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[4]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[4]),
        .O(\i_data_read_heater[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[5]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[5]),
        .O(\i_data_read_heater[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[6]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[6]),
        .O(\i_data_read_heater[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_data_read_heater[7]_i_1 
       (.I0(HTR_rst),
        .I1(i_data_read[7]),
        .O(\i_data_read_heater[7]_i_1_n_0 ));
  FDRE \i_data_read_heater_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[0]_i_1_n_0 ),
        .Q(i_data_read_heater[0]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[1]_i_1_n_0 ),
        .Q(i_data_read_heater[1]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[2]_i_1_n_0 ),
        .Q(i_data_read_heater[2]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[3]_i_1_n_0 ),
        .Q(i_data_read_heater[3]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[4]_i_1_n_0 ),
        .Q(i_data_read_heater[4]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[5]_i_1_n_0 ),
        .Q(i_data_read_heater[5]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[6]_i_1_n_0 ),
        .Q(i_data_read_heater[6]),
        .R(reset_n));
  FDRE \i_data_read_heater_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\i_data_read_heater[7]_i_1_n_0 ),
        .Q(i_data_read_heater[7]),
        .R(reset_n));
  FDRE \i_data_read_normal_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[0]),
        .Q(i_data_read_normal[0]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[1]),
        .Q(i_data_read_normal[1]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[2]),
        .Q(i_data_read_normal[2]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[3]),
        .Q(i_data_read_normal[3]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[4]),
        .Q(i_data_read_normal[4]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[5]),
        .Q(i_data_read_normal[5]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[6]),
        .Q(i_data_read_normal[6]),
        .R(i_busy_normal_i_1_n_0));
  FDRE \i_data_read_normal_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(i_data_read[7]),
        .Q(i_data_read_normal[7]),
        .R(i_busy_normal_i_1_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[0]_i_1 
       (.I0(o_i2c_address_normal[0]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[0]),
        .O(\o_i2c_address[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[1]_i_1 
       (.I0(o_i2c_address_normal[1]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[1]),
        .O(\o_i2c_address[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[2]_i_1 
       (.I0(o_i2c_address_normal[2]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[2]),
        .O(\o_i2c_address[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[3]_i_1 
       (.I0(o_i2c_address_normal[3]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[3]),
        .O(\o_i2c_address[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[4]_i_1 
       (.I0(o_i2c_address_normal[4]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[4]),
        .O(\o_i2c_address[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[5]_i_1 
       (.I0(o_i2c_address_normal[5]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[5]),
        .O(\o_i2c_address[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_address[6]_i_1 
       (.I0(o_i2c_address_normal[6]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_address_heater[6]),
        .O(\o_i2c_address[6]_i_1_n_0 ));
  FDRE \o_i2c_address_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[0]_i_1_n_0 ),
        .Q(o_i2c_address[0]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[1]_i_1_n_0 ),
        .Q(o_i2c_address[1]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[2]_i_1_n_0 ),
        .Q(o_i2c_address[2]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[3]_i_1_n_0 ),
        .Q(o_i2c_address[3]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[4]_i_1_n_0 ),
        .Q(o_i2c_address[4]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[5]_i_1_n_0 ),
        .Q(o_i2c_address[5]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_address[6]_i_1_n_0 ),
        .Q(o_i2c_address[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[0]_i_1 
       (.I0(o_i2c_data_wr_normal[0]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[1]_i_1 
       (.I0(o_i2c_data_wr_normal[1]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[2]_i_1 
       (.I0(o_i2c_data_wr_normal[2]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[3]_i_1 
       (.I0(o_i2c_data_wr_normal[3]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[4]_i_1 
       (.I0(o_i2c_data_wr_normal[4]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[5]_i_1 
       (.I0(o_i2c_data_wr_normal[5]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[6]_i_1 
       (.I0(o_i2c_data_wr_normal[6]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \o_i2c_data_wr[7]_i_1 
       (.I0(o_i2c_data_wr_normal[7]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_data_wr_heater[7]),
        .O(p_0_in[7]));
  FDRE \o_i2c_data_wr_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(o_i2c_data_wr[0]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(o_i2c_data_wr[1]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(o_i2c_data_wr[2]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(o_i2c_data_wr[3]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(o_i2c_data_wr[4]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(o_i2c_data_wr[5]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(o_i2c_data_wr[6]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(o_i2c_data_wr[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    o_i2c_ena__0
       (.I0(o_i2c_ena_normal),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_ena_heater),
        .O(o_i2c_ena__0_n_0));
  FDRE o_i2c_ena_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_i2c_ena__0_n_0),
        .Q(o_i2c_ena),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    o_i2c_rw__0
       (.I0(o_i2c_rw_normal),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(o_i2c_rw_heater),
        .O(o_i2c_rw__0_n_0));
  FDRE o_i2c_rw_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_i2c_rw__0_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  FDSE reset_i2c_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(HTR_rst),
        .Q(reset_i2c),
        .S(reset_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

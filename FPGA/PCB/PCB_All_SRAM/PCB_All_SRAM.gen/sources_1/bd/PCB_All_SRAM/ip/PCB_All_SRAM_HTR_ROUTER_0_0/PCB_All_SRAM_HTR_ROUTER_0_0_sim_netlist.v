// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:45:25 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_ROUTER_0_0/PCB_All_SRAM_HTR_ROUTER_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_HTR_ROUTER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_HTR_ROUTER_0_0,HTR_ROUTER,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "HTR_ROUTER,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_HTR_ROUTER_0_0
   (sysclk,
    reset_n,
    HTR_rst,
    led1,
    HTR_request,
    I2C_read_done,
    HTR_request_normal,
    I2C_read_done_normal,
    temp_data_normal,
    temp_DV_normal,
    HTR_request_heater,
    I2C_read_done_heater,
    temp_data_heater,
    temp_DV_heater,
    temp_DV,
    temp_data);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  output led1;
  input HTR_request;
  input I2C_read_done;
  output HTR_request_normal;
  output I2C_read_done_normal;
  input [31:0]temp_data_normal;
  input temp_DV_normal;
  output HTR_request_heater;
  output I2C_read_done_heater;
  input [31:0]temp_data_heater;
  input temp_DV_heater;
  output temp_DV;
  output [31:0]temp_data;

  wire \<const0> ;
  wire HTR_request;
  wire HTR_request_heater;
  wire HTR_request_normal;
  wire HTR_rst;
  wire I2C_read_done;
  wire I2C_read_done_heater;
  wire I2C_read_done_normal;
  wire reset_n;
  wire sysclk;
  wire temp_DV;
  wire temp_DV_heater;
  wire temp_DV_normal;
  wire [31:0]temp_data;
  wire [31:0]temp_data_heater;
  wire [31:0]temp_data_normal;

  assign led1 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER U0
       (.HTR_request(HTR_request),
        .HTR_request_heater(HTR_request_heater),
        .HTR_request_normal(HTR_request_normal),
        .HTR_rst(HTR_rst),
        .I2C_read_done(I2C_read_done),
        .I2C_read_done_heater(I2C_read_done_heater),
        .I2C_read_done_normal(I2C_read_done_normal),
        .reset_n(reset_n),
        .sysclk(sysclk),
        .temp_DV(temp_DV),
        .temp_DV_heater(temp_DV_heater),
        .temp_DV_normal(temp_DV_normal),
        .temp_data(temp_data),
        .temp_data_heater(temp_data_heater),
        .temp_data_normal(temp_data_normal));
endmodule

(* ORIG_REF_NAME = "HTR_ROUTER" *) 
module PCB_All_SRAM_HTR_ROUTER_0_0_HTR_ROUTER
   (HTR_request_heater,
    I2C_read_done_heater,
    temp_DV,
    temp_data,
    HTR_request_normal,
    I2C_read_done_normal,
    sysclk,
    HTR_request,
    HTR_rst,
    reset_n,
    I2C_read_done,
    temp_DV_normal,
    temp_DV_heater,
    temp_data_normal,
    temp_data_heater);
  output HTR_request_heater;
  output I2C_read_done_heater;
  output temp_DV;
  output [31:0]temp_data;
  output HTR_request_normal;
  output I2C_read_done_normal;
  input sysclk;
  input HTR_request;
  input HTR_rst;
  input reset_n;
  input I2C_read_done;
  input temp_DV_normal;
  input temp_DV_heater;
  input [31:0]temp_data_normal;
  input [31:0]temp_data_heater;

  wire HTR_request;
  wire HTR_request_heater;
  wire HTR_request_heater__0_n_0;
  wire HTR_request_normal;
  wire HTR_request_normal_i_1_n_0;
  wire HTR_rst;
  wire I2C_read_done;
  wire I2C_read_done_heater;
  wire I2C_read_done_heater__0_n_0;
  wire I2C_read_done_normal;
  wire I2C_read_done_normal_i_1_n_0;
  wire [31:0]p_0_in;
  wire reset_n;
  wire sysclk;
  wire temp_DV;
  wire temp_DV__0_n_0;
  wire temp_DV_heater;
  wire temp_DV_normal;
  wire [31:0]temp_data;
  wire [31:0]temp_data_heater;
  wire [31:0]temp_data_normal;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    HTR_request_heater__0
       (.I0(HTR_request),
        .I1(HTR_rst),
        .I2(reset_n),
        .O(HTR_request_heater__0_n_0));
  FDRE HTR_request_heater_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(HTR_request_heater__0_n_0),
        .Q(HTR_request_heater),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    HTR_request_normal_i_1
       (.I0(HTR_request),
        .I1(reset_n),
        .O(HTR_request_normal_i_1_n_0));
  FDRE HTR_request_normal_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(HTR_request_normal_i_1_n_0),
        .Q(HTR_request_normal),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    I2C_read_done_heater__0
       (.I0(I2C_read_done),
        .I1(HTR_rst),
        .I2(reset_n),
        .O(I2C_read_done_heater__0_n_0));
  FDRE I2C_read_done_heater_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(I2C_read_done_heater__0_n_0),
        .Q(I2C_read_done_heater),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    I2C_read_done_normal_i_1
       (.I0(I2C_read_done),
        .I1(reset_n),
        .O(I2C_read_done_normal_i_1_n_0));
  FDRE I2C_read_done_normal_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(I2C_read_done_normal_i_1_n_0),
        .Q(I2C_read_done_normal),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    temp_DV__0
       (.I0(temp_DV_normal),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_DV_heater),
        .O(temp_DV__0_n_0));
  FDRE temp_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(temp_DV__0_n_0),
        .Q(temp_DV),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[0]_i_1 
       (.I0(temp_data_normal[0]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[10]_i_1 
       (.I0(temp_data_normal[10]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[11]_i_1 
       (.I0(temp_data_normal[11]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[12]_i_1 
       (.I0(temp_data_normal[12]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[13]_i_1 
       (.I0(temp_data_normal[13]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[14]_i_1 
       (.I0(temp_data_normal[14]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[15]_i_1 
       (.I0(temp_data_normal[15]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[16]_i_1 
       (.I0(temp_data_normal[16]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[16]),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[17]_i_1 
       (.I0(temp_data_normal[17]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[17]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[18]_i_1 
       (.I0(temp_data_normal[18]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[18]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[19]_i_1 
       (.I0(temp_data_normal[19]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[19]),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[1]_i_1 
       (.I0(temp_data_normal[1]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[20]_i_1 
       (.I0(temp_data_normal[20]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[20]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[21]_i_1 
       (.I0(temp_data_normal[21]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[21]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[22]_i_1 
       (.I0(temp_data_normal[22]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[22]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[23]_i_1 
       (.I0(temp_data_normal[23]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[23]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[24]_i_1 
       (.I0(temp_data_normal[24]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[24]),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[25]_i_1 
       (.I0(temp_data_normal[25]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[25]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[26]_i_1 
       (.I0(temp_data_normal[26]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[26]),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[27]_i_1 
       (.I0(temp_data_normal[27]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[27]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[28]_i_1 
       (.I0(temp_data_normal[28]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[28]),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[29]_i_1 
       (.I0(temp_data_normal[29]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[29]),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[2]_i_1 
       (.I0(temp_data_normal[2]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[30]_i_1 
       (.I0(temp_data_normal[30]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[30]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[31]_i_1 
       (.I0(temp_data_normal[31]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[31]),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[3]_i_1 
       (.I0(temp_data_normal[3]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[4]_i_1 
       (.I0(temp_data_normal[4]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[5]_i_1 
       (.I0(temp_data_normal[5]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[6]_i_1 
       (.I0(temp_data_normal[6]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[7]_i_1 
       (.I0(temp_data_normal[7]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[8]_i_1 
       (.I0(temp_data_normal[8]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \temp_data[9]_i_1 
       (.I0(temp_data_normal[9]),
        .I1(reset_n),
        .I2(HTR_rst),
        .I3(temp_data_heater[9]),
        .O(p_0_in[9]));
  FDRE \temp_data_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(temp_data[0]),
        .R(1'b0));
  FDRE \temp_data_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(temp_data[10]),
        .R(1'b0));
  FDRE \temp_data_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(temp_data[11]),
        .R(1'b0));
  FDRE \temp_data_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(temp_data[12]),
        .R(1'b0));
  FDRE \temp_data_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(temp_data[13]),
        .R(1'b0));
  FDRE \temp_data_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(temp_data[14]),
        .R(1'b0));
  FDRE \temp_data_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(temp_data[15]),
        .R(1'b0));
  FDRE \temp_data_reg[16] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(temp_data[16]),
        .R(1'b0));
  FDRE \temp_data_reg[17] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(temp_data[17]),
        .R(1'b0));
  FDRE \temp_data_reg[18] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(temp_data[18]),
        .R(1'b0));
  FDRE \temp_data_reg[19] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(temp_data[19]),
        .R(1'b0));
  FDRE \temp_data_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(temp_data[1]),
        .R(1'b0));
  FDRE \temp_data_reg[20] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(temp_data[20]),
        .R(1'b0));
  FDRE \temp_data_reg[21] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(temp_data[21]),
        .R(1'b0));
  FDRE \temp_data_reg[22] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(temp_data[22]),
        .R(1'b0));
  FDRE \temp_data_reg[23] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(temp_data[23]),
        .R(1'b0));
  FDRE \temp_data_reg[24] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(temp_data[24]),
        .R(1'b0));
  FDRE \temp_data_reg[25] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(temp_data[25]),
        .R(1'b0));
  FDRE \temp_data_reg[26] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(temp_data[26]),
        .R(1'b0));
  FDRE \temp_data_reg[27] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(temp_data[27]),
        .R(1'b0));
  FDRE \temp_data_reg[28] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[28]),
        .Q(temp_data[28]),
        .R(1'b0));
  FDRE \temp_data_reg[29] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[29]),
        .Q(temp_data[29]),
        .R(1'b0));
  FDRE \temp_data_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(temp_data[2]),
        .R(1'b0));
  FDRE \temp_data_reg[30] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[30]),
        .Q(temp_data[30]),
        .R(1'b0));
  FDRE \temp_data_reg[31] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[31]),
        .Q(temp_data[31]),
        .R(1'b0));
  FDRE \temp_data_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(temp_data[3]),
        .R(1'b0));
  FDRE \temp_data_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(temp_data[4]),
        .R(1'b0));
  FDRE \temp_data_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(temp_data[5]),
        .R(1'b0));
  FDRE \temp_data_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(temp_data[6]),
        .R(1'b0));
  FDRE \temp_data_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(temp_data[7]),
        .R(1'b0));
  FDRE \temp_data_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(temp_data[8]),
        .R(1'b0));
  FDRE \temp_data_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(temp_data[9]),
        .R(1'b0));
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

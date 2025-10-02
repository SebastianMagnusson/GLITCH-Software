// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:48:47 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_I2C_HTR_TEMP_0_0/PCB_All_SRAM_I2C_HTR_TEMP_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_I2C_HTR_TEMP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_I2C_HTR_TEMP_0_0,I2C_HTR_TEMP,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2C_HTR_TEMP,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_I2C_HTR_TEMP_0_0
   (clk,
    HTR_rst,
    i_busy,
    i_data_read,
    i_TX_done_HTR,
    i_HTR_TEMP_request,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    o_TX_DV_HTR,
    o_TX_TEMP_data,
    led1,
    led2,
    led3);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  input i_busy;
  input [7:0]i_data_read;
  input i_TX_done_HTR;
  input i_HTR_TEMP_request;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV_HTR;
  output [31:0]o_TX_TEMP_data;
  output led1;
  output led2;
  output led3;

  wire \<const0> ;
  wire HTR_rst;
  wire clk;
  wire i_HTR_TEMP_request;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led3;
  wire o_TX_DV_HTR;
  wire [15:0]\^o_TX_TEMP_data ;
  wire [1:1]\^o_i2c_data_wr ;
  wire o_i2c_ena;
  wire o_i2c_rw;

  assign led1 = \<const0> ;
  assign led2 = \<const0> ;
  assign o_TX_TEMP_data[31:16] = \^o_TX_TEMP_data [15:0];
  assign o_TX_TEMP_data[15:0] = \^o_TX_TEMP_data [15:0];
  assign o_i2c_address[6] = \^o_i2c_data_wr [1];
  assign o_i2c_address[5] = \<const0> ;
  assign o_i2c_address[4] = \<const0> ;
  assign o_i2c_address[3] = \<const0> ;
  assign o_i2c_address[2] = \<const0> ;
  assign o_i2c_address[1] = \<const0> ;
  assign o_i2c_address[0] = \<const0> ;
  assign o_i2c_data_wr[7] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[6] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[5] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \<const0> ;
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \^o_i2c_data_wr [1];
  assign o_i2c_data_wr[0] = \^o_i2c_data_wr [1];
  GND GND
       (.G(\<const0> ));
  PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP U0
       (.HTR_rst(HTR_rst),
        .clk(clk),
        .i_HTR_TEMP_request(i_HTR_TEMP_request),
        .i_busy(i_busy),
        .i_data_read(i_data_read),
        .led3(led3),
        .o_TX_DV_HTR(o_TX_DV_HTR),
        .o_TX_TEMP_data(\^o_TX_TEMP_data ),
        .o_i2c_data_wr(\^o_i2c_data_wr ),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw));
endmodule

(* ORIG_REF_NAME = "I2C_HTR_TEMP" *) 
module PCB_All_SRAM_I2C_HTR_TEMP_0_0_I2C_HTR_TEMP
   (o_TX_TEMP_data,
    led3,
    o_i2c_ena,
    o_i2c_rw,
    o_TX_DV_HTR,
    o_i2c_data_wr,
    HTR_rst,
    clk,
    i_busy,
    i_HTR_TEMP_request,
    i_data_read);
  output [15:0]o_TX_TEMP_data;
  output led3;
  output o_i2c_ena;
  output o_i2c_rw;
  output o_TX_DV_HTR;
  output [0:0]o_i2c_data_wr;
  input HTR_rst;
  input clk;
  input i_busy;
  input i_HTR_TEMP_request;
  input [7:0]i_data_read;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire HTR_rst;
  wire [2:0]busy_cnt;
  wire \busy_cnt_reg_n_0_[0] ;
  wire \busy_cnt_reg_n_0_[1] ;
  wire \busy_cnt_reg_n_0_[2] ;
  wire busy_prev;
  wire busy_prev_reg_n_0;
  wire clk;
  wire i_HTR_TEMP_request;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led3;
  wire led3_i_1_n_0;
  wire led3_i_2_n_0;
  wire o_TX_DV_HTR;
  wire o_TX_DV_HTR_i_1_n_0;
  wire [15:0]o_TX_TEMP_data;
  wire \o_TX_TEMP_data[31]_i_1_n_0 ;
  wire \o_TX_TEMP_data[31]_i_2_n_0 ;
  wire [0:0]o_i2c_data_wr;
  wire \o_i2c_data_wr[0]_i_1_n_0 ;
  wire \o_i2c_data_wr[0]_i_2_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_1_n_0;
  wire o_i2c_ena_i_2_n_0;
  wire o_i2c_ena_i_3_n_0;
  wire o_i2c_rw;
  wire o_i2c_rw_i_1_n_0;
  wire o_i2c_rw_i_2_n_0;
  wire o_i2c_rw_i_3_n_0;
  wire [15:8]temp_data;
  wire \temp_data[15]_i_1_n_0 ;
  wire \temp_data[15]_i_3_n_0 ;
  wire \temp_data[7]_i_1_n_0 ;
  wire \temp_data_reg_n_0_[0] ;
  wire \temp_data_reg_n_0_[10] ;
  wire \temp_data_reg_n_0_[11] ;
  wire \temp_data_reg_n_0_[12] ;
  wire \temp_data_reg_n_0_[13] ;
  wire \temp_data_reg_n_0_[14] ;
  wire \temp_data_reg_n_0_[15] ;
  wire \temp_data_reg_n_0_[1] ;
  wire \temp_data_reg_n_0_[2] ;
  wire \temp_data_reg_n_0_[3] ;
  wire \temp_data_reg_n_0_[4] ;
  wire \temp_data_reg_n_0_[5] ;
  wire \temp_data_reg_n_0_[6] ;
  wire \temp_data_reg_n_0_[7] ;
  wire \temp_data_reg_n_0_[8] ;
  wire \temp_data_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(i_HTR_TEMP_request),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(i_HTR_TEMP_request),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "send_temp:0100,cleanup:1000,idle:0001,temp:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(led3_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_temp:0100,cleanup:1000,idle:0001,temp:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(led3_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_temp:0100,cleanup:1000,idle:0001,temp:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(led3_i_1_n_0));
  (* FSM_ENCODED_STATES = "send_temp:0100,cleanup:1000,idle:0001,temp:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(led3_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA008A0000AA8A00)) 
    \busy_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(i_busy),
        .I5(busy_prev_reg_n_0),
        .O(busy_cnt[0]));
  LUT6 #(
    .INIT(64'hA0A080A00AA080A0)) 
    \busy_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[2] ),
        .I2(\busy_cnt_reg_n_0_[1] ),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(i_busy),
        .I5(busy_prev_reg_n_0),
        .O(busy_cnt[1]));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \busy_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(busy_cnt[2]));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[0] 
       (.C(clk),
        .CE(led3_i_2_n_0),
        .D(busy_cnt[0]),
        .Q(\busy_cnt_reg_n_0_[0] ),
        .R(led3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[1] 
       (.C(clk),
        .CE(led3_i_2_n_0),
        .D(busy_cnt[1]),
        .Q(\busy_cnt_reg_n_0_[1] ),
        .R(led3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \busy_cnt_reg[2] 
       (.C(clk),
        .CE(led3_i_2_n_0),
        .D(busy_cnt[2]),
        .Q(\busy_cnt_reg_n_0_[2] ),
        .R(led3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    busy_prev_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_busy),
        .O(busy_prev));
  FDRE busy_prev_reg
       (.C(clk),
        .CE(led3_i_2_n_0),
        .D(busy_prev),
        .Q(busy_prev_reg_n_0),
        .R(led3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    led3_i_1
       (.I0(HTR_rst),
        .O(led3_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led3_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(led3_i_2_n_0));
  FDRE led3_reg
       (.C(clk),
        .CE(led3_i_2_n_0),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(led3),
        .R(led3_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF020000)) 
    o_TX_DV_HTR_i_1
       (.I0(o_TX_DV_HTR),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(HTR_rst),
        .O(o_TX_DV_HTR_i_1_n_0));
  FDRE o_TX_DV_HTR_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_DV_HTR_i_1_n_0),
        .Q(o_TX_DV_HTR),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \o_TX_TEMP_data[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(HTR_rst),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\o_TX_TEMP_data[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \o_TX_TEMP_data[31]_i_2 
       (.I0(HTR_rst),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\o_TX_TEMP_data[31]_i_2_n_0 ));
  FDRE \o_TX_TEMP_data_reg[16] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[0] ),
        .Q(o_TX_TEMP_data[0]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[17] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[1] ),
        .Q(o_TX_TEMP_data[1]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[18] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[2] ),
        .Q(o_TX_TEMP_data[2]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[19] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[3] ),
        .Q(o_TX_TEMP_data[3]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[20] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[4] ),
        .Q(o_TX_TEMP_data[4]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[21] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[5] ),
        .Q(o_TX_TEMP_data[5]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[22] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[6] ),
        .Q(o_TX_TEMP_data[6]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[23] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[7] ),
        .Q(o_TX_TEMP_data[7]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[24] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[8] ),
        .Q(o_TX_TEMP_data[8]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[25] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[9] ),
        .Q(o_TX_TEMP_data[9]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[26] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[10] ),
        .Q(o_TX_TEMP_data[10]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[27] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[11] ),
        .Q(o_TX_TEMP_data[11]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[28] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[12] ),
        .Q(o_TX_TEMP_data[12]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[29] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[13] ),
        .Q(o_TX_TEMP_data[13]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[30] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[14] ),
        .Q(o_TX_TEMP_data[14]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  FDRE \o_TX_TEMP_data_reg[31] 
       (.C(clk),
        .CE(\o_TX_TEMP_data[31]_i_2_n_0 ),
        .D(\temp_data_reg_n_0_[15] ),
        .Q(o_TX_TEMP_data[15]),
        .R(\o_TX_TEMP_data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBF8880)) 
    \o_i2c_data_wr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(HTR_rst),
        .I2(\o_i2c_data_wr[0]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(o_i2c_data_wr),
        .O(\o_i2c_data_wr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h200000000000008A)) 
    \o_i2c_data_wr[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\busy_cnt_reg_n_0_[0] ),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(\o_i2c_data_wr[0]_i_2_n_0 ));
  FDRE \o_i2c_data_wr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[0]_i_1_n_0 ),
        .Q(o_i2c_data_wr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h02FE020200000000)) 
    o_i2c_ena_i_1
       (.I0(o_i2c_ena),
        .I1(o_i2c_ena_i_2_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(o_i2c_ena_i_3_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(HTR_rst),
        .O(o_i2c_ena_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000080882822)) 
    o_i2c_ena_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[1] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\busy_cnt_reg_n_0_[0] ),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_ena_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    o_i2c_ena_i_3
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_ena_i_3_n_0));
  FDRE o_i2c_ena_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_ena_i_1_n_0),
        .Q(o_i2c_ena),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8F8F8FFF80808000)) 
    o_i2c_rw_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(o_i2c_rw_i_2_n_0),
        .I2(HTR_rst),
        .I3(o_i2c_rw_i_3_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    o_i2c_rw_i_2
       (.I0(\busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .O(o_i2c_rw_i_2_n_0));
  LUT6 #(
    .INIT(64'h008000000000AA2A)) 
    o_i2c_rw_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .I4(\busy_cnt_reg_n_0_[1] ),
        .I5(\busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_rw_i_3_n_0));
  FDRE o_i2c_rw_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[2]),
        .O(temp_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[3]),
        .O(temp_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[4]),
        .O(temp_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[5]),
        .O(temp_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[6]),
        .O(temp_data[14]));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \temp_data[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(i_busy),
        .I2(o_i2c_ena_i_3_n_0),
        .I3(o_i2c_rw_i_2_n_0),
        .I4(\temp_data[15]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\temp_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[15]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[7]),
        .O(temp_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \temp_data[15]_i_3 
       (.I0(busy_prev_reg_n_0),
        .I1(i_busy),
        .I2(\busy_cnt_reg_n_0_[0] ),
        .I3(\busy_cnt_reg_n_0_[1] ),
        .I4(\busy_cnt_reg_n_0_[2] ),
        .O(\temp_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \temp_data[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(o_i2c_rw_i_2_n_0),
        .I2(i_busy),
        .I3(o_i2c_ena_i_3_n_0),
        .I4(\temp_data[15]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\temp_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[0]),
        .O(temp_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_data[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(i_data_read[1]),
        .O(temp_data[9]));
  FDRE \temp_data_reg[0] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[8]),
        .Q(\temp_data_reg_n_0_[0] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[10] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[10]),
        .Q(\temp_data_reg_n_0_[10] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[11] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[11]),
        .Q(\temp_data_reg_n_0_[11] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[12] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[12]),
        .Q(\temp_data_reg_n_0_[12] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[13] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[13]),
        .Q(\temp_data_reg_n_0_[13] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[14] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[14]),
        .Q(\temp_data_reg_n_0_[14] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[15] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[15]),
        .Q(\temp_data_reg_n_0_[15] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[1] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[9]),
        .Q(\temp_data_reg_n_0_[1] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[2] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[10]),
        .Q(\temp_data_reg_n_0_[2] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[3] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[11]),
        .Q(\temp_data_reg_n_0_[3] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[4] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[12]),
        .Q(\temp_data_reg_n_0_[4] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[5] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[13]),
        .Q(\temp_data_reg_n_0_[5] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[6] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[14]),
        .Q(\temp_data_reg_n_0_[6] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[7] 
       (.C(clk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(temp_data[15]),
        .Q(\temp_data_reg_n_0_[7] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[8] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[8]),
        .Q(\temp_data_reg_n_0_[8] ),
        .R(led3_i_1_n_0));
  FDRE \temp_data_reg[9] 
       (.C(clk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(temp_data[9]),
        .Q(\temp_data_reg_n_0_[9] ),
        .R(led3_i_1_n_0));
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

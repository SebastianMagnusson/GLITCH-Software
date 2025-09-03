// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Jul 27 14:06:03 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_Read_Sensorsmod_0_0/I2C_Test_Read_Sensorsmod_0_0_sim_netlist.v
// Design      : I2C_Test_Read_Sensorsmod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_Test_Read_Sensorsmod_0_0,Read_Sensorsmod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Read_Sensorsmod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module I2C_Test_Read_Sensorsmod_0_0
   (sysclk,
    reset_n,
    i_busy,
    i_data_read,
    i_TX_done,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    o_TX_DV,
    o_TX_data,
    led2);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input i_busy;
  input [7:0]i_data_read;
  input i_TX_done;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV;
  output [7:0]o_TX_data;
  output led2;

  wire \<const0> ;
  wire i_TX_done;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led2;
  wire o_TX_DV;
  wire [7:0]o_TX_data;
  wire [6:3]\^o_i2c_address ;
  wire [6:3]\^o_i2c_data_wr ;
  wire o_i2c_ena;
  wire o_i2c_rw;
  wire reset_n;
  wire sysclk;

  assign o_i2c_address[6:5] = \^o_i2c_address [6:5];
  assign o_i2c_address[4] = \^o_i2c_data_wr [3];
  assign o_i2c_address[3] = \^o_i2c_address [3];
  assign o_i2c_address[2] = \^o_i2c_data_wr [3];
  assign o_i2c_address[1] = \^o_i2c_data_wr [3];
  assign o_i2c_address[0] = \<const0> ;
  assign o_i2c_data_wr[7] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[6:5] = \^o_i2c_data_wr [6:5];
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \^o_i2c_data_wr [3];
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \^o_i2c_data_wr [5];
  assign o_i2c_data_wr[0] = \^o_i2c_data_wr [5];
  GND GND
       (.G(\<const0> ));
  I2C_Test_Read_Sensorsmod_0_0_Read_Sensorsmod U0
       (.i_TX_done(i_TX_done),
        .i_busy(i_busy),
        .i_data_read(i_data_read),
        .led2(led2),
        .o_TX_DV(o_TX_DV),
        .o_TX_data(o_TX_data),
        .o_i2c_address({\^o_i2c_address [6:5],\^o_i2c_data_wr [3],\^o_i2c_address [3]}),
        .o_i2c_data_wr({\^o_i2c_data_wr [5],\^o_i2c_data_wr [6]}),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Read_Sensorsmod" *) 
module I2C_Test_Read_Sensorsmod_0_0_Read_Sensorsmod
   (o_i2c_address,
    o_i2c_data_wr,
    o_TX_data,
    o_i2c_ena,
    o_i2c_rw,
    o_TX_DV,
    led2,
    sysclk,
    i_data_read,
    i_busy,
    reset_n,
    i_TX_done);
  output [3:0]o_i2c_address;
  output [1:0]o_i2c_data_wr;
  output [7:0]o_TX_data;
  output o_i2c_ena;
  output o_i2c_rw;
  output o_TX_DV;
  output led2;
  input sysclk;
  input [7:0]i_data_read;
  input i_busy;
  input reset_n;
  input i_TX_done;

  wire \FSM_sequential_Main.mess_cnt_i_1_n_0 ;
  wire \FSM_sequential_Main.mess_cnt_reg_n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \Main.busy_cnt[0]_i_1_n_0 ;
  wire \Main.busy_cnt[1]_i_1_n_0 ;
  wire \Main.busy_cnt[1]_i_2_n_0 ;
  wire \Main.busy_cnt[2]_i_2_n_0 ;
  wire \Main.busy_cnt_reg_n_0_[0] ;
  wire \Main.busy_cnt_reg_n_0_[1] ;
  wire \Main.busy_cnt_reg_n_0_[2] ;
  wire \Main.sec_cnt[0]_i_1_n_0 ;
  wire \Main.sec_cnt[0]_i_3_n_0 ;
  wire \Main.sec_cnt[0]_i_4_n_0 ;
  wire \Main.sec_cnt[0]_i_5_n_0 ;
  wire \Main.sec_cnt[0]_i_6_n_0 ;
  wire \Main.sec_cnt[0]_i_7_n_0 ;
  wire \Main.sec_cnt[12]_i_2_n_0 ;
  wire \Main.sec_cnt[12]_i_3_n_0 ;
  wire \Main.sec_cnt[12]_i_4_n_0 ;
  wire \Main.sec_cnt[12]_i_5_n_0 ;
  wire \Main.sec_cnt[16]_i_2_n_0 ;
  wire \Main.sec_cnt[16]_i_3_n_0 ;
  wire \Main.sec_cnt[16]_i_4_n_0 ;
  wire \Main.sec_cnt[16]_i_5_n_0 ;
  wire \Main.sec_cnt[20]_i_2_n_0 ;
  wire \Main.sec_cnt[20]_i_3_n_0 ;
  wire \Main.sec_cnt[20]_i_4_n_0 ;
  wire \Main.sec_cnt[20]_i_5_n_0 ;
  wire \Main.sec_cnt[24]_i_2_n_0 ;
  wire \Main.sec_cnt[24]_i_3_n_0 ;
  wire \Main.sec_cnt[4]_i_2_n_0 ;
  wire \Main.sec_cnt[4]_i_3_n_0 ;
  wire \Main.sec_cnt[4]_i_4_n_0 ;
  wire \Main.sec_cnt[4]_i_5_n_0 ;
  wire \Main.sec_cnt[8]_i_2_n_0 ;
  wire \Main.sec_cnt[8]_i_3_n_0 ;
  wire \Main.sec_cnt[8]_i_4_n_0 ;
  wire \Main.sec_cnt[8]_i_5_n_0 ;
  wire [25:8]\Main.sec_cnt_reg ;
  wire \Main.sec_cnt_reg[0]_i_2_n_0 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_1 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_2 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_3 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_4 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_5 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_6 ;
  wire \Main.sec_cnt_reg[0]_i_2_n_7 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_0 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_1 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_2 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_3 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_4 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_5 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_6 ;
  wire \Main.sec_cnt_reg[12]_i_1_n_7 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_0 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_1 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_2 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_3 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_4 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_5 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_6 ;
  wire \Main.sec_cnt_reg[16]_i_1_n_7 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_0 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_1 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_2 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_3 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_4 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_5 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_6 ;
  wire \Main.sec_cnt_reg[20]_i_1_n_7 ;
  wire \Main.sec_cnt_reg[24]_i_1_n_3 ;
  wire \Main.sec_cnt_reg[24]_i_1_n_6 ;
  wire \Main.sec_cnt_reg[24]_i_1_n_7 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_0 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_1 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_2 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_3 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_4 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_5 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_6 ;
  wire \Main.sec_cnt_reg[4]_i_1_n_7 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_0 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_1 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_2 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_3 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_4 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_5 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_6 ;
  wire \Main.sec_cnt_reg[8]_i_1_n_7 ;
  wire \Main.sec_cnt_reg_n_0_[0] ;
  wire \Main.sec_cnt_reg_n_0_[1] ;
  wire \Main.sec_cnt_reg_n_0_[2] ;
  wire \Main.sec_cnt_reg_n_0_[3] ;
  wire \Main.sec_cnt_reg_n_0_[4] ;
  wire \Main.sec_cnt_reg_n_0_[5] ;
  wire \Main.sec_cnt_reg_n_0_[6] ;
  wire \Main.sec_cnt_reg_n_0_[7] ;
  wire \Main.sensor_cnt[0]_i_1_n_0 ;
  wire \Main.sensor_cnt[1]_i_1_n_0 ;
  wire \Main.sensor_cnt_reg_n_0_[0] ;
  wire \Main.sensor_cnt_reg_n_0_[1] ;
  wire TX_done_prev_i_1_n_0;
  wire TX_done_prev_reg_n_0;
  wire busy_cnt;
  wire busy_prev_reg_n_0;
  wire i_TX_done;
  wire i_busy;
  wire [7:0]i_data_read;
  wire [7:0]in13;
  wire [7:0]in17;
  wire led2;
  wire led2_i_1_n_0;
  wire led2_i_2_n_0;
  wire led2_i_3_n_0;
  wire led2_i_4_n_0;
  wire led2_i_5_n_0;
  wire led2_i_6_n_0;
  wire o_TX_DV;
  wire o_TX_DV_i_1_n_0;
  wire o_TX_DV_i_2_n_0;
  wire o_TX_DV_i_3_n_0;
  wire o_TX_DV_i_4_n_0;
  wire o_TX_DV_i_5_n_0;
  wire o_TX_DV_i_6_n_0;
  wire o_TX_DV_i_7_n_0;
  wire [7:0]o_TX_data;
  wire o_TX_data0;
  wire \o_TX_data[0]_i_1_n_0 ;
  wire \o_TX_data[0]_i_2_n_0 ;
  wire \o_TX_data[1]_i_1_n_0 ;
  wire \o_TX_data[1]_i_2_n_0 ;
  wire \o_TX_data[2]_i_1_n_0 ;
  wire \o_TX_data[2]_i_2_n_0 ;
  wire \o_TX_data[3]_i_1_n_0 ;
  wire \o_TX_data[3]_i_2_n_0 ;
  wire \o_TX_data[4]_i_1_n_0 ;
  wire \o_TX_data[4]_i_2_n_0 ;
  wire \o_TX_data[5]_i_1_n_0 ;
  wire \o_TX_data[5]_i_2_n_0 ;
  wire \o_TX_data[6]_i_1_n_0 ;
  wire \o_TX_data[6]_i_2_n_0 ;
  wire \o_TX_data[7]_i_2_n_0 ;
  wire \o_TX_data[7]_i_3_n_0 ;
  wire \o_TX_data[7]_i_4_n_0 ;
  wire \o_TX_data[7]_i_5_n_0 ;
  wire \o_TX_data[7]_i_6_n_0 ;
  wire \o_TX_data[7]_i_7_n_0 ;
  wire \o_TX_data[7]_i_8_n_0 ;
  wire [3:0]o_i2c_address;
  wire o_i2c_address0;
  wire \o_i2c_address[3]_i_1_n_0 ;
  wire \o_i2c_address[4]_i_1_n_0 ;
  wire \o_i2c_address[5]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_2_n_0 ;
  wire \o_i2c_address[6]_i_3_n_0 ;
  wire [1:0]o_i2c_data_wr;
  wire \o_i2c_data_wr[6]_i_1_n_0 ;
  wire \o_i2c_data_wr[7]_i_1_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_1_n_0;
  wire o_i2c_ena_i_2_n_0;
  wire o_i2c_ena_i_3_n_0;
  wire o_i2c_ena_i_4_n_0;
  wire o_i2c_ena_i_5_n_0;
  wire o_i2c_rw;
  wire o_i2c_rw0;
  wire o_i2c_rw_i_1_n_0;
  wire o_i2c_rw_i_3_n_0;
  wire o_i2c_rw_i_4_n_0;
  wire reset_n;
  wire [23:7]rtc_data;
  wire \rtc_data[23]_i_2_n_0 ;
  wire \rtc_data[7]_i_2_n_0 ;
  wire \rtc_data_reg_n_0_[0] ;
  wire \rtc_data_reg_n_0_[10] ;
  wire \rtc_data_reg_n_0_[11] ;
  wire \rtc_data_reg_n_0_[12] ;
  wire \rtc_data_reg_n_0_[13] ;
  wire \rtc_data_reg_n_0_[14] ;
  wire \rtc_data_reg_n_0_[15] ;
  wire \rtc_data_reg_n_0_[1] ;
  wire \rtc_data_reg_n_0_[2] ;
  wire \rtc_data_reg_n_0_[3] ;
  wire \rtc_data_reg_n_0_[4] ;
  wire \rtc_data_reg_n_0_[5] ;
  wire \rtc_data_reg_n_0_[6] ;
  wire \rtc_data_reg_n_0_[7] ;
  wire \rtc_data_reg_n_0_[8] ;
  wire \rtc_data_reg_n_0_[9] ;
  wire sensor_cnt;
  wire [2:0]state;
  wire sysclk;
  wire [15:7]temp_data;
  wire \temp_data[15]_i_2_n_0 ;
  wire \temp_data_reg_n_0_[0] ;
  wire \temp_data_reg_n_0_[1] ;
  wire \temp_data_reg_n_0_[2] ;
  wire \temp_data_reg_n_0_[3] ;
  wire \temp_data_reg_n_0_[4] ;
  wire \temp_data_reg_n_0_[5] ;
  wire \temp_data_reg_n_0_[6] ;
  wire \temp_data_reg_n_0_[7] ;
  wire [3:1]\NLW_Main.sec_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Main.sec_cnt_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF0DAF0F0F0F0F0F0)) 
    \FSM_sequential_Main.mess_cnt_i_1 
       (.I0(i_TX_done),
        .I1(TX_done_prev_reg_n_0),
        .I2(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_sequential_Main.mess_cnt_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0,iSTATE0:1" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_Main.mess_cnt_reg 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_Main.mess_cnt_i_1_n_0 ),
        .Q(\FSM_sequential_Main.mess_cnt_reg_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF0D00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\Main.sensor_cnt_reg_n_0_[1] ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00F40000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\Main.sensor_cnt_reg_n_0_[1] ),
        .I1(\Main.sensor_cnt_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03FF0200)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\Main.sensor_cnt_reg_n_0_[1] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEEEEEEEEEEE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\o_TX_data[7]_i_3_n_0 ),
        .I2(\Main.sec_cnt[0]_i_1_n_0 ),
        .I3(led2_i_3_n_0),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2200000000F00000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I1(TX_done_prev_reg_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .I4(i_TX_done),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\Main.sec_cnt_reg [21]),
        .I1(\Main.sec_cnt_reg [22]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [23]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "prep_alt:011,alt_read:0100,send_temp:010,temp:001,start:000,rtc:100,send_alt:0110,send_rtc:101,alt:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "prep_alt:011,alt_read:0100,send_temp:010,temp:001,start:000,rtc:100,send_alt:0110,send_rtc:101,alt:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "prep_alt:011,alt_read:0100,send_temp:010,temp:001,start:000,rtc:100,send_alt:0110,send_rtc:101,alt:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'h33330000FEFF0000)) 
    \Main.busy_cnt[0]_i_1 
       (.I0(o_i2c_ena_i_4_n_0),
        .I1(state[1]),
        .I2(i_busy),
        .I3(o_i2c_ena_i_3_n_0),
        .I4(\Main.busy_cnt[1]_i_2_n_0 ),
        .I5(state[2]),
        .O(\Main.busy_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33003300FE00FF00)) 
    \Main.busy_cnt[1]_i_1 
       (.I0(o_i2c_ena_i_4_n_0),
        .I1(state[1]),
        .I2(i_busy),
        .I3(o_i2c_ena_i_3_n_0),
        .I4(\Main.busy_cnt[1]_i_2_n_0 ),
        .I5(state[2]),
        .O(\Main.busy_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \Main.busy_cnt[1]_i_2 
       (.I0(i_busy),
        .I1(busy_prev_reg_n_0),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .O(\Main.busy_cnt[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \Main.busy_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(busy_cnt));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5500FD00)) 
    \Main.busy_cnt[2]_i_2 
       (.I0(state[2]),
        .I1(i_busy),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(o_i2c_ena_i_4_n_0),
        .I4(state[1]),
        .O(\Main.busy_cnt[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.busy_cnt_reg[0] 
       (.C(sysclk),
        .CE(busy_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.busy_cnt[0]_i_1_n_0 ),
        .Q(\Main.busy_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.busy_cnt_reg[1] 
       (.C(sysclk),
        .CE(busy_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.busy_cnt[1]_i_1_n_0 ),
        .Q(\Main.busy_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.busy_cnt_reg[2] 
       (.C(sysclk),
        .CE(busy_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.busy_cnt[2]_i_2_n_0 ),
        .Q(\Main.busy_cnt_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'h01)) 
    \Main.sec_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\Main.sec_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_3 
       (.I0(\Main.sec_cnt_reg_n_0_[0] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_4 
       (.I0(\Main.sec_cnt_reg_n_0_[3] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_5 
       (.I0(\Main.sec_cnt_reg_n_0_[2] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_6 
       (.I0(\Main.sec_cnt_reg_n_0_[1] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Main.sec_cnt[0]_i_7 
       (.I0(\Main.sec_cnt_reg_n_0_[0] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_2 
       (.I0(\Main.sec_cnt_reg [15]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_3 
       (.I0(\Main.sec_cnt_reg [14]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_4 
       (.I0(\Main.sec_cnt_reg [13]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_5 
       (.I0(\Main.sec_cnt_reg [12]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_2 
       (.I0(\Main.sec_cnt_reg [19]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_3 
       (.I0(\Main.sec_cnt_reg [18]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_4 
       (.I0(\Main.sec_cnt_reg [17]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_5 
       (.I0(\Main.sec_cnt_reg [16]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_2 
       (.I0(\Main.sec_cnt_reg [23]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_3 
       (.I0(\Main.sec_cnt_reg [22]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_4 
       (.I0(\Main.sec_cnt_reg [21]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_5 
       (.I0(\Main.sec_cnt_reg [20]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[24]_i_2 
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[24]_i_3 
       (.I0(\Main.sec_cnt_reg [24]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_2 
       (.I0(\Main.sec_cnt_reg_n_0_[7] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_3 
       (.I0(\Main.sec_cnt_reg_n_0_[6] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_4 
       (.I0(\Main.sec_cnt_reg_n_0_[5] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_5 
       (.I0(\Main.sec_cnt_reg_n_0_[4] ),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_2 
       (.I0(\Main.sec_cnt_reg [11]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_3 
       (.I0(\Main.sec_cnt_reg [10]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_4 
       (.I0(\Main.sec_cnt_reg [9]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_5 
       (.I0(\Main.sec_cnt_reg [8]),
        .I1(led2_i_2_n_0),
        .O(\Main.sec_cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[0] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_7 ),
        .Q(\Main.sec_cnt_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Main.sec_cnt_reg[0]_i_2_n_0 ,\Main.sec_cnt_reg[0]_i_2_n_1 ,\Main.sec_cnt_reg[0]_i_2_n_2 ,\Main.sec_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Main.sec_cnt[0]_i_3_n_0 }),
        .O({\Main.sec_cnt_reg[0]_i_2_n_4 ,\Main.sec_cnt_reg[0]_i_2_n_5 ,\Main.sec_cnt_reg[0]_i_2_n_6 ,\Main.sec_cnt_reg[0]_i_2_n_7 }),
        .S({\Main.sec_cnt[0]_i_4_n_0 ,\Main.sec_cnt[0]_i_5_n_0 ,\Main.sec_cnt[0]_i_6_n_0 ,\Main.sec_cnt[0]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[10] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[11] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[12] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[12]_i_1 
       (.CI(\Main.sec_cnt_reg[8]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[12]_i_1_n_0 ,\Main.sec_cnt_reg[12]_i_1_n_1 ,\Main.sec_cnt_reg[12]_i_1_n_2 ,\Main.sec_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[12]_i_1_n_4 ,\Main.sec_cnt_reg[12]_i_1_n_5 ,\Main.sec_cnt_reg[12]_i_1_n_6 ,\Main.sec_cnt_reg[12]_i_1_n_7 }),
        .S({\Main.sec_cnt[12]_i_2_n_0 ,\Main.sec_cnt[12]_i_3_n_0 ,\Main.sec_cnt[12]_i_4_n_0 ,\Main.sec_cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[13] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[14] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[15] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[16] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[16]_i_1 
       (.CI(\Main.sec_cnt_reg[12]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[16]_i_1_n_0 ,\Main.sec_cnt_reg[16]_i_1_n_1 ,\Main.sec_cnt_reg[16]_i_1_n_2 ,\Main.sec_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[16]_i_1_n_4 ,\Main.sec_cnt_reg[16]_i_1_n_5 ,\Main.sec_cnt_reg[16]_i_1_n_6 ,\Main.sec_cnt_reg[16]_i_1_n_7 }),
        .S({\Main.sec_cnt[16]_i_2_n_0 ,\Main.sec_cnt[16]_i_3_n_0 ,\Main.sec_cnt[16]_i_4_n_0 ,\Main.sec_cnt[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[17] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[18] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[19] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[1] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_6 ),
        .Q(\Main.sec_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[20] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[20]_i_1 
       (.CI(\Main.sec_cnt_reg[16]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[20]_i_1_n_0 ,\Main.sec_cnt_reg[20]_i_1_n_1 ,\Main.sec_cnt_reg[20]_i_1_n_2 ,\Main.sec_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[20]_i_1_n_4 ,\Main.sec_cnt_reg[20]_i_1_n_5 ,\Main.sec_cnt_reg[20]_i_1_n_6 ,\Main.sec_cnt_reg[20]_i_1_n_7 }),
        .S({\Main.sec_cnt[20]_i_2_n_0 ,\Main.sec_cnt[20]_i_3_n_0 ,\Main.sec_cnt[20]_i_4_n_0 ,\Main.sec_cnt[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[21] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[22] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[23] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[24] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[24]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[24]_i_1 
       (.CI(\Main.sec_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_Main.sec_cnt_reg[24]_i_1_CO_UNCONNECTED [3:1],\Main.sec_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Main.sec_cnt_reg[24]_i_1_O_UNCONNECTED [3:2],\Main.sec_cnt_reg[24]_i_1_n_6 ,\Main.sec_cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\Main.sec_cnt[24]_i_2_n_0 ,\Main.sec_cnt[24]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[25] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[24]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[2] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_5 ),
        .Q(\Main.sec_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[3] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_4 ),
        .Q(\Main.sec_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[4] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[4]_i_1 
       (.CI(\Main.sec_cnt_reg[0]_i_2_n_0 ),
        .CO({\Main.sec_cnt_reg[4]_i_1_n_0 ,\Main.sec_cnt_reg[4]_i_1_n_1 ,\Main.sec_cnt_reg[4]_i_1_n_2 ,\Main.sec_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[4]_i_1_n_4 ,\Main.sec_cnt_reg[4]_i_1_n_5 ,\Main.sec_cnt_reg[4]_i_1_n_6 ,\Main.sec_cnt_reg[4]_i_1_n_7 }),
        .S({\Main.sec_cnt[4]_i_2_n_0 ,\Main.sec_cnt[4]_i_3_n_0 ,\Main.sec_cnt[4]_i_4_n_0 ,\Main.sec_cnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[5] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[6] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[7] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[8] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[8]_i_1 
       (.CI(\Main.sec_cnt_reg[4]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[8]_i_1_n_0 ,\Main.sec_cnt_reg[8]_i_1_n_1 ,\Main.sec_cnt_reg[8]_i_1_n_2 ,\Main.sec_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[8]_i_1_n_4 ,\Main.sec_cnt_reg[8]_i_1_n_5 ,\Main.sec_cnt_reg[8]_i_1_n_6 ,\Main.sec_cnt_reg[8]_i_1_n_7 }),
        .S({\Main.sec_cnt[8]_i_2_n_0 ,\Main.sec_cnt[8]_i_3_n_0 ,\Main.sec_cnt[8]_i_4_n_0 ,\Main.sec_cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[9] 
       (.C(sysclk),
        .CE(\Main.sec_cnt[0]_i_1_n_0 ),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \Main.sensor_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(sensor_cnt),
        .I2(\Main.sensor_cnt_reg_n_0_[0] ),
        .O(\Main.sensor_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1F40)) 
    \Main.sensor_cnt[1]_i_1 
       (.I0(state[2]),
        .I1(\Main.sensor_cnt_reg_n_0_[0] ),
        .I2(sensor_cnt),
        .I3(\Main.sensor_cnt_reg_n_0_[1] ),
        .O(\Main.sensor_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000F00000)) 
    \Main.sensor_cnt[1]_i_2 
       (.I0(TX_done_prev_reg_n_0),
        .I1(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(i_TX_done),
        .I5(state[0]),
        .O(sensor_cnt));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sensor_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sensor_cnt[0]_i_1_n_0 ),
        .Q(\Main.sensor_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.sensor_cnt_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.sensor_cnt[1]_i_1_n_0 ),
        .Q(\Main.sensor_cnt_reg_n_0_[1] ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    TX_done_prev_i_1
       (.I0(i_TX_done),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I5(TX_done_prev_reg_n_0),
        .O(TX_done_prev_i_1_n_0));
  FDPE TX_done_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(TX_done_prev_i_1_n_0),
        .PRE(o_i2c_ena_i_2_n_0),
        .Q(TX_done_prev_reg_n_0));
  FDCE busy_prev_reg
       (.C(sysclk),
        .CE(busy_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_busy),
        .Q(busy_prev_reg_n_0));
  LUT5 #(
    .INIT(32'hBFFFB000)) 
    led2_i_1
       (.I0(\Main.sensor_cnt_reg_n_0_[1] ),
        .I1(\Main.sensor_cnt_reg_n_0_[0] ),
        .I2(\Main.sec_cnt[0]_i_1_n_0 ),
        .I3(led2_i_2_n_0),
        .I4(led2),
        .O(led2_i_1_n_0));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    led2_i_2
       (.I0(\Main.sec_cnt_reg [23]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [25]),
        .I3(\Main.sec_cnt_reg [21]),
        .I4(\Main.sec_cnt_reg [22]),
        .I5(led2_i_3_n_0),
        .O(led2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF1500000000)) 
    led2_i_3
       (.I0(led2_i_4_n_0),
        .I1(led2_i_5_n_0),
        .I2(led2_i_6_n_0),
        .I3(\Main.sec_cnt_reg [18]),
        .I4(\Main.sec_cnt_reg [19]),
        .I5(\Main.sec_cnt_reg [20]),
        .O(led2_i_3_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    led2_i_4
       (.I0(\Main.sec_cnt_reg [17]),
        .I1(\Main.sec_cnt_reg [16]),
        .I2(\Main.sec_cnt_reg [15]),
        .O(led2_i_4_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    led2_i_5
       (.I0(\Main.sec_cnt_reg [10]),
        .I1(\Main.sec_cnt_reg [9]),
        .I2(\Main.sec_cnt_reg [8]),
        .O(led2_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    led2_i_6
       (.I0(\Main.sec_cnt_reg [12]),
        .I1(\Main.sec_cnt_reg [11]),
        .I2(\Main.sec_cnt_reg [14]),
        .I3(\Main.sec_cnt_reg [13]),
        .O(led2_i_6_n_0));
  FDCE led2_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(led2_i_1_n_0),
        .Q(led2));
  LUT6 #(
    .INIT(64'hABABBBABA8A888A8)) 
    o_TX_DV_i_1
       (.I0(o_TX_DV_i_2_n_0),
        .I1(o_TX_DV_i_3_n_0),
        .I2(o_TX_DV_i_4_n_0),
        .I3(o_TX_DV_i_5_n_0),
        .I4(\o_i2c_address[3]_i_1_n_0 ),
        .I5(o_TX_DV),
        .O(o_TX_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAEEAAAAAFEEAA)) 
    o_TX_DV_i_2
       (.I0(o_TX_DV_i_6_n_0),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(o_TX_DV_i_7_n_0),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(o_TX_DV_i_2_n_0));
  LUT6 #(
    .INIT(64'h30003000FF557555)) 
    o_TX_DV_i_3
       (.I0(state[0]),
        .I1(o_i2c_rw_i_4_n_0),
        .I2(o_TX_DV_i_7_n_0),
        .I3(o_TX_DV_i_4_n_0),
        .I4(o_i2c_rw_i_3_n_0),
        .I5(state[2]),
        .O(o_TX_DV_i_3_n_0));
  LUT6 #(
    .INIT(64'hDDDDEDDDDDDFDDDF)) 
    o_TX_DV_i_4
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(state[0]),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(busy_prev_reg_n_0),
        .I5(\Main.busy_cnt_reg_n_0_[0] ),
        .O(o_TX_DV_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    o_TX_DV_i_5
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(i_busy),
        .O(o_TX_DV_i_5_n_0));
  LUT6 #(
    .INIT(64'h04A4A4A400000000)) 
    o_TX_DV_i_6
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I4(TX_done_prev_reg_n_0),
        .I5(i_TX_done),
        .O(o_TX_DV_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5DF7)) 
    o_TX_DV_i_7
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .O(o_TX_DV_i_7_n_0));
  FDCE o_TX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(o_TX_DV_i_1_n_0),
        .Q(o_TX_DV));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[0]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[0] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[8] ),
        .O(\o_TX_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[0]_i_2 
       (.I0(in13[0]),
        .I1(in17[0]),
        .I2(\rtc_data_reg_n_0_[0] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[1]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[1] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[9] ),
        .O(\o_TX_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[1]_i_2 
       (.I0(in13[1]),
        .I1(in17[1]),
        .I2(\rtc_data_reg_n_0_[1] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[2]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[2]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[2] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[10] ),
        .O(\o_TX_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[2]_i_2 
       (.I0(in13[2]),
        .I1(in17[2]),
        .I2(\rtc_data_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[3]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[3]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[3] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[11] ),
        .O(\o_TX_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[3]_i_2 
       (.I0(in13[3]),
        .I1(in17[3]),
        .I2(\rtc_data_reg_n_0_[3] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[4]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[4]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[4] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[12] ),
        .O(\o_TX_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[4]_i_2 
       (.I0(in13[4]),
        .I1(in17[4]),
        .I2(\rtc_data_reg_n_0_[4] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[5]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[5]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[5] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[13] ),
        .O(\o_TX_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[5]_i_2 
       (.I0(in13[5]),
        .I1(in17[5]),
        .I2(\rtc_data_reg_n_0_[5] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[6]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[6]_i_2_n_0 ),
        .I3(\temp_data_reg_n_0_[6] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[14] ),
        .O(\o_TX_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[6]_i_2 
       (.I0(in13[6]),
        .I1(in17[6]),
        .I2(\rtc_data_reg_n_0_[6] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE0A0)) 
    \o_TX_data[7]_i_1 
       (.I0(\o_TX_data[7]_i_3_n_0 ),
        .I1(\o_TX_data[7]_i_4_n_0 ),
        .I2(reset_n),
        .I3(i_TX_done),
        .O(o_TX_data0));
  LUT6 #(
    .INIT(64'hFFFFF2F0F2F0F2F0)) 
    \o_TX_data[7]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\o_TX_data[7]_i_5_n_0 ),
        .I3(\temp_data_reg_n_0_[7] ),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .I5(\rtc_data_reg_n_0_[15] ),
        .O(\o_TX_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000000008888)) 
    \o_TX_data[7]_i_3 
       (.I0(\o_TX_data[7]_i_7_n_0 ),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(o_TX_DV_i_5_n_0),
        .I3(\temp_data[15]_i_2_n_0 ),
        .I4(\Main.busy_cnt[1]_i_2_n_0 ),
        .I5(o_i2c_ena_i_3_n_0),
        .O(\o_TX_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h70700F00)) 
    \o_TX_data[7]_i_4 
       (.I0(TX_done_prev_reg_n_0),
        .I1(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\o_TX_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF000CCAA0000CCAA)) 
    \o_TX_data[7]_i_5 
       (.I0(in13[7]),
        .I1(in17[7]),
        .I2(\rtc_data_reg_n_0_[7] ),
        .I3(state[2]),
        .I4(\o_TX_data[7]_i_8_n_0 ),
        .I5(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_TX_data[7]_i_6 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .O(\o_TX_data[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_TX_data[7]_i_7 
       (.I0(i_busy),
        .I1(state[2]),
        .I2(state[0]),
        .O(\o_TX_data[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_TX_data[7]_i_8 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\o_TX_data[7]_i_8_n_0 ));
  FDRE \o_TX_data_reg[0] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[0]_i_1_n_0 ),
        .Q(o_TX_data[0]),
        .R(1'b0));
  FDRE \o_TX_data_reg[1] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[1]_i_1_n_0 ),
        .Q(o_TX_data[1]),
        .R(1'b0));
  FDRE \o_TX_data_reg[2] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[2]_i_1_n_0 ),
        .Q(o_TX_data[2]),
        .R(1'b0));
  FDRE \o_TX_data_reg[3] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[3]_i_1_n_0 ),
        .Q(o_TX_data[3]),
        .R(1'b0));
  FDRE \o_TX_data_reg[4] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[4]_i_1_n_0 ),
        .Q(o_TX_data[4]),
        .R(1'b0));
  FDRE \o_TX_data_reg[5] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[5]_i_1_n_0 ),
        .Q(o_TX_data[5]),
        .R(1'b0));
  FDRE \o_TX_data_reg[6] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[6]_i_1_n_0 ),
        .Q(o_TX_data[6]),
        .R(1'b0));
  FDRE \o_TX_data_reg[7] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(\o_TX_data[7]_i_2_n_0 ),
        .Q(o_TX_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\o_i2c_address[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[4]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_i2c_address[5]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003010000000000)) 
    \o_i2c_address[6]_i_1 
       (.I0(state[1]),
        .I1(\o_i2c_address[6]_i_3_n_0 ),
        .I2(o_i2c_ena_i_4_n_0),
        .I3(state[2]),
        .I4(state[0]),
        .I5(reset_n),
        .O(o_i2c_address0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \o_i2c_address[6]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF7AE)) 
    \o_i2c_address[6]_i_3 
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .O(\o_i2c_address[6]_i_3_n_0 ));
  FDRE \o_i2c_address_reg[3] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[3]_i_1_n_0 ),
        .Q(o_i2c_address[0]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[4] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[4]_i_1_n_0 ),
        .Q(o_i2c_address[1]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[5] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[5]_i_1_n_0 ),
        .Q(o_i2c_address[2]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[6] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[6]_i_2_n_0 ),
        .Q(o_i2c_address[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \o_i2c_data_wr[6]_i_1 
       (.I0(state[2]),
        .O(\o_i2c_data_wr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_i2c_data_wr[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\o_i2c_data_wr[7]_i_1_n_0 ));
  FDRE \o_i2c_data_wr_reg[6] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_data_wr[6]_i_1_n_0 ),
        .Q(o_i2c_data_wr[0]),
        .R(1'b0));
  FDRE \o_i2c_data_wr_reg[7] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_data_wr[7]_i_1_n_0 ),
        .Q(o_i2c_data_wr[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h03DDFFFF03DD0000)) 
    o_i2c_ena_i_1
       (.I0(o_i2c_ena_i_3_n_0),
        .I1(state[1]),
        .I2(o_i2c_ena_i_4_n_0),
        .I3(state[2]),
        .I4(o_i2c_ena_i_5_n_0),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_i2c_ena_i_2
       (.I0(reset_n),
        .O(o_i2c_ena_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    o_i2c_ena_i_3
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_ena_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    o_i2c_ena_i_4
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .I4(\Main.busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_ena_i_4_n_0));
  LUT6 #(
    .INIT(64'h0100000000000350)) 
    o_i2c_ena_i_5
       (.I0(state[1]),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(state[2]),
        .I3(state[0]),
        .I4(o_i2c_ena_i_3_n_0),
        .I5(\Main.busy_cnt[1]_i_2_n_0 ),
        .O(o_i2c_ena_i_5_n_0));
  FDCE o_i2c_ena_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(o_i2c_ena_i_1_n_0),
        .Q(o_i2c_ena));
  LUT6 #(
    .INIT(64'h009AFFFF009A0000)) 
    o_i2c_rw_i_1
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(state[1]),
        .I4(o_i2c_rw0),
        .I5(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  LUT6 #(
    .INIT(64'h00A0000000B03000)) 
    o_i2c_rw_i_2
       (.I0(o_i2c_rw_i_3_n_0),
        .I1(o_i2c_rw_i_4_n_0),
        .I2(reset_n),
        .I3(state[2]),
        .I4(state[0]),
        .I5(o_i2c_ena_i_3_n_0),
        .O(o_i2c_rw0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08001011)) 
    o_i2c_rw_i_3
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\Main.busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_rw_i_3_n_0));
  LUT6 #(
    .INIT(64'hEEBEEEEEEEEEEEEE)) 
    o_i2c_rw_i_4
       (.I0(state[1]),
        .I1(\Main.busy_cnt_reg_n_0_[2] ),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .I5(\Main.busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_rw_i_4_n_0));
  FDRE o_i2c_rw_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000A2080000)) 
    \rtc_data[15]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .I4(\rtc_data[23]_i_2_n_0 ),
        .I5(o_TX_DV_i_5_n_0),
        .O(rtc_data[15]));
  LUT6 #(
    .INIT(64'h0000000045200000)) 
    \rtc_data[23]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(\rtc_data[23]_i_2_n_0 ),
        .I5(o_TX_DV_i_5_n_0),
        .O(rtc_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtc_data[23]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .O(\rtc_data[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rtc_data[7]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\rtc_data[7]_i_2_n_0 ),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(\Main.busy_cnt_reg_n_0_[1] ),
        .O(rtc_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rtc_data[7]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\rtc_data[7]_i_2_n_0 ));
  FDCE \rtc_data_reg[0] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(\rtc_data_reg_n_0_[0] ));
  FDCE \rtc_data_reg[10] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(\rtc_data_reg_n_0_[10] ));
  FDCE \rtc_data_reg[11] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(\rtc_data_reg_n_0_[11] ));
  FDCE \rtc_data_reg[12] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(\rtc_data_reg_n_0_[12] ));
  FDCE \rtc_data_reg[13] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(\rtc_data_reg_n_0_[13] ));
  FDCE \rtc_data_reg[14] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(\rtc_data_reg_n_0_[14] ));
  FDCE \rtc_data_reg[15] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(\rtc_data_reg_n_0_[15] ));
  FDCE \rtc_data_reg[16] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(in17[0]));
  FDCE \rtc_data_reg[17] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(in17[1]));
  FDCE \rtc_data_reg[18] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(in17[2]));
  FDCE \rtc_data_reg[19] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(in17[3]));
  FDCE \rtc_data_reg[1] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(\rtc_data_reg_n_0_[1] ));
  FDCE \rtc_data_reg[20] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(in17[4]));
  FDCE \rtc_data_reg[21] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(in17[5]));
  FDCE \rtc_data_reg[22] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(in17[6]));
  FDCE \rtc_data_reg[23] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(in17[7]));
  FDCE \rtc_data_reg[2] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(\rtc_data_reg_n_0_[2] ));
  FDCE \rtc_data_reg[3] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(\rtc_data_reg_n_0_[3] ));
  FDCE \rtc_data_reg[4] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(\rtc_data_reg_n_0_[4] ));
  FDCE \rtc_data_reg[5] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(\rtc_data_reg_n_0_[5] ));
  FDCE \rtc_data_reg[6] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(\rtc_data_reg_n_0_[6] ));
  FDCE \rtc_data_reg[7] 
       (.C(sysclk),
        .CE(rtc_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(\rtc_data_reg_n_0_[7] ));
  FDCE \rtc_data_reg[8] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(\rtc_data_reg_n_0_[8] ));
  FDCE \rtc_data_reg[9] 
       (.C(sysclk),
        .CE(rtc_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(\rtc_data_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000045200000)) 
    \temp_data[15]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(\temp_data[15]_i_2_n_0 ),
        .I5(o_TX_DV_i_5_n_0),
        .O(temp_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[15]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\temp_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A2080000)) 
    \temp_data[7]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .I4(\temp_data[15]_i_2_n_0 ),
        .I5(o_TX_DV_i_5_n_0),
        .O(temp_data[7]));
  FDCE \temp_data_reg[0] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(\temp_data_reg_n_0_[0] ));
  FDCE \temp_data_reg[10] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(in13[2]));
  FDCE \temp_data_reg[11] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(in13[3]));
  FDCE \temp_data_reg[12] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(in13[4]));
  FDCE \temp_data_reg[13] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(in13[5]));
  FDCE \temp_data_reg[14] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(in13[6]));
  FDCE \temp_data_reg[15] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(in13[7]));
  FDCE \temp_data_reg[1] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(\temp_data_reg_n_0_[1] ));
  FDCE \temp_data_reg[2] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(\temp_data_reg_n_0_[2] ));
  FDCE \temp_data_reg[3] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(\temp_data_reg_n_0_[3] ));
  FDCE \temp_data_reg[4] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(\temp_data_reg_n_0_[4] ));
  FDCE \temp_data_reg[5] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(\temp_data_reg_n_0_[5] ));
  FDCE \temp_data_reg[6] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(\temp_data_reg_n_0_[6] ));
  FDCE \temp_data_reg[7] 
       (.C(sysclk),
        .CE(temp_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(\temp_data_reg_n_0_[7] ));
  FDCE \temp_data_reg[8] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(in13[0]));
  FDCE \temp_data_reg[9] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(in13[1]));
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 13 16:27:35 2025
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
    i_busy,
    i_data_read,
    i_TX_done,
    o_i2c_ena,
    o_i2c_address,
    o_i2c_rw,
    o_i2c_data_wr,
    o_TX_DV,
    o_TX_data);
  input sysclk;
  input i_busy;
  input [7:0]i_data_read;
  input i_TX_done;
  output o_i2c_ena;
  output [6:0]o_i2c_address;
  output o_i2c_rw;
  output [7:0]o_i2c_data_wr;
  output o_TX_DV;
  output [7:0]o_TX_data;

  wire \<const0> ;
  wire i_TX_done;
  wire i_busy;
  wire [7:0]i_data_read;
  wire o_TX_DV;
  wire [7:0]o_TX_data;
  wire [6:2]\^o_i2c_address ;
  wire [6:6]\^o_i2c_data_wr ;
  wire o_i2c_ena;
  wire o_i2c_rw;
  wire sysclk;

  assign o_i2c_address[6:5] = \^o_i2c_address [6:5];
  assign o_i2c_address[4] = \^o_i2c_address [2];
  assign o_i2c_address[3:2] = \^o_i2c_address [3:2];
  assign o_i2c_address[1] = \^o_i2c_address [2];
  assign o_i2c_address[0] = \^o_i2c_address [2];
  assign o_i2c_data_wr[7] = \^o_i2c_data_wr [6];
  assign o_i2c_data_wr[6] = \^o_i2c_data_wr [6];
  assign o_i2c_data_wr[5] = \^o_i2c_data_wr [6];
  assign o_i2c_data_wr[4] = \<const0> ;
  assign o_i2c_data_wr[3] = \<const0> ;
  assign o_i2c_data_wr[2] = \<const0> ;
  assign o_i2c_data_wr[1] = \^o_i2c_data_wr [6];
  assign o_i2c_data_wr[0] = \^o_i2c_data_wr [6];
  GND GND
       (.G(\<const0> ));
  I2C_Test_Read_Sensorsmod_0_0_Read_Sensorsmod U0
       (.i_TX_done(i_TX_done),
        .i_busy(i_busy),
        .i_data_read(i_data_read),
        .o_TX_DV(o_TX_DV),
        .o_TX_data(o_TX_data),
        .o_i2c_address({\^o_i2c_address [6:5],\^o_i2c_address [2],\^o_i2c_address [3]}),
        .o_i2c_data_wr(\^o_i2c_data_wr ),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Read_Sensorsmod" *) 
module I2C_Test_Read_Sensorsmod_0_0_Read_Sensorsmod
   (o_i2c_address,
    o_TX_data,
    o_TX_DV,
    o_i2c_ena,
    o_i2c_rw,
    o_i2c_data_wr,
    i_busy,
    sysclk,
    i_TX_done,
    i_data_read);
  output [3:0]o_i2c_address;
  output [7:0]o_TX_data;
  output o_TX_DV;
  output o_i2c_ena;
  output o_i2c_rw;
  output [0:0]o_i2c_data_wr;
  input i_busy;
  input sysclk;
  input i_TX_done;
  input [7:0]i_data_read;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \Main.busy_cnt[0]_i_1_n_0 ;
  wire \Main.busy_cnt[1]_i_1_n_0 ;
  wire \Main.busy_cnt[2]_i_2_n_0 ;
  wire \Main.busy_cnt_reg_n_0_[0] ;
  wire \Main.busy_cnt_reg_n_0_[1] ;
  wire \Main.busy_cnt_reg_n_0_[2] ;
  wire \Main.mess_cnt[0]_i_1_n_0 ;
  wire \Main.mess_cnt_reg_n_0_[0] ;
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
  wire [23:7]alt_data;
  wire \alt_data[23]_i_2_n_0 ;
  wire \alt_data_reg_n_0_[0] ;
  wire \alt_data_reg_n_0_[10] ;
  wire \alt_data_reg_n_0_[11] ;
  wire \alt_data_reg_n_0_[12] ;
  wire \alt_data_reg_n_0_[13] ;
  wire \alt_data_reg_n_0_[14] ;
  wire \alt_data_reg_n_0_[15] ;
  wire \alt_data_reg_n_0_[1] ;
  wire \alt_data_reg_n_0_[2] ;
  wire \alt_data_reg_n_0_[3] ;
  wire \alt_data_reg_n_0_[4] ;
  wire \alt_data_reg_n_0_[5] ;
  wire \alt_data_reg_n_0_[6] ;
  wire \alt_data_reg_n_0_[7] ;
  wire \alt_data_reg_n_0_[8] ;
  wire \alt_data_reg_n_0_[9] ;
  wire busy_cnt;
  wire busy_prev_reg_n_0;
  wire i_TX_done;
  wire i_busy;
  wire [7:0]i_data_read;
  wire [7:0]in18;
  wire [7:0]in20;
  wire o_TX_DV;
  wire o_TX_DV_i_1_n_0;
  wire o_TX_DV_i_2_n_0;
  wire o_TX_DV_i_3_n_0;
  wire o_TX_DV_i_4_n_0;
  wire o_TX_DV_i_5_n_0;
  wire [7:0]o_TX_data;
  wire \o_TX_data[0]_i_2_n_0 ;
  wire \o_TX_data[0]_i_3_n_0 ;
  wire \o_TX_data[0]_i_4_n_0 ;
  wire \o_TX_data[1]_i_2_n_0 ;
  wire \o_TX_data[1]_i_3_n_0 ;
  wire \o_TX_data[1]_i_4_n_0 ;
  wire \o_TX_data[2]_i_2_n_0 ;
  wire \o_TX_data[2]_i_3_n_0 ;
  wire \o_TX_data[2]_i_4_n_0 ;
  wire \o_TX_data[3]_i_2_n_0 ;
  wire \o_TX_data[3]_i_3_n_0 ;
  wire \o_TX_data[3]_i_4_n_0 ;
  wire \o_TX_data[4]_i_2_n_0 ;
  wire \o_TX_data[4]_i_3_n_0 ;
  wire \o_TX_data[4]_i_4_n_0 ;
  wire \o_TX_data[5]_i_2_n_0 ;
  wire \o_TX_data[5]_i_3_n_0 ;
  wire \o_TX_data[5]_i_4_n_0 ;
  wire \o_TX_data[6]_i_2_n_0 ;
  wire \o_TX_data[6]_i_3_n_0 ;
  wire \o_TX_data[6]_i_4_n_0 ;
  wire \o_TX_data[7]_i_1_n_0 ;
  wire \o_TX_data[7]_i_3_n_0 ;
  wire \o_TX_data[7]_i_4_n_0 ;
  wire \o_TX_data[7]_i_5_n_0 ;
  wire \o_TX_data[7]_i_6_n_0 ;
  wire \o_TX_data[7]_i_7_n_0 ;
  wire \o_TX_data_reg[0]_i_1_n_0 ;
  wire \o_TX_data_reg[1]_i_1_n_0 ;
  wire \o_TX_data_reg[2]_i_1_n_0 ;
  wire \o_TX_data_reg[3]_i_1_n_0 ;
  wire \o_TX_data_reg[4]_i_1_n_0 ;
  wire \o_TX_data_reg[5]_i_1_n_0 ;
  wire \o_TX_data_reg[6]_i_1_n_0 ;
  wire \o_TX_data_reg[7]_i_2_n_0 ;
  wire [3:0]o_i2c_address;
  wire \o_i2c_address[3]_i_1_n_0 ;
  wire \o_i2c_address[4]_i_1_n_0 ;
  wire \o_i2c_address[5]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_1_n_0 ;
  wire \o_i2c_address[6]_i_2_n_0 ;
  wire \o_i2c_address[6]_i_3_n_0 ;
  wire [0:0]o_i2c_data_wr;
  wire \o_i2c_data_wr[7]_i_1_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_1_n_0;
  wire o_i2c_ena_i_2_n_0;
  wire o_i2c_ena_i_3_n_0;
  wire o_i2c_ena_i_4_n_0;
  wire o_i2c_rw;
  wire o_i2c_rw_i_1_n_0;
  wire o_i2c_rw_i_2_n_0;
  wire o_i2c_rw_i_3_n_0;
  wire [15:15]rtc_data;
  wire \rtc_data[15]_i_2_n_0 ;
  wire \rtc_data[7]_i_1_n_0 ;
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
  wire [0:0]state__0;
  wire sysclk;
  wire \temp_data[15]_i_1_n_0 ;
  wire \temp_data[15]_i_2_n_0 ;
  wire \temp_data[7]_i_1_n_0 ;
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
    .INIT(64'h55005500110011FE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF00200020002000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\o_TX_data[7]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(i_TX_done),
        .I5(\Main.mess_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(i_TX_done),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\o_TX_data[7]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080800080)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\Main.sec_cnt_reg [23]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [25]),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(\Main.sec_cnt_reg [21]),
        .I5(\Main.sec_cnt_reg [22]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000BAFFFFFFFF)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\FSM_sequential_state[2]_i_10_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(\Main.sec_cnt_reg [18]),
        .I4(\Main.sec_cnt_reg [19]),
        .I5(\Main.sec_cnt_reg [20]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFF040000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(\Main.sensor_cnt_reg_n_0_[0] ),
        .I2(\Main.sensor_cnt_reg_n_0_[1] ),
        .I3(state[0]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h50FFA400)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(\Main.sensor_cnt_reg_n_0_[1] ),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\Main.sec_cnt_reg [17]),
        .I1(\Main.sec_cnt_reg [16]),
        .I2(\Main.sec_cnt_reg [15]),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDCDCDDDCDCDCDCDC)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [23]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2A22222A222)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(\Main.sec_cnt_reg [20]),
        .I2(\FSM_sequential_state[2]_i_7_n_0 ),
        .I3(\FSM_sequential_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_state[2]_i_9_n_0 ),
        .I5(\FSM_sequential_state[2]_i_10_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\Main.sec_cnt_reg [21]),
        .I1(\Main.sec_cnt_reg [22]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\Main.sec_cnt_reg [18]),
        .I1(\Main.sec_cnt_reg [19]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\Main.sec_cnt_reg [12]),
        .I1(\Main.sec_cnt_reg [11]),
        .I2(\Main.sec_cnt_reg [14]),
        .I3(\Main.sec_cnt_reg [13]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\Main.sec_cnt_reg [10]),
        .I1(\Main.sec_cnt_reg [9]),
        .I2(\Main.sec_cnt_reg [8]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start:000,send_temp:010,prep_alt:011,send_alt:100,send_rtc:110,rtc:101,alt:011,temp:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:000,send_temp:010,prep_alt:011,send_alt:100,send_rtc:110,rtc:101,alt:011,temp:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:000,send_temp:010,prep_alt:011,send_alt:100,send_rtc:110,rtc:101,alt:011,temp:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777774700000000)) 
    \Main.busy_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(o_i2c_ena_i_3_n_0),
        .I3(o_i2c_ena_i_2_n_0),
        .I4(i_busy),
        .I5(o_i2c_rw_i_2_n_0),
        .O(\Main.busy_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777774700000000)) 
    \Main.busy_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(o_i2c_rw_i_2_n_0),
        .I3(o_i2c_ena_i_2_n_0),
        .I4(i_busy),
        .I5(o_i2c_ena_i_3_n_0),
        .O(\Main.busy_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \Main.busy_cnt[2]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(busy_cnt));
  LUT5 #(
    .INIT(32'h5500FD00)) 
    \Main.busy_cnt[2]_i_2 
       (.I0(state[2]),
        .I1(i_busy),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(o_i2c_ena_i_2_n_0),
        .I4(state[1]),
        .O(\Main.busy_cnt[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Main.busy_cnt_reg[0] 
       (.C(sysclk),
        .CE(busy_cnt),
        .D(\Main.busy_cnt[0]_i_1_n_0 ),
        .Q(\Main.busy_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.busy_cnt_reg[1] 
       (.C(sysclk),
        .CE(busy_cnt),
        .D(\Main.busy_cnt[1]_i_1_n_0 ),
        .Q(\Main.busy_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.busy_cnt_reg[2] 
       (.C(sysclk),
        .CE(busy_cnt),
        .D(\Main.busy_cnt[2]_i_2_n_0 ),
        .Q(\Main.busy_cnt_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \Main.mess_cnt[0]_i_1 
       (.I0(\Main.mess_cnt_reg_n_0_[0] ),
        .I1(state[2]),
        .I2(i_TX_done),
        .I3(state[0]),
        .O(\Main.mess_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Main.mess_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\Main.mess_cnt[0]_i_1_n_0 ),
        .Q(\Main.mess_cnt_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    \Main.sec_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_3 
       (.I0(\Main.sec_cnt_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_4 
       (.I0(\Main.sec_cnt_reg_n_0_[3] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_5 
       (.I0(\Main.sec_cnt_reg_n_0_[2] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[0]_i_6 
       (.I0(\Main.sec_cnt_reg_n_0_[1] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Main.sec_cnt[0]_i_7 
       (.I0(\Main.sec_cnt_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_2 
       (.I0(\Main.sec_cnt_reg [15]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_3 
       (.I0(\Main.sec_cnt_reg [14]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_4 
       (.I0(\Main.sec_cnt_reg [13]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[12]_i_5 
       (.I0(\Main.sec_cnt_reg [12]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_2 
       (.I0(\Main.sec_cnt_reg [19]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_3 
       (.I0(\Main.sec_cnt_reg [18]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_4 
       (.I0(\Main.sec_cnt_reg [17]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[16]_i_5 
       (.I0(\Main.sec_cnt_reg [16]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_2 
       (.I0(\Main.sec_cnt_reg [23]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_3 
       (.I0(\Main.sec_cnt_reg [22]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_4 
       (.I0(\Main.sec_cnt_reg [21]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[20]_i_5 
       (.I0(\Main.sec_cnt_reg [20]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[24]_i_2 
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[24]_i_3 
       (.I0(\Main.sec_cnt_reg [24]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_2 
       (.I0(\Main.sec_cnt_reg_n_0_[7] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_3 
       (.I0(\Main.sec_cnt_reg_n_0_[6] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_4 
       (.I0(\Main.sec_cnt_reg_n_0_[5] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[4]_i_5 
       (.I0(\Main.sec_cnt_reg_n_0_[4] ),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_2 
       (.I0(\Main.sec_cnt_reg [11]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_3 
       (.I0(\Main.sec_cnt_reg [10]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_4 
       (.I0(\Main.sec_cnt_reg [9]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Main.sec_cnt[8]_i_5 
       (.I0(\Main.sec_cnt_reg [8]),
        .I1(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\Main.sec_cnt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[0] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_7 ),
        .Q(\Main.sec_cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Main.sec_cnt_reg[0]_i_2_n_0 ,\Main.sec_cnt_reg[0]_i_2_n_1 ,\Main.sec_cnt_reg[0]_i_2_n_2 ,\Main.sec_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Main.sec_cnt[0]_i_3_n_0 }),
        .O({\Main.sec_cnt_reg[0]_i_2_n_4 ,\Main.sec_cnt_reg[0]_i_2_n_5 ,\Main.sec_cnt_reg[0]_i_2_n_6 ,\Main.sec_cnt_reg[0]_i_2_n_7 }),
        .S({\Main.sec_cnt[0]_i_4_n_0 ,\Main.sec_cnt[0]_i_5_n_0 ,\Main.sec_cnt[0]_i_6_n_0 ,\Main.sec_cnt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[10] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[11] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[12] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[12]_i_1 
       (.CI(\Main.sec_cnt_reg[8]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[12]_i_1_n_0 ,\Main.sec_cnt_reg[12]_i_1_n_1 ,\Main.sec_cnt_reg[12]_i_1_n_2 ,\Main.sec_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[12]_i_1_n_4 ,\Main.sec_cnt_reg[12]_i_1_n_5 ,\Main.sec_cnt_reg[12]_i_1_n_6 ,\Main.sec_cnt_reg[12]_i_1_n_7 }),
        .S({\Main.sec_cnt[12]_i_2_n_0 ,\Main.sec_cnt[12]_i_3_n_0 ,\Main.sec_cnt[12]_i_4_n_0 ,\Main.sec_cnt[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[13] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[14] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[15] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[12]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[16] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[16]_i_1 
       (.CI(\Main.sec_cnt_reg[12]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[16]_i_1_n_0 ,\Main.sec_cnt_reg[16]_i_1_n_1 ,\Main.sec_cnt_reg[16]_i_1_n_2 ,\Main.sec_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[16]_i_1_n_4 ,\Main.sec_cnt_reg[16]_i_1_n_5 ,\Main.sec_cnt_reg[16]_i_1_n_6 ,\Main.sec_cnt_reg[16]_i_1_n_7 }),
        .S({\Main.sec_cnt[16]_i_2_n_0 ,\Main.sec_cnt[16]_i_3_n_0 ,\Main.sec_cnt[16]_i_4_n_0 ,\Main.sec_cnt[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[17] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[18] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[19] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[16]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[1] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_6 ),
        .Q(\Main.sec_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[20] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[20]_i_1 
       (.CI(\Main.sec_cnt_reg[16]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[20]_i_1_n_0 ,\Main.sec_cnt_reg[20]_i_1_n_1 ,\Main.sec_cnt_reg[20]_i_1_n_2 ,\Main.sec_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[20]_i_1_n_4 ,\Main.sec_cnt_reg[20]_i_1_n_5 ,\Main.sec_cnt_reg[20]_i_1_n_6 ,\Main.sec_cnt_reg[20]_i_1_n_7 }),
        .S({\Main.sec_cnt[20]_i_2_n_0 ,\Main.sec_cnt[20]_i_3_n_0 ,\Main.sec_cnt[20]_i_4_n_0 ,\Main.sec_cnt[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[21] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[22] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[23] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[20]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[24] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[24]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[24]_i_1 
       (.CI(\Main.sec_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_Main.sec_cnt_reg[24]_i_1_CO_UNCONNECTED [3:1],\Main.sec_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Main.sec_cnt_reg[24]_i_1_O_UNCONNECTED [3:2],\Main.sec_cnt_reg[24]_i_1_n_6 ,\Main.sec_cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\Main.sec_cnt[24]_i_2_n_0 ,\Main.sec_cnt[24]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[25] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[24]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[2] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_5 ),
        .Q(\Main.sec_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[3] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[0]_i_2_n_4 ),
        .Q(\Main.sec_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[4] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[4]_i_1 
       (.CI(\Main.sec_cnt_reg[0]_i_2_n_0 ),
        .CO({\Main.sec_cnt_reg[4]_i_1_n_0 ,\Main.sec_cnt_reg[4]_i_1_n_1 ,\Main.sec_cnt_reg[4]_i_1_n_2 ,\Main.sec_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[4]_i_1_n_4 ,\Main.sec_cnt_reg[4]_i_1_n_5 ,\Main.sec_cnt_reg[4]_i_1_n_6 ,\Main.sec_cnt_reg[4]_i_1_n_7 }),
        .S({\Main.sec_cnt[4]_i_2_n_0 ,\Main.sec_cnt[4]_i_3_n_0 ,\Main.sec_cnt[4]_i_4_n_0 ,\Main.sec_cnt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[5] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[6] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_5 ),
        .Q(\Main.sec_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[7] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[4]_i_1_n_4 ),
        .Q(\Main.sec_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[8] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_7 ),
        .Q(\Main.sec_cnt_reg [8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.sec_cnt_reg[8]_i_1 
       (.CI(\Main.sec_cnt_reg[4]_i_1_n_0 ),
        .CO({\Main.sec_cnt_reg[8]_i_1_n_0 ,\Main.sec_cnt_reg[8]_i_1_n_1 ,\Main.sec_cnt_reg[8]_i_1_n_2 ,\Main.sec_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.sec_cnt_reg[8]_i_1_n_4 ,\Main.sec_cnt_reg[8]_i_1_n_5 ,\Main.sec_cnt_reg[8]_i_1_n_6 ,\Main.sec_cnt_reg[8]_i_1_n_7 }),
        .S({\Main.sec_cnt[8]_i_2_n_0 ,\Main.sec_cnt[8]_i_3_n_0 ,\Main.sec_cnt[8]_i_4_n_0 ,\Main.sec_cnt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sec_cnt_reg[9] 
       (.C(sysclk),
        .CE(state__0),
        .D(\Main.sec_cnt_reg[8]_i_1_n_6 ),
        .Q(\Main.sec_cnt_reg [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF5FFF3FF02000C00)) 
    \Main.sensor_cnt[0]_i_1 
       (.I0(\Main.mess_cnt_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(i_TX_done),
        .I4(state[2]),
        .I5(\Main.sensor_cnt_reg_n_0_[0] ),
        .O(\Main.sensor_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07FF7000)) 
    \Main.sensor_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\Main.sensor_cnt_reg_n_0_[0] ),
        .I3(sensor_cnt),
        .I4(\Main.sensor_cnt_reg_n_0_[1] ),
        .O(\Main.sensor_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \Main.sensor_cnt[1]_i_2 
       (.I0(\Main.mess_cnt_reg_n_0_[0] ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(i_TX_done),
        .I4(state[2]),
        .O(sensor_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sensor_cnt_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\Main.sensor_cnt[0]_i_1_n_0 ),
        .Q(\Main.sensor_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Main.sensor_cnt_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\Main.sensor_cnt[1]_i_1_n_0 ),
        .Q(\Main.sensor_cnt_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    \alt_data[15]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\temp_data[15]_i_2_n_0 ),
        .O(alt_data[15]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \alt_data[23]_i_1 
       (.I0(\alt_data[23]_i_2_n_0 ),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[2] ),
        .I4(\Main.busy_cnt_reg_n_0_[1] ),
        .O(alt_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \alt_data[23]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\alt_data[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \alt_data[7]_i_1 
       (.I0(\o_TX_data[7]_i_4_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .O(alt_data[7]));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[0] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[0]),
        .Q(\alt_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[10] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[2]),
        .Q(\alt_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[11] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[3]),
        .Q(\alt_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[12] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[4]),
        .Q(\alt_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[13] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[5]),
        .Q(\alt_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[14] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[6]),
        .Q(\alt_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[15] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[7]),
        .Q(\alt_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[16] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[0]),
        .Q(in20[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[17] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[1]),
        .Q(in20[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[18] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[2]),
        .Q(in20[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[19] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[3]),
        .Q(in20[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[1] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[1]),
        .Q(\alt_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[20] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[4]),
        .Q(in20[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[21] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[5]),
        .Q(in20[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[22] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[6]),
        .Q(in20[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[23] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .D(i_data_read[7]),
        .Q(in20[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[2] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[2]),
        .Q(\alt_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[3] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[3]),
        .Q(\alt_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[4] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[4]),
        .Q(\alt_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[5] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[5]),
        .Q(\alt_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[6] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[6]),
        .Q(\alt_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[7] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .D(i_data_read[7]),
        .Q(\alt_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[8] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[0]),
        .Q(\alt_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alt_data_reg[9] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .D(i_data_read[1]),
        .Q(\alt_data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE busy_prev_reg
       (.C(sysclk),
        .CE(busy_cnt),
        .D(i_busy),
        .Q(busy_prev_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000FE02)) 
    o_TX_DV_i_1
       (.I0(o_TX_DV),
        .I1(o_TX_DV_i_2_n_0),
        .I2(o_TX_DV_i_3_n_0),
        .I3(o_TX_DV_i_4_n_0),
        .I4(state__0),
        .O(o_TX_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000004003BFFF)) 
    o_TX_DV_i_2
       (.I0(busy_prev_reg_n_0),
        .I1(i_busy),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(\Main.busy_cnt_reg_n_0_[2] ),
        .I5(o_TX_DV_i_5_n_0),
        .O(o_TX_DV_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FFAA00CFFFAA)) 
    o_TX_DV_i_3
       (.I0(state[1]),
        .I1(\rtc_data[15]_i_2_n_0 ),
        .I2(i_busy),
        .I3(state[2]),
        .I4(state[0]),
        .I5(o_i2c_ena_i_2_n_0),
        .O(o_TX_DV_i_3_n_0));
  LUT6 #(
    .INIT(64'h3F5C0F5C30500050)) 
    o_TX_DV_i_4
       (.I0(\rtc_data[15]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(o_i2c_ena_i_2_n_0),
        .I5(i_TX_done),
        .O(o_TX_DV_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    o_TX_DV_i_5
       (.I0(state[1]),
        .I1(state[2]),
        .O(o_TX_DV_i_5_n_0));
  FDRE o_TX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_TX_DV_i_1_n_0),
        .Q(o_TX_DV),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[0]_i_2 
       (.I0(in18[0]),
        .I1(\temp_data_reg_n_0_[0] ),
        .I2(in20[0]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[0]_i_3 
       (.I0(\o_TX_data[0]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[8] ),
        .I2(\rtc_data_reg_n_0_[0] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[0]_i_4 
       (.I0(in20[0]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[0] ),
        .I3(\alt_data_reg_n_0_[8] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[1]_i_2 
       (.I0(in18[1]),
        .I1(\temp_data_reg_n_0_[1] ),
        .I2(in20[1]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[1]_i_3 
       (.I0(\o_TX_data[1]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[9] ),
        .I2(\rtc_data_reg_n_0_[1] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[1]_i_4 
       (.I0(in20[1]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[1] ),
        .I3(\alt_data_reg_n_0_[9] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[2]_i_2 
       (.I0(in18[2]),
        .I1(\temp_data_reg_n_0_[2] ),
        .I2(in20[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[2]_i_3 
       (.I0(\o_TX_data[2]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[10] ),
        .I2(\rtc_data_reg_n_0_[2] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[2]_i_4 
       (.I0(in20[2]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[2] ),
        .I3(\alt_data_reg_n_0_[10] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[3]_i_2 
       (.I0(in18[3]),
        .I1(\temp_data_reg_n_0_[3] ),
        .I2(in20[3]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[3]_i_3 
       (.I0(\o_TX_data[3]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[11] ),
        .I2(\rtc_data_reg_n_0_[3] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[3]_i_4 
       (.I0(in20[3]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[3] ),
        .I3(\alt_data_reg_n_0_[11] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[4]_i_2 
       (.I0(in18[4]),
        .I1(\temp_data_reg_n_0_[4] ),
        .I2(in20[4]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[4]_i_3 
       (.I0(\o_TX_data[4]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[12] ),
        .I2(\rtc_data_reg_n_0_[4] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[4]_i_4 
       (.I0(in20[4]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[4] ),
        .I3(\alt_data_reg_n_0_[12] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[5]_i_2 
       (.I0(in18[5]),
        .I1(\temp_data_reg_n_0_[5] ),
        .I2(in20[5]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[5]_i_3 
       (.I0(\o_TX_data[5]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[13] ),
        .I2(\rtc_data_reg_n_0_[5] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[5]_i_4 
       (.I0(in20[5]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[5] ),
        .I3(\alt_data_reg_n_0_[13] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[6]_i_2 
       (.I0(in18[6]),
        .I1(\temp_data_reg_n_0_[6] ),
        .I2(in20[6]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[6]_i_3 
       (.I0(\o_TX_data[6]_i_4_n_0 ),
        .I1(\rtc_data_reg_n_0_[14] ),
        .I2(\rtc_data_reg_n_0_[6] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[6]_i_4 
       (.I0(in20[6]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[6] ),
        .I3(\alt_data_reg_n_0_[14] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4E44FFFF4E444040)) 
    \o_TX_data[7]_i_1 
       (.I0(state[0]),
        .I1(i_TX_done),
        .I2(state[1]),
        .I3(\o_TX_data[7]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\o_TX_data[7]_i_4_n_0 ),
        .O(\o_TX_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \o_TX_data[7]_i_3 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .O(\o_TX_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \o_TX_data[7]_i_4 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[1] ),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(state[0]),
        .O(\o_TX_data[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \o_TX_data[7]_i_5 
       (.I0(in18[7]),
        .I1(\temp_data_reg_n_0_[7] ),
        .I2(in20[7]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\o_TX_data[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFAEEAAAA)) 
    \o_TX_data[7]_i_6 
       (.I0(\o_TX_data[7]_i_7_n_0 ),
        .I1(\rtc_data_reg_n_0_[15] ),
        .I2(\rtc_data_reg_n_0_[7] ),
        .I3(\Main.mess_cnt_reg_n_0_[0] ),
        .I4(state[1]),
        .O(\o_TX_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8BB88)) 
    \o_TX_data[7]_i_7 
       (.I0(in20[7]),
        .I1(state[0]),
        .I2(\alt_data_reg_n_0_[7] ),
        .I3(\alt_data_reg_n_0_[15] ),
        .I4(\Main.mess_cnt_reg_n_0_[0] ),
        .I5(state[1]),
        .O(\o_TX_data[7]_i_7_n_0 ));
  FDRE \o_TX_data_reg[0] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[0]_i_1_n_0 ),
        .Q(o_TX_data[0]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[0]_i_1 
       (.I0(\o_TX_data[0]_i_2_n_0 ),
        .I1(\o_TX_data[0]_i_3_n_0 ),
        .O(\o_TX_data_reg[0]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[1] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[1]_i_1_n_0 ),
        .Q(o_TX_data[1]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[1]_i_1 
       (.I0(\o_TX_data[1]_i_2_n_0 ),
        .I1(\o_TX_data[1]_i_3_n_0 ),
        .O(\o_TX_data_reg[1]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[2] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[2]_i_1_n_0 ),
        .Q(o_TX_data[2]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[2]_i_1 
       (.I0(\o_TX_data[2]_i_2_n_0 ),
        .I1(\o_TX_data[2]_i_3_n_0 ),
        .O(\o_TX_data_reg[2]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[3] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[3]_i_1_n_0 ),
        .Q(o_TX_data[3]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[3]_i_1 
       (.I0(\o_TX_data[3]_i_2_n_0 ),
        .I1(\o_TX_data[3]_i_3_n_0 ),
        .O(\o_TX_data_reg[3]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[4] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[4]_i_1_n_0 ),
        .Q(o_TX_data[4]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[4]_i_1 
       (.I0(\o_TX_data[4]_i_2_n_0 ),
        .I1(\o_TX_data[4]_i_3_n_0 ),
        .O(\o_TX_data_reg[4]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[5] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[5]_i_1_n_0 ),
        .Q(o_TX_data[5]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[5]_i_1 
       (.I0(\o_TX_data[5]_i_2_n_0 ),
        .I1(\o_TX_data[5]_i_3_n_0 ),
        .O(\o_TX_data_reg[5]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[6] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[6]_i_1_n_0 ),
        .Q(o_TX_data[6]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[6]_i_1 
       (.I0(\o_TX_data[6]_i_2_n_0 ),
        .I1(\o_TX_data[6]_i_3_n_0 ),
        .O(\o_TX_data_reg[6]_i_1_n_0 ),
        .S(state[2]));
  FDRE \o_TX_data_reg[7] 
       (.C(sysclk),
        .CE(\o_TX_data[7]_i_1_n_0 ),
        .D(\o_TX_data_reg[7]_i_2_n_0 ),
        .Q(o_TX_data[7]),
        .R(1'b0));
  MUXF7 \o_TX_data_reg[7]_i_2 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(\o_TX_data[7]_i_6_n_0 ),
        .O(\o_TX_data_reg[7]_i_2_n_0 ),
        .S(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\o_i2c_address[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[4]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_i2c_address[5]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\o_i2c_address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01000300)) 
    \o_i2c_address[6]_i_1 
       (.I0(state[1]),
        .I1(o_i2c_ena_i_2_n_0),
        .I2(\o_i2c_address[6]_i_3_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .O(\o_i2c_address[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \o_i2c_address[6]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[3]_i_1_n_0 ),
        .Q(o_i2c_address[0]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[4] 
       (.C(sysclk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[4]_i_1_n_0 ),
        .Q(o_i2c_address[1]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[5] 
       (.C(sysclk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[5]_i_1_n_0 ),
        .Q(o_i2c_address[2]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[6] 
       (.C(sysclk),
        .CE(\o_i2c_address[6]_i_1_n_0 ),
        .D(\o_i2c_address[6]_i_2_n_0 ),
        .Q(o_i2c_address[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000100)) 
    \o_i2c_data_wr[7]_i_1 
       (.I0(o_i2c_ena_i_2_n_0),
        .I1(\o_i2c_address[6]_i_3_n_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(o_i2c_data_wr),
        .O(\o_i2c_data_wr[7]_i_1_n_0 ));
  FDRE \o_i2c_data_wr_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[7]_i_1_n_0 ),
        .Q(o_i2c_data_wr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h101FFFFF101F0000)) 
    o_i2c_ena_i_1
       (.I0(o_i2c_ena_i_2_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .I3(o_i2c_ena_i_3_n_0),
        .I4(o_i2c_ena_i_4_n_0),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    o_i2c_ena_i_2
       (.I0(busy_prev_reg_n_0),
        .I1(i_busy),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(\Main.busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_ena_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    o_i2c_ena_i_3
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .O(o_i2c_ena_i_3_n_0));
  LUT6 #(
    .INIT(64'h020000020200008A)) 
    o_i2c_ena_i_4
       (.I0(state[0]),
        .I1(state[2]),
        .I2(o_i2c_ena_i_2_n_0),
        .I3(o_i2c_ena_i_3_n_0),
        .I4(o_i2c_rw_i_2_n_0),
        .I5(state[1]),
        .O(o_i2c_ena_i_4_n_0));
  FDRE o_i2c_ena_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_i2c_ena_i_1_n_0),
        .Q(o_i2c_ena),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    o_i2c_rw_i_1
       (.I0(o_i2c_rw_i_2_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .I3(o_i2c_rw_i_3_n_0),
        .I4(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    o_i2c_rw_i_2
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .O(o_i2c_rw_i_2_n_0));
  LUT6 #(
    .INIT(64'h01000000010F0000)) 
    o_i2c_rw_i_3
       (.I0(\o_i2c_address[6]_i_3_n_0 ),
        .I1(state[2]),
        .I2(o_i2c_ena_i_2_n_0),
        .I3(state[1]),
        .I4(state[0]),
        .I5(o_i2c_ena_i_3_n_0),
        .O(o_i2c_rw_i_3_n_0));
  FDRE o_i2c_rw_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \rtc_data[15]_i_1 
       (.I0(\rtc_data[15]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(i_busy),
        .I5(o_i2c_ena_i_2_n_0),
        .O(rtc_data));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5DF7)) 
    \rtc_data[15]_i_2 
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .O(\rtc_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \rtc_data[7]_i_1 
       (.I0(o_i2c_ena_i_2_n_0),
        .I1(i_busy),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\o_i2c_address[6]_i_3_n_0 ),
        .O(\rtc_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[0] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[0]),
        .Q(\rtc_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[10] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[2]),
        .Q(\rtc_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[11] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[3]),
        .Q(\rtc_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[12] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[4]),
        .Q(\rtc_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[13] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[5]),
        .Q(\rtc_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[14] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[6]),
        .Q(\rtc_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[15] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[7]),
        .Q(\rtc_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[1] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[1]),
        .Q(\rtc_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[2] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[2]),
        .Q(\rtc_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[3] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[3]),
        .Q(\rtc_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[4] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[4]),
        .Q(\rtc_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[5] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[5]),
        .Q(\rtc_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[6] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[6]),
        .Q(\rtc_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[7] 
       (.C(sysclk),
        .CE(\rtc_data[7]_i_1_n_0 ),
        .D(i_data_read[7]),
        .Q(\rtc_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[8] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[0]),
        .Q(\rtc_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtc_data_reg[9] 
       (.C(sysclk),
        .CE(rtc_data),
        .D(i_data_read[1]),
        .Q(\rtc_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    \temp_data[15]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\temp_data[15]_i_2_n_0 ),
        .O(\temp_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \temp_data[15]_i_2 
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(\Main.busy_cnt_reg_n_0_[2] ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .O(\temp_data[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \temp_data[7]_i_1 
       (.I0(\o_TX_data[7]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .O(\temp_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[0] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[0]),
        .Q(\temp_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[10] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[2]),
        .Q(in18[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[11] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[3]),
        .Q(in18[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[12] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[4]),
        .Q(in18[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[13] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[5]),
        .Q(in18[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[14] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[6]),
        .Q(in18[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[15] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[7]),
        .Q(in18[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[1] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[1]),
        .Q(\temp_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[2] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[2]),
        .Q(\temp_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[3] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[3]),
        .Q(\temp_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[4] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[4]),
        .Q(\temp_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[5] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[5]),
        .Q(\temp_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[6] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[6]),
        .Q(\temp_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[7] 
       (.C(sysclk),
        .CE(\temp_data[7]_i_1_n_0 ),
        .D(i_data_read[7]),
        .Q(\temp_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[8] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[0]),
        .Q(in18[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_data_reg[9] 
       (.C(sysclk),
        .CE(\temp_data[15]_i_1_n_0 ),
        .D(i_data_read[1]),
        .Q(in18[1]),
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

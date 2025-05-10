// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 15:54:06 2025
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
  wire \<const1> ;
  wire i_TX_done;
  wire i_busy;
  wire [7:0]i_data_read;
  wire led2;
  wire o_TX_DV;
  wire [7:0]o_TX_data;
  wire [5:0]\^o_i2c_address ;
  wire [6:6]\^o_i2c_data_wr ;
  wire o_i2c_ena;
  wire o_i2c_rw;
  wire reset_n;
  wire sysclk;

  assign o_i2c_address[6] = \<const1> ;
  assign o_i2c_address[5] = \^o_i2c_address [5];
  assign o_i2c_address[4] = \^o_i2c_address [2];
  assign o_i2c_address[3:2] = \^o_i2c_address [3:2];
  assign o_i2c_address[1] = \^o_i2c_address [2];
  assign o_i2c_address[0] = \^o_i2c_address [0];
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
        .led2(led2),
        .o_TX_DV(o_TX_DV),
        .o_TX_data(o_TX_data),
        .o_i2c_address({\^o_i2c_address [5],\^o_i2c_address [2],\^o_i2c_address [3],\^o_i2c_address [0]}),
        .o_i2c_data_wr(\^o_i2c_data_wr ),
        .o_i2c_ena(o_i2c_ena),
        .o_i2c_rw(o_i2c_rw),
        .reset_n(reset_n),
        .sysclk(sysclk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Read_Sensorsmod" *) 
module I2C_Test_Read_Sensorsmod_0_0_Read_Sensorsmod
   (o_i2c_address,
    o_TX_data,
    o_i2c_ena,
    o_i2c_rw,
    o_i2c_data_wr,
    o_TX_DV,
    led2,
    sysclk,
    i_data_read,
    reset_n,
    i_TX_done,
    i_busy);
  output [3:0]o_i2c_address;
  output [7:0]o_TX_data;
  output o_i2c_ena;
  output o_i2c_rw;
  output [0:0]o_i2c_data_wr;
  output o_TX_DV;
  output led2;
  input sysclk;
  input [7:0]i_data_read;
  input reset_n;
  input i_TX_done;
  input i_busy;

  wire \FSM_sequential_Main.mess_cnt_i_1_n_0 ;
  wire \FSM_sequential_Main.mess_cnt_reg_n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
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
  wire \Main.busy_cnt[0]_i_2_n_0 ;
  wire \Main.busy_cnt[0]_i_3_n_0 ;
  wire \Main.busy_cnt[0]_i_4_n_0 ;
  wire \Main.busy_cnt[1]_i_1_n_0 ;
  wire \Main.busy_cnt[2]_i_2_n_0 ;
  wire \Main.busy_cnt[2]_i_3_n_0 ;
  wire \Main.busy_cnt_reg_n_0_[0] ;
  wire \Main.busy_cnt_reg_n_0_[1] ;
  wire \Main.busy_cnt_reg_n_0_[2] ;
  wire \Main.conv_cnt[0]_i_3_n_0 ;
  wire \Main.conv_cnt[0]_i_4_n_0 ;
  wire \Main.conv_cnt[0]_i_5_n_0 ;
  wire \Main.conv_cnt[0]_i_6_n_0 ;
  wire \Main.conv_cnt[12]_i_2_n_0 ;
  wire \Main.conv_cnt[12]_i_3_n_0 ;
  wire \Main.conv_cnt[12]_i_4_n_0 ;
  wire \Main.conv_cnt[12]_i_5_n_0 ;
  wire \Main.conv_cnt[16]_i_2_n_0 ;
  wire \Main.conv_cnt[4]_i_2_n_0 ;
  wire \Main.conv_cnt[4]_i_3_n_0 ;
  wire \Main.conv_cnt[4]_i_4_n_0 ;
  wire \Main.conv_cnt[4]_i_5_n_0 ;
  wire \Main.conv_cnt[4]_i_6_n_0 ;
  wire \Main.conv_cnt[4]_i_7_n_0 ;
  wire \Main.conv_cnt[8]_i_2_n_0 ;
  wire \Main.conv_cnt[8]_i_3_n_0 ;
  wire \Main.conv_cnt[8]_i_4_n_0 ;
  wire \Main.conv_cnt[8]_i_5_n_0 ;
  wire \Main.conv_cnt[8]_i_6_n_0 ;
  wire \Main.conv_cnt[8]_i_7_n_0 ;
  wire [16:6]\Main.conv_cnt_reg ;
  wire \Main.conv_cnt_reg[0]_i_2_n_0 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_1 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_2 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_3 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_4 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_5 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_6 ;
  wire \Main.conv_cnt_reg[0]_i_2_n_7 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_0 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_1 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_2 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_3 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_4 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_5 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_6 ;
  wire \Main.conv_cnt_reg[12]_i_1_n_7 ;
  wire \Main.conv_cnt_reg[16]_i_1_n_7 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_0 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_1 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_2 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_3 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_4 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_5 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_6 ;
  wire \Main.conv_cnt_reg[4]_i_1_n_7 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_0 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_1 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_2 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_3 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_4 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_5 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_6 ;
  wire \Main.conv_cnt_reg[8]_i_1_n_7 ;
  wire \Main.conv_cnt_reg_n_0_[0] ;
  wire \Main.conv_cnt_reg_n_0_[1] ;
  wire \Main.conv_cnt_reg_n_0_[2] ;
  wire \Main.conv_cnt_reg_n_0_[3] ;
  wire \Main.conv_cnt_reg_n_0_[4] ;
  wire \Main.conv_cnt_reg_n_0_[5] ;
  wire \Main.sec_cnt[0]_i_1_n_0 ;
  wire \Main.sec_cnt[0]_i_3_n_0 ;
  wire \Main.sec_cnt[0]_i_4_n_0 ;
  wire \Main.sec_cnt[0]_i_5_n_0 ;
  wire \Main.sec_cnt[0]_i_6_n_0 ;
  wire \Main.sec_cnt[0]_i_7_n_0 ;
  wire \Main.sec_cnt[0]_i_8_n_0 ;
  wire \Main.sec_cnt[0]_i_9_n_0 ;
  wire \Main.sec_cnt[12]_i_2_n_0 ;
  wire \Main.sec_cnt[12]_i_3_n_0 ;
  wire \Main.sec_cnt[12]_i_4_n_0 ;
  wire \Main.sec_cnt[12]_i_5_n_0 ;
  wire \Main.sec_cnt[12]_i_6_n_0 ;
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
  wire \Main.sec_cnt[24]_i_4_n_0 ;
  wire \Main.sec_cnt[24]_i_5_n_0 ;
  wire \Main.sec_cnt[4]_i_2_n_0 ;
  wire \Main.sec_cnt[4]_i_3_n_0 ;
  wire \Main.sec_cnt[4]_i_4_n_0 ;
  wire \Main.sec_cnt[4]_i_5_n_0 ;
  wire \Main.sec_cnt[8]_i_10_n_0 ;
  wire \Main.sec_cnt[8]_i_2_n_0 ;
  wire \Main.sec_cnt[8]_i_3_n_0 ;
  wire \Main.sec_cnt[8]_i_4_n_0 ;
  wire \Main.sec_cnt[8]_i_5_n_0 ;
  wire \Main.sec_cnt[8]_i_6_n_0 ;
  wire \Main.sec_cnt[8]_i_7_n_0 ;
  wire \Main.sec_cnt[8]_i_8_n_0 ;
  wire \Main.sec_cnt[8]_i_9_n_0 ;
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
  wire [23:7]alt_data;
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
  wire conv_cnt;
  wire i_TX_done;
  wire i_busy;
  wire [7:0]i_data_read;
  wire [7:0]in14;
  wire [7:0]in16;
  wire [7:0]in18;
  wire led2;
  wire led2_i_1_n_0;
  wire led2_i_2_n_0;
  wire led2_i_3_n_0;
  wire led2_i_4_n_0;
  wire led2_i_5_n_0;
  wire led2_i_6_n_0;
  wire led2_i_7_n_0;
  wire led2_i_8_n_0;
  wire o_TX_DV;
  wire o_TX_DV_i_1_n_0;
  wire o_TX_DV_i_2_n_0;
  wire o_TX_DV_i_3_n_0;
  wire o_TX_DV_i_4_n_0;
  wire o_TX_DV_i_5_n_0;
  wire o_TX_DV_i_6_n_0;
  wire [7:0]o_TX_data;
  wire o_TX_data0;
  wire \o_TX_data[0]_i_2_n_0 ;
  wire \o_TX_data[0]_i_3_n_0 ;
  wire \o_TX_data[1]_i_2_n_0 ;
  wire \o_TX_data[1]_i_3_n_0 ;
  wire \o_TX_data[2]_i_2_n_0 ;
  wire \o_TX_data[2]_i_3_n_0 ;
  wire \o_TX_data[3]_i_2_n_0 ;
  wire \o_TX_data[3]_i_3_n_0 ;
  wire \o_TX_data[4]_i_2_n_0 ;
  wire \o_TX_data[4]_i_3_n_0 ;
  wire \o_TX_data[5]_i_2_n_0 ;
  wire \o_TX_data[5]_i_3_n_0 ;
  wire \o_TX_data[6]_i_2_n_0 ;
  wire \o_TX_data[6]_i_3_n_0 ;
  wire \o_TX_data[7]_i_10_n_0 ;
  wire \o_TX_data[7]_i_11_n_0 ;
  wire \o_TX_data[7]_i_12_n_0 ;
  wire \o_TX_data[7]_i_13_n_0 ;
  wire \o_TX_data[7]_i_3_n_0 ;
  wire \o_TX_data[7]_i_4_n_0 ;
  wire \o_TX_data[7]_i_5_n_0 ;
  wire \o_TX_data[7]_i_6_n_0 ;
  wire \o_TX_data[7]_i_7_n_0 ;
  wire \o_TX_data[7]_i_8_n_0 ;
  wire \o_TX_data[7]_i_9_n_0 ;
  wire [7:0]o_TX_data_0;
  wire [3:0]o_i2c_address;
  wire o_i2c_address0;
  wire \o_i2c_address[0]_i_1_n_0 ;
  wire \o_i2c_address[3]_i_1_n_0 ;
  wire \o_i2c_address[4]_i_1_n_0 ;
  wire \o_i2c_address[5]_i_2_n_0 ;
  wire \o_i2c_address[5]_i_3_n_0 ;
  wire \o_i2c_address[5]_i_4_n_0 ;
  wire [0:0]o_i2c_data_wr;
  wire \o_i2c_data_wr[7]_i_1_n_0 ;
  wire \o_i2c_data_wr[7]_i_2_n_0 ;
  wire o_i2c_ena;
  wire o_i2c_ena_i_1_n_0;
  wire o_i2c_ena_i_2_n_0;
  wire o_i2c_ena_i_3_n_0;
  wire o_i2c_ena_i_4_n_0;
  wire o_i2c_ena_i_5_n_0;
  wire o_i2c_rw;
  wire o_i2c_rw_i_1_n_0;
  wire o_i2c_rw_i_2_n_0;
  wire reset_n;
  wire [23:7]rtc_data;
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
  wire \temp_data[7]_i_2_n_0 ;
  wire \temp_data_reg_n_0_[0] ;
  wire \temp_data_reg_n_0_[1] ;
  wire \temp_data_reg_n_0_[2] ;
  wire \temp_data_reg_n_0_[3] ;
  wire \temp_data_reg_n_0_[4] ;
  wire \temp_data_reg_n_0_[5] ;
  wire \temp_data_reg_n_0_[6] ;
  wire \temp_data_reg_n_0_[7] ;
  wire [3:0]\NLW_Main.conv_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Main.conv_cnt_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_Main.sec_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Main.sec_cnt_reg[24]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hE6AAAAAA)) 
    \FSM_sequential_Main.mess_cnt_i_1 
       (.I0(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I1(i_TX_done),
        .I2(TX_done_prev_reg_n_0),
        .I3(state[2]),
        .I4(state[0]),
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
    .INIT(32'h00FFAB00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\Main.sensor_cnt_reg_n_0_[1] ),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5500FFFF00FE0000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(\Main.sensor_cnt_reg_n_0_[0] ),
        .I2(\Main.sensor_cnt_reg_n_0_[1] ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0FFFA400)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(\Main.sensor_cnt_reg_n_0_[1] ),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(sensor_cnt),
        .I3(\o_TX_data[7]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\Main.sec_cnt_reg [23]),
        .I4(\Main.sec_cnt_reg [24]),
        .I5(\Main.sec_cnt_reg [25]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA800)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\Main.sec_cnt_reg [20]),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(led2_i_7_n_0),
        .I3(\FSM_sequential_state[2]_i_8_n_0 ),
        .I4(led2_i_5_n_0),
        .I5(led2_i_4_n_0),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\temp_data[7]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_10_n_0 ),
        .I3(\Main.conv_cnt_reg [15]),
        .I4(\Main.conv_cnt_reg [14]),
        .I5(\Main.conv_cnt_reg [16]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\Main.conv_cnt_reg [12]),
        .I1(\Main.conv_cnt_reg [10]),
        .I2(\Main.conv_cnt[8]_i_6_n_0 ),
        .I3(\Main.conv_cnt_reg [11]),
        .I4(\Main.conv_cnt_reg [13]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\Main.sec_cnt_reg [8]),
        .I1(\Main.sec_cnt_reg [10]),
        .I2(\Main.sec_cnt_reg [9]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\Main.sec_cnt_reg [15]),
        .I1(\Main.sec_cnt_reg [17]),
        .I2(\Main.sec_cnt_reg [16]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28222222)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(state[0]),
        .I1(\Main.busy_cnt_reg_n_0_[1] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(\Main.busy_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start:000,send_temp:010,alt:100,send_alt:101,send_rtc:111,rtc:110,prep_alt:011,temp:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "start:000,send_temp:010,alt:100,send_alt:101,send_rtc:111,rtc:110,prep_alt:011,temp:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "start:000,send_temp:010,alt:100,send_alt:101,send_rtc:111,rtc:110,prep_alt:011,temp:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'hFFFF0000F5E50000)) 
    \Main.busy_cnt[0]_i_1 
       (.I0(\o_i2c_address[5]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(\Main.busy_cnt[0]_i_2_n_0 ),
        .I4(\o_i2c_address[5]_i_4_n_0 ),
        .I5(\Main.busy_cnt[0]_i_3_n_0 ),
        .O(\Main.busy_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF57FF)) 
    \Main.busy_cnt[0]_i_2 
       (.I0(\Main.conv_cnt_reg [14]),
        .I1(\Main.conv_cnt_reg [13]),
        .I2(\Main.conv_cnt_reg [12]),
        .I3(\Main.conv_cnt_reg [16]),
        .I4(\Main.busy_cnt[0]_i_4_n_0 ),
        .O(\Main.busy_cnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Main.busy_cnt[0]_i_3 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(i_busy),
        .O(\Main.busy_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0007FFFF)) 
    \Main.busy_cnt[0]_i_4 
       (.I0(\Main.conv_cnt[8]_i_6_n_0 ),
        .I1(\Main.conv_cnt_reg [10]),
        .I2(\Main.conv_cnt_reg [11]),
        .I3(\Main.conv_cnt_reg [13]),
        .I4(\Main.conv_cnt_reg [15]),
        .O(\Main.busy_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF3F00C0FB3B00C0)) 
    \Main.busy_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(busy_prev_reg_n_0),
        .I4(\Main.busy_cnt_reg_n_0_[1] ),
        .I5(\Main.busy_cnt_reg_n_0_[2] ),
        .O(\Main.busy_cnt[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Main.busy_cnt[2]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .O(busy_cnt));
  LUT6 #(
    .INIT(64'hF3FFFFEE0C000000)) 
    \Main.busy_cnt[2]_i_2 
       (.I0(\Main.busy_cnt[2]_i_3_n_0 ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .I4(\Main.busy_cnt_reg_n_0_[1] ),
        .I5(\Main.busy_cnt_reg_n_0_[2] ),
        .O(\Main.busy_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Main.busy_cnt[2]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\Main.busy_cnt[2]_i_3_n_0 ));
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
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \Main.conv_cnt[0]_i_1 
       (.I0(state[0]),
        .I1(\o_i2c_address[5]_i_3_n_0 ),
        .I2(\o_i2c_address[5]_i_4_n_0 ),
        .I3(o_i2c_ena_i_4_n_0),
        .I4(state[1]),
        .I5(state[2]),
        .O(conv_cnt));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.conv_cnt[0]_i_3 
       (.I0(\Main.busy_cnt[0]_i_2_n_0 ),
        .I1(\Main.conv_cnt_reg_n_0_[3] ),
        .O(\Main.conv_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.conv_cnt[0]_i_4 
       (.I0(\Main.busy_cnt[0]_i_2_n_0 ),
        .I1(\Main.conv_cnt_reg_n_0_[2] ),
        .O(\Main.conv_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.conv_cnt[0]_i_5 
       (.I0(\Main.busy_cnt[0]_i_2_n_0 ),
        .I1(\Main.conv_cnt_reg_n_0_[1] ),
        .O(\Main.conv_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \Main.conv_cnt[0]_i_6 
       (.I0(\Main.conv_cnt_reg_n_0_[0] ),
        .I1(\Main.busy_cnt[0]_i_2_n_0 ),
        .O(\Main.conv_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000070000)) 
    \Main.conv_cnt[12]_i_2 
       (.I0(\Main.conv_cnt[8]_i_6_n_0 ),
        .I1(\Main.conv_cnt_reg [10]),
        .I2(\Main.conv_cnt_reg [13]),
        .I3(\Main.conv_cnt_reg [11]),
        .I4(\Main.conv_cnt_reg [15]),
        .I5(\Main.conv_cnt[8]_i_7_n_0 ),
        .O(\Main.conv_cnt[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888CCCCC)) 
    \Main.conv_cnt[12]_i_3 
       (.I0(\Main.busy_cnt[0]_i_4_n_0 ),
        .I1(\Main.conv_cnt_reg [14]),
        .I2(\Main.conv_cnt_reg [13]),
        .I3(\Main.conv_cnt_reg [12]),
        .I4(\Main.conv_cnt_reg [16]),
        .O(\Main.conv_cnt[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \Main.conv_cnt[12]_i_4 
       (.I0(\Main.conv_cnt_reg [15]),
        .I1(\Main.conv_cnt_reg [14]),
        .I2(\Main.conv_cnt_reg [16]),
        .I3(\Main.conv_cnt_reg [13]),
        .O(\Main.conv_cnt[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8CCC)) 
    \Main.conv_cnt[12]_i_5 
       (.I0(\Main.busy_cnt[0]_i_4_n_0 ),
        .I1(\Main.conv_cnt_reg [12]),
        .I2(\Main.conv_cnt_reg [14]),
        .I3(\Main.conv_cnt_reg [16]),
        .O(\Main.conv_cnt[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB0B0B0F0)) 
    \Main.conv_cnt[16]_i_2 
       (.I0(\Main.busy_cnt[0]_i_4_n_0 ),
        .I1(\Main.conv_cnt_reg [14]),
        .I2(\Main.conv_cnt_reg [16]),
        .I3(\Main.conv_cnt_reg [12]),
        .I4(\Main.conv_cnt_reg [13]),
        .O(\Main.conv_cnt[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000020000)) 
    \Main.conv_cnt[4]_i_2 
       (.I0(\Main.conv_cnt[4]_i_6_n_0 ),
        .I1(\Main.conv_cnt_reg [6]),
        .I2(\Main.conv_cnt_reg [9]),
        .I3(\Main.conv_cnt_reg [8]),
        .I4(\Main.conv_cnt_reg [7]),
        .I5(\Main.conv_cnt[4]_i_7_n_0 ),
        .O(\Main.conv_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000020000)) 
    \Main.conv_cnt[4]_i_3 
       (.I0(\Main.conv_cnt[4]_i_6_n_0 ),
        .I1(\Main.conv_cnt_reg [7]),
        .I2(\Main.conv_cnt_reg [9]),
        .I3(\Main.conv_cnt_reg [8]),
        .I4(\Main.conv_cnt_reg [6]),
        .I5(\Main.conv_cnt[4]_i_7_n_0 ),
        .O(\Main.conv_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.conv_cnt[4]_i_4 
       (.I0(\Main.busy_cnt[0]_i_2_n_0 ),
        .I1(\Main.conv_cnt_reg_n_0_[5] ),
        .O(\Main.conv_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.conv_cnt[4]_i_5 
       (.I0(\Main.busy_cnt[0]_i_2_n_0 ),
        .I1(\Main.conv_cnt_reg_n_0_[4] ),
        .O(\Main.conv_cnt[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Main.conv_cnt[4]_i_6 
       (.I0(\Main.conv_cnt_reg [11]),
        .I1(\Main.conv_cnt_reg [13]),
        .O(\Main.conv_cnt[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF5557)) 
    \Main.conv_cnt[4]_i_7 
       (.I0(\Main.conv_cnt_reg [15]),
        .I1(\Main.conv_cnt_reg [13]),
        .I2(\Main.conv_cnt_reg [11]),
        .I3(\Main.conv_cnt_reg [10]),
        .I4(\Main.conv_cnt[8]_i_7_n_0 ),
        .O(\Main.conv_cnt[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h777FFFFF00000000)) 
    \Main.conv_cnt[8]_i_2 
       (.I0(\Main.conv_cnt_reg [15]),
        .I1(\Main.conv_cnt_reg [16]),
        .I2(\Main.conv_cnt_reg [12]),
        .I3(\Main.conv_cnt_reg [13]),
        .I4(\Main.conv_cnt_reg [14]),
        .I5(\Main.conv_cnt_reg [11]),
        .O(\Main.conv_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF000100FF00FF00)) 
    \Main.conv_cnt[8]_i_3 
       (.I0(\Main.conv_cnt[8]_i_6_n_0 ),
        .I1(\Main.conv_cnt_reg [13]),
        .I2(\Main.conv_cnt_reg [11]),
        .I3(\Main.conv_cnt_reg [10]),
        .I4(\Main.conv_cnt[8]_i_7_n_0 ),
        .I5(\Main.conv_cnt_reg [15]),
        .O(\Main.conv_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFF00000000)) 
    \Main.conv_cnt[8]_i_4 
       (.I0(\Main.conv_cnt[8]_i_7_n_0 ),
        .I1(\Main.conv_cnt_reg [10]),
        .I2(\Main.conv_cnt_reg [11]),
        .I3(\Main.conv_cnt_reg [13]),
        .I4(\Main.conv_cnt_reg [15]),
        .I5(\Main.conv_cnt_reg [9]),
        .O(\Main.conv_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFF00000000)) 
    \Main.conv_cnt[8]_i_5 
       (.I0(\Main.conv_cnt[8]_i_7_n_0 ),
        .I1(\Main.conv_cnt_reg [10]),
        .I2(\Main.conv_cnt_reg [11]),
        .I3(\Main.conv_cnt_reg [13]),
        .I4(\Main.conv_cnt_reg [15]),
        .I5(\Main.conv_cnt_reg [8]),
        .O(\Main.conv_cnt[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \Main.conv_cnt[8]_i_6 
       (.I0(\Main.conv_cnt_reg [9]),
        .I1(\Main.conv_cnt_reg [8]),
        .I2(\Main.conv_cnt_reg [7]),
        .I3(\Main.conv_cnt_reg [6]),
        .O(\Main.conv_cnt[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \Main.conv_cnt[8]_i_7 
       (.I0(\Main.conv_cnt_reg [16]),
        .I1(\Main.conv_cnt_reg [12]),
        .I2(\Main.conv_cnt_reg [13]),
        .I3(\Main.conv_cnt_reg [14]),
        .O(\Main.conv_cnt[8]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[0] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[0]_i_2_n_7 ),
        .Q(\Main.conv_cnt_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.conv_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\Main.conv_cnt_reg[0]_i_2_n_0 ,\Main.conv_cnt_reg[0]_i_2_n_1 ,\Main.conv_cnt_reg[0]_i_2_n_2 ,\Main.conv_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Main.busy_cnt[0]_i_2_n_0 }),
        .O({\Main.conv_cnt_reg[0]_i_2_n_4 ,\Main.conv_cnt_reg[0]_i_2_n_5 ,\Main.conv_cnt_reg[0]_i_2_n_6 ,\Main.conv_cnt_reg[0]_i_2_n_7 }),
        .S({\Main.conv_cnt[0]_i_3_n_0 ,\Main.conv_cnt[0]_i_4_n_0 ,\Main.conv_cnt[0]_i_5_n_0 ,\Main.conv_cnt[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[10] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[8]_i_1_n_5 ),
        .Q(\Main.conv_cnt_reg [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[11] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[8]_i_1_n_4 ),
        .Q(\Main.conv_cnt_reg [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[12] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[12]_i_1_n_7 ),
        .Q(\Main.conv_cnt_reg [12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.conv_cnt_reg[12]_i_1 
       (.CI(\Main.conv_cnt_reg[8]_i_1_n_0 ),
        .CO({\Main.conv_cnt_reg[12]_i_1_n_0 ,\Main.conv_cnt_reg[12]_i_1_n_1 ,\Main.conv_cnt_reg[12]_i_1_n_2 ,\Main.conv_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.conv_cnt_reg[12]_i_1_n_4 ,\Main.conv_cnt_reg[12]_i_1_n_5 ,\Main.conv_cnt_reg[12]_i_1_n_6 ,\Main.conv_cnt_reg[12]_i_1_n_7 }),
        .S({\Main.conv_cnt[12]_i_2_n_0 ,\Main.conv_cnt[12]_i_3_n_0 ,\Main.conv_cnt[12]_i_4_n_0 ,\Main.conv_cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[13] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[12]_i_1_n_6 ),
        .Q(\Main.conv_cnt_reg [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[14] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[12]_i_1_n_5 ),
        .Q(\Main.conv_cnt_reg [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[15] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[12]_i_1_n_4 ),
        .Q(\Main.conv_cnt_reg [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[16] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[16]_i_1_n_7 ),
        .Q(\Main.conv_cnt_reg [16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.conv_cnt_reg[16]_i_1 
       (.CI(\Main.conv_cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_Main.conv_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Main.conv_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\Main.conv_cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\Main.conv_cnt[16]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[1] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[0]_i_2_n_6 ),
        .Q(\Main.conv_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[2] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[0]_i_2_n_5 ),
        .Q(\Main.conv_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[3] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[0]_i_2_n_4 ),
        .Q(\Main.conv_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[4] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[4]_i_1_n_7 ),
        .Q(\Main.conv_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.conv_cnt_reg[4]_i_1 
       (.CI(\Main.conv_cnt_reg[0]_i_2_n_0 ),
        .CO({\Main.conv_cnt_reg[4]_i_1_n_0 ,\Main.conv_cnt_reg[4]_i_1_n_1 ,\Main.conv_cnt_reg[4]_i_1_n_2 ,\Main.conv_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.conv_cnt_reg[4]_i_1_n_4 ,\Main.conv_cnt_reg[4]_i_1_n_5 ,\Main.conv_cnt_reg[4]_i_1_n_6 ,\Main.conv_cnt_reg[4]_i_1_n_7 }),
        .S({\Main.conv_cnt[4]_i_2_n_0 ,\Main.conv_cnt[4]_i_3_n_0 ,\Main.conv_cnt[4]_i_4_n_0 ,\Main.conv_cnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[5] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[4]_i_1_n_6 ),
        .Q(\Main.conv_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[6] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[4]_i_1_n_5 ),
        .Q(\Main.conv_cnt_reg [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[7] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[4]_i_1_n_4 ),
        .Q(\Main.conv_cnt_reg [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[8] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[8]_i_1_n_7 ),
        .Q(\Main.conv_cnt_reg [8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \Main.conv_cnt_reg[8]_i_1 
       (.CI(\Main.conv_cnt_reg[4]_i_1_n_0 ),
        .CO({\Main.conv_cnt_reg[8]_i_1_n_0 ,\Main.conv_cnt_reg[8]_i_1_n_1 ,\Main.conv_cnt_reg[8]_i_1_n_2 ,\Main.conv_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Main.conv_cnt_reg[8]_i_1_n_4 ,\Main.conv_cnt_reg[8]_i_1_n_5 ,\Main.conv_cnt_reg[8]_i_1_n_6 ,\Main.conv_cnt_reg[8]_i_1_n_7 }),
        .S({\Main.conv_cnt[8]_i_2_n_0 ,\Main.conv_cnt[8]_i_3_n_0 ,\Main.conv_cnt[8]_i_4_n_0 ,\Main.conv_cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Main.conv_cnt_reg[9] 
       (.C(sysclk),
        .CE(conv_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(\Main.conv_cnt_reg[8]_i_1_n_6 ),
        .Q(\Main.conv_cnt_reg [9]));
  LUT3 #(
    .INIT(8'h01)) 
    \Main.sec_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\Main.sec_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Main.sec_cnt[0]_i_3 
       (.I0(\Main.sec_cnt[0]_i_8_n_0 ),
        .I1(\Main.sec_cnt[0]_i_9_n_0 ),
        .O(\Main.sec_cnt[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[0]_i_4 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[3] ),
        .O(\Main.sec_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[0]_i_5 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[2] ),
        .O(\Main.sec_cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[0]_i_6 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[1] ),
        .O(\Main.sec_cnt[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \Main.sec_cnt[0]_i_7 
       (.I0(\Main.sec_cnt_reg_n_0_[0] ),
        .I1(\Main.sec_cnt[0]_i_9_n_0 ),
        .I2(\Main.sec_cnt[0]_i_8_n_0 ),
        .O(\Main.sec_cnt[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \Main.sec_cnt[0]_i_8 
       (.I0(\Main.sec_cnt[8]_i_10_n_0 ),
        .I1(\Main.sec_cnt_reg [25]),
        .I2(\Main.sec_cnt[8]_i_8_n_0 ),
        .I3(\Main.sec_cnt[24]_i_4_n_0 ),
        .O(\Main.sec_cnt[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h07FF0000FFFFFFFF)) 
    \Main.sec_cnt[0]_i_9 
       (.I0(\Main.sec_cnt_reg [9]),
        .I1(\Main.sec_cnt_reg [10]),
        .I2(led2_i_7_n_0),
        .I3(\Main.sec_cnt_reg [16]),
        .I4(\Main.sec_cnt[8]_i_8_n_0 ),
        .I5(\Main.sec_cnt_reg [24]),
        .O(\Main.sec_cnt[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF000100FF00FF00)) 
    \Main.sec_cnt[12]_i_2 
       (.I0(\Main.sec_cnt_reg [21]),
        .I1(\Main.sec_cnt_reg [22]),
        .I2(\Main.sec_cnt_reg [20]),
        .I3(\Main.sec_cnt_reg [15]),
        .I4(\Main.sec_cnt[12]_i_6_n_0 ),
        .I5(\Main.sec_cnt_reg [23]),
        .O(\Main.sec_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.sec_cnt[12]_i_3 
       (.I0(\Main.sec_cnt[8]_i_6_n_0 ),
        .I1(\Main.sec_cnt_reg [14]),
        .O(\Main.sec_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.sec_cnt[12]_i_4 
       (.I0(\Main.sec_cnt[8]_i_6_n_0 ),
        .I1(\Main.sec_cnt_reg [13]),
        .O(\Main.sec_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.sec_cnt[12]_i_5 
       (.I0(\Main.sec_cnt[8]_i_6_n_0 ),
        .I1(\Main.sec_cnt_reg [12]),
        .O(\Main.sec_cnt[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFBBB)) 
    \Main.sec_cnt[12]_i_6 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt_reg [25]),
        .I2(\Main.sec_cnt[8]_i_8_n_0 ),
        .I3(\Main.sec_cnt[24]_i_4_n_0 ),
        .O(\Main.sec_cnt[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF00000000)) 
    \Main.sec_cnt[16]_i_2 
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [23]),
        .I3(led2_i_4_n_0),
        .I4(\Main.sec_cnt_reg [20]),
        .I5(\Main.sec_cnt_reg [19]),
        .O(\Main.sec_cnt[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFF00000000)) 
    \Main.sec_cnt[16]_i_3 
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [23]),
        .I3(led2_i_4_n_0),
        .I4(\Main.sec_cnt_reg [20]),
        .I5(\Main.sec_cnt_reg [18]),
        .O(\Main.sec_cnt[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F020F0F0F0F0)) 
    \Main.sec_cnt[16]_i_4 
       (.I0(\Main.sec_cnt[8]_i_7_n_0 ),
        .I1(\Main.sec_cnt_reg [8]),
        .I2(\Main.sec_cnt_reg [17]),
        .I3(\Main.sec_cnt[0]_i_9_n_0 ),
        .I4(\Main.sec_cnt[8]_i_10_n_0 ),
        .I5(\Main.sec_cnt_reg [25]),
        .O(\Main.sec_cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF002A00FF00FF00)) 
    \Main.sec_cnt[16]_i_5 
       (.I0(\Main.sec_cnt[8]_i_7_n_0 ),
        .I1(\Main.sec_cnt_reg [10]),
        .I2(\Main.sec_cnt_reg [9]),
        .I3(\Main.sec_cnt_reg [16]),
        .I4(\Main.sec_cnt[0]_i_8_n_0 ),
        .I5(\Main.sec_cnt_reg [24]),
        .O(\Main.sec_cnt[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000001F0000)) 
    \Main.sec_cnt[20]_i_2 
       (.I0(\Main.sec_cnt_reg [15]),
        .I1(led2_i_5_n_0),
        .I2(\Main.sec_cnt_reg [20]),
        .I3(led2_i_4_n_0),
        .I4(\Main.sec_cnt_reg [23]),
        .I5(\Main.sec_cnt[12]_i_6_n_0 ),
        .O(\Main.sec_cnt[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \Main.sec_cnt[20]_i_3 
       (.I0(\Main.sec_cnt_reg [23]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [25]),
        .I3(\Main.sec_cnt_reg [22]),
        .O(\Main.sec_cnt[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7F00)) 
    \Main.sec_cnt[20]_i_4 
       (.I0(\Main.sec_cnt_reg [23]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [25]),
        .I3(\Main.sec_cnt_reg [21]),
        .O(\Main.sec_cnt[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF020F0F0)) 
    \Main.sec_cnt[20]_i_5 
       (.I0(\Main.sec_cnt[8]_i_8_n_0 ),
        .I1(\Main.sec_cnt_reg [15]),
        .I2(\Main.sec_cnt_reg [20]),
        .I3(\Main.sec_cnt[12]_i_6_n_0 ),
        .I4(\Main.sec_cnt_reg [23]),
        .O(\Main.sec_cnt[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F080)) 
    \Main.sec_cnt[24]_i_2 
       (.I0(\Main.sec_cnt[24]_i_4_n_0 ),
        .I1(\Main.sec_cnt[8]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg [25]),
        .I3(\Main.sec_cnt[8]_i_10_n_0 ),
        .I4(\Main.sec_cnt[0]_i_9_n_0 ),
        .O(\Main.sec_cnt[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \Main.sec_cnt[24]_i_3 
       (.I0(\Main.sec_cnt[24]_i_5_n_0 ),
        .I1(\Main.sec_cnt[8]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg [24]),
        .I3(\Main.sec_cnt[0]_i_8_n_0 ),
        .O(\Main.sec_cnt[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \Main.sec_cnt[24]_i_4 
       (.I0(\Main.sec_cnt_reg [13]),
        .I1(\Main.sec_cnt_reg [14]),
        .I2(\Main.sec_cnt_reg [12]),
        .I3(\Main.sec_cnt_reg [11]),
        .I4(\Main.sec_cnt_reg [8]),
        .I5(\Main.sec_cnt_reg [17]),
        .O(\Main.sec_cnt[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \Main.sec_cnt[24]_i_5 
       (.I0(\Main.sec_cnt_reg [9]),
        .I1(\Main.sec_cnt_reg [10]),
        .I2(led2_i_7_n_0),
        .I3(\Main.sec_cnt_reg [16]),
        .O(\Main.sec_cnt[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[4]_i_2 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[7] ),
        .O(\Main.sec_cnt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[4]_i_3 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[6] ),
        .O(\Main.sec_cnt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[4]_i_4 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[5] ),
        .O(\Main.sec_cnt[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \Main.sec_cnt[4]_i_5 
       (.I0(\Main.sec_cnt[0]_i_9_n_0 ),
        .I1(\Main.sec_cnt[0]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg_n_0_[4] ),
        .O(\Main.sec_cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \Main.sec_cnt[8]_i_10 
       (.I0(led2_i_4_n_0),
        .I1(\Main.sec_cnt_reg [15]),
        .I2(\Main.sec_cnt_reg [18]),
        .I3(\Main.sec_cnt_reg [19]),
        .I4(\Main.sec_cnt_reg [20]),
        .I5(\Main.sec_cnt_reg [23]),
        .O(\Main.sec_cnt[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Main.sec_cnt[8]_i_2 
       (.I0(\Main.sec_cnt[8]_i_6_n_0 ),
        .I1(\Main.sec_cnt_reg [11]),
        .O(\Main.sec_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F020F02020)) 
    \Main.sec_cnt[8]_i_3 
       (.I0(\Main.sec_cnt[8]_i_7_n_0 ),
        .I1(\Main.sec_cnt_reg [9]),
        .I2(\Main.sec_cnt_reg [10]),
        .I3(\Main.sec_cnt_reg [16]),
        .I4(\Main.sec_cnt[8]_i_8_n_0 ),
        .I5(\Main.sec_cnt[8]_i_9_n_0 ),
        .O(\Main.sec_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F020F02020)) 
    \Main.sec_cnt[8]_i_4 
       (.I0(\Main.sec_cnt[8]_i_7_n_0 ),
        .I1(\Main.sec_cnt_reg [10]),
        .I2(\Main.sec_cnt_reg [9]),
        .I3(\Main.sec_cnt_reg [16]),
        .I4(\Main.sec_cnt[8]_i_8_n_0 ),
        .I5(\Main.sec_cnt[8]_i_9_n_0 ),
        .O(\Main.sec_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F020F0F0F0F0)) 
    \Main.sec_cnt[8]_i_5 
       (.I0(\Main.sec_cnt[8]_i_8_n_0 ),
        .I1(\Main.sec_cnt_reg [17]),
        .I2(\Main.sec_cnt_reg [8]),
        .I3(\Main.sec_cnt[0]_i_9_n_0 ),
        .I4(\Main.sec_cnt[8]_i_10_n_0 ),
        .I5(\Main.sec_cnt_reg [25]),
        .O(\Main.sec_cnt[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77F7F7F7)) 
    \Main.sec_cnt[8]_i_6 
       (.I0(\Main.sec_cnt_reg [24]),
        .I1(\Main.sec_cnt_reg [25]),
        .I2(\Main.sec_cnt[8]_i_8_n_0 ),
        .I3(\Main.sec_cnt_reg [17]),
        .I4(\Main.sec_cnt_reg [16]),
        .I5(\Main.sec_cnt[8]_i_10_n_0 ),
        .O(\Main.sec_cnt[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \Main.sec_cnt[8]_i_7 
       (.I0(\Main.sec_cnt[8]_i_8_n_0 ),
        .I1(\Main.sec_cnt_reg [13]),
        .I2(\Main.sec_cnt_reg [14]),
        .I3(\Main.sec_cnt_reg [11]),
        .I4(\Main.sec_cnt_reg [12]),
        .O(\Main.sec_cnt[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Main.sec_cnt[8]_i_8 
       (.I0(\Main.sec_cnt_reg [19]),
        .I1(\Main.sec_cnt_reg [18]),
        .I2(\Main.sec_cnt_reg [22]),
        .I3(\Main.sec_cnt_reg [21]),
        .O(\Main.sec_cnt[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF8FFFFF)) 
    \Main.sec_cnt[8]_i_9 
       (.I0(\Main.sec_cnt[24]_i_4_n_0 ),
        .I1(\Main.sec_cnt[8]_i_8_n_0 ),
        .I2(\Main.sec_cnt_reg [25]),
        .I3(\Main.sec_cnt[8]_i_10_n_0 ),
        .I4(\Main.sec_cnt_reg [24]),
        .O(\Main.sec_cnt[8]_i_9_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \Main.sensor_cnt[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(sensor_cnt),
        .I3(\Main.sensor_cnt_reg_n_0_[0] ),
        .O(\Main.sensor_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07FF7000)) 
    \Main.sensor_cnt[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\Main.sensor_cnt_reg_n_0_[0] ),
        .I3(sensor_cnt),
        .I4(\Main.sensor_cnt_reg_n_0_[1] ),
        .O(\Main.sensor_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02C2020200000000)) 
    \Main.sensor_cnt[1]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(TX_done_prev_reg_n_0),
        .I4(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I5(i_TX_done),
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
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    TX_done_prev_i_1
       (.I0(i_TX_done),
        .I1(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(TX_done_prev_reg_n_0),
        .O(TX_done_prev_i_1_n_0));
  FDPE TX_done_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(TX_done_prev_i_1_n_0),
        .PRE(o_i2c_ena_i_2_n_0),
        .Q(TX_done_prev_reg_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \alt_data[15]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[1] ),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(\o_TX_data[7]_i_5_n_0 ),
        .O(alt_data[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \alt_data[23]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(\Main.busy_cnt_reg_n_0_[1] ),
        .I3(\Main.busy_cnt_reg_n_0_[2] ),
        .I4(\o_TX_data[7]_i_5_n_0 ),
        .O(alt_data[23]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \alt_data[7]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(\Main.busy_cnt_reg_n_0_[2] ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .I4(\o_TX_data[7]_i_5_n_0 ),
        .O(alt_data[7]));
  FDCE \alt_data_reg[0] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(\alt_data_reg_n_0_[0] ));
  FDCE \alt_data_reg[10] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(\alt_data_reg_n_0_[10] ));
  FDCE \alt_data_reg[11] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(\alt_data_reg_n_0_[11] ));
  FDCE \alt_data_reg[12] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(\alt_data_reg_n_0_[12] ));
  FDCE \alt_data_reg[13] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(\alt_data_reg_n_0_[13] ));
  FDCE \alt_data_reg[14] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(\alt_data_reg_n_0_[14] ));
  FDCE \alt_data_reg[15] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(\alt_data_reg_n_0_[15] ));
  FDCE \alt_data_reg[16] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(in16[0]));
  FDCE \alt_data_reg[17] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(in16[1]));
  FDCE \alt_data_reg[18] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(in16[2]));
  FDCE \alt_data_reg[19] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(in16[3]));
  FDCE \alt_data_reg[1] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(\alt_data_reg_n_0_[1] ));
  FDCE \alt_data_reg[20] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(in16[4]));
  FDCE \alt_data_reg[21] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(in16[5]));
  FDCE \alt_data_reg[22] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(in16[6]));
  FDCE \alt_data_reg[23] 
       (.C(sysclk),
        .CE(alt_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(in16[7]));
  FDCE \alt_data_reg[2] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(\alt_data_reg_n_0_[2] ));
  FDCE \alt_data_reg[3] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(\alt_data_reg_n_0_[3] ));
  FDCE \alt_data_reg[4] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(\alt_data_reg_n_0_[4] ));
  FDCE \alt_data_reg[5] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(\alt_data_reg_n_0_[5] ));
  FDCE \alt_data_reg[6] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(\alt_data_reg_n_0_[6] ));
  FDCE \alt_data_reg[7] 
       (.C(sysclk),
        .CE(alt_data[7]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(\alt_data_reg_n_0_[7] ));
  FDCE \alt_data_reg[8] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[0]),
        .Q(\alt_data_reg_n_0_[8] ));
  FDCE \alt_data_reg[9] 
       (.C(sysclk),
        .CE(alt_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(\alt_data_reg_n_0_[9] ));
  FDCE busy_prev_reg
       (.C(sysclk),
        .CE(busy_cnt),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_busy),
        .Q(busy_prev_reg_n_0));
  LUT4 #(
    .INIT(16'hBFB0)) 
    led2_i_1
       (.I0(\Main.sensor_cnt_reg_n_0_[1] ),
        .I1(\Main.sensor_cnt_reg_n_0_[0] ),
        .I2(led2_i_2_n_0),
        .I3(led2),
        .O(led2_i_1_n_0));
  LUT6 #(
    .INIT(64'h4444444040404040)) 
    led2_i_2
       (.I0(led2_i_3_n_0),
        .I1(\Main.sec_cnt[0]_i_1_n_0 ),
        .I2(led2_i_4_n_0),
        .I3(led2_i_5_n_0),
        .I4(led2_i_6_n_0),
        .I5(\Main.sec_cnt_reg [20]),
        .O(led2_i_2_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    led2_i_3
       (.I0(\Main.sec_cnt_reg [25]),
        .I1(\Main.sec_cnt_reg [24]),
        .I2(\Main.sec_cnt_reg [23]),
        .O(led2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    led2_i_4
       (.I0(\Main.sec_cnt_reg [21]),
        .I1(\Main.sec_cnt_reg [22]),
        .O(led2_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led2_i_5
       (.I0(\Main.sec_cnt_reg [18]),
        .I1(\Main.sec_cnt_reg [19]),
        .O(led2_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000800080808000)) 
    led2_i_6
       (.I0(\Main.sec_cnt_reg [16]),
        .I1(\Main.sec_cnt_reg [17]),
        .I2(\Main.sec_cnt_reg [15]),
        .I3(led2_i_7_n_0),
        .I4(\Main.sec_cnt_reg [8]),
        .I5(led2_i_8_n_0),
        .O(led2_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    led2_i_7
       (.I0(\Main.sec_cnt_reg [12]),
        .I1(\Main.sec_cnt_reg [11]),
        .I2(\Main.sec_cnt_reg [14]),
        .I3(\Main.sec_cnt_reg [13]),
        .O(led2_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    led2_i_8
       (.I0(\Main.sec_cnt_reg [9]),
        .I1(\Main.sec_cnt_reg [10]),
        .O(led2_i_8_n_0));
  FDCE led2_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(led2_i_1_n_0),
        .Q(led2));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    o_TX_DV_i_1
       (.I0(o_TX_DV_i_2_n_0),
        .I1(state[1]),
        .I2(state[2]),
        .I3(o_TX_DV_i_3_n_0),
        .I4(o_TX_DV_i_4_n_0),
        .I5(o_TX_DV),
        .O(o_TX_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000B30)) 
    o_TX_DV_i_2
       (.I0(o_i2c_ena_i_4_n_0),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(o_TX_DV_i_5_n_0),
        .I5(o_TX_DV_i_6_n_0),
        .O(o_TX_DV_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55955757)) 
    o_TX_DV_i_3
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[1] ),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .O(o_TX_DV_i_3_n_0));
  LUT6 #(
    .INIT(64'h3337333F333F3F3F)) 
    o_TX_DV_i_4
       (.I0(i_busy),
        .I1(busy_cnt),
        .I2(o_i2c_ena_i_4_n_0),
        .I3(state[1]),
        .I4(\o_i2c_address[5]_i_4_n_0 ),
        .I5(\o_i2c_address[5]_i_3_n_0 ),
        .O(o_TX_DV_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5DF7)) 
    o_TX_DV_i_5
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[0] ),
        .O(o_TX_DV_i_5_n_0));
  LUT6 #(
    .INIT(64'h2A552A0000000000)) 
    o_TX_DV_i_6
       (.I0(state[0]),
        .I1(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I2(TX_done_prev_reg_n_0),
        .I3(state[2]),
        .I4(state[1]),
        .I5(i_TX_done),
        .O(o_TX_DV_i_6_n_0));
  FDCE o_TX_DV_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(o_TX_DV_i_1_n_0),
        .Q(o_TX_DV));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[0]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[0]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[0]),
        .I4(\o_TX_data[0]_i_2_n_0 ),
        .I5(\o_TX_data[0]_i_3_n_0 ),
        .O(o_TX_data_0[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[0]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[8] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[8] ),
        .I4(\alt_data_reg_n_0_[0] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[0]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[0] ),
        .I2(in14[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[0] ),
        .O(\o_TX_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[1]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[1]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[1]),
        .I4(\o_TX_data[1]_i_2_n_0 ),
        .I5(\o_TX_data[1]_i_3_n_0 ),
        .O(o_TX_data_0[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[1]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[9] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[9] ),
        .I4(\alt_data_reg_n_0_[1] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[1]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[1] ),
        .I2(in14[1]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[1] ),
        .O(\o_TX_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[2]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[2]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[2]),
        .I4(\o_TX_data[2]_i_2_n_0 ),
        .I5(\o_TX_data[2]_i_3_n_0 ),
        .O(o_TX_data_0[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[2]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[10] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[10] ),
        .I4(\alt_data_reg_n_0_[2] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[2]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[2] ),
        .I2(in14[2]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[2] ),
        .O(\o_TX_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[3]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[3]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[3]),
        .I4(\o_TX_data[3]_i_2_n_0 ),
        .I5(\o_TX_data[3]_i_3_n_0 ),
        .O(o_TX_data_0[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[3]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[11] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[11] ),
        .I4(\alt_data_reg_n_0_[3] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[3]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[3] ),
        .I2(in14[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[3] ),
        .O(\o_TX_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[4]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[4]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[4]),
        .I4(\o_TX_data[4]_i_2_n_0 ),
        .I5(\o_TX_data[4]_i_3_n_0 ),
        .O(o_TX_data_0[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[4]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[12] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[12] ),
        .I4(\alt_data_reg_n_0_[4] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[4]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[4] ),
        .I2(in14[4]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[4] ),
        .O(\o_TX_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[5]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[5]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[5]),
        .I4(\o_TX_data[5]_i_2_n_0 ),
        .I5(\o_TX_data[5]_i_3_n_0 ),
        .O(o_TX_data_0[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[5]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[13] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[13] ),
        .I4(\alt_data_reg_n_0_[5] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[5]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[5] ),
        .I2(in14[5]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[5] ),
        .O(\o_TX_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[6]_i_1 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[6]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[6]),
        .I4(\o_TX_data[6]_i_2_n_0 ),
        .I5(\o_TX_data[6]_i_3_n_0 ),
        .O(o_TX_data_0[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[6]_i_2 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[14] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[14] ),
        .I4(\alt_data_reg_n_0_[6] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[6]_i_3 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[6] ),
        .I2(in14[6]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[6] ),
        .O(\o_TX_data[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE0A0)) 
    \o_TX_data[7]_i_1 
       (.I0(\o_TX_data[7]_i_3_n_0 ),
        .I1(\o_TX_data[7]_i_4_n_0 ),
        .I2(reset_n),
        .I3(i_TX_done),
        .O(o_TX_data0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \o_TX_data[7]_i_10 
       (.I0(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\o_TX_data[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \o_TX_data[7]_i_11 
       (.I0(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\o_TX_data[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \o_TX_data[7]_i_12 
       (.I0(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\o_TX_data[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \o_TX_data[7]_i_13 
       (.I0(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\o_TX_data[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \o_TX_data[7]_i_2 
       (.I0(\o_TX_data[7]_i_5_n_0 ),
        .I1(in16[7]),
        .I2(\o_TX_data[7]_i_6_n_0 ),
        .I3(in18[7]),
        .I4(\o_TX_data[7]_i_7_n_0 ),
        .I5(\o_TX_data[7]_i_8_n_0 ),
        .O(o_TX_data_0[7]));
  LUT6 #(
    .INIT(64'h00000300A3A00000)) 
    \o_TX_data[7]_i_3 
       (.I0(\o_TX_data[7]_i_9_n_0 ),
        .I1(\temp_data[7]_i_2_n_0 ),
        .I2(state[1]),
        .I3(\o_i2c_address[5]_i_3_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(\o_TX_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0CCC2222)) 
    \o_TX_data[7]_i_4 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(TX_done_prev_reg_n_0),
        .I3(\FSM_sequential_Main.mess_cnt_reg_n_0 ),
        .I4(state[0]),
        .O(\o_TX_data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \o_TX_data[7]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(\o_TX_data[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \o_TX_data[7]_i_6 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(\o_TX_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_TX_data[7]_i_7 
       (.I0(\o_TX_data[7]_i_10_n_0 ),
        .I1(\alt_data_reg_n_0_[15] ),
        .I2(\o_TX_data[7]_i_11_n_0 ),
        .I3(\rtc_data_reg_n_0_[15] ),
        .I4(\alt_data_reg_n_0_[7] ),
        .I5(\o_TX_data[7]_i_12_n_0 ),
        .O(\o_TX_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h88FF88F8888888F8)) 
    \o_TX_data[7]_i_8 
       (.I0(\o_TX_data[7]_i_13_n_0 ),
        .I1(\rtc_data_reg_n_0_[7] ),
        .I2(in14[7]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\temp_data_reg_n_0_[7] ),
        .O(\o_TX_data[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \o_TX_data[7]_i_9 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .O(\o_TX_data[7]_i_9_n_0 ));
  FDRE \o_TX_data_reg[0] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[0]),
        .Q(o_TX_data[0]),
        .R(1'b0));
  FDRE \o_TX_data_reg[1] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[1]),
        .Q(o_TX_data[1]),
        .R(1'b0));
  FDRE \o_TX_data_reg[2] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[2]),
        .Q(o_TX_data[2]),
        .R(1'b0));
  FDRE \o_TX_data_reg[3] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[3]),
        .Q(o_TX_data[3]),
        .R(1'b0));
  FDRE \o_TX_data_reg[4] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[4]),
        .Q(o_TX_data[4]),
        .R(1'b0));
  FDRE \o_TX_data_reg[5] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[5]),
        .Q(o_TX_data[5]),
        .R(1'b0));
  FDRE \o_TX_data_reg[6] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[6]),
        .Q(o_TX_data[6]),
        .R(1'b0));
  FDRE \o_TX_data_reg[7] 
       (.C(sysclk),
        .CE(o_TX_data0),
        .D(o_TX_data_0[7]),
        .Q(o_TX_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_i2c_address[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\o_i2c_address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_i2c_address[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\o_i2c_address[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_i2c_address[4]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000100000)) 
    \o_i2c_address[5]_i_1 
       (.I0(\o_i2c_address[5]_i_3_n_0 ),
        .I1(\o_i2c_address[5]_i_4_n_0 ),
        .I2(reset_n),
        .I3(o_i2c_ena_i_4_n_0),
        .I4(state[2]),
        .I5(state[0]),
        .O(o_i2c_address0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_i2c_address[5]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\o_i2c_address[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \o_i2c_address[5]_i_3 
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(i_busy),
        .I2(busy_prev_reg_n_0),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .O(\o_i2c_address[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \o_i2c_address[5]_i_4 
       (.I0(\Main.busy_cnt_reg_n_0_[0] ),
        .I1(busy_prev_reg_n_0),
        .I2(i_busy),
        .O(\o_i2c_address[5]_i_4_n_0 ));
  FDRE \o_i2c_address_reg[0] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[0]_i_1_n_0 ),
        .Q(o_i2c_address[0]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[3] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[3]_i_1_n_0 ),
        .Q(o_i2c_address[1]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[4] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[4]_i_1_n_0 ),
        .Q(o_i2c_address[2]),
        .R(1'b0));
  FDRE \o_i2c_address_reg[5] 
       (.C(sysclk),
        .CE(o_i2c_address0),
        .D(\o_i2c_address[5]_i_2_n_0 ),
        .Q(o_i2c_address[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF77F0040)) 
    \o_i2c_data_wr[7]_i_1 
       (.I0(state[1]),
        .I1(\o_i2c_data_wr[7]_i_2_n_0 ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(o_i2c_data_wr),
        .O(\o_i2c_data_wr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000004000404)) 
    \o_i2c_data_wr[7]_i_2 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(reset_n),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(busy_prev_reg_n_0),
        .I4(i_busy),
        .I5(\Main.busy_cnt_reg_n_0_[1] ),
        .O(\o_i2c_data_wr[7]_i_2_n_0 ));
  FDRE \o_i2c_data_wr_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\o_i2c_data_wr[7]_i_1_n_0 ),
        .Q(o_i2c_data_wr),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAA0000)) 
    o_i2c_ena_i_1
       (.I0(o_i2c_ena_i_3_n_0),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .I4(o_i2c_ena_i_5_n_0),
        .I5(o_i2c_ena),
        .O(o_i2c_ena_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_i2c_ena_i_2
       (.I0(reset_n),
        .O(o_i2c_ena_i_2_n_0));
  LUT6 #(
    .INIT(64'h00003C3359555955)) 
    o_i2c_ena_i_3
       (.I0(\Main.busy_cnt_reg_n_0_[1] ),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(busy_prev_reg_n_0),
        .I3(i_busy),
        .I4(state[2]),
        .I5(state[1]),
        .O(o_i2c_ena_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    o_i2c_ena_i_4
       (.I0(i_busy),
        .I1(busy_prev_reg_n_0),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(\Main.busy_cnt_reg_n_0_[2] ),
        .O(o_i2c_ena_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000114103410000)) 
    o_i2c_ena_i_5
       (.I0(o_i2c_ena_i_4_n_0),
        .I1(\o_i2c_address[5]_i_3_n_0 ),
        .I2(\o_i2c_address[5]_i_4_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(o_i2c_ena_i_5_n_0));
  FDCE o_i2c_ena_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(o_i2c_ena_i_1_n_0),
        .Q(o_i2c_ena));
  LUT6 #(
    .INIT(64'hB2B2B2FFB2B2B200)) 
    o_i2c_rw_i_1
       (.I0(\o_i2c_address[5]_i_4_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(o_i2c_address0),
        .I4(o_i2c_rw_i_2_n_0),
        .I5(o_i2c_rw),
        .O(o_i2c_rw_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000000000200)) 
    o_i2c_rw_i_2
       (.I0(reset_n),
        .I1(o_i2c_ena_i_4_n_0),
        .I2(\o_i2c_address[5]_i_3_n_0 ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(o_i2c_rw_i_2_n_0));
  FDRE o_i2c_rw_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_i2c_rw_i_1_n_0),
        .Q(o_i2c_rw),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \rtc_data[15]_i_1 
       (.I0(\o_TX_data[7]_i_6_n_0 ),
        .I1(\Main.busy_cnt_reg_n_0_[0] ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[2] ),
        .I4(\Main.busy_cnt_reg_n_0_[1] ),
        .O(rtc_data[15]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \rtc_data[23]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\Main.busy_cnt_reg_n_0_[1] ),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .I3(i_busy),
        .I4(\o_TX_data[7]_i_6_n_0 ),
        .O(rtc_data[23]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rtc_data[7]_i_1 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(\o_TX_data[7]_i_6_n_0 ),
        .I2(i_busy),
        .I3(\Main.busy_cnt_reg_n_0_[1] ),
        .I4(\Main.busy_cnt_reg_n_0_[0] ),
        .O(rtc_data[7]));
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
        .Q(in18[0]));
  FDCE \rtc_data_reg[17] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(in18[1]));
  FDCE \rtc_data_reg[18] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[2]),
        .Q(in18[2]));
  FDCE \rtc_data_reg[19] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(in18[3]));
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
        .Q(in18[4]));
  FDCE \rtc_data_reg[21] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(in18[5]));
  FDCE \rtc_data_reg[22] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(in18[6]));
  FDCE \rtc_data_reg[23] 
       (.C(sysclk),
        .CE(rtc_data[23]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(in18[7]));
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
    .INIT(64'h0000000001000000)) 
    \temp_data[15]_i_1 
       (.I0(\o_i2c_address[5]_i_2_n_0 ),
        .I1(i_busy),
        .I2(o_i2c_ena_i_4_n_0),
        .I3(state[0]),
        .I4(\o_i2c_address[5]_i_3_n_0 ),
        .I5(\o_i2c_address[5]_i_4_n_0 ),
        .O(temp_data[15]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \temp_data[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\o_i2c_address[5]_i_3_n_0 ),
        .I4(\temp_data[7]_i_2_n_0 ),
        .O(temp_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \temp_data[7]_i_2 
       (.I0(\Main.busy_cnt_reg_n_0_[2] ),
        .I1(i_busy),
        .I2(\Main.busy_cnt_reg_n_0_[0] ),
        .O(\temp_data[7]_i_2_n_0 ));
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
        .Q(in14[2]));
  FDCE \temp_data_reg[11] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[3]),
        .Q(in14[3]));
  FDCE \temp_data_reg[12] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[4]),
        .Q(in14[4]));
  FDCE \temp_data_reg[13] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[5]),
        .Q(in14[5]));
  FDCE \temp_data_reg[14] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[6]),
        .Q(in14[6]));
  FDCE \temp_data_reg[15] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[7]),
        .Q(in14[7]));
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
        .Q(in14[0]));
  FDCE \temp_data_reg[9] 
       (.C(sysclk),
        .CE(temp_data[15]),
        .CLR(o_i2c_ena_i_2_n_0),
        .D(i_data_read[1]),
        .Q(in14[1]));
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

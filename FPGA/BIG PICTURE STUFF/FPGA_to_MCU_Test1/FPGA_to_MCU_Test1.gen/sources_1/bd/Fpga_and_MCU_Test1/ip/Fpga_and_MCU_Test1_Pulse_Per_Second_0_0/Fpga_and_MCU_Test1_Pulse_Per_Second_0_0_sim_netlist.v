// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep 18 13:14:49 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/BIG PICTURE
//               STUFF/FPGA_to_MCU_Test1/FPGA_to_MCU_Test1.gen/sources_1/bd/Fpga_and_MCU_Test1/ip/Fpga_and_MCU_Test1_Pulse_Per_Second_0_0/Fpga_and_MCU_Test1_Pulse_Per_Second_0_0_sim_netlist.v}
// Design      : Fpga_and_MCU_Test1_Pulse_Per_Second_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Fpga_and_MCU_Test1_Pulse_Per_Second_0_0,Pulse_Per_Second,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Pulse_Per_Second,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Fpga_and_MCU_Test1_Pulse_Per_Second_0_0
   (sysclk,
    reset_n,
    o_pulse,
    led0);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output o_pulse;
  output led0;

  wire led0;
  wire o_pulse;
  wire reset_n;
  wire sysclk;

  Fpga_and_MCU_Test1_Pulse_Per_Second_0_0_Pulse_Per_Second U0
       (.led0(led0),
        .o_pulse(o_pulse),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Pulse_Per_Second" *) 
module Fpga_and_MCU_Test1_Pulse_Per_Second_0_0_Pulse_Per_Second
   (o_pulse,
    led0,
    sysclk,
    reset_n);
  output o_pulse;
  output led0;
  input sysclk;
  input reset_n;

  wire led0;
  wire led0_i_1_n_0;
  wire o_pulse;
  wire o_pulse_i_1_n_0;
  wire reset_n;
  wire \sec_cnt[0]_i_1_n_0 ;
  wire \sec_cnt[0]_i_3_n_0 ;
  wire \sec_cnt[0]_i_4_n_0 ;
  wire \sec_cnt[0]_i_5_n_0 ;
  wire \sec_cnt[0]_i_6_n_0 ;
  wire \sec_cnt[0]_i_7_n_0 ;
  wire \sec_cnt[12]_i_2_n_0 ;
  wire \sec_cnt[12]_i_3_n_0 ;
  wire \sec_cnt[12]_i_4_n_0 ;
  wire \sec_cnt[12]_i_5_n_0 ;
  wire \sec_cnt[16]_i_2_n_0 ;
  wire \sec_cnt[16]_i_3_n_0 ;
  wire \sec_cnt[16]_i_4_n_0 ;
  wire \sec_cnt[16]_i_5_n_0 ;
  wire \sec_cnt[20]_i_2_n_0 ;
  wire \sec_cnt[20]_i_3_n_0 ;
  wire \sec_cnt[20]_i_4_n_0 ;
  wire \sec_cnt[20]_i_5_n_0 ;
  wire \sec_cnt[4]_i_2_n_0 ;
  wire \sec_cnt[4]_i_3_n_0 ;
  wire \sec_cnt[4]_i_4_n_0 ;
  wire \sec_cnt[4]_i_5_n_0 ;
  wire \sec_cnt[8]_i_2_n_0 ;
  wire \sec_cnt[8]_i_3_n_0 ;
  wire \sec_cnt[8]_i_4_n_0 ;
  wire \sec_cnt[8]_i_5_n_0 ;
  wire [23:8]sec_cnt_reg;
  wire \sec_cnt_reg[0]_i_2_n_0 ;
  wire \sec_cnt_reg[0]_i_2_n_1 ;
  wire \sec_cnt_reg[0]_i_2_n_2 ;
  wire \sec_cnt_reg[0]_i_2_n_3 ;
  wire \sec_cnt_reg[0]_i_2_n_4 ;
  wire \sec_cnt_reg[0]_i_2_n_5 ;
  wire \sec_cnt_reg[0]_i_2_n_6 ;
  wire \sec_cnt_reg[0]_i_2_n_7 ;
  wire \sec_cnt_reg[12]_i_1_n_0 ;
  wire \sec_cnt_reg[12]_i_1_n_1 ;
  wire \sec_cnt_reg[12]_i_1_n_2 ;
  wire \sec_cnt_reg[12]_i_1_n_3 ;
  wire \sec_cnt_reg[12]_i_1_n_4 ;
  wire \sec_cnt_reg[12]_i_1_n_5 ;
  wire \sec_cnt_reg[12]_i_1_n_6 ;
  wire \sec_cnt_reg[12]_i_1_n_7 ;
  wire \sec_cnt_reg[16]_i_1_n_0 ;
  wire \sec_cnt_reg[16]_i_1_n_1 ;
  wire \sec_cnt_reg[16]_i_1_n_2 ;
  wire \sec_cnt_reg[16]_i_1_n_3 ;
  wire \sec_cnt_reg[16]_i_1_n_4 ;
  wire \sec_cnt_reg[16]_i_1_n_5 ;
  wire \sec_cnt_reg[16]_i_1_n_6 ;
  wire \sec_cnt_reg[16]_i_1_n_7 ;
  wire \sec_cnt_reg[20]_i_1_n_1 ;
  wire \sec_cnt_reg[20]_i_1_n_2 ;
  wire \sec_cnt_reg[20]_i_1_n_3 ;
  wire \sec_cnt_reg[20]_i_1_n_4 ;
  wire \sec_cnt_reg[20]_i_1_n_5 ;
  wire \sec_cnt_reg[20]_i_1_n_6 ;
  wire \sec_cnt_reg[20]_i_1_n_7 ;
  wire \sec_cnt_reg[4]_i_1_n_0 ;
  wire \sec_cnt_reg[4]_i_1_n_1 ;
  wire \sec_cnt_reg[4]_i_1_n_2 ;
  wire \sec_cnt_reg[4]_i_1_n_3 ;
  wire \sec_cnt_reg[4]_i_1_n_4 ;
  wire \sec_cnt_reg[4]_i_1_n_5 ;
  wire \sec_cnt_reg[4]_i_1_n_6 ;
  wire \sec_cnt_reg[4]_i_1_n_7 ;
  wire \sec_cnt_reg[8]_i_1_n_0 ;
  wire \sec_cnt_reg[8]_i_1_n_1 ;
  wire \sec_cnt_reg[8]_i_1_n_2 ;
  wire \sec_cnt_reg[8]_i_1_n_3 ;
  wire \sec_cnt_reg[8]_i_1_n_4 ;
  wire \sec_cnt_reg[8]_i_1_n_5 ;
  wire \sec_cnt_reg[8]_i_1_n_6 ;
  wire \sec_cnt_reg[8]_i_1_n_7 ;
  wire \sec_cnt_reg_n_0_[0] ;
  wire \sec_cnt_reg_n_0_[1] ;
  wire \sec_cnt_reg_n_0_[2] ;
  wire \sec_cnt_reg_n_0_[3] ;
  wire \sec_cnt_reg_n_0_[4] ;
  wire \sec_cnt_reg_n_0_[5] ;
  wire \sec_cnt_reg_n_0_[6] ;
  wire \sec_cnt_reg_n_0_[7] ;
  wire state;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire state_i_4_n_0;
  wire sysclk;
  wire [3:3]\NLW_sec_cnt_reg[20]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    led0_i_1
       (.I0(state),
        .I1(led0),
        .O(led0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    led0_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_1_n_0),
        .D(led0_i_1_n_0),
        .Q(led0));
  LUT1 #(
    .INIT(2'h1)) 
    o_pulse_i_1
       (.I0(reset_n),
        .O(o_pulse_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    o_pulse_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_1_n_0),
        .D(state),
        .Q(o_pulse));
  LUT1 #(
    .INIT(2'h1)) 
    \sec_cnt[0]_i_1 
       (.I0(state),
        .O(\sec_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[0]_i_3 
       (.I0(\sec_cnt_reg_n_0_[0] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[0]_i_4 
       (.I0(\sec_cnt_reg_n_0_[3] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[0]_i_5 
       (.I0(\sec_cnt_reg_n_0_[2] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[0]_i_6 
       (.I0(\sec_cnt_reg_n_0_[1] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000551555555555)) 
    \sec_cnt[0]_i_7 
       (.I0(\sec_cnt_reg_n_0_[0] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[12]_i_2 
       (.I0(sec_cnt_reg[15]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[12]_i_3 
       (.I0(sec_cnt_reg[14]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[12]_i_4 
       (.I0(sec_cnt_reg[13]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[12]_i_5 
       (.I0(sec_cnt_reg[12]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[16]_i_2 
       (.I0(sec_cnt_reg[19]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[16]_i_3 
       (.I0(sec_cnt_reg[18]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[16]_i_4 
       (.I0(sec_cnt_reg[17]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[16]_i_5 
       (.I0(sec_cnt_reg[16]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00F70000)) 
    \sec_cnt[20]_i_2 
       (.I0(sec_cnt_reg[20]),
        .I1(sec_cnt_reg[21]),
        .I2(state_i_2_n_0),
        .I3(sec_cnt_reg[22]),
        .I4(sec_cnt_reg[23]),
        .O(\sec_cnt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sec_cnt[20]_i_3 
       (.I0(sec_cnt_reg[22]),
        .I1(sec_cnt_reg[23]),
        .O(\sec_cnt[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00C4CCCC)) 
    \sec_cnt[20]_i_4 
       (.I0(sec_cnt_reg[20]),
        .I1(sec_cnt_reg[21]),
        .I2(state_i_2_n_0),
        .I3(sec_cnt_reg[22]),
        .I4(sec_cnt_reg[23]),
        .O(\sec_cnt[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00A2AAAA)) 
    \sec_cnt[20]_i_5 
       (.I0(sec_cnt_reg[20]),
        .I1(sec_cnt_reg[21]),
        .I2(state_i_2_n_0),
        .I3(sec_cnt_reg[22]),
        .I4(sec_cnt_reg[23]),
        .O(\sec_cnt[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[4]_i_2 
       (.I0(\sec_cnt_reg_n_0_[7] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[4]_i_3 
       (.I0(\sec_cnt_reg_n_0_[6] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[4]_i_4 
       (.I0(\sec_cnt_reg_n_0_[5] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[4]_i_5 
       (.I0(\sec_cnt_reg_n_0_[4] ),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[8]_i_2 
       (.I0(sec_cnt_reg[11]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[8]_i_3 
       (.I0(sec_cnt_reg[10]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[8]_i_4 
       (.I0(sec_cnt_reg[9]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2AAAAAAAAA)) 
    \sec_cnt[8]_i_5 
       (.I0(sec_cnt_reg[8]),
        .I1(sec_cnt_reg[20]),
        .I2(sec_cnt_reg[21]),
        .I3(state_i_2_n_0),
        .I4(sec_cnt_reg[22]),
        .I5(sec_cnt_reg[23]),
        .O(\sec_cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[0] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[0]_i_2_n_7 ),
        .Q(\sec_cnt_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sec_cnt_reg[0]_i_2_n_0 ,\sec_cnt_reg[0]_i_2_n_1 ,\sec_cnt_reg[0]_i_2_n_2 ,\sec_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\sec_cnt[0]_i_3_n_0 }),
        .O({\sec_cnt_reg[0]_i_2_n_4 ,\sec_cnt_reg[0]_i_2_n_5 ,\sec_cnt_reg[0]_i_2_n_6 ,\sec_cnt_reg[0]_i_2_n_7 }),
        .S({\sec_cnt[0]_i_4_n_0 ,\sec_cnt[0]_i_5_n_0 ,\sec_cnt[0]_i_6_n_0 ,\sec_cnt[0]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[10] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[8]_i_1_n_5 ),
        .Q(sec_cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[11] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[8]_i_1_n_4 ),
        .Q(sec_cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[12] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[12]_i_1_n_7 ),
        .Q(sec_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_cnt_reg[12]_i_1 
       (.CI(\sec_cnt_reg[8]_i_1_n_0 ),
        .CO({\sec_cnt_reg[12]_i_1_n_0 ,\sec_cnt_reg[12]_i_1_n_1 ,\sec_cnt_reg[12]_i_1_n_2 ,\sec_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[12]_i_1_n_4 ,\sec_cnt_reg[12]_i_1_n_5 ,\sec_cnt_reg[12]_i_1_n_6 ,\sec_cnt_reg[12]_i_1_n_7 }),
        .S({\sec_cnt[12]_i_2_n_0 ,\sec_cnt[12]_i_3_n_0 ,\sec_cnt[12]_i_4_n_0 ,\sec_cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[13] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[12]_i_1_n_6 ),
        .Q(sec_cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[14] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[12]_i_1_n_5 ),
        .Q(sec_cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[15] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[12]_i_1_n_4 ),
        .Q(sec_cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[16] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[16]_i_1_n_7 ),
        .Q(sec_cnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_cnt_reg[16]_i_1 
       (.CI(\sec_cnt_reg[12]_i_1_n_0 ),
        .CO({\sec_cnt_reg[16]_i_1_n_0 ,\sec_cnt_reg[16]_i_1_n_1 ,\sec_cnt_reg[16]_i_1_n_2 ,\sec_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[16]_i_1_n_4 ,\sec_cnt_reg[16]_i_1_n_5 ,\sec_cnt_reg[16]_i_1_n_6 ,\sec_cnt_reg[16]_i_1_n_7 }),
        .S({\sec_cnt[16]_i_2_n_0 ,\sec_cnt[16]_i_3_n_0 ,\sec_cnt[16]_i_4_n_0 ,\sec_cnt[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[17] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[16]_i_1_n_6 ),
        .Q(sec_cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[18] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[16]_i_1_n_5 ),
        .Q(sec_cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[19] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[16]_i_1_n_4 ),
        .Q(sec_cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[1] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[0]_i_2_n_6 ),
        .Q(\sec_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[20] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[20]_i_1_n_7 ),
        .Q(sec_cnt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_cnt_reg[20]_i_1 
       (.CI(\sec_cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_sec_cnt_reg[20]_i_1_CO_UNCONNECTED [3],\sec_cnt_reg[20]_i_1_n_1 ,\sec_cnt_reg[20]_i_1_n_2 ,\sec_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[20]_i_1_n_4 ,\sec_cnt_reg[20]_i_1_n_5 ,\sec_cnt_reg[20]_i_1_n_6 ,\sec_cnt_reg[20]_i_1_n_7 }),
        .S({\sec_cnt[20]_i_2_n_0 ,\sec_cnt[20]_i_3_n_0 ,\sec_cnt[20]_i_4_n_0 ,\sec_cnt[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[21] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[20]_i_1_n_6 ),
        .Q(sec_cnt_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[22] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[20]_i_1_n_5 ),
        .Q(sec_cnt_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[23] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[20]_i_1_n_4 ),
        .Q(sec_cnt_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[2] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[0]_i_2_n_5 ),
        .Q(\sec_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[3] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[0]_i_2_n_4 ),
        .Q(\sec_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[4] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[4]_i_1_n_7 ),
        .Q(\sec_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_cnt_reg[4]_i_1 
       (.CI(\sec_cnt_reg[0]_i_2_n_0 ),
        .CO({\sec_cnt_reg[4]_i_1_n_0 ,\sec_cnt_reg[4]_i_1_n_1 ,\sec_cnt_reg[4]_i_1_n_2 ,\sec_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[4]_i_1_n_4 ,\sec_cnt_reg[4]_i_1_n_5 ,\sec_cnt_reg[4]_i_1_n_6 ,\sec_cnt_reg[4]_i_1_n_7 }),
        .S({\sec_cnt[4]_i_2_n_0 ,\sec_cnt[4]_i_3_n_0 ,\sec_cnt[4]_i_4_n_0 ,\sec_cnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[5] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[4]_i_1_n_6 ),
        .Q(\sec_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[6] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[4]_i_1_n_5 ),
        .Q(\sec_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[7] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[4]_i_1_n_4 ),
        .Q(\sec_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[8] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[8]_i_1_n_7 ),
        .Q(sec_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sec_cnt_reg[8]_i_1 
       (.CI(\sec_cnt_reg[4]_i_1_n_0 ),
        .CO({\sec_cnt_reg[8]_i_1_n_0 ,\sec_cnt_reg[8]_i_1_n_1 ,\sec_cnt_reg[8]_i_1_n_2 ,\sec_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sec_cnt_reg[8]_i_1_n_4 ,\sec_cnt_reg[8]_i_1_n_5 ,\sec_cnt_reg[8]_i_1_n_6 ,\sec_cnt_reg[8]_i_1_n_7 }),
        .S({\sec_cnt[8]_i_2_n_0 ,\sec_cnt[8]_i_3_n_0 ,\sec_cnt[8]_i_4_n_0 ,\sec_cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sec_cnt_reg[9] 
       (.C(sysclk),
        .CE(\sec_cnt[0]_i_1_n_0 ),
        .CLR(o_pulse_i_1_n_0),
        .D(\sec_cnt_reg[8]_i_1_n_6 ),
        .Q(sec_cnt_reg[9]));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    state_i_1
       (.I0(sec_cnt_reg[20]),
        .I1(sec_cnt_reg[21]),
        .I2(state_i_2_n_0),
        .I3(sec_cnt_reg[22]),
        .I4(sec_cnt_reg[23]),
        .I5(state),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000005555555D)) 
    state_i_2
       (.I0(state_i_3_n_0),
        .I1(state_i_4_n_0),
        .I2(sec_cnt_reg[14]),
        .I3(sec_cnt_reg[15]),
        .I4(sec_cnt_reg[13]),
        .I5(sec_cnt_reg[19]),
        .O(state_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    state_i_3
       (.I0(sec_cnt_reg[16]),
        .I1(sec_cnt_reg[18]),
        .I2(sec_cnt_reg[17]),
        .O(state_i_3_n_0));
  LUT5 #(
    .INIT(32'h15FFFFFF)) 
    state_i_4
       (.I0(sec_cnt_reg[10]),
        .I1(sec_cnt_reg[9]),
        .I2(sec_cnt_reg[8]),
        .I3(sec_cnt_reg[12]),
        .I4(sec_cnt_reg[11]),
        .O(state_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(o_pulse_i_1_n_0),
        .D(state_i_1_n_0),
        .Q(state));
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

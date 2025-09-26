// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Sep 25 16:47:29 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1_With1Speed/PCB_Test1_With1Speed.gen/sources_1/bd/testwith1speed/ip/testwith1speed_TC_distributor_0_0/testwith1speed_TC_distributor_0_0_sim_netlist.v
// Design      : testwith1speed_TC_distributor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "testwith1speed_TC_distributor_0_0,TC_distributor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "TC_distributor,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module testwith1speed_TC_distributor_0_0
   (clk,
    rst,
    TC,
    TC_DV,
    cmd0,
    cmd1,
    cmd2,
    cmd3,
    cmd4,
    cmd5,
    cmd6,
    led0);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]TC;
  input TC_DV;
  output cmd0;
  output cmd1;
  output cmd2;
  output cmd3;
  output cmd4;
  output cmd5;
  output cmd6;
  output led0;

  wire [7:0]TC;
  wire TC_DV;
  wire clk;
  wire cmd0;
  wire cmd1;
  wire cmd2;
  wire cmd3;
  wire cmd4;
  wire cmd5;
  wire cmd6;
  wire led0;

  testwith1speed_TC_distributor_0_0_TC_distributor U0
       (.TC(TC),
        .TC_DV(TC_DV),
        .clk(clk),
        .cmd0(cmd0),
        .cmd1(cmd1),
        .cmd2(cmd2),
        .cmd3(cmd3),
        .cmd4(cmd4),
        .cmd5(cmd5),
        .cmd6(cmd6),
        .led0(led0));
endmodule

(* ORIG_REF_NAME = "TC_distributor" *) 
module testwith1speed_TC_distributor_0_0_TC_distributor
   (cmd1,
    cmd5,
    cmd2,
    cmd0,
    cmd4,
    cmd3,
    cmd6,
    led0,
    TC_DV,
    TC,
    clk);
  output cmd1;
  output cmd5;
  output cmd2;
  output cmd0;
  output cmd4;
  output cmd3;
  output cmd6;
  output led0;
  input TC_DV;
  input [7:0]TC;
  input clk;

  wire [7:0]TC;
  wire TC_DV;
  wire [7:0]TC_i;
  wire \TC_i[7]_i_1_n_0 ;
  wire TC_prev_i_1_n_0;
  wire TC_prev_reg_n_0;
  wire clk;
  wire cmd0;
  wire cmd0_i_1_n_0;
  wire cmd0_i_2_n_0;
  wire cmd0_i_3_n_0;
  wire cmd1;
  wire cmd1_i_1_n_0;
  wire cmd1_i_2_n_0;
  wire cmd2;
  wire cmd2_i_1_n_0;
  wire cmd2_i_2_n_0;
  wire cmd3;
  wire cmd3_i_1_n_0;
  wire cmd3_i_2_n_0;
  wire cmd4;
  wire cmd4_i_1_n_0;
  wire cmd4_i_2_n_0;
  wire cmd5;
  wire cmd5_i_1_n_0;
  wire cmd6;
  wire cmd6_i_1_n_0;
  wire led0;
  wire led0_i_1_n_0;
  wire state;
  wire state_i_1_n_0;
  wire \wait_cnt[0]_i_10_n_0 ;
  wire \wait_cnt[0]_i_11_n_0 ;
  wire \wait_cnt[0]_i_12_n_0 ;
  wire \wait_cnt[0]_i_13_n_0 ;
  wire \wait_cnt[0]_i_14_n_0 ;
  wire \wait_cnt[0]_i_15_n_0 ;
  wire \wait_cnt[0]_i_16_n_0 ;
  wire \wait_cnt[0]_i_1_n_0 ;
  wire \wait_cnt[0]_i_2_n_0 ;
  wire \wait_cnt[0]_i_4_n_0 ;
  wire \wait_cnt[0]_i_5_n_0 ;
  wire \wait_cnt[0]_i_6_n_0 ;
  wire \wait_cnt[0]_i_7_n_0 ;
  wire \wait_cnt[0]_i_8_n_0 ;
  wire \wait_cnt[0]_i_9_n_0 ;
  wire [26:0]wait_cnt_reg;
  wire \wait_cnt_reg[0]_i_3_n_0 ;
  wire \wait_cnt_reg[0]_i_3_n_1 ;
  wire \wait_cnt_reg[0]_i_3_n_2 ;
  wire \wait_cnt_reg[0]_i_3_n_3 ;
  wire \wait_cnt_reg[0]_i_3_n_4 ;
  wire \wait_cnt_reg[0]_i_3_n_5 ;
  wire \wait_cnt_reg[0]_i_3_n_6 ;
  wire \wait_cnt_reg[0]_i_3_n_7 ;
  wire \wait_cnt_reg[12]_i_1_n_0 ;
  wire \wait_cnt_reg[12]_i_1_n_1 ;
  wire \wait_cnt_reg[12]_i_1_n_2 ;
  wire \wait_cnt_reg[12]_i_1_n_3 ;
  wire \wait_cnt_reg[12]_i_1_n_4 ;
  wire \wait_cnt_reg[12]_i_1_n_5 ;
  wire \wait_cnt_reg[12]_i_1_n_6 ;
  wire \wait_cnt_reg[12]_i_1_n_7 ;
  wire \wait_cnt_reg[16]_i_1_n_0 ;
  wire \wait_cnt_reg[16]_i_1_n_1 ;
  wire \wait_cnt_reg[16]_i_1_n_2 ;
  wire \wait_cnt_reg[16]_i_1_n_3 ;
  wire \wait_cnt_reg[16]_i_1_n_4 ;
  wire \wait_cnt_reg[16]_i_1_n_5 ;
  wire \wait_cnt_reg[16]_i_1_n_6 ;
  wire \wait_cnt_reg[16]_i_1_n_7 ;
  wire \wait_cnt_reg[20]_i_1_n_0 ;
  wire \wait_cnt_reg[20]_i_1_n_1 ;
  wire \wait_cnt_reg[20]_i_1_n_2 ;
  wire \wait_cnt_reg[20]_i_1_n_3 ;
  wire \wait_cnt_reg[20]_i_1_n_4 ;
  wire \wait_cnt_reg[20]_i_1_n_5 ;
  wire \wait_cnt_reg[20]_i_1_n_6 ;
  wire \wait_cnt_reg[20]_i_1_n_7 ;
  wire \wait_cnt_reg[24]_i_1_n_2 ;
  wire \wait_cnt_reg[24]_i_1_n_3 ;
  wire \wait_cnt_reg[24]_i_1_n_5 ;
  wire \wait_cnt_reg[24]_i_1_n_6 ;
  wire \wait_cnt_reg[24]_i_1_n_7 ;
  wire \wait_cnt_reg[4]_i_1_n_0 ;
  wire \wait_cnt_reg[4]_i_1_n_1 ;
  wire \wait_cnt_reg[4]_i_1_n_2 ;
  wire \wait_cnt_reg[4]_i_1_n_3 ;
  wire \wait_cnt_reg[4]_i_1_n_4 ;
  wire \wait_cnt_reg[4]_i_1_n_5 ;
  wire \wait_cnt_reg[4]_i_1_n_6 ;
  wire \wait_cnt_reg[4]_i_1_n_7 ;
  wire \wait_cnt_reg[8]_i_1_n_0 ;
  wire \wait_cnt_reg[8]_i_1_n_1 ;
  wire \wait_cnt_reg[8]_i_1_n_2 ;
  wire \wait_cnt_reg[8]_i_1_n_3 ;
  wire \wait_cnt_reg[8]_i_1_n_4 ;
  wire \wait_cnt_reg[8]_i_1_n_5 ;
  wire \wait_cnt_reg[8]_i_1_n_6 ;
  wire \wait_cnt_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_wait_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wait_cnt_reg[24]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h00FB)) 
    \TC_i[7]_i_1 
       (.I0(TC_prev_reg_n_0),
        .I1(TC_DV),
        .I2(state),
        .I3(\wait_cnt[0]_i_2_n_0 ),
        .O(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[0] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[0]),
        .Q(TC_i[0]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[1] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[1]),
        .Q(TC_i[1]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[2] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[2]),
        .Q(TC_i[2]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[3] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[3]),
        .Q(TC_i[3]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[4] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[4]),
        .Q(TC_i[4]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[5] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[5]),
        .Q(TC_i[5]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[6] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[6]),
        .Q(TC_i[6]),
        .R(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[7] 
       (.C(clk),
        .CE(led0_i_1_n_0),
        .D(TC[7]),
        .Q(TC_i[7]),
        .R(\TC_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    TC_prev_i_1
       (.I0(TC_DV),
        .I1(state),
        .I2(\wait_cnt[0]_i_2_n_0 ),
        .I3(TC_prev_reg_n_0),
        .O(TC_prev_i_1_n_0));
  FDRE TC_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(TC_prev_i_1_n_0),
        .Q(TC_prev_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    cmd0_i_1
       (.I0(\wait_cnt[0]_i_2_n_0 ),
        .I1(state),
        .O(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    cmd0_i_2
       (.I0(cmd0_i_3_n_0),
        .I1(TC_i[0]),
        .I2(TC_i[7]),
        .I3(TC_i[3]),
        .I4(TC_i[4]),
        .I5(cmd0),
        .O(cmd0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    cmd0_i_3
       (.I0(TC_i[2]),
        .I1(TC_i[5]),
        .I2(TC_i[1]),
        .I3(TC_i[6]),
        .O(cmd0_i_3_n_0));
  FDRE cmd0_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd0_i_2_n_0),
        .Q(cmd0),
        .R(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000400)) 
    cmd1_i_1
       (.I0(cmd1_i_2_n_0),
        .I1(TC_i[4]),
        .I2(TC_i[3]),
        .I3(TC_i[0]),
        .I4(TC_i[7]),
        .I5(cmd1),
        .O(cmd1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    cmd1_i_2
       (.I0(TC_i[6]),
        .I1(TC_i[5]),
        .I2(TC_i[2]),
        .I3(TC_i[1]),
        .O(cmd1_i_2_n_0));
  FDRE cmd1_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd1_i_1_n_0),
        .Q(cmd1),
        .R(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    cmd2_i_1
       (.I0(TC_i[3]),
        .I1(TC_i[5]),
        .I2(TC_i[0]),
        .I3(TC_i[7]),
        .I4(cmd2_i_2_n_0),
        .I5(cmd2),
        .O(cmd2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    cmd2_i_2
       (.I0(TC_i[2]),
        .I1(TC_i[1]),
        .I2(TC_i[6]),
        .I3(TC_i[4]),
        .O(cmd2_i_2_n_0));
  FDRE cmd2_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd2_i_1_n_0),
        .Q(cmd2),
        .R(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    cmd3_i_1
       (.I0(TC_i[4]),
        .I1(TC_i[2]),
        .I2(TC_i[5]),
        .I3(TC_i[3]),
        .I4(cmd3_i_2_n_0),
        .I5(cmd3),
        .O(cmd3_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    cmd3_i_2
       (.I0(TC_i[0]),
        .I1(TC_i[7]),
        .I2(TC_i[1]),
        .I3(TC_i[6]),
        .O(cmd3_i_2_n_0));
  FDRE cmd3_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd3_i_1_n_0),
        .Q(cmd3),
        .R(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    cmd4_i_1
       (.I0(cmd4_i_2_n_0),
        .I1(TC_i[5]),
        .I2(TC_i[0]),
        .I3(TC_i[7]),
        .I4(TC_i[6]),
        .I5(cmd4),
        .O(cmd4_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    cmd4_i_2
       (.I0(TC_i[4]),
        .I1(TC_i[3]),
        .I2(TC_i[2]),
        .I3(TC_i[1]),
        .O(cmd4_i_2_n_0));
  FDRE cmd4_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd4_i_1_n_0),
        .Q(cmd4),
        .R(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    cmd5_i_1
       (.I0(TC_i[5]),
        .I1(TC_i[3]),
        .I2(TC_i[0]),
        .I3(TC_i[7]),
        .I4(cmd2_i_2_n_0),
        .I5(cmd5),
        .O(cmd5_i_1_n_0));
  FDRE cmd5_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd5_i_1_n_0),
        .Q(cmd5),
        .R(cmd0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    cmd6_i_1
       (.I0(TC_i[3]),
        .I1(TC_i[5]),
        .I2(TC_i[4]),
        .I3(TC_i[2]),
        .I4(cmd3_i_2_n_0),
        .I5(cmd6),
        .O(cmd6_i_1_n_0));
  FDRE cmd6_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd6_i_1_n_0),
        .Q(cmd6),
        .R(cmd0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    led0_i_1
       (.I0(\wait_cnt[0]_i_2_n_0 ),
        .O(led0_i_1_n_0));
  FDRE led0_reg
       (.C(clk),
        .CE(1'b1),
        .D(led0_i_1_n_0),
        .Q(led0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF002)) 
    state_i_1
       (.I0(TC_DV),
        .I1(TC_prev_reg_n_0),
        .I2(\wait_cnt[0]_i_2_n_0 ),
        .I3(state),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4404)) 
    \wait_cnt[0]_i_1 
       (.I0(\wait_cnt[0]_i_2_n_0 ),
        .I1(state),
        .I2(\wait_cnt[0]_i_4_n_0 ),
        .I3(\wait_cnt[0]_i_5_n_0 ),
        .O(\wait_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \wait_cnt[0]_i_10 
       (.I0(cmd3_i_2_n_0),
        .I1(TC_i[2]),
        .I2(TC_i[4]),
        .I3(TC_i[5]),
        .I4(TC_i[3]),
        .O(\wait_cnt[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wait_cnt[0]_i_11 
       (.I0(TC_i[7]),
        .I1(TC_i[0]),
        .O(\wait_cnt[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wait_cnt[0]_i_12 
       (.I0(TC_i[1]),
        .I1(TC_i[2]),
        .O(\wait_cnt[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_cnt[0]_i_13 
       (.I0(wait_cnt_reg[13]),
        .I1(wait_cnt_reg[16]),
        .I2(wait_cnt_reg[14]),
        .I3(wait_cnt_reg[15]),
        .O(\wait_cnt[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_cnt[0]_i_14 
       (.I0(wait_cnt_reg[11]),
        .I1(wait_cnt_reg[12]),
        .I2(wait_cnt_reg[9]),
        .I3(wait_cnt_reg[8]),
        .I4(wait_cnt_reg[10]),
        .O(\wait_cnt[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wait_cnt[0]_i_15 
       (.I0(wait_cnt_reg[2]),
        .I1(wait_cnt_reg[3]),
        .I2(wait_cnt_reg[6]),
        .I3(wait_cnt_reg[0]),
        .O(\wait_cnt[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wait_cnt[0]_i_16 
       (.I0(wait_cnt_reg[5]),
        .I1(wait_cnt_reg[7]),
        .I2(wait_cnt_reg[1]),
        .I3(wait_cnt_reg[4]),
        .O(\wait_cnt[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h4445FFFF)) 
    \wait_cnt[0]_i_2 
       (.I0(wait_cnt_reg[25]),
        .I1(\wait_cnt[0]_i_6_n_0 ),
        .I2(\wait_cnt[0]_i_7_n_0 ),
        .I3(wait_cnt_reg[19]),
        .I4(wait_cnt_reg[26]),
        .O(\wait_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFBEFFF)) 
    \wait_cnt[0]_i_4 
       (.I0(\wait_cnt[0]_i_9_n_0 ),
        .I1(TC_i[4]),
        .I2(TC_i[3]),
        .I3(TC_i[7]),
        .I4(TC_i[0]),
        .I5(\wait_cnt[0]_i_10_n_0 ),
        .O(\wait_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004008)) 
    \wait_cnt[0]_i_5 
       (.I0(TC_i[4]),
        .I1(\wait_cnt[0]_i_11_n_0 ),
        .I2(TC_i[6]),
        .I3(TC_i[5]),
        .I4(TC_i[3]),
        .I5(\wait_cnt[0]_i_12_n_0 ),
        .O(\wait_cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wait_cnt[0]_i_6 
       (.I0(wait_cnt_reg[20]),
        .I1(wait_cnt_reg[24]),
        .I2(wait_cnt_reg[23]),
        .I3(wait_cnt_reg[21]),
        .I4(wait_cnt_reg[22]),
        .O(\wait_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A888A8A8A88)) 
    \wait_cnt[0]_i_7 
       (.I0(wait_cnt_reg[18]),
        .I1(wait_cnt_reg[17]),
        .I2(\wait_cnt[0]_i_13_n_0 ),
        .I3(\wait_cnt[0]_i_14_n_0 ),
        .I4(\wait_cnt[0]_i_15_n_0 ),
        .I5(\wait_cnt[0]_i_16_n_0 ),
        .O(\wait_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_cnt[0]_i_8 
       (.I0(wait_cnt_reg[0]),
        .O(\wait_cnt[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFDBF)) 
    \wait_cnt[0]_i_9 
       (.I0(TC_i[6]),
        .I1(TC_i[1]),
        .I2(TC_i[5]),
        .I3(TC_i[2]),
        .O(\wait_cnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[0] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_cnt_reg[0]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_cnt_reg[0]_i_3_n_0 ,\wait_cnt_reg[0]_i_3_n_1 ,\wait_cnt_reg[0]_i_3_n_2 ,\wait_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_cnt_reg[0]_i_3_n_4 ,\wait_cnt_reg[0]_i_3_n_5 ,\wait_cnt_reg[0]_i_3_n_6 ,\wait_cnt_reg[0]_i_3_n_7 }),
        .S({wait_cnt_reg[3:1],\wait_cnt[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[10] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_cnt_reg[10]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[11] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_cnt_reg[11]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[12] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_cnt_reg[12]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[12]_i_1 
       (.CI(\wait_cnt_reg[8]_i_1_n_0 ),
        .CO({\wait_cnt_reg[12]_i_1_n_0 ,\wait_cnt_reg[12]_i_1_n_1 ,\wait_cnt_reg[12]_i_1_n_2 ,\wait_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_cnt_reg[12]_i_1_n_4 ,\wait_cnt_reg[12]_i_1_n_5 ,\wait_cnt_reg[12]_i_1_n_6 ,\wait_cnt_reg[12]_i_1_n_7 }),
        .S(wait_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[13] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_cnt_reg[13]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[14] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_cnt_reg[14]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[15] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_cnt_reg[15]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[16] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[16]_i_1_n_7 ),
        .Q(wait_cnt_reg[16]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[16]_i_1 
       (.CI(\wait_cnt_reg[12]_i_1_n_0 ),
        .CO({\wait_cnt_reg[16]_i_1_n_0 ,\wait_cnt_reg[16]_i_1_n_1 ,\wait_cnt_reg[16]_i_1_n_2 ,\wait_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_cnt_reg[16]_i_1_n_4 ,\wait_cnt_reg[16]_i_1_n_5 ,\wait_cnt_reg[16]_i_1_n_6 ,\wait_cnt_reg[16]_i_1_n_7 }),
        .S(wait_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[17] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[16]_i_1_n_6 ),
        .Q(wait_cnt_reg[17]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[18] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[16]_i_1_n_5 ),
        .Q(wait_cnt_reg[18]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[19] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[16]_i_1_n_4 ),
        .Q(wait_cnt_reg[19]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[1] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_cnt_reg[1]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[20] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[20]_i_1_n_7 ),
        .Q(wait_cnt_reg[20]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[20]_i_1 
       (.CI(\wait_cnt_reg[16]_i_1_n_0 ),
        .CO({\wait_cnt_reg[20]_i_1_n_0 ,\wait_cnt_reg[20]_i_1_n_1 ,\wait_cnt_reg[20]_i_1_n_2 ,\wait_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_cnt_reg[20]_i_1_n_4 ,\wait_cnt_reg[20]_i_1_n_5 ,\wait_cnt_reg[20]_i_1_n_6 ,\wait_cnt_reg[20]_i_1_n_7 }),
        .S(wait_cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[21] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[20]_i_1_n_6 ),
        .Q(wait_cnt_reg[21]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[22] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[20]_i_1_n_5 ),
        .Q(wait_cnt_reg[22]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[23] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[20]_i_1_n_4 ),
        .Q(wait_cnt_reg[23]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[24] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[24]_i_1_n_7 ),
        .Q(wait_cnt_reg[24]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[24]_i_1 
       (.CI(\wait_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_wait_cnt_reg[24]_i_1_CO_UNCONNECTED [3:2],\wait_cnt_reg[24]_i_1_n_2 ,\wait_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_cnt_reg[24]_i_1_O_UNCONNECTED [3],\wait_cnt_reg[24]_i_1_n_5 ,\wait_cnt_reg[24]_i_1_n_6 ,\wait_cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,wait_cnt_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[25] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[24]_i_1_n_6 ),
        .Q(wait_cnt_reg[25]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[26] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[24]_i_1_n_5 ),
        .Q(wait_cnt_reg[26]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[2] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_cnt_reg[2]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[3] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_cnt_reg[3]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[4] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_cnt_reg[4]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[4]_i_1 
       (.CI(\wait_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_cnt_reg[4]_i_1_n_0 ,\wait_cnt_reg[4]_i_1_n_1 ,\wait_cnt_reg[4]_i_1_n_2 ,\wait_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_cnt_reg[4]_i_1_n_4 ,\wait_cnt_reg[4]_i_1_n_5 ,\wait_cnt_reg[4]_i_1_n_6 ,\wait_cnt_reg[4]_i_1_n_7 }),
        .S(wait_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[5] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_cnt_reg[5]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[6] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_cnt_reg[6]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[7] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_cnt_reg[7]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[8] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_cnt_reg[8]),
        .R(\wait_cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_cnt_reg[8]_i_1 
       (.CI(\wait_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_cnt_reg[8]_i_1_n_0 ,\wait_cnt_reg[8]_i_1_n_1 ,\wait_cnt_reg[8]_i_1_n_2 ,\wait_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_cnt_reg[8]_i_1_n_4 ,\wait_cnt_reg[8]_i_1_n_5 ,\wait_cnt_reg[8]_i_1_n_6 ,\wait_cnt_reg[8]_i_1_n_7 }),
        .S(wait_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_cnt_reg[9] 
       (.C(clk),
        .CE(\wait_cnt[0]_i_2_n_0 ),
        .D(\wait_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_cnt_reg[9]),
        .R(\wait_cnt[0]_i_1_n_0 ));
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

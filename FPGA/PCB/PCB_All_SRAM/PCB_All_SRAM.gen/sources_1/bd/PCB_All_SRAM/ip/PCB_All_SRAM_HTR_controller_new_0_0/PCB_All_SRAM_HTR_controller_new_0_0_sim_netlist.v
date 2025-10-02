// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:45:30 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_HTR_controller_new_0_0/PCB_All_SRAM_HTR_controller_new_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_HTR_controller_new_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_HTR_controller_new_0_0,HTR_controller_new,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "HTR_controller_new,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_HTR_controller_new_0_0
   (clk,
    HTR_rst,
    HTR_DUTY,
    nmos_out,
    diag_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 HTR_rst RST" *) (* x_interface_mode = "slave HTR_rst" *) (* x_interface_parameter = "XIL_INTERFACENAME HTR_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input HTR_rst;
  input [31:0]HTR_DUTY;
  output nmos_out;
  output diag_out;

  wire [31:0]HTR_DUTY;
  wire HTR_rst;
  wire clk;
  wire diag_out;

  assign nmos_out = diag_out;
  PCB_All_SRAM_HTR_controller_new_0_0_HTR_controller_new U0
       (.HTR_DUTY(HTR_DUTY),
        .HTR_rst(HTR_rst),
        .clk(clk),
        .diag_out(diag_out));
endmodule

(* ORIG_REF_NAME = "HTR_controller_new" *) 
module PCB_All_SRAM_HTR_controller_new_0_0_HTR_controller_new
   (diag_out,
    HTR_DUTY,
    clk,
    HTR_rst);
  output diag_out;
  input [31:0]HTR_DUTY;
  input clk;
  input HTR_rst;

  wire [31:0]HTR_DUTY;
  wire HTR_rst;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire [3:0]counter_reg;
  wire diag_out;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire p_0_in;
  wire pwm_level2_carry__0_i_1_n_0;
  wire pwm_level2_carry__0_i_2_n_0;
  wire pwm_level2_carry__0_i_3_n_0;
  wire pwm_level2_carry__0_i_4_n_0;
  wire pwm_level2_carry__0_n_0;
  wire pwm_level2_carry__0_n_1;
  wire pwm_level2_carry__0_n_2;
  wire pwm_level2_carry__0_n_3;
  wire pwm_level2_carry__1_i_1_n_0;
  wire pwm_level2_carry__1_i_2_n_0;
  wire pwm_level2_carry__1_i_3_n_0;
  wire pwm_level2_carry__1_i_4_n_0;
  wire pwm_level2_carry__1_n_0;
  wire pwm_level2_carry__1_n_1;
  wire pwm_level2_carry__1_n_2;
  wire pwm_level2_carry__1_n_3;
  wire pwm_level2_carry__2_i_1_n_0;
  wire pwm_level2_carry__2_i_2_n_0;
  wire pwm_level2_carry__2_i_3_n_0;
  wire pwm_level2_carry__2_i_4_n_0;
  wire pwm_level2_carry__2_n_0;
  wire pwm_level2_carry__2_n_1;
  wire pwm_level2_carry__2_n_2;
  wire pwm_level2_carry__2_n_3;
  wire pwm_level2_carry_i_1_n_0;
  wire pwm_level2_carry_i_2_n_0;
  wire pwm_level2_carry_i_3_n_0;
  wire pwm_level2_carry_i_4_n_0;
  wire pwm_level2_carry_i_5_n_0;
  wire pwm_level2_carry_i_6_n_0;
  wire pwm_level2_carry_n_0;
  wire pwm_level2_carry_n_1;
  wire pwm_level2_carry_n_2;
  wire pwm_level2_carry_n_3;
  wire \pwm_level2_inferred__0/i__carry__0_n_0 ;
  wire \pwm_level2_inferred__0/i__carry__0_n_1 ;
  wire \pwm_level2_inferred__0/i__carry__0_n_2 ;
  wire \pwm_level2_inferred__0/i__carry__0_n_3 ;
  wire \pwm_level2_inferred__0/i__carry__1_n_0 ;
  wire \pwm_level2_inferred__0/i__carry__1_n_1 ;
  wire \pwm_level2_inferred__0/i__carry__1_n_2 ;
  wire \pwm_level2_inferred__0/i__carry__1_n_3 ;
  wire \pwm_level2_inferred__0/i__carry__2_n_0 ;
  wire \pwm_level2_inferred__0/i__carry__2_n_1 ;
  wire \pwm_level2_inferred__0/i__carry__2_n_2 ;
  wire \pwm_level2_inferred__0/i__carry__2_n_3 ;
  wire \pwm_level2_inferred__0/i__carry_n_0 ;
  wire \pwm_level2_inferred__0/i__carry_n_1 ;
  wire \pwm_level2_inferred__0/i__carry_n_2 ;
  wire \pwm_level2_inferred__0/i__carry_n_3 ;
  wire \pwm_level[3]_i_1_n_0 ;
  wire \pwm_level_reg_n_0_[0] ;
  wire \pwm_level_reg_n_0_[1] ;
  wire \pwm_level_reg_n_0_[2] ;
  wire \pwm_level_reg_n_0_[3] ;
  wire pwm_sig_i_2_n_0;
  wire [3:0]NLW_pwm_level2_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_level2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pwm_level2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_pwm_level2_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_pwm_level2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm_level2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm_level2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm_level2_inferred__0/i__carry__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008FFFF)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(HTR_rst),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_2 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .O(\counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter_reg[0]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter_reg[1]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg[2]),
        .R(\counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[3]_i_2_n_0 ),
        .Q(counter_reg[3]),
        .R(\counter[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(HTR_DUTY[6]),
        .I1(HTR_DUTY[7]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(HTR_DUTY[14]),
        .I1(HTR_DUTY[15]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__1
       (.I0(HTR_DUTY[22]),
        .I1(HTR_DUTY[23]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__2
       (.I0(HTR_DUTY[30]),
        .I1(HTR_DUTY[31]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2
       (.I0(HTR_DUTY[4]),
        .I1(HTR_DUTY[5]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__0
       (.I0(HTR_DUTY[12]),
        .I1(HTR_DUTY[13]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__1
       (.I0(HTR_DUTY[20]),
        .I1(HTR_DUTY[21]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__2
       (.I0(HTR_DUTY[28]),
        .I1(HTR_DUTY[29]),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(HTR_DUTY[2]),
        .I1(HTR_DUTY[3]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__0
       (.I0(HTR_DUTY[10]),
        .I1(HTR_DUTY[11]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__1
       (.I0(HTR_DUTY[18]),
        .I1(HTR_DUTY[19]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__2
       (.I0(HTR_DUTY[26]),
        .I1(HTR_DUTY[27]),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4
       (.I0(HTR_DUTY[8]),
        .I1(HTR_DUTY[9]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__0
       (.I0(HTR_DUTY[16]),
        .I1(HTR_DUTY[17]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__1
       (.I0(HTR_DUTY[24]),
        .I1(HTR_DUTY[25]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__2
       (.I0(HTR_DUTY[6]),
        .I1(HTR_DUTY[7]),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(HTR_DUTY[30]),
        .I1(HTR_DUTY[31]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__0
       (.I0(HTR_DUTY[4]),
        .I1(HTR_DUTY[5]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__1
       (.I0(HTR_DUTY[14]),
        .I1(HTR_DUTY[15]),
        .O(i__carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__2
       (.I0(HTR_DUTY[22]),
        .I1(HTR_DUTY[23]),
        .O(i__carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6
       (.I0(HTR_DUTY[2]),
        .I1(HTR_DUTY[3]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__0
       (.I0(HTR_DUTY[12]),
        .I1(HTR_DUTY[13]),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__1
       (.I0(HTR_DUTY[20]),
        .I1(HTR_DUTY[21]),
        .O(i__carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__2
       (.I0(HTR_DUTY[28]),
        .I1(HTR_DUTY[29]),
        .O(i__carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(HTR_DUTY[0]),
        .I1(HTR_DUTY[1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__0
       (.I0(HTR_DUTY[10]),
        .I1(HTR_DUTY[11]),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__1
       (.I0(HTR_DUTY[18]),
        .I1(HTR_DUTY[19]),
        .O(i__carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__2
       (.I0(HTR_DUTY[26]),
        .I1(HTR_DUTY[27]),
        .O(i__carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8
       (.I0(HTR_DUTY[8]),
        .I1(HTR_DUTY[9]),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__0
       (.I0(HTR_DUTY[16]),
        .I1(HTR_DUTY[17]),
        .O(i__carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__1
       (.I0(HTR_DUTY[24]),
        .I1(HTR_DUTY[25]),
        .O(i__carry_i_8__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_level2_carry
       (.CI(1'b0),
        .CO({pwm_level2_carry_n_0,pwm_level2_carry_n_1,pwm_level2_carry_n_2,pwm_level2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,pwm_level2_carry_i_1_n_0,pwm_level2_carry_i_2_n_0}),
        .O(NLW_pwm_level2_carry_O_UNCONNECTED[3:0]),
        .S({pwm_level2_carry_i_3_n_0,pwm_level2_carry_i_4_n_0,pwm_level2_carry_i_5_n_0,pwm_level2_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_level2_carry__0
       (.CI(pwm_level2_carry_n_0),
        .CO({pwm_level2_carry__0_n_0,pwm_level2_carry__0_n_1,pwm_level2_carry__0_n_2,pwm_level2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_level2_carry__0_O_UNCONNECTED[3:0]),
        .S({pwm_level2_carry__0_i_1_n_0,pwm_level2_carry__0_i_2_n_0,pwm_level2_carry__0_i_3_n_0,pwm_level2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__0_i_1
       (.I0(HTR_DUTY[14]),
        .I1(HTR_DUTY[15]),
        .O(pwm_level2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__0_i_2
       (.I0(HTR_DUTY[12]),
        .I1(HTR_DUTY[13]),
        .O(pwm_level2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__0_i_3
       (.I0(HTR_DUTY[10]),
        .I1(HTR_DUTY[11]),
        .O(pwm_level2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__0_i_4
       (.I0(HTR_DUTY[8]),
        .I1(HTR_DUTY[9]),
        .O(pwm_level2_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_level2_carry__1
       (.CI(pwm_level2_carry__0_n_0),
        .CO({pwm_level2_carry__1_n_0,pwm_level2_carry__1_n_1,pwm_level2_carry__1_n_2,pwm_level2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pwm_level2_carry__1_O_UNCONNECTED[3:0]),
        .S({pwm_level2_carry__1_i_1_n_0,pwm_level2_carry__1_i_2_n_0,pwm_level2_carry__1_i_3_n_0,pwm_level2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__1_i_1
       (.I0(HTR_DUTY[22]),
        .I1(HTR_DUTY[23]),
        .O(pwm_level2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__1_i_2
       (.I0(HTR_DUTY[20]),
        .I1(HTR_DUTY[21]),
        .O(pwm_level2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__1_i_3
       (.I0(HTR_DUTY[18]),
        .I1(HTR_DUTY[19]),
        .O(pwm_level2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__1_i_4
       (.I0(HTR_DUTY[16]),
        .I1(HTR_DUTY[17]),
        .O(pwm_level2_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_level2_carry__2
       (.CI(pwm_level2_carry__1_n_0),
        .CO({pwm_level2_carry__2_n_0,pwm_level2_carry__2_n_1,pwm_level2_carry__2_n_2,pwm_level2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({HTR_DUTY[31],1'b0,1'b0,1'b0}),
        .O(NLW_pwm_level2_carry__2_O_UNCONNECTED[3:0]),
        .S({pwm_level2_carry__2_i_1_n_0,pwm_level2_carry__2_i_2_n_0,pwm_level2_carry__2_i_3_n_0,pwm_level2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__2_i_1
       (.I0(HTR_DUTY[30]),
        .I1(HTR_DUTY[31]),
        .O(pwm_level2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__2_i_2
       (.I0(HTR_DUTY[28]),
        .I1(HTR_DUTY[29]),
        .O(pwm_level2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__2_i_3
       (.I0(HTR_DUTY[26]),
        .I1(HTR_DUTY[27]),
        .O(pwm_level2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry__2_i_4
       (.I0(HTR_DUTY[24]),
        .I1(HTR_DUTY[25]),
        .O(pwm_level2_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_level2_carry_i_1
       (.I0(HTR_DUTY[3]),
        .O(pwm_level2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_level2_carry_i_2
       (.I0(HTR_DUTY[1]),
        .O(pwm_level2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry_i_3
       (.I0(HTR_DUTY[6]),
        .I1(HTR_DUTY[7]),
        .O(pwm_level2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_level2_carry_i_4
       (.I0(HTR_DUTY[4]),
        .I1(HTR_DUTY[5]),
        .O(pwm_level2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_level2_carry_i_5
       (.I0(HTR_DUTY[3]),
        .I1(HTR_DUTY[2]),
        .O(pwm_level2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_level2_carry_i_6
       (.I0(HTR_DUTY[1]),
        .I1(HTR_DUTY[0]),
        .O(pwm_level2_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm_level2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\pwm_level2_inferred__0/i__carry_n_0 ,\pwm_level2_inferred__0/i__carry_n_1 ,\pwm_level2_inferred__0/i__carry_n_2 ,\pwm_level2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,HTR_DUTY[1]}),
        .O(\NLW_pwm_level2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4__2_n_0,i__carry_i_5__0_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm_level2_inferred__0/i__carry__0 
       (.CI(\pwm_level2_inferred__0/i__carry_n_0 ),
        .CO({\pwm_level2_inferred__0/i__carry__0_n_0 ,\pwm_level2_inferred__0/i__carry__0_n_1 ,\pwm_level2_inferred__0/i__carry__0_n_2 ,\pwm_level2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}),
        .O(\NLW_pwm_level2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm_level2_inferred__0/i__carry__1 
       (.CI(\pwm_level2_inferred__0/i__carry__0_n_0 ),
        .CO({\pwm_level2_inferred__0/i__carry__1_n_0 ,\pwm_level2_inferred__0/i__carry__1_n_1 ,\pwm_level2_inferred__0/i__carry__1_n_2 ,\pwm_level2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_pwm_level2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm_level2_inferred__0/i__carry__2 
       (.CI(\pwm_level2_inferred__0/i__carry__1_n_0 ),
        .CO({\pwm_level2_inferred__0/i__carry__2_n_0 ,\pwm_level2_inferred__0/i__carry__2_n_1 ,\pwm_level2_inferred__0/i__carry__2_n_2 ,\pwm_level2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_pwm_level2_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    \pwm_level[3]_i_1 
       (.I0(\pwm_level2_inferred__0/i__carry__2_n_0 ),
        .I1(pwm_level2_carry__2_n_0),
        .O(\pwm_level[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_level_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(HTR_DUTY[0]),
        .Q(\pwm_level_reg_n_0_[0] ),
        .R(\pwm_level[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_level_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(HTR_DUTY[1]),
        .Q(\pwm_level_reg_n_0_[1] ),
        .R(\pwm_level[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_level_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(HTR_DUTY[2]),
        .Q(\pwm_level_reg_n_0_[2] ),
        .R(\pwm_level[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_level_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(HTR_DUTY[3]),
        .Q(\pwm_level_reg_n_0_[3] ),
        .R(\pwm_level[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888E8E8EEEE8E8E8)) 
    pwm_sig_i_1
       (.I0(pwm_sig_i_2_n_0),
        .I1(counter_reg[3]),
        .I2(\pwm_level_reg_n_0_[2] ),
        .I3(\pwm_level_reg_n_0_[0] ),
        .I4(\pwm_level_reg_n_0_[1] ),
        .I5(\pwm_level_reg_n_0_[3] ),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFEFC8FFF80000EFC)) 
    pwm_sig_i_2
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(\pwm_level_reg_n_0_[1] ),
        .I3(\pwm_level_reg_n_0_[0] ),
        .I4(\pwm_level_reg_n_0_[2] ),
        .I5(counter_reg[2]),
        .O(pwm_sig_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(diag_out),
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

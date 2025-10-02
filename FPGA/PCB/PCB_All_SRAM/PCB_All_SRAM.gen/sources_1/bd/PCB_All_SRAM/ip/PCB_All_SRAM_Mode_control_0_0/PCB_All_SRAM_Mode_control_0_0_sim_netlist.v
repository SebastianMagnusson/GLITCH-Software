// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Sep 30 10:44:14 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_Mode_control_0_0/PCB_All_SRAM_Mode_control_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_Mode_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_Mode_control_0_0,Mode_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Mode_control,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_Mode_control_0_0
   (sysclk,
    Set_power_save,
    Set_power_on,
    Set_cutoff,
    o_signal,
    o_htr,
    led0);
  input sysclk;
  input Set_power_save;
  input Set_power_on;
  input Set_cutoff;
  output o_signal;
  output o_htr;
  output led0;

  wire Set_cutoff;
  wire Set_power_on;
  wire Set_power_save;
  wire led0;
  wire o_htr;
  wire o_signal;
  wire sysclk;

  PCB_All_SRAM_Mode_control_0_0_Mode_control U0
       (.Set_cutoff(Set_cutoff),
        .Set_power_on(Set_power_on),
        .Set_power_save(Set_power_save),
        .led0(led0),
        .o_htr(o_htr),
        .o_signal(o_signal),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "Mode_control" *) 
module PCB_All_SRAM_Mode_control_0_0_Mode_control
   (led0,
    o_signal,
    o_htr,
    Set_power_save,
    sysclk,
    Set_power_on,
    Set_cutoff);
  output led0;
  output o_signal;
  output o_htr;
  input Set_power_save;
  input sysclk;
  input Set_power_on;
  input Set_cutoff;

  wire \FSM_sequential_State[0]_i_1_n_0 ;
  wire \FSM_sequential_State[1]_i_1_n_0 ;
  wire \FSM_sequential_State[1]_i_2_n_0 ;
  wire Set_cutoff;
  wire Set_cutoff_prev;
  wire Set_power_on;
  wire Set_power_on_prev;
  wire Set_power_save;
  wire Set_power_save_prev;
  wire [1:0]State;
  wire [1:0]State__0;
  wire led0;
  wire led0_i_1_n_0;
  wire led0_i_2_n_0;
  wire o_htr;
  wire o_htr_i_1_n_0;
  wire o_htr_i_2_n_0;
  wire o_signal;
  wire o_signal_i_1_n_0;
  wire o_signal_i_2_n_0;
  wire sysclk;

  LUT6 #(
    .INIT(64'hFFFFCECC0000C8CC)) 
    \FSM_sequential_State[0]_i_1 
       (.I0(State[1]),
        .I1(State[0]),
        .I2(Set_power_save_prev),
        .I3(Set_power_save),
        .I4(\FSM_sequential_State[1]_i_2_n_0 ),
        .I5(State__0[0]),
        .O(\FSM_sequential_State[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_State[0]_i_2 
       (.I0(State[0]),
        .I1(State[1]),
        .I2(Set_power_on_prev),
        .I3(Set_power_on),
        .O(State__0[0]));
  LUT6 #(
    .INIT(64'hFFFFAEAA0000A8AA)) 
    \FSM_sequential_State[1]_i_1 
       (.I0(State[1]),
        .I1(State[0]),
        .I2(Set_power_save_prev),
        .I3(Set_power_save),
        .I4(\FSM_sequential_State[1]_i_2_n_0 ),
        .I5(State__0[1]),
        .O(\FSM_sequential_State[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004F44)) 
    \FSM_sequential_State[1]_i_2 
       (.I0(Set_cutoff_prev),
        .I1(Set_cutoff),
        .I2(Set_power_on_prev),
        .I3(Set_power_on),
        .I4(State[1]),
        .I5(State[0]),
        .O(\FSM_sequential_State[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \FSM_sequential_State[1]_i_3 
       (.I0(State[0]),
        .I1(State[1]),
        .I2(Set_power_on_prev),
        .I3(Set_power_on),
        .O(State__0[1]));
  (* FSM_ENCODED_STATES = "power_save:00,cutoff:10,power_on:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_sequential_State[0]_i_1_n_0 ),
        .Q(State[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "power_save:00,cutoff:10,power_on:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_State_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\FSM_sequential_State[1]_i_1_n_0 ),
        .Q(State[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Set_cutoff_prev_reg
       (.C(sysclk),
        .CE(o_htr_i_1_n_0),
        .D(Set_cutoff),
        .Q(Set_cutoff_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Set_power_on_prev_reg
       (.C(sysclk),
        .CE(o_htr_i_1_n_0),
        .D(Set_power_on),
        .Q(Set_power_on_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Set_power_save_prev_reg
       (.C(sysclk),
        .CE(o_htr_i_1_n_0),
        .D(Set_power_save),
        .Q(Set_power_save_prev),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEF0010FF0000)) 
    led0_i_1
       (.I0(State[0]),
        .I1(Set_power_save_prev),
        .I2(Set_power_save),
        .I3(State[1]),
        .I4(led0_i_2_n_0),
        .I5(led0),
        .O(led0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000BBBB0F00)) 
    led0_i_2
       (.I0(Set_power_save_prev),
        .I1(Set_power_save),
        .I2(Set_power_on_prev),
        .I3(Set_power_on),
        .I4(State[0]),
        .I5(State[1]),
        .O(led0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led0_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(led0_i_1_n_0),
        .Q(led0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    o_htr_i_1
       (.I0(State[1]),
        .I1(State[0]),
        .O(o_htr_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    o_htr_i_2
       (.I0(State[1]),
        .O(o_htr_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    o_htr_reg
       (.C(sysclk),
        .CE(o_htr_i_1_n_0),
        .D(o_htr_i_2_n_0),
        .Q(o_htr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB830)) 
    o_signal_i_1
       (.I0(o_signal),
        .I1(State[1]),
        .I2(o_signal_i_2_n_0),
        .I3(State[0]),
        .O(o_signal_i_1_n_0));
  LUT5 #(
    .INIT(32'hBBBB0F00)) 
    o_signal_i_2
       (.I0(Set_power_save_prev),
        .I1(Set_power_save),
        .I2(Set_power_on_prev),
        .I3(Set_power_on),
        .I4(State[0]),
        .O(o_signal_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_signal_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(o_signal_i_1_n_0),
        .Q(o_signal),
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

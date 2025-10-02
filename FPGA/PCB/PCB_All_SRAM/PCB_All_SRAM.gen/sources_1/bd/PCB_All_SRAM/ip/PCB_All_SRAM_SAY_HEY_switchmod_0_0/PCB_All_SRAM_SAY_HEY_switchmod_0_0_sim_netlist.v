// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 29 13:56:45 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_All_SRAM/PCB_All_SRAM.gen/sources_1/bd/PCB_All_SRAM/ip/PCB_All_SRAM_SAY_HEY_switchmod_0_0/PCB_All_SRAM_SAY_HEY_switchmod_0_0_sim_netlist.v
// Design      : PCB_All_SRAM_SAY_HEY_switchmod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_All_SRAM_SAY_HEY_switchmod_0_0,SAY_HEY_switchmod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SAY_HEY_switchmod,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_All_SRAM_SAY_HEY_switchmod_0_0
   (sysclk,
    CMD6,
    SAY_HEY_done,
    SAY_HEY_request,
    led0);
  input sysclk;
  input CMD6;
  input SAY_HEY_done;
  output SAY_HEY_request;
  output led0;

  wire CMD6;
  wire SAY_HEY_done;
  wire led0;
  wire sysclk;

  assign SAY_HEY_request = led0;
  PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod U0
       (.CMD6(CMD6),
        .SAY_HEY_done(SAY_HEY_done),
        .led0(led0),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "SAY_HEY_switchmod" *) 
module PCB_All_SRAM_SAY_HEY_switchmod_0_0_SAY_HEY_switchmod
   (led0,
    CMD6,
    SAY_HEY_done,
    sysclk);
  output led0;
  input CMD6;
  input SAY_HEY_done;
  input sysclk;

  wire CMD6;
  wire CMD6_prev;
  wire CMD6_prev_i_1_n_0;
  wire SAY_HEY_done;
  wire SAY_HEY_request_i_1_n_0;
  wire State_i_1_n_0;
  wire State_reg_n_0;
  wire led0;
  wire sysclk;

  LUT3 #(
    .INIT(8'hB8)) 
    CMD6_prev_i_1
       (.I0(CMD6),
        .I1(State_reg_n_0),
        .I2(CMD6_prev),
        .O(CMD6_prev_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CMD6_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(CMD6_prev_i_1_n_0),
        .Q(CMD6_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    SAY_HEY_request_i_1
       (.I0(CMD6),
        .I1(CMD6_prev),
        .I2(State_reg_n_0),
        .I3(SAY_HEY_done),
        .O(SAY_HEY_request_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SAY_HEY_request_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(SAY_HEY_request_i_1_n_0),
        .Q(led0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDFD0)) 
    State_i_1
       (.I0(CMD6),
        .I1(CMD6_prev),
        .I2(State_reg_n_0),
        .I3(SAY_HEY_done),
        .O(State_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    State_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(State_i_1_n_0),
        .Q(State_reg_n_0),
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

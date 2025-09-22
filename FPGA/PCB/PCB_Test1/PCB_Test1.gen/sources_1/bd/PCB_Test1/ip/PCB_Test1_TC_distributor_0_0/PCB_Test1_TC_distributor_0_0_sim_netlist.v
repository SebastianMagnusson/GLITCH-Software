// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Sep 21 13:41:55 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/GLITCH-Software/FPGA/PCB/PCB_Test1/PCB_Test1.gen/sources_1/bd/PCB_Test1/ip/PCB_Test1_TC_distributor_0_0/PCB_Test1_TC_distributor_0_0_sim_netlist.v
// Design      : PCB_Test1_TC_distributor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PCB_Test1_TC_distributor_0_0,TC_distributor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "TC_distributor,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module PCB_Test1_TC_distributor_0_0
   (clk,
    rst,
    TC,
    TC_DV,
    cmd0,
    cmd1,
    cmd2,
    cmd3);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]TC;
  input TC_DV;
  output cmd0;
  output cmd1;
  output cmd2;
  output cmd3;

  wire [7:0]TC;
  wire TC_DV;
  wire clk;
  wire cmd0;
  wire cmd1;
  wire cmd2;
  wire cmd3;
  wire rst;

  PCB_Test1_TC_distributor_0_0_TC_distributor U0
       (.TC(TC),
        .TC_DV(TC_DV),
        .clk(clk),
        .cmd0(cmd0),
        .cmd1(cmd1),
        .cmd2(cmd2),
        .cmd3(cmd3),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "TC_distributor" *) 
module PCB_Test1_TC_distributor_0_0_TC_distributor
   (cmd0,
    cmd3,
    cmd2,
    cmd1,
    TC_DV,
    rst,
    clk,
    TC);
  output cmd0;
  output cmd3;
  output cmd2;
  output cmd1;
  input TC_DV;
  input rst;
  input clk;
  input [7:0]TC;

  wire [7:0]TC;
  wire TC_DV;
  wire [7:0]TC_i;
  wire \TC_i[0]_i_1_n_0 ;
  wire \TC_i[1]_i_1_n_0 ;
  wire \TC_i[2]_i_1_n_0 ;
  wire \TC_i[3]_i_1_n_0 ;
  wire \TC_i[4]_i_1_n_0 ;
  wire \TC_i[5]_i_1_n_0 ;
  wire \TC_i[6]_i_1_n_0 ;
  wire \TC_i[7]_i_1_n_0 ;
  wire \TC_i_reg_n_0_[6] ;
  wire clk;
  wire cmd0;
  wire cmd0_i_1_n_0;
  wire cmd0_i_2_n_0;
  wire cmd0_i_3_n_0;
  wire cmd1;
  wire cmd1_i_1_n_0;
  wire cmd2;
  wire cmd2_i_1_n_0;
  wire cmd3;
  wire cmd3_i_1_n_0;
  wire rst;
  wire state;
  wire state_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[0]_i_1 
       (.I0(TC[0]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[1]_i_1 
       (.I0(TC[1]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[2]_i_1 
       (.I0(TC[2]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[3]_i_1 
       (.I0(TC[3]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[4]_i_1 
       (.I0(TC[4]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[5]_i_1 
       (.I0(TC[5]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[6]_i_1 
       (.I0(TC[6]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \TC_i[7]_i_1 
       (.I0(TC[7]),
        .I1(TC_DV),
        .I2(state),
        .O(\TC_i[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[0]_i_1_n_0 ),
        .Q(TC_i[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[1]_i_1_n_0 ),
        .Q(TC_i[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[2]_i_1_n_0 ),
        .Q(TC_i[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[3]_i_1_n_0 ),
        .Q(TC_i[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[4]_i_1_n_0 ),
        .Q(TC_i[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[5]_i_1_n_0 ),
        .Q(TC_i[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[6]_i_1_n_0 ),
        .Q(\TC_i_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \TC_i_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\TC_i[7]_i_1_n_0 ),
        .Q(TC_i[7]),
        .R(rst));
  LUT2 #(
    .INIT(4'hB)) 
    cmd0_i_1
       (.I0(rst),
        .I1(state),
        .O(cmd0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    cmd0_i_2
       (.I0(cmd0_i_3_n_0),
        .I1(TC_i[5]),
        .I2(\TC_i_reg_n_0_[6] ),
        .I3(cmd0),
        .O(cmd0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    cmd0_i_3
       (.I0(TC_i[2]),
        .I1(TC_i[3]),
        .I2(TC_i[4]),
        .I3(TC_i[7]),
        .I4(TC_i[1]),
        .I5(TC_i[0]),
        .O(cmd0_i_3_n_0));
  FDRE cmd0_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd0_i_2_n_0),
        .Q(cmd0),
        .R(cmd0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    cmd1_i_1
       (.I0(cmd0_i_3_n_0),
        .I1(TC_i[5]),
        .I2(\TC_i_reg_n_0_[6] ),
        .I3(cmd1),
        .O(cmd1_i_1_n_0));
  FDRE cmd1_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd1_i_1_n_0),
        .Q(cmd1),
        .R(cmd0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    cmd2_i_1
       (.I0(cmd0_i_3_n_0),
        .I1(\TC_i_reg_n_0_[6] ),
        .I2(TC_i[5]),
        .I3(cmd2),
        .O(cmd2_i_1_n_0));
  FDRE cmd2_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd2_i_1_n_0),
        .Q(cmd2),
        .R(cmd0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    cmd3_i_1
       (.I0(cmd0_i_3_n_0),
        .I1(TC_i[5]),
        .I2(\TC_i_reg_n_0_[6] ),
        .I3(cmd3),
        .O(cmd3_i_1_n_0));
  FDRE cmd3_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd3_i_1_n_0),
        .Q(cmd3),
        .R(cmd0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    state_i_1
       (.I0(TC_DV),
        .I1(state),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(rst));
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

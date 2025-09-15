// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Sep 13 10:02:20 2025
// Host        : LAPTOP-1SQM85NC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/GitHub/GLITCH-Software/FPGA/SRAM
//               TESTING/SRAM_Breadboard_Test6/SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_BF_Data_Collector_Dr_0_0/Func_test1_BF_Data_Collector_Dr_0_0_sim_netlist.v}
// Design      : Func_test1_BF_Data_Collector_Dr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Func_test1_BF_Data_Collector_Dr_0_0,BF_Data_Collector_Draft1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "BF_Data_Collector_Draft1,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Func_test1_BF_Data_Collector_Dr_0_0
   (sysclk,
    reset_n,
    data_ready,
    i_BF_data,
    o_BF_data,
    o_BF_drive,
    led1);
  input sysclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_mode = "slave reset_n" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input data_ready;
  input [46:0]i_BF_data;
  output [197:0]o_BF_data;
  output o_BF_drive;
  output led1;

  wire data_ready;
  wire [46:0]i_BF_data;
  wire led1;
  wire [196:94]\^o_BF_data ;
  wire o_BF_drive;
  wire reset_n;
  wire sysclk;

  assign o_BF_data[197] = \^o_BF_data [196];
  assign o_BF_data[196] = \^o_BF_data [196];
  assign o_BF_data[195] = \^o_BF_data [196];
  assign o_BF_data[194] = \^o_BF_data [196];
  assign o_BF_data[193] = \^o_BF_data [196];
  assign o_BF_data[192] = \^o_BF_data [196];
  assign o_BF_data[191] = \^o_BF_data [196];
  assign o_BF_data[190] = \^o_BF_data [196];
  assign o_BF_data[189] = \^o_BF_data [196];
  assign o_BF_data[188] = \^o_BF_data [196];
  assign o_BF_data[187:141] = \^o_BF_data [140:94];
  assign o_BF_data[140:94] = \^o_BF_data [140:94];
  assign o_BF_data[93:47] = \^o_BF_data [140:94];
  assign o_BF_data[46:0] = \^o_BF_data [140:94];
  Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1 U0
       (.data_ready(data_ready),
        .i_BF_data(i_BF_data),
        .led1(led1),
        .o_BF_data({\^o_BF_data [196],\^o_BF_data [140:94]}),
        .o_BF_drive(o_BF_drive),
        .reset_n(reset_n),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "BF_Data_Collector_Draft1" *) 
module Func_test1_BF_Data_Collector_Dr_0_0_BF_Data_Collector_Draft1
   (o_BF_data,
    o_BF_drive,
    led1,
    data_ready,
    sysclk,
    i_BF_data,
    reset_n);
  output [47:0]o_BF_data;
  output o_BF_drive;
  output led1;
  input data_ready;
  input sysclk;
  input [46:0]i_BF_data;
  input reset_n;

  wire \BF_data_buf[197]_i_1_n_0 ;
  wire data_ready;
  wire data_ready_prev;
  wire data_ready_prev_i_1_n_0;
  wire [46:0]i_BF_data;
  wire led1;
  wire led1_i_1_n_0;
  wire [47:0]o_BF_data;
  wire o_BF_drive;
  wire p_0_in;
  wire reset_n;
  wire state;
  wire state_i_1_n_0;
  wire sysclk;

  LUT3 #(
    .INIT(8'h04)) 
    \BF_data_buf[197]_i_1 
       (.I0(data_ready_prev),
        .I1(data_ready),
        .I2(state),
        .O(\BF_data_buf[197]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \BF_data_buf[197]_i_2 
       (.I0(reset_n),
        .O(p_0_in));
  FDCE \BF_data_buf_reg[141] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[0]),
        .Q(o_BF_data[0]));
  FDCE \BF_data_buf_reg[142] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[1]),
        .Q(o_BF_data[1]));
  FDCE \BF_data_buf_reg[143] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[2]),
        .Q(o_BF_data[2]));
  FDCE \BF_data_buf_reg[144] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[3]),
        .Q(o_BF_data[3]));
  FDCE \BF_data_buf_reg[145] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[4]),
        .Q(o_BF_data[4]));
  FDCE \BF_data_buf_reg[146] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[5]),
        .Q(o_BF_data[5]));
  FDCE \BF_data_buf_reg[147] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[6]),
        .Q(o_BF_data[6]));
  FDCE \BF_data_buf_reg[148] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[7]),
        .Q(o_BF_data[7]));
  FDCE \BF_data_buf_reg[149] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[8]),
        .Q(o_BF_data[8]));
  FDCE \BF_data_buf_reg[150] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[9]),
        .Q(o_BF_data[9]));
  FDCE \BF_data_buf_reg[151] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[10]),
        .Q(o_BF_data[10]));
  FDCE \BF_data_buf_reg[152] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[11]),
        .Q(o_BF_data[11]));
  FDCE \BF_data_buf_reg[153] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[12]),
        .Q(o_BF_data[12]));
  FDCE \BF_data_buf_reg[154] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[13]),
        .Q(o_BF_data[13]));
  FDCE \BF_data_buf_reg[155] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[14]),
        .Q(o_BF_data[14]));
  FDCE \BF_data_buf_reg[156] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[15]),
        .Q(o_BF_data[15]));
  FDCE \BF_data_buf_reg[157] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[16]),
        .Q(o_BF_data[16]));
  FDCE \BF_data_buf_reg[158] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[17]),
        .Q(o_BF_data[17]));
  FDCE \BF_data_buf_reg[159] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[18]),
        .Q(o_BF_data[18]));
  FDCE \BF_data_buf_reg[160] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[19]),
        .Q(o_BF_data[19]));
  FDCE \BF_data_buf_reg[161] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[20]),
        .Q(o_BF_data[20]));
  FDCE \BF_data_buf_reg[162] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[21]),
        .Q(o_BF_data[21]));
  FDCE \BF_data_buf_reg[163] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[22]),
        .Q(o_BF_data[22]));
  FDCE \BF_data_buf_reg[164] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[23]),
        .Q(o_BF_data[23]));
  FDCE \BF_data_buf_reg[165] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[24]),
        .Q(o_BF_data[24]));
  FDCE \BF_data_buf_reg[166] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[25]),
        .Q(o_BF_data[25]));
  FDCE \BF_data_buf_reg[167] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[26]),
        .Q(o_BF_data[26]));
  FDCE \BF_data_buf_reg[168] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[27]),
        .Q(o_BF_data[27]));
  FDCE \BF_data_buf_reg[169] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[28]),
        .Q(o_BF_data[28]));
  FDCE \BF_data_buf_reg[170] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[29]),
        .Q(o_BF_data[29]));
  FDCE \BF_data_buf_reg[171] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[30]),
        .Q(o_BF_data[30]));
  FDCE \BF_data_buf_reg[172] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[31]),
        .Q(o_BF_data[31]));
  FDCE \BF_data_buf_reg[173] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[32]),
        .Q(o_BF_data[32]));
  FDCE \BF_data_buf_reg[174] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[33]),
        .Q(o_BF_data[33]));
  FDCE \BF_data_buf_reg[175] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[34]),
        .Q(o_BF_data[34]));
  FDCE \BF_data_buf_reg[176] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[35]),
        .Q(o_BF_data[35]));
  FDCE \BF_data_buf_reg[177] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[36]),
        .Q(o_BF_data[36]));
  FDCE \BF_data_buf_reg[178] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[37]),
        .Q(o_BF_data[37]));
  FDCE \BF_data_buf_reg[179] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[38]),
        .Q(o_BF_data[38]));
  FDCE \BF_data_buf_reg[180] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[39]),
        .Q(o_BF_data[39]));
  FDCE \BF_data_buf_reg[181] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[40]),
        .Q(o_BF_data[40]));
  FDCE \BF_data_buf_reg[182] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[41]),
        .Q(o_BF_data[41]));
  FDCE \BF_data_buf_reg[183] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[42]),
        .Q(o_BF_data[42]));
  FDCE \BF_data_buf_reg[184] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[43]),
        .Q(o_BF_data[43]));
  FDCE \BF_data_buf_reg[185] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[44]),
        .Q(o_BF_data[44]));
  FDCE \BF_data_buf_reg[186] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[45]),
        .Q(o_BF_data[45]));
  FDCE \BF_data_buf_reg[187] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(i_BF_data[46]),
        .Q(o_BF_data[46]));
  FDCE \BF_data_buf_reg[197] 
       (.C(sysclk),
        .CE(\BF_data_buf[197]_i_1_n_0 ),
        .CLR(p_0_in),
        .D(1'b1),
        .Q(o_BF_data[47]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ready_prev_i_1
       (.I0(data_ready_prev),
        .I1(state),
        .I2(data_ready),
        .O(data_ready_prev_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_ready_prev_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(data_ready_prev_i_1_n_0),
        .Q(data_ready_prev));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    led1_i_1
       (.I0(state),
        .I1(led1),
        .O(led1_i_1_n_0));
  FDCE led1_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(led1_i_1_n_0),
        .Q(led1));
  FDCE o_BF_drive_reg
       (.C(sysclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(state),
        .Q(o_BF_drive));
  LUT4 #(
    .INIT(16'h0F40)) 
    state_i_1
       (.I0(data_ready_prev),
        .I1(data_ready),
        .I2(reset_n),
        .I3(state),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(sysclk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
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

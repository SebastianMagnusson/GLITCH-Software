
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.2/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/utils_1/imports/synth_1/I2Cmod.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2^
\C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/utils_1/imports/synth_1/I2Cmod.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
k
Command: %s
53*	vivadotcl2:
8synth_design -top I2C_Test_wrapper -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
30976Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1127.094 ; gain = 466.457
h px� 
�
synthesizing module '%s'638*oasys2
I2C_Test_wrapper2h
dC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/sources_1/imports/hdl/I2C_Test_wrapper.vhd2
288@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

I2C_Test2c
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
152

I2C_Test_i2

I2C_Test2h
dC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/sources_1/imports/hdl/I2C_Test_wrapper.vhd2
568@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

I2C_Test2e
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
358@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
I2C_Test_I2Cmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_I2Cmod_0_0_stub.vhdl2
62

I2Cmod_02
I2C_Test_I2Cmod_0_02e
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
1028@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
I2C_Test_I2Cmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_I2Cmod_0_0_stub.vhdl2
358@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
I2C_Test_Read_Sensorsmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_Read_Sensorsmod_0_0_stub.vhdl2
62
Read_Sensorsmod_02
I2C_Test_Read_Sensorsmod_0_02e
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
1208@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
I2C_Test_Read_Sensorsmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_Read_Sensorsmod_0_0_stub.vhdl2
328@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
I2C_Test_Switchmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_Switchmod_0_0_stub.vhdl2
62
Switchmod_02
I2C_Test_Switchmod_0_02e
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
1358@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
I2C_Test_Switchmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_Switchmod_0_0_stub.vhdl2
248@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
I2C_Test_UART_TXmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_UART_TXmod_0_0_stub.vhdl2
62
UART_TXmod_02
I2C_Test_UART_TXmod_0_02e
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
1428@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
I2C_Test_UART_TXmod_0_02�
�C:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/.Xil/Vivado-40276-LAPTOP-1SQM85NC/realtime/I2C_Test_UART_TXmod_0_0_stub.vhdl2
268@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

I2C_Test2
02
12e
ac:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/synth/I2C_Test.vhd2
358@Z8-256h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	SDA_iobuf2
IOBUF2h
dC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/sources_1/imports/hdl/I2C_Test_wrapper.vhd2
728@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	SCL_iobuf2
IOBUF2h
dC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/sources_1/imports/hdl/I2C_Test_wrapper.vhd2
818@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
I2C_Test_wrapper2
02
12h
dC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/sources_1/imports/hdl/I2C_Test_wrapper.vhd2
288@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1231.812 ; gain = 571.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1231.812 ; gain = 571.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1231.812 ; gain = 571.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1231.8122
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
2Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_I2Cmod_0_0/I2C_Test_I2Cmod_0_0/I2C_Test_I2Cmod_0_0_in_context.xdc2
I2C_Test_i/I2Cmod_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_I2Cmod_0_0/I2C_Test_I2Cmod_0_0/I2C_Test_I2Cmod_0_0_in_context.xdc2
I2C_Test_i/I2Cmod_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_UART_TXmod_0_0/I2C_Test_UART_TXmod_0_0/I2C_Test_UART_TXmod_0_0_in_context.xdc2
I2C_Test_i/UART_TXmod_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_UART_TXmod_0_0/I2C_Test_UART_TXmod_0_0/I2C_Test_UART_TXmod_0_0_in_context.xdc2
I2C_Test_i/UART_TXmod_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_Read_Sensorsmod_0_0/I2C_Test_Read_Sensorsmod_0_0/I2C_Test_Read_Sensorsmod_0_0_in_context.xdc2 
I2C_Test_i/Read_Sensorsmod_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_Read_Sensorsmod_0_0/I2C_Test_Read_Sensorsmod_0_0/I2C_Test_Read_Sensorsmod_0_0_in_context.xdc2 
I2C_Test_i/Read_Sensorsmod_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_Switchmod_0_0/I2C_Test_Switchmod_0_0/I2C_Test_Switchmod_0_0_in_context.xdc2
I2C_Test_i/Switchmod_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.gen/sources_1/bd/I2C_Test/ip/I2C_Test_Switchmod_0_0/I2C_Test_Switchmod_0_0/I2C_Test_Switchmod_0_0_in_context.xdc2
I2C_Test_i/Switchmod_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2[
WC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
uart_txd_in2[
WC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/constrs_1/new/constraints.xdc2
898@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2[
WC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2Y
WC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/constrs_1/new/constraints.xdc2$
".Xil/I2C_Test_wrapper_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Y
WC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.srcs/constrs_1/new/constraints.xdc2$
".Xil/I2C_Test_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2T
PC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2T
PC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1243.3202
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
W  A total of 2 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1243.3202
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1243.320 ; gain = 582.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1243.320 ; gain = 582.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1243.320 ; gain = 582.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1243.320 ; gain = 582.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1243.320 ; gain = 582.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1403.137 ; gain = 742.500
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1403.137 ; gain = 742.500
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1413.281 ; gain = 752.645
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
L
%s
*synth24
2+------+-----------------------------+----------+
h p
x
� 
L
%s
*synth24
2|      |BlackBox name                |Instances |
h p
x
� 
L
%s
*synth24
2+------+-----------------------------+----------+
h p
x
� 
L
%s
*synth24
2|1     |I2C_Test_I2Cmod_0_0          |         1|
h p
x
� 
L
%s
*synth24
2|2     |I2C_Test_Read_Sensorsmod_0_0 |         1|
h p
x
� 
L
%s
*synth24
2|3     |I2C_Test_Switchmod_0_0       |         1|
h p
x
� 
L
%s
*synth24
2|4     |I2C_Test_UART_TXmod_0_0      |         1|
h p
x
� 
L
%s
*synth24
2+------+-----------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
M
%s*synth25
3+------+----------------------------------+------+
h px� 
M
%s*synth25
3|      |Cell                              |Count |
h px� 
M
%s*synth25
3+------+----------------------------------+------+
h px� 
M
%s*synth25
3|1     |I2C_Test_I2Cmod_0_0_bbox          |     1|
h px� 
M
%s*synth25
3|2     |I2C_Test_Read_Sensorsmod_0_0_bbox |     1|
h px� 
M
%s*synth25
3|3     |I2C_Test_Switchmod_0_0_bbox       |     1|
h px� 
M
%s*synth25
3|4     |I2C_Test_UART_TXmod_0_0_bbox      |     1|
h px� 
M
%s*synth25
3|5     |IBUF                              |     2|
h px� 
M
%s*synth25
3|6     |IOBUF                             |     2|
h px� 
M
%s*synth25
3|7     |OBUF                              |     3|
h px� 
M
%s*synth25
3+------+----------------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1629.543 ; gain = 968.906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 1629.543 ; gain = 957.398
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1629.543 ; gain = 968.906
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1629.5432
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
2Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1642.3712
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
W  A total of 2 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 2 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

9ab725c2Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:262

00:00:322

1642.3712

1175.629Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1642.3712
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2X
VC:/GitHub/GLITCH-Software/FPGA/I2C/I2C_Test/I2C_Test.runs/synth_1/I2C_Test_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file I2C_Test_wrapper_utilization_synth.rpt -pb I2C_Test_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jun 12 18:32:35 2025Z17-206h px� 


End Record

�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:042

00:00:062	
628.8982	
199.004Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental X:/311proj/ec311project/ec311project.srcs/utils_1/imports/synth_1/ball_collision.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2V
TX:/311proj/ec311project/ec311project.srcs/utils_1/imports/synth_1/ball_collision.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top vga_top -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 
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
28680Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1499.523 ; gain = 449.242
h px� 
�
;root scope declaration is not allowed in Verilog 95/2K mode7406*oasys2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/params.vh2
48@Z8-11145h px� 
�
;root scope declaration is not allowed in Verilog 95/2K mode7406*oasys2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/params.vh2
58@Z8-11145h px� 
�
;root scope declaration is not allowed in Verilog 95/2K mode7406*oasys2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/params.vh2
68@Z8-11145h px� 
�
;root scope declaration is not allowed in Verilog 95/2K mode7406*oasys2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/params.vh2
78@Z8-11145h px� 
�
synthesizing module '%s'%s4497*oasys2	
vga_top2
 2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_top.v2
248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_divider2
 2I
EX:/311proj/ec311project/ec311project.srcs/sources_1/new/clk_divider.v2
228@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_divider2
 2
02
12I
EX:/311proj/ec311project/ec311project.srcs/sources_1/new/clk_divider.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
game_clock_divider2
 2P
LX:/311proj/ec311project/ec311project.srcs/sources_1/new/game_clock_divider.v2
218@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
game_clock_divider2
 2
02
12P
LX:/311proj/ec311project/ec311project.srcs/sources_1/new/game_clock_divider.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ball_collision2
 2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ball_collision2
 2
02
12L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
48@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ball2
 2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
38@Z8-6157h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ball_x2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
428@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ball_y2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
438@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ball_x2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
488@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ball_y2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
498@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
score_right2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
508@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ball_x2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
548@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ball_y2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
558@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

score_left2B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
568@Z8-6090h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ball2
 2
02
12B
>X:/311proj/ec311project/ec311project.srcs/sources_1/new/ball.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
score2
 2C
?X:/311proj/ec311project/ec311project.srcs/sources_1/new/score.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
score2
 2
02
12C
?X:/311proj/ec311project/ec311project.srcs/sources_1/new/score.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
paddle2
 2D
@X:/311proj/ec311project/ec311project.srcs/sources_1/new/paddle.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
paddle2
 2
02
12D
@X:/311proj/ec311project/ec311project.srcs/sources_1/new/paddle.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
vga_controller2
 2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	rectangle2
 2G
CX:/311proj/ec311project/ec311project.srcs/sources_1/new/rectangle.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	rectangle2
 2
02
12G
CX:/311proj/ec311project/ec311project.srcs/sources_1/new/rectangle.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
x_draw2
102
	rectangle2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
1148@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
y_draw2
102
	rectangle2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
1148@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
x_draw2
102
	rectangle2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
1158@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
y_draw2
102
	rectangle2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
1158@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
x_draw2
102
	rectangle2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
1168@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
y_draw2
102
	rectangle2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
1168@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_controller2
 2
02
12L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_controller.v2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
vga_top2
 2
02
12E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_top.v2
248@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
distBallPaddle1_y_reg2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
488@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
distSignBit1_reg2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
498@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
distBallPaddle2_y_reg2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
548@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
distSignBit2_reg2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
distBallPaddle1_x_reg2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
618@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
distBallPaddle2_x_reg2L
HX:/311proj/ec311project/ec311project.srcs/sources_1/new/ball_collision.v2
678@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	vga_g_reg2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_top.v2
978@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
	vga_b_reg2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_top.v2
988@Z8-6014h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[3]2
1Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[2]2
1Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[1]2
1Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[0]2
1Z8-3917h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1613.527 ; gain = 563.246
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1613.527 ; gain = 563.246
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1613.527 ; gain = 563.246
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

00:00:002
00:00:00.0082

1613.5272
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2L
HX:/311proj/ec311project/ec311project.srcs/constrs_1/Nexys4DDR_Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2L
HX:/311proj/ec311project/ec311project.srcs/constrs_1/Nexys4DDR_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2J
HX:/311proj/ec311project/ec311project.srcs/constrs_1/Nexys4DDR_Master.xdc2
.Xil/vga_top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1713.4412
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0142

1713.4412
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
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:17 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:17 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:17 . Memory (MB): peak = 1713.441 ; gain = 663.160
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2
gameOver_reg2E
AX:/311proj/ec311project/ec311project.srcs/sources_1/new/vga_top.v2
468@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:21 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   33 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 16    
h p
x
� 
F
%s
*synth2.
,	   3 Input   10 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    6 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               33 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 11    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   8 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 17    
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 11    
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
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
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
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[3]2
1Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[2]2
1Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[1]2
1Z8-3917h px� 
m
+design %s has port %s driven by constant %s3447*oasys2	
vga_top2
Anode_Off[0]2
1Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:27 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:31 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
}Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:33 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
|Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:33 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
vFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     3|
h px� 
2
%s*synth2
|2     |CARRY4 |    73|
h px� 
2
%s*synth2
|3     |LUT1   |    13|
h px� 
2
%s*synth2
|4     |LUT2   |   103|
h px� 
2
%s*synth2
|5     |LUT3   |    81|
h px� 
2
%s*synth2
|6     |LUT4   |    88|
h px� 
2
%s*synth2
|7     |LUT5   |   115|
h px� 
2
%s*synth2
|8     |LUT6   |   132|
h px� 
2
%s*synth2
|9     |FDCE   |    34|
h px� 
2
%s*synth2
|10    |FDRE   |    95|
h px� 
2
%s*synth2
|11    |FDSE   |    14|
h px� 
2
%s*synth2
|12    |LDC    |     1|
h px� 
2
%s*synth2
|13    |IBUF   |     6|
h px� 
2
%s*synth2
|14    |OBUF   |    29|
h px� 
2
%s*synth2
+------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:33 . Memory (MB): peak = 1713.441 ; gain = 563.246
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:36 . Memory (MB): peak = 1713.441 ; gain = 663.160
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

00:00:002
00:00:00.0102

1713.4412
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
74Z29-17h px� 
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

1713.4412
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2H
F  A total of 1 instances were transformed.
  LDC => LDCE: 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

3a7c867fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402
362
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

00:00:242

00:00:412

1713.4412

1080.352Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0292

1713.4412
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2?
=X:/311proj/ec311project/ec311project.runs/synth_1/vga_top.dcpZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:002

00:00:112

1713.4412
0.000Z17-268h px� 
�
Executing command : %s
56330*	planAhead2Y
Wreport_utilization -file vga_top_utilization_synth.rpt -pb vga_top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Dec  7 20:05:57 2024Z17-206h px� 


End Record
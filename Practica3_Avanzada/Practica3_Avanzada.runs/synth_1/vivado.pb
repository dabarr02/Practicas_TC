

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:072default:default2
450.1642default:default2
163.4182default:defaultZ17-268h px 
Ñ
Command: %s
1870*	planAhead2
read_checkpoint -auto_incremental -incremental C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px 
Ï
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2k
WC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcpg236-12default:defaultZ4-113h px 
:
Starting synth_design
149*	vivadotclZ4-321h px 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px 

0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px 
¢
øFlow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px 

HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px 
_
#Helper process launched with PID %s4824*oasys2
32562default:defaultZ8-7075h px 
¦
%s*synth2
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1267.195 ; gain = 411.191
2default:defaulth px 
Ô
synthesizing module '%s'638*oasys2
top2default:default2c
MC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/new/top.vhd2default:default2
422default:default8@Z8-638h px 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 
a
%s
*synth2I
5	Parameter num_entradas bound to: 4 - type: integer 
2default:defaulth p
x
 

Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2.
red_iterativa_comparadores2default:default2
lC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/red_iterativa_comparadores.vhd2default:default2
352default:default2
UUT_i2default:default2.
red_iterativa_comparadores2default:default2c
MC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/new/top.vhd2default:default2
582default:default8@Z8-3491h px 

synthesizing module '%s'638*oasys2.
red_iterativa_comparadores2default:default2
lC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/red_iterativa_comparadores.vhd2default:default2
472default:default8@Z8-638h px 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 
a
%s
*synth2I
5	Parameter num_entradas bound to: 4 - type: integer 
2default:defaulth p
x
 
V
%s
*synth2>
*	Parameter n bound to: 4 - type: integer 
2default:defaulth p
x
 
î
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

celda_iter2default:default2p
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/celda_iter.vhd2default:default2
342default:default2
u2default:default2

celda_iter2default:default2
lC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/red_iterativa_comparadores.vhd2default:default2
672default:default8@Z8-3491h px 
ê
synthesizing module '%s'638*oasys2

celda_iter2default:default2r
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/celda_iter.vhd2default:default2
442default:default8@Z8-638h px 
V
%s
*synth2>
*	Parameter n bound to: 4 - type: integer 
2default:defaulth p
x
 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 
Þ
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

comparador2default:default2p
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/comparador.vhd2default:default2
342default:default2
uc2default:default2

comparador2default:default2r
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/celda_iter.vhd2default:default2
552default:default8@Z8-3491h px 
ê
synthesizing module '%s'638*oasys2

comparador2default:default2r
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/comparador.vhd2default:default2
422default:default8@Z8-638h px 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 
¥
%done synthesizing module '%s' (%s#%s)256*oasys2

comparador2default:default2
02default:default2
12default:default2r
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/comparador.vhd2default:default2
422default:default8@Z8-256h px 
¥
%done synthesizing module '%s' (%s#%s)256*oasys2

celda_iter2default:default2
02default:default2
12default:default2r
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/celda_iter.vhd2default:default2
442default:default8@Z8-256h px 
V
%s
*synth2>
*	Parameter n bound to: 4 - type: integer 
2default:defaulth p
x
 
î
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

celda_iter2default:default2p
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/celda_iter.vhd2default:default2
342default:default2
u2default:default2

celda_iter2default:default2
lC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/red_iterativa_comparadores.vhd2default:default2
672default:default8@Z8-3491h px 
V
%s
*synth2>
*	Parameter n bound to: 4 - type: integer 
2default:defaulth p
x
 
î
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

celda_iter2default:default2p
\C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/celda_iter.vhd2default:default2
342default:default2
u2default:default2

celda_iter2default:default2
lC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/red_iterativa_comparadores.vhd2default:default2
672default:default8@Z8-3491h px 
Æ
%done synthesizing module '%s' (%s#%s)256*oasys2.
red_iterativa_comparadores2default:default2
02default:default2
12default:default2
lC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/imports/new/red_iterativa_comparadores.vhd2default:default2
472default:default8@Z8-256h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
02default:default2
12default:default2c
MC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/new/top.vhd2default:default2
422default:default8@Z8-256h px 
¦
%s*synth2
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1357.949 ; gain = 501.945
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
²
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1357.949 ; gain = 501.945
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1357.949 ; gain = 501.945
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1357.9492default:default2
0.0002default:defaultZ17-268h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
>

Processing XDC Constraints
244*projectZ1-262h px 
=
Initializing timing engine
348*projectZ1-569h px 
á
Parsing XDC File [%s]
179*designutils2
C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/constrs_1/imports/Ficheros accesorios práctica 3 avanzada-20241104/pines_top.xdc2default:default8Z20-179h px 
ê
Finished Parsing XDC File [%s]
178*designutils2
C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/constrs_1/imports/Ficheros accesorios práctica 3 avanzada-20241104/pines_top.xdc2default:default8Z20-178h px 
Ç
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2
C:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/constrs_1/imports/Ficheros accesorios práctica 3 avanzada-20241104/pines_top.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1418.9652default:default2
0.0002default:defaultZ17-268h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1418.9652default:default2
0.0002default:defaultZ17-268h px 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px 
¢
øFlow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¬
%s*synth2
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
»
%s*synth2¢
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¿
%s*synth2¦
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
ß
!inferring latch for variable '%s'327*oasys2
P_reg2default:default2c
MC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.srcs/sources_1/new/top.vhd2default:default2
682default:default8@Z8-327h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px 

+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
G[0]2default:default2
12default:defaultZ8-3917h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
P_reg[1]2default:default2
top2default:defaultZ8-3332h px 

ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
P_reg[0]2default:default2
top2default:defaultZ8-3332h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¼
%s*synth2£
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
·
%s*synth2
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
ª
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
©
%s*synth2
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
£
%s*synth2
vFinished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
´
%s*synth2
Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
±
%s*synth2
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
²
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¯
%s*synth2
Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px 
B
%s*synth2*
+------+-----+------+
2default:defaulth px 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px 
B
%s*synth2*
+------+-----+------+
2default:defaulth px 
B
%s*synth2*
|1     |LUT2 |     1|
2default:defaulth px 
B
%s*synth2*
|2     |LUT3 |     2|
2default:defaulth px 
B
%s*synth2*
|3     |LUT4 |     2|
2default:defaulth px 
B
%s*synth2*
|4     |LUT5 |    10|
2default:defaulth px 
B
%s*synth2*
|5     |LUT6 |     6|
2default:defaulth px 
B
%s*synth2*
|6     |IBUF |    16|
2default:defaulth px 
B
%s*synth2*
|7     |OBUF |     9|
2default:defaulth px 
B
%s*synth2*
+------+-----+------+
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
2default:defaulth p
x
 
¬
%s
*synth2
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:30 . Memory (MB): peak = 1418.965 ; gain = 501.945
2default:defaulth p
x
 
®
%s
*synth2
Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:32 . Memory (MB): peak = 1418.965 ; gain = 562.961
2default:defaulth p
x
 
B
 Translating synthesized netlist
350*projectZ1-571h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1418.9652default:default2
0.0002default:defaultZ17-268h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1418.9652default:default2
0.0002default:defaultZ17-268h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
d801d26e2default:defaultZ4-1430h px 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px 
Æ
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:322default:default2
00:00:442default:default2
1418.9652default:default2
944.8952default:defaultZ17-268h px 
À
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2[
GC:/Vivado_Pr/Practica3_Avanzada/Practica3_Avanzada.runs/synth_1/top.dcp2default:defaultZ17-1381h px 

%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px 

Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov  7 17:31:47 20242default:defaultZ17-206h px 


End Record
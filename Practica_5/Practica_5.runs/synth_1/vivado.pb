

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:062default:default2
450.1912default:default2
164.8402default:defaultZ17-268h px 
Ò
Command: %s
1870*	planAhead2
read_checkpoint -auto_incremental -incremental C:/Vivado_Pr/Practica_5/Practica_5.srcs/utils_1/imports/synth_1/sintesis_tragaperras.dcp2default:defaultZ12-2866h px 
Ð
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2l
XC:/Vivado_Pr/Practica_5/Practica_5.srcs/utils_1/imports/synth_1/sintesis_tragaperras.dcp2default:defaultZ12-5825h px 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px 

Command: %s
53*	vivadotcl2P
<synth_design -top sintesis_tragaperras -part xc7a35tcpg236-12default:defaultZ4-113h px 
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
59922default:defaultZ8-7075h px 
¦
%s*synth2
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1266.242 ; gain = 411.461
2default:defaulth px 

synthesizing module '%s'638*oasys2(
sintesis_tragaperras2default:default2
xC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/sintesis_tragaperras.vhd2default:default2
182default:default8@Z8-638h px 
¡
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/debouncer.vhd2default:default2
52default:default2-
debouncerInsts_displayce12default:default2
	debouncer2default:default2
xC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/sintesis_tragaperras.vhd2default:default2
652default:default8@Z8-3491h px 
û
synthesizing module '%s'638*oasys2
	debouncer2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/debouncer.vhd2default:default2
162default:default8@Z8-638h px 
¶
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2default:default2
02default:default2
12default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/debouncer.vhd2default:default2
162default:default8@Z8-256h px 
¡
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	debouncer2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/debouncer.vhd2default:default2
52default:default2-
debouncerInsts_displayce22default:default2
	debouncer2default:default2
xC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/sintesis_tragaperras.vhd2default:default2
662default:default8@Z8-3491h px 
þ
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
tragaperras2default:default2Y
EC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/tragaperras.vhd2default:default2
342default:default2.
tragaperrasInsts_displayce2default:default2
tragaperras2default:default2
xC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/sintesis_tragaperras.vhd2default:default2
672default:default8@Z8-3491h px 
Ô
synthesizing module '%s'638*oasys2
tragaperras2default:default2[
EC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/tragaperras.vhd2default:default2
462default:default8@Z8-638h px 
²
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
control2default:default2U
AC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/control.vhd2default:default2
342default:default2"
ControllerInst2default:default2
control2default:default2[
EC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/tragaperras.vhd2default:default2
722default:default8@Z8-3491h px 
Ì
synthesizing module '%s'638*oasys2
control2default:default2W
AC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/control.vhd2default:default2
442default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
control2default:default2
02default:default2
12default:default2W
AC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/control.vhd2default:default2
442default:default8@Z8-256h px 
²
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	data_path2default:default2W
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
342default:default2
DataPath2default:default2
	data_path2default:default2[
EC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/tragaperras.vhd2default:default2
822default:default8@Z8-3491h px 
Ð
synthesizing module '%s'638*oasys2
	data_path2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
452default:default8@Z8-638h px 
µ
default block is never used226*oasys2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1452default:default8@Z8-226h px 
³
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	RegAtraer2default:default2W
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegAtraer.vhd2default:default2
342default:default2

AtraerInst2default:default2
	RegAtraer2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1532default:default8@Z8-3491h px 
Ð
synthesizing module '%s'638*oasys2
	RegAtraer2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegAtraer.vhd2default:default2
412default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
	RegAtraer2default:default2
02default:default2
12default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegAtraer.vhd2default:default2
412default:default8@Z8-256h px 
³
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	RegPerder2default:default2W
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegPerder.vhd2default:default2
342default:default2

PerderInst2default:default2
	RegPerder2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1602default:default8@Z8-3491h px 
Ð
synthesizing module '%s'638*oasys2
	RegPerder2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegPerder.vhd2default:default2
422default:default8@Z8-638h px 
±
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	biestable2default:default2V
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/biestabl.vhd2default:default2
342default:default2

biestable12default:default2
	biestable2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegPerder.vhd2default:default2
552default:default8@Z8-3491h px 
Ï
synthesizing module '%s'638*oasys2
	biestable2default:default2X
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/biestabl.vhd2default:default2
412default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
	biestable2default:default2
02default:default2
12default:default2X
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/biestabl.vhd2default:default2
412default:default8@Z8-256h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
	RegPerder2default:default2
02default:default2
12default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegPerder.vhd2default:default2
422default:default8@Z8-256h px 
©
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegWin2default:default2T
@C:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegWin.vhd2default:default2
342default:default2
	GanarInst2default:default2
RegWin2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1672default:default8@Z8-3491h px 
Ê
synthesizing module '%s'638*oasys2
RegWin2default:default2V
@C:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegWin.vhd2default:default2
412default:default8@Z8-638h px 
®
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	biestable2default:default2V
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/biestabl.vhd2default:default2
342default:default2

biestable12default:default2
	biestable2default:default2V
@C:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegWin.vhd2default:default2
532default:default8@Z8-3491h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
RegWin2default:default2
02default:default2
12default:default2V
@C:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/RegWin.vhd2default:default2
412default:default8@Z8-256h px 
º
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

divisor2HZ2default:default2X
DC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor2HZ.vhd2default:default2
172default:default2"
Divisor2HZInst2default:default2

divisor2HZ2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1742default:default8@Z8-3491h px 
Ò
synthesizing module '%s'638*oasys2

divisor2HZ2default:default2Z
DC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor2HZ.vhd2default:default2
252default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2

divisor2HZ2default:default2
02default:default2
12default:default2Z
DC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor2HZ.vhd2default:default2
252default:default8@Z8-256h px 
Â
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
divisor250HZ2default:default2Z
FC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor250HZ.vhd2default:default2
172default:default2$
Divisor250HZInst2default:default2 
divisor250HZ2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1812default:default8@Z8-3491h px 
Ö
synthesizing module '%s'638*oasys2 
divisor250HZ2default:default2\
FC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor250HZ.vhd2default:default2
252default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2 
divisor250HZ2default:default2
02default:default2
12default:default2\
FC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor250HZ.vhd2default:default2
252default:default8@Z8-256h px 
Â
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
divisor100HZ2default:default2Z
FC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor100HZ.vhd2default:default2
172default:default2$
Divisor100HZInst2default:default2 
divisor100HZ2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1882default:default8@Z8-3491h px 
Ö
synthesizing module '%s'638*oasys2 
divisor100HZ2default:default2\
FC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor100HZ.vhd2default:default2
252default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2 
divisor100HZ2default:default2
02default:default2
12default:default2\
FC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/divisor100HZ.vhd2default:default2
252default:default8@Z8-256h px 
·
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
contador2default:default2V
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/contador.vhd2default:default2
342default:default2%
Contador5Segundos2default:default2
Contador2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
1942default:default8@Z8-3491h px 
Î
synthesizing module '%s'638*oasys2
contador2default:default2X
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/contador.vhd2default:default2
452default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
contador2default:default2
02default:default2
12default:default2X
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/contador.vhd2default:default2
452default:default8@Z8-256h px 
³
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
contador2default:default2V
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/contador.vhd2default:default2
342default:default2!
Contador100HZ2default:default2
Contador2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
2032default:default8@Z8-3491h px 
³
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
contador2default:default2V
BC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/contador.vhd2default:default2
342default:default2!
Contador250HZ2default:default2
Contador2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
2122default:default8@Z8-3491h px 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 
À
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

comparador2default:default2`
LC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/new/comparador.vhd2default:default2
342default:default2 
Comparador5s2default:default2

comparador2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
2212default:default8@Z8-3491h px 
Ú
synthesizing module '%s'638*oasys2

comparador2default:default2b
LC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/new/comparador.vhd2default:default2
422default:default8@Z8-638h px 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 

%done synthesizing module '%s' (%s#%s)256*oasys2

comparador2default:default2
02default:default2
12default:default2b
LC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/new/comparador.vhd2default:default2
422default:default8@Z8-256h px 
]
%s
*synth2E
1	Parameter num_bits bound to: 4 - type: integer 
2default:defaulth p
x
 
Ã
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

comparador2default:default2`
LC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/new/comparador.vhd2default:default2
342default:default2#
ComparadorGanar2default:default2

comparador2default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
2272default:default8@Z8-3491h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
	data_path2default:default2
02default:default2
12default:default2Y
CC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/data_path.vhd2default:default2
452default:default8@Z8-256h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
tragaperras2default:default2
02default:default2
12default:default2[
EC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/new/tragaperras.vhd2default:default2
462default:default8@Z8-256h px 

Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
displays2default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
72default:default2!
displays_inst2default:default2
displays2default:default2
xC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/sintesis_tragaperras.vhd2default:default2
702default:default8@Z8-3491h px 
ù
synthesizing module '%s'638*oasys2
displays2default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
202default:default8@Z8-638h px 

Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	conv_7seg2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/conv_7seg.vhd2default:default2
322default:default2&
conv_7seg_digito_02default:default2
	conv_7seg2default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
362default:default8@Z8-3491h px 
û
synthesizing module '%s'638*oasys2
	conv_7seg2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/conv_7seg.vhd2default:default2
372default:default8@Z8-638h px 
¶
%done synthesizing module '%s' (%s#%s)256*oasys2
	conv_7seg2default:default2
02default:default2
12default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/conv_7seg.vhd2default:default2
372default:default8@Z8-256h px 

Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	conv_7seg2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/conv_7seg.vhd2default:default2
322default:default2&
conv_7seg_digito_12default:default2
	conv_7seg2default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
372default:default8@Z8-3491h px 

Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	conv_7seg2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/conv_7seg.vhd2default:default2
322default:default2&
conv_7seg_digito_22default:default2
	conv_7seg2default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
382default:default8@Z8-3491h px 

Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	conv_7seg2default:default2
mC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/conv_7seg.vhd2default:default2
322default:default2&
conv_7seg_digito_32default:default2
	conv_7seg2default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
392default:default8@Z8-3491h px 
´
%done synthesizing module '%s' (%s#%s)256*oasys2
displays2default:default2
02default:default2
12default:default2
lC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/displays.vhd2default:default2
202default:default8@Z8-256h px 
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2(
sintesis_tragaperras2default:default2
02default:default2
12default:default2
xC:/Vivado_Pr/Practica_5/Practica_5.srcs/sources_1/imports/Ficheros máquina tragaperras-20241206/sintesis_tragaperras.vhd2default:default2
182default:default8@Z8-256h px 
¦
%s*synth2
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1357.668 ; gain = 502.887
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
Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1357.668 ; gain = 502.887
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
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1357.668 ; gain = 502.887
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
00:00:00.0042default:default2
1357.6682default:default2
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
É
Parsing XDC File [%s]
179*designutils2
qC:/Vivado_Pr/Practica_5/Practica_5.srcs/constrs_1/imports/Ficheros máquina tragaperras-20241206/Basys3_Master.xdc2default:default8Z20-179h px 
Ò
Finished Parsing XDC File [%s]
178*designutils2
qC:/Vivado_Pr/Practica_5/Practica_5.srcs/constrs_1/imports/Ficheros máquina tragaperras-20241206/Basys3_Master.xdc2default:default8Z20-178h px 
À
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2
qC:/Vivado_Pr/Practica_5/Practica_5.srcs/constrs_1/imports/Ficheros máquina tragaperras-20241206/Basys3_Master.xdc2default:default2:
&.Xil/sintesis_tragaperras_propImpl.xdc2default:defaultZ1-236h px 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1451.0552default:default2
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
00:00:00.0052default:default2
1451.0552default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1451.055 ; gain = 596.273
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

3inferred FSM for state register '%s' in module '%s'802*oasys2(
controller.state_reg2default:default2
	debouncer2default:defaultZ8-802h px 

3inferred FSM for state register '%s' in module '%s'802*oasys2
	STATE_reg2default:default2
control2default:defaultZ8-802h px 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2s
_         waitingpression |                               00 |                               00
2default:defaulth p
x
 

%s
*synth2s
_      pressiondebouncing |                               01 |                               01
2default:defaulth p
x
 

%s
*synth2s
_       waitingdepression |                               10 |                               10
2default:defaulth p
x
 

%s
*synth2s
_    depressiondebouncing |                               11 |                               11
2default:defaulth p
x
 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 
Ò
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2(
controller.state_reg2default:default2

sequential2default:default2
	debouncer2default:defaultZ8-3354h px 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2s
_                      s0 |                            00001 |                              000
2default:defaulth p
x
 

%s
*synth2s
_                      s1 |                            00010 |                              001
2default:defaulth p
x
 

%s
*synth2s
_                      s2 |                            00100 |                              010
2default:defaulth p
x
 

%s
*synth2s
_                      s3 |                            01000 |                              011
2default:defaulth p
x
 

%s
*synth2s
_                      s4 |                            10000 |                              100
2default:defaulth p
x
 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 
Â
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	STATE_reg2default:default2
one-hot2default:default2
control2default:defaultZ8-3354h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 3     
2default:defaulth p
x
 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
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
,	   4 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   5 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 5     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 8     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 8     
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¼
%s*synth2£
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:26 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
}Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
vFinished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px 
D
%s*synth2,
|2     |CARRY4 |    32|
2default:defaulth px 
D
%s*synth2,
|3     |LUT1   |    19|
2default:defaulth px 
D
%s*synth2,
|4     |LUT2   |    36|
2default:defaulth px 
D
%s*synth2,
|5     |LUT3   |     6|
2default:defaulth px 
D
%s*synth2,
|6     |LUT4   |    61|
2default:defaulth px 
D
%s*synth2,
|7     |LUT5   |    42|
2default:defaulth px 
D
%s*synth2,
|8     |LUT6   |    51|
2default:defaulth px 
D
%s*synth2,
|9     |FDCE   |   129|
2default:defaulth px 
D
%s*synth2,
|10    |FDPE   |    20|
2default:defaulth px 
D
%s*synth2,
|11    |FDRE   |    24|
2default:defaulth px 
D
%s*synth2,
|12    |FDSE   |     1|
2default:defaulth px 
D
%s*synth2,
|13    |IBUF   |     4|
2default:defaulth px 
D
%s*synth2,
|14    |OBUF   |    27|
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
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
Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
 
¬
%s
*synth2
Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:29 . Memory (MB): peak = 1451.055 ; gain = 502.887
2default:defaulth p
x
 
®
%s
*synth2
Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:31 . Memory (MB): peak = 1451.055 ; gain = 596.273
2default:defaulth p
x
 
B
 Translating synthesized netlist
350*projectZ1-571h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1451.0552default:default2
0.0002default:defaultZ17-268h px 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
322default:defaultZ29-17h px 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px 
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
1451.0552default:default2
0.0002default:defaultZ17-268h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
232a6efd2default:defaultZ4-1430h px 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px 
Æ
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
812default:default2
12default:default2
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
00:00:562default:default2
1451.0552default:default2
977.0162default:defaultZ17-268h px 
Á
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2\
HC:/Vivado_Pr/Practica_5/Practica_5.runs/synth_1/sintesis_tragaperras.dcp2default:defaultZ17-1381h px 
¯
%s4*runtcl2
~Executing : report_utilization -file sintesis_tragaperras_utilization_synth.rpt -pb sintesis_tragaperras_utilization_synth.pb
2default:defaulth px 

Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec  7 23:29:11 20242default:defaultZ17-206h px 


End Record
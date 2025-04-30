;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=18p018a0
	radix dec
	include "p18p018a0.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_InitPort
	extern	_InitSystem
	extern	_InitPwm
	extern	_InitRam
	extern	_CheckLvd
	extern	_ConfigureLvd
	extern	_Work
	extern	_ScanKey
	extern	_CheckTemp
	extern	_CheckSleep
	extern	_ControlLevelLow
	extern	_ControlLevelHigh
	extern	_ControlLevel
	extern	_ControlFlash
	extern	_ControlSos
	extern	_LedDisplay
	extern	_LedOn
	extern	_LedOff
	extern	_MotoDisplay
	extern	_LedSwitch
	extern	_MotoSwitch
	extern	_PowOn
	extern	_PowOff
	extern	_CountdownDisplay
	extern	_STATUSbits
	extern	_PORTBbits
	extern	_PCONbits
	extern	_IOCBbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PHCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_OPTIONbits
	extern	_TRISBbits
	extern	_PWMCONbits
	extern	_T0CRbits
	extern	_T1CONbits
	extern	_OSCCONbits
	extern	_CMPCRbits
	extern	_PDCON1bits
	extern	_CHARGE0bits
	extern	_CHARGE1bits
	extern	_RAMPbits
	extern	_AUXRbits
	extern	_BITS_DATA0
	extern	_BITS_DATA1
	extern	_g_ucTimer10msCount
	extern	_g_ucTimerWorkCount
	extern	_TempCount
	extern	_TempFlag
	extern	_SleepCount
	extern	_SleepFlag
	extern	_MaxLight
	extern	_INDF
	extern	_T0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTB
	extern	_GPR
	extern	_PCON
	extern	_IOCB
	extern	_PCLATH
	extern	_PDCON
	extern	_ODCON
	extern	_PHCON
	extern	_INTECON
	extern	_INTFLAG
	extern	_OPTION
	extern	_TRISB
	extern	_PWMCON
	extern	_PWM1P
	extern	_PWM2P
	extern	_T0CR
	extern	_T1CON
	extern	_T1
	extern	_T1LOAD
	extern	_PWM0P
	extern	_OSCCON
	extern	_CMPCR
	extern	_PDCON1
	extern	_CHARGE0
	extern	_CHARGE1
	extern	_RAMP
	extern	_AUXR
	extern	_HIRCTRM
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	__sdcc_gsinit_startup
	global	_main
	global	_VERSION

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0010
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_main_0	code
_VERSION
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00


ID_main_1	code
___str_0
	retlw 0x48 ; 'H'
	retlw 0x43 ; 'C'
	retlw 0x2d ; '-'
	retlw 0x56 ; 'V'
	retlw 0x53 ; 'S'
	retlw 0x20 ; ' '
	retlw 0x56 ; 'V'
	retlw 0x30 ; '0'
	retlw 0x31 ; '1'
	retlw 0x00 ; '.'
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _InitPort
;   _InitSystem
;   _InitRam
;   _ScanKey
;   _CountdownDisplay
;   _LedDisplay
;   _MotoDisplay
;   _InitPort
;   _InitSystem
;   _InitRam
;   _ScanKey
;   _CountdownDisplay
;   _LedDisplay
;   _MotoDisplay
;; Starting pCode block
;;[ICODE] main.c:16:  _entry($7) :
;;[ICODE] main.c:16: 	proc _main [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_main__main	code
_main:
; 2 exit points
;;[ICODE] main.c:18: 	iTemp0 [k3 lr3:3 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitPort [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	18; "main.c"	InitPort();
	CALL	_InitPort
;;[ICODE] main.c:19: 	iTemp1 [k5 lr4:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitSystem [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	19; "main.c"	InitSystem();
	CALL	_InitSystem
;;[ICODE] main.c:20: 	iTemp2 [k7 lr5:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitRam [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	20; "main.c"	InitRam();
	CALL	_InitRam
;;[ICODE] main.c:21: 	iTemp4 [k11 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_INTECONbits [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] main.c:21: 	*(iTemp4 [k11 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	21; "main.c"	T0IE = 1;		//使能TMR0溢出中断
	BSF	_INTECONbits,0
;;[ICODE] main.c:22: 	iTemp6 [k14 lr9:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_INTECONbits [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] main.c:22: 	*(iTemp6 [k14 lr9:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	22; "main.c"	GIE = 1;		//使能所有中断   
	BSF	_INTECONbits,7
;;[ICODE] main.c:23: inline
	clrwdt
;;[ICODE] main.c:25:  _whilebody_0($4) :
;;[ICODE] main.c:27: inline
_00112_DS_:
	clrwdt
;;[ICODE] main.c:29: 	iTemp7 [k16 lr16:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA0 [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] main.c:29: 	iTemp8 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] := iTemp7 [k16 lr16:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]
;;[ICODE] main.c:29: 	iTemp9 [k19 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {0,1} fixed}[r0x1045 ] = @[iTemp8 [k18 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	29; "main.c"	if (BIT_TIMER_10MS)
	BTFSS	_BITS_DATA0,0
	GOTO	_00110_DS_
;;[ICODE] main.c:29: 	if iTemp9 [k19 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {0,1} fixed}[r0x1045 ] == 0 goto __iffalse_0($2)
;;[ICODE] main.c:31: 	iTemp11 [k22 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] := iTemp7 [k16 lr16:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]
;;[ICODE] main.c:31: 	*(iTemp11 [k22 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	31; "main.c"	BIT_TIMER_10MS = 0;
	BCF	_BITS_DATA0,0
;;[ICODE] main.c:33: 	iTemp12 [k24 lr22:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ScanKey [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	33; "main.c"	ScanKey();                       //按键检测	
	CALL	_ScanKey
;;[ICODE] main.c:34: 	iTemp13 [k26 lr23:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _CountdownDisplay [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	34; "main.c"	CountdownDisplay();			 //倒计时
	CALL	_CountdownDisplay
;;[ICODE] main.c:34:  __iffalse_0($2) :
;;[ICODE] main.c:38: 	iTemp14 [k28 lr25:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedDisplay [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00110_DS_:
;	.line	38; "main.c"	LedDisplay();					 //LED指示灯
	CALL	_LedDisplay
;;[ICODE] main.c:39: 	iTemp15 [k30 lr26:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoDisplay [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	39; "main.c"	MotoDisplay();					 //电机控制
	CALL	_MotoDisplay
;;[ICODE] main.c:39: 	 goto _whilebody_0($4)
	GOTO	_00112_DS_
;;[ICODE] main.c:39:  _return($6) :
;;[ICODE] main.c:39: 	eproc _main [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] main.c:14:  _entry($2) :
;;[ICODE] main.c:14: 	proc __sdcc_gsinit_startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_main___sdcc_gsinit_startup	code
__sdcc_gsinit_startup:
; 2 exit points
;;[ICODE] main.c:14: inline
	pagesel	_main 
;;[ICODE] main.c:14: inline
	goto	_main 
;;[ICODE] main.c:14:  _return($1) :
;;[ICODE] main.c:14: 	eproc __sdcc_gsinit_startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of __sdcc_gsinit_startup


;	code size estimation:
;	   15+    0 =    15 instructions (   30 byte)

	end

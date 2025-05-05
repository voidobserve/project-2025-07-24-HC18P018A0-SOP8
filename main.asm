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
	global	_delay_ms
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
UDL_main_0	udata
r0x1002	res	1
r0x1001	res	1
r0x1003	res	1
r0x1004	res	1
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
;   _delay_ms
;   _ScanKey
;   _CountdownDisplay
;   _CheckSleep
;   _LedDisplay
;   _MotoDisplay
;   _InitPort
;   _InitSystem
;   _InitRam
;   _delay_ms
;   _ScanKey
;   _CountdownDisplay
;   _CheckSleep
;   _LedDisplay
;   _MotoDisplay
;1 compiler assigned register :
;   STK00
;; Starting pCode block
;;[ICODE] main.c:35:  _entry($7) :
;;[ICODE] main.c:35: 	proc _main [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_main__main	code
_main:
; 2 exit points
;;[ICODE] main.c:37: 	iTemp0 [k3 lr3:3 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitPort [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	37; "main.c"	InitPort();
	CALL	_InitPort
;;[ICODE] main.c:38: 	iTemp1 [k5 lr4:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitSystem [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	38; "main.c"	InitSystem();
	CALL	_InitSystem
;;[ICODE] main.c:39: 	iTemp2 [k7 lr5:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitRam [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	39; "main.c"	InitRam();
	CALL	_InitRam
;;[ICODE] main.c:40: 	iTemp4 [k11 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_INTECONbits [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] main.c:40: 	*(iTemp4 [k11 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	40; "main.c"	T0IE = 1;		//使能TMR0溢出中断
	BSF	_INTECONbits,0
;;[ICODE] main.c:41: 	iTemp6 [k14 lr9:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_INTECONbits [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] main.c:41: 	*(iTemp6 [k14 lr9:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	41; "main.c"	GIE = 1;		//使能所有中断   
	BSF	_INTECONbits,7
;;[ICODE] main.c:42: inline
	clrwdt
;;[ICODE] main.c:43: 	send 0x1f4 {const-int literal}{argreg = 1}
;;[ICODE] main.c:43: 	iTemp7 [k17 lr14:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _delay_ms [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-int fixed) fixed}
;	.line	43; "main.c"	delay_ms(500);
	MOVLW	0xf4
	MOVWF	STK00
	MOVLW	0x01
	CALL	_delay_ms
;;[ICODE] main.c:44:  _whilebody_2($4) :
;;[ICODE] main.c:46: inline
_00123_DS_:
	clrwdt
;;[ICODE] main.c:48: 	iTemp8 [k19 lr18:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA0 [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] main.c:48: 	iTemp9 [k21 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] := iTemp8 [k19 lr18:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]
;;[ICODE] main.c:48: 	iTemp10 [k22 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {0,1} fixed}[r0x1049 ] = @[iTemp9 [k21 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	48; "main.c"	if (BIT_TIMER_10MS)
	BTFSS	_BITS_DATA0,0
	GOTO	_00121_DS_
;;[ICODE] main.c:48: 	if iTemp10 [k22 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {0,1} fixed}[r0x1049 ] == 0 goto __iffalse_0($2)
;;[ICODE] main.c:50: 	iTemp12 [k25 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] := iTemp8 [k19 lr18:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]
;;[ICODE] main.c:50: 	*(iTemp12 [k25 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	50; "main.c"	BIT_TIMER_10MS = 0;
	BCF	_BITS_DATA0,0
;;[ICODE] main.c:52: 	iTemp13 [k27 lr24:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ScanKey [k26 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	52; "main.c"	ScanKey();                       //按键检测	
	CALL	_ScanKey
;;[ICODE] main.c:53: 	iTemp14 [k29 lr25:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _CountdownDisplay [k28 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	53; "main.c"	CountdownDisplay();			 //倒计时
	CALL	_CountdownDisplay
;;[ICODE] main.c:54: 	iTemp15 [k31 lr26:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _CheckSleep [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	54; "main.c"	CheckSleep();						 //休眠--低功耗
	CALL	_CheckSleep
;;[ICODE] main.c:54:  __iffalse_0($2) :
;;[ICODE] main.c:57: 	iTemp16 [k33 lr28:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedDisplay [k32 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00121_DS_:
;	.line	57; "main.c"	LedDisplay();					 //LED指示灯
	CALL	_LedDisplay
;;[ICODE] main.c:58: 	iTemp17 [k35 lr29:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoDisplay [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	58; "main.c"	MotoDisplay();					 //电机控制
	CALL	_MotoDisplay
;;[ICODE] main.c:58: 	 goto _whilebody_2($4)
	GOTO	_00123_DS_
;;[ICODE] main.c:58:  _return($6) :
;;[ICODE] main.c:58: 	eproc _main [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;5 compiler assigned registers:
;   r0x1001
;   STK00
;   r0x1002
;   r0x1003
;   r0x1004
;; Starting pCode block
;;[ICODE] main.c:17:  _entry($8) :
;;[ICODE] main.c:17: 	proc _delay_ms [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-int fixed) fixed}
S_main__delay_ms	code
_delay_ms:
; 2 exit points
;;[ICODE] main.c:17: iTemp5 [k9 lr3:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1045 r0x1046 ] = recv _delay_ms [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-int fixed) fixed}
;	.line	17; "main.c"	void delay_ms(WORD xms)
	MOVWF	r0x1001
	MOVF	STK00,W
	MOVWF	r0x1002
;;[ICODE] main.c:19:  _whilecontinue_0($4) :
;;[ICODE] main.c:19: 	if iTemp5 [k9 lr3:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1045 r0x1046 ] == 0 goto _return($7)
_00112_DS_:
;	.line	19; "main.c"	while (xms)
	MOVF	r0x1002,W
	IORWF	r0x1001,W
	BTFSC	STATUS,2
	GOTO	_00115_DS_
;;[ICODE] main.c:23: 	iTemp3 [k7 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _delay_ms_i_2_29}[r0x1047 r0x1048 ] := 0x149 {const-unsigned-int literal}
;	.line	23; "main.c"	while (i)
	MOVLW	0x49
	MOVWF	r0x1003
	MOVLW	0x01
	MOVWF	r0x1004
;;[ICODE] main.c:23:  _whilecontinue_1($1) :
;;[ICODE] main.c:23: 	if iTemp3 [k7 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _delay_ms_i_2_29}[r0x1047 r0x1048 ] == 0 goto _whilebreak_1($3)
_00109_DS_:
	MOVF	r0x1003,W
	IORWF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00111_DS_
;;[ICODE] main.c:26: inline
	nop
;;[ICODE] main.c:27: 	iTemp3 [k7 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _delay_ms_i_2_29}[r0x1047 r0x1048 ] = iTemp3 [k7 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _delay_ms_i_2_29}[r0x1047 r0x1048 ] - 0x1 {const-unsigned-char literal}
;	.line	27; "main.c"	i--;
	MOVLW	0xff
	ADDWF	r0x1003,F
	BTFSS	STATUS,0
	DECF	r0x1004,F
;;[ICODE] main.c:27: 	 goto _whilecontinue_1($1)
	GOTO	_00109_DS_
;;[ICODE] main.c:27:  _whilebreak_1($3) :
;;[ICODE] main.c:30: inline
_00111_DS_:
	clrwdt
;;[ICODE] main.c:31: 	iTemp5 [k9 lr3:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1045 r0x1046 ] = iTemp5 [k9 lr3:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x1045 r0x1046 ] - 0x1 {const-unsigned-char literal}
;	.line	31; "main.c"	xms--;
	MOVLW	0xff
	ADDWF	r0x1002,F
	BTFSS	STATUS,0
	DECF	r0x1001,F
;;[ICODE] main.c:31: 	 goto _whilecontinue_0($4)
	GOTO	_00112_DS_
;;[ICODE] main.c:31:  _return($7) :
;;[ICODE] main.c:31: 	eproc _delay_ms [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-int fixed) fixed}
_00115_DS_:
	RETURN	
; exit point of _delay_ms

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
;	   46+    0 =    46 instructions (   92 byte)

	end

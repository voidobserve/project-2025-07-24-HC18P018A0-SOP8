;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"temp.c"
	list	p=18p018a0
	radix dec
	include "p18p018a0.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_DelayMs
	extern	_ControlLevelLow
	extern	_ControlLevelHigh
	extern	_ControlLevel
	extern	_ControlFlash
	extern	_ControlSos
	extern	_InitPort
	extern	_InitSystem
	extern	_InitPwm
	extern	_InitRam
	extern	_delay_ms
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

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_CheckSleep
	global	_CheckTemp

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_temp_0	udata
r0x1005	res	1
r0x1006	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_temp	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _InitPort
;   _InitPort
;2 compiler assigned registers:
;   r0x1005
;   r0x1006
;; Starting pCode block
;;[ICODE] temp.c:33:  _entry($7) :
;;[ICODE] temp.c:33: 	proc _CheckSleep [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_temp__CheckSleep	code
_CheckSleep:
; 2 exit points
;;[ICODE] temp.c:35: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:35: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1049 ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	35; "temp.c"	if(1 == IsLight || 1 == IsMotor)
	CLRF	r0x1005
	BTFSC	_BITS_DATA0,5
	INCF	r0x1005,F
;;[ICODE] temp.c:35: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104A ] = (char register)iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1049 ]
	MOVF	r0x1005,W
	MOVWF	r0x1006
	XORLW	0x01
	BTFSC	STATUS,2
	GOTO	_00114_DS_
	CLRF	r0x1005
	BTFSC	_BITS_DATA0,6
	INCF	r0x1005,F
;;[ICODE] temp.c:35: 	iTemp8 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104A ] = (char register)iTemp7 [k12 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x1049 ]
	MOVF	r0x1005,W
	MOVWF	r0x1006
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00115_DS_
;;[ICODE] temp.c:35: 	if iTemp9 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_2($2)
;;[ICODE] temp.c:35:  __iftrue_2($1) :
;;[ICODE] temp.c:37: 	_SleepCount [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
_00114_DS_:
;	.line	37; "temp.c"	SleepCount = 0;
	CLRF	_SleepCount
	CLRF	(_SleepCount + 1)
;;[ICODE] temp.c:37:  __iffalse_2($2) :
;;[ICODE] temp.c:42: 	iTemp11 [k17 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _SleepCount [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0x1770 {unsigned-int literal}
;;unsigned compare: left < lit(0x1770=6000), size=2
_00115_DS_:
;	.line	42; "temp.c"	if(SleepCount < 6000)
	MOVLW	0x17
	SUBWF	(_SleepCount + 1),W
	BTFSS	STATUS,2
	GOTO	_00128_DS_
	MOVLW	0x70
	SUBWF	_SleepCount,W
_00128_DS_:
	BTFSC	STATUS,0
	GOTO	_00118_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] temp.c:42: 	if iTemp11 [k17 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_3($5)
;;[ICODE] temp.c:45: 	_SleepCount [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} = _SleepCount [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} + 0x1 {const-unsigned-char literal}
;	.line	45; "temp.c"	SleepCount++;
	INCF	_SleepCount,F
	BTFSC	STATUS,2
	INCF	(_SleepCount + 1),F
;;[ICODE] temp.c:46: 	ret
;	.line	46; "temp.c"	return;
	GOTO	_00119_DS_
;;[ICODE] temp.c:46:  __iffalse_3($5) :
;;[ICODE] temp.c:49: 	_RAMP [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
_00118_DS_:
;	.line	49; "temp.c"	RAMP = 0;
	CLRF	_RAMP
;;[ICODE] temp.c:50: 	_T1CON [k22 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	50; "temp.c"	T1CON = 0;
	CLRF	_T1CON
;;[ICODE] temp.c:51: 	_CHARGE1 [k23 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	51; "temp.c"	CHARGE1 = 0;
	CLRF	_CHARGE1
;;[ICODE] temp.c:52: 	_CHARGE0 [k24 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	52; "temp.c"	CHARGE0 = 0;
	CLRF	_CHARGE0
;;[ICODE] temp.c:53: 	_PCON [k25 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	53; "temp.c"	PCON = 0;
	CLRF	_PCON
;;[ICODE] temp.c:54: 	_CMPCR [k26 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	54; "temp.c"	CMPCR = 0;
	CLRF	_CMPCR
;;[ICODE] temp.c:57: 	iTemp16 [k30 lr30:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_CMPCRbits [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000056 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:57: 	*(iTemp16 [k30 lr30:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	57; "temp.c"	LVDM = 0;		
	BCF	_CMPCRbits,4
;;[ICODE] temp.c:58: 	iTemp18 [k34 lr33:35 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PCONbits [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000006 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:58: 	*(iTemp18 [k34 lr33:35 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	58; "temp.c"	CMPEN = 0;
	BCF	_PCONbits,0
;;[ICODE] temp.c:59: 	iTemp20 [k37 lr36:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PCONbits [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000006 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:59: 	*(iTemp20 [k37 lr36:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	59; "temp.c"	CMPOF = 0;
	BCF	_PCONbits,5
;;[ICODE] temp.c:60: 	iTemp22 [k41 lr39:41 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_CHARGE1bits [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000065 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:60: 	*(iTemp22 [k41 lr39:41 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	60; "temp.c"	TEMPEN = 0;
	BCF	_CHARGE1bits,6
;;[ICODE] temp.c:61: 	iTemp24 [k45 lr42:44 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_INTFLAGbits [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000027 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:61: 	*(iTemp24 [k45 lr42:44 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	61; "temp.c"	TMPF = 0;
	BCF	_INTFLAGbits,4
;;[ICODE] temp.c:62: 	iTemp26 [k49 lr45:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:62: 	*(iTemp26 [k49 lr45:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	62; "temp.c"	MODSEL = 0;
	BCF	_RAMPbits,7
;;[ICODE] temp.c:64: 	iTemp28 [k52 lr48:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_PCONbits [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000006 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:64: 	*(iTemp28 [k52 lr48:50 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	64; "temp.c"	WDTEN = 0;
	BCF	_PCONbits,7
;;[ICODE] temp.c:65: 	iTemp30 [k56 lr51:53 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_INTECONbits [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:65: 	*(iTemp30 [k56 lr51:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	65; "temp.c"	T0IE = 0;
	BCF	_INTECONbits,0
;;[ICODE] temp.c:67: 	_INTECON [k57 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	67; "temp.c"	INTECON = 0;
	CLRF	_INTECON
;;[ICODE] temp.c:69: 	_PORTB [k58 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	69; "temp.c"	PORTB = 0;  // 0 disenable output, 1 enable output
	CLRF	_PORTB
;;[ICODE] temp.c:70: 	_TRISB [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	70; "temp.c"	TRISB = 0xff;    //1：input  0:output
	MOVLW	0xff
	MOVWF	_TRISB
;;[ICODE] temp.c:73: 	_PDCON [k60 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	73; "temp.c"	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
	MOVLW	0xff
	MOVWF	_PDCON
;;[ICODE] temp.c:74: 	_PDCON1 [k61 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	74; "temp.c"	PDCON1 = 0xFF; // 1 disenable down pull ,0 enable down pull
	MOVLW	0xff
	MOVWF	_PDCON1
;;[ICODE] temp.c:77: 	_PHCON [k62 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	77; "temp.c"	PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull
	MOVLW	0xff
	MOVWF	_PHCON
;;[ICODE] temp.c:79: 	_PHCON [k62 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfb {const-unsigned-char literal}
;	.line	79; "temp.c"	PHCON &= DEF_CLR_BIT2;
	BCF	_PHCON,2
;;[ICODE] temp.c:80: 	_PHCON [k62 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xef {const-unsigned-char literal}
;	.line	80; "temp.c"	PHCON &= DEF_CLR_BIT4;
	BCF	_PHCON,4
;;[ICODE] temp.c:82: 	_IOCB [k65 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	82; "temp.c"	IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up
	CLRF	_IOCB
;;[ICODE] temp.c:83: 	_IOCB [k65 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _IOCB [k65 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x4 {const-unsigned-char literal}
;	.line	83; "temp.c"	IOCB |= DEF_SET_BIT2;
	BSF	_IOCB,2
;;[ICODE] temp.c:84: 	_IOCB [k65 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _IOCB [k65 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x10 {const-unsigned-char literal}
;	.line	84; "temp.c"	IOCB |= DEF_SET_BIT4;
	BSF	_IOCB,4
;;[ICODE] temp.c:90: inline
	movf	PORTB,W
	
;;[ICODE] temp.c:92: 	iTemp36 [k70 lr70:72 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_INTFLAGbits [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000027 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:92: 	*(iTemp36 [k70 lr70:72 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	92; "temp.c"	PBIF = 0;
	BCF	_INTFLAGbits,1
;;[ICODE] temp.c:93: 	iTemp38 [k73 lr73:75 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_INTECONbits [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:93: 	*(iTemp38 [k73 lr73:75 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	93; "temp.c"	PBIE = 1;// 0	disenable Port level change interrupt , 1 enable Port level change interrupt
	BSF	_INTECONbits,1
;;[ICODE] temp.c:94: 	iTemp40 [k76 lr76:78 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_INTECONbits [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:94: 	*(iTemp40 [k76 lr76:78 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	94; "temp.c"	GIE = 0;
	BCF	_INTECONbits,7
;;[ICODE] temp.c:102: inline
	SLEEP
	nop
	nop
	nop
	nop
	
;;[ICODE] temp.c:106: inline
	movf	PORTB,W
	
;;[ICODE] temp.c:108: 	iTemp42 [k79 lr81:83 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_INTECONbits [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:108: 	*(iTemp42 [k79 lr81:83 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	108; "temp.c"	PBIE = 0;
	BCF	_INTECONbits,1
;;[ICODE] temp.c:109: 	_IOCB [k65 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	109; "temp.c"	IOCB = 0;
	CLRF	_IOCB
;;[ICODE] temp.c:110: 	iTemp44 [k82 lr85:87 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_CMPCRbits [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000056 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:110: 	*(iTemp44 [k82 lr85:87 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	110; "temp.c"	LVDM = 1;
	BSF	_CMPCRbits,4
;;[ICODE] temp.c:111: inline
	clrwdt
;;[ICODE] temp.c:112: 	iTemp46 [k85 lr89:91 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_PCONbits [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000006 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:112: 	*(iTemp46 [k85 lr89:91 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	112; "temp.c"	WDTEN = 1;
	BSF	_PCONbits,7
;;[ICODE] temp.c:113: 	iTemp48 [k88 lr92:94 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_INTECONbits [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:113: 	*(iTemp48 [k88 lr92:94 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	113; "temp.c"	GIE = 1;
	BSF	_INTECONbits,7
;;[ICODE] temp.c:114: 	iTemp50 [k91 lr95:97 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_INTECONbits [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:114: 	*(iTemp50 [k91 lr95:97 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	114; "temp.c"	T0IE = 1;
	BSF	_INTECONbits,0
;;[ICODE] temp.c:116: 	iTemp51 [k93 lr98:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _InitPort [k92 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	116; "temp.c"	InitPort();
	CALL	_InitPort
;;[ICODE] temp.c:136: 	iTemp53 [k96 lr99:101 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:136: 	*(iTemp53 [k96 lr99:101 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	136; "temp.c"	MODSEL = 1;
	BSF	_RAMPbits,7
;;[ICODE] temp.c:137: 	_SleepCount [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
;	.line	137; "temp.c"	SleepCount = 0;
	CLRF	_SleepCount
	CLRF	(_SleepCount + 1)
;;[ICODE] temp.c:137:  _return($6) :
;;[ICODE] temp.c:137: 	eproc _CheckSleep [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00119_DS_:
	RETURN	
; exit point of _CheckSleep

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _DelayMs
;   _DelayMs
;; Starting pCode block
;;[ICODE] temp.c:7:  _entry($7) :
;;[ICODE] temp.c:7: 	proc _CheckTemp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_temp__CheckTemp	code
_CheckTemp:
; 2 exit points
;;[ICODE] temp.c:9: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_CHARGE1bits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000065 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:9: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	9; "temp.c"	TEMPEN = 1;
	BSF	_CHARGE1bits,6
;;[ICODE] temp.c:10: 	iTemp2 [k7 lr6:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _DelayMs [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	10; "temp.c"	DelayMs();
	CALL	_DelayMs
;;[ICODE] temp.c:11: 	iTemp4 [k11 lr7:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_INTFLAGbits [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000027 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:11: 	iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x1047 ] = @[iTemp4 [k11 lr7:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	11; "temp.c"	if(TMPF == 0)
	BTFSC	_INTFLAGbits,4
	GOTO	_00106_DS_
;;[ICODE] temp.c:11: 	if iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x1047 ] != 0 goto __iffalse_0($2)
;;[ICODE] temp.c:13: 	_TempCount [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	13; "temp.c"	TempCount = 0;
	CLRF	_TempCount
;;[ICODE] temp.c:14: 	_TempFlag [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	14; "temp.c"	TempFlag = 0;
	CLRF	_TempFlag
;;[ICODE] temp.c:14: 	 goto __ifend_0($3)
	GOTO	_00107_DS_
;;[ICODE] temp.c:14:  __iffalse_0($2) :
;;[ICODE] temp.c:18: 	_TempCount [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _TempCount [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
_00106_DS_:
;	.line	18; "temp.c"	TempCount++;
	INCF	_TempCount,F
;;[ICODE] temp.c:18:  __ifend_0($3) :
;;[ICODE] temp.c:21: 	iTemp11 [k20 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x5 {const-unsigned-char literal} == _TempCount [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
_00107_DS_:
;	.line	21; "temp.c"	if(5 == TempCount)
	MOVF	_TempCount,W
	XORLW	0x05
	BTFSS	STATUS,2
	GOTO	_00109_DS_
;;[ICODE] temp.c:21: 	if iTemp11 [k20 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_1($5)
;;[ICODE] temp.c:23: 	_TempFlag [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	23; "temp.c"	TempFlag = 1;
	MOVLW	0x01
	MOVWF	_TempFlag
;;[ICODE] temp.c:23:  __iffalse_1($5) :
;;[ICODE] temp.c:26: 	iTemp14 [k24 lr22:24 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_CHARGE1bits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000065 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:26: 	*(iTemp14 [k24 lr22:24 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00109_DS_:
;	.line	26; "temp.c"	TEMPEN = 0;
	BCF	_CHARGE1bits,6
;;[ICODE] temp.c:27: 	iTemp16 [k27 lr25:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_INTFLAGbits [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000027 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] temp.c:27: 	*(iTemp16 [k27 lr25:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	27; "temp.c"	TMPF = 0;
	BCF	_INTFLAGbits,4
;;[ICODE] temp.c:27:  _return($6) :
;;[ICODE] temp.c:27: 	eproc _CheckTemp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _CheckTemp


;	code size estimation:
;	   90+    0 =    90 instructions (  180 byte)

	end

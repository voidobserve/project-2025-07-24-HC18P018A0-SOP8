;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"led.c"
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
	extern	_g_ucFlashTimeHigh
	extern	_g_ucFlashTimeLow
	extern	_g_ucFlashTimeHigh1
	extern	_g_ucFlashTimeLow1
	extern	_g_ucFlashTimeHigh2
	extern	_g_ucFlashTimeLow2
	extern	_LvdModel
	extern	_LvdDebounceNew
	extern	_LvdDebounceOld
	extern	_LvdModelCount
	extern	_LvdLightCount
	extern	_TempCount
	extern	_TempFlag
	extern	_SleepCount
	extern	_SleepFlag
	extern	_MaxLight
	extern	_g_cucTIMER_COUNT_STATE
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
	global	_CountdownDisplay
	global	_PowOff
	global	_PowOn
	global	_MotoDisplay
	global	_MotoSwitch
	global	_LedOff
	global	_LedOn
	global	_LedDisplay
	global	_LedSwitch
	global	_MotoOn
	global	_MotoOff
	global	_lampTiming
	global	_motoTiming

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_led_0	udata
r0x100D	res	1
r0x100B	res	1
r0x1009	res	1
r0x1007	res	1
r0x1005	res	1
r0x1006	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_led_0	idata
_lampTiming
	db	0x00, 0x00


ID_led_1	idata
_motoTiming
	db	0x00, 0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_led	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x1005
;   r0x1006
;; Starting pCode block
;;[ICODE] led.c:94:  _entry($12) :
;;[ICODE] led.c:94: 	proc _CountdownDisplay [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__CountdownDisplay	code
_CountdownDisplay:
; 2 exit points
;;[ICODE] led.c:98: 	iTemp0 [k3 lr3:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:98: 	iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] := iTemp0 [k3 lr3:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]
;;[ICODE] led.c:98: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1050 ] = @[iTemp1 [k5 lr4:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	98; "led.c"	if(IsLight == 1) {
	CLRF	r0x1005
	BTFSC	_BITS_DATA0,5
	INCF	r0x1005,F
;;[ICODE] led.c:98: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1051 ] = (char register)iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1050 ]
	MOVF	r0x1005,W
	MOVWF	r0x1006
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00156_DS_
;;[ICODE] led.c:98: 	if iTemp4 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_3($4)
;;[ICODE] led.c:100: 	_lampTiming [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} = _lampTiming [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} + 0x1 {const-unsigned-char literal}
;	.line	100; "led.c"	lampTiming++;
	INCF	_lampTiming,F
	BTFSC	STATUS,2
	INCF	(_lampTiming + 1),F
;;[ICODE] led.c:104: 	iTemp8 [k13 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _lampTiming [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} > 0x3e8 {unsigned-int literal}
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3E9=1001), size=2
;	.line	104; "led.c"	if(lampTiming > 1000) {    //10s
	MOVLW	0x03
	SUBWF	(_lampTiming + 1),W
	BTFSS	STATUS,2
	GOTO	_00177_DS_
	MOVLW	0xe9
	SUBWF	_lampTiming,W
_00177_DS_:
	BTFSS	STATUS,0
	GOTO	_00157_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] led.c:104: 	if iTemp8 [k13 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __ifend_3($5)
;;[ICODE] led.c:105: 	iTemp10 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] := iTemp0 [k3 lr3:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]
;;[ICODE] led.c:105: 	*(iTemp10 [k16 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	105; "led.c"	IsLight = 0;
	BCF	_BITS_DATA0,5
;;[ICODE] led.c:105: 	 goto __ifend_3($5)
	GOTO	_00157_DS_
;;[ICODE] led.c:105:  __iffalse_3($4) :
;;[ICODE] led.c:112: 	_lampTiming [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
_00156_DS_:
;	.line	112; "led.c"	lampTiming = 0;
	CLRF	_lampTiming
	CLRF	(_lampTiming + 1)
;;[ICODE] led.c:112:  __ifend_3($5) :
;;[ICODE] led.c:117: 	iTemp12 [k18 lr19:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:117: 	iTemp13 [k20 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] := iTemp12 [k18 lr19:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat]
;;[ICODE] led.c:117: 	iTemp14 [k21 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x1050 ] = @[iTemp13 [k20 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00157_DS_:
;	.line	117; "led.c"	if(IsMotor == 1){
	CLRF	r0x1005
	BTFSC	_BITS_DATA0,6
	INCF	r0x1005,F
;;[ICODE] led.c:117: 	iTemp15 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1051 ] = (char register)iTemp14 [k21 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x1050 ]
	MOVF	r0x1005,W
	MOVWF	r0x1006
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00161_DS_
;;[ICODE] led.c:117: 	if iTemp16 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_5($9)
;;[ICODE] led.c:118: 	_motoTiming [k24 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} = _motoTiming [k24 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} + 0x1 {const-unsigned-char literal}
;	.line	118; "led.c"	motoTiming++;
	INCF	_motoTiming,F
	BTFSC	STATUS,2
	INCF	(_motoTiming + 1),F
;;[ICODE] led.c:123: 	iTemp20 [k28 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _motoTiming [k24 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} > 0x3e8 {unsigned-int literal}
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3E9=1001), size=2
;	.line	123; "led.c"	if(motoTiming > 1000) {    //10s
	MOVLW	0x03
	SUBWF	(_motoTiming + 1),W
	BTFSS	STATUS,2
	GOTO	_00178_DS_
	MOVLW	0xe9
	SUBWF	_motoTiming,W
_00178_DS_:
	BTFSS	STATUS,0
	GOTO	_00163_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] led.c:123: 	if iTemp20 [k28 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($11)
;;[ICODE] led.c:124: 	iTemp22 [k31 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] := iTemp12 [k18 lr19:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat]
;;[ICODE] led.c:124: 	*(iTemp22 [k31 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	124; "led.c"	IsMotor = 0;
	BCF	_BITS_DATA0,6
;;[ICODE] led.c:124: 	 goto _return($11)
	GOTO	_00163_DS_
;;[ICODE] led.c:124:  __iffalse_5($9) :
;;[ICODE] led.c:131: 	_motoTiming [k24 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
_00161_DS_:
;	.line	131; "led.c"	motoTiming = 0;
	CLRF	_motoTiming
	CLRF	(_motoTiming + 1)
;;[ICODE] led.c:131:  _return($11) :
;;[ICODE] led.c:131: 	eproc _CountdownDisplay [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00163_DS_:
	RETURN	
; exit point of _CountdownDisplay

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] led.c:79:  _entry($2) :
;;[ICODE] led.c:79: 	proc _PowOff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__PowOff	code
_PowOff:
; 2 exit points
;;[ICODE] led.c:84: 	_TRISB [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xf7 {const-unsigned-char literal}
;	.line	84; "led.c"	TRISB  &= DEF_CLR_BIT3;
	BCF	_TRISB,3
;;[ICODE] led.c:85: 	_PHCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x8 {const-unsigned-char literal}
;	.line	85; "led.c"	PHCON |= DEF_SET_BIT3;
	BSF	_PHCON,3
;;[ICODE] led.c:85:  _return($1) :
;;[ICODE] led.c:85: 	eproc _PowOff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _PowOff

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] led.c:72:  _entry($2) :
;;[ICODE] led.c:72: 	proc _PowOn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__PowOn	code
_PowOn:
; 2 exit points
;;[ICODE] led.c:75: 	_TRISB [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x8 {const-unsigned-char literal}
;	.line	75; "led.c"	TRISB  |= DEF_SET_BIT3;
	BSF	_TRISB,3
;;[ICODE] led.c:76: 	_PHCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xf7 {const-unsigned-char literal}
;	.line	76; "led.c"	PHCON &= DEF_CLR_BIT3;
	BCF	_PHCON,3
;;[ICODE] led.c:76:  _return($1) :
;;[ICODE] led.c:76: 	eproc _PowOn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _PowOn

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _MotoOn
;   _MotoOff
;   _MotoOn
;   _MotoOff
;2 compiler assigned registers:
;   r0x1007
;   r0x1008
;; Starting pCode block
;;[ICODE] led.c:61:  _entry($5) :
;;[ICODE] led.c:61: 	proc _MotoDisplay [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__MotoDisplay	code
_MotoDisplay:
; 2 exit points
;;[ICODE] led.c:63: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:63: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x104C ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	63; "led.c"	if(IsMotor == 1)
	CLRF	r0x1007
	BTFSC	_BITS_DATA0,6
	INCF	r0x1007,F
;;[ICODE] led.c:63: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104D ] = (char register)iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x104C ]
	MOVF	r0x1007,W
;;1	MOVWF	r0x1008
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00138_DS_
;;[ICODE] led.c:63: 	if iTemp4 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_1($2)
;;[ICODE] led.c:65: 	iTemp5 [k10 lr9:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoOn [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	65; "led.c"	MotoOn();
	CALL	_MotoOn
;;[ICODE] led.c:65: 	 goto _return($4)
	GOTO	_00140_DS_
;;[ICODE] led.c:65:  __iffalse_1($2) :
;;[ICODE] led.c:69: 	iTemp6 [k12 lr12:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoOff [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00138_DS_:
;	.line	69; "led.c"	MotoOff();
	CALL	_MotoOff
;;[ICODE] led.c:69:  _return($4) :
;;[ICODE] led.c:69: 	eproc _MotoDisplay [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00140_DS_:
	RETURN	
; exit point of _MotoDisplay

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] led.c:55:  _entry($2) :
;;[ICODE] led.c:55: 	proc _MotoOff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__MotoOff	code
_MotoOff:
; 2 exit points
;;[ICODE] led.c:57: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:57: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	57; "led.c"	PORT_LED2 = LIGHT_TURN_OFF;
	BCF	_PORTBbits,0
;;[ICODE] led.c:58: 	iTemp3 [k9 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:58: 	*(iTemp3 [k9 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	58; "led.c"	MODSEL = 1;
	BSF	_RAMPbits,7
;;[ICODE] led.c:58:  _return($1) :
;;[ICODE] led.c:58: 	eproc _MotoOff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _MotoOff

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] led.c:49:  _entry($2) :
;;[ICODE] led.c:49: 	proc _MotoOn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__MotoOn	code
_MotoOn:
; 2 exit points
;;[ICODE] led.c:51: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:51: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	51; "led.c"	PORT_LED2 = LIGHT_TURN_ON;
	BSF	_PORTBbits,0
;;[ICODE] led.c:52: 	iTemp3 [k9 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:52: 	*(iTemp3 [k9 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	52; "led.c"	MODSEL = 1;	
	BSF	_RAMPbits,7
;;[ICODE] led.c:52:  _return($1) :
;;[ICODE] led.c:52: 	eproc _MotoOn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _MotoOn

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x1009
;   r0x100A
;; Starting pCode block
;;[ICODE] led.c:41:  _entry($2) :
;;[ICODE] led.c:41: 	proc _MotoSwitch [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__MotoSwitch	code
_MotoSwitch:
; 2 exit points
;;[ICODE] led.c:43: 	iTemp0 [k3 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:43: 	iTemp1 [k5 lr4:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] := iTemp0 [k3 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat]
;;[ICODE] led.c:43: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] := iTemp0 [k3 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat]
;;[ICODE] led.c:43: 	iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x104A ] = @[iTemp3 [k8 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	43; "led.c"	IsMotor =!IsMotor;
	CLRF	r0x1009
	BTFSC	_BITS_DATA0,6
	INCF	r0x1009,F
;;[ICODE] led.c:43: 	iTemp5 [k10 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed}[r0x104B ] = not iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x104A ]
	MOVF	r0x1009,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
;;1	MOVWF	r0x100A
	MOVWF	r0x1009
;;[ICODE] led.c:43: 	*(iTemp1 [k5 lr4:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {6,1} near* fixed}[remat]) := iTemp6 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {6,1} fixed}[r0x104A ]
	RRF	r0x1009,W
	BTFSS	STATUS,0
	BCF	_BITS_DATA0,6
	BTFSC	STATUS,0
	BSF	_BITS_DATA0,6
;;[ICODE] led.c:43:  _return($1) :
;;[ICODE] led.c:43: 	eproc _MotoSwitch [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _MotoSwitch

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] led.c:35:  _entry($2) :
;;[ICODE] led.c:35: 	proc _LedOff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__LedOff	code
_LedOff:
; 2 exit points
;;[ICODE] led.c:37: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:37: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	37; "led.c"	PORT_LED1 = LIGHT_TURN_OFF;
	BCF	_PORTBbits,1
;;[ICODE] led.c:38: 	iTemp3 [k9 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:38: 	*(iTemp3 [k9 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	38; "led.c"	MODSEL = 1;
	BSF	_RAMPbits,7
;;[ICODE] led.c:38:  _return($1) :
;;[ICODE] led.c:38: 	eproc _LedOff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _LedOff

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] led.c:29:  _entry($2) :
;;[ICODE] led.c:29: 	proc _LedOn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__LedOn	code
_LedOn:
; 2 exit points
;;[ICODE] led.c:31: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:31: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	31; "led.c"	PORT_LED1 = LIGHT_TURN_ON;
	BSF	_PORTBbits,1
;;[ICODE] led.c:32: 	iTemp3 [k9 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:32: 	*(iTemp3 [k9 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	32; "led.c"	MODSEL = 1;	   //使能内置限流电阻
	BSF	_RAMPbits,7
;;[ICODE] led.c:32:  _return($1) :
;;[ICODE] led.c:32: 	eproc _LedOn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _LedOn

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _LedOn
;   _LedOff
;   _LedOn
;   _LedOff
;2 compiler assigned registers:
;   r0x100B
;   r0x100C
;; Starting pCode block
;;[ICODE] led.c:15:  _entry($5) :
;;[ICODE] led.c:15: 	proc _LedDisplay [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__LedDisplay	code
_LedDisplay:
; 2 exit points
;;[ICODE] led.c:17: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:17: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1048 ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	17; "led.c"	if(IsLight == 1 )
	CLRF	r0x100B
	BTFSC	_BITS_DATA0,5
	INCF	r0x100B,F
;;[ICODE] led.c:17: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x1049 ] = (char register)iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1048 ]
	MOVF	r0x100B,W
;;1	MOVWF	r0x100C
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00110_DS_
;;[ICODE] led.c:17: 	if iTemp4 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_0($2)
;;[ICODE] led.c:19: 	iTemp5 [k10 lr9:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedOn [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	19; "led.c"	LedOn();
	CALL	_LedOn
;;[ICODE] led.c:19: 	 goto _return($4)
	GOTO	_00112_DS_
;;[ICODE] led.c:19:  __iffalse_0($2) :
;;[ICODE] led.c:23: 	iTemp6 [k12 lr12:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedOff [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00110_DS_:
;	.line	23; "led.c"	LedOff();
	CALL	_LedOff
;;[ICODE] led.c:23:  _return($4) :
;;[ICODE] led.c:23: 	eproc _LedDisplay [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00112_DS_:
	RETURN	
; exit point of _LedDisplay

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x100D
;   r0x100E
;; Starting pCode block
;;[ICODE] led.c:6:  _entry($2) :
;;[ICODE] led.c:6: 	proc _LedSwitch [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_led__LedSwitch	code
_LedSwitch:
; 2 exit points
;;[ICODE] led.c:9: 	iTemp0 [k3 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] led.c:9: 	iTemp1 [k5 lr4:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] := iTemp0 [k3 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]
;;[ICODE] led.c:9: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] := iTemp0 [k3 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]
;;[ICODE] led.c:9: 	iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1045 ] = @[iTemp3 [k8 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	9; "led.c"	IsLight = !IsLight;
	CLRF	r0x100D
	BTFSC	_BITS_DATA0,5
	INCF	r0x100D,F
;;[ICODE] led.c:9: 	iTemp5 [k10 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed}[r0x1046 ] = not iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1045 ]
	MOVF	r0x100D,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
;;1	MOVWF	r0x100E
	MOVWF	r0x100D
;;[ICODE] led.c:9: 	*(iTemp1 [k5 lr4:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]) := iTemp6 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {5,1} fixed}[r0x1045 ]
	RRF	r0x100D,W
	BTFSS	STATUS,0
	BCF	_BITS_DATA0,5
	BTFSC	STATUS,0
	BSF	_BITS_DATA0,5
;;[ICODE] led.c:9:  _return($1) :
;;[ICODE] led.c:9: 	eproc _LedSwitch [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _LedSwitch


;	code size estimation:
;	  115+    0 =   115 instructions (  230 byte)

	end

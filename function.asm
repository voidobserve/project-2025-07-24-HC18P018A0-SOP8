;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"function.c"
	list	p=18p018a0
	radix dec
	include "p18p018a0.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_ScanKey
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
	global	_ControlSos
	global	_ControlFlash
	global	_ControlLevel
	global	_ControlLevelHigh
	global	_ControlLevelLow

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_function_0	udata
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
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
code_function	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] function.c:103:  _entry($2) :
;;[ICODE] function.c:103: 	proc _ControlSos [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_function__ControlSos	code
_ControlSos:
; 2 exit points
;;[ICODE] function.c:171:  _return($1) :
;;[ICODE] function.c:171: 	eproc _ControlSos [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	171; "function.c"	}
	RETURN	
; exit point of _ControlSos

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] function.c:39:  _entry($2) :
;;[ICODE] function.c:39: 	proc _ControlFlash [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_function__ControlFlash	code
_ControlFlash:
; 2 exit points
;;[ICODE] function.c:101:  _return($1) :
;;[ICODE] function.c:101: 	eproc _ControlFlash [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	101; "function.c"	}
	RETURN	
; exit point of _ControlFlash

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;5 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;   STK01
;   r0x1004
;; Starting pCode block
;;[ICODE] function.c:26:  _entry($2) :
;;[ICODE] function.c:26: 	proc _ControlLevel [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
S_function__ControlLevel	code
_ControlLevel:
; 2 exit points
;;[ICODE] function.c:26: iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLevel_lightnum1_1_11}[r0x1047 ] = recv _ControlLevel [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
;	.line	26; "function.c"	void ControlLevel(BYTE lightnum1, BYTE lightnum2, BYTE lightnum3)
	MOVWF	r0x1002
;;[ICODE] function.c:26: iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLevel_lightnum2_1_11}[r0x1048 ] = recv _ControlLevel [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVF	STK00,W
	MOVWF	r0x1003
;;[ICODE] function.c:26: iTemp2 [k6 lr5:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLevel_lightnum3_1_11}[r0x1049 ] = recv _ControlLevel [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVF	STK01,W
	MOVWF	r0x1004
;;[ICODE] function.c:28: 	iTemp4 [k11 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat] = &[_BITS_DATA0 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:28: 	*(iTemp4 [k11 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	28; "function.c"	g_ucPWM_KeyChange = 0;
	BCF	_BITS_DATA0,2
;;[ICODE] function.c:29: 	_PWMCON [k12 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x63 {const-unsigned-char literal}
;	.line	29; "function.c"	PWMCON = 0x63;  //01100011
	MOVLW	0x63
	MOVWF	_PWMCON
;;[ICODE] function.c:30: 	iTemp6 [k16 lr10:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_T1CONbits [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000043 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:30: 	*(iTemp6 [k16 lr10:12 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	30; "function.c"	PWM0E = 1;
	BSF	_T1CONbits,6
;;[ICODE] function.c:31: 	iTemp8 [k19 lr13:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_T1CONbits [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000043 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:31: 	*(iTemp8 [k19 lr13:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	31; "function.c"	T1EN = 1;      //启动 T1
	BSF	_T1CONbits,7
;;[ICODE] function.c:32: 	_RAMP [k20 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xc5 {const-unsigned-char literal}
;	.line	32; "function.c"	RAMP = 0xC5;  //11000101 //禁止内置限流电阻。
	MOVLW	0xc5
	MOVWF	_RAMP
;;[ICODE] function.c:34: 	_PWM2P [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLevel_lightnum1_1_11}[r0x1047 ]
;	.line	34; "function.c"	PWM_LED0 = lightnum1;
	MOVF	r0x1002,W
	MOVWF	_PWM2P
;;[ICODE] function.c:35: 	_PWM1P [k22 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLevel_lightnum2_1_11}[r0x1048 ]
;	.line	35; "function.c"	PWM_LED1 = lightnum2;
	MOVF	r0x1003,W
	MOVWF	_PWM1P
;;[ICODE] function.c:36: 	_PWM0P [k23 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := iTemp2 [k6 lr5:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLevel_lightnum3_1_11}[r0x1049 ]
;	.line	36; "function.c"	PWM_LED2 = lightnum3;
	MOVF	r0x1004,W
	MOVWF	_PWM0P
;;[ICODE] function.c:36:  _return($1) :
;;[ICODE] function.c:36: 	eproc _ControlLevel [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	RETURN	
; exit point of _ControlLevel

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ControlLevel
;   _ControlLevel
;2 compiler assigned registers:
;   STK01
;   STK00
;; Starting pCode block
;;[ICODE] function.c:20:  _entry($2) :
;;[ICODE] function.c:20: 	proc _ControlLevelHigh [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_function__ControlLevelHigh	code
_ControlLevelHigh:
; 2 exit points
;;[ICODE] function.c:22: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:22: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	22; "function.c"	g_ucPWM_KeyChange = 0;
	BCF	_BITS_DATA0,2
;;[ICODE] function.c:23: 	send _MaxLight [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{argreg = 1}
;;[ICODE] function.c:23: 	send _MaxLight [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{argreg = 1}
;;[ICODE] function.c:23: 	send _MaxLight [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{argreg = 1}
;;[ICODE] function.c:23: 	iTemp2 [k11 lr9:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLevel [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
;	.line	23; "function.c"	ControlLevel(MaxLight,MaxLight,MaxLight);		
	MOVF	_MaxLight,W
	MOVWF	STK01
	MOVF	_MaxLight,W
	MOVWF	STK00
	MOVF	_MaxLight,W
	CALL	_ControlLevel
;;[ICODE] function.c:23:  _return($1) :
;;[ICODE] function.c:23: 	eproc _ControlLevelHigh [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _ControlLevelHigh

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] function.c:5:  _entry($2) :
;;[ICODE] function.c:5: 	proc _ControlLevelLow [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_function__ControlLevelLow	code
_ControlLevelLow:
; 2 exit points
;;[ICODE] function.c:7: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:7: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	7; "function.c"	g_ucPWM_KeyChange = 0;
	BCF	_BITS_DATA0,2
;;[ICODE] function.c:8: 	_PWM0P [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	8; "function.c"	PWM_LED0 =  PWM_LED1 = PWM_LED2 = 0;    //用于设置 PWM0 的高电平时间
	CLRF	_PWM0P
;;[ICODE] function.c:8: 	_PWM1P [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
	CLRF	_PWM1P
;;[ICODE] function.c:8: 	_PWM2P [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
	CLRF	_PWM2P
;;[ICODE] function.c:10: 	_PWMCON [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x80 {const-unsigned-char literal}
;	.line	10; "function.c"	PWMCON = 0x80;     //禁止 PWM0/BUZ 输出，PORTB5 端口作为 I/O 口
	MOVLW	0x80
	MOVWF	_PWMCON
;;[ICODE] function.c:11: 	iTemp3 [k13 lr10:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_T1CONbits [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000043 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:11: 	*(iTemp3 [k13 lr10:12 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	11; "function.c"	PWM0E = 0;         //禁止 PWM0 输出，PORTB5 端口作为 I/O 口    T1CON
	BCF	_T1CONbits,6
;;[ICODE] function.c:12: 	iTemp5 [k16 lr13:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_T1CONbits [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000043 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:12: 	*(iTemp5 [k16 lr13:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	12; "function.c"	T1EN = 0;
	BCF	_T1CONbits,7
;;[ICODE] function.c:13: 	iTemp7 [k20 lr16:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RAMPbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000070 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:13: 	*(iTemp7 [k20 lr16:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	13; "function.c"	MODSEL = 1;			//使能内置限流电阻
	BSF	_RAMPbits,7
;;[ICODE] function.c:15: 	iTemp9 [k24 lr19:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_PORTBbits [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:15: 	*(iTemp9 [k24 lr19:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	15; "function.c"	PORT_LED1 = 1;
	BSF	_PORTBbits,1
;;[ICODE] function.c:16: 	iTemp11 [k27 lr22:24 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PORTBbits [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:16: 	*(iTemp11 [k27 lr22:24 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	16; "function.c"	PORT_LED2 = 1;
	BSF	_PORTBbits,0
;;[ICODE] function.c:17: 	iTemp13 [k30 lr25:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_PORTBbits [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] function.c:17: 	*(iTemp13 [k30 lr25:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	17; "function.c"	PORT_LED3 = 1;		
	BSF	_PORTBbits,3
;;[ICODE] function.c:17:  _return($1) :
;;[ICODE] function.c:17: 	eproc _ControlLevelLow [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _ControlLevelLow


;	code size estimation:
;	   42+    0 =    42 instructions (   84 byte)

	end

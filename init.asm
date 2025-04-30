;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"init.c"
	list	p=18p018a0
	radix dec
	include "p18p018a0.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
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
	global	_InitRam
	global	_InitPwm
	global	_InitSystem
	global	_InitPort

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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_init	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] init.c:66:  _entry($2) :
;;[ICODE] init.c:66: 	proc _InitRam [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitRam	code
_InitRam:
; 2 exit points
;;[ICODE] init.c:68: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:68: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	68; "init.c"	BIT_TIMER_10MS = 0;
	BCF	_BITS_DATA0,0
;;[ICODE] init.c:69: 	iTemp3 [k8 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:69: 	*(iTemp3 [k8 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	69; "init.c"	IsLight = 0;
	BCF	_BITS_DATA0,5
;;[ICODE] init.c:71: 	_TempCount [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	71; "init.c"	TempCount = 0;
	CLRF	_TempCount
;;[ICODE] init.c:72: 	_TempFlag [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	72; "init.c"	TempFlag = 0;
	CLRF	_TempFlag
;;[ICODE] init.c:74: 	_SleepCount [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	74; "init.c"	SleepCount = 0;
	CLRF	_SleepCount
;;[ICODE] init.c:75: 	_SleepFlag [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	75; "init.c"	SleepFlag = 0;
	CLRF	_SleepFlag
;;[ICODE] init.c:75:  _return($1) :
;;[ICODE] init.c:75: 	eproc _InitRam [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitRam

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] init.c:59:  _entry($2) :
;;[ICODE] init.c:59: 	proc _InitPwm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitPwm	code
_InitPwm:
; 2 exit points
;;[ICODE] init.c:61: 	_AUXR [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	61; "init.c"	AUXR = 0;
	CLRF	_AUXR
;;[ICODE] init.c:62: 	_T1 [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xfe {const-unsigned-char literal}
;	.line	62; "init.c"	T1 = 0XFE;     //TI计数器
	MOVLW	0xfe
	MOVWF	_T1
;;[ICODE] init.c:63: 	_T1LOAD [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xfe {const-unsigned-char literal}
;	.line	63; "init.c"	T1LOAD = 0XFE;
	MOVLW	0xfe
	MOVWF	_T1LOAD
;;[ICODE] init.c:63:  _return($1) :
;;[ICODE] init.c:63: 	eproc _InitPwm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitPwm

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] init.c:45:  _entry($2) :
;;[ICODE] init.c:45: 	proc _InitSystem [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitSystem	code
_InitSystem:
; 2 exit points
;;[ICODE] init.c:47: 	_OSCCON [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	47; "init.c"	OSCCON = 0;     //高频	
	CLRF	_OSCCON
;;[ICODE] init.c:48: 	_T0 [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xce {const-unsigned-char literal}
;	.line	48; "init.c"	T0 =   0xCE;
	MOVLW	0xce
	MOVWF	_T0
;;[ICODE] init.c:50: 	_OPTION [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	50; "init.c"	OPTION = 0x00;	//下降沿中断 Fcpu 上升沿计数 TMR0 1/2预分频
	CLRF	_OPTION
;;[ICODE] init.c:51: 	_PCON [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PCON [k5 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x90 {const-unsigned-char literal}
;	.line	51; "init.c"	PCON |= 0x90; 	//使能WDT
	MOVLW	0x90
	IORWF	_PCON,F
;;[ICODE] init.c:53: 	_CMPCR [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	53; "init.c"	CMPCR = 0x00;  //关闭比较器
	CLRF	_CMPCR
;;[ICODE] init.c:54: 	_INTFLAG [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _INTFLAG [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfe {const-unsigned-char literal}
;	.line	54; "init.c"	INTFLAG &= 0xFE;
	BCF	_INTFLAG,0
;;[ICODE] init.c:55: 	_CMPCR [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _CMPCR [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x10 {const-unsigned-char literal}
;	.line	55; "init.c"	CMPCR |= 0X10;
	BSF	_CMPCR,4
;;[ICODE] init.c:55:  _return($1) :
;;[ICODE] init.c:55: 	eproc _InitSystem [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitSystem

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] init.c:4:  _entry($2) :
;;[ICODE] init.c:4: 	proc _InitPort [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitPort	code
_InitPort:
; 2 exit points
;;[ICODE] init.c:7: 	_PORTB [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	7; "init.c"	PORTB = 0;  // 0 disenable output, 1 enable output
	CLRF	_PORTB
;;[ICODE] init.c:12: 	_TRISB [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	12; "init.c"	TRISB = 0;    //1：input  0:output
	CLRF	_TRISB
;;[ICODE] init.c:13: 	_TRISB [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k3 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x4 {const-unsigned-char literal}
;	.line	13; "init.c"	TRISB |= DEF_SET_BIT2;
	BSF	_TRISB,2
;;[ICODE] init.c:14: 	_TRISB [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k3 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x10 {const-unsigned-char literal}
;	.line	14; "init.c"	TRISB |= DEF_SET_BIT4;
	BSF	_TRISB,4
;;[ICODE] init.c:15: 	_TRISB [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k3 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x20 {const-unsigned-char literal}
;	.line	15; "init.c"	TRISB |= DEF_SET_BIT5;
	BSF	_TRISB,5
;;[ICODE] init.c:19: 	_PHCON [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	19; "init.c"	PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull
	MOVLW	0xff
	MOVWF	_PHCON
;;[ICODE] init.c:20: 	_PHCON [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfb {const-unsigned-char literal}
;	.line	20; "init.c"	PHCON &= DEF_CLR_BIT2;
	BCF	_PHCON,2
;;[ICODE] init.c:21: 	_PHCON [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xef {const-unsigned-char literal}
;	.line	21; "init.c"	PHCON &= DEF_CLR_BIT4;
	BCF	_PHCON,4
;;[ICODE] init.c:25: 	_PDCON [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	25; "init.c"	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
	MOVLW	0xff
	MOVWF	_PDCON
;;[ICODE] init.c:26: 	_PDCON1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xdf {const-unsigned-char literal}
;	.line	26; "init.c"	PDCON1 = DEF_CLR_BIT5; // 1 disenable down pull ,0 enable down pull
	MOVLW	0xdf
	MOVWF	_PDCON1
;;[ICODE] init.c:30: 	_IOCB [k12 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	30; "init.c"	IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up
	CLRF	_IOCB
;;[ICODE] init.c:32: 	iTemp6 [k16 lr19:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_INTECONbits [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:32: 	*(iTemp6 [k16 lr19:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	32; "init.c"	PBIE = 0; // 0	disenable Port level change interrupt , 1 enable Port level change interrupt
	BCF	_INTECONbits,1
;;[ICODE] init.c:34: 	_ODCON [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	34; "init.c"	ODCON = 0; // 0 disenable open drain output, 1 enable open drain output
	CLRF	_ODCON
;;[ICODE] init.c:38: 	iTemp8 [k21 lr23:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_PORTBbits [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:38: 	*(iTemp8 [k21 lr23:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	38; "init.c"	PORT_LED1 = 0;  //灯光
	BCF	_PORTBbits,1
;;[ICODE] init.c:39: 	iTemp10 [k24 lr26:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PORTBbits [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:39: 	*(iTemp10 [k24 lr26:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	39; "init.c"	PORT_LED2 = 1;  //电机
	BSF	_PORTBbits,0
;;[ICODE] init.c:40: 	iTemp12 [k27 lr29:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_PORTBbits [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:40: 	*(iTemp12 [k27 lr29:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	40; "init.c"	PORT_LED3 = 0; //pow
	BCF	_PORTBbits,3
;;[ICODE] init.c:40:  _return($1) :
;;[ICODE] init.c:40: 	eproc _InitPort [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitPort


;	code size estimation:
;	   43+    0 =    43 instructions (   86 byte)

	end

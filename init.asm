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
;;[ICODE] init.c:73:  _entry($2) :
;;[ICODE] init.c:73: 	proc _InitRam [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitRam	code
_InitRam:
; 2 exit points
;;[ICODE] init.c:75: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:75: 	*(iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	75; "init.c"	BIT_TIMER_10MS = 0;
	BCF	_BITS_DATA0,0
;;[ICODE] init.c:76: 	iTemp3 [k8 lr6:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat] = &[_BITS_DATA0 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:76: 	*(iTemp3 [k8 lr6:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	76; "init.c"	IsLight = 0;
	BCF	_BITS_DATA0,5
;;[ICODE] init.c:78: 	_TempCount [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	78; "init.c"	TempCount = 0;
	CLRF	_TempCount
;;[ICODE] init.c:79: 	_TempFlag [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	79; "init.c"	TempFlag = 0;
	CLRF	_TempFlag
;;[ICODE] init.c:81: 	_SleepCount [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	81; "init.c"	SleepCount = 0;
	CLRF	_SleepCount
;;[ICODE] init.c:82: 	_SleepFlag [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	82; "init.c"	SleepFlag = 0;
	CLRF	_SleepFlag
;;[ICODE] init.c:82:  _return($1) :
;;[ICODE] init.c:82: 	eproc _InitRam [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitRam

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] init.c:66:  _entry($2) :
;;[ICODE] init.c:66: 	proc _InitPwm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitPwm	code
_InitPwm:
; 2 exit points
;;[ICODE] init.c:68: 	_AUXR [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	68; "init.c"	AUXR = 0;
	CLRF	_AUXR
;;[ICODE] init.c:69: 	_T1 [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xfe {const-unsigned-char literal}
;	.line	69; "init.c"	T1 = 0XFE;     //TI计数器
	MOVLW	0xfe
	MOVWF	_T1
;;[ICODE] init.c:70: 	_T1LOAD [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xfe {const-unsigned-char literal}
;	.line	70; "init.c"	T1LOAD = 0XFE;
	MOVLW	0xfe
	MOVWF	_T1LOAD
;;[ICODE] init.c:70:  _return($1) :
;;[ICODE] init.c:70: 	eproc _InitPwm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitPwm

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] init.c:52:  _entry($2) :
;;[ICODE] init.c:52: 	proc _InitSystem [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_init__InitSystem	code
_InitSystem:
; 2 exit points
;;[ICODE] init.c:54: 	_OSCCON [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	54; "init.c"	OSCCON = 0;     //高频	
	CLRF	_OSCCON
;;[ICODE] init.c:55: 	_T0 [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xce {const-unsigned-char literal}
;	.line	55; "init.c"	T0 =   0xCE;
	MOVLW	0xce
	MOVWF	_T0
;;[ICODE] init.c:57: 	_OPTION [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	57; "init.c"	OPTION = 0x00;	//下降沿中断 Fcpu 上升沿计数 TMR0 1/2预分频
	CLRF	_OPTION
;;[ICODE] init.c:58: 	_PCON [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PCON [k5 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x90 {const-unsigned-char literal}
;	.line	58; "init.c"	PCON |= 0x90; 	//使能WDT
	MOVLW	0x90
	IORWF	_PCON,F
;;[ICODE] init.c:60: 	_CMPCR [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	60; "init.c"	CMPCR = 0x00;  //关闭比较器
	CLRF	_CMPCR
;;[ICODE] init.c:61: 	_INTFLAG [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _INTFLAG [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfe {const-unsigned-char literal}
;	.line	61; "init.c"	INTFLAG &= 0xFE;
	BCF	_INTFLAG,0
;;[ICODE] init.c:62: 	_CMPCR [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _CMPCR [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x10 {const-unsigned-char literal}
;	.line	62; "init.c"	CMPCR |= 0X10;
	BSF	_CMPCR,4
;;[ICODE] init.c:62:  _return($1) :
;;[ICODE] init.c:62: 	eproc _InitSystem [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
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
;;[ICODE] init.c:7: 	_AUXR [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	7; "init.c"	AUXR = 0;
	CLRF	_AUXR
;;[ICODE] init.c:9: 	_PORTB [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	9; "init.c"	PORTB = 0;  // 0 disenable output, 1 enable output
	CLRF	_PORTB
;;[ICODE] init.c:14: 	_TRISB [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	14; "init.c"	TRISB = 0;    //1：input  0:output
	CLRF	_TRISB
;;[ICODE] init.c:15: 	_TRISB [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x4 {const-unsigned-char literal}
;	.line	15; "init.c"	TRISB |= DEF_SET_BIT2;
	BSF	_TRISB,2
;;[ICODE] init.c:16: 	_TRISB [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x10 {const-unsigned-char literal}
;	.line	16; "init.c"	TRISB |= DEF_SET_BIT4;
	BSF	_TRISB,4
;;[ICODE] init.c:17: 	_TRISB [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _TRISB [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x20 {const-unsigned-char literal}
;	.line	17; "init.c"	TRISB |= DEF_SET_BIT5;
	BSF	_TRISB,5
;;[ICODE] init.c:21: 	_PHCON [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	21; "init.c"	PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull
	MOVLW	0xff
	MOVWF	_PHCON
;;[ICODE] init.c:23: 	_PHCON [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfe {const-unsigned-char literal}
;	.line	23; "init.c"	PHCON &= DEF_CLR_BIT0;
	BCF	_PHCON,0
;;[ICODE] init.c:24: 	_PHCON [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfd {const-unsigned-char literal}
;	.line	24; "init.c"	PHCON &= DEF_CLR_BIT1;
	BCF	_PHCON,1
;;[ICODE] init.c:27: 	_PHCON [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xfb {const-unsigned-char literal}
;	.line	27; "init.c"	PHCON &= DEF_CLR_BIT2;
	BCF	_PHCON,2
;;[ICODE] init.c:28: 	_PHCON [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _PHCON [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0xef {const-unsigned-char literal}
;	.line	28; "init.c"	PHCON &= DEF_CLR_BIT4;
	BCF	_PHCON,4
;;[ICODE] init.c:32: 	_PDCON [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	32; "init.c"	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
	MOVLW	0xff
	MOVWF	_PDCON
;;[ICODE] init.c:33: 	_PDCON1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
;	.line	33; "init.c"	PDCON1 = 0xFF; // 1 disenable down pull ,0 enable down pull
	MOVLW	0xff
	MOVWF	_PDCON1
;;[ICODE] init.c:37: 	_IOCB [k15 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	37; "init.c"	IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up
	CLRF	_IOCB
;;[ICODE] init.c:39: 	iTemp8 [k19 lr24:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_INTECONbits [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000024 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:39: 	*(iTemp8 [k19 lr24:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	39; "init.c"	PBIE = 0; // 0	disenable Port level change interrupt , 1 enable Port level change interrupt
	BCF	_INTECONbits,1
;;[ICODE] init.c:40: 	_ODCON [k20 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	40; "init.c"	ODCON = 0;
	CLRF	_ODCON
;;[ICODE] init.c:41: 	_ODCON [k20 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _ODCON [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x1 {const-unsigned-char literal}
;	.line	41; "init.c"	ODCON |= DEF_SET_BIT0; // 0 disenable open drain output, 1 enable open drain output
	BSF	_ODCON,0
;;[ICODE] init.c:42: 	_ODCON [k20 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = _ODCON [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} | 0x2 {const-unsigned-char literal}
;	.line	42; "init.c"	ODCON |= DEF_SET_BIT1;
	BSF	_ODCON,1
;;[ICODE] init.c:45: 	iTemp12 [k26 lr32:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_PORTBbits [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:45: 	*(iTemp12 [k26 lr32:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	45; "init.c"	PORT_LED1 = 1;  //灯光  1：灭  0：亮
	BSF	_PORTBbits,1
;;[ICODE] init.c:46: 	iTemp14 [k29 lr35:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PORTBbits [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:46: 	*(iTemp14 [k29 lr35:37 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	46; "init.c"	PORT_LED2 = 1;  //电机 1：灭  0：亮
	BSF	_PORTBbits,0
;;[ICODE] init.c:47: 	iTemp16 [k32 lr38:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_PORTBbits [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] init.c:47: 	*(iTemp16 [k32 lr38:40 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	47; "init.c"	PORT_LED3 = 0; //pow
	BCF	_PORTBbits,3
;;[ICODE] init.c:47:  _return($1) :
;;[ICODE] init.c:47: 	eproc _InitPort [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _InitPort


;	code size estimation:
;	   48+    0 =    48 instructions (   96 byte)

	end

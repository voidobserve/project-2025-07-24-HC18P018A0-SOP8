;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"interrupt.c"
	list	p=18p018a0
	radix dec
	include "p18p018a0.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_Interrupt
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
	extern	___sdcc_saved_fsr

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
	global	_InterruptFunc

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
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x0008
__sdcc_interrupt:
;***
;  pBlock Stats: dbName = I
;***
;; Starting pCode block
;;[ICODE] interrupt.c:6:  _entry($8) :
;;[ICODE] interrupt.c:6: 	proc _InterruptFunc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_InterruptFunc:
; 0 exit points
;	.line	6; "interrupt.c"	void InterruptFunc(void) __interrupt 0
	MOVWF	WSAVE
	SWAPF	STATUS,W
	CLRF	STATUS
	MOVWF	SSAVE
	BANKSEL	PCLATH
	MOVF	PCLATH,W
	CLRF	PCLATH
	MOVWF	PSAVE
	MOVF	FSR,W
;	.line	8; "interrupt.c"	if (PBIF)//产生端口电平变化中断
	MOVWF	___sdcc_saved_fsr
;	.line	10; "interrupt.c"	PBIF = 0;
	BTFSC	_INTFLAGbits,1
;	.line	13; "interrupt.c"	if (T0IF)//产生TMR0溢出中断
	BCF	_INTFLAGbits,1
	BTFSS	_INTFLAGbits,0
	GOTO	_00108_DS_
;;[ICODE] interrupt.c:13: 	if iTemp7 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} fixed}[r0x1046 ] == 0 goto __iffalse_1($4)
;;[ICODE] interrupt.c:15: 	iTemp9 [k16 lr15:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_INTFLAGbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000027 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] interrupt.c:15: 	*(iTemp9 [k16 lr15:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	15; "interrupt.c"	T0IF = 0;
	BCF	_INTFLAGbits,0
;;[ICODE] interrupt.c:16: 	_T0 [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xd9 {const-unsigned-char literal}
;	.line	16; "interrupt.c"	T0 = 217;
	MOVLW	0xd9
	MOVWF	_T0
;;[ICODE] interrupt.c:16:  __iffalse_1($4) :
;;[ICODE] interrupt.c:20: 	_g_ucTimer10msCount [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimer10msCount [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
_00108_DS_:
;	.line	20; "interrupt.c"	g_ucTimer10msCount++;		
	INCF	_g_ucTimer10msCount,F
;;[ICODE] interrupt.c:26: 	iTemp13 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0xc8 {const-unsigned-char literal} == _g_ucTimer10msCount [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;	.line	26; "interrupt.c"	if (TIMER_COUNT_10MS == g_ucTimer10msCount)
	MOVF	_g_ucTimer10msCount,W
	XORLW	0xc8
	BTFSS	STATUS,2
	GOTO	_00111_DS_
;;[ICODE] interrupt.c:26: 	if iTemp13 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($7)
;;[ICODE] interrupt.c:28: 	_g_ucTimer10msCount [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	28; "interrupt.c"	g_ucTimer10msCount = 0;
	CLRF	_g_ucTimer10msCount
;;[ICODE] interrupt.c:29: 	iTemp16 [k27 lr25:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA0 [k24 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] interrupt.c:29: 	*(iTemp16 [k27 lr25:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	29; "interrupt.c"	BIT_TIMER_10MS = 1;
	BSF	_BITS_DATA0,0
;;[ICODE] interrupt.c:29:  _return($7) :
;;[ICODE] interrupt.c:29: 	eproc _InterruptFunc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00111_DS_:
	MOVF	___sdcc_saved_fsr,W
	BANKSEL	FSR
	MOVWF	FSR
	MOVF	PSAVE,W
	MOVWF	PCLATH
	CLRF	STATUS
	SWAPF	SSAVE,W
	MOVWF	STATUS
	SWAPF	WSAVE,F
	SWAPF	WSAVE,W
END_OF_INTERRUPT:
	RETFIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_interrupt	code

;	code size estimation:
;	   33+    2 =    35 instructions (   74 byte)

	end

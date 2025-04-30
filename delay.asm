;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"delay.c"
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
	global	_DelayMs

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_delay_0	udata
r0x1000	res	1
r0x1001	res	1
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
code_delay	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x1000
;   r0x1001
;; Starting pCode block
;;[ICODE] delay.c:8:  _entry($5) :
;;[ICODE] delay.c:8: 	proc _DelayMs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_delay__DelayMs	code
_DelayMs:
; 2 exit points
;;[ICODE] delay.c:11: 	iTemp2 [k5 lr3:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _DelayMs_byTimer_1_1}[r0x1045 ] := 0xfa {const-unsigned-char literal}
;	.line	11; "delay.c"	while(byTimer--)   //1ms
	MOVLW	0xfa
	MOVWF	r0x1000
;;[ICODE] delay.c:11:  _whilecontinue_0($1) :
;;[ICODE] delay.c:11: 	iTemp1 [k4 lr6:8 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char fixed}[r0x1046 ] := iTemp2 [k5 lr3:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _DelayMs_byTimer_1_1}[r0x1045 ]
_00105_DS_:
	MOVF	r0x1000,W
	MOVWF	r0x1001
;;[ICODE] delay.c:11: 	iTemp2 [k5 lr3:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _DelayMs_byTimer_1_1}[r0x1045 ] = iTemp2 [k5 lr3:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _DelayMs_byTimer_1_1}[r0x1045 ] - 0x1 {const-unsigned-char literal}
	DECF	r0x1000,F
;;[ICODE] delay.c:11: 	if iTemp1 [k4 lr6:8 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char fixed}[r0x1046 ] != 0 goto _whilecontinue_0($1)
	MOVF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00105_DS_
;;[ICODE] delay.c:11:  _return($4) :
;;[ICODE] delay.c:11: 	eproc _DelayMs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
	RETURN	
; exit point of _DelayMs


;	code size estimation:
;	    9+    0 =     9 instructions (   18 byte)

	end

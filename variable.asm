;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"variable.c"
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
	global	_BITS_DATA0
	global	_BITS_DATA1
	global	_g_ucTimer10msCount
	global	_g_ucTimerWorkCount
	global	_g_ucFlashTimeHigh
	global	_g_ucFlashTimeLow
	global	_g_ucFlashTimeHigh1
	global	_g_ucFlashTimeLow1
	global	_g_ucFlashTimeHigh2
	global	_g_ucFlashTimeLow2
	global	_LvdModel
	global	_LvdDebounceNew
	global	_LvdDebounceOld
	global	_LvdModelCount
	global	_LvdLightCount
	global	_TempCount
	global	_TempFlag
	global	_SleepCount
	global	_SleepFlag
	global	_MaxLight
	global	_g_cucTIMER_COUNT_STATE

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_variable_0	udata
_BITS_DATA0	res	1

UD_variable_1	udata
_BITS_DATA1	res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_variable_0	idata
_g_ucTimer10msCount
	db	0x00


ID_variable_1	idata
_g_ucTimerWorkCount
	db	0x00


ID_variable_2	idata
_g_ucFlashTimeHigh
	db	0x00


ID_variable_3	idata
_g_ucFlashTimeLow
	db	0x00


ID_variable_4	idata
_g_ucFlashTimeHigh1
	db	0x00


ID_variable_5	idata
_g_ucFlashTimeLow1
	db	0x00


ID_variable_6	idata
_g_ucFlashTimeHigh2
	db	0x00


ID_variable_7	idata
_g_ucFlashTimeLow2
	db	0x00


ID_variable_8	idata
_LvdModel
	db	0x00


ID_variable_9	idata
_LvdDebounceNew
	db	0x00


ID_variable_10	idata
_LvdDebounceOld
	db	0x00


ID_variable_11	idata
_LvdModelCount
	db	0x00


ID_variable_12	idata
_LvdLightCount
	db	0x00


ID_variable_13	idata
_TempCount
	db	0x00


ID_variable_14	idata
_TempFlag
	db	0x00


ID_variable_15	idata
_SleepCount
	db	0x00


ID_variable_16	idata
_SleepFlag
	db	0x00


ID_variable_17	idata
_MaxLight
	db	0x00


ID_variable_18	code
_g_cucTIMER_COUNT_STATE
	retlw 0x01
	retlw 0x01
	retlw 0x01
	retlw 0x01
	retlw 0x04
	retlw 0x04
	retlw 0x01
	retlw 0x04
	retlw 0x01
	retlw 0x01

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_variable	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end

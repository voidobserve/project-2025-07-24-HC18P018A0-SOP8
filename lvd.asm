;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lvd.c"
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
	global	_ControlLvdCfg
	global	_ConfigureLvd
	global	_CheckLvdElectric
	global	_CheckLvd

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
code_lvd	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] lvd.c:161:  _entry($2) :
;;[ICODE] lvd.c:161: 	proc _ControlLvdCfg [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
S_lvd__ControlLvdCfg	code
_ControlLvdCfg:
; 2 exit points
;;[ICODE] lvd.c:164:  _return($1) :
;;[ICODE] lvd.c:164: 	eproc _ControlLvdCfg [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	164; "lvd.c"	if(num == 1){}
	RETURN	
; exit point of _ControlLvdCfg

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] lvd.c:109:  _entry($2) :
;;[ICODE] lvd.c:109: 	proc _ConfigureLvd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_lvd__ConfigureLvd	code
_ConfigureLvd:
; 2 exit points
;;[ICODE] lvd.c:159:  _return($1) :
;;[ICODE] lvd.c:159: 	eproc _ConfigureLvd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	159; "lvd.c"	}
	RETURN	
; exit point of _ConfigureLvd

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] lvd.c:35:  _entry($2) :
;;[ICODE] lvd.c:35: 	proc _CheckLvdElectric [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
S_lvd__CheckLvdElectric	code
_CheckLvdElectric:
; 2 exit points
;;[ICODE] lvd.c:39:  _return($1) :
;;[ICODE] lvd.c:39: 	eproc _CheckLvdElectric [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	39; "lvd.c"	if(num == 1){}
	RETURN	
; exit point of _CheckLvdElectric

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;[ICODE] lvd.c:9:  _entry($2) :
;;[ICODE] lvd.c:9: 	proc _CheckLvd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_lvd__CheckLvd	code
_CheckLvd:
; 2 exit points
;;[ICODE] lvd.c:31:  _return($1) :
;;[ICODE] lvd.c:31: 	eproc _CheckLvd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	31; "lvd.c"	}
	RETURN	
; exit point of _CheckLvd


;	code size estimation:
;	    4+    0 =     4 instructions (    8 byte)

	end

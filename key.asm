;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (CYGWIN)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"key.c"
	list	p=18p018a0
	radix dec
	include "p18p018a0.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
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
	global	_ScanKey
	global	_longpress_cnt
	global	_clink_event
	global	_long_f
	global	_holdOn_f

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_key_0	udata
r0x1008	res	1
r0x1009	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_key_0	idata
_longpress_cnt
	db	0x00, 0x00


ID_key_1	idata
_clink_event
	db	0x00


ID_key_2	idata
_long_f
	db	0x00


ID_key_3	idata
_holdOn_f
	db	0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_key	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _PowOn
;   _MotoSwitch
;   _LedSwitch
;   _PowOn
;   _PowOff
;   _PowOff
;   _PowOn
;   _MotoSwitch
;   _LedSwitch
;   _PowOn
;   _PowOff
;   _PowOff
;2 compiler assigned registers:
;   r0x1008
;   r0x1009
;; Starting pCode block
;;[ICODE] key.c:11:  _entry($43) :
;;[ICODE] key.c:11: 	proc _ScanKey [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_key__ScanKey	code
_ScanKey:
; 2 exit points
;;[ICODE] key.c:14: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104B ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	14; "key.c"	if(PORT_KEY_1 == 0 || PORT_KEY_2 == 0 || PORT_KEY_3 == 1 )
	BTFSS	_PORTBbits,2
	GOTO	_00141_DS_
;;[ICODE] key.c:14: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104B ] == 0 goto __iftrue_15($37)
;;[ICODE] key.c:14: 	iTemp4 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp5 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104B ] = @[iTemp4 [k9 lr7:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	BTFSS	_PORTBbits,4
	GOTO	_00141_DS_
;;[ICODE] key.c:14: 	if iTemp5 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104B ] == 0 goto __iftrue_15($37)
;;[ICODE] key.c:14: 	iTemp7 [k13 lr11:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp8 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104B ] = @[iTemp7 [k13 lr11:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	CLRF	r0x1008
	BTFSC	_PORTBbits,5
	INCF	r0x1008,F
;;[ICODE] key.c:14: 	iTemp9 [k15 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] = (char register)iTemp8 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104B ]
	MOVF	r0x1008,W
	MOVWF	r0x1009
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00142_DS_
;;[ICODE] key.c:14: 	if iTemp10 [k16 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_15($38)
;;[ICODE] key.c:14:  __iftrue_15($37) :
;;[ICODE] key.c:17: 	iTemp11 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0xffff {const-unsigned-int literal}
;;unsigned compare: left < lit(0xFFFF=65535), size=2
_00141_DS_:
;	.line	17; "key.c"	if(longpress_cnt < 0xffff) {
	MOVLW	0xff
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00199_DS_
	MOVLW	0xff
	SUBWF	_longpress_cnt,W
_00199_DS_:
	BTFSC	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:17: 	if iTemp11 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_0($2)
;;[ICODE] key.c:18: 	_longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} + 0x1 {const-unsigned-char literal}
;	.line	18; "key.c"	longpress_cnt++;
	INCF	_longpress_cnt,F
	BTFSC	STATUS,2
	INCF	(_longpress_cnt + 1),F
;;[ICODE] key.c:20: 	_SleepCount [k22 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
;	.line	20; "key.c"	SleepCount = 0;
	CLRF	_SleepCount
	CLRF	(_SleepCount + 1)
;;[ICODE] key.c:20:  __iffalse_0($2) :
;;[ICODE] key.c:23: 	iTemp16 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0x50 {unsigned-int literal}
;;unsigned compare: left < lit(0x50=80), size=2
_00106_DS_:
;	.line	23; "key.c"	if(longpress_cnt < 80){
	MOVLW	0x00
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00200_DS_
	MOVLW	0x50
	SUBWF	_longpress_cnt,W
_00200_DS_:
	BTFSC	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:23: 	if iTemp16 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_4($12)
;;[ICODE] key.c:26: 	iTemp18 [k27 lr26:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:26: 	iTemp19 [k28 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104B ] = @[iTemp18 [k27 lr26:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	26; "key.c"	if(PORT_KEY_1 == 0) {
	BTFSC	_PORTBbits,2
	GOTO	_00113_DS_
;;[ICODE] key.c:26: 	if iTemp19 [k28 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104B ] != 0 goto __iffalse_3($9)
;;[ICODE] key.c:28: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	28; "key.c"	clink_event = 1;  
	MOVLW	0x01
	MOVWF	_clink_event
;;[ICODE] key.c:28: 	 goto __iffalse_4($12)
	GOTO	_00116_DS_
;;[ICODE] key.c:28:  __iffalse_3($9) :
;;[ICODE] key.c:30: 	iTemp22 [k33 lr33:35 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:30: 	iTemp23 [k34 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104B ] = @[iTemp22 [k33 lr33:35 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00113_DS_:
;	.line	30; "key.c"	} else if(PORT_KEY_2 == 0) {
	BTFSC	_PORTBbits,4
	GOTO	_00110_DS_
;;[ICODE] key.c:30: 	if iTemp23 [k34 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104B ] != 0 goto __iffalse_2($6)
;;[ICODE] key.c:32: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x2 {const-unsigned-char literal}
;	.line	32; "key.c"	clink_event = 2; 
	MOVLW	0x02
	MOVWF	_clink_event
;;[ICODE] key.c:32: 	 goto __iffalse_4($12)
	GOTO	_00116_DS_
;;[ICODE] key.c:32:  __iffalse_2($6) :
;;[ICODE] key.c:34: 	iTemp26 [k38 lr40:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:34: 	iTemp27 [k39 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104B ] = @[iTemp26 [k38 lr40:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00110_DS_:
;	.line	34; "key.c"	} else if(PORT_KEY_3 == 1) {
	CLRF	r0x1008
	BTFSC	_PORTBbits,5
	INCF	r0x1008,F
;;[ICODE] key.c:34: 	iTemp28 [k40 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] = (char register)iTemp27 [k39 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104B ]
	MOVF	r0x1008,W
	MOVWF	r0x1009
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00116_DS_
;;[ICODE] key.c:34: 	if iTemp29 [k41 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_4($12)
;;[ICODE] key.c:36: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x3 {const-unsigned-char literal}
;	.line	36; "key.c"	clink_event = 3; 
	MOVLW	0x03
	MOVWF	_clink_event
;;[ICODE] key.c:36:  __iffalse_4($12) :
;;[ICODE] key.c:43: 	iTemp31 [k43 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0x64 {unsigned-int literal}
;;unsigned compare: left < lit(0x64=100), size=2
_00116_DS_:
;	.line	43; "key.c"	if(longpress_cnt >= 100){
	MOVLW	0x00
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00201_DS_
	MOVLW	0x64
	SUBWF	_longpress_cnt,W
_00201_DS_:
	BTFSS	STATUS,0
	GOTO	_00146_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:43: 	if iTemp31 [k43 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} != 0 goto _return($42)
;;[ICODE] key.c:45: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	45; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:47: 	iTemp34 [k47 lr51:53 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:47: 	iTemp35 [k48 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104B ] = @[iTemp34 [k47 lr51:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	47; "key.c"	if(PORT_KEY_3 == 1){
	CLRF	r0x1008
	BTFSC	_PORTBbits,5
	INCF	r0x1008,F
;;[ICODE] key.c:47: 	iTemp36 [k49 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104C ] = (char register)iTemp35 [k48 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104B ]
	MOVF	r0x1008,W
	MOVWF	r0x1009
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00146_DS_
;;[ICODE] key.c:47: 	if iTemp37 [k50 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($42)
;;[ICODE] key.c:48: 	_long_f [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	48; "key.c"	long_f = 1;
	MOVLW	0x01
	MOVWF	_long_f
;;[ICODE] key.c:50: 	iTemp39 [k54 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0xff {const-unsigned-char literal}
;;unsigned compare: left < lit(0xFF=255), size=1
;	.line	50; "key.c"	if(g_ucTimerWorkCount <  0xff) {
	MOVLW	0xff
;	.line	51; "key.c"	g_ucTimerWorkCount++;
	SUBWF	_g_ucTimerWorkCount,W
;	.line	53; "key.c"	PowOn();
	BTFSS	STATUS,0
	INCF	_g_ucTimerWorkCount,F
	CALL	_PowOn
	GOTO	_00146_DS_
;;[ICODE] key.c:53:  __iffalse_15($38) :
;;[ICODE] key.c:61: 	_longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
_00142_DS_:
;	.line	61; "key.c"	longpress_cnt = 0;
	CLRF	_longpress_cnt
	CLRF	(_longpress_cnt + 1)
;;[ICODE] key.c:63: 	iTemp45 [k61 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x1 {const-unsigned-char literal}
;	.line	63; "key.c"	if(clink_event == 1){
	MOVF	_clink_event,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00129_DS_
;;[ICODE] key.c:63: 	if iTemp45 [k61 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_10($25)
;;[ICODE] key.c:65: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	65; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:68: 	iTemp47 [k64 lr70:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoSwitch [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	68; "key.c"	MotoSwitch();
	CALL	_MotoSwitch
;;[ICODE] key.c:68: 	 goto __ifend_10($26)
	GOTO	_00130_DS_
;;[ICODE] key.c:68:  __iffalse_10($25) :
;;[ICODE] key.c:69: 	iTemp48 [k65 lr73:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x2 {const-unsigned-char literal}
_00129_DS_:
;	.line	69; "key.c"	} else if(clink_event == 2){
	MOVF	_clink_event,W
	XORLW	0x02
	BTFSS	STATUS,2
	GOTO	_00126_DS_
;;[ICODE] key.c:69: 	if iTemp48 [k65 lr73:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_9($22)
;;[ICODE] key.c:70: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	70; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:73: 	iTemp50 [k68 lr76:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedSwitch [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	73; "key.c"	LedSwitch();
	CALL	_LedSwitch
;;[ICODE] key.c:73: 	 goto __ifend_10($26)
	GOTO	_00130_DS_
;;[ICODE] key.c:73:  __iffalse_9($22) :
;;[ICODE] key.c:75: 	iTemp51 [k69 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x3 {const-unsigned-char literal}
_00126_DS_:
;	.line	75; "key.c"	} else if(clink_event == 3){
	MOVF	_clink_event,W
	XORLW	0x03
	BTFSS	STATUS,2
	GOTO	_00130_DS_
;;[ICODE] key.c:75: 	if iTemp51 [k69 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __ifend_10($26)
;;[ICODE] key.c:77: 	_clink_event [k29 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	77; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:79: 	iTemp53 [k71 lr82:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOn [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	79; "key.c"	PowOn();
	CALL	_PowOn
;;[ICODE] key.c:80: 	_g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	80; "key.c"	g_ucTimerWorkCount++;  //10ms
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:81: 	_holdOn_f [k75 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	81; "key.c"	holdOn_f = 1;
	MOVLW	0x01
	MOVWF	_holdOn_f
;;[ICODE] key.c:81:  __ifend_10($26) :
;;[ICODE] key.c:87: 	if _holdOn_f [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0 goto __iffalse_12($31)
_00130_DS_:
;	.line	87; "key.c"	if(holdOn_f) {
	MOVLW	0x00
	IORWF	_holdOn_f,W
	BTFSC	STATUS,2
	GOTO	_00135_DS_
;;[ICODE] key.c:89: 	iTemp58 [k77 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0x3c {const-unsigned-char literal}
;;unsigned compare: left < lit(0x3C=60), size=1
;	.line	89; "key.c"	if(g_ucTimerWorkCount <  60) {
	MOVLW	0x3c
	SUBWF	_g_ucTimerWorkCount,W
	BTFSC	STATUS,0
	GOTO	_00132_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:89: 	if iTemp58 [k77 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_11($28)
;;[ICODE] key.c:90: 	_g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	90; "key.c"	g_ucTimerWorkCount++;
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:90: 	 goto __iffalse_12($31)
	GOTO	_00135_DS_
;;[ICODE] key.c:90:  __iffalse_11($28) :
;;[ICODE] key.c:92: 	_holdOn_f [k75 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00132_DS_:
;	.line	92; "key.c"	holdOn_f = 0;
	CLRF	_holdOn_f
;;[ICODE] key.c:93: 	_g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	93; "key.c"	g_ucTimerWorkCount = 0;
	CLRF	_g_ucTimerWorkCount
;;[ICODE] key.c:94: 	iTemp64 [k84 lr96:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOff [k83 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	94; "key.c"	PowOff();
	CALL	_PowOff
;;[ICODE] key.c:94:  __iffalse_12($31) :
;;[ICODE] key.c:102: 	if _long_f [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0 goto _return($42)
_00135_DS_:
;	.line	102; "key.c"	if(long_f){
	MOVLW	0x00
	IORWF	_long_f,W
	BTFSC	STATUS,2
	GOTO	_00146_DS_
;;[ICODE] key.c:104: 	iTemp65 [k85 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0x3c {const-unsigned-char literal}
;;unsigned compare: left < lit(0x3C=60), size=1
;	.line	104; "key.c"	if(g_ucTimerWorkCount <  60) {
	MOVLW	0x3c
	SUBWF	_g_ucTimerWorkCount,W
	BTFSC	STATUS,0
	GOTO	_00137_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:104: 	if iTemp65 [k85 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_13($33)
;;[ICODE] key.c:106: 	_g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	106; "key.c"	g_ucTimerWorkCount++;
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:106: 	 goto _return($42)
	GOTO	_00146_DS_
;;[ICODE] key.c:106:  __iffalse_13($33) :
;;[ICODE] key.c:110: 	_long_f [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00137_DS_:
;	.line	110; "key.c"	long_f = 0;
	CLRF	_long_f
;;[ICODE] key.c:111: 	_g_ucTimerWorkCount [k53 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	111; "key.c"	g_ucTimerWorkCount = 0;
	CLRF	_g_ucTimerWorkCount
;;[ICODE] key.c:112: 	iTemp71 [k91 lr107:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOff [k83 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	112; "key.c"	PowOff();
	CALL	_PowOff
;;[ICODE] key.c:112:  _return($42) :
;;[ICODE] key.c:112: 	eproc _ScanKey [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00146_DS_:
	RETURN	
; exit point of _ScanKey


;	code size estimation:
;	  130+    0 =   130 instructions (  260 byte)

	end

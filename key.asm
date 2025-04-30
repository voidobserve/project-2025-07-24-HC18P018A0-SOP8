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
	global	_ScanKey
	global	_test_turn
	global	_longpress_cnt
	global	_clink_event
	global	_long_f
	global	_turn

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
r0x1006	res	1
r0x1007	res	1
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
_turn
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
;   _PowOff
;   _PowOn
;   _PowOff
;; Starting pCode block
;;[ICODE] key.c:87:  _entry($5) :
;;[ICODE] key.c:87: 	proc _test_turn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_key__test_turn	code
_test_turn:
; 2 exit points
;;[ICODE] key.c:90: 	if _turn [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0 goto __iffalse_13($2)
;	.line	90; "key.c"	if(turn) {
	MOVLW	0x00
	IORWF	_turn,W
	BTFSC	STATUS,2
	GOTO	_00191_DS_
;;[ICODE] key.c:91: 	_turn [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	91; "key.c"	turn = 0;
	CLRF	_turn
;;[ICODE] key.c:92: 	iTemp1 [k5 lr5:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOn [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	92; "key.c"	PowOn();
	CALL	_PowOn
;;[ICODE] key.c:92: 	 goto _return($4)
	GOTO	_00193_DS_
;;[ICODE] key.c:92:  __iffalse_13($2) :
;;[ICODE] key.c:94: 	_turn [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
_00191_DS_:
;	.line	94; "key.c"	turn = 1;
	MOVLW	0x01
	MOVWF	_turn
;;[ICODE] key.c:95: 	iTemp3 [k8 lr9:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOff [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	95; "key.c"	PowOff();
	CALL	_PowOff
;;[ICODE] key.c:95:  _return($4) :
;;[ICODE] key.c:95: 	eproc _test_turn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00193_DS_:
	RETURN	
; exit point of _test_turn

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _MotoSwitch
;   _LedSwitch
;   _MotoSwitch
;   _LedSwitch
;2 compiler assigned registers:
;   r0x1006
;   r0x1007
;; Starting pCode block
;;[ICODE] key.c:11:  _entry($36) :
;;[ICODE] key.c:11: 	proc _ScanKey [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_key__ScanKey	code
_ScanKey:
; 2 exit points
;;[ICODE] key.c:14: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x1049 ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	14; "key.c"	if(PORT_KEY_1 == 0 || PORT_KEY_2 == 0 || PORT_KEY_3 == 1 )
	BTFSS	_PORTBbits,2
	GOTO	_00134_DS_
;;[ICODE] key.c:14: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x1049 ] == 0 goto __iftrue_12($30)
;;[ICODE] key.c:14: 	iTemp4 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp5 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x1049 ] = @[iTemp4 [k9 lr7:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	BTFSS	_PORTBbits,4
	GOTO	_00134_DS_
;;[ICODE] key.c:14: 	if iTemp5 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x1049 ] == 0 goto __iftrue_12($30)
;;[ICODE] key.c:14: 	iTemp7 [k13 lr11:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp8 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x1049 ] = @[iTemp7 [k13 lr11:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	CLRF	r0x1006
	BTFSC	_PORTBbits,5
	INCF	r0x1006,F
;;[ICODE] key.c:14: 	iTemp9 [k15 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104A ] = (char register)iTemp8 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x1049 ]
	MOVF	r0x1006,W
	MOVWF	r0x1007
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00135_DS_
;;[ICODE] key.c:14: 	if iTemp10 [k16 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_12($31)
;;[ICODE] key.c:14:  __iftrue_12($30) :
;;[ICODE] key.c:17: 	iTemp11 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0xffff {const-unsigned-int literal}
;;unsigned compare: left < lit(0xFFFF=65535), size=2
_00134_DS_:
;	.line	17; "key.c"	if(longpress_cnt < 0xffff) {
	MOVLW	0xff
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00183_DS_
	MOVLW	0xff
	SUBWF	_longpress_cnt,W
_00183_DS_:
	BTFSC	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:17: 	if iTemp11 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_0($2)
;;[ICODE] key.c:18: 	_longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} + 0x1 {const-unsigned-char literal}
;	.line	18; "key.c"	longpress_cnt++;
	INCF	_longpress_cnt,F
	BTFSC	STATUS,2
	INCF	(_longpress_cnt + 1),F
;;[ICODE] key.c:18:  __iffalse_0($2) :
;;[ICODE] key.c:21: 	iTemp15 [k22 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0x32 {unsigned-int literal}
;;unsigned compare: left < lit(0x32=50), size=2
_00106_DS_:
;	.line	21; "key.c"	if(longpress_cnt < 50){
	MOVLW	0x00
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00184_DS_
	MOVLW	0x32
	SUBWF	_longpress_cnt,W
_00184_DS_:
	BTFSC	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:21: 	if iTemp15 [k22 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_4($12)
;;[ICODE] key.c:24: 	iTemp17 [k25 lr25:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:24: 	iTemp18 [k26 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x1049 ] = @[iTemp17 [k25 lr25:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	24; "key.c"	if(PORT_KEY_1 == 0) {
	BTFSC	_PORTBbits,2
	GOTO	_00113_DS_
;;[ICODE] key.c:24: 	if iTemp18 [k26 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x1049 ] != 0 goto __iffalse_3($9)
;;[ICODE] key.c:26: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	26; "key.c"	clink_event = 1;
	MOVLW	0x01
	MOVWF	_clink_event
;;[ICODE] key.c:26: 	 goto __iffalse_4($12)
	GOTO	_00116_DS_
;;[ICODE] key.c:26:  __iffalse_3($9) :
;;[ICODE] key.c:28: 	iTemp21 [k31 lr32:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:28: 	iTemp22 [k32 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x1049 ] = @[iTemp21 [k31 lr32:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00113_DS_:
;	.line	28; "key.c"	} else if(PORT_KEY_2 == 0) {
	BTFSC	_PORTBbits,4
	GOTO	_00110_DS_
;;[ICODE] key.c:28: 	if iTemp22 [k32 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x1049 ] != 0 goto __iffalse_2($6)
;;[ICODE] key.c:30: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x2 {const-unsigned-char literal}
;	.line	30; "key.c"	clink_event = 2;
	MOVLW	0x02
	MOVWF	_clink_event
;;[ICODE] key.c:30: 	 goto __iffalse_4($12)
	GOTO	_00116_DS_
;;[ICODE] key.c:30:  __iffalse_2($6) :
;;[ICODE] key.c:32: 	iTemp25 [k36 lr39:41 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:32: 	iTemp26 [k37 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x1049 ] = @[iTemp25 [k36 lr39:41 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00110_DS_:
;	.line	32; "key.c"	} else if(PORT_KEY_3 == 1) {
	CLRF	r0x1006
	BTFSC	_PORTBbits,5
	INCF	r0x1006,F
;;[ICODE] key.c:32: 	iTemp27 [k38 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104A ] = (char register)iTemp26 [k37 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x1049 ]
	MOVF	r0x1006,W
	MOVWF	r0x1007
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00116_DS_
;;[ICODE] key.c:32: 	if iTemp28 [k39 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_4($12)
;;[ICODE] key.c:34: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x3 {const-unsigned-char literal}
;	.line	34; "key.c"	clink_event = 3;
	MOVLW	0x03
	MOVWF	_clink_event
;;[ICODE] key.c:34:  __iffalse_4($12) :
;;[ICODE] key.c:41: 	iTemp30 [k41 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0x64 {unsigned-int literal}
;;unsigned compare: left < lit(0x64=100), size=2
_00116_DS_:
;	.line	41; "key.c"	if(longpress_cnt >= 100){
	MOVLW	0x00
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00185_DS_
	MOVLW	0x64
	SUBWF	_longpress_cnt,W
_00185_DS_:
	BTFSS	STATUS,0
	GOTO	_00139_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:41: 	if iTemp30 [k41 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} != 0 goto _return($35)
;;[ICODE] key.c:43: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	43; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:45: 	iTemp33 [k45 lr50:52 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:45: 	iTemp34 [k46 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x1049 ] = @[iTemp33 [k45 lr50:52 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	45; "key.c"	if(PORT_KEY_3 == 1){
	CLRF	r0x1006
	BTFSC	_PORTBbits,5
	INCF	r0x1006,F
;;[ICODE] key.c:45: 	iTemp35 [k47 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104A ] = (char register)iTemp34 [k46 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x1049 ]
	MOVF	r0x1006,W
	MOVWF	r0x1007
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00139_DS_
;;[ICODE] key.c:45: 	if iTemp36 [k48 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($35)
;;[ICODE] key.c:46: 	_long_f [k49 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	46; "key.c"	long_f = 1;
	MOVLW	0x01
	MOVWF	_long_f
;;[ICODE] key.c:48: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	48; "key.c"	g_ucTimerWorkCount++;  //10ms
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:48: 	 goto _return($35)
	GOTO	_00139_DS_
;;[ICODE] key.c:48:  __iffalse_12($31) :
;;[ICODE] key.c:56: 	_longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
_00135_DS_:
;	.line	56; "key.c"	longpress_cnt = 0;
	CLRF	_longpress_cnt
	CLRF	(_longpress_cnt + 1)
;;[ICODE] key.c:58: 	iTemp42 [k56 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x1 {const-unsigned-char literal}
;	.line	58; "key.c"	if(clink_event == 1){
	MOVF	_clink_event,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00127_DS_
;;[ICODE] key.c:58: 	if iTemp42 [k56 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_9($23)
;;[ICODE] key.c:60: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	60; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:61: 	iTemp44 [k59 lr65:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoSwitch [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	61; "key.c"	MotoSwitch();
	CALL	_MotoSwitch
;;[ICODE] key.c:61: 	 goto __ifend_9($24)
	GOTO	_00128_DS_
;;[ICODE] key.c:61:  __iffalse_9($23) :
;;[ICODE] key.c:62: 	iTemp45 [k60 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x2 {const-unsigned-char literal}
_00127_DS_:
;	.line	62; "key.c"	} else if(clink_event == 2){
	MOVF	_clink_event,W
	XORLW	0x02
	BTFSS	STATUS,2
	GOTO	_00124_DS_
;;[ICODE] key.c:62: 	if iTemp45 [k60 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_8($20)
;;[ICODE] key.c:63: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	63; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:64: 	iTemp47 [k63 lr71:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedSwitch [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	64; "key.c"	LedSwitch();
	CALL	_LedSwitch
;;[ICODE] key.c:64: 	 goto __ifend_9($24)
	GOTO	_00128_DS_
;;[ICODE] key.c:64:  __iffalse_8($20) :
;;[ICODE] key.c:66: 	iTemp48 [k64 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x3 {const-unsigned-char literal}
_00124_DS_:
;	.line	66; "key.c"	} else if(clink_event == 3){
	MOVF	_clink_event,W
;	.line	68; "key.c"	clink_event = 0;
	XORLW	0x03
;	.line	71; "key.c"	if(long_f){
	BTFSC	STATUS,2
	CLRF	_clink_event
_00128_DS_:
	MOVLW	0x00
	IORWF	_long_f,W
	BTFSC	STATUS,2
	GOTO	_00139_DS_
;;[ICODE] key.c:73: 	iTemp50 [k66 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0x32 {const-unsigned-char literal}
;;unsigned compare: left < lit(0x32=50), size=1
;	.line	73; "key.c"	if(g_ucTimerWorkCount <  50) {
	MOVLW	0x32
	SUBWF	_g_ucTimerWorkCount,W
	BTFSC	STATUS,0
	GOTO	_00130_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:73: 	if iTemp50 [k66 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_10($26)
;;[ICODE] key.c:74: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	74; "key.c"	g_ucTimerWorkCount++;
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:74: 	 goto _return($35)
	GOTO	_00139_DS_
;;[ICODE] key.c:74:  __iffalse_10($26) :
;;[ICODE] key.c:76: 	_long_f [k49 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00130_DS_:
;	.line	76; "key.c"	long_f = 0;
	CLRF	_long_f
;;[ICODE] key.c:77: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	77; "key.c"	g_ucTimerWorkCount = 0;
	CLRF	_g_ucTimerWorkCount
;;[ICODE] key.c:77:  _return($35) :
;;[ICODE] key.c:77: 	eproc _ScanKey [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00139_DS_:
	RETURN	
; exit point of _ScanKey


;	code size estimation:
;	  116+    0 =   116 instructions (  232 byte)

	end

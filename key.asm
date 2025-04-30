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
;   _PowOff
;   _LedSwitch
;   _MotoSwitch
;   _PowOn
;   _PowOff
;   _PowOff
;   _PowOn
;   _PowOff
;   _LedSwitch
;   _MotoSwitch
;   _PowOn
;   _PowOff
;   _PowOff
;2 compiler assigned registers:
;   r0x1006
;   r0x1007
;; Starting pCode block
;;[ICODE] key.c:11:  _entry($44) :
;;[ICODE] key.c:11: 	proc _ScanKey [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_key__ScanKey	code
_ScanKey:
; 2 exit points
;;[ICODE] key.c:14: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104A ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	14; "key.c"	if(PORT_KEY_1 == 0 || PORT_KEY_2 == 0 || PORT_KEY_3 == 1 )
	BTFSS	_PORTBbits,2
	GOTO	_00142_DS_
;;[ICODE] key.c:14: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104A ] == 0 goto __iftrue_15($38)
;;[ICODE] key.c:14: 	iTemp4 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp5 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104A ] = @[iTemp4 [k9 lr7:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	BTFSS	_PORTBbits,4
	GOTO	_00142_DS_
;;[ICODE] key.c:14: 	if iTemp5 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104A ] == 0 goto __iftrue_15($38)
;;[ICODE] key.c:14: 	iTemp7 [k13 lr11:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:14: 	iTemp8 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ] = @[iTemp7 [k13 lr11:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	CLRF	r0x1006
	BTFSC	_PORTBbits,5
	INCF	r0x1006,F
;;[ICODE] key.c:14: 	iTemp9 [k15 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104B ] = (char register)iTemp8 [k14 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ]
	MOVF	r0x1006,W
	MOVWF	r0x1007
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00143_DS_
;;[ICODE] key.c:14: 	if iTemp10 [k16 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_15($39)
;;[ICODE] key.c:14:  __iftrue_15($38) :
;;[ICODE] key.c:17: 	iTemp11 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0xffff {const-unsigned-int literal}
;;unsigned compare: left < lit(0xFFFF=65535), size=2
_00142_DS_:
;	.line	17; "key.c"	if(longpress_cnt < 0xffff) {
	MOVLW	0xff
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00200_DS_
	MOVLW	0xff
	SUBWF	_longpress_cnt,W
_00200_DS_:
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
;;[ICODE] key.c:21: 	iTemp15 [k22 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _longpress_cnt [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} < 0x50 {unsigned-int literal}
;;unsigned compare: left < lit(0x50=80), size=2
_00106_DS_:
;	.line	21; "key.c"	if(longpress_cnt < 80){
	MOVLW	0x00
	SUBWF	(_longpress_cnt + 1),W
	BTFSS	STATUS,2
	GOTO	_00201_DS_
	MOVLW	0x50
	SUBWF	_longpress_cnt,W
_00201_DS_:
	BTFSC	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:21: 	if iTemp15 [k22 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_4($12)
;;[ICODE] key.c:24: 	iTemp17 [k25 lr25:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:24: 	iTemp18 [k26 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104A ] = @[iTemp17 [k25 lr25:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	24; "key.c"	if(PORT_KEY_1 == 0) {
	BTFSC	_PORTBbits,2
	GOTO	_00113_DS_
;;[ICODE] key.c:24: 	if iTemp18 [k26 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x104A ] != 0 goto __iffalse_3($9)
;;[ICODE] key.c:26: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	26; "key.c"	clink_event = 1;  //??
	MOVLW	0x01
	MOVWF	_clink_event
;;[ICODE] key.c:26: 	 goto __iffalse_4($12)
	GOTO	_00116_DS_
;;[ICODE] key.c:26:  __iffalse_3($9) :
;;[ICODE] key.c:28: 	iTemp21 [k31 lr32:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:28: 	iTemp22 [k32 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104A ] = @[iTemp21 [k31 lr32:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00113_DS_:
;	.line	28; "key.c"	} else if(PORT_KEY_2 == 0) {
	BTFSC	_PORTBbits,4
	GOTO	_00110_DS_
;;[ICODE] key.c:28: 	if iTemp22 [k32 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[r0x104A ] != 0 goto __iffalse_2($6)
;;[ICODE] key.c:30: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x2 {const-unsigned-char literal}
;	.line	30; "key.c"	clink_event = 2; //???
	MOVLW	0x02
	MOVWF	_clink_event
;;[ICODE] key.c:30: 	 goto __iffalse_4($12)
	GOTO	_00116_DS_
;;[ICODE] key.c:30:  __iffalse_2($6) :
;;[ICODE] key.c:32: 	iTemp25 [k36 lr39:41 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:32: 	iTemp26 [k37 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ] = @[iTemp25 [k36 lr39:41 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00110_DS_:
;	.line	32; "key.c"	} else if(PORT_KEY_3 == 1) {
	CLRF	r0x1006
	BTFSC	_PORTBbits,5
	INCF	r0x1006,F
;;[ICODE] key.c:32: 	iTemp27 [k38 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104B ] = (char register)iTemp26 [k37 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ]
	MOVF	r0x1006,W
	MOVWF	r0x1007
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00116_DS_
;;[ICODE] key.c:32: 	if iTemp28 [k39 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_4($12)
;;[ICODE] key.c:34: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x3 {const-unsigned-char literal}
;	.line	34; "key.c"	clink_event = 3; //???
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
	GOTO	_00202_DS_
	MOVLW	0x64
	SUBWF	_longpress_cnt,W
_00202_DS_:
	BTFSS	STATUS,0
	GOTO	_00147_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:41: 	if iTemp30 [k41 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} != 0 goto _return($43)
;;[ICODE] key.c:43: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	43; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:45: 	iTemp33 [k45 lr50:52 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PORTBbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000005 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] key.c:45: 	iTemp34 [k46 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ] = @[iTemp33 [k45 lr50:52 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	45; "key.c"	if(PORT_KEY_3 == 1){
	CLRF	r0x1006
	BTFSC	_PORTBbits,5
	INCF	r0x1006,F
;;[ICODE] key.c:45: 	iTemp35 [k47 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104B ] = (char register)iTemp34 [k46 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ]
	MOVF	r0x1006,W
	MOVWF	r0x1007
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00147_DS_
;;[ICODE] key.c:45: 	if iTemp36 [k48 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($43)
;;[ICODE] key.c:46: 	_long_f [k49 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	46; "key.c"	long_f = 1;
	MOVLW	0x01
	MOVWF	_long_f
;;[ICODE] key.c:49: 	iTemp38 [k52 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0xff {const-unsigned-char literal}
;;unsigned compare: left < lit(0xFF=255), size=1
;	.line	49; "key.c"	if(g_ucTimerWorkCount <  0xff) {
	MOVLW	0xff
	SUBWF	_g_ucTimerWorkCount,W
	BTFSC	STATUS,0
	GOTO	_00118_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:49: 	if iTemp38 [k52 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_5($14)
;;[ICODE] key.c:50: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	50; "key.c"	g_ucTimerWorkCount++;
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:51: 	iTemp42 [k57 lr61:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOn [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	51; "key.c"	PowOn();
	CALL	_PowOn
;;[ICODE] key.c:51: 	 goto _return($43)
	GOTO	_00147_DS_
;;[ICODE] key.c:51:  __iffalse_5($14) :
;;[ICODE] key.c:53: 	iTemp43 [k59 lr64:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOff [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00118_DS_:
;	.line	53; "key.c"	PowOff();
	CALL	_PowOff
;;[ICODE] key.c:53: 	 goto _return($43)
	GOTO	_00147_DS_
;;[ICODE] key.c:53:  __iffalse_15($39) :
;;[ICODE] key.c:64: 	_longpress_cnt [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed} := 0x0 {unsigned-int literal}
_00143_DS_:
;	.line	64; "key.c"	longpress_cnt = 0;
	CLRF	_longpress_cnt
	CLRF	(_longpress_cnt + 1)
;;[ICODE] key.c:66: 	iTemp45 [k61 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x1 {const-unsigned-char literal}
;	.line	66; "key.c"	if(clink_event == 1){
	MOVF	_clink_event,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00130_DS_
;;[ICODE] key.c:66: 	if iTemp45 [k61 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_10($26)
;;[ICODE] key.c:68: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	68; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:69: 	iTemp47 [k64 lr71:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _LedSwitch [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	69; "key.c"	LedSwitch();
	CALL	_LedSwitch
;;[ICODE] key.c:69: 	 goto __ifend_10($27)
	GOTO	_00131_DS_
;;[ICODE] key.c:69:  __iffalse_10($26) :
;;[ICODE] key.c:70: 	iTemp48 [k65 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x2 {const-unsigned-char literal}
_00130_DS_:
;	.line	70; "key.c"	} else if(clink_event == 2){
	MOVF	_clink_event,W
	XORLW	0x02
	BTFSS	STATUS,2
	GOTO	_00127_DS_
;;[ICODE] key.c:70: 	if iTemp48 [k65 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_9($23)
;;[ICODE] key.c:71: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	71; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:73: 	iTemp50 [k68 lr77:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _MotoSwitch [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	73; "key.c"	MotoSwitch();
	CALL	_MotoSwitch
;;[ICODE] key.c:73: 	 goto __ifend_10($27)
	GOTO	_00131_DS_
;;[ICODE] key.c:73:  __iffalse_9($23) :
;;[ICODE] key.c:74: 	iTemp51 [k69 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _clink_event [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x3 {const-unsigned-char literal}
_00127_DS_:
;	.line	74; "key.c"	} else if(clink_event == 3){
	MOVF	_clink_event,W
	XORLW	0x03
	BTFSS	STATUS,2
	GOTO	_00131_DS_
;;[ICODE] key.c:74: 	if iTemp51 [k69 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __ifend_10($27)
;;[ICODE] key.c:76: 	_clink_event [k27 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	76; "key.c"	clink_event = 0;
	CLRF	_clink_event
;;[ICODE] key.c:78: 	iTemp53 [k71 lr83:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOn [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	78; "key.c"	PowOn();
	CALL	_PowOn
;;[ICODE] key.c:79: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	79; "key.c"	g_ucTimerWorkCount++;  //10ms
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:80: 	_holdOn_f [k75 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x1 {const-unsigned-char literal}
;	.line	80; "key.c"	holdOn_f = 1;
	MOVLW	0x01
	MOVWF	_holdOn_f
;;[ICODE] key.c:80:  __ifend_10($27) :
;;[ICODE] key.c:84: 	if _holdOn_f [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0 goto __iffalse_12($32)
_00131_DS_:
;	.line	84; "key.c"	if(holdOn_f) {
	MOVLW	0x00
	IORWF	_holdOn_f,W
	BTFSC	STATUS,2
	GOTO	_00136_DS_
;;[ICODE] key.c:86: 	iTemp58 [k77 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0x3c {const-unsigned-char literal}
;;unsigned compare: left < lit(0x3C=60), size=1
;	.line	86; "key.c"	if(g_ucTimerWorkCount <  60) {
	MOVLW	0x3c
	SUBWF	_g_ucTimerWorkCount,W
	BTFSC	STATUS,0
	GOTO	_00133_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:86: 	if iTemp58 [k77 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_11($29)
;;[ICODE] key.c:87: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	87; "key.c"	g_ucTimerWorkCount++;
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:87: 	 goto __iffalse_12($32)
	GOTO	_00136_DS_
;;[ICODE] key.c:87:  __iffalse_11($29) :
;;[ICODE] key.c:89: 	_holdOn_f [k75 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00133_DS_:
;	.line	89; "key.c"	holdOn_f = 0;
	CLRF	_holdOn_f
;;[ICODE] key.c:90: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	90; "key.c"	g_ucTimerWorkCount = 0;
	CLRF	_g_ucTimerWorkCount
;;[ICODE] key.c:91: 	iTemp64 [k83 lr97:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOff [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	91; "key.c"	PowOff();
	CALL	_PowOff
;;[ICODE] key.c:91:  __iffalse_12($32) :
;;[ICODE] key.c:99: 	if _long_f [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0 goto _return($43)
_00136_DS_:
;	.line	99; "key.c"	if(long_f){
	MOVLW	0x00
	IORWF	_long_f,W
	BTFSC	STATUS,2
	GOTO	_00147_DS_
;;[ICODE] key.c:101: 	iTemp65 [k84 lr100:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0x3c {const-unsigned-char literal}
;;unsigned compare: left < lit(0x3C=60), size=1
;	.line	101; "key.c"	if(g_ucTimerWorkCount <  60) {
	MOVLW	0x3c
	SUBWF	_g_ucTimerWorkCount,W
	BTFSC	STATUS,0
	GOTO	_00138_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] key.c:101: 	if iTemp65 [k84 lr100:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_13($34)
;;[ICODE] key.c:102: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	102; "key.c"	g_ucTimerWorkCount++;
	INCF	_g_ucTimerWorkCount,F
;;[ICODE] key.c:102: 	 goto _return($43)
	GOTO	_00147_DS_
;;[ICODE] key.c:102:  __iffalse_13($34) :
;;[ICODE] key.c:104: 	_long_f [k49 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00138_DS_:
;	.line	104; "key.c"	long_f = 0;
	CLRF	_long_f
;;[ICODE] key.c:105: 	_g_ucTimerWorkCount [k51 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	105; "key.c"	g_ucTimerWorkCount = 0;
	CLRF	_g_ucTimerWorkCount
;;[ICODE] key.c:106: 	iTemp71 [k90 lr108:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _PowOff [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	106; "key.c"	PowOff();
	CALL	_PowOff
;;[ICODE] key.c:106:  _return($43) :
;;[ICODE] key.c:106: 	eproc _ScanKey [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00147_DS_:
	RETURN	
; exit point of _ScanKey


;	code size estimation:
;	  131+    0 =   131 instructions (  262 byte)

	end

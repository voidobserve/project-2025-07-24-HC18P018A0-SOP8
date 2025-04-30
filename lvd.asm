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
UDL_lvd_0	udata
r0x100C	res	1
r0x100A	res	1
r0x1009	res	1
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
;1 compiler assigned register :
;   r0x1009
;; Starting pCode block
;;[ICODE] lvd.c:152:  _entry($16) :
;;[ICODE] lvd.c:152: 	proc _ControlLvdCfg [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
S_lvd__ControlLvdCfg	code
_ControlLvdCfg:
; 2 exit points
;;[ICODE] lvd.c:152: iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLvdCfg_num_1_32}[r0x1050 ] = recv _ControlLvdCfg [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	152; "lvd.c"	void ControlLvdCfg(BYTE num)
	MOVWF	r0x1009
;	.line	154; "lvd.c"	if(1 == num)   //涓流充电
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00182_DS_
;;[ICODE] lvd.c:154: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_25($13)
;;[ICODE] lvd.c:156: 	_CHARGE0 [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	156; "lvd.c"	CHARGE0 = CHARGE0A;
	CLRF	_CHARGE0
;;[ICODE] lvd.c:157: 	_CHARGE1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x82 {const-unsigned-char literal}
;	.line	157; "lvd.c"	CHARGE1 = CHARGE1A; //10000010
	MOVLW	0x82
	MOVWF	_CHARGE1
;;[ICODE] lvd.c:157: 	 goto _return($15)
	GOTO	_00184_DS_
;;[ICODE] lvd.c:157:  __iffalse_25($13) :
;;[ICODE] lvd.c:159: 	iTemp2 [k7 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x2 {const-unsigned-char literal} == iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLvdCfg_num_1_32}[r0x1050 ]
_00182_DS_:
;	.line	159; "lvd.c"	else if(2 == num)  //大电流充电
	MOVF	r0x1009,W
	XORLW	0x02
	BTFSS	STATUS,2
	GOTO	_00179_DS_
;;[ICODE] lvd.c:159: 	if iTemp2 [k7 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_24($10)
;;[ICODE] lvd.c:161: 	iTemp3 [k9 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x1 {const-unsigned-char literal} == _TempFlag [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;	.line	161; "lvd.c"	if(1 == TempFlag)
	MOVF	_TempFlag,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00171_DS_
;;[ICODE] lvd.c:161: 	if iTemp3 [k9 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_21($2)
;;[ICODE] lvd.c:163: 	_CHARGE0 [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xe0 {const-unsigned-char literal}
;	.line	163; "lvd.c"	CHARGE0 = 0xE0; //11100000
	MOVLW	0xe0
	MOVWF	_CHARGE0
;;[ICODE] lvd.c:164: 	_CHARGE1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x83 {const-unsigned-char literal}
;	.line	164; "lvd.c"	CHARGE1 = 0x83; //10000011
	MOVLW	0x83
	MOVWF	_CHARGE1
;;[ICODE] lvd.c:164: 	 goto _return($15)
	GOTO	_00184_DS_
;;[ICODE] lvd.c:164:  __iffalse_21($2) :
;;[ICODE] lvd.c:168: 	_CHARGE0 [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xff {const-unsigned-char literal}
_00171_DS_:
;	.line	168; "lvd.c"	CHARGE0 = CHARGE0B;
	MOVLW	0xff
	MOVWF	_CHARGE0
;;[ICODE] lvd.c:169: 	_CHARGE1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x83 {const-unsigned-char literal}
;	.line	169; "lvd.c"	CHARGE1 = CHARGE1B; //10000011
	MOVLW	0x83
	MOVWF	_CHARGE1
;;[ICODE] lvd.c:169: 	 goto _return($15)
	GOTO	_00184_DS_
;;[ICODE] lvd.c:169:  __iffalse_24($10) :
;;[ICODE] lvd.c:172: 	iTemp4 [k10 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x3 {const-unsigned-char literal} == iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLvdCfg_num_1_32}[r0x1050 ]
_00179_DS_:
;	.line	172; "lvd.c"	else if(3 == num) //80mA充电
	MOVF	r0x1009,W
	XORLW	0x03
	BTFSS	STATUS,2
	GOTO	_00176_DS_
;;[ICODE] lvd.c:172: 	if iTemp4 [k10 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_23($7)
;;[ICODE] lvd.c:174: 	_CHARGE0 [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	174; "lvd.c"	CHARGE0 = CHARGE0C;
	CLRF	_CHARGE0
;;[ICODE] lvd.c:175: 	_CHARGE1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x83 {const-unsigned-char literal}
;	.line	175; "lvd.c"	CHARGE1 = CHARGE1C; //10000011
	MOVLW	0x83
	MOVWF	_CHARGE1
;;[ICODE] lvd.c:175: 	 goto _return($15)
	GOTO	_00184_DS_
;;[ICODE] lvd.c:175:  __iffalse_23($7) :
;;[ICODE] lvd.c:177: 	iTemp5 [k11 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x4 {const-unsigned-char literal} == iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ControlLvdCfg_num_1_32}[r0x1050 ]
_00176_DS_:
;	.line	177; "lvd.c"	else if(4 == num)	//关闭充电	
	MOVF	r0x1009,W
	XORLW	0x04
	BTFSS	STATUS,2
	GOTO	_00184_DS_
;;[ICODE] lvd.c:177: 	if iTemp5 [k11 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($15)
;;[ICODE] lvd.c:179: 	_CHARGE0 [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	179; "lvd.c"	CHARGE0 = CHARGE0D;
	CLRF	_CHARGE0
;;[ICODE] lvd.c:180: 	_CHARGE1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	180; "lvd.c"	CHARGE1 = CHARGE1D;
	CLRF	_CHARGE1
;;[ICODE] lvd.c:180:  _return($15) :
;;[ICODE] lvd.c:180: 	eproc _ControlLvdCfg [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
_00184_DS_:
	RETURN	
; exit point of _ControlLvdCfg

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;   _ControlLvdCfg
;2 compiler assigned registers:
;   r0x100A
;   r0x100B
;; Starting pCode block
;;[ICODE] lvd.c:103:  _entry($23) :
;;[ICODE] lvd.c:103: 	proc _ConfigureLvd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
S_lvd__ConfigureLvd	code
_ConfigureLvd:
; 2 exit points
;;[ICODE] lvd.c:105: 	iTemp1 [k5 lr3:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_INTFLAGbits [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000027 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:105: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104D ] = @[iTemp1 [k5 lr3:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	105; "lvd.c"	if(0 == CHARF)  //VDD检查大于4.4V时产生充电中断
	BTFSC	_INTFLAGbits,5
	GOTO	_00147_DS_
;;[ICODE] lvd.c:105: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104D ] != 0 goto __iffalse_12($4)
;;[ICODE] lvd.c:107: 	send 0x4 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:107: 	iTemp3 [k9 lr8:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	107; "lvd.c"	ControlLvdCfg(4);
	MOVLW	0x04
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:108: 	iTemp5 [k13 lr9:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits16_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:108: 	*(iTemp5 [k13 lr9:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	108; "lvd.c"	IsFull = 0;
	BCF	_BITS_DATA1,0
;;[ICODE] lvd.c:109: 	iTemp7 [k16 lr12:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] = &[_BITS_DATA1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits16_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:109: 	*(iTemp7 [k16 lr12:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	109; "lvd.c"	IsCharf = 0;
	BCF	_BITS_DATA1,1
;;[ICODE] lvd.c:110: 	_LvdLightCount [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	110; "lvd.c"	LvdLightCount = 0;
	CLRF	_LvdLightCount
;;[ICODE] lvd.c:111: 	ret
;	.line	111; "lvd.c"	return;	  //未充电
	GOTO	_00165_DS_
;;[ICODE] lvd.c:111:  __iffalse_12($4) :
;;[ICODE] lvd.c:115: 	iTemp10 [k21 lr18:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits16_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:115: 	iTemp11 [k22 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {0,1} fixed}[r0x104D ] = @[iTemp10 [k21 lr18:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00147_DS_:
;	.line	115; "lvd.c"	if(1 == IsFull)
	CLRF	r0x100A
	BTFSC	_BITS_DATA1,0
	INCF	r0x100A,F
;;[ICODE] lvd.c:115: 	iTemp12 [k23 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x104E ] = (char register)iTemp11 [k22 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {0,1} fixed}[r0x104D ]
	MOVF	r0x100A,W
;;1	MOVWF	r0x100B
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00148_DS_
;;[ICODE] lvd.c:115: 	if iTemp13 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __ifend_12($5)
;;[ICODE] lvd.c:117: 	_LvdLightCount [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	117; "lvd.c"	LvdLightCount = 0;
	CLRF	_LvdLightCount
;;[ICODE] lvd.c:118: 	ret
;	.line	118; "lvd.c"	return;
	GOTO	_00165_DS_
;;[ICODE] lvd.c:118:  __ifend_12($5) :
;;[ICODE] lvd.c:122: 	_LvdLightCount [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _LvdLightCount [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
_00148_DS_:
;	.line	122; "lvd.c"	LvdLightCount++;
	INCF	_LvdLightCount,F
;;[ICODE] lvd.c:123: 	iTemp18 [k29 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0xc8 {const-unsigned-char literal} == _LvdLightCount [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;	.line	123; "lvd.c"	if(200 == LvdLightCount)
	MOVF	_LvdLightCount,W
	XORLW	0xc8
	BTFSS	STATUS,2
	GOTO	_00150_DS_
;;[ICODE] lvd.c:123: 	if iTemp18 [k29 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_13($7)
;;[ICODE] lvd.c:125: 	iTemp20 [k32 lr31:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] = &[_BITS_DATA1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits16_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:125: 	*(iTemp20 [k32 lr31:33 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	125; "lvd.c"	IsCharf = 1;
	BSF	_BITS_DATA1,1
;;[ICODE] lvd.c:126: 	_LvdLightCount [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	126; "lvd.c"	LvdLightCount = 0;
	CLRF	_LvdLightCount
;;[ICODE] lvd.c:126:  __iffalse_13($7) :
;;[ICODE] lvd.c:128: 	iTemp23 [k36 lr36:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] = &[_BITS_DATA1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits16_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:128: 	iTemp24 [k37 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {1,1} fixed}[r0x104D ] = @[iTemp23 [k36 lr36:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00150_DS_:
;	.line	128; "lvd.c"	if(IsCharf == 0)
	BTFSC	_BITS_DATA1,1
	GOTO	_00152_DS_
;;[ICODE] lvd.c:128: 	if iTemp24 [k37 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-bitfield {1,1} fixed}[r0x104D ] != 0 goto __iffalse_14($9)
;;[ICODE] lvd.c:130: 	ret
;	.line	130; "lvd.c"	return;
	GOTO	_00165_DS_
;;[ICODE] lvd.c:130:  __iffalse_14($9) :
;;[ICODE] lvd.c:133: 	iTemp26 [k41 lr42:44 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] = &[_BITS_DATA0 [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:133: 	*(iTemp26 [k41 lr42:44 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00152_DS_:
;	.line	133; "lvd.c"	LowBat = 0;
	BCF	_BITS_DATA0,1
;;[ICODE] lvd.c:135: 	if _LvdModel [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} != 0 goto __iffalse_15($11)
;	.line	135; "lvd.c"	if(LvdModel == 0)          //满
	MOVLW	0x00
	IORWF	_LvdModel,W
	BTFSS	STATUS,2
	GOTO	_00154_DS_
;;[ICODE] lvd.c:137: 	iTemp28 [k45 lr46:48 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] = &[_BITS_DATA1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits16_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:137: 	*(iTemp28 [k45 lr46:48 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	137; "lvd.c"	IsFull = 1;
	BSF	_BITS_DATA1,0
;;[ICODE] lvd.c:138: 	send 0x4 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:138: 	iTemp29 [k46 lr50:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	138; "lvd.c"	ControlLvdCfg(4);
	MOVLW	0x04
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:138:  __iffalse_15($11) :
;;[ICODE] lvd.c:140: 	iTemp30 [k47 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _LvdModel [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x1 {const-unsigned-char literal}
_00154_DS_:
;	.line	140; "lvd.c"	if(LvdModel == 1)          //4,1
	MOVF	_LvdModel,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00156_DS_
;;[ICODE] lvd.c:140: 	if iTemp30 [k47 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_16($13)
;;[ICODE] lvd.c:141: 	send 0x3 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:141: 	iTemp31 [k48 lr55:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	141; "lvd.c"	ControlLvdCfg(3);	
	MOVLW	0x03
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:141:  __iffalse_16($13) :
;;[ICODE] lvd.c:142: 	iTemp32 [k49 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _LvdModel [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x2 {const-unsigned-char literal}
_00156_DS_:
;	.line	142; "lvd.c"	if(LvdModel == 2)         //3.3
	MOVF	_LvdModel,W
	XORLW	0x02
	BTFSS	STATUS,2
	GOTO	_00158_DS_
;;[ICODE] lvd.c:142: 	if iTemp32 [k49 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_17($15)
;;[ICODE] lvd.c:143: 	send 0x2 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:143: 	iTemp33 [k50 lr60:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	143; "lvd.c"	ControlLvdCfg(2);
	MOVLW	0x02
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:143:  __iffalse_17($15) :
;;[ICODE] lvd.c:144: 	iTemp34 [k51 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _LvdModel [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x3 {const-unsigned-char literal}
_00158_DS_:
;	.line	144; "lvd.c"	if(LvdModel == 3)        //3.0
	MOVF	_LvdModel,W
	XORLW	0x03
	BTFSS	STATUS,2
	GOTO	_00160_DS_
;;[ICODE] lvd.c:144: 	if iTemp34 [k51 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_18($17)
;;[ICODE] lvd.c:145: 	send 0x2 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:145: 	iTemp35 [k52 lr65:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	145; "lvd.c"	ControlLvdCfg(2); 
	MOVLW	0x02
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:145:  __iffalse_18($17) :
;;[ICODE] lvd.c:146: 	iTemp36 [k53 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _LvdModel [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x4 {const-unsigned-char literal}
_00160_DS_:
;	.line	146; "lvd.c"	if(LvdModel == 4)         //2.8
	MOVF	_LvdModel,W
	XORLW	0x04
	BTFSS	STATUS,2
	GOTO	_00162_DS_
;;[ICODE] lvd.c:146: 	if iTemp36 [k53 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_19($19)
;;[ICODE] lvd.c:147: 	send 0x1 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:147: 	iTemp37 [k54 lr70:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	147; "lvd.c"	ControlLvdCfg(1);
	MOVLW	0x01
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:147:  __iffalse_19($19) :
;;[ICODE] lvd.c:148: 	iTemp38 [k55 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = _LvdModel [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} == 0x5 {const-unsigned-char literal}
_00162_DS_:
;	.line	148; "lvd.c"	if(LvdModel == 5)        //没电
	MOVF	_LvdModel,W
	XORLW	0x05
	BTFSS	STATUS,2
	GOTO	_00165_DS_
;;[ICODE] lvd.c:148: 	if iTemp38 [k55 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($22)
;;[ICODE] lvd.c:149: 	send 0x1 {const-unsigned-char literal}{argreg = 1}
;;[ICODE] lvd.c:149: 	iTemp39 [k56 lr75:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ControlLvdCfg [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	149; "lvd.c"	ControlLvdCfg(1);
	MOVLW	0x01
	CALL	_ControlLvdCfg
;;[ICODE] lvd.c:149:  _return($22) :
;;[ICODE] lvd.c:149: 	eproc _ConfigureLvd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
_00165_DS_:
	RETURN	
; exit point of _ConfigureLvd

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _DelayMs
;   _DelayMs
;1 compiler assigned register :
;   r0x100C
;; Starting pCode block
;;[ICODE] lvd.c:35:  _entry($32) :
;;[ICODE] lvd.c:35: 	proc _CheckLvdElectric [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
S_lvd__CheckLvdElectric	code
_CheckLvdElectric:
; 2 exit points
;;[ICODE] lvd.c:35: iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ] = recv _CheckLvdElectric [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
;	.line	35; "lvd.c"	void CheckLvdElectric(BYTE num)
	MOVWF	r0x100C
;;[ICODE] lvd.c:37: 	if iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ] != 0 goto __iffalse_4($13)
;	.line	37; "lvd.c"	if(0 == num)
	MOVF	r0x100C,W
	BTFSS	STATUS,2
	GOTO	_00121_DS_
;;[ICODE] lvd.c:38: 	_PCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x1e {const-unsigned-char literal}
;	.line	38; "lvd.c"	PCON = PCON0;  //00011110  4.2v
	MOVLW	0x1e
	MOVWF	_PCON
;;[ICODE] lvd.c:38: 	 goto __ifend_4($14)
	GOTO	_00122_DS_
;;[ICODE] lvd.c:38:  __iffalse_4($13) :
;;[ICODE] lvd.c:39: 	iTemp1 [k5 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x1 {const-unsigned-char literal} == iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ]
_00121_DS_:
;	.line	39; "lvd.c"	else if(1 == num)
	MOVF	r0x100C,W
	XORLW	0x01
	BTFSS	STATUS,2
	GOTO	_00118_DS_
;;[ICODE] lvd.c:39: 	if iTemp1 [k5 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_3($10)
;;[ICODE] lvd.c:40: 	_PCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x1c {const-unsigned-char literal}
;	.line	40; "lvd.c"	PCON = PCON1;  //00011100  4.1v
	MOVLW	0x1c
	MOVWF	_PCON
;;[ICODE] lvd.c:40: 	 goto __ifend_4($14)
	GOTO	_00122_DS_
;;[ICODE] lvd.c:40:  __iffalse_3($10) :
;;[ICODE] lvd.c:41: 	iTemp2 [k6 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x2 {const-unsigned-char literal} == iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ]
_00118_DS_:
;	.line	41; "lvd.c"	else if(2 == num)
	MOVF	r0x100C,W
	XORLW	0x02
	BTFSS	STATUS,2
	GOTO	_00115_DS_
;;[ICODE] lvd.c:41: 	if iTemp2 [k6 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_2($7)
;;[ICODE] lvd.c:42: 	_PCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x12 {const-unsigned-char literal}
;	.line	42; "lvd.c"	PCON = PCON2;  //00010010  3.3v
	MOVLW	0x12
	MOVWF	_PCON
;;[ICODE] lvd.c:42: 	 goto __ifend_4($14)
	GOTO	_00122_DS_
;;[ICODE] lvd.c:42:  __iffalse_2($7) :
;;[ICODE] lvd.c:43: 	iTemp3 [k7 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x3 {const-unsigned-char literal} == iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ]
_00115_DS_:
;	.line	43; "lvd.c"	else if(3 == num)
	MOVF	r0x100C,W
	XORLW	0x03
	BTFSS	STATUS,2
	GOTO	_00112_DS_
;;[ICODE] lvd.c:43: 	if iTemp3 [k7 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_1($4)
;;[ICODE] lvd.c:44: 	_PCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xe {const-unsigned-char literal}
;	.line	44; "lvd.c"	PCON = PCON3;  //00001110  3.0v
	MOVLW	0x0e
	MOVWF	_PCON
;;[ICODE] lvd.c:44: 	 goto __ifend_4($14)
	GOTO	_00122_DS_
;;[ICODE] lvd.c:44:  __iffalse_1($4) :
;;[ICODE] lvd.c:45: 	iTemp4 [k8 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x4 {const-unsigned-char literal} == iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ]
_00112_DS_:
;	.line	45; "lvd.c"	else if(4 == num)
	MOVF	r0x100C,W
	XORLW	0x04
	BTFSS	STATUS,2
	GOTO	_00122_DS_
;;[ICODE] lvd.c:45: 	if iTemp4 [k8 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __ifend_4($14)
;;[ICODE] lvd.c:46: 	_PCON [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0xc {const-unsigned-char literal}
;	.line	46; "lvd.c"	PCON = PCON4;  //00001100  2.8v	
	MOVLW	0x0c
	MOVWF	_PCON
;;[ICODE] lvd.c:46:  __ifend_4($14) :
;;[ICODE] lvd.c:48: 	iTemp6 [k12 lr27:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_PCONbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000006 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:48: 	*(iTemp6 [k12 lr27:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
_00122_DS_:
;	.line	48; "lvd.c"	CMPEN = 1; //开启比较器
	BSF	_PCONbits,0
;;[ICODE] lvd.c:49: 	iTemp7 [k14 lr30:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _DelayMs [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( ) fixed}
;	.line	49; "lvd.c"	DelayMs();
	CALL	_DelayMs
;;[ICODE] lvd.c:53: 	iTemp9 [k17 lr31:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PCONbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000006 fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:53: 	iTemp10 [k18 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ] = @[iTemp9 [k17 lr31:33 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	53; "lvd.c"	if(0 == CMPOF)   //电压达到
	BTFSC	_PCONbits,5
	GOTO	_00130_DS_
;;[ICODE] lvd.c:53: 	if iTemp10 [k18 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} fixed}[r0x104A ] != 0 goto __iffalse_7($22)
;;[ICODE] lvd.c:55: 	iTemp11 [k20 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ] == _LvdDebounceOld [k19 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;	.line	55; "lvd.c"	if(num == LvdDebounceOld)
	MOVF	_LvdDebounceOld,W
	XORWF	r0x100C,W
	BTFSS	STATUS,2
	GOTO	_00124_DS_
;;[ICODE] lvd.c:55: 	if iTemp11 [k20 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_5($16)
;;[ICODE] lvd.c:57: 	_LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	57; "lvd.c"	LvdModelCount ++;	
	INCF	_LvdModelCount,F
;;[ICODE] lvd.c:57: 	 goto __ifend_5($17)
	GOTO	_00125_DS_
;;[ICODE] lvd.c:57:  __iffalse_5($16) :
;;[ICODE] lvd.c:61: 	_LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00124_DS_:
;	.line	61; "lvd.c"	LvdModelCount = 0;
	CLRF	_LvdModelCount
;;[ICODE] lvd.c:61:  __ifend_5($17) :
;;[ICODE] lvd.c:63: 	_LvdDebounceOld [k19 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ]
_00125_DS_:
;	.line	63; "lvd.c"	LvdDebounceOld = num;  
	MOVF	r0x100C,W
	MOVWF	_LvdDebounceOld
;;[ICODE] lvd.c:63: 	 goto __ifend_7($23)
	GOTO	_00131_DS_
;;[ICODE] lvd.c:63:  __iffalse_7($22) :
;;[ICODE] lvd.c:67: 	iTemp17 [k27 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x4 {const-unsigned-char literal} == iTemp0 [k2 lr3:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _CheckLvdElectric_num_1_12}[r0x1049 ]
_00130_DS_:
;	.line	67; "lvd.c"	if(4 == num)   //没电(小于2.8V)
	MOVF	r0x100C,W
	XORLW	0x04
	BTFSS	STATUS,2
	GOTO	_00127_DS_
;;[ICODE] lvd.c:67: 	if iTemp17 [k27 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_6($19)
;;[ICODE] lvd.c:69: 	_LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	69; "lvd.c"	LvdModelCount++;
	INCF	_LvdModelCount,F
;;[ICODE] lvd.c:70: 	_LvdDebounceOld [k19 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x5 {const-unsigned-char literal}
;	.line	70; "lvd.c"	LvdDebounceOld = 5;
	MOVLW	0x05
	MOVWF	_LvdDebounceOld
;;[ICODE] lvd.c:70: 	 goto __ifend_7($23)
	GOTO	_00131_DS_
;;[ICODE] lvd.c:70:  __iffalse_6($19) :
;;[ICODE] lvd.c:74: 	_LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
_00127_DS_:
;	.line	74; "lvd.c"	LvdModelCount = 0;
	CLRF	_LvdModelCount
;;[ICODE] lvd.c:75: 	_LvdDebounceNew [k33 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} = _LvdDebounceNew [k33 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} + 0x1 {const-unsigned-char literal}
;	.line	75; "lvd.c"	LvdDebounceNew++;
	INCF	_LvdDebounceNew,F
;;[ICODE] lvd.c:75:  __ifend_7($23) :
;;[ICODE] lvd.c:79: 	iTemp26 [k37 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} = _LvdDebounceNew [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} < 0x5 {const-unsigned-char literal}
;;unsigned compare: left < lit(0x5=5), size=1
_00131_DS_:
;	.line	79; "lvd.c"	if(LvdDebounceNew >= 5)	
	MOVLW	0x05
;	.line	81; "lvd.c"	LvdDebounceNew = 0;
	SUBWF	_LvdDebounceNew,W
;	.line	84; "lvd.c"	CMPOF = 0;
	BTFSC	STATUS,0
	CLRF	_LvdDebounceNew
	BCF	_PCONbits,5
;	.line	85; "lvd.c"	CMPEN = 0;
	BCF	_PCONbits,0
;;[ICODE] lvd.c:87: 	iTemp32 [k45 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} = 0xfa {const-unsigned-char literal} > _LvdModelCount [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;;unsigned compare: left < lit(0xFA=250), size=1
;	.line	87; "lvd.c"	if(250 <= LvdModelCount)  //防抖
	MOVLW	0xfa
	SUBWF	_LvdModelCount,W
	BTFSS	STATUS,0
	GOTO	_00139_DS_
;;genSkipc:3257: created from rifx:0x782c44
;;[ICODE] lvd.c:87: 	if iTemp32 [k45 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{bit fixed} != 0 goto _return($31)
;;[ICODE] lvd.c:89: 	_LvdDebounceNew [k33 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	89; "lvd.c"	LvdDebounceNew = 0;
	CLRF	_LvdDebounceNew
;;[ICODE] lvd.c:90: 	_LvdModelCount [k21 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := 0x0 {const-unsigned-char literal}
;	.line	90; "lvd.c"	LvdModelCount = 0;
	CLRF	_LvdModelCount
;;[ICODE] lvd.c:91: 	_LvdModel [k48 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed} := _LvdDebounceOld [k19 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;	.line	91; "lvd.c"	LvdModel = LvdDebounceOld;
	MOVF	_LvdDebounceOld,W
	MOVWF	_LvdModel
;;[ICODE] lvd.c:92: 	iTemp36 [k50 lr73:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x5 {const-unsigned-char literal} == _LvdModel [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}
;	.line	92; "lvd.c"	if(5 == LvdModel)
	MOVF	_LvdModel,W
	XORLW	0x05
	BTFSS	STATUS,2
	GOTO	_00135_DS_
;;[ICODE] lvd.c:92: 	if iTemp36 [k50 lr73:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto __iffalse_9($27)
;;[ICODE] lvd.c:94: 	iTemp38 [k54 lr75:77 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] = &[_BITS_DATA0 [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:94: 	*(iTemp38 [k54 lr75:77 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	94; "lvd.c"	LowBat = 1;
	BSF	_BITS_DATA0,1
;;[ICODE] lvd.c:94: 	 goto _return($31)
	GOTO	_00139_DS_
;;[ICODE] lvd.c:94:  __iffalse_9($27) :
;;[ICODE] lvd.c:98: 	iTemp40 [k57 lr80:82 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat] = &[_BITS_DATA0 [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __bits8_t fixed} , 0x0 {const-unsigned-char literal}]
;;[ICODE] lvd.c:98: 	*(iTemp40 [k57 lr80:82 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {1,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00135_DS_:
;	.line	98; "lvd.c"	LowBat = 0;
	BCF	_BITS_DATA0,1
;;[ICODE] lvd.c:98:  _return($31) :
;;[ICODE] lvd.c:98: 	eproc _CheckLvdElectric [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed) fixed}
_00139_DS_:
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
;	  188+    0 =   188 instructions (  376 byte)

	end

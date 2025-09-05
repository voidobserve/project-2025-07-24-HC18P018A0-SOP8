	global	_AUXR
	global	_BITS_DATA0
	global	_BOR
	global	_BUZ
	global	_CHARGE0
	global	_CHARGE1
	global	_CHARGEN
	global	_CMPCR
	global	_CMPEN
	global	_CMPIE
	global	_CMPIES
	global	_CMPOF
	global	_CMPWK
	global	_CPPIS
	global	_CheckSleep
	signat	_CheckSleep,89
	FNCALL	_CheckSleep,_InitPort
	global	_CountdownDisplay
	signat	_CountdownDisplay,89
	FNCALL	_CountdownDisplay,_bt_off
	global	_GIE
	global	_HIRCTRM
	global	_HXEN
	global	_INTECON
	global	_INTEDG
	global	_INTFLAG
	global	_IOCB
	global	_InitPort
	signat	_InitPort,89
	global	_InitRam
	signat	_InitRam,89
	global	_InitSystem
	signat	_InitSystem,89
	global	_LVDM
	global	_LedDisplay
	signat	_LedDisplay,89
	FNCALL	_LedDisplay,_LedOff
	FNCALL	_LedDisplay,_LedOn
	global	_LedOff
	signat	_LedOff,89
	global	_LedOn
	signat	_LedOn,89
	global	_LedSwitch
	signat	_LedSwitch,89
	global	_MODSEL
	global	_MotoDisplay
	signat	_MotoDisplay,89
	FNCALL	_MotoDisplay,_MotoOff
	FNCALL	_MotoDisplay,_MotoOn
	global	_MotoOff
	signat	_MotoOff,89
	global	_MotoOn
	signat	_MotoOn,89
	global	_MotoSwitch
	signat	_MotoSwitch,89
	global	_ODCON
	global	_OPTION
_OPTION	equ	65
	global	_OSCCON
	global	_PBIE
	global	_PBIF
	global	_PCON
	global	_PDB3
	global	_PDB4
	global	_PDB5
	global	_PDB6
	global	_PDB7
	global	_PDCON
	global	_PDCON1
	global	_PHCON
	global	_POR
	global	_PORTB
	global	_PORTB0
	global	_PORTB1
	global	_PORTB2
	global	_PORTB3
	global	_PORTB4
	global	_PORTB5
	global	_PS0
	global	_PS1
	global	_PS2
	global	_PSA
	global	_PWM0E
	global	_PWM0OE
	global	_PWM0P
	global	_PWM1E
	global	_PWM1OE
	global	_PWM1P
	global	_PWM2E
	global	_PWM2OE
	global	_PWM2P
	global	_PWM3CT
	global	_PWMCK
	global	_PWMCON
	global	_PWMCT
	global	_PWMINV
	global	_PWMMD
	global	_PowOff
	signat	_PowOff,89
	global	_PowOn
	signat	_PowOn,89
	global	_RAMP
	global	_RCTRMEN
	global	_S0
	global	_S1
	global	_S2
	global	_S3
	global	_S4
	global	_S5
	global	_S6
	global	_S7
	global	_S8
	global	_S9
	global	_SCS
	global	_SINK_SEL
	global	_SLOP0
	global	_SLOP1
	global	_SLOP2
	global	_ScanKey
	signat	_ScanKey,89
	FNCALL	_ScanKey,_LedSwitch
	FNCALL	_ScanKey,_MotoSwitch
	FNCALL	_ScanKey,_PowOff
	FNCALL	_ScanKey,_PowOn
	global	_SleepCount
	global	_T0
	global	_T0CK
	global	_T0CR
	global	_T0CS
	global	_T0IE
	global	_T0IF
	global	_T0OSCEN
	global	_T0SE
	global	_T1
	global	_T1CK0
	global	_T1CK1
	global	_T1CON
	global	_T1EN
	global	_T1IE
	global	_T1IF
	global	_T1LOAD
	global	_T1PR0
	global	_T1PR1
	global	_T1PR2
	global	_TEMPEN
	global	_TMPF
	global	_TRISB
	global	_TRISB0
	global	_TRISB1
	global	_TRISB2
	global	_TRISB3
	global	_TRISB4
	global	_TRISB5
	global	_TRISB6
	global	_TRISB7
	global	_WDTEN
	global	___latbits
___latbits	equ	0
	global	__end_of_CheckSleep
	global	__end_of_CountdownDisplay
	global	__end_of_InitPort
	global	__end_of_InitRam
	global	__end_of_InitSystem
	global	__end_of_LedDisplay
	global	__end_of_LedOff
	global	__end_of_LedOn
	global	__end_of_LedSwitch
	global	__end_of_MotoDisplay
	global	__end_of_MotoOff
	global	__end_of_MotoOn
	global	__end_of_MotoSwitch
	global	__end_of_PowOff
	global	__end_of_PowOn
	global	__end_of_ScanKey
	global	__end_of__initialization
	global	__end_of_bt_off
	global	__end_of_delay_ms
	global	__end_of_interrupt_handle
	global	__end_of_main
	global	__initialization
	global	__pbssBANK0
	global	__pbssBANK0_4
	global	__pcstackBANK0
	global	__pcstackBANK0_4
	global	__pcstackCOMMON
	global	__pintentry
	global	__pmaintext
	global	__ptext0
	global	__ptext1
	global	__ptext10
	global	__ptext11
	global	__ptext12
	global	__ptext13
	global	__ptext14
	global	__ptext15
	global	__ptext16
	global	__ptext17
	global	__ptext18
	global	__ptext19
	global	__ptext2
	global	__ptext3
	global	__ptext4
	global	__ptext5
	global	__ptext6
	global	__ptext7
	global	__ptext8
	global	__ptext9
	global	__size_of_CheckSleep
__size_of_CheckSleep	equ	__end_of_CheckSleep-_CheckSleep
	global	__size_of_CountdownDisplay
__size_of_CountdownDisplay	equ	__end_of_CountdownDisplay-_CountdownDisplay
	global	__size_of_InitPort
__size_of_InitPort	equ	__end_of_InitPort-_InitPort
	global	__size_of_InitRam
__size_of_InitRam	equ	__end_of_InitRam-_InitRam
	global	__size_of_InitSystem
__size_of_InitSystem	equ	__end_of_InitSystem-_InitSystem
	global	__size_of_LedDisplay
__size_of_LedDisplay	equ	__end_of_LedDisplay-_LedDisplay
	global	__size_of_LedOff
__size_of_LedOff	equ	__end_of_LedOff-_LedOff
	global	__size_of_LedOn
__size_of_LedOn	equ	__end_of_LedOn-_LedOn
	global	__size_of_LedSwitch
__size_of_LedSwitch	equ	__end_of_LedSwitch-_LedSwitch
	global	__size_of_MotoDisplay
__size_of_MotoDisplay	equ	__end_of_MotoDisplay-_MotoDisplay
	global	__size_of_MotoOff
__size_of_MotoOff	equ	__end_of_MotoOff-_MotoOff
	global	__size_of_MotoOn
__size_of_MotoOn	equ	__end_of_MotoOn-_MotoOn
	global	__size_of_MotoSwitch
__size_of_MotoSwitch	equ	__end_of_MotoSwitch-_MotoSwitch
	global	__size_of_PowOff
__size_of_PowOff	equ	__end_of_PowOff-_PowOff
	global	__size_of_PowOn
__size_of_PowOn	equ	__end_of_PowOn-_PowOn
	global	__size_of_ScanKey
__size_of_ScanKey	equ	__end_of_ScanKey-_ScanKey
	global	__size_of_bt_off
__size_of_bt_off	equ	__end_of_bt_off-_bt_off
	global	__size_of_delay_ms
__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	global	__size_of_interrupt_handle
__size_of_interrupt_handle	equ	__end_of_interrupt_handle-_interrupt_handle
	global	__size_of_main
__size_of_main	equ	__end_of_main-_main
	global	_bt_off
	signat	_bt_off,89
	FNCALL	_bt_off,_delay_ms
	global	_clink_event
	global	_delay_ms
	signat	_delay_ms,4217
	global	_g_ucTimer10msCount
	global	_g_ucTimerWorkCount
	global	_holdOn_f
	global	_interrupt_handle
	signat	_interrupt_handle,89
	global	_itemp
	global	_lampTiming
	global	_long_f
	global	_longpress_cnt
	global	_main
	signat	_main,89
	FNROOT	_main
	FNCALL	_main,_CheckSleep
	FNCALL	_main,_CountdownDisplay
	FNCALL	_main,_InitPort
	FNCALL	_main,_InitRam
	FNCALL	_main,_InitSystem
	FNCALL	_main,_LedDisplay
	FNCALL	_main,_MotoDisplay
	FNCALL	_main,_ScanKey
	FNCALL	_main,_delay_ms
	global	_motoTiming
	global	_occupy1
	global	_occupy2
	global	_occupy3
	global	btemp
	global	delay_ms@i
	global	delay_ms@xms
	global	end_of_initialization
	global	interrupt_function
	global	intlevel1
	FNROOT	intlevel1
	FNCALL	intlevel1,_interrupt_handle
	global	saved_w
	global	start
	global	start_initialization
	global	wtemp0
	processor	18p018a0
	opt	pw 120
	opt	pm
	psect	text0,local,class=CODE,merge=1,delta=2
	psect	cinit,global,class=CODE,merge=1,delta=2
	psect	bssBANK0_4,global,class=BANK0,space=1
	psect	bssBANK0,global,class=BANK0,space=1
	psect	cstackCOMMON,global,class=COMMON,space=1
	psect	cstackBANK0_4,global,class=BANK0,space=1
	psect	cstackBANK0,global,class=BANK0,space=1
	psect	maintext,global,class=CODE,split=1,delta=2
	psect	text1,local,class=CODE,merge=1,delta=2
	psect	text2,local,class=CODE,merge=1,delta=2
	psect	text3,local,class=CODE,merge=1,delta=2
	psect	text4,local,class=CODE,merge=1,delta=2
	psect	text5,local,class=CODE,merge=1,delta=2
	psect	text6,local,class=CODE,merge=1,delta=2
	psect	text7,local,class=CODE,merge=1,delta=2
	psect	text8,local,class=CODE,merge=1,delta=2
	psect	text9,local,class=CODE,merge=1,delta=2
	psect	text10,local,class=CODE,merge=1,delta=2
	psect	text11,local,class=CODE,merge=1,delta=2
	psect	text12,local,class=CODE,merge=1,delta=2
	psect	text13,local,class=CODE,merge=1,delta=2
	psect	text14,local,class=CODE,merge=1,delta=2
	psect	text15,local,class=CODE,merge=1,delta=2
	psect	text16,local,class=CODE,merge=1,delta=2
	psect	text17,local,class=CODE,merge=1,delta=2
	psect	text18,local,class=CODE,merge=1,delta=2
	psect	text19,local,class=CODE,merge=1,delta=2
	psect	intentry,global,class=CODE,delta=2
	psect	pa_nodes0,global,class=CODE,delta=2
	dabs	1,0x5B,1,_HIRCTRM
	dabs	1,0x5A,1,_occupy3
	dabs	1,0x59,1,_AUXR
	dabs	1,0x55,1,_RAMP
	dabs	1,0x54,1,_CHARGE1
	dabs	1,0x53,1,_CHARGE0
	dabs	1,0x52,1,_PDCON1
	dabs	1,0x51,1,_CMPCR
	dabs	1,0x50,1,_OSCCON
	dabs	1,0x4F,1,_PWM0P
	dabs	1,0x4E,1,_T1LOAD
	dabs	1,0x4D,1,_T1
	dabs	1,0x4C,1,_T1CON
	dabs	1,0x4B,1,_T0CR
	dabs	1,0x4A,1,_PWM2P
	dabs	1,0x49,1,_PWM1P
	dabs	1,0x48,1,_PWMCON
	dabs	1,0x47,1,_occupy2
	dabs	1,0x46,1,_TRISB
	dabs	1,0x42,1,_occupy1
	dabs	1,0x41,1,_OPTION
	dabs	1,0x2CF,0,_POR
	dabs	1,0x59,1
	dabs	1,0x2CE,0,_BOR
	dabs	1,0x59,1
	dabs	1,0x2CA,0,_RCTRMEN
	dabs	1,0x59,1
	dabs	1,0x2C9,0,_PWM3CT
	dabs	1,0x59,1
	dabs	1,0x2C8,0,_PWMCT
	dabs	1,0x59,1
	dabs	1,0x2AF,0,_MODSEL
	dabs	1,0x55,1
	dabs	1,0x2AE,0,_SINK_SEL
	dabs	1,0x55,1
	dabs	1,0x2AA,0,_SLOP2
	dabs	1,0x55,1
	dabs	1,0x2A9,0,_SLOP1
	dabs	1,0x55,1
	dabs	1,0x2A8,0,_SLOP0
	dabs	1,0x55,1
	dabs	1,0x2A7,0,_CHARGEN
	dabs	1,0x54,1
	dabs	1,0x2A6,0,_TEMPEN
	dabs	1,0x54,1
	dabs	1,0x2A1,0,_S9
	dabs	1,0x54,1
	dabs	1,0x2A0,0,_S8
	dabs	1,0x54,1
	dabs	1,0x29F,0,_S7
	dabs	1,0x53,1
	dabs	1,0x29E,0,_S6
	dabs	1,0x53,1
	dabs	1,0x29D,0,_S5
	dabs	1,0x53,1
	dabs	1,0x29C,0,_S4
	dabs	1,0x53,1
	dabs	1,0x29B,0,_S3
	dabs	1,0x53,1
	dabs	1,0x29A,0,_S2
	dabs	1,0x53,1
	dabs	1,0x299,0,_S1
	dabs	1,0x53,1
	dabs	1,0x298,0,_S0
	dabs	1,0x53,1
	dabs	1,0x297,0,_PDB7
	dabs	1,0x52,1
	dabs	1,0x296,0,_PDB6
	dabs	1,0x52,1
	dabs	1,0x295,0,_PDB5
	dabs	1,0x52,1
	dabs	1,0x294,0,_PDB4
	dabs	1,0x52,1
	dabs	1,0x293,0,_PDB3
	dabs	1,0x52,1
	dabs	1,0x28C,0,_LVDM
	dabs	1,0x51,1
	dabs	1,0x28B,0,_CMPWK
	dabs	1,0x51,1
	dabs	1,0x28A,0,_CMPIE
	dabs	1,0x51,1
	dabs	1,0x289,0,_CMPIES
	dabs	1,0x51,1
	dabs	1,0x288,0,_CPPIS
	dabs	1,0x51,1
	dabs	1,0x287,0,_T0OSCEN
	dabs	1,0x50,1
	dabs	1,0x281,0,_HXEN
	dabs	1,0x50,1
	dabs	1,0x280,0,_SCS
	dabs	1,0x50,1
	dabs	1,0x267,0,_T1EN
	dabs	1,0x4C,1
	dabs	1,0x266,0,_PWM0E
	dabs	1,0x4C,1
	dabs	1,0x265,0,_BUZ
	dabs	1,0x4C,1
	dabs	1,0x264,0,_T1CK1
	dabs	1,0x4C,1
	dabs	1,0x263,0,_T1CK0
	dabs	1,0x4C,1
	dabs	1,0x262,0,_T1PR2
	dabs	1,0x4C,1
	dabs	1,0x261,0,_T1PR1
	dabs	1,0x4C,1
	dabs	1,0x260,0,_T1PR0
	dabs	1,0x4C,1
	dabs	1,0x25F,0,_T0CK
	dabs	1,0x4B,1
	dabs	1,0x259,0,_T1IE
	dabs	1,0x4B,1
	dabs	1,0x258,0,_T1IF
	dabs	1,0x4B,1
	dabs	1,0x247,0,_PWM0OE
	dabs	1,0x48,1
	dabs	1,0x246,0,_PWM1OE
	dabs	1,0x48,1
	dabs	1,0x245,0,_PWM2OE
	dabs	1,0x48,1
	dabs	1,0x244,0,_PWMCK
	dabs	1,0x48,1
	dabs	1,0x243,0,_PWMMD
	dabs	1,0x48,1
	dabs	1,0x242,0,_PWMINV
	dabs	1,0x48,1
	dabs	1,0x241,0,_PWM1E
	dabs	1,0x48,1
	dabs	1,0x240,0,_PWM2E
	dabs	1,0x48,1
	dabs	1,0x237,0,_TRISB7
	dabs	1,0x46,1
	dabs	1,0x236,0,_TRISB6
	dabs	1,0x46,1
	dabs	1,0x235,0,_TRISB5
	dabs	1,0x46,1
	dabs	1,0x234,0,_TRISB4
	dabs	1,0x46,1
	dabs	1,0x233,0,_TRISB3
	dabs	1,0x46,1
	dabs	1,0x232,0,_TRISB2
	dabs	1,0x46,1
	dabs	1,0x231,0,_TRISB1
	dabs	1,0x46,1
	dabs	1,0x230,0,_TRISB0
	dabs	1,0x46,1
	dabs	1,0x20E,0,_INTEDG
	dabs	1,0x41,1
	dabs	1,0x20D,0,_T0CS
	dabs	1,0x41,1
	dabs	1,0x20C,0,_T0SE
	dabs	1,0x41,1
	dabs	1,0x20B,0,_PSA
	dabs	1,0x41,1
	dabs	1,0x20A,0,_PS2
	dabs	1,0x41,1
	dabs	1,0x209,0,_PS1
	dabs	1,0x41,1
	dabs	1,0x208,0,_PS0
	dabs	1,0x41,1
	dabs	1,0x10,1,_itemp
	dabs	1,0x6E,2

; Version 1.45
; Generated 16/11/2017 GMT
; 
; Copyright © 2017, Microchip Technology Inc. and its subsidiaries ("Microchip")
; All rights reserved.
; 
; This software is developed by Microchip Technology Inc. and its subsidiaries ("Microchip").
; 
; Redistribution and use in source and binary forms, with or without modification, are
; permitted provided that the following conditions are met:
; 
;     1. Redistributions of source code must retain the above copyright notice, this list of
;        conditions and the following disclaimer.
; 
;     2. Redistributions in binary form must reproduce the above copyright notice, this list
;        of conditions and the following disclaimer in the documentation and/or other
;        materials provided with the distribution.
; 
;     3. Microchip's name may not be used to endorse or promote products derived from this
;        software without specific prior written permission.
; 
; THIS SOFTWARE IS PROVIDED BY MICROCHIP "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
; INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL MICROCHIP BE LIABLE FOR ANY DIRECT, INDIRECT,
; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA OR PROFITS; OR BUSINESS
; INTERRUPTION) HOWSOEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
; THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
; 
; 
; Code-generator required, PIC16F887 Definitions
; 
; SFR Addresses


	psect	text0
__ptext0:	
	opt stack 0	;_PS0
_INTFLAG	set	15
_INTECON	set	14
_PHCON	set	13
_ODCON	set	12
_PDCON	set	11
_IOCB	set	9
_PCON	set	8
_PORTB	set	6
_T0	set	1
_TMPF	set	124
_PBIF	set	121
_T0IF	set	120
_GIE	set	119
_PBIE	set	113
_T0IE	set	112
_WDTEN	set	71
_CMPOF	set	69
_CMPEN	set	64
_PORTB5	set	53
_PORTB4	set	52
_PORTB3	set	51
_PORTB2	set	50
_PORTB1	set	49
_PORTB0	set	48

	psect	cinit
	file	"delay.as"
start_initialization:	
; #config settings

	opt stack 0
__initialization:	
	opt stack 0
end_of_initialization:	
;End of C runtime variable initialization code

	opt stack 0
__end_of__initialization:	
	opt stack 0
	clrf	3
	ljmp	_main	;jump to C main() function

	psect	bssBANK0_4
__pbssBANK0_4:	
	opt stack 0
_BITS_DATA0:	
	opt stack 0
	ds	1

	psect	bssBANK0
__pbssBANK0:	
	opt stack 0
_motoTiming:	
	opt stack 0
	ds	4
_lampTiming:	
	opt stack 0
	ds	4
_longpress_cnt:	
	opt stack 0
	ds	2
_SleepCount:	
	opt stack 0
	ds	2
_holdOn_f:	
	opt stack 0
	ds	1
_long_f:	
	opt stack 0
	ds	1
_clink_event:	
	opt stack 0
	ds	1
_g_ucTimerWorkCount:	
	opt stack 0
	ds	1
_g_ucTimer10msCount:	
	opt stack 0
	ds	1

	psect	cstackCOMMON
__pcstackCOMMON:	
	opt stack 0
??_PowOn:	
??_MotoSwitch:	
; 1 bytes @ 0x0

??_LedSwitch:	
; 1 bytes @ 0x0

??_PowOff:	
; 1 bytes @ 0x0

??_LedOn:	
; 1 bytes @ 0x0

??_LedOff:	
; 1 bytes @ 0x0

??_delay_ms:	
; 1 bytes @ 0x0

??_CheckSleep:	
; 1 bytes @ 0x0

??_InitPort:	
; 1 bytes @ 0x0

??_InitSystem:	
; 1 bytes @ 0x0

??_InitRam:	
; 1 bytes @ 0x0

??_ScanKey:	
; 1 bytes @ 0x0

??_LedDisplay:	
; 1 bytes @ 0x0

??_MotoOn:	
; 1 bytes @ 0x0

??_MotoOff:	
; 1 bytes @ 0x0

??_MotoDisplay:	
; 1 bytes @ 0x0

??_bt_off:	
; 1 bytes @ 0x0

??_CountdownDisplay:	
; 1 bytes @ 0x0

??_main:	
; 1 bytes @ 0x0


	psect	cstackBANK0_4
__pcstackBANK0_4:	
; 1 bytes @ 0x0

	opt stack 0
?_InitPort:	
?_InitSystem:	
; 1 bytes @ 0x0

?_InitRam:	
; 1 bytes @ 0x0

?_interrupt_handle:	
; 1 bytes @ 0x0

??_interrupt_handle:	
; 1 bytes @ 0x0

?_ScanKey:	
; 1 bytes @ 0x0

?_LedDisplay:	
; 1 bytes @ 0x0

?_MotoOn:	
; 1 bytes @ 0x0

?_MotoOff:	
; 1 bytes @ 0x0

?_MotoDisplay:	
; 1 bytes @ 0x0

?_bt_off:	
; 1 bytes @ 0x0

?_CountdownDisplay:	
; 1 bytes @ 0x0

?_main:	
; 1 bytes @ 0x0


; 1 bytes @ 0x0
	ds	2
?_delay_ms:	
delay_ms@xms:	
; 1 bytes @ 0x2

	opt stack 0

; 2 bytes @ 0x2
	ds	2
delay_ms@i:	
	opt stack 0

; 2 bytes @ 0x4
	ds	2

	psect	cstackBANK0
__pcstackBANK0:	
	opt stack 0
?_PowOn:	
?_MotoSwitch:	
; 1 bytes @ 0x0

?_LedSwitch:	
; 1 bytes @ 0x0

?_PowOff:	
; 1 bytes @ 0x0

?_LedOn:	
; 1 bytes @ 0x0

?_LedOff:	
; 1 bytes @ 0x0

?_CheckSleep:	
; 1 bytes @ 0x0


	psect	maintext
	file	"main.c"
__pmaintext:	
; 1 bytes @ 0x0
;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;
;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_CheckSleep
;;		_CountdownDisplay
;;		_InitPort
;;		_InitRam
;;		_InitSystem
;;		_LedDisplay
;;		_MotoDisplay
;;		_ScanKey
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _main

_main:	
	opt stack 1

;main.c: 50: InitPort();

;incstack = 0
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	fcall	_InitPort

;main.c: 51: InitSystem();
	fcall	_InitSystem

;main.c: 52: InitRam();
	fcall	_InitRam

;main.c: 53: T0IE = 1;
	bsf	14,0	;volatile

;main.c: 54: GIE = 1;
	bsf	14,7	;volatile
	clrwdt	; ;# 

;main.c: 76: delay_ms(500);
	movlw	244
	bcf	3,5	;RP0=0, select bank0
	movwf	delay_ms@xms
	movlw	1
	movwf	delay_ms@xms+1
	fcall	_delay_ms
l2901:	
;main.c: 77: while (1)

	clrwdt	; ;# 

;main.c: 85: if ((BITS_DATA0.bit0))
	bcf	3,5	;RP0=0, select bank0
	btfss	_BITS_DATA0,0
	goto	l5063

;main.c: 86: {
;main.c: 87: (BITS_DATA0.bit0) = 0;
	bcf	_BITS_DATA0,0

;main.c: 89: ScanKey();
	fcall	_ScanKey

;main.c: 90: CountdownDisplay();
	fcall	_CountdownDisplay

;main.c: 91: CheckSleep();
	fcall	_CheckSleep
l5063:	

;main.c: 92: }
;main.c: 94: LedDisplay();
	fcall	_LedDisplay

;main.c: 95: MotoDisplay();
	fcall	_MotoDisplay
	goto	l2901
__end_of_main:	
	opt stack 0

	psect	text1
	file	"key.c"
__ptext1:	
;; *************** function _ScanKey *****************
;; Defined at:
;;		line 11 in file "key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LedSwitch
;;		_MotoSwitch
;;		_PowOff
;;		_PowOn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _ScanKey

_ScanKey:	
	opt stack 2

;key.c: 14: if(PORTB2 == 0 || PORTB4 == 0 || PORTB5 == 1 )

;incstack = 0
; Regs used in _ScanKey: [wreg+status,2+status,0+pclath+cstack]
	btfsc	6,2	;volatile
	btfss	6,4	;volatile
	goto	l1764
	btfss	6,5	;volatile
	goto	l4985
l1764:	

;key.c: 15: {
;key.c: 17: lampTiming = 0;
	clrf	_lampTiming
	clrf	_lampTiming+1
	clrf	_lampTiming+2
	clrf	_lampTiming+3

;key.c: 18: motoTiming = 0;
	clrf	_motoTiming
	clrf	_motoTiming+1
	clrf	_motoTiming+2
	clrf	_motoTiming+3

;key.c: 20: if(longpress_cnt < 0xffff) {
	incfsz	_longpress_cnt,w
	goto	l4959
	incf	_longpress_cnt+1,w
	btfsc	3,2
	goto	l4963
l4959:	

;key.c: 21: longpress_cnt++;
	incf	_longpress_cnt,f
	btfsc	3,2
	incf	_longpress_cnt+1,f

;key.c: 23: SleepCount = 0;
	clrf	_SleepCount
	clrf	_SleepCount+1
l4963:	

;key.c: 24: }
;key.c: 26: if(longpress_cnt < 80){
	movlw	0
	subwf	_longpress_cnt+1,w
	movlw	80
	btfsc	3,2
	subwf	_longpress_cnt,w
	btfsc	3,0
	goto	l1766

;key.c: 29: if(PORTB2 == 0) {
	btfsc	6,2	;volatile
	goto	l1767

;key.c: 31: clink_event = 1;
	clrf	_clink_event
	incf	_clink_event,f

;key.c: 33: } else if(PORTB4 == 0) {
	goto	l1766
l1767:	
	btfsc	6,4	;volatile
	goto	l1769

;key.c: 35: clink_event = 2;
	movlw	2
	goto	L1
l1769:	
;key.c: 37: } else if(PORTB5 == 1) {

	btfss	6,5	;volatile
	goto	l1766

;key.c: 39: clink_event = 3;
	movlw	3
L1:	
	movwf	_clink_event
l1766:	

;key.c: 41: }
;key.c: 44: }
;key.c: 46: if(longpress_cnt >= 100){
	movlw	0
	subwf	_longpress_cnt+1,w
	movlw	100
	btfsc	3,2
	subwf	_longpress_cnt,w
	btfss	3,0
	return

;key.c: 48: clink_event = 0;
	clrf	_clink_event

;key.c: 50: if(PORTB5 == 1){
	btfss	6,5	;volatile
	return

;key.c: 51: long_f = 1;
	clrf	_long_f
	incf	_long_f,f

;key.c: 53: if(g_ucTimerWorkCount < 0xff) {
	incfsz	_g_ucTimerWorkCount,w

;key.c: 54: g_ucTimerWorkCount++;
	incf	_g_ucTimerWorkCount,f

;key.c: 55: }
;key.c: 56: PowOn();
	ljmp	l4701
l4985:	

;key.c: 64: longpress_cnt = 0;
	clrf	_longpress_cnt
	clrf	_longpress_cnt+1

;key.c: 66: if(clink_event == 1){
	decfsz	_clink_event,w
	goto	l4993

;key.c: 68: clink_event = 0;
	clrf	_clink_event

;key.c: 71: MotoSwitch();
	fcall	_MotoSwitch

;key.c: 72: } else if(clink_event == 2){
	goto	l5009
l4993:	
	movlw	2
	xorwf	_clink_event,w
	btfss	3,2
	goto	l4999

;key.c: 73: clink_event = 0;
	clrf	_clink_event

;key.c: 76: LedSwitch();
	fcall	_LedSwitch

;key.c: 78: } else if(clink_event == 3){
	goto	l5009
l4999:	
	movlw	3
	xorwf	_clink_event,w
	btfss	3,2
	goto	l5009

;key.c: 80: clink_event = 0;
	clrf	_clink_event

;key.c: 82: PowOn();
	fcall	_PowOn

;key.c: 83: g_ucTimerWorkCount++;
	incf	_g_ucTimerWorkCount,f

;key.c: 84: holdOn_f = 1;
	clrf	_holdOn_f
	incf	_holdOn_f,f
l5009:	

;key.c: 87: }
;key.c: 90: if(holdOn_f) {
	movf	_holdOn_f,w
	btfsc	3,2
	goto	l5019

;key.c: 92: if(g_ucTimerWorkCount < 60) {
	movlw	60
	subwf	_g_ucTimerWorkCount,w
	btfsc	3,0
	goto	l5015

;key.c: 93: g_ucTimerWorkCount++;
	incf	_g_ucTimerWorkCount,f

;key.c: 94: } else {
	goto	l5019
l5015:	

;key.c: 95: holdOn_f = 0;
	clrf	_holdOn_f

;key.c: 96: g_ucTimerWorkCount = 0;
	clrf	_g_ucTimerWorkCount

;key.c: 97: PowOff();
	fcall	_PowOff
l5019:	

;key.c: 98: }
;key.c: 101: }
;key.c: 105: if(long_f){
	movf	_long_f,w
	btfsc	3,2
	return

;key.c: 107: if(g_ucTimerWorkCount < 60) {
	movlw	60
	subwf	_g_ucTimerWorkCount,w
	btfsc	3,0
	goto	l5025

;key.c: 109: g_ucTimerWorkCount++;
	incf	_g_ucTimerWorkCount,f

;key.c: 111: } else {
	return
l5025:	

;key.c: 113: long_f = 0;
	clrf	_long_f

;key.c: 114: g_ucTimerWorkCount = 0;
	clrf	_g_ucTimerWorkCount

;key.c: 115: PowOff();
	ljmp	l4707
__end_of_ScanKey:	
	opt stack 0

	psect	text2
	file	"led.c"
__ptext2:	
;; *************** function _PowOn *****************
;; Defined at:
;;		line 64 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ScanKey
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _PowOn

_PowOn:	
	opt stack 2
l4701:	
;incstack = 0
; Regs used in _PowOn: []


;led.c: 88: ODCON &= ~(0x01 << 3);
	bcf	12,3	;volatile

;led.c: 90: TRISB |= (0x08);
	bsf	70,3	;volatile

;led.c: 92: PDCON1 |= (0x01 << 3);
	bsf	82,3	;volatile

;led.c: 93: PHCON &= ~(0x01 << 3);
	bcf	13,3	;volatile
	return
__end_of_PowOn:	
	opt stack 0

	psect	text3
__ptext3:	
;; *************** function _PowOff *****************
;; Defined at:
;;		line 109 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ScanKey
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _PowOff

_PowOff:	
	opt stack 2
l4707:	
;incstack = 0
; Regs used in _PowOff: []


;led.c: 129: TRISB |= (0x08);
	bsf	70,3	;volatile

;led.c: 130: PHCON |= (0x08);
	bsf	13,3	;volatile
	return
__end_of_PowOff:	
	opt stack 0

	psect	text4
__ptext4:	
;; *************** function _MotoSwitch *****************
;; Defined at:
;;		line 36 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ScanKey
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _MotoSwitch

_MotoSwitch:	
	opt stack 2

;led.c: 38: (BITS_DATA0.bit6) = !(BITS_DATA0.bit6);

;incstack = 0
; Regs used in _MotoSwitch: [status,0]
	bcf	3,0
	btfss	_BITS_DATA0,6
	bsf	3,0
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L2
	bsf	_BITS_DATA0,6
	return
L2:	
	bcf	_BITS_DATA0,6
	return
__end_of_MotoSwitch:	
	opt stack 0

	psect	text5
__ptext5:	
;; *************** function _LedSwitch *****************
;; Defined at:
;;		line 6 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ScanKey
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LedSwitch

_LedSwitch:	
	opt stack 2

;led.c: 9: (BITS_DATA0.bit5) = !(BITS_DATA0.bit5);

;incstack = 0
; Regs used in _LedSwitch: [status,0]
	bcf	3,0
	btfss	_BITS_DATA0,5
	bsf	3,0
	bcf	3,5	;RP0=0, select bank0
	btfss	3,0
	goto	L3
	bsf	_BITS_DATA0,5
	return
L3:	
	bcf	_BITS_DATA0,5
	return
__end_of_LedSwitch:	
	opt stack 0

	psect	text6
__ptext6:	
;; *************** function _MotoDisplay *****************
;; Defined at:
;;		line 53 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MotoOff
;;		_MotoOn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _MotoDisplay

_MotoDisplay:	
	opt stack 2

;led.c: 55: if ((BITS_DATA0.bit6) == 1)

;incstack = 0
; Regs used in _MotoDisplay: [status,2+status,0+pclath+cstack]
	btfss	_BITS_DATA0,6
	goto	l4827

;led.c: 56: {
;led.c: 57: MotoOn();
	ljmp	l4713
l4827:	
;led.c: 58: }


;led.c: 59: else
;led.c: 60: {
;led.c: 61: MotoOff();
	ljmp	l4715
__end_of_MotoDisplay:	
	opt stack 0

	psect	text7
__ptext7:	
;; *************** function _MotoOn *****************
;; Defined at:
;;		line 41 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotoDisplay
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _MotoOn

_MotoOn:	
	opt stack 2
l4713:	
;incstack = 0
; Regs used in _MotoOn: []


;led.c: 43: PORTB0 = 0;
	bcf	6,0	;volatile

;led.c: 44: MODSEL = 1;
	bsf	85,7	;volatile
	return
__end_of_MotoOn:	
	opt stack 0

	psect	text8
__ptext8:	
;; *************** function _MotoOff *****************
;; Defined at:
;;		line 47 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MotoDisplay
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _MotoOff

_MotoOff:	
	opt stack 2
l4715:	
;incstack = 0
; Regs used in _MotoOff: []


;led.c: 49: PORTB0 = 1;
	bsf	6,0	;volatile

;led.c: 50: MODSEL = 1;
	bsf	85,7	;volatile
	return
__end_of_MotoOff:	
	opt stack 0

	psect	text9
__ptext9:	
;; *************** function _LedDisplay *****************
;; Defined at:
;;		line 12 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LedOff
;;		_LedOn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LedDisplay

_LedDisplay:	
	opt stack 2

;led.c: 14: if ((BITS_DATA0.bit5) == 1)

;incstack = 0
; Regs used in _LedDisplay: [status,2+status,0+pclath+cstack]
	btfss	_BITS_DATA0,5
	goto	l4821

;led.c: 15: {
;led.c: 16: LedOn();
	ljmp	l4709
l4821:	
;led.c: 17: }


;led.c: 18: else
;led.c: 19: {
;led.c: 20: LedOff();
	ljmp	l4711
__end_of_LedDisplay:	
	opt stack 0

	psect	text10
__ptext10:	
;; *************** function _LedOn *****************
;; Defined at:
;;		line 24 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LedDisplay
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LedOn

_LedOn:	
	opt stack 2
l4709:	
;incstack = 0
; Regs used in _LedOn: []


;led.c: 26: PORTB1 = 0;
	bcf	6,1	;volatile

;led.c: 27: MODSEL = 1;
	bsf	85,7	;volatile
	return
__end_of_LedOn:	
	opt stack 0

	psect	text11
__ptext11:	
;; *************** function _LedOff *****************
;; Defined at:
;;		line 30 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LedDisplay
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _LedOff

_LedOff:	
	opt stack 2
l4711:	
;incstack = 0
; Regs used in _LedOff: []


;led.c: 32: PORTB1 = 1;
	bsf	6,1	;volatile

;led.c: 33: MODSEL = 1;
	bsf	85,7	;volatile
	return
__end_of_LedOff:	
	opt stack 0

	psect	text12
	file	"init.c"
__ptext12:	
;; *************** function _InitSystem *****************
;; Defined at:
;;		line 81 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _InitSystem

_InitSystem:	
	opt stack 3

;init.c: 83: OSCCON = 0;

;incstack = 0
; Regs used in _InitSystem: [wreg+status,2+status,0]
	clrf	80	;volatile

;init.c: 84: T0 = 0xCE;
	movlw	206
	movwf	1	;volatile

;init.c: 86: OPTION = 0x00;
	clrf	65	;volatile

;init.c: 87: PCON |= 0x90;
	movlw	144
	iorwf	8,f	;volatile

;init.c: 89: CMPCR = 0x00;
	clrf	81	;volatile

;init.c: 90: INTFLAG &= 0xFE;
	bcf	15,0	;volatile

;init.c: 91: CMPCR |= 0X10;
	bsf	81,4	;volatile
	return
__end_of_InitSystem:	
	opt stack 0

	psect	text13
__ptext13:	
;; *************** function _InitRam *****************
;; Defined at:
;;		line 102 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _InitRam

_InitRam:	
	opt stack 3

;init.c: 104: (BITS_DATA0.bit0) = 0;

;incstack = 0
; Regs used in _InitRam: [status,2]
	bcf	_BITS_DATA0,0

;init.c: 105: (BITS_DATA0.bit5) = 0;
	bcf	_BITS_DATA0,5

;init.c: 106: (BITS_DATA0.bit6) = 0;
	bcf	_BITS_DATA0,6

;init.c: 109: SleepCount = 0;
	clrf	_SleepCount
	clrf	_SleepCount+1
	return
__end_of_InitRam:	
	opt stack 0

	psect	text14
	file	"led.c"
__ptext14:	
;; *************** function _CountdownDisplay *****************
;; Defined at:
;;		line 149 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_bt_off
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _CountdownDisplay

_CountdownDisplay:	
	opt stack 1

;led.c: 153: if ((BITS_DATA0.bit5) == 1)

;incstack = 0
; Regs used in _CountdownDisplay: [wreg+status,2+status,0+pclath+cstack]
	btfss	_BITS_DATA0,5
	goto	l2175

;led.c: 154: {
;led.c: 156: lampTiming++;
	incf	_lampTiming,f
	btfsc	3,2
	incf	_lampTiming+1,f
	btfsc	3,2
	incf	_lampTiming+2,f
	btfsc	3,2
	incf	_lampTiming+3,f

;led.c: 158: if (lampTiming > ((unsigned long)120000))
	movf	_lampTiming+3,w
	btfss	3,2
	goto	l5035
	movlw	1
	subwf	_lampTiming+2,w
	btfss	3,2
	goto	u763
	movlw	212
	subwf	_lampTiming+1,w
	btfss	3,2
	goto	u763
	movlw	193
	subwf	_lampTiming,w
u763:	
	btfss	3,0
	goto	l2177
l5035:	

;led.c: 161: {
;led.c: 162: (BITS_DATA0.bit5) = 0;
	bcf	_BITS_DATA0,5

;led.c: 163: (BITS_DATA0.bit6) = 0;
	bcf	_BITS_DATA0,6

;led.c: 165: bt_off();
	fcall	_bt_off
	goto	l2177
l2175:	

;led.c: 174: else
;led.c: 175: {
;led.c: 177: lampTiming = 0;
	clrf	_lampTiming
	clrf	_lampTiming+1
	clrf	_lampTiming+2
	clrf	_lampTiming+3
l2177:	

;led.c: 178: }
;led.c: 180: if ((BITS_DATA0.bit6) == 1)
	btfss	_BITS_DATA0,6
	goto	l2178

;led.c: 181: {
;led.c: 182: motoTiming++;
	incf	_motoTiming,f
	btfsc	3,2
	incf	_motoTiming+1,f
	btfsc	3,2
	incf	_motoTiming+2,f
	btfsc	3,2
	incf	_motoTiming+3,f

;led.c: 184: if (motoTiming > ((unsigned long)120000))
	movf	_motoTiming+3,w
	btfss	3,2
	goto	l5043
	movlw	1
	subwf	_motoTiming+2,w
	btfss	3,2
	goto	u783
	movlw	212
	subwf	_motoTiming+1,w
	btfss	3,2
	goto	u783
	movlw	193
	subwf	_motoTiming,w
u783:	
	btfss	3,0
	return
l5043:	

;led.c: 187: {
;led.c: 188: (BITS_DATA0.bit5) = 0;
	bcf	_BITS_DATA0,5

;led.c: 189: (BITS_DATA0.bit6) = 0;
	bcf	_BITS_DATA0,6

;led.c: 191: bt_off();
	ljmp	l4717
l2178:	

;led.c: 200: else
;led.c: 201: {
;led.c: 203: motoTiming = 0;
	clrf	_motoTiming
	clrf	_motoTiming+1
	clrf	_motoTiming+2
	clrf	_motoTiming+3
	return
__end_of_CountdownDisplay:	
	opt stack 0

	psect	text15
__ptext15:	
;; *************** function _bt_off *****************
;; Defined at:
;;		line 96 in file "led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_CountdownDisplay
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _bt_off

_bt_off:	
	opt stack 1
l4717:	
;incstack = 0
; Regs used in _bt_off: [wreg+status,2+status,0+pclath+cstack]


;led.c: 98: PHCON |= (0x08);
	bsf	13,3	;volatile

;led.c: 99: PDCON1 |= (0x01 << 3);
	bsf	82,3	;volatile

;led.c: 101: TRISB &= (0xF7);
	bcf	70,3	;volatile

;led.c: 102: ODCON |= (0x08);
	bsf	12,3	;volatile

;led.c: 103: PORTB3 = 0;
	bcf	6,3	;volatile

;led.c: 105: extern void delay_ms(WORD xms);
;led.c: 106: delay_ms((WORD)500);
	movlw	244
	movwf	delay_ms@xms
	movlw	1
	movwf	delay_ms@xms+1
	ljmp	l4649
__end_of_bt_off:	
	opt stack 0

	psect	text16
	file	"main.c"
__ptext16:	
;; *************** function _delay_ms *****************
;; Defined at:
;;		line 23 in file "main.c"
;; Parameters:    Size  Location     Type
;;  xms             2    2[BANK0_] unsigned short 
;; Auto vars:     Size  Location     Type
;;  i               2    4[BANK0_] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_bt_off
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _delay_ms

_delay_ms:	
	opt stack 3
l4649:	
;main.c: 25: while (xms)

;incstack = 0
; Regs used in _delay_ms: [wreg+status,2+status,0]

	movf	delay_ms@xms,w
	iorwf	delay_ms@xms+1,w
	btfsc	3,2
	return

;main.c: 26: {
;main.c: 27: WORD i = 329;
	movlw	73
	movwf	delay_ms@i
	movlw	1
	movwf	delay_ms@i+1
l4645:	
;main.c: 29: while (i)

	movf	delay_ms@i,w
	iorwf	delay_ms@i+1,w
	btfsc	3,2
	goto	l2894
	nop	; ;# 

;main.c: 37: i--;
	movlw	1
	bcf	3,5	;RP0=0, select bank0
	subwf	delay_ms@i,f
	btfss	3,0
	decf	delay_ms@i+1,f
	goto	l4645
l2894:	
	clrwdt	; ;# 

;main.c: 44: xms--;
	movlw	1
	bcf	3,5	;RP0=0, select bank0
	subwf	delay_ms@xms,f
	movlw	0
	btfss	3,0
	decf	delay_ms@xms+1,f
	subwf	delay_ms@xms+1,f
	goto	l4649
__end_of_delay_ms:	
	opt stack 0

	psect	text17
	file	"temp.c"
__ptext17:	
;; *************** function _CheckSleep *****************
;; Defined at:
;;		line 33 in file "temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_InitPort
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _CheckSleep

_CheckSleep:	
	opt stack 2

;temp.c: 35: if(1 == (BITS_DATA0.bit5) || 1 == (BITS_DATA0.bit6))

;incstack = 0
; Regs used in _CheckSleep: [wreg+status,2+status,0+pclath+cstack]
	btfsc	_BITS_DATA0,5
	goto	l4851
	btfss	_BITS_DATA0,6
	goto	l4853
l4851:	

;temp.c: 36: {
;temp.c: 37: SleepCount = 0;
	clrf	_SleepCount
	clrf	_SleepCount+1
l4853:	

;temp.c: 38: }
;temp.c: 42: if(SleepCount < 1000)
	movlw	3
	subwf	_SleepCount+1,w
	movlw	232
	btfsc	3,2
	subwf	_SleepCount,w
	btfsc	3,0
	goto	l4859

;temp.c: 44: {
;temp.c: 45: SleepCount++;
	incf	_SleepCount,f
	btfsc	3,2
	incf	_SleepCount+1,f
	return
l4859:	

;temp.c: 47: }
;temp.c: 49: RAMP = 0;
	clrf	85	;volatile

;temp.c: 50: T1CON = 0;
	clrf	76	;volatile

;temp.c: 51: CHARGE1 = 0;
	clrf	84	;volatile

;temp.c: 52: CHARGE0 = 0;
	clrf	83	;volatile

;temp.c: 53: PCON = 0;
	clrf	8	;volatile

;temp.c: 54: CMPCR = 0;
	clrf	81	;volatile

;temp.c: 57: LVDM = 0;
	bcf	81,4	;volatile

;temp.c: 58: CMPEN = 0;
	bcf	8,0	;volatile

;temp.c: 59: CMPOF = 0;
	bcf	8,5	;volatile

;temp.c: 60: TEMPEN = 0;
	bcf	84,6	;volatile

;temp.c: 61: TMPF = 0;
	bcf	15,4	;volatile

;temp.c: 62: MODSEL = 0;
	bcf	85,7	;volatile

;temp.c: 64: WDTEN = 0;
	bcf	8,7	;volatile

;temp.c: 65: T0IE = 0;
	bcf	14,0	;volatile

;temp.c: 67: INTECON = 0;
	clrf	14	;volatile

;temp.c: 69: PORTB = 0;
	clrf	6	;volatile

;temp.c: 71: TRISB = 0xff;
	movlw	255
	movwf	70	;volatile
	movwf	4

;temp.c: 75: PDCON = 0xFF;
	movwf	11	;volatile

;temp.c: 76: PDCON1 = 0xFF;
	movwf	82	;volatile

;temp.c: 79: PHCON = 0XFF;
	movwf	13	;volatile

;temp.c: 81: PHCON &= (0xFB);
	bcf	13,2	;volatile

;temp.c: 82: PHCON &= (0xEF);
	bcf	13,4	;volatile

;temp.c: 85: IOCB = 0X00;
	clrf	9	;volatile

;temp.c: 86: IOCB |= (0x04);
	bsf	9,2	;volatile

;temp.c: 87: IOCB |= (0x10);
	bsf	9,4	;volatile

;temp.c: 88: IOCB |= (0x01 << 5);
	bsf	9,5	;volatile

;temp.c: 96: PBIF = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	15,1	;volatile

;temp.c: 97: PBIE = 1;
	bsf	14,1	;volatile

;temp.c: 98: GIE = 0;
	bcf	14,7	;volatile
	sleep	;# 
	nop	;# 
	nop	;# 
	nop	;# 
	nop	;# 
	movf	6,w	;# 

;temp.c: 112: PBIE = 0;
	bcf	3,5	;RP0=0, select bank0
	bcf	14,1	;volatile

;temp.c: 113: IOCB = 0;
	clrf	9	;volatile

;temp.c: 114: LVDM = 1;
	bsf	81,4	;volatile
	clrwdt	; ;# 

;temp.c: 119: WDTEN = 1;
	bcf	3,5	;RP0=0, select bank0
	bsf	8,7	;volatile

;temp.c: 120: GIE = 1;
	bsf	14,7	;volatile

;temp.c: 121: T0IE = 1;
	bsf	14,0	;volatile

;temp.c: 123: InitPort();
	fcall	_InitPort

;temp.c: 143: MODSEL = 1;
	bsf	85,7	;volatile

;temp.c: 144: SleepCount = 0;
	clrf	_SleepCount
	clrf	_SleepCount+1
	return
__end_of_CheckSleep:	
	opt stack 0

	psect	text18
	file	"init.c"
__ptext18:	
;; *************** function _InitPort *****************
;; Defined at:
;;		line 8 in file "init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_CheckSleep
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _InitPort

_InitPort:	
	opt stack 3

;init.c: 11: AUXR = 0;

;incstack = 0
; Regs used in _InitPort: [wreg+status,2]
	clrf	89	;volatile

;init.c: 13: PORTB = 0;
	clrf	6	;volatile

;init.c: 21: TRISB = 0;
	clrf	70	;volatile

;init.c: 22: TRISB |= (0x04);
	bsf	70,2	;volatile

;init.c: 23: TRISB |= (0x10);
	bsf	70,4	;volatile

;init.c: 24: TRISB |= (0x20);
	bsf	70,5	;volatile

;init.c: 26: TRISB |= (0x08);
	bsf	70,3	;volatile

;init.c: 33: PHCON = 0XFF;
	movlw	255
	movwf	13	;volatile

;init.c: 35: PHCON &= (0xFE);
	bcf	13,0	;volatile

;init.c: 36: PHCON &= (0xFD);
	bcf	13,1	;volatile

;init.c: 38: PHCON &= (0xFB);
	bcf	13,2	;volatile

;init.c: 39: PHCON &= (0xEF);
	bcf	13,4	;volatile

;init.c: 45: PDCON = 0xFF;
	movlw	255
	movwf	11	;volatile

;init.c: 46: PDCON1 = 0xFF;
	movwf	82	;volatile

;init.c: 48: PDCON1 &= ~(0x01 << 5);
	bcf	82,5	;volatile

;init.c: 53: IOCB = 0X00;
	clrf	9	;volatile

;init.c: 54: IOCB |= (0x04);
	bsf	9,2	;volatile

;init.c: 55: IOCB |= (0x10);
	bsf	9,4	;volatile

;init.c: 56: IOCB |= (0x20);
	bsf	9,5	;volatile

;init.c: 57: PBIE = 0;
	bcf	14,1	;volatile

;init.c: 63: ODCON = 0;
	clrf	12	;volatile

;init.c: 64: ODCON |= (0x01);
	bsf	12,0	;volatile

;init.c: 65: ODCON |= (0x02);
	bsf	12,1	;volatile

;init.c: 73: MODSEL = 1;
	bsf	85,7	;volatile

;init.c: 74: PORTB1 = 1;
	bsf	6,1	;volatile

;init.c: 75: PORTB0 = 1;
	bsf	6,0	;volatile

;init.c: 76: PORTB3 = 0;
	bcf	6,3	;volatile
	return
__end_of_InitPort:	
	opt stack 0

	psect	text19
	file	"interrupt.c"
__ptext19:	
;; *************** function _interrupt_handle *****************
;; Defined at:
;;		line 9 in file "interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON BANK0_4   BANK0
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;

	opt stack 0

;psect for function _interrupt_handle

_interrupt_handle:	
	opt stack 1

;interrupt.c: 11: if (PBIF)
	btfsc	15,1	;volatile

;interrupt.c: 12: {
;interrupt.c: 13: PBIF = 0;
	bcf	15,1	;volatile

;interrupt.c: 15: }
;interrupt.c: 16: if (T0IF)
	btfss	15,0	;volatile
	goto	i1l4925

;interrupt.c: 17: {
;interrupt.c: 18: T0IF = 0;
	bcf	15,0	;volatile

;interrupt.c: 19: T0 = 217;
	movlw	217
	movwf	1	;volatile
i1l4925:	
	movlw	200

;interrupt.c: 21: }
;interrupt.c: 23: g_ucTimer10msCount++;
	incf	_g_ucTimer10msCount,f

;interrupt.c: 29: if ((200) == g_ucTimer10msCount)
	xorwf	_g_ucTimer10msCount,w
	btfss	3,2
	goto	i1l1399

;interrupt.c: 30: {
;interrupt.c: 31: g_ucTimer10msCount = 0;
	clrf	_g_ucTimer10msCount

;interrupt.c: 32: (BITS_DATA0.bit0) = 1;
	bsf	_BITS_DATA0,0
i1l1399:	
	movf	??_interrupt_handle+1,w
	movwf	10
	movf _itemp,w
	movwf	0x07
	swapf	??_interrupt_handle^0,w
	movwf	3
	swapf	110,f
	swapf	110,w
	retfie
__end_of_interrupt_handle:	
	opt stack 0
btemp	set	110	;btemp
wtemp0	set	110

	psect	intentry
__pintentry:	
;incstack = 0
; Regs used in _interrupt_handle: [wreg+status,2+status,0]

	opt stack 1
interrupt_function:	
	opt stack 1
saved_w	set	btemp
	btfsc	3,5
	goto SAVE_BANK1
	movwf	btemp
	goto EXIT_BANK_SAVE
SAVE_BANK1:
	bcf	3,5
	movwf	btemp
	bsf	3,5
EXIT_BANK_SAVE:
	swapf	3,w
	bcf	3,5	;RP0=0, select bank0
	movwf	??_interrupt_handle
	movf 0x07,w
	movwf	_itemp
	movf	10,w
	movwf	??_interrupt_handle+1
	ljmp	_interrupt_handle

;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         18
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0_4          14      6       7
;!    BANK0            47      0      17
;!
;!Pointer List with Targets:
;!
;!    None.
;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _interrupt_handle in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0_4
;!
;!    _main->_delay_ms
;!    _bt_off->_delay_ms
;!
;!Critical Paths under _interrupt_handle in BANK0_4
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _interrupt_handle in BANK0
;!
;!    None.
;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     266
;!                         _CheckSleep
;!                   _CountdownDisplay
;!                           _InitPort
;!                            _InitRam
;!                         _InitSystem
;!                         _LedDisplay
;!                        _MotoDisplay
;!                            _ScanKey
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _ScanKey                                              0     0      0       0
;!                          _LedSwitch
;!                         _MotoSwitch
;!                             _PowOff
;!                              _PowOn
;! ---------------------------------------------------------------------------------
;! (2) _PowOn                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PowOff                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _MotoSwitch                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _LedSwitch                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotoDisplay                                          0     0      0       0
;!                            _MotoOff
;!                             _MotoOn
;! ---------------------------------------------------------------------------------
;! (2) _MotoOn                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _MotoOff                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _LedDisplay                                           0     0      0       0
;!                             _LedOff
;!                              _LedOn
;! ---------------------------------------------------------------------------------
;! (2) _LedOn                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _LedOff                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitSystem                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitRam                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _CountdownDisplay                                     0     0      0     133
;!                             _bt_off
;! ---------------------------------------------------------------------------------
;! (2) _bt_off                                               0     0      0     133
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             4     2      2     133
;!                                              2 BANK0_4    4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _CheckSleep                                           0     0      0       0
;!                           _InitPort
;! ---------------------------------------------------------------------------------
;! (1) _InitPort                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _interrupt_handle                                     2     2      0       0
;!                                              0 BANK0_4    2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _CheckSleep
;!     _InitPort
;!   _CountdownDisplay
;!     _bt_off
;!       _delay_ms
;!   _InitPort
;!   _InitRam
;!   _InitSystem
;!   _LedDisplay
;!     _LedOff
;!     _LedOn
;!   _MotoDisplay
;!     _MotoOff
;!     _MotoOn
;!   _ScanKey
;!     _LedSwitch
;!     _MotoSwitch
;!     _PowOff
;!     _PowOn
;!   _delay_ms
;!
;! _interrupt_handle (ROOT)
;!
;! Address spaces:
;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!DATA                 0      0      18       3        0.0%
;!BITBANK0_4           E      0       0       4        0.0%
;!BANK0_4              E      6       7       5       50.0%
;!BITBANK0            2F      0       0       6        0.0%
;!BANK0               2F      0      11       7       36.2%
;!ABS                  0      0      18       8        0.0%

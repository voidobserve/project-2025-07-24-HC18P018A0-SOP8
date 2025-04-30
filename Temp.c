#include"Temp.h"
#include "user_define.h"
#include "delay.h"
#include "variable.h"
#include "function.h"

void CheckTemp()
{
	TEMPEN = 1;
	DelayMs();
	if(TMPF == 0)
	{
		TempCount = 0;
		TempFlag = 0;
	}
	else
	{
		TempCount++;
	}
	
	if(5 == TempCount)
	{
		TempFlag = 1;
	}
	
	TEMPEN = 0;
	TMPF = 0;
}

void CheckSleep()
{
	if(1 == IsLight || 1 == CHARF)
	{
		SleepCount = 0;
	}

	if(SleepCount < 250)
	{
		SleepCount++;
		return;
	}
	
	if(PORT_KEY_1 == KEY_TURN_ON)
	{
		return;
	}
		
	LVDM = 0;		
	CMPEN = 0;
	CMPOF = 0;
	TEMPEN = 0;
	TMPF = 0;
	MODSEL = 0;
	DelayMs();
	
	WDTEN = 0;
	TRISB = 0x0C; //00001100
	PORTB = 0x2F; //00101111 
	IOCB = 0x08;
	
	__asm
	movf	PORTB,W
	__endasm;
	
	PBIF = 0;
	PBIE = 1;
	GIE = 0;
	
	__asm
	SLEEP
	nop
	nop
	nop
	nop
	 __endasm;

	__asm
	movf	PORTB,W
	__endasm;
	
	PBIE = 0;
	IOCB = 0;
	LVDM = 1;
	asm(clrwdt)
	WDTEN = 1;
	GIE = 1;
	PORTB = 0x00;
	TRISB = 0xCC; //00001100
	MODSEL = 1;
	SleepCount = 0;
//	LvdDebounceNew = 0;
//	LvdModelCount = 0;
//	LowBat = 0;
}

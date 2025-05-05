#include"Temp.h"
#include "user_define.h"
#include "delay.h"
#include "variable.h"
#include "function.h"
#include "init.h"
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
	if(1 == IsLight || 1 == IsMotor)
	{
		SleepCount = 0;
	}


	//delay one minute
	// if(SleepCount < 6000)
	if(SleepCount < 1000)
	{
		SleepCount++;
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

	InitPort();



	__asm
	movf	PORTB,W            //read portb
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


	InitPort();

	
	MODSEL = 1;
	SleepCount = 0;

}

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



extern void delay_ms(WORD xms);
void CheckSleep()
{
	if(1 == IsLight || 1 == IsMotor)
	{
		SleepCount = 0;
	}


	//delay one minute
	if(SleepCount < 6000)
	// if(SleepCount < 500)
	{
		SleepCount++;
		return;
	}

	RAMP = 0;
	T1CON = 0;
	CHARGE1 = 0;
	CHARGE0 = 0;
	PCON = 0;
	CMPCR = 0;


	LVDM = 0;		
	CMPEN = 0;
	CMPOF = 0;
	TEMPEN = 0;
	TMPF = 0;
	MODSEL = 0;

	WDTEN = 0;
	T0IE = 0;

	INTECON = 0;

	PORTB = 0;  // 0 disenable output, 1 enable output
	TRISB = 0xff;    //1：input  0:output
	 
	//下拉
	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
    PDCON1 = 0xFF; // 1 disenable down pull ,0 enable down pull

	//上拉
	PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull

	PHCON &= DEF_CLR_BIT2;
	PHCON &= DEF_CLR_BIT4;

    IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up
	IOCB |= DEF_SET_BIT2;
	IOCB |= DEF_SET_BIT4;
	
	// DelayMs();

	__asm
		movf	PORTB,W            //read portb
	__endasm;
	
	PBIF = 0;
	PBIE = 1;// 0	disenable Port level change interrupt , 1 enable Port level change interrupt
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
	T0IE = 1;

	InitPort();

	
	// PORT_LED1 = 0;
	// delay_ms(10);
	// PORT_LED1 = 1;
	// delay_ms(10);
	// PORT_LED1 = 0;
	// delay_ms(10);
	// PORT_LED1 = 1;
	// delay_ms(10);
	// PORT_LED1 = 0;
	// delay_ms(10);
	// PORT_LED1 = 1;
	// delay_ms(10);
	// PORT_LED1 = 0;
	// delay_ms(10);
	// PORT_LED1 = 1;


	MODSEL = 1;
	SleepCount = 0;

}

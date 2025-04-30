#include "interrupt.h"
#include "variable.h"



void InterruptFunc(void) __interrupt 0
{
	if (PBIF)//产生端口电平变化中断
	{
		PBIF = 0;
		
	}
	if (T0IF)//产生TMR0溢出中断
	{
		T0IF = 0;
		T0 = 217;
		
	}
	
	g_ucTimer10msCount++;		
		

		

		
	if (TIMER_COUNT_10MS == g_ucTimer10msCount)
	{
		g_ucTimer10msCount = 0;
		BIT_TIMER_10MS = 1;
	}		
}
#include "interrupt.h"
#include "variable.h"



void InterruptFunc(void) __interrupt 0
{
	if (PBIF)//�����˿ڵ�ƽ�仯�ж�
	{
		PBIF = 0;
		
	}
	if (T0IF)//����TMR0����ж�
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
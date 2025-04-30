#include "hc_define.h"
#include "init.h"
#include "variable.h"
#include "Lvd.h"
#include "work.h"
#include "key.h"
#include "Temp.h"
#include "function.h"
#include "Led.h"
#include "user_define.h"


const char VERSION[] = {VERSION_STR};
void _sdcc_gsinit_startup(void) { __asm pagesel _main __endasm; __asm goto _main __endasm; }


void delay_ms(WORD xms)
{
    while (xms)
    {
        WORD i = 329;

        while (i)
        {

asm(nop)	
            i--;
        }

		asm(clrwdt)		//���㿴�Ź���ʱ��
        xms--;
    }
}

void main()
{
	InitPort();
	InitSystem();
	InitRam();
	T0IE = 1;		//ʹ��TMR0����ж�
	GIE = 1;		//ʹ�������ж�   
	asm(clrwdt)		//���㿴�Ź���ʱ��
	delay_ms(500);
	while (1)
	{	
		asm(clrwdt)     //���㿴�Ź���ʱ��	
		//ʵ��9.7ms
       	if (BIT_TIMER_10MS)
		{
			BIT_TIMER_10MS = 0;

		   ScanKey();                       //�������	
		   CountdownDisplay();			 //����ʱ

		}	

		LedDisplay();					 //LEDָʾ��
		MotoDisplay();					 //�������
	
	}
}
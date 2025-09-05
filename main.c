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
// void _sdcc_gsinit_startup(void)
// {
// 	__asm;
// 	pagesel _main;
// 	__endasm;
// 	__asm;
// 	goto _main;
// 	__endasm;
// }

void delay_ms(WORD xms)
{
	while (xms)
	{
		WORD i = 329;

		while (i)
		{

			// asm(nop)

#asm;
			nop;
#endasm;
			i--;
		}

// asm(clrwdt) // ���㿴�Ź���ʱ��
#asm;
		clrwdt; // ι������
#endasm;
		xms--;
	}
}

void main()
{
	InitPort();
	InitSystem();
	InitRam();
	T0IE = 1; // ʹ��TMR0����ж�
	GIE = 1;  // ʹ�������ж�

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

// asm(clrwdt) // ���㿴�Ź���ʱ��
#asm;
	clrwdt; // ι������
#endasm;
	delay_ms(500);
	while (1)
	{
// asm(clrwdt) // ���㿴�Ź���ʱ��
#asm;
		clrwdt; // ι������
#endasm;

		// ʵ��9.7ms������ʱ��һ�������ǻ�����
		if (BIT_TIMER_10MS)
		{
			BIT_TIMER_10MS = 0;

			ScanKey();			// �������
			CountdownDisplay(); // ����ʱ
			CheckSleep();		// ����--�͹���
		}

		LedDisplay();  // LEDָʾ��
		MotoDisplay(); // �������
	}
}
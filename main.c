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

// asm(clrwdt) // 清零看门狗定时器
#asm;
		clrwdt; // 喂狗操作
#endasm;
		xms--;
	}
}

void main()
{
	InitPort();
	InitSystem();
	InitRam();
	T0IE = 1; // 使能TMR0溢出中断
	GIE = 1;  // 使能所有中断

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

// asm(clrwdt) // 清零看门狗定时器
#asm;
	clrwdt; // 喂狗操作
#endasm;
	delay_ms(500);
	while (1)
	{
// asm(clrwdt) // 清零看门狗定时器
#asm;
		clrwdt; // 喂狗操作
#endasm;

		// 实测9.7ms（可能时间一长，还是会有误差）
		if (BIT_TIMER_10MS)
		{
			BIT_TIMER_10MS = 0;

			ScanKey();			// 按键检测
			CountdownDisplay(); // 倒计时
			CheckSleep();		// 休眠--低功耗
		}

		LedDisplay();  // LED指示灯（根据对应的标志位来更新状态）
		MotoDisplay(); // 电机控制（根据对应的标志位来更新状态）

		if (flag_is_blue_tooth_open || IsLight || IsMotor)
		{
			flag_is_device_open = 1;
		}
		else
		{
			flag_is_device_open = 0;
		}
	}
}
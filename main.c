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

extern void test_turn(void);
void main()
{
	InitPort();
	InitSystem();
	InitRam();
	T0IE = 1;		//使能TMR0溢出中断
	GIE = 1;		//使能所有中断   
	asm(clrwdt)		//清零看门狗定时器
		
	while (1)
	{	
		asm(clrwdt)     //清零看门狗定时器	
		//实测9.7ms
       	if (BIT_TIMER_10MS)
		{
			BIT_TIMER_10MS = 0;

		   ScanKey();                       //按键检测	
		   test_turn();
		}	

		LedDisplay();					 //LED指示灯
		MotoDisplay();					 //电机控制


	
	}
}
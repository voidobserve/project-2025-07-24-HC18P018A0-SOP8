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
	if(SleepCount < 1000)
	// if(SleepCount < 500)
	{
		SleepCount++;
		return;
	}

	RAMP = 0;
	T1CON = 0;
	CHARGE1 = 0; //  
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

	PORTB = 0;  // 【端口数据寄存器】0 disenable output, 1 enable output

	TRISB = 0xff;    //1：input  0:output   PORTBx 端口全部配置为输入模式
	// TRISB = ~(0x01 << 3); // PB3 保持输出模式
	 
	//下拉
	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
    PDCON1 = 0xFF; // 1 disenable down pull ,0 enable down pull

	//上拉
	PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull

	PHCON &= DEF_CLR_BIT2; // 使能上拉 PB2 芯片2脚
	PHCON &= DEF_CLR_BIT4; // 使能上拉 PB4 芯片3脚
	// PHCON &= ~(0x01 << 5); // 使能 PB5 上拉，芯片4脚

    IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up
	IOCB |= DEF_SET_BIT2; // 唤醒中断使能 PB2 芯片2脚
	IOCB |= DEF_SET_BIT4; // 唤醒中断使能 PB4 芯片3脚
	IOCB |= (0x01 << 5); // 唤醒中断使能 PB5，芯片4脚
	
	// DelayMs();

	#asm;
		movf	PORTB,W;            //read portb
	#endasm;
	
	PBIF = 0;
	PBIE = 1;// 0	disenable Port level change interrupt , 1 enable Port level change interrupt
	GIE = 0;
	
	#asm;
	SLEEP
	nop
	nop
	nop
	nop
	#endasm;

	#asm;
	movf	PORTB,W
	#endasm;
	
	PBIE = 0;
	IOCB = 0; // 唤醒后，屏蔽PORTBx 端口唤醒中断
	LVDM = 1;
	// asm(clrwdt)
#asm;
        clrwdt; // 喂狗操作
#endasm;
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

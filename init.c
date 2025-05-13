#include "init.h"
#include "variable.h"



//控蓝牙，上电是开漏，不开上下拉
//按下按键是开上拉，输出，松手时输出低，关上拉
void InitPort(void)
{
  
	AUXR = 0;

	PORTB = 0;  // 0 disenable output, 1 enable output
  

   //=====================================================================================

	//配置端口模式 
	//PB 01 3输出  2 4 5输入
	
	TRISB = 0;    //1：input  0:output
	TRISB |= DEF_SET_BIT2;    //input
	TRISB |= DEF_SET_BIT4;  //input
	TRISB |= DEF_SET_BIT5;  //input
	TRISB |= DEF_SET_BIT3;  //input


	
   //=====================================================================================
    //配置上拉  
	// 2 4需要拉上
    PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull
	// 0 1 3是开漏输出，靠内部上拉提供高低
	PHCON &= DEF_CLR_BIT0;
	PHCON &= DEF_CLR_BIT1;
	// PHCON &= DEF_CLR_BIT3;
	PHCON &= DEF_CLR_BIT2;
	PHCON &= DEF_CLR_BIT4;


   //=====================================================================================
	//配置下拉
	
	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
    PDCON1 = 0xFF; // 1 disenable down pull ,0 enable down pull
    

   //=====================================================================================
    IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up
	IOCB |= DEF_SET_BIT2;
	IOCB |= DEF_SET_BIT4;
	IOCB |= DEF_SET_BIT5;
    PBIE = 0; // 0	disenable Port level change interrupt , 1 enable Port level change interrupt


   //=====================================================================================


	ODCON = 0;
	ODCON |= DEF_SET_BIT0; // 0 disenable open drain output, 1 enable open drain output
	ODCON |= DEF_SET_BIT1;
	// ODCON |= DEF_SET_BIT3;



   //=====================================================================================
    MODSEL = 1;   // 1：使能内置限流电阻
	PORT_LED1 = 1;  //灯光  1：灭  0：亮
	PORT_LED2 = 1;  //电机 1：灭  0：亮
	PORT_LED3 = 0; //pow
}



void InitSystem(void)
{
	OSCCON = 0;     //高频	
	T0 =   0xCE;

	OPTION = 0x00;	//下降沿中断 Fcpu 上升沿计数 TMR0 1/2预分频
	PCON |= 0x90; 	//使能WDT
	
	CMPCR = 0x00;  //关闭比较器
	INTFLAG &= 0xFE;
	CMPCR |= 0X10;

}

void InitPwm(void)
{
	AUXR = 0;
	T1 = 0XFE;     //TI计数器
	T1LOAD = 0XFE;
}	

void InitRam(void)
{
	BIT_TIMER_10MS = 0;
	IsLight = 0;
	IsMotor = 0;

	
 	SleepCount = 0;
 
}
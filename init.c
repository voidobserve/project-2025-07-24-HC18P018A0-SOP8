#include "init.h"
#include "variable.h"

void InitPort(void)
{
  
	PORTB = 0;  // 0 disenable output, 1 enable output
  
	//配置端口模式 
	//PB 01 3输出  2 4 5输入
	
	TRISB = 0;    //1：input  0:output
	TRISB |= DEF_SET_BIT2;
	TRISB |= DEF_SET_BIT4;
	TRISB |= DEF_SET_BIT5;

    //配置上拉  
	// 2 4需要拉上
    PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull
	PHCON &= DEF_CLR_BIT2;
	PHCON &= DEF_CLR_BIT4;

	//配置下拉
	//5需要下拉
	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
    PDCON1 = DEF_CLR_BIT5; // 1 disenable down pull ,0 enable down pull
    

   
    IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up

    PBIE = 0; // 0	disenable Port level change interrupt , 1 enable Port level change interrupt

	ODCON = 0; // 0 disenable open drain output, 1 enable open drain output


	//IOCB = 0X08;
	PORT_LED1 = 0;  //灯光
	PORT_LED2 = 1;  //电机
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

	TempCount = 0;
	TempFlag = 0;
	
 	SleepCount = 0;
 	SleepFlag = 0;
}
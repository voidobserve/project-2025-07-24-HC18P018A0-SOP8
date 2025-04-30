#include "Led.h"
#include "user_define.h"
#include "variable.h"
#include "init.h"

void LedSwitch(void)
{

	IsLight = !IsLight;

}



void LedDisplay()
{
	if(IsLight == 1 )
	{
		LedOn();
	}
	else
	{
		LedOff();
	}	
}



void LedOn()
{
	PORT_LED1 = LIGHT_TURN_ON;
	MODSEL = 1;	   //使能内置限流电阻
}

void LedOff()
{
	PORT_LED1 = LIGHT_TURN_OFF;
	MODSEL = 1;
}

void MotoSwitch(void)
{
	IsMotor =!IsMotor;
}




void MotoOn()
{
	PORT_LED2 = LIGHT_TURN_ON;
	MODSEL = 1;	
}

void MotoOff()
{
	PORT_LED2 = LIGHT_TURN_OFF;
	MODSEL = 1;
}

void MotoDisplay(void)
{
	if(IsMotor == 1)
	{
		MotoOn();
	}
	else
	{
		MotoOff();
	}	
}
void PowOn(void)
{
	//配置输入上拉
	TRISB  |= DEF_SET_BIT3;
	PHCON &= DEF_CLR_BIT3;
}

void PowOff(void)
{

	//关闭上拉
	//配置输出0
	TRISB  &= DEF_CLR_BIT3;
	PHCON |= DEF_SET_BIT3;

}


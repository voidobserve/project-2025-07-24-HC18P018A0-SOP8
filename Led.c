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
	if (IsLight == 1)
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
	PORT_LED1 = 0;
	MODSEL = 1; // 使能内置限流电阻
}

void LedOff()
{
	PORT_LED1 = 1;
	MODSEL = 1;
}

void MotoSwitch(void)
{
	IsMotor = !IsMotor;
}

void MotoOn()
{
	PORT_LED2 = 0;
	MODSEL = 1;
}

void MotoOff()
{
	PORT_LED2 = 1;
	MODSEL = 1;
}

void MotoDisplay(void)
{
	if (IsMotor == 1)
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
	//

	// PHCON &= DEF_CLR_BIT3;  //open high pull

	// PHCON &= DEF_CLR_BIT3;  //open high pull
	// PORT_LED3 = 1;
	// MODSEL = 1;

#if 0

	//开漏输出低
	TRISB &= DEF_CLR_BIT3;  //ouput
	ODCON |= DEF_SET_BIT3;  //开漏
	PORT_LED3 = 0;
#else

	// 输入上拉
	//  TRISB |= DEF_SET_BIT3;  //input  pwo键
	//  PHCON &= DEF_CLR_BIT3;

#endif

	ODCON &= ~(0x01 << 3);

	TRISB |= DEF_SET_BIT3; // input

	PDCON1 |= (0x01 << 3); // 关闭下拉
	PHCON &= ~(0x01 << 3); // 使能上拉
}

void bt_off(void)
{
	PHCON |= DEF_SET_BIT3; // 关闭上拉
	PDCON1 |= (0x01 << 3); // 关闭下拉
	// 开漏输出低
	TRISB &= DEF_CLR_BIT3; // ouput 输出模式
	ODCON |= DEF_SET_BIT3; // 开漏输出
	PORT_LED3 = 0;

	extern void delay_ms(WORD xms);
	delay_ms((WORD)500);
}

void PowOff(void)
{

#if 0

	//配置输入
	TRISB |= DEF_SET_BIT3;  //input
	ODCON &= DEF_CLR_BIT3;  //关开漏

#else

	// PHCON |= DEF_SET_BIT3;   //close high pull
	// //开漏输出低
	// TRISB &= DEF_CLR_BIT3;  //ouput 输出模式
	// ODCON |= DEF_SET_BIT3;  // 开漏输出
	// // PHCON |= DEF_SET_BIT3;   //close high pull
	// PORT_LED3 = 0;

#endif

	TRISB |= DEF_SET_BIT3;	// input
	PHCON |= DEF_SET_BIT3;	// 关闭上拉
	// PDCON1 &= ~(0x01 << 3); // 使能下拉



	//  PHCON |= DEF_SET_BIT3;   //close high pull

	// TRISB |=
	// PHCON |= DEF_SET_BIT3;   //close high pull
	// PORT_LED3 = 0;
	// MODSEL = 1;

	// //关闭上拉
	// //配置输出0
	// TRISB  &= DEF_CLR_BIT3;  //output
	// PHCON |= DEF_SET_BIT3;   //close high pull
}

DWORD lampTiming = 0;
DWORD motoTiming = 0;

void CountdownDisplay(void)
{
	// 理论上每10ms进入一次，实际会有偏差

	if (IsLight == 1)
	{

		lampTiming++;
#if 1
		if(lampTiming > 124000)   //20分钟
		// if (lampTiming > 3000) // 30s 测试用
		{
			IsLight = 0;
			// PowOff();
			bt_off();
		}
#else
		if (lampTiming > 1000)
		{ // 10s
			IsLight = 0;
		}
#endif
	}
	else
	{

		lampTiming = 0;
	}

	if (IsMotor == 1)
	{
		motoTiming++;
#if 1
		if(motoTiming > 124000)//20分钟
		// if (motoTiming > 3000) // 30s 测试用
		{
			IsMotor = 0;
			// PowOff();
			bt_off();
		}
#else
		if (motoTiming > 1000)
		{ // 10s
			IsMotor = 0;
		}
#endif
	}
	else
	{

		motoTiming = 0;
	}
}

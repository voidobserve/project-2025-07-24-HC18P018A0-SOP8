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
	PORT_LED1 = 0;
	MODSEL = 1;	   //使能内置限流电阻
}

void LedOff()
{
	PORT_LED1 = 1;
	MODSEL = 1;
}

void MotoSwitch(void)
{
	IsMotor =!IsMotor;
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


	//输入上拉
	// TRISB |= DEF_SET_BIT3;  //input  pwo键
	PHCON &= DEF_CLR_BIT3;
	
	#endif




}

void PowOff(void)
{


	#if 0

	//配置输入
	TRISB |= DEF_SET_BIT3;  //input
	ODCON &= DEF_CLR_BIT3;  //关开漏

	#else 

	PHCON |= DEF_SET_BIT3;   //close high pull
	// //开漏输出低
	// TRISB &= DEF_CLR_BIT3;  //ouput
	// ODCON |= DEF_SET_BIT3;  //开漏
	// PHCON |= DEF_SET_BIT3;   //close high pull

	// PORT_LED3 = 0;


	#endif 





	
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


	if(IsLight == 1) {

		lampTiming++;
		#if 1
		if(lampTiming > 124000) {    //20分钟
			IsLight = 0;
		}
		#else 
		if(lampTiming > 1000) {    //10s
			IsLight = 0;
		}
		#endif


	} else {

		lampTiming = 0;

	}


	if(IsMotor == 1){
		motoTiming++;
		#if 1
		if(motoTiming > 124000) {    //20分钟
			IsMotor = 0;
		}
		#else 
		if(motoTiming > 1000) {    //10s
			IsMotor = 0;
		}
		#endif
	} else {



		motoTiming = 0;
	}
	

}







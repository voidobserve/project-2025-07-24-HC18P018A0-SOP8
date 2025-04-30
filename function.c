#include "function.h"
#include "key.h"
#include "variable.h"

void ControlLevelLow(void)
{
	g_ucPWM_KeyChange = 0;
	PWM_LED0 =  PWM_LED1 = PWM_LED2 = 0;    //用于设置 PWM0 的高电平时间
	
	PWMCON = 0x80;     //禁止 PWM0/BUZ 输出，PORTB5 端口作为 I/O 口
	PWM0E = 0;         //禁止 PWM0 输出，PORTB5 端口作为 I/O 口    T1CON
	T1EN = 0;
	MODSEL = 1;			//使能内置限流电阻
	
	PORT_LED1 = 1;
	PORT_LED2 = 1;
	PORT_LED3 = 1;		
}	

void ControlLevelHigh(void)
{
	g_ucPWM_KeyChange = 0;
	ControlLevel(MaxLight,MaxLight,MaxLight);		
}

void ControlLevel(BYTE lightnum1, BYTE lightnum2, BYTE lightnum3)
{
	g_ucPWM_KeyChange = 0;
	PWMCON = 0x63;  //01100011
	PWM0E = 1;
	T1EN = 1;      //启动 T1
	RAMP = 0xC5;  //11000101 //禁止内置限流电阻。
	
	PWM_LED0 = lightnum1;
	PWM_LED1 = lightnum2;
	PWM_LED2 = lightnum3;
}

void ControlFlash()
{

#if 0
	if (g_ucPWM_KeyChange != 0)
	{
		g_ucPWM_KeyChange = 0;
	}
	
	PWMCON = 0x63;  //01100011
	PWM0E = 1;
	T1EN = 1;      //启动 T1	
	RAMP = 0xC5;  //11000101 //禁止内置限流电阻。
	
	g_ucPWM_FlashControl++;
	g_ucPWM_FlashControl1++;
	g_ucPWM_FlashControl2++;

	if (g_ucPWM_FlashControl == (g_ucFlashTimeHigh+g_ucFlashTimeLow))
	{
		g_ucPWM_FlashControl = 0;				
	}

	if (g_ucPWM_FlashControl1 == (g_ucFlashTimeHigh1+g_ucFlashTimeLow1))
	{
		g_ucPWM_FlashControl1 = 0;				
	}

	if (g_ucPWM_FlashControl2 == (g_ucFlashTimeHigh2+g_ucFlashTimeLow2))
	{
		g_ucPWM_FlashControl2 = 0;				
	}
	
			
	if (BIT_CONTROL_FLASH_LED1 && g_ucPWM_FlashControl < g_ucFlashTimeHigh)
	{
		PWM_LED0 = MaxLight;	
	}	
	else
	{
		PWM_LED0 = 0x00;
	}

	if (BIT_CONTROL_FLASH_LED2 && g_ucPWM_FlashControl1 < g_ucFlashTimeHigh1)
	{
		PWM_LED1 = MaxLight;
	}	
	else
	{
		PWM_LED1 = 0x00;		
	}
		
	if (BIT_CONTROL_FLASH_LED3 && g_ucPWM_FlashControl2 < g_ucFlashTimeHigh2)
	{
		PWM_LED2 = MaxLight;
	}	
	else
	{
		PWM_LED2 = 0x00;	
	}
	
	#endif
}

void ControlSos(void)
{

#if 0
	if(g_ucPWM_KeyChange != 0)
	{
		g_ucPWM_KeyChange =0;
	}

	PWMCON = 0x63;  //01100011
	PWM0E = 1;
	T1EN = 1;      //启动 T1
	RAMP = 0xC5;  //11000101 //禁止内置限流电阻。
	
	g_ucPWM_FlashControl++;

	if(g_ucPWM_LevelControl <3)
	{
		g_ucBlankTime=g_ucFlashTimeHigh; //200
	}
	else if(g_ucPWM_LevelControl == 3)
	{
		g_ucBlankTime=g_ucFlashTimeLow;  //400
	} 
	else if(g_ucPWM_LevelControl == 6)
	{
		g_ucBlankTime = g_ucFlashTimeHigh;
	}
	else if(g_ucPWM_LevelControl >= 9)
	{
		g_ucPWM_LevelControl++;
		g_ucPWM_FlashControl = g_ucFlashTimeLow+1;
	
		if(g_ucPWM_LevelControl >= g_blank)
		{
			g_ucPWM_LevelControl=0;
			g_ucPWM_FlashControl=0;
		}	
	} 
	
	g_ucLevelStep = g_ucBlankTime-1;
	g_ucLevelStep = g_ucBlankTime+g_ucBlankTime;
	
	if(g_ucPWM_FlashControl<g_ucBlankTime)
    {
    	if(BIT_CONTROL_FLASH_LED1)
    	{
    		PWM_LED0 = MaxLight;
    	}
    	if(BIT_CONTROL_FLASH_LED2)
    	{
    		PWM_LED1 = MaxLight;
    	}
    	if(BIT_CONTROL_FLASH_LED3)
    	{
    		PWM_LED2 = MaxLight;
    	}
	}
	else
	{
		PWM_LED0 = PWM_LED1 = PWM_LED2 = 0x00;
		if(g_ucPWM_FlashControl == g_ucLevelStep && g_ucPWM_LevelControl <9)
		{
			g_ucPWM_FlashControl=0;
			g_ucPWM_LevelControl++;
		}
 	 }
 	 #endif
}



#include "Lvd.h"
#include "delay.h"
#include "variable.h"
#include "function.h"

void CheckLvdElectric(BYTE num);
void ControlLvdCfg(BYTE num);

void CheckLvd(void)
{

#if 0
	if(0 == CHARF)
	{
		//δ���
		if(g_ucKeyState == 0)  //�ر�ģʽ
		{
			return;
		}
	
	}	
	//����ѹ
	CheckLvdElectric(LvdDebounceNew);
	
	
		
	return;
	
	
	#endif
}

//CHARF �Ƿ����ڳ��

void CheckLvdElectric(BYTE num)
{


if(num == 1){}

	#if 0
	if(0 == num)
		PCON = PCON0;  //00011110  4.2v
	else if(1 == num)
		PCON = PCON1;  //00011100  4.1v
	else if(2 == num)
		PCON = PCON2;  //00010010  3.3v
	else if(3 == num)
		PCON = PCON3;  //00001110  3.0v
	else if(4 == num)
		PCON = PCON4;  //00001100  2.8v	
				
	CMPEN = 1; //�����Ƚ���
	DelayMs();

	//LvdDebounceNew = num;
	
	if(0 == CMPOF)   //��ѹ�ﵽ
	{
		if(num == LvdDebounceOld)
		{
			LvdModelCount ++;	
		}
		else
		{
			LvdModelCount = 0;
		}
		LvdDebounceOld = num;  
	}
	else
	{		
		if(4 == num)   //û��(С��2.8V)
		{
			LvdModelCount++;
			LvdDebounceOld = 5;
		}
		else
		{
			LvdModelCount = 0;
			LvdDebounceNew++;
		}
	}
	
	if(LvdDebounceNew >= 5)	
	{
		LvdDebounceNew = 0;
	}
	
	CMPOF = 0;
	CMPEN = 0;
	
	if(250 <= LvdModelCount)  //����
	{
		LvdDebounceNew = 0;
		LvdModelCount = 0;
		LvdModel = LvdDebounceOld;
		if(5 == LvdModel)
		{
			LowBat = 1;
		}
		else
		{
			LowBat = 0;
		}
	}
		#endif
}

void ConfigureLvd(void)
{	
	#if 0
	if(0 == CHARF)  //VDD������4.4Vʱ��������ж�
	{
		ControlLvdCfg(4);
		IsFull = 0;
		IsCharf = 0;
		LvdLightCount = 0;
		return;	  //δ���
	}
	else 
	{
		if(1 == IsFull)
		{
			LvdLightCount = 0;
			return;
		}			
	}
	
	LvdLightCount++;
	if(200 == LvdLightCount)
	{
		IsCharf = 1;
		LvdLightCount = 0;
	}
	if(IsCharf == 0)
	{
		return;
	}
	
	LowBat = 0;
	
	if(LvdModel == 0)          //��
	{
		IsFull = 1;
		ControlLvdCfg(4);
	}	
	if(LvdModel == 1)          //4,1
		ControlLvdCfg(3);	
	if(LvdModel == 2)         //3.3
		ControlLvdCfg(2);
	if(LvdModel == 3)        //3.0
		ControlLvdCfg(2); 
	if(LvdModel == 4)         //2.8
		ControlLvdCfg(1);
	if(LvdModel == 5)        //û��
		ControlLvdCfg(1);

		#endif
}

void ControlLvdCfg(BYTE num)
{

	if(num == 1){}


	#if 0
	if(1 == num)   //������
	{
		CHARGE0 = CHARGE0A;
		CHARGE1 = CHARGE1A; //10000010
	}
	else if(2 == num)  //��������
	{
		if(1 == TempFlag)
		{
			CHARGE0 = 0xE0; //11100000
			CHARGE1 = 0x83; //10000011
		}
		else
		{
			CHARGE0 = CHARGE0B;
			CHARGE1 = CHARGE1B; //10000011
		}
	}
	else if(3 == num) //80mA���
	{
		CHARGE0 = CHARGE0C;
		CHARGE1 = CHARGE1C; //10000011
	}
	else if(4 == num)	//�رճ��	
	{
		CHARGE0 = CHARGE0D;
		CHARGE1 = CHARGE1D;
	}
#endif
	
}
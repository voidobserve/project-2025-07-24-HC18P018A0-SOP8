#include "init.h"
#include "variable.h"




//���������ϵ��ǿ�©������������
//���°����ǿ����������������ʱ����ͣ�������
void InitPort(void)
{
  
	AUXR = 0;

	PORTB = 0;  // 0 disenable output, 1 enable output
  
	//���ö˿�ģʽ 
	//PB 01 3���  2 4 5����
	
	TRISB = 0;    //1��input  0:output
	TRISB |= DEF_SET_BIT2;    //input
	TRISB |= DEF_SET_BIT4;  //input
	TRISB |= DEF_SET_BIT5;  //input
	
	TRISB |= DEF_SET_BIT3;  //input

    //��������  
	// 2 4��Ҫ����
    PHCON = 0XFF;  // 1 disenable high pull ,0 enable high pull
	// 0 1 3�ǿ�©��������ڲ������ṩ�ߵ�
	PHCON &= DEF_CLR_BIT0;
	PHCON &= DEF_CLR_BIT1;
	// PHCON &= DEF_CLR_BIT3;


	PHCON &= DEF_CLR_BIT2;
	PHCON &= DEF_CLR_BIT4;

	//��������
	
	PDCON = 0xFF;  // 1 disenable down pull ,0 enable down pull
    PDCON1 = 0xFF; // 1 disenable down pull ,0 enable down pull
    

   
    IOCB = 0X00; // 0 disenable weak up 	,1 enable weak up

    PBIE = 0; // 0	disenable Port level change interrupt , 1 enable Port level change interrupt
	ODCON = 0;
	ODCON |= DEF_SET_BIT0; // 0 disenable open drain output, 1 enable open drain output
	ODCON |= DEF_SET_BIT1;
	// ODCON |= DEF_SET_BIT3;
	//IOCB = 0X08;
	PORT_LED1 = 1;  //�ƹ�  1����  0����
	PORT_LED2 = 1;  //��� 1����  0����
	PORT_LED3 = 0; //pow
}



void InitSystem(void)
{
	OSCCON = 0;     //��Ƶ	
	T0 =   0xCE;

	OPTION = 0x00;	//�½����ж� Fcpu �����ؼ��� TMR0 1/2Ԥ��Ƶ
	PCON |= 0x90; 	//ʹ��WDT
	
	CMPCR = 0x00;  //�رձȽ���
	INTFLAG &= 0xFE;
	CMPCR |= 0X10;

}

void InitPwm(void)
{
	AUXR = 0;
	T1 = 0XFE;     //TI������
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
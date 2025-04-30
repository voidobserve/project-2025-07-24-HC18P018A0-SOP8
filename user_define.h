#ifndef __USER_DEFINE_H__
#define __USER_DEFINE_H__

#include <HC18P018A0.h>

#define	MAX_KEY_COUNT	4
#define	MAX_KEY_STATE	1

#define	LIGHT_TURN_ON	1
#define	LIGHT_TURN_OFF	0
#define	KEY_TURN_ON	0
//#define KEY_TURN_OFF 	0

#define	PCON0	30
#define	PCON1	28
#define	PCON2	18
#define	PCON3	14
#define	PCON4	12

#define	CHARGE0A	0x00
#define	CHARGE0B	0xFF
#define	CHARGE0C	0x00
#define	CHARGE0D	0x00

#define	CHARGE1A	0x82
#define	CHARGE1B	0x83
#define	CHARGE1C	0x83
#define	CHARGE1D	0x00


//按键 3/4
#define PORT_KEY_1	PORTB2
#define PORT_KEY_2	PORTB4
#define PORT_KEY_3	PORTB5
//具有PWM功能
#define PORT_LED1	PORTB1   //pm2  led
#define PORT_LED2	PORTB0   //pm1  moto
#define PORT_LED3	PORTB3   //pm0  pwo

#define PWM_LED0	PWM2P
#define PWM_LED1	PWM1P
#define PWM_LED2	PWM0P
//呼吸灯
#define PORT_BLED	PORTB4

#define TIMER_COUNT_1MS		(1000/50)
// #define TIMER_COUNT_10MS	(10*TIMER_COUNT_1MS)
#define TIMER_COUNT_10MS	(200)

#define	g_cucTIMER_COUNT_STATE0	1
#define	g_cucTIMER_COUNT_STATE1	1
#define	g_cucTIMER_COUNT_STATE2	1
#define	g_cucTIMER_COUNT_STATE3	1
#define	g_cucTIMER_COUNT_STATE4	4
#define	g_cucTIMER_COUNT_STATE5	4
#define	g_cucTIMER_COUNT_STATE6	1
#define	g_cucTIMER_COUNT_STATE7	4
#define	g_cucTIMER_COUNT_STATE8	1
#define g_cucTIMER_COUNT_STATE9	1

#define VERSION_STR "HC-VS V01"

#endif//__USER_DEFINE_H__

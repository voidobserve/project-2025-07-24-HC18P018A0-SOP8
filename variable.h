#ifndef __VARIABLE_H__
#define __VARIABLE_H__

#include "hc_define.h"

DECLARE_BITS8(BITS_DATA0)
DECLARE_BITS16(BITS_DATA1)
#define BIT_TIMER_10MS			BITS(BITS_DATA0, 0)
#define LowBat					BITS(BITS_DATA0, 1) 
#define g_ucPWM_KeyChange		BITS(BITS_DATA0, 2) 
#define BIT_KEY_OPEN			BITS(BITS_DATA0, 3)
#define BIT_TIMER_WORK			BITS(BITS_DATA0, 4)
#define IsLight					BITS(BITS_DATA0, 5)
#define IsMotor			        BITS(BITS_DATA0, 6)
#define BIT_LED2_Flag			BITS(BITS_DATA0, 7)

#define IsFull					BITS(BITS_DATA1, 0)
#define IsCharf					BITS(BITS_DATA1, 1)
//#define IsLight						BITS(BITS_DATA1, 2)

#define BIT_CONTROL_LEVEL_HIGH_LED1	BITS(BITS_DATA1, 3)
#define BIT_CONTROL_LEVEL_HIGH_LED2	BITS(BITS_DATA1, 4)
#define BIT_CONTROL_LEVEL_HIGH_LED3	BITS(BITS_DATA1, 5)

#define BIT_CONTROL_FLASH_LED1		BITS(BITS_DATA1, 6)
#define BIT_CONTROL_FLASH_LED2		BITS(BITS_DATA1, 7)
#define BIT_CONTROL_FLASH_LED3		BITS(BITS_DATA1, 8)

#define BIT_CONTROL_LEVEL_LED1		BITS(BITS_DATA1, 9)
#define BIT_CONTROL_LEVEL_LED2		BITS(BITS_DATA1, a)
#define BIT_CONTROL_LEVEL_LED3		BITS(BITS_DATA1, b)
#define BIT_CONTROL_POWER			BITS(BITS_DATA1, c)

extern BYTE g_ucTimer10msCount;
extern BYTE g_ucTimerWorkCount;

// extern BYTE g_ucKeyCount;
// extern BYTE g_ucKeyState;


// extern BYTE g_ucPWM_FlashControl;//±¨…¡øÿ÷∆
// extern BYTE g_ucPWM_FlashControl1;
// extern BYTE g_ucPWM_FlashControl2;
    
// extern BYTE g_ucFlashTimeHigh;  
// extern BYTE g_ucFlashTimeLow;
// extern BYTE g_ucFlashTimeHigh1;
// extern BYTE g_ucFlashTimeLow1;
// extern BYTE g_ucFlashTimeHigh2;
// extern BYTE g_ucFlashTimeLow2;

// extern const BYTE g_cucTIMER_COUNT_STATE[10];
// ////////////////////////////
// extern BYTE LvdModel;
// extern BYTE LvdDebounceNew;
// extern BYTE LvdDebounceOld;
// extern BYTE LvdModelCount;
// extern BYTE LvdLightCount;

extern BYTE TempCount;
extern BYTE TempFlag;

extern WORD SleepCount;
extern BYTE SleepFlag;

extern BYTE MaxLight;
// extern BYTE g_ucPWM_SOSControl;//¡¡∂»øÿ÷∆

#endif//__VARIABLE_H__
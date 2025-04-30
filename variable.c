#include "variable.h"

IMPLEMENT_BITS8(BITS_DATA0)
IMPLEMENT_BITS16(BITS_DATA1)
   
BYTE g_ucTimer10msCount = 0;   
BYTE g_ucTimerWorkCount = 0;
// BYTE g_ucKeyCount = 0;
// BYTE g_ucKeyState = 0;

// BYTE g_ucPWM_SOSControl    = 0;
// BYTE g_ucPWM_FlashControl  = 0;
// BYTE g_ucPWM_FlashControl1 = 0;
// BYTE g_ucPWM_FlashControl2 = 0;

BYTE g_ucFlashTimeHigh = 0;
BYTE g_ucFlashTimeLow = 0;
BYTE g_ucFlashTimeHigh1 = 0;
BYTE g_ucFlashTimeLow1 = 0;
BYTE g_ucFlashTimeHigh2 = 0;
BYTE g_ucFlashTimeLow2 = 0;
/////////////////////////////////////////////////
BYTE LvdModel = 0;
BYTE LvdDebounceNew = 0;
BYTE LvdDebounceOld = 0;
BYTE LvdModelCount = 0;
BYTE LvdLightCount = 0;

BYTE TempCount = 0;
BYTE TempFlag = 0;

BYTE SleepCount = 0;
BYTE SleepFlag = 0;

BYTE MaxLight = 0;
//////////////////////////////////////////////////////
const BYTE g_cucTIMER_COUNT_STATE[10] = //{10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
{
	g_cucTIMER_COUNT_STATE0,   
	g_cucTIMER_COUNT_STATE1,  
	g_cucTIMER_COUNT_STATE2,   
	g_cucTIMER_COUNT_STATE3,   
	g_cucTIMER_COUNT_STATE4,   
	g_cucTIMER_COUNT_STATE5,   
	g_cucTIMER_COUNT_STATE6,   
	g_cucTIMER_COUNT_STATE7,  
	g_cucTIMER_COUNT_STATE8,   
	g_cucTIMER_COUNT_STATE9    
};


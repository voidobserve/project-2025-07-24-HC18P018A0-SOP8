#ifndef __FUNCTION_H__
#define __FUNCTION_H__

#include "hc_define.h"
#include "variable.h"

#define g_ucPWM_LevelControl g_ucFlashTimeLow1
#define g_ucBlankTime		 g_ucPWM_FlashControl1
#define g_ucLevelStep		 g_ucPWM_FlashControl2
#define g_blank		 		 g_ucFlashTimeHigh1

void ControlLevelLow(void);     //无光

void ControlLevelHigh(void);     //亮光

void ControlLevel(BYTE lightnum1, BYTE lightnum2, BYTE lightnum3);

void ControlFlash(void);           //闪烁
#define CONTROL_FLASH(a, b, c, d, e, f)\
	g_ucFlashTimeHigh = a;\
	g_ucFlashTimeLow = b;\
	g_ucFlashTimeHigh1=c;\
	g_ucFlashTimeLow1=d;\
	g_ucFlashTimeHigh2=e;\
	g_ucFlashTimeLow2=f;\
	ControlFlash();
	
void ControlSos(void);     //SOS 信号
#define CONTROL_SOS(a, b, c)\
	g_ucFlashTimeHigh = a;\
	g_ucFlashTimeLow = b;\
	g_blank = c;\
	ControlSos();  

#endif//__FUNCTION_H__
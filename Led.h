#ifndef __LED_H__
#define	__LED_H__
#include "hc_define.h"

extern DWORD lampTiming ;
extern DWORD motoTiming ;

void LedDisplay(void);
void LedOn(void);
void LedOff(void);
void MotoDisplay(void);
void LedSwitch(void);
void MotoSwitch(void);
void PowOn(void);
void PowOff(void);
void CountdownDisplay(void);

void  bt_off(void);
#endif //__LED_H__
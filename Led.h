#ifndef __LED_H__
#define __LED_H__
#include "hc_define.h"

// extern DWORD lampTiming;
// extern DWORD motoTiming;

extern u8 flag_is_blue_tooth_open; // 标志位，蓝牙是否开启

extern u8 flag_is_device_open; // 标志位，设备是否开启
extern u32 power_off_cnt;      // 关机计时

void LedDisplay(void);
void LedOn(void);
void LedOff(void);
void MotoDisplay(void);
void LedSwitch(void);
void MotoSwitch(void);
void PowOn(void);
void PowOff(void);
void CountdownDisplay(void);

void bt_off(void);
#endif //__LED_H__
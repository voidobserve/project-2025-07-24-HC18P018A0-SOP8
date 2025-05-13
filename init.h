#ifndef __INIT_H__
#define __INIT_H__
#include "hc_define.h"



#define DEF_SET_BIT0               (0x01)
#define DEF_SET_BIT1               (0x02)
#define DEF_SET_BIT2               (0x04)
#define DEF_SET_BIT3               (0x08)
#define DEF_SET_BIT4               (0x10)
#define DEF_SET_BIT5               (0x20)
#define DEF_SET_BIT6               (0x40)
#define DEF_SET_BIT7               (0x80)

#define DEF_CLR_BIT0               (0xFE)
#define DEF_CLR_BIT1               (0xFD)
#define DEF_CLR_BIT2               (0xFB)
#define DEF_CLR_BIT3               (0xF7)
#define DEF_CLR_BIT4               (0xEF)
#define DEF_CLR_BIT5               (0xDF)
#define DEF_CLR_BIT6               (0xBF)
#define DEF_CLR_BIT7               (0x7F)





void InitPort(void);
void InitSystem(void);
void InitPwm(void);
void InitRam(void);


#endif //__INIT_H__
#ifndef __HC_DEFINE_H__
#define __HC_DEFINE_H__

#include "user_define.h"

typedef unsigned char 	BOOL; //8
typedef unsigned char 	BYTE; //8
typedef unsigned short 	WORD; //16
typedef unsigned long 	DWORD;//32

typedef unsigned char 	u8;
typedef unsigned long   u32;

#define NULL	0
#define FALSE	0
#define TRUE	1

#define asm(szCmd) __asm__(#szCmd);

#define max(a, b) ((a>b)?a:b)
#define min(a, b) ((a<b)?a:b)

#define SET_BIT(a, b, c) a = ( c ? (a|(0x01<<b)) : (a&(0xff-(0x01<<b)));
#define GET_BIT(a, b) (a&(0x01<<b))

#define	MAKEWORD(v1, v2)	(((WORD)(v1)<<8) + (WORD)(v2))
#define	HIBYTE(v1)		((BYTE)((v1)>>8))
#define	LOBYTE(v1)		((BYTE)((v1)&0xff))

/*-----.h-----*/
//DECLARE_BITS8(BITS8)
//#define FLAG BITS(BITS8, 0)

/*-----.c-----*/
//IMPLEMENT_BITS8(BITS8)
//SET_BITS8(BITS8, 0x00)

#define DECLARE_BITS8(a) \
	extern bits8 a;

#define IMPLEMENT_BITS8(a) \
	bits8 a;
	
#define DECLARE_BITS16(a) \
	extern bits16 a;

#define IMPLEMENT_BITS16(a) \
	bits16 a;

#define BITS(a, i) (a.bit##i)

#define SET_BITS8(a, b) \
	a.bit0 = ((b)>>0x00)&0x01; \
	a.bit1 = ((b)>>0x01)&0x01; \
	a.bit2 = ((b)>>0x02)&0x01; \
	a.bit3 = ((b)>>0x03)&0x01; \
	a.bit4 = ((b)>>0x04)&0x01; \
	a.bit5 = ((b)>>0x05)&0x01; \
	a.bit6 = ((b)>>0x06)&0x01; \
	a.bit7 = ((b)>>0x07)&0x01;
	
#define SET_BITS16(a, b) \
	a.bit0 = ((b)>>0x00)&0x01; \
	a.bit1 = ((b)>>0x01)&0x01; \
	a.bit2 = ((b)>>0x02)&0x01; \
	a.bit3 = ((b)>>0x03)&0x01; \
	a.bit4 = ((b)>>0x04)&0x01; \
	a.bit5 = ((b)>>0x05)&0x01; \
	a.bit6 = ((b)>>0x06)&0x01; \
	a.bit7 = ((b)>>0x07)&0x01; \
	a.bit8 = ((b)>>0x08)&0x01; \
	a.bit9 = ((b)>>0x09)&0x01; \
	a.bita = ((b)>>0x0a)&0x01; \
	a.bitb = ((b)>>0x0b)&0x01; \
	a.bitc = ((b)>>0x0c)&0x01; \
	a.bitd = ((b)>>0x0d)&0x01; \
	a.bite = ((b)>>0x0e)&0x01; \
	a.bitf = ((b)>>0x0f)&0x01;
	
#define GET_BITS8(dst, src) \
	__asm \
	BANKSEL	_##src \
	MOVF	_##src,W \
	MOVWF	_##dst \
	__endasm;
	
#define GET_BITS16(dst, src) \
	__asm \
	BANKSEL	_##src \
	MOVF	_##src,W \
	BANKSEL	_##dst \
	MOVWF	_##dst \
	BANKSEL	_##src \
	MOVF	(_##src + 1),W \
	BANKSEL	_##dst \
	MOVWF	(_##dst + 1) \
	__endasm;

#define GET_BITS8_EX(a) \
	((a.bit0<<0x00)+(a.bit1<<0x01)+(a.bit2<<0x02)+(a.bit3<<0x03) \
	+(a.bit4<<0x04)+(a.bit5<<0x05)+(a.bit6<<0x06)+(a.bit7<<0x07))
	
#define GET_BITS16_EX(a) \
	((a.bit0<<0x00)+(a.bit1<<0x01)+(a.bit2<<0x02)+(a.bit3<<0x03) \
	+(a.bit4<<0x04)+(a.bit5<<0x05)+(a.bit6<<0x06)+(a.bit7<<0x07) \
	+(a.bit8<<0x08)+(a.bit9<<0x09)+(a.bita<<0x0a)+(a.bitb<<0x0b) \
	+(a.bitc<<0x0c)+(a.bitd<<0x0d)+(a.bite<<0x0e)+(a.bitf<<0x0f))
	
typedef struct __bits8_t
{
	unsigned bit0	:1;
	unsigned bit1	:1;
	unsigned bit2	:1;
	unsigned bit3	:1;
	unsigned bit4	:1;
	unsigned bit5	:1;
	unsigned bit6	:1;
	unsigned bit7	:1;
}bits8;

typedef struct __bits16_t
{
	unsigned bit0	:1;
	unsigned bit1	:1;
	unsigned bit2	:1;
	unsigned bit3	:1;
	unsigned bit4	:1;
	unsigned bit5	:1;
	unsigned bit6	:1;
	unsigned bit7	:1;	
	unsigned bit8	:1;
	unsigned bit9	:1;
	unsigned bita	:1;
	unsigned bitb	:1;
	unsigned bitc	:1;
	unsigned bitd	:1;
	unsigned bite	:1;
	unsigned bitf	:1;
}bits16;
		
#endif//__HC_DEFINE_H__
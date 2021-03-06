#ifndef __DELAY_H__
#define __DELAY_H__

#include <at89x051.h>
#include <stdint.h>

#define __nop() __asm nop __endasm

void delay_ms(uint16_t t);

#endif

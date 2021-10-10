#include "delay.h"

void delay_ms(uint16_t t)
{
  uint16_t count = 0;
  TMOD |= 0x01;
  TH0 = 0xFC;
  TL0 = 0x25;
  TR0 = 1;
  while (1)
  {
    if (TF0 == 1)
    {
      count++;
      TF0 = 0;
      TH0 = 0xFC;
      TL0 = 0x66;
    }
    if (count >= t)
    {
      break;
    }
  }
}

void delay_us(uint16_t t)
{
   while(t>0)
   {
   __nop();
	t --;
	}
}

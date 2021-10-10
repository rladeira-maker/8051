#include <at89x051.h>
#include "iic.h"



void main()
{
  uint8_t a;
  while(1)
  {
	  P1_2 = 0;
//	  a = uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data);
	  a = iic_single_byte_write(0x4e, 0xff, 0xff);
	  delay_ms(500);

	  P1_2 = 1;
//	  a = uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data);
	  a = iic_single_byte_write(0x4e, 0x00, 0x00);
	  delay_ms(250);	  

  }
}

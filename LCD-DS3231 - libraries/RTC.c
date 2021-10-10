#include <at89x051.h>
#include "delay.h"
#include "iic.h"

# define seg_A P2_5
# define seg_B P2_4
# define seg_C P2_1
# define seg_D P2_2
# define seg_E P2_3
# define seg_F P2_6
# define seg_G P2_7
# define point P2_0
# define HIGH 0
# define LOW 1
#define C_Ds1307ReadMode_U8   0xD1
#define C_Ds1307WriteMode_U8  0xD0
#define C_Ds1307SecondRegAddress_U8 0x00
#define C_Ds1307ControlRegAddress_U8 0x07

void showDigit(char digit,char position);
void ds1307_Init();
void ds1307_Init()
{

    iic_start();                            // Start I2C communication
 
    iic_send_byte(C_Ds1307WriteMode_U8);        // Connect to DS1307 by sending its ID on I2c Bus
    iic_send_byte(C_Ds1307ControlRegAddress_U8);// Select the Ds1307 ControlRegister to configure Ds1307
 
    iic_send_byte(0x00);                        // Write 0x00 to Control register to disable SQW-Out
 
    iic_stop();                             // Stop I2C communication after initializing DS1307
}
 
 


void showDigit(char digit,char position){
switch (digit)
	{
	case 0:
		{
		seg_A = HIGH;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = HIGH;
		seg_E = HIGH;
		seg_F = HIGH;
		seg_G = LOW;
		}
		break;
	case 1:
		{
		seg_A = LOW;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = LOW;
		seg_E = LOW;
		seg_F = LOW;
		seg_G = LOW;
		}
		break;
	case 2:
		{
		seg_A = HIGH;
		seg_B = HIGH;
		seg_C = LOW;
		seg_D = HIGH;
		seg_E = HIGH;
		seg_F = LOW;
		seg_G = HIGH;
		}
		break;
	case 3:
		{
		seg_A = HIGH;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = HIGH;
		seg_E = LOW;
		seg_F = LOW;
		seg_G = HIGH;
		}
		break;
	case 4:
		{
		seg_A = LOW;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = LOW;
		seg_E = LOW;
		seg_F = HIGH;
		seg_G = HIGH;
		}
		break;
	case 5:
		{
		seg_A = HIGH;
		seg_B = LOW;
		seg_C = HIGH;
		seg_D = HIGH;
		seg_E = LOW;
		seg_F = HIGH;
		seg_G = HIGH;
		}
		break;
	case 6:
		{
		seg_A = HIGH;
		seg_B = LOW;
		seg_C = HIGH;
		seg_D = HIGH;
		seg_E = HIGH;
		seg_F = HIGH;
		seg_G = HIGH;
		}
		break;
	case 7:
		{
		seg_A = HIGH;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = LOW;
		seg_E = LOW;
		seg_F = LOW;
		seg_G = LOW;
		}
		break;
	case 8:
		{
		seg_A = HIGH;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = HIGH;
		seg_E = HIGH;
		seg_F = HIGH;
		seg_G = HIGH;
		}
		break;
	case 9:
		{
		seg_A = HIGH;
		seg_B = HIGH;
		seg_C = HIGH;
		seg_D = HIGH;
		seg_E = LOW;
		seg_F = HIGH;
		seg_G = HIGH;
		}
		break;
	}
	if (position)
	{
		point = 0;
	}
	else
	{
		point = 1;
	}
}



void main (void)
	{
        rtc_t rtc;
        unsigned char sec;
//        ds1307_Init();   
		char a = 0;
		while (1)
		{
			if (!P1_0)
            {   
                for (a=0;a<10;a++)
			     {
				showDigit (a,a%2);
                delay_ms(500);
			     }
            }
            else
            {
             a = iic_ds1307_temp_read(0xD0);
             a = iic_ds1307_time_read(0xD0,&rtc);                
			 if (a==0)
				{
				sec = rtc.sec;
                sec = sec >> 4;
				sec = sec & 0x0F;
				showDigit (sec,1);
				delay_ms(900);
				}
			 else
				{
				showDigit (a,0);
				delay_ms(1000);
				}			
            }
		}
    }
		

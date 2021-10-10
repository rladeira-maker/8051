#include <8052.h> 
#include "lcd.h"  	 
#include "iic.h"
#include "delay.h"

/*
* Copyright: Shenzhen Tian Microelectronics
* File name: TM1637
* Current Version: 1.0
* SCM Model: AT89S52
* Development Environment: Keil uVision3
* Crystal earthquake frequency: 11.0592M
* Program features: the TM1637 all filled with all the display data register address
  0xff, and open the display, and then read the key value.
 */

   // Define port
#define clk  P2_2
#define dio  P2_3


// / ======================================
void I2CStart (void) // 1637 start
{
   clk = 1;
   dio = 1;
   delay_us (2);
   dio = 0;
}
// / =============================================
void I2Cask (void) // 1637 Answer
{
   clk = 0;
   delay_us (5); // After the falling edge of the eighth clock delay 5us, ACK signals the beginning of judgment
   while (dio);
   clk = 1;
   delay_us (2);
   clk = 0;
}
// / ========================================
void I2CStop (void) // 1637 Stop
{
   clk = 0;
   delay_us (2);
   dio = 0;
   delay_us (2);
   clk = 1;
   delay_us (2);
   dio = 1;
}
// / =========================================
void I2CWrByte (unsigned char oneByte) // write a byte
{
   unsigned char i;
   for (i = 0; i <8; i ++)
   {
      clk = 0;
      if (oneByte & 0x01) // low front
      {dio = 1;}
      else {dio = 0;}
      delay_us (3);
      oneByte = oneByte >> 1;
      clk = 1;
      delay_us (3);
   }
}
// / ----------------------------------------------- -
/*unsigned char ScanKey (void) // read buttons 
{
   unsigned char rekey, rkey, i;
   I2CStart ();
   I2CWrByte (0x42); // read command buttons
   I2Cask ();
   dio = 1; // read keys before data lines pulled
   for (i = 0; i <8; i ++) // start reading from the low
   {
      clk = 0;
      rekey = rekey >> 1;
      delay_us(30);
      clk=1;
      if(dio)
      {
          rekey=rekey|0x80;
      }
      else
      {
          rekey=rekey|0x00;
      }
      delay_us(30);
   }
   I2Cask();
   I2CStop();
   return (rekey);
}*/

void SmgDisplay(void) // Write display register
{
   unsigned char i;
   I2CStart();
   I2CWrByte(0x40); //40H address is automatically incremented by 1 mode, 44H fixed address mode
   I2Cask();
   I2CStop();
   I2CStart();
   I2CWrByte(0xc0); // Set the first address
   I2Cask();
   for(i=0;i<6;i++) // Addresses from Canada, do not always write address
   {
      I2CWrByte(0xff); // Send data
      I2Cask();
      }
    I2CStop();
      I2CStart();
   I2CWrByte(0x8f); // Open display, maximum brightness
   I2Cask();
   I2CStop();
}
///==============================================
void init(void) // Initialization routine
{
   __nop();// Initialization slightly
}
///==============================================
 
/* main program */
void main() 
{
	/*struct to get DS3231 data (time and date)*/
	rtc_t rtc;
    char temp_dig1, temp_dig2, temp ;
 
  /* Initilize the lcd */
    lcd_Init();
  
  /* Display "time" on first line*/
  lcd_DisplayString("Hora: ");
 
   /* Display "date" on Second line*/
  lcd_GoToLineTwo();
  lcd_DisplayString("Data: ");

	init(); // Initialization TM1637
	SmgDisplay(); // Write register and open display
 
   /* Display the time and date continously */ 
   while(1)
    {
	   /* Read the Time from RTC(ds1307)*/  
		 iic_ds1307_time_read(0xD0,&rtc);
         temp = iic_ds1307_temp_read(0xD0);
         temp_dig1 = temp/10;
         temp_dig2 = temp%10;        
 
		/* Display the time on firstline 7th position*/
 
         lcd_GoToXY(0,5); 		 
         lcd_DisplayRtcTime(rtc.hour,rtc.min,rtc.sec);
         lcd_DisplayString("  T");
         lcd_GoToXY(1,5); 
         lcd_DisplayRtcDate(rtc.date,rtc.month,rtc.year);
         lcd_DisplayString(" ");
         lcd_Writedata(temp_dig1 + 0x30);
         lcd_Writedata((temp_dig2) + 0x30);              
     }
}
            

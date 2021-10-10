#include <8052.h> 
#include "lcd.h"  	 
#include "iic.h"
#include "delay.h"

 
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
            
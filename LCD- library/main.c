#include <at89x051.h> 
#include "lcd.h"  	 
#include "ds1307.h" 
#include "iic.h"
#include "delay.h"
 
/* main program */
void main() 
{
   unsigned char sec,min,hour;//day,month,year;
//   short test;
   signed int temp;
   short bcd;
   short hex;
   sec = 00;
   min = 40;
   hour = 18;
/*   day = 0x14;
   month = 0x08;
   year = 0x21;*/
 
  /* Initilize the lcd */
    lcd_Init();
 
  /* Initilize the RTC(ds1307)*/
    ds1307_Init();
    P1_6 = 1;
 
 
  /*set the time and Date only once */
//  ds1307_SetTime(0x23,0x59,0x30);  //  
//  ds1307_SetDate(0x31,0x12,0x19);  //  
 
  /* Display "time" on first line*/
  lcd_DisplayString("Time: ");
 
   /* Display "date" on Second line*/
  lcd_GoToLineTwo();
  lcd_DisplayString("Temp: ");
 
   /* Display the time and date continously */ 
   while(1)
    {
	 if (!P1_6)
     {
         temp = ds1307_GetTemperature();
     }
     else
     {
              temp = 25;
	}
        lcd_BackLight(1);
         lcd_GoToXY(0,6); 
         hex = ds1307_from_bcd(hour);       
         lcd_Writedata(((hex & 0xf0)>>4)+0x30);
         lcd_Writedata((hex & 0x0f)+0x30);
         lcd_Writedata(0x32);

         bcd = ds1307_to_bcd(temp);
         lcd_GoToXY(1,6);
         lcd_Writedata(((bcd & 0xf0)>>4)+0x30);
         lcd_Writedata((bcd & 0x0f)+0x30);
         lcd_Writedata(0x43);  
         if (sec == 59)
         {
			 sec = 0;
			 min ++;
		 }
		 if (min == 59)
		 {
			 min = 0;
			 hour ++;
        }
		sec ++;
        delay_ms(1000);     
     
     }
} 
/*         lcd_Writedata(' ');
         test = ds1307_from_bcd(hour);
         lcd_Writedata(test);
         lcd_Writedata(' ');
         test = ds1307_to_bcd(hour);
         lcd_Writedata(test); 	 		 
//         lcd_DisplayRtcTime(hour,min,sec);*/
 
 
	    /* Read the Date from RTC(ds1307) */ 
//        ds1307_GetDate(&day,&month,&year);        
 
		/* Display the Date on secondline 7th position*/
		 	
//         lcd_GoToXY(1,0);
//         lcd_Writedata(day);
/*         lcd_Writedata(' ');          	
         test = ds1307_from_bcd(day);
         lcd_Writedata(test);
         lcd_Writedata(' ');
         test = ds1307_to_bcd(day);
         lcd_Writedata(test); 	 	 		 
//         lcd_DisplayRtcDate(day,month,year);
         delay_ms(1000);
         lcd_WriteCmd(0x01);  // clear the LCD
         lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
         lcd_DisplayString("Temp: ");
         temp = ds1307_GetTemperature();
         lcd_DisplayString(temp);
         lcd_DisplayString("C");
         
         if (sec == 0x60)
         {
			 sec = 0;
			 min ++;
		 }
		 if (min == 0x60)
		 {
			 min = 0;
			 hour ++;
		 }
		sec ++;
		if (!(sec%10))
		{
			sec = sec + 0x10;
			sec = sec & 0xf0;
		}
		if (!(min%10))
		{
			min = min + 0x10;
			min = min & 0xf0;
		}
		if (min%2)
		{
			lcd_BackLight(1);
		}
		else
		{
			lcd_BackLight(0);
		}
     }
}*/

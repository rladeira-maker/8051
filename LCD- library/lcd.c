#include<at89x051.h>
#include "lcd.h"
#include "delay.h"
#include "iic.h"

#define IIC_ADDR 0x27 //PCF8974

uint8_t dataport = 0;
uint8_t rs = 1; //P0 do PCF8974
uint8_t rw = 2; //P1 do PCF8974
uint8_t en = 4; //P2 do PCF8974
uint8_t backlight = 8; //P3 do PCF8974

 
/* 16x2 lcd Specification */
#define LCDMaxLines 2
#define LCDMaxChars 16
#define LineOne 0x80
#define LineTwo 0xc0
 
#define BlankSpace ' '
 
//LCD Backlight
void lcd_BackLight(__bit a)
{
	if (a)
	{
		backlight = 8;
	}
	else
	{
		backlight = 0;
	}
}
  
//LCD initilization
void lcd_Init()
{
   delay_us(5000);
   lcd_WriteCmd(0x02);  //initilize the LCD in 4bit Mode
   lcd_WriteCmd(0x28);
   lcd_WriteCmd(0x0C);  // display ON cursor ON
   lcd_WriteCmd(0x01);  // clear the LCD
   lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
 
}
 
 
// lcd Write command function
void lcd_WriteCmd( char a)
{
   uint8_t error; 
   dataport=(a & 0xf0) | en | backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);        
//   rs=0;                      
//   rw=0;                 
//   en=1;                 
   delay_us(1);
   dataport=(a & 0xf0) | backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);   
//   en=0;
   delay_us(1);                  
   dataport=((a<<4) & 0xf0) | en | backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);    
//   rs=0;                    
//   rw=0;                    
//   en=1;                      
   delay_us(1);
   dataport = ((a<<4) & 0xf0)| backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);  
//   en=0;
   delay_us(1);
}
 
 
 // lcd writedata function
void lcd_Writedata( char a)
{
   uint8_t error; 
   dataport=(a & 0xf0)|en|rs| backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);           
 //    rs=1;                      
 //    rw=0;                      
 //    en=1;                      
    delay_us(1);
   dataport=(a & 0xf0)|rs| backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);
//     en=0;
   delay_us(1);                
 
   dataport=((a <<4) & 0xf0)|rs|en| backlight;
   error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport); 
//     rs=1;                    
//     rw=0;                     
//     en=1;                      
    delay_us(1);
    dataport=((a <<4) & 0xf0)|rs| backlight;
    error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);
//     en=0;
 
   delay_us(1);
 
}

 
 //lcd gotolinetwo fuction
void lcd_GoToLineTwo()
{
   lcd_WriteCmd(LineTwo);   // move the Cursor to Second line First Position
}
 
//Lcd clear
void lcd_Clear()
{                   
   lcd_WriteCmd(0x01);  // clear the LCD
   lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
} 
 
//lcd go to X(first row), Y(second row) line
void lcd_GoToXY(char row, char col)
{
   char pos;
 
    if(row<LCDMaxLines)
      {
         pos= LineOne | (row << 6);
                                    
 
        if(col<LCDMaxChars)
           pos= pos+col;            
                                    
 
         lcd_WriteCmd(pos);        
       }
}
 

//lcd display string function
void lcd_DisplayString(char *string_ptr)
{
   while(*string_ptr)
    lcd_Writedata(*string_ptr++);
    }
 
/* 
//lcd display rtc time function
void lcd_DisplayRtcTime(char hour,char min,char sec)
{
    lcd_Writedata(((hour>>4) & 0x0f) + 0x30);
    lcd_Writedata((hour & 0x0f) + 0x30);
    lcd_Writedata(':');
 
    lcd_Writedata(((min>>4) & 0x0f) + 0x30);
    lcd_Writedata((min & 0x0f) + 0x30);
    lcd_Writedata(':');
 
    lcd_Writedata(((sec>>4) & 0x0f) + 0x30);
    lcd_Writedata((sec & 0x0f) + 0x30);
 
 }
 
 
 // lcd display rtc date function
void lcd_DisplayRtcDate(char day,char month,char year)
 {
     lcd_Writedata(((day>>4) & 0x0f) + 0x30);
     lcd_Writedata((day & 0x0f) + 0x30);
     lcd_Writedata('/');
 
     lcd_Writedata(((month>>4) & 0x0f) + 0x30);
     lcd_Writedata((month & 0x0f) + 0x30);
     lcd_Writedata('/');
 
     lcd_Writedata(((year>>4) & 0x0f) + 0x30);
     lcd_Writedata((year & 0x0f) + 0x30);
 
 }
*/
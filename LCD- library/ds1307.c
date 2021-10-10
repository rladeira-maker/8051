
#include "at89x051.h" 
#include "ds1307.h"
#include "iic.h"
#include "delay.h"

void i2c_Clock(void);

 
 
/* Below given values are fixed and should not be changed.
    Refer Ds1307 DataSheet for more info*/
 
#define DS1307_ID 0xD0     // ds1307 ID
 
#define SEC_ADDRESS   0x00 // address to access ds1307 SEC register
#define DATE_ADDRESS  0x04 // address to access ds1307 DATE register
#define control       0x07 // address to access ds1307 CONTROL register
#define TEMP_ADDRESS  0x11
 
 
//ds1307 Temperature
signed int ds1307_GetTemperature()
// Returns the temperature in Celsius.
{

  signed int temp_MSB;
  signed int temp_LSB;
  iic_start();             // start i2c communication
  ds1307_Write(DS1307_ID);    
  ds1307_Write(TEMP_ADDRESS);
  iic_stop();        
  iic_start();               
  ds1307_Write(0xD1); 
  temp_MSB = ds1307_Read();  iic_ack();
  temp_LSB= ds1307_Read() >> 6;  iic_nack();
  if (temp_LSB==3) temp_MSB ++;
  iic_stop();         // stop i2c communication after reading the Temp
  return temp_MSB;
}

 void i2c_Clock(void)
{
    delay_us(50);
    IIC_SCL = 1;        
 
    delay_us(50);        
    IIC_SCL = 0;        
}
 
 
//ds1307 initilization
void ds1307_Init()
{
    iic_start();            // Start i2c communication
 
    ds1307_Write(DS1307_ID);   
    ds1307_Write(control);    
 
    ds1307_Write(0x00);        
 
    iic_stop();             
 
 }
 

void ds1307_Write(unsigned char dat)
{
    iic_send_byte(dat);   
    i2c_Clock();
 }
 

unsigned char ds1307_Read()
{
    unsigned char dat;
    dat = iic_read_byte();   
    return(dat);
 }
/*
void ds1307_SetTime(unsigned char hh, unsigned char mm, unsigned char ss)
{
    iic_start();            // Start i2c communication
 
    ds1307_Write(DS1307_ID);    
    ds1307_Write(SEC_ADDRESS);
    ds1307_Write(ss);           
    ds1307_Write(mm);           
    ds1307_Write(hh);           
 
    iic_stop();             // Stop i2c communication after Setting the Time
}

void ds1307_SetDate(unsigned char dd, unsigned char mm, unsigned char yy)
{
    iic_start();              // Start i2c communication
 
    ds1307_Write(DS1307_ID);    
    ds1307_Write(DATE_ADDRESS);     
 
    ds1307_Write(dd);           
    ds1307_Write(mm);           
    ds1307_Write(yy);           
 
    iic_stop();               // Stop i2c communication after Setting the Date
}
*/
void ds1307_GetTime(unsigned char *h_ptr,unsigned char *m_ptr,unsigned char *s_ptr)
{
     iic_start();           // Start i2c communication
 
    ds1307_Write(DS1307_ID);    
    ds1307_Write(SEC_ADDRESS);          
 
     iic_stop();             
 
    iic_start();                
    ds1307_Write(0xD1);         
                               
 
  *s_ptr = ds1307_Read();  iic_ack();     
  *m_ptr = ds1307_Read();  iic_ack();     
  *h_ptr = ds1307_Read();  iic_nack();   
 
  iic_stop();                 // stop i2c communication after reading the Time
 }
/* 
void ds1307_GetDate(unsigned char *d_ptr,unsigned char *m_ptr,unsigned char *y_ptr)
{
    iic_start();            // start i2c communication
 
    ds1307_Write(DS1307_ID);    
    ds1307_Write(DATE_ADDRESS);     
 
    iic_stop();              
 
 
   iic_start();              
   ds1307_Write(0xD1);          
                            
 
  *d_ptr = ds1307_Read(); iic_ack();     
  *m_ptr = ds1307_Read(); iic_ack();    
  *y_ptr = ds1307_Read(); iic_nack();   
 
  iic_stop();          // stop i2c communication after reading the Time
 }

*/
short ds1307_to_bcd(short value)
{
  return ((value / 10) << 4 | (value % 10));
}

short ds1307_from_bcd(short bcd)
{
  return ((bcd & 0xF0) >> 4) * 10 + (bcd & 0x0F);
}

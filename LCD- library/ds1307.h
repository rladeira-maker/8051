/* the #ifndef prevents the file from being included more than once*/
#ifndef __DS1307_H__   
#define __DS1307_H__
 
void ds1307_Init();
void ds1307_Write(unsigned char dat);
unsigned char ds1307_Read();
/*void ds1307_SetTime(unsigned char hh, unsigned char mm, unsigned char ss);
void ds1307_SetDate(unsigned char dd, unsigned char mm, unsigned char yy);*/
void ds1307_GetTime(unsigned char *h_ptr,unsigned char *m_ptr,unsigned char *s_ptr);/*
void ds1307_GetDate(unsigned char *d_ptr,unsigned char *m_ptr,unsigned char *y_ptr);*/
signed int ds1307_GetTemperature();
short ds1307_to_bcd(short value);
short ds1307_from_bcd(short bcd);
#endif

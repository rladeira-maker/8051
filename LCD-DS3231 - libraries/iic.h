#ifndef __IIC_H__
#define __IIC_H__

#include <stdint.h>
#include "config.h"

#define IIC_ACK    0
#define IIC_NACK   1
#define __nop() __asm nop __endasm
typedef struct
{
  uint8_t sec;
  uint8_t min;
  uint8_t hour;
  uint8_t weekDay;
  uint8_t date;
  uint8_t month;
  uint8_t year;  
}rtc_t; 

void iic_start(void);

void iic_stop(void);

void iic_ack(void);

void iic_nack(void);

uint8_t iic_read_ack(void);

void iic_send_byte(uint8_t data);

uint8_t iic_read_byte(void);

uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data);

uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data);

uint8_t iic_ds1307_time_read(uint8_t deviceAddress, rtc_t *rtc);

int8_t iic_ds1307_temp_read(uint8_t deviceAddress);

#endif // __IIC_H__

#include "iic.h"



/**
 * SDA change high to low when SCL is high
 */
void iic_start(void)
{
  IIC_SCL = 0;
  __nop(); __nop();
  IIC_SDA = 1;
  IIC_SCL = 1;
  __nop(); __nop();
  IIC_SDA = 0;
}

/**
 * SDA changes low to high when SCL is high
 */
void iic_stop(void)
{
  IIC_SCL = 0;
  __nop(); __nop();
  IIC_SDA = 0;
  IIC_SCL = 1;
  __nop(); __nop();
  IIC_SDA = 1;
}

void iic_ack(void)
{
  IIC_SCL = 0;
  IIC_SDA = 0;
  __nop(); __nop();
  IIC_SCL = 1;
}

void iic_nack(void) {
  IIC_SCL = 0;
  __nop(); __nop();
  IIC_SDA = 1;
  __nop(); __nop();
  IIC_SCL = 1;
}

uint8_t iic_read_ack(void)
{
  IIC_SCL = 0;
  IIC_SDA = 1;
  __nop(); __nop();
  IIC_SCL = 1;
  __nop(); __nop();
  return IIC_SDA;
}

void iic_send_byte(uint8_t data)
{
  uint8_t i;
  for(i=0; i<8; i++)
  {
    IIC_SCL = 0;
    __nop(); __nop();
    IIC_SDA = (data << i) & 0x80;
    __nop(); __nop();
    IIC_SCL = 1;
  }
}

uint8_t iic_read_byte(void)
{
  uint8_t i;
  uint8_t data = 0x00;
  for(i=0; i<8; i++)
  {
    IIC_SCL = 0;
    // 如果主机发送ack将总线拉低，因为线与的关系这里要释放总线
    IIC_SDA = 1;
    __nop(); __nop();
    data <<= 1;
    IIC_SCL = 1;
    __nop(); __nop();
    data |= IIC_SDA;
  }
  return data;
}

uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data)
{
  iic_start();
  iic_send_byte(deviceAddress);
  if(iic_read_ack() == IIC_NACK)
  {
    return 1;
  }
  iic_send_byte(registerAddress);
  if(iic_read_ack() == IIC_NACK)
  {
    return 2;
  }
  iic_start();
  iic_send_byte(deviceAddress | 0x01);
  if(iic_read_ack() == IIC_NACK)
  {
    return 3;
  }
  *data = iic_read_byte();
  iic_nack();
  iic_stop();
  return 0;
}
uint8_t iic_ds1307_time_read(uint8_t deviceAddress, rtc_t *rtc)
{
  iic_start();
  iic_send_byte(deviceAddress);
  if(iic_read_ack() == IIC_NACK)
  {
    return 1;
  }
  iic_send_byte(0x00);
  if(iic_read_ack() == IIC_NACK)
  {
    return 2;
  }
  iic_start();
  iic_send_byte(deviceAddress | 0x01);
  if(iic_read_ack() == IIC_NACK)
  {
    return 3;
  }
  rtc->sec = iic_read_byte();
  iic_ack();
  rtc->min = iic_read_byte();
  iic_ack();
  rtc->hour = iic_read_byte();
  iic_ack();
  rtc->weekDay = iic_read_byte();
  iic_ack();
  rtc->date = iic_read_byte();
  iic_ack();
  rtc->month = iic_read_byte();
  iic_ack();
  rtc->year = iic_read_byte();
  iic_nack();
  iic_stop();
  return 0;
}

int8_t iic_ds1307_temp_read(uint8_t deviceAddress)
{
  int8_t temp_MSB;
  uint8_t temp_LSB;   
  iic_start();
  iic_send_byte(deviceAddress);
  if(iic_read_ack() == IIC_NACK)
  {
    return 1;
  }
  iic_send_byte(0x11);
  if(iic_read_ack() == IIC_NACK)
  {
    return 2;
  }
  iic_start();
  iic_send_byte(deviceAddress | 0x01);
  if(iic_read_ack() == IIC_NACK)
  {
    return 3;
  }
  temp_MSB = iic_read_byte();
  iic_ack();
  temp_LSB = iic_read_byte();
  iic_nack();
  iic_stop();
  temp_LSB = temp_LSB >> 6;
  if (temp_LSB == 3) temp_MSB ++;
  return temp_MSB;
}

uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
{
  iic_start();
  iic_send_byte(deviceAddress);
  if(iic_read_ack() == IIC_NACK)
  {
    return 1;
  }
  iic_send_byte(registerAddress);
  if(iic_read_ack() == IIC_NACK)
  {
    return 2;
  }
  iic_send_byte(data);
  if(iic_read_ack() == IIC_NACK)
  {
    return 3;
  }
  iic_stop();
  return 0;
}

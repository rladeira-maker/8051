;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module ds1307
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iic_read_byte
	.globl _iic_send_byte
	.globl _iic_nack
	.globl _iic_ack
	.globl _iic_stop
	.globl _iic_start
	.globl _delay_us
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _ds1307_GetTime_PARM_3
	.globl _ds1307_GetTime_PARM_2
	.globl _ds1307_GetTemperature
	.globl _i2c_Clock
	.globl _ds1307_Init
	.globl _ds1307_Write
	.globl _ds1307_Read
	.globl _ds1307_GetTime
	.globl _ds1307_to_bcd
	.globl _ds1307_from_bcd
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_ds1307_GetTime_PARM_2:
	.ds 3
_ds1307_GetTime_PARM_3:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_GetTemperature'
;------------------------------------------------------------
;temp_MSB                  Allocated to registers r6 r7 
;temp_LSB                  Allocated to registers r5 r4 
;------------------------------------------------------------
;	ds1307.c:23: signed int ds1307_GetTemperature()
;	-----------------------------------------
;	 function ds1307_GetTemperature
;	-----------------------------------------
_ds1307_GetTemperature:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ds1307.c:29: iic_start();             // start i2c communication
	lcall	_iic_start
;	ds1307.c:30: ds1307_Write(DS1307_ID);    
	mov	dpl,#0xd0
	lcall	_ds1307_Write
;	ds1307.c:31: ds1307_Write(TEMP_ADDRESS);
	mov	dpl,#0x11
	lcall	_ds1307_Write
;	ds1307.c:32: iic_stop();        
	lcall	_iic_stop
;	ds1307.c:33: iic_start();               
	lcall	_iic_start
;	ds1307.c:34: ds1307_Write(0xD1); 
	mov	dpl,#0xd1
	lcall	_ds1307_Write
;	ds1307.c:35: temp_MSB = ds1307_Read();  iic_ack();
	lcall	_ds1307_Read
	mov	r6,dpl
	mov	r7,#0x00
	push	ar7
	push	ar6
	lcall	_iic_ack
;	ds1307.c:36: temp_LSB= ds1307_Read() >> 6;  iic_nack();
	lcall	_ds1307_Read
	mov	a,dpl
	rl	a
	rl	a
	anl	a,#0x03
	mov	r5,a
	mov	r4,#0x00
	push	ar5
	push	ar4
	lcall	_iic_nack
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ds1307.c:37: if (temp_LSB==3) temp_MSB ++;
	cjne	r5,#0x03,00102$
	cjne	r4,#0x00,00102$
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
00111$:
00102$:
;	ds1307.c:38: iic_stop();         // stop i2c communication after reading the Temp
	push	ar7
	push	ar6
	lcall	_iic_stop
	pop	ar6
	pop	ar7
;	ds1307.c:39: return temp_MSB;
	mov	dpl,r6
	mov	dph,r7
;	ds1307.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_Clock'
;------------------------------------------------------------
;	ds1307.c:42: void i2c_Clock(void)
;	-----------------------------------------
;	 function i2c_Clock
;	-----------------------------------------
_i2c_Clock:
;	ds1307.c:44: delay_us(50);
	mov	dptr,#0x0032
	lcall	_delay_us
;	ds1307.c:45: IIC_SCL = 1;        
;	assignBit
	setb	_P1_7
;	ds1307.c:47: delay_us(50);        
	mov	dptr,#0x0032
	lcall	_delay_us
;	ds1307.c:48: IIC_SCL = 0;        
;	assignBit
	clr	_P1_7
;	ds1307.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_Init'
;------------------------------------------------------------
;	ds1307.c:53: void ds1307_Init()
;	-----------------------------------------
;	 function ds1307_Init
;	-----------------------------------------
_ds1307_Init:
;	ds1307.c:55: iic_start();            // Start i2c communication
	lcall	_iic_start
;	ds1307.c:57: ds1307_Write(DS1307_ID);   
	mov	dpl,#0xd0
	lcall	_ds1307_Write
;	ds1307.c:58: ds1307_Write(control);    
	mov	dpl,#0x07
	lcall	_ds1307_Write
;	ds1307.c:60: ds1307_Write(0x00);        
	mov	dpl,#0x00
	lcall	_ds1307_Write
;	ds1307.c:62: iic_stop();             
;	ds1307.c:64: }
	ljmp	_iic_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_Write'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	ds1307.c:67: void ds1307_Write(unsigned char dat)
;	-----------------------------------------
;	 function ds1307_Write
;	-----------------------------------------
_ds1307_Write:
;	ds1307.c:69: iic_send_byte(dat);   
	lcall	_iic_send_byte
;	ds1307.c:70: i2c_Clock();
;	ds1307.c:71: }
	ljmp	_i2c_Clock
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_Read'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	ds1307.c:74: unsigned char ds1307_Read()
;	-----------------------------------------
;	 function ds1307_Read
;	-----------------------------------------
_ds1307_Read:
;	ds1307.c:77: dat = iic_read_byte();   
;	ds1307.c:78: return(dat);
;	ds1307.c:79: }
	ljmp	_iic_read_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_GetTime'
;------------------------------------------------------------
;m_ptr                     Allocated with name '_ds1307_GetTime_PARM_2'
;s_ptr                     Allocated with name '_ds1307_GetTime_PARM_3'
;h_ptr                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	ds1307.c:108: void ds1307_GetTime(unsigned char *h_ptr,unsigned char *m_ptr,unsigned char *s_ptr)
;	-----------------------------------------
;	 function ds1307_GetTime
;	-----------------------------------------
_ds1307_GetTime:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	ds1307.c:110: iic_start();           // Start i2c communication
	push	ar7
	push	ar6
	push	ar5
	lcall	_iic_start
;	ds1307.c:112: ds1307_Write(DS1307_ID);    
	mov	dpl,#0xd0
	lcall	_ds1307_Write
;	ds1307.c:113: ds1307_Write(SEC_ADDRESS);          
	mov	dpl,#0x00
	lcall	_ds1307_Write
;	ds1307.c:115: iic_stop();             
	lcall	_iic_stop
;	ds1307.c:117: iic_start();                
	lcall	_iic_start
;	ds1307.c:118: ds1307_Write(0xD1);         
	mov	dpl,#0xd1
	lcall	_ds1307_Write
;	ds1307.c:121: *s_ptr = ds1307_Read();  iic_ack();     
	mov	r2,_ds1307_GetTime_PARM_3
	mov	r3,(_ds1307_GetTime_PARM_3 + 1)
	mov	r4,(_ds1307_GetTime_PARM_3 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	_ds1307_Read
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	lcall	_iic_ack
;	ds1307.c:122: *m_ptr = ds1307_Read();  iic_ack();     
	mov	r2,_ds1307_GetTime_PARM_2
	mov	r3,(_ds1307_GetTime_PARM_2 + 1)
	mov	r4,(_ds1307_GetTime_PARM_2 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	_ds1307_Read
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	lcall	_iic_ack
;	ds1307.c:123: *h_ptr = ds1307_Read();  iic_nack();   
	lcall	_ds1307_Read
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	lcall	_iic_nack
;	ds1307.c:125: iic_stop();                 // stop i2c communication after reading the Time
;	ds1307.c:126: }
	ljmp	_iic_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_to_bcd'
;------------------------------------------------------------
;value                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	ds1307.c:150: short ds1307_to_bcd(short value)
;	-----------------------------------------
;	 function ds1307_to_bcd
;	-----------------------------------------
_ds1307_to_bcd:
;	ds1307.c:152: return ((value / 10) << 4 | (value % 10));
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r5
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	a,r6
	orl	ar4,a
	mov	a,r7
	orl	ar5,a
	mov	dpl,r4
	mov	dph,r5
;	ds1307.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1307_from_bcd'
;------------------------------------------------------------
;bcd                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	ds1307.c:155: short ds1307_from_bcd(short bcd)
;	-----------------------------------------
;	 function ds1307_from_bcd
;	-----------------------------------------
_ds1307_from_bcd:
	mov	r6,dpl
	mov	r7,dph
;	ds1307.c:157: return ((bcd & 0xF0) >> 4) * 10 + (bcd & 0x0F);
	mov	a,#0xf0
	anl	a,r6
	mov	r4,a
	mov	r5,#0x00
	mov	__mulint_PARM_2,r4
	mov	a,r5
	swap	a
	xch	a,__mulint_PARM_2
	swap	a
	anl	a,#0x0f
	xrl	a,__mulint_PARM_2
	xch	a,__mulint_PARM_2
	anl	a,#0x0f
	xch	a,__mulint_PARM_2
	xrl	a,__mulint_PARM_2
	xch	a,__mulint_PARM_2
	jnb	acc.3,00103$
	orl	a,#0xf0
00103$:
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x000a
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	anl	ar6,#0x0f
	mov	r7,#0x00
	mov	a,r6
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
;	ds1307.c:158: }
	mov	dpl,r4
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

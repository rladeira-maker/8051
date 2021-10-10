;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module iic
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
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
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
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
	.globl _iic_single_byte_write_PARM_3
	.globl _iic_single_byte_write_PARM_2
	.globl _iic_ds1307_time_read_PARM_2
	.globl _iic_single_byte_read_PARM_3
	.globl _iic_single_byte_read_PARM_2
	.globl _iic_start
	.globl _iic_stop
	.globl _iic_ack
	.globl _iic_nack
	.globl _iic_read_ack
	.globl _iic_send_byte
	.globl _iic_read_byte
	.globl _iic_single_byte_read
	.globl _iic_ds1307_time_read
	.globl _iic_ds1307_temp_read
	.globl _iic_single_byte_write
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
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
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
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_iic_single_byte_read_PARM_2:
	.ds 1
_iic_single_byte_read_PARM_3:
	.ds 3
_iic_ds1307_time_read_PARM_2:
	.ds 3
_iic_single_byte_write_PARM_2:
	.ds 1
_iic_single_byte_write_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'iic_start'
;------------------------------------------------------------
;	iic.c:8: void iic_start(void)
;	-----------------------------------------
;	 function iic_start
;	-----------------------------------------
_iic_start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	iic.c:10: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:11: __nop(); __nop();
	nop	
	nop	
;	iic.c:12: IIC_SDA = 1;
;	assignBit
	setb	_P2_1
;	iic.c:13: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:14: __nop(); __nop();
	nop	
	nop	
;	iic.c:15: IIC_SDA = 0;
;	assignBit
	clr	_P2_1
;	iic.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_stop'
;------------------------------------------------------------
;	iic.c:21: void iic_stop(void)
;	-----------------------------------------
;	 function iic_stop
;	-----------------------------------------
_iic_stop:
;	iic.c:23: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:24: __nop(); __nop();
	nop	
	nop	
;	iic.c:25: IIC_SDA = 0;
;	assignBit
	clr	_P2_1
;	iic.c:26: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:27: __nop(); __nop();
	nop	
	nop	
;	iic.c:28: IIC_SDA = 1;
;	assignBit
	setb	_P2_1
;	iic.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_ack'
;------------------------------------------------------------
;	iic.c:31: void iic_ack(void)
;	-----------------------------------------
;	 function iic_ack
;	-----------------------------------------
_iic_ack:
;	iic.c:33: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:34: IIC_SDA = 0;
;	assignBit
	clr	_P2_1
;	iic.c:35: __nop(); __nop();
	nop	
	nop	
;	iic.c:36: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_nack'
;------------------------------------------------------------
;	iic.c:39: void iic_nack(void) {
;	-----------------------------------------
;	 function iic_nack
;	-----------------------------------------
_iic_nack:
;	iic.c:40: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:41: __nop(); __nop();
	nop	
	nop	
;	iic.c:42: IIC_SDA = 1;
;	assignBit
	setb	_P2_1
;	iic.c:43: __nop(); __nop();
	nop	
	nop	
;	iic.c:44: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_read_ack'
;------------------------------------------------------------
;	iic.c:47: uint8_t iic_read_ack(void)
;	-----------------------------------------
;	 function iic_read_ack
;	-----------------------------------------
_iic_read_ack:
;	iic.c:49: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:50: IIC_SDA = 1;
;	assignBit
	setb	_P2_1
;	iic.c:51: __nop(); __nop();
	nop	
	nop	
;	iic.c:52: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:53: __nop(); __nop();
	nop	
	nop	
;	iic.c:54: return IIC_SDA;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	dpl,a
;	iic.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_send_byte'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	iic.c:57: void iic_send_byte(uint8_t data)
;	-----------------------------------------
;	 function iic_send_byte
;	-----------------------------------------
_iic_send_byte:
	mov	r7,dpl
;	iic.c:60: for(i=0; i<8; i++)
	mov	r6,#0x00
00102$:
;	iic.c:62: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:63: __nop(); __nop();
	nop	
	nop	
;	iic.c:64: IIC_SDA = (data << i) & 0x80;
	mov	ar4,r7
	mov	r5,#0x00
	mov	b,r6
	inc	b
	sjmp	00112$
00111$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00112$:
	djnz	b,00111$
	mov	a,r4
	rl	a
	anl	a,#0x01
;	assignBit
	mov	r4,a
	add	a,#0xff
	mov	_P2_1,c
;	iic.c:65: __nop(); __nop();
	nop	
	nop	
;	iic.c:66: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:60: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	iic.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_read_byte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;data                      Allocated to registers r5 
;------------------------------------------------------------
;	iic.c:70: uint8_t iic_read_byte(void)
;	-----------------------------------------
;	 function iic_read_byte
;	-----------------------------------------
_iic_read_byte:
;	iic.c:73: uint8_t data = 0x00;
	mov	r7,#0x00
;	iic.c:74: for(i=0; i<8; i++)
	mov	r6,#0x00
00102$:
;	iic.c:76: IIC_SCL = 0;
;	assignBit
	clr	_P2_0
;	iic.c:78: IIC_SDA = 1;
;	assignBit
	setb	_P2_1
;	iic.c:79: __nop(); __nop();
	nop	
	nop	
;	iic.c:80: data <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	iic.c:81: IIC_SCL = 1;
;	assignBit
	setb	_P2_0
;	iic.c:82: __nop(); __nop();
	nop	
	nop	
;	iic.c:83: data |= IIC_SDA;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	r4,a
	orl	a,r5
	mov	r7,a
;	iic.c:74: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00102$
;	iic.c:85: return data;
	mov	dpl,r7
;	iic.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_single_byte_read'
;------------------------------------------------------------
;registerAddress           Allocated with name '_iic_single_byte_read_PARM_2'
;data                      Allocated with name '_iic_single_byte_read_PARM_3'
;deviceAddress             Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:88: uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data)
;	-----------------------------------------
;	 function iic_single_byte_read
;	-----------------------------------------
_iic_single_byte_read:
	mov	r7,dpl
;	iic.c:90: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:91: iic_send_byte(deviceAddress);
	mov	dpl,r7
	push	ar7
	lcall	_iic_send_byte
;	iic.c:92: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00102$
;	iic.c:94: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	iic.c:96: iic_send_byte(registerAddress);
	mov	dpl,_iic_single_byte_read_PARM_2
	push	ar7
	lcall	_iic_send_byte
;	iic.c:97: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00104$
;	iic.c:99: return 2;
	mov	dpl,#0x02
	ret
00104$:
;	iic.c:101: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:102: iic_send_byte(deviceAddress | 0x01);
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_iic_send_byte
;	iic.c:103: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00106$
;	iic.c:105: return 3;
	mov	dpl,#0x03
	ret
00106$:
;	iic.c:107: *data = iic_read_byte();
	mov	r5,_iic_single_byte_read_PARM_3
	mov	r6,(_iic_single_byte_read_PARM_3 + 1)
	mov	r7,(_iic_single_byte_read_PARM_3 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_iic_read_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	iic.c:108: iic_nack();
	lcall	_iic_nack
;	iic.c:109: iic_stop();
	lcall	_iic_stop
;	iic.c:110: return 0;
	mov	dpl,#0x00
;	iic.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_ds1307_time_read'
;------------------------------------------------------------
;rtc                       Allocated with name '_iic_ds1307_time_read_PARM_2'
;deviceAddress             Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:112: uint8_t iic_ds1307_time_read(uint8_t deviceAddress, rtc_t *rtc)
;	-----------------------------------------
;	 function iic_ds1307_time_read
;	-----------------------------------------
_iic_ds1307_time_read:
	mov	r7,dpl
;	iic.c:114: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:115: iic_send_byte(deviceAddress);
	mov	dpl,r7
	push	ar7
	lcall	_iic_send_byte
;	iic.c:116: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00102$
;	iic.c:118: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	iic.c:120: iic_send_byte(0x00);
	mov	dpl,#0x00
	push	ar7
	lcall	_iic_send_byte
;	iic.c:121: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00104$
;	iic.c:123: return 2;
	mov	dpl,#0x02
	ret
00104$:
;	iic.c:125: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:126: iic_send_byte(deviceAddress | 0x01);
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_iic_send_byte
;	iic.c:127: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00106$
;	iic.c:129: return 3;
	mov	dpl,#0x03
	ret
00106$:
;	iic.c:131: rtc->sec = iic_read_byte();
	mov	r5,_iic_ds1307_time_read_PARM_2
	mov	r6,(_iic_ds1307_time_read_PARM_2 + 1)
	mov	r7,(_iic_ds1307_time_read_PARM_2 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_iic_read_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	iic.c:132: iic_ack();
	push	ar7
	push	ar6
	push	ar5
	lcall	_iic_ack
	pop	ar5
	pop	ar6
	pop	ar7
;	iic.c:133: rtc->min = iic_read_byte();
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_iic_read_byte
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	iic.c:134: iic_ack();
	lcall	_iic_ack
	pop	ar5
	pop	ar6
	pop	ar7
;	iic.c:135: rtc->hour = iic_read_byte();
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_iic_read_byte
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	iic.c:136: iic_ack();
	lcall	_iic_ack
	pop	ar5
	pop	ar6
	pop	ar7
;	iic.c:137: rtc->weekDay = iic_read_byte();
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_iic_read_byte
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	iic.c:138: iic_ack();
	lcall	_iic_ack
	pop	ar5
	pop	ar6
	pop	ar7
;	iic.c:139: rtc->date = iic_read_byte();
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_iic_read_byte
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	iic.c:140: iic_ack();
	lcall	_iic_ack
	pop	ar5
	pop	ar6
	pop	ar7
;	iic.c:141: rtc->month = iic_read_byte();
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_iic_read_byte
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	iic.c:142: iic_ack();
	lcall	_iic_ack
	pop	ar5
	pop	ar6
;	iic.c:143: rtc->year = iic_read_byte();
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar6
	push	ar5
	lcall	_iic_read_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	iic.c:144: iic_nack();
	lcall	_iic_nack
;	iic.c:145: iic_stop();
	lcall	_iic_stop
;	iic.c:146: return 0;
	mov	dpl,#0x00
;	iic.c:147: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_ds1307_temp_read'
;------------------------------------------------------------
;deviceAddress             Allocated to registers r7 
;temp_MSB                  Allocated to registers r7 
;temp_LSB                  Allocated to registers r6 
;------------------------------------------------------------
;	iic.c:149: int8_t iic_ds1307_temp_read(uint8_t deviceAddress)
;	-----------------------------------------
;	 function iic_ds1307_temp_read
;	-----------------------------------------
_iic_ds1307_temp_read:
	mov	r7,dpl
;	iic.c:153: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:154: iic_send_byte(deviceAddress);
	mov	dpl,r7
	push	ar7
	lcall	_iic_send_byte
;	iic.c:155: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00102$
;	iic.c:157: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	iic.c:159: iic_send_byte(0x11);
	mov	dpl,#0x11
	push	ar7
	lcall	_iic_send_byte
;	iic.c:160: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00104$
;	iic.c:162: return 2;
	mov	dpl,#0x02
	ret
00104$:
;	iic.c:164: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:165: iic_send_byte(deviceAddress | 0x01);
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_iic_send_byte
;	iic.c:166: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00106$
;	iic.c:168: return 3;
	mov	dpl,#0x03
	ret
00106$:
;	iic.c:170: temp_MSB = iic_read_byte();
	lcall	_iic_read_byte
	mov	r7,dpl
;	iic.c:171: iic_ack();
	push	ar7
	lcall	_iic_ack
;	iic.c:172: temp_LSB = iic_read_byte();
	lcall	_iic_read_byte
	mov	r6,dpl
;	iic.c:173: iic_nack();
	push	ar6
	lcall	_iic_nack
;	iic.c:174: iic_stop();
	lcall	_iic_stop
	pop	ar6
	pop	ar7
;	iic.c:175: temp_LSB = temp_LSB >> 6;
	mov	a,r6
	rl	a
	rl	a
	anl	a,#0x03
	mov	r6,a
;	iic.c:176: if (temp_LSB == 3) temp_MSB ++;
	cjne	r6,#0x03,00108$
	inc	r7
00108$:
;	iic.c:177: return temp_MSB;
	mov	dpl,r7
;	iic.c:178: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_single_byte_write'
;------------------------------------------------------------
;registerAddress           Allocated with name '_iic_single_byte_write_PARM_2'
;data                      Allocated with name '_iic_single_byte_write_PARM_3'
;deviceAddress             Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:180: uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
;	-----------------------------------------
;	 function iic_single_byte_write
;	-----------------------------------------
_iic_single_byte_write:
	mov	r7,dpl
;	iic.c:182: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:183: iic_send_byte(deviceAddress);
	mov	dpl,r7
	lcall	_iic_send_byte
;	iic.c:184: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00102$
;	iic.c:186: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	iic.c:188: iic_send_byte(registerAddress);
	mov	dpl,_iic_single_byte_write_PARM_2
	lcall	_iic_send_byte
;	iic.c:189: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00104$
;	iic.c:191: return 2;
	mov	dpl,#0x02
	ret
00104$:
;	iic.c:193: iic_send_byte(data);
	mov	dpl,_iic_single_byte_write_PARM_3
	lcall	_iic_send_byte
;	iic.c:194: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00106$
;	iic.c:196: return 3;
	mov	dpl,#0x03
	ret
00106$:
;	iic.c:198: iic_stop();
	lcall	_iic_stop
;	iic.c:199: return 0;
	mov	dpl,#0x00
;	iic.c:200: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

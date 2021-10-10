;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module iic
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _iic_single_byte_write_PARM_3
	.globl _iic_single_byte_write_PARM_2
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
_iic_single_byte_read_PARM_2:
	.ds 1
_iic_single_byte_read_PARM_3:
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
;	iic.c:6: void iic_start(void)
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
;	iic.c:8: IIC_SCL = 0;
;	assignBit
	clr	_P1_7
;	iic.c:9: __nop(); __nop();
	nop	
	nop	
;	iic.c:10: IIC_SDA = 1;
;	assignBit
	setb	_P1_6
;	iic.c:11: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:12: __nop(); __nop();
	nop	
	nop	
;	iic.c:13: IIC_SDA = 0;
;	assignBit
	clr	_P1_6
;	iic.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_stop'
;------------------------------------------------------------
;	iic.c:19: void iic_stop(void)
;	-----------------------------------------
;	 function iic_stop
;	-----------------------------------------
_iic_stop:
;	iic.c:21: IIC_SCL = 0;
;	assignBit
	clr	_P1_7
;	iic.c:22: __nop(); __nop();
	nop	
	nop	
;	iic.c:23: IIC_SDA = 0;
;	assignBit
	clr	_P1_6
;	iic.c:24: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:25: __nop(); __nop();
	nop	
	nop	
;	iic.c:26: IIC_SDA = 1;
;	assignBit
	setb	_P1_6
;	iic.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_ack'
;------------------------------------------------------------
;	iic.c:29: void iic_ack(void)
;	-----------------------------------------
;	 function iic_ack
;	-----------------------------------------
_iic_ack:
;	iic.c:31: IIC_SCL = 0;
;	assignBit
	clr	_P1_7
;	iic.c:32: IIC_SDA = 0;
;	assignBit
	clr	_P1_6
;	iic.c:33: __nop(); __nop();
	nop	
	nop	
;	iic.c:34: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_nack'
;------------------------------------------------------------
;	iic.c:37: void iic_nack(void) {
;	-----------------------------------------
;	 function iic_nack
;	-----------------------------------------
_iic_nack:
;	iic.c:38: IIC_SCL = 0;
;	assignBit
	clr	_P1_7
;	iic.c:39: __nop(); __nop();
	nop	
	nop	
;	iic.c:40: IIC_SDA = 1;
;	assignBit
	setb	_P1_6
;	iic.c:41: __nop(); __nop();
	nop	
	nop	
;	iic.c:42: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_read_ack'
;------------------------------------------------------------
;	iic.c:45: uint8_t iic_read_ack(void)
;	-----------------------------------------
;	 function iic_read_ack
;	-----------------------------------------
_iic_read_ack:
;	iic.c:47: IIC_SCL = 0;
;	assignBit
	clr	_P1_7
;	iic.c:48: IIC_SDA = 1;
;	assignBit
	setb	_P1_6
;	iic.c:49: __nop(); __nop();
	nop	
	nop	
;	iic.c:50: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:51: __nop(); __nop();
	nop	
	nop	
;	iic.c:52: return IIC_SDA;
	mov	c,_P1_6
	clr	a
	rlc	a
	mov	dpl,a
;	iic.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_send_byte'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	iic.c:55: void iic_send_byte(uint8_t data)
;	-----------------------------------------
;	 function iic_send_byte
;	-----------------------------------------
_iic_send_byte:
	mov	r7,dpl
;	iic.c:58: for(i=0; i<8; i++)
	mov	r6,#0x00
00102$:
;	iic.c:60: IIC_SCL = 0;
;	assignBit
	clr	_P1_7
;	iic.c:61: __nop(); __nop();
	nop	
	nop	
;	iic.c:62: IIC_SDA = (data << i) & 0x80;
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
	mov	_P1_6,c
;	iic.c:63: __nop(); __nop();
	nop	
	nop	
;	iic.c:64: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:58: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00113$
00113$:
	jc	00102$
;	iic.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_read_byte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;data                      Allocated to registers r5 
;------------------------------------------------------------
;	iic.c:68: uint8_t iic_read_byte(void)
;	-----------------------------------------
;	 function iic_read_byte
;	-----------------------------------------
_iic_read_byte:
;	iic.c:71: uint8_t data = 0x00;
	mov	r7,#0x00
;	iic.c:72: for(i=0; i<8; i++)
	mov	r6,#0x00
00102$:
;	iic.c:74: IIC_SCL = 0; // 如果主机发送ack将总线拉低，因为线与的关系这里要释放总线
;	assignBit
	clr	_P1_7
;	iic.c:76: IIC_SDA = 1;
;	assignBit
	setb	_P1_6
;	iic.c:77: __nop(); __nop();
	nop	
	nop	
;	iic.c:78: data <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	iic.c:79: IIC_SCL = 1;
;	assignBit
	setb	_P1_7
;	iic.c:80: __nop(); __nop();
	nop	
	nop	
;	iic.c:81: data |= IIC_SDA;
	mov	c,_P1_6
	clr	a
	rlc	a
	mov	r4,a
	orl	a,r5
	mov	r7,a
;	iic.c:72: for(i=0; i<8; i++)
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00102$
;	iic.c:83: return data;
	mov	dpl,r7
;	iic.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_single_byte_read'
;------------------------------------------------------------
;registerAddress           Allocated with name '_iic_single_byte_read_PARM_2'
;data                      Allocated with name '_iic_single_byte_read_PARM_3'
;deviceAddress             Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:86: uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data)
;	-----------------------------------------
;	 function iic_single_byte_read
;	-----------------------------------------
_iic_single_byte_read:
	mov	r7,dpl
;	iic.c:88: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:89: iic_send_byte(deviceAddress);
	mov	dpl,r7
	push	ar7
	lcall	_iic_send_byte
;	iic.c:90: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00102$
;	iic.c:92: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	iic.c:94: iic_send_byte(registerAddress);
	mov	dpl,_iic_single_byte_read_PARM_2
	push	ar7
	lcall	_iic_send_byte
;	iic.c:95: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00104$
;	iic.c:97: return 2;
	mov	dpl,#0x02
	ret
00104$:
;	iic.c:99: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:100: iic_send_byte(deviceAddress | 0x01);
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_iic_send_byte
;	iic.c:101: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00106$
;	iic.c:103: return 3;
	mov	dpl,#0x03
	ret
00106$:
;	iic.c:105: *data = iic_read_byte();
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
;	iic.c:106: iic_nack();
	lcall	_iic_nack
;	iic.c:107: iic_stop();
	lcall	_iic_stop
;	iic.c:108: return 0;
	mov	dpl,#0x00
;	iic.c:109: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_single_byte_write'
;------------------------------------------------------------
;registerAddress           Allocated with name '_iic_single_byte_write_PARM_2'
;data                      Allocated with name '_iic_single_byte_write_PARM_3'
;deviceAddress             Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:111: uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
;	-----------------------------------------
;	 function iic_single_byte_write
;	-----------------------------------------
_iic_single_byte_write:
	mov	r7,dpl
;	iic.c:113: iic_start();
	push	ar7
	lcall	_iic_start
	pop	ar7
;	iic.c:114: iic_send_byte(deviceAddress);
	mov	dpl,r7
	lcall	_iic_send_byte
;	iic.c:115: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00102$
;	iic.c:117: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	iic.c:119: iic_send_byte(registerAddress);
	mov	dpl,_iic_single_byte_write_PARM_2
	lcall	_iic_send_byte
;	iic.c:120: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00104$
;	iic.c:122: return 2;
	mov	dpl,#0x02
	ret
00104$:
;	iic.c:124: iic_send_byte(data);
	mov	dpl,_iic_single_byte_write_PARM_3
	lcall	_iic_send_byte
;	iic.c:125: if(iic_read_ack() == IIC_NACK)
	lcall	_iic_read_ack
	mov	r7,dpl
	cjne	r7,#0x01,00106$
;	iic.c:127: return 3;
	mov	dpl,#0x03
	ret
00106$:
;	iic.c:129: iic_stop();
	lcall	_iic_stop
;	iic.c:130: return 0;
	mov	dpl,#0x00
;	iic.c:131: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module lcd_c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2CSend
	.globl _I2CStop
	.globl _I2CStart
	.globl _I2CInit
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
	.globl _lcd_BackLight_PARM_1
	.globl _lcd_GoToXY_PARM_2
	.globl _backlight
	.globl _en
	.globl _rw
	.globl _rs
	.globl _dataport
	.globl _lcd_BackLight
	.globl _lcd_Init
	.globl _lcd_WriteCmd
	.globl _lcd_Writedata
	.globl _lcd_GoToLineTwo
	.globl _lcd_Clear
	.globl _lcd_GoToXY
	.globl _lcd_DisplayString
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
_dataport::
	.ds 1
_rs::
	.ds 1
_rw::
	.ds 1
_en::
	.ds 1
_backlight::
	.ds 1
_lcd_GoToXY_PARM_2:
	.ds 1
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
_lcd_BackLight_PARM_1:
	.ds 1
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
;	lcd_c.c:8: uint8_t dataport = 0;
	mov	_dataport,#0x00
;	lcd_c.c:9: uint8_t rs = 1; //P0 do PCF8974
	mov	_rs,#0x01
;	lcd_c.c:10: uint8_t rw = 2; //P1 do PCF8974
	mov	_rw,#0x02
;	lcd_c.c:11: uint8_t en = 4; //P2 do PCF8974
	mov	_en,#0x04
;	lcd_c.c:12: uint8_t backlight = 8; //P3 do PCF8974
	mov	_backlight,#0x08
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
;Allocation info for local variables in function 'lcd_BackLight'
;------------------------------------------------------------
;	lcd_c.c:24: void lcd_BackLight(__bit a)
;	-----------------------------------------
;	 function lcd_BackLight
;	-----------------------------------------
_lcd_BackLight:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	lcd_c.c:26: if (a)
	jnb	_lcd_BackLight_PARM_1,00102$
;	lcd_c.c:28: backlight = 8;
	mov	_backlight,#0x08
	ret
00102$:
;	lcd_c.c:32: backlight = 0;
	mov	_backlight,#0x00
;	lcd_c.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_Init'
;------------------------------------------------------------
;count                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	lcd_c.c:37: void lcd_Init()
;	-----------------------------------------
;	 function lcd_Init
;	-----------------------------------------
_lcd_Init:
;	lcd_c.c:40: for (count = 0; count<5000;count++) __nop();
	mov	r6,#0x88
	mov	r7,#0x13
00104$:
	nop	
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	lcd_c.c:41: lcd_WriteCmd(0x02);  //initilize the LCD in 4bit Mode
	mov	dpl,#0x02
	lcall	_lcd_WriteCmd
;	lcd_c.c:42: lcd_WriteCmd(0x28);
	mov	dpl,#0x28
	lcall	_lcd_WriteCmd
;	lcd_c.c:43: lcd_WriteCmd(0x0C);  // display ON cursor ON
	mov	dpl,#0x0c
	lcall	_lcd_WriteCmd
;	lcd_c.c:44: lcd_WriteCmd(0x01);  // clear the LCD
	mov	dpl,#0x01
	lcall	_lcd_WriteCmd
;	lcd_c.c:45: lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
	mov	dpl,#0x80
;	lcd_c.c:47: }
	ljmp	_lcd_WriteCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_WriteCmd'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	lcd_c.c:51: void lcd_WriteCmd( char a)
;	-----------------------------------------
;	 function lcd_WriteCmd
;	-----------------------------------------
_lcd_WriteCmd:
	mov	r7,dpl
;	lcd_c.c:54: I2CInit(); 
	push	ar7
	lcall	_I2CInit
	pop	ar7
;	lcd_c.c:55: dataport=(a & 0xf0) | en | backlight;
	mov	a,#0xf0
	anl	a,r7
	mov	r6,a
	mov	r5,_en
	orl	ar5,a
	mov	a,_backlight
	orl	a,r5
	mov	_dataport,a
;	lcd_c.c:56: I2CStart();
	push	ar7
	push	ar6
	lcall	_I2CStart
;	lcd_c.c:57: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	lcall	_I2CSend
;	lcd_c.c:58: ack = I2CSend(dataport);        
	mov	dpl,_dataport
	lcall	_I2CSend
	pop	ar6
	pop	ar7
;	lcd_c.c:62: __nop(); __nop();
	nop	
	nop	
;	lcd_c.c:63: dataport=(a & 0xf0) | backlight;
	mov	a,_backlight
	orl	a,r6
	mov	_dataport,a
;	lcd_c.c:64: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	push	ar7
	lcall	_I2CSend
;	lcd_c.c:65: ack = I2CSend(dataport);  
	mov	dpl,_dataport
	lcall	_I2CSend
	pop	ar7
;	lcd_c.c:67: __nop(); __nop();                  
	nop	
	nop	
;	lcd_c.c:68: dataport=((a<<4) & 0xf0) | en | backlight;
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	anl	ar7,#0xf0
	mov	r6,_en
	mov	a,r7
	orl	ar6,a
	mov	a,_backlight
	orl	a,r6
	mov	_dataport,a
;	lcd_c.c:69: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	push	ar7
	lcall	_I2CSend
;	lcd_c.c:70: ack = I2CSend(dataport);    
	mov	dpl,_dataport
	lcall	_I2CSend
	pop	ar7
;	lcd_c.c:74: __nop(); __nop(); 
	nop	
	nop	
;	lcd_c.c:75: dataport = ((a<<4) & 0xf0)| backlight;
	mov	a,_backlight
	orl	a,r7
	mov	_dataport,a
;	lcd_c.c:76: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	lcall	_I2CSend
;	lcd_c.c:77: ack = I2CSend(dataport);     
	mov	dpl,_dataport
	lcall	_I2CSend
;	lcd_c.c:79: __nop(); __nop();
	nop	
	nop	
;	lcd_c.c:80: I2CStop(); 
;	lcd_c.c:81: }
	ljmp	_I2CStop
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_Writedata'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	lcd_c.c:85: void lcd_Writedata( char a)
;	-----------------------------------------
;	 function lcd_Writedata
;	-----------------------------------------
_lcd_Writedata:
	mov	r7,dpl
;	lcd_c.c:88: I2CInit(); 
	push	ar7
	lcall	_I2CInit
	pop	ar7
;	lcd_c.c:89: dataport=(a & 0xf0)|rs | en | backlight;
	mov	a,#0xf0
	anl	a,r7
	mov	r6,a
	mov	r5,_rs
	orl	ar5,a
	mov	a,_en
	orl	ar5,a
	mov	a,_backlight
	orl	a,r5
	mov	_dataport,a
;	lcd_c.c:90: I2CStart();
	push	ar7
	push	ar6
	lcall	_I2CStart
;	lcd_c.c:91: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	lcall	_I2CSend
;	lcd_c.c:92: ack = I2CSend(dataport);           
	mov	dpl,_dataport
	lcall	_I2CSend
	pop	ar6
	pop	ar7
;	lcd_c.c:96: __nop(); __nop();
	nop	
	nop	
;	lcd_c.c:97: dataport=(a & 0xf0)|rs | backlight;
	mov	a,_rs
	orl	ar6,a
	mov	a,_backlight
	orl	a,r6
	mov	_dataport,a
;	lcd_c.c:98: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	push	ar7
	lcall	_I2CSend
;	lcd_c.c:99: ack = I2CSend(dataport);  
	mov	dpl,_dataport
	lcall	_I2CSend
	pop	ar7
;	lcd_c.c:101: __nop(); __nop();                  
	nop	
	nop	
;	lcd_c.c:102: dataport=((a<<4) & 0xf0)|rs | en | backlight;
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	anl	ar7,#0xf0
	mov	r6,_rs
	mov	a,r7
	orl	ar6,a
	mov	a,_en
	orl	ar6,a
	mov	a,_backlight
	orl	a,r6
	mov	_dataport,a
;	lcd_c.c:103: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	push	ar7
	lcall	_I2CSend
;	lcd_c.c:104: ack = I2CSend(dataport);  
	mov	dpl,_dataport
	lcall	_I2CSend
	pop	ar7
;	lcd_c.c:108: __nop(); __nop(); 
	nop	
	nop	
;	lcd_c.c:109: dataport = ((a<<4) & 0xf0)| backlight;
	mov	a,_backlight
	orl	a,r7
	mov	_dataport,a
;	lcd_c.c:110: ack = I2CSend(IIC_ADDR*2);
	mov	dpl,#0x4e
	lcall	_I2CSend
;	lcd_c.c:111: ack = I2CSend(dataport);  
	mov	dpl,_dataport
	lcall	_I2CSend
;	lcd_c.c:113: __nop(); __nop();
	nop	
	nop	
;	lcd_c.c:114: I2CStop(); 
;	lcd_c.c:115: }
	ljmp	_I2CStop
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_GoToLineTwo'
;------------------------------------------------------------
;	lcd_c.c:119: void lcd_GoToLineTwo()
;	-----------------------------------------
;	 function lcd_GoToLineTwo
;	-----------------------------------------
_lcd_GoToLineTwo:
;	lcd_c.c:121: lcd_WriteCmd(LineTwo);   // move the Cursor to Second line First Position
	mov	dpl,#0xc0
;	lcd_c.c:122: }
	ljmp	_lcd_WriteCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_Clear'
;------------------------------------------------------------
;	lcd_c.c:125: void lcd_Clear()
;	-----------------------------------------
;	 function lcd_Clear
;	-----------------------------------------
_lcd_Clear:
;	lcd_c.c:127: lcd_WriteCmd(0x01);  // clear the LCD
	mov	dpl,#0x01
	lcall	_lcd_WriteCmd
;	lcd_c.c:128: lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
	mov	dpl,#0x80
;	lcd_c.c:129: } 
	ljmp	_lcd_WriteCmd
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_GoToXY'
;------------------------------------------------------------
;col                       Allocated with name '_lcd_GoToXY_PARM_2'
;row                       Allocated to registers r7 
;pos                       Allocated to registers r7 
;------------------------------------------------------------
;	lcd_c.c:132: void lcd_GoToXY(char row, char col)
;	-----------------------------------------
;	 function lcd_GoToXY
;	-----------------------------------------
_lcd_GoToXY:
	mov	r7,dpl
;	lcd_c.c:136: if(row<LCDMaxLines)
	cjne	r7,#0x02,00115$
00115$:
	jnc	00105$
;	lcd_c.c:138: pos= LineOne | (row << 6);
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	orl	ar7,#0x80
;	lcd_c.c:141: if(col<LCDMaxChars)
	mov	a,#0x100 - 0x10
	add	a,_lcd_GoToXY_PARM_2
	jc	00102$
;	lcd_c.c:142: pos= pos+col;            
	mov	a,_lcd_GoToXY_PARM_2
	add	a,r7
	mov	r7,a
00102$:
;	lcd_c.c:145: lcd_WriteCmd(pos);        
	mov	dpl,r7
;	lcd_c.c:147: }
	ljmp	_lcd_WriteCmd
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_DisplayString'
;------------------------------------------------------------
;string_ptr                Allocated to registers 
;------------------------------------------------------------
;	lcd_c.c:151: void lcd_DisplayString(char *string_ptr)
;	-----------------------------------------
;	 function lcd_DisplayString
;	-----------------------------------------
_lcd_DisplayString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd_c.c:153: while(*string_ptr)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	lcd_c.c:154: lcd_Writedata(*string_ptr++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_Writedata
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	lcd_c.c:155: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

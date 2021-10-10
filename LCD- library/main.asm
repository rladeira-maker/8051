;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _delay_ms
	.globl _ds1307_from_bcd
	.globl _ds1307_to_bcd
	.globl _ds1307_GetTemperature
	.globl _ds1307_Init
	.globl _lcd_BackLight
	.globl _lcd_GoToXY
	.globl _lcd_GoToLineTwo
	.globl _lcd_DisplayString
	.globl _lcd_Writedata
	.globl _lcd_Init
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
_main_temp_65536_25:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sec                       Allocated to registers r7 
;min                       Allocated to registers r6 
;hour                      Allocated to registers 
;temp                      Allocated with name '_main_temp_65536_25'
;bcd                       Allocated to registers r3 r4 
;hex                       Allocated to registers r1 r2 
;------------------------------------------------------------
;	main.c:8: void main() 
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:15: sec = 00;
	mov	r7,#0x00
;	main.c:16: min = 40;
	mov	r6,#0x28
;	main.c:23: lcd_Init();
	push	ar7
	push	ar6
	lcall	_lcd_Init
;	main.c:26: ds1307_Init();
	lcall	_ds1307_Init
;	main.c:27: P1_6 = 1;
;	assignBit
	setb	_P1_6
;	main.c:35: lcd_DisplayString("Time: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcd_DisplayString
;	main.c:38: lcd_GoToLineTwo();
	lcall	_lcd_GoToLineTwo
;	main.c:39: lcd_DisplayString("Temp: ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcd_DisplayString
	pop	ar6
	pop	ar7
;	main.c:42: while(1)
	mov	r5,#0x12
00109$:
;	main.c:44: if (!P1_6)
	jb	_P1_6,00102$
;	main.c:46: temp = ds1307_GetTemperature();
	push	ar7
	push	ar6
	push	ar5
	lcall	_ds1307_GetTemperature
	mov	_main_temp_65536_25,dpl
	mov	(_main_temp_65536_25 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	main.c:50: temp = 25;
	mov	_main_temp_65536_25,#0x19
	mov	(_main_temp_65536_25 + 1),#0x00
00103$:
;	main.c:52: lcd_BackLight(1);
;	assignBit
	setb	_lcd_BackLight_PARM_1
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_BackLight
;	main.c:53: lcd_GoToXY(0,6); 
	mov	_lcd_GoToXY_PARM_2,#0x06
	mov	dpl,#0x00
	lcall	_lcd_GoToXY
	pop	ar5
;	main.c:54: hex = ds1307_from_bcd(hour);       
	mov	ar1,r5
	mov	r2,#0x00
	mov	dpl,r1
	mov	dph,r2
	push	ar5
	lcall	_ds1307_from_bcd
	mov	r1,dpl
	mov	r2,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:55: lcd_Writedata(((hex & 0xf0)>>4)+0x30);
	mov	ar0,r1
	anl	ar0,#0xf0
	clr	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	jnb	acc.3,00130$
	orl	a,#0xf0
00130$:
	mov	a,#0x30
	add	a,r0
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	push	ar1
	lcall	_lcd_Writedata
	pop	ar1
	pop	ar2
;	main.c:56: lcd_Writedata((hex & 0x0f)+0x30);
	mov	a,#0x0f
	anl	a,r1
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_Writedata
;	main.c:57: lcd_Writedata(0x32);
	mov	dpl,#0x32
	lcall	_lcd_Writedata
;	main.c:59: bcd = ds1307_to_bcd(temp);
	mov	dpl,_main_temp_65536_25
	mov	dph,(_main_temp_65536_25 + 1)
	lcall	_ds1307_to_bcd
	mov	r3,dpl
	mov	r4,dph
;	main.c:60: lcd_GoToXY(1,6);
	mov	_lcd_GoToXY_PARM_2,#0x06
	mov	dpl,#0x01
	push	ar4
	push	ar3
	lcall	_lcd_GoToXY
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:61: lcd_Writedata(((bcd & 0xf0)>>4)+0x30);
	mov	ar1,r3
	anl	ar1,#0xf0
	clr	a
	xch	a,r1
	swap	a
	anl	a,#0x0f
	xrl	a,r1
	xch	a,r1
	anl	a,#0x0f
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	jnb	acc.3,00131$
	orl	a,#0xf0
00131$:
	mov	a,#0x30
	add	a,r1
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_lcd_Writedata
	pop	ar3
	pop	ar4
;	main.c:62: lcd_Writedata((bcd & 0x0f)+0x30);
	mov	a,#0x0f
	anl	a,r3
	add	a,#0x30
	mov	dpl,a
	lcall	_lcd_Writedata
;	main.c:63: lcd_Writedata(0x43);  
	mov	dpl,#0x43
	lcall	_lcd_Writedata
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:64: if (sec == 59)
	cjne	r7,#0x3b,00105$
;	main.c:66: sec = 0;
	mov	r7,#0x00
;	main.c:67: min ++;
	inc	r6
00105$:
;	main.c:69: if (min == 59)
	cjne	r6,#0x3b,00107$
;	main.c:71: min = 0;
	mov	r6,#0x00
;	main.c:72: hour ++;
	inc	r5
00107$:
;	main.c:74: sec ++;
	inc	r7
;	main.c:75: delay_ms(1000);     
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_ms
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:78: } 
	ljmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Time: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Temp: "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

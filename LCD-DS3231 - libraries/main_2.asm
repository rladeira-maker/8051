;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main_2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init
	.globl _SmgDisplay
	.globl _I2CWrByte
	.globl _I2CStop
	.globl _I2Cask
	.globl _I2CStart
	.globl _delay_us
	.globl _iic_ds1307_temp_read
	.globl _iic_ds1307_time_read
	.globl _lcd_GoToXY
	.globl _lcd_GoToLineTwo
	.globl _lcd_DisplayRtcDate
	.globl _lcd_DisplayRtcTime
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
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
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
_main_rtc_65536_41:
	.ds 7
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
;Allocation info for local variables in function 'I2CStart'
;------------------------------------------------------------
;	main_2.c:23: void I2CStart (void) // 1637 start
;	-----------------------------------------
;	 function I2CStart
;	-----------------------------------------
_I2CStart:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main_2.c:25: clk = 1;
;	assignBit
	setb	_P2_2
;	main_2.c:26: dio = 1;
;	assignBit
	setb	_P2_3
;	main_2.c:27: delay_us (2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	main_2.c:28: dio = 0;
;	assignBit
	clr	_P2_3
;	main_2.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2Cask'
;------------------------------------------------------------
;	main_2.c:31: void I2Cask (void) // 1637 Answer
;	-----------------------------------------
;	 function I2Cask
;	-----------------------------------------
_I2Cask:
;	main_2.c:33: clk = 0;
;	assignBit
	clr	_P2_2
;	main_2.c:34: delay_us (5); // After the falling edge of the eighth clock delay 5us, ACK signals the beginning of judgment
	mov	dptr,#0x0005
	lcall	_delay_us
;	main_2.c:35: while (dio);
00101$:
	jb	_P2_3,00101$
;	main_2.c:36: clk = 1;
;	assignBit
	setb	_P2_2
;	main_2.c:37: delay_us (2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	main_2.c:38: clk = 0;
;	assignBit
	clr	_P2_2
;	main_2.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CStop'
;------------------------------------------------------------
;	main_2.c:41: void I2CStop (void) // 1637 Stop
;	-----------------------------------------
;	 function I2CStop
;	-----------------------------------------
_I2CStop:
;	main_2.c:43: clk = 0;
;	assignBit
	clr	_P2_2
;	main_2.c:44: delay_us (2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	main_2.c:45: dio = 0;
;	assignBit
	clr	_P2_3
;	main_2.c:46: delay_us (2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	main_2.c:47: clk = 1;
;	assignBit
	setb	_P2_2
;	main_2.c:48: delay_us (2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	main_2.c:49: dio = 1;
;	assignBit
	setb	_P2_3
;	main_2.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CWrByte'
;------------------------------------------------------------
;oneByte                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main_2.c:52: void I2CWrByte (unsigned char oneByte) // write a byte
;	-----------------------------------------
;	 function I2CWrByte
;	-----------------------------------------
_I2CWrByte:
	mov	r7,dpl
;	main_2.c:55: for (i = 0; i <8; i ++)
	mov	r6,#0x00
00105$:
;	main_2.c:57: clk = 0;
;	assignBit
	clr	_P2_2
;	main_2.c:58: if (oneByte & 0x01) // low front
	mov	a,r7
	jnb	acc.0,00102$
;	main_2.c:59: {dio = 1;}
;	assignBit
	setb	_P2_3
	sjmp	00103$
00102$:
;	main_2.c:60: else {dio = 0;}
;	assignBit
	clr	_P2_3
00103$:
;	main_2.c:61: delay_us (3);
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	main_2.c:62: oneByte = oneByte >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main_2.c:63: clk = 1;
;	assignBit
	setb	_P2_2
;	main_2.c:64: delay_us (3);
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	main_2.c:55: for (i = 0; i <8; i ++)
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00105$
;	main_2.c:66: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SmgDisplay'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main_2.c:96: void SmgDisplay(void) // Write display register
;	-----------------------------------------
;	 function SmgDisplay
;	-----------------------------------------
_SmgDisplay:
;	main_2.c:99: I2CStart();
	lcall	_I2CStart
;	main_2.c:100: I2CWrByte(0x40); //40H address is automatically incremented by 1 mode, 44H fixed address mode
	mov	dpl,#0x40
	lcall	_I2CWrByte
;	main_2.c:101: I2Cask();
	lcall	_I2Cask
;	main_2.c:102: I2CStop();
	lcall	_I2CStop
;	main_2.c:103: I2CStart();
	lcall	_I2CStart
;	main_2.c:104: I2CWrByte(0xc0); // Set the first address
	mov	dpl,#0xc0
	lcall	_I2CWrByte
;	main_2.c:105: I2Cask();
	lcall	_I2Cask
;	main_2.c:106: for(i=0;i<6;i++) // Addresses from Canada, do not always write address
	mov	r7,#0x00
00102$:
;	main_2.c:108: I2CWrByte(0xff); // Send data
	mov	dpl,#0xff
	push	ar7
	lcall	_I2CWrByte
;	main_2.c:109: I2Cask();
	lcall	_I2Cask
	pop	ar7
;	main_2.c:106: for(i=0;i<6;i++) // Addresses from Canada, do not always write address
	inc	r7
	cjne	r7,#0x06,00115$
00115$:
	jc	00102$
;	main_2.c:111: I2CStop();
	lcall	_I2CStop
;	main_2.c:112: I2CStart();
	lcall	_I2CStart
;	main_2.c:113: I2CWrByte(0x8f); // Open display, maximum brightness
	mov	dpl,#0x8f
	lcall	_I2CWrByte
;	main_2.c:114: I2Cask();
	lcall	_I2Cask
;	main_2.c:115: I2CStop();
;	main_2.c:116: }
	ljmp	_I2CStop
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;	main_2.c:118: void init(void) // Initialization routine
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main_2.c:120: __nop();// Initialization slightly
	nop	
;	main_2.c:121: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;rtc                       Allocated with name '_main_rtc_65536_41'
;temp_dig1                 Allocated to registers r4 
;temp_dig2                 Allocated to registers r6 
;temp                      Allocated to registers r7 
;------------------------------------------------------------
;	main_2.c:125: void main() 
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main_2.c:132: lcd_Init();
	lcall	_lcd_Init
;	main_2.c:135: lcd_DisplayString("Hora: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_lcd_DisplayString
;	main_2.c:138: lcd_GoToLineTwo();
	lcall	_lcd_GoToLineTwo
;	main_2.c:139: lcd_DisplayString("Data: ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_lcd_DisplayString
;	main_2.c:141: init(); // Initialization TM1637
	lcall	_init
;	main_2.c:142: SmgDisplay(); // Write register and open display
	lcall	_SmgDisplay
;	main_2.c:145: while(1)
00102$:
;	main_2.c:148: iic_ds1307_time_read(0xD0,&rtc);
	mov	_iic_ds1307_time_read_PARM_2,#_main_rtc_65536_41
	mov	(_iic_ds1307_time_read_PARM_2 + 1),#0x00
	mov	(_iic_ds1307_time_read_PARM_2 + 2),#0x40
	mov	dpl,#0xd0
	lcall	_iic_ds1307_time_read
;	main_2.c:149: temp = iic_ds1307_temp_read(0xD0);
	mov	dpl,#0xd0
	lcall	_iic_ds1307_temp_read
	mov	r7,dpl
;	main_2.c:150: temp_dig1 = temp/10;
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	main_2.c:151: temp_dig2 = temp%10;        
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	pop	ar4
;	main_2.c:155: lcd_GoToXY(0,5); 		 
	mov	_lcd_GoToXY_PARM_2,#0x05
	mov	dpl,#0x00
	push	ar6
	push	ar4
	lcall	_lcd_GoToXY
	pop	ar4
	pop	ar6
;	main_2.c:156: lcd_DisplayRtcTime(rtc.hour,rtc.min,rtc.sec);
	mov	dpl,(_main_rtc_65536_41 + 0x0002)
	mov	_lcd_DisplayRtcTime_PARM_2,(_main_rtc_65536_41 + 0x0001)
	mov	_lcd_DisplayRtcTime_PARM_3,_main_rtc_65536_41
	push	ar6
	push	ar4
	lcall	_lcd_DisplayRtcTime
;	main_2.c:157: lcd_DisplayString("  T");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_lcd_DisplayString
;	main_2.c:158: lcd_GoToXY(1,5); 
	mov	_lcd_GoToXY_PARM_2,#0x05
	mov	dpl,#0x01
	lcall	_lcd_GoToXY
	pop	ar4
	pop	ar6
;	main_2.c:159: lcd_DisplayRtcDate(rtc.date,rtc.month,rtc.year);
	mov	dpl,(_main_rtc_65536_41 + 0x0004)
	mov	_lcd_DisplayRtcDate_PARM_2,(_main_rtc_65536_41 + 0x0005)
	mov	_lcd_DisplayRtcDate_PARM_3,(_main_rtc_65536_41 + 0x0006)
	push	ar6
	push	ar4
	lcall	_lcd_DisplayRtcDate
;	main_2.c:160: lcd_DisplayString(" ");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_lcd_DisplayString
	pop	ar4
;	main_2.c:161: lcd_Writedata(temp_dig1 + 0x30);
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_lcd_Writedata
	pop	ar6
;	main_2.c:162: lcd_Writedata((temp_dig2) + 0x30);              
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_lcd_Writedata
;	main_2.c:164: }
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Hora: "
	.db 0x00
___str_1:
	.ascii "Data: "
	.db 0x00
___str_2:
	.ascii "  T"
	.db 0x00
___str_3:
	.ascii " "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module RTC
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _showDigit_PARM_2
	.globl _main
	.globl _iic_ds1307_temp_read
	.globl _iic_ds1307_time_read
	.globl _iic_send_byte
	.globl _iic_stop
	.globl _iic_start
	.globl _delay_ms
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
	.globl _ds1307_Init
	.globl _showDigit
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
_main_rtc_65536_32:
	.ds 7
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_showDigit_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'ds1307_Init'
;------------------------------------------------------------
;	RTC.c:22: void ds1307_Init()
;	-----------------------------------------
;	 function ds1307_Init
;	-----------------------------------------
_ds1307_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	RTC.c:25: iic_start();                            // Start I2C communication
	lcall	_iic_start
;	RTC.c:27: iic_send_byte(C_Ds1307WriteMode_U8);        // Connect to DS1307 by sending its ID on I2c Bus
	mov	dpl,#0xd0
	lcall	_iic_send_byte
;	RTC.c:28: iic_send_byte(C_Ds1307ControlRegAddress_U8);// Select the Ds1307 ControlRegister to configure Ds1307
	mov	dpl,#0x07
	lcall	_iic_send_byte
;	RTC.c:30: iic_send_byte(0x00);                        // Write 0x00 to Control register to disable SQW-Out
	mov	dpl,#0x00
	lcall	_iic_send_byte
;	RTC.c:32: iic_stop();                             // Stop I2C communication after initializing DS1307
;	RTC.c:33: }
	ljmp	_iic_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'showDigit'
;------------------------------------------------------------
;position                  Allocated with name '_showDigit_PARM_2'
;digit                     Allocated to registers r7 
;------------------------------------------------------------
;	RTC.c:38: void showDigit(char digit,char position){
;	-----------------------------------------
;	 function showDigit
;	-----------------------------------------
_showDigit:
;	RTC.c:39: switch (digit)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x09
	jnc	00125$
	ljmp	00111$
00125$:
	mov	a,r7
	add	a,#(00126$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00127$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00126$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
00127$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
;	RTC.c:41: case 0:
00101$:
;	RTC.c:43: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:44: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:45: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:46: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:47: seg_E = HIGH;
;	assignBit
	clr	_P2_3
;	RTC.c:48: seg_F = HIGH;
;	assignBit
	clr	_P2_6
;	RTC.c:49: seg_G = LOW;
;	assignBit
	setb	_P2_7
;	RTC.c:51: break;
	ljmp	00111$
;	RTC.c:52: case 1:
00102$:
;	RTC.c:54: seg_A = LOW;
;	assignBit
	setb	_P2_5
;	RTC.c:55: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:56: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:57: seg_D = LOW;
;	assignBit
	setb	_P2_2
;	RTC.c:58: seg_E = LOW;
;	assignBit
	setb	_P2_3
;	RTC.c:59: seg_F = LOW;
;	assignBit
	setb	_P2_6
;	RTC.c:60: seg_G = LOW;
;	assignBit
	setb	_P2_7
;	RTC.c:62: break;
	ljmp	00111$
;	RTC.c:63: case 2:
00103$:
;	RTC.c:65: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:66: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:67: seg_C = LOW;
;	assignBit
	setb	_P2_1
;	RTC.c:68: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:69: seg_E = HIGH;
;	assignBit
	clr	_P2_3
;	RTC.c:70: seg_F = LOW;
;	assignBit
	setb	_P2_6
;	RTC.c:71: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:73: break;
;	RTC.c:74: case 3:
	sjmp	00111$
00104$:
;	RTC.c:76: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:77: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:78: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:79: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:80: seg_E = LOW;
;	assignBit
	setb	_P2_3
;	RTC.c:81: seg_F = LOW;
;	assignBit
	setb	_P2_6
;	RTC.c:82: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:84: break;
;	RTC.c:85: case 4:
	sjmp	00111$
00105$:
;	RTC.c:87: seg_A = LOW;
;	assignBit
	setb	_P2_5
;	RTC.c:88: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:89: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:90: seg_D = LOW;
;	assignBit
	setb	_P2_2
;	RTC.c:91: seg_E = LOW;
;	assignBit
	setb	_P2_3
;	RTC.c:92: seg_F = HIGH;
;	assignBit
	clr	_P2_6
;	RTC.c:93: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:95: break;
;	RTC.c:96: case 5:
	sjmp	00111$
00106$:
;	RTC.c:98: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:99: seg_B = LOW;
;	assignBit
	setb	_P2_4
;	RTC.c:100: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:101: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:102: seg_E = LOW;
;	assignBit
	setb	_P2_3
;	RTC.c:103: seg_F = HIGH;
;	assignBit
	clr	_P2_6
;	RTC.c:104: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:106: break;
;	RTC.c:107: case 6:
	sjmp	00111$
00107$:
;	RTC.c:109: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:110: seg_B = LOW;
;	assignBit
	setb	_P2_4
;	RTC.c:111: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:112: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:113: seg_E = HIGH;
;	assignBit
	clr	_P2_3
;	RTC.c:114: seg_F = HIGH;
;	assignBit
	clr	_P2_6
;	RTC.c:115: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:117: break;
;	RTC.c:118: case 7:
	sjmp	00111$
00108$:
;	RTC.c:120: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:121: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:122: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:123: seg_D = LOW;
;	assignBit
	setb	_P2_2
;	RTC.c:124: seg_E = LOW;
;	assignBit
	setb	_P2_3
;	RTC.c:125: seg_F = LOW;
;	assignBit
	setb	_P2_6
;	RTC.c:126: seg_G = LOW;
;	assignBit
	setb	_P2_7
;	RTC.c:128: break;
;	RTC.c:129: case 8:
	sjmp	00111$
00109$:
;	RTC.c:131: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:132: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:133: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:134: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:135: seg_E = HIGH;
;	assignBit
	clr	_P2_3
;	RTC.c:136: seg_F = HIGH;
;	assignBit
	clr	_P2_6
;	RTC.c:137: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:139: break;
;	RTC.c:140: case 9:
	sjmp	00111$
00110$:
;	RTC.c:142: seg_A = HIGH;
;	assignBit
	clr	_P2_5
;	RTC.c:143: seg_B = HIGH;
;	assignBit
	clr	_P2_4
;	RTC.c:144: seg_C = HIGH;
;	assignBit
	clr	_P2_1
;	RTC.c:145: seg_D = HIGH;
;	assignBit
	clr	_P2_2
;	RTC.c:146: seg_E = LOW;
;	assignBit
	setb	_P2_3
;	RTC.c:147: seg_F = HIGH;
;	assignBit
	clr	_P2_6
;	RTC.c:148: seg_G = HIGH;
;	assignBit
	clr	_P2_7
;	RTC.c:151: }
00111$:
;	RTC.c:152: if (position)
	mov	a,_showDigit_PARM_2
	jz	00113$
;	RTC.c:154: point = 0;
;	assignBit
	clr	_P2_0
	ret
00113$:
;	RTC.c:158: point = 1;
;	assignBit
	setb	_P2_0
;	RTC.c:160: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;rtc                       Allocated with name '_main_rtc_65536_32'
;sec                       Allocated to registers r7 
;a                         Allocated to registers r6 
;------------------------------------------------------------
;	RTC.c:164: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	RTC.c:170: while (1)
00109$:
;	RTC.c:172: if (!P1_0)
	jb	_P1_0,00106$
;	RTC.c:174: for (a=0;a<10;a++)
	mov	r7,#0x00
00111$:
;	RTC.c:176: showDigit (a,a%2);
	mov	a,#0x01
	anl	a,r7
	mov	_showDigit_PARM_2,a
	mov	dpl,r7
	push	ar7
	lcall	_showDigit
;	RTC.c:177: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	pop	ar7
;	RTC.c:174: for (a=0;a<10;a++)
	inc	r7
	cjne	r7,#0x0a,00142$
00142$:
	jc	00111$
	sjmp	00109$
00106$:
;	RTC.c:182: a = iic_ds1307_temp_read(0xD0);
	mov	dpl,#0xd0
	lcall	_iic_ds1307_temp_read
;	RTC.c:183: a = iic_ds1307_time_read(0xD0,&rtc);                
	mov	_iic_ds1307_time_read_PARM_2,#_main_rtc_65536_32
	mov	(_iic_ds1307_time_read_PARM_2 + 1),#0x00
	mov	(_iic_ds1307_time_read_PARM_2 + 2),#0x40
	mov	dpl,#0xd0
	lcall	_iic_ds1307_time_read
;	RTC.c:184: if (a==0)
	mov	a,dpl
	mov	r6,a
	jnz	00103$
;	RTC.c:186: sec = rtc.sec;
;	RTC.c:187: sec = sec >> 4;
	mov	a,_main_rtc_65536_32
	swap	a
;	RTC.c:188: sec = sec & 0x0F;
	anl	a,#0x0f
	mov	dpl,a
;	RTC.c:189: showDigit (sec,1);
	mov	_showDigit_PARM_2,#0x01
	lcall	_showDigit
;	RTC.c:190: delay_ms(900);
	mov	dptr,#0x0384
	lcall	_delay_ms
	sjmp	00109$
00103$:
;	RTC.c:194: showDigit (a,0);
	mov	_showDigit_PARM_2,#0x00
	mov	dpl,r6
	lcall	_showDigit
;	RTC.c:195: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	RTC.c:199: }
	sjmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

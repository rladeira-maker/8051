                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module RTC
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _showDigit_PARM_2
                                     12 	.globl _main
                                     13 	.globl _iic_ds1307_temp_read
                                     14 	.globl _iic_ds1307_time_read
                                     15 	.globl _iic_send_byte
                                     16 	.globl _iic_stop
                                     17 	.globl _iic_start
                                     18 	.globl _delay_ms
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _ds1307_Init
                                    116 	.globl _showDigit
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _main_rtc_65536_32:
      000008                        233 	.ds 7
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	OSEG    (OVR,DATA)
      000018                        238 _showDigit_PARM_2:
      000018                        239 	.ds 1
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	SSEG
      000019                        244 __start__stack:
      000019                        245 	.ds	1
                                    246 
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; interrupt vector 
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
      000000                        290 __interrupt_vect:
      000000 02 00 06         [24]  291 	ljmp	__sdcc_gsinit_startup
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.globl __sdcc_gsinit_startup
                                    300 	.globl __sdcc_program_startup
                                    301 	.globl __start__stack
                                    302 	.globl __mcs51_genXINIT
                                    303 	.globl __mcs51_genXRAMCLEAR
                                    304 	.globl __mcs51_genRAMCLEAR
                                    305 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  306 	ljmp	__sdcc_program_startup
                                    307 ;--------------------------------------------------------
                                    308 ; Home
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
                                    311 	.area HOME    (CODE)
      000003                        312 __sdcc_program_startup:
      000003 02 01 50         [24]  313 	ljmp	_main
                                    314 ;	return from main will return to caller
                                    315 ;--------------------------------------------------------
                                    316 ; code
                                    317 ;--------------------------------------------------------
                                    318 	.area CSEG    (CODE)
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'ds1307_Init'
                                    321 ;------------------------------------------------------------
                                    322 ;	RTC.c:22: void ds1307_Init()
                                    323 ;	-----------------------------------------
                                    324 ;	 function ds1307_Init
                                    325 ;	-----------------------------------------
      000062                        326 _ds1307_Init:
                           000007   327 	ar7 = 0x07
                           000006   328 	ar6 = 0x06
                           000005   329 	ar5 = 0x05
                           000004   330 	ar4 = 0x04
                           000003   331 	ar3 = 0x03
                           000002   332 	ar2 = 0x02
                           000001   333 	ar1 = 0x01
                           000000   334 	ar0 = 0x00
                                    335 ;	RTC.c:25: iic_start();                            // Start I2C communication
      000062 12 01 F0         [24]  336 	lcall	_iic_start
                                    337 ;	RTC.c:27: iic_send_byte(C_Ds1307WriteMode_U8);        // Connect to DS1307 by sending its ID on I2c Bus
      000065 75 82 D0         [24]  338 	mov	dpl,#0xd0
      000068 12 02 2F         [24]  339 	lcall	_iic_send_byte
                                    340 ;	RTC.c:28: iic_send_byte(C_Ds1307ControlRegAddress_U8);// Select the Ds1307 ControlRegister to configure Ds1307
      00006B 75 82 07         [24]  341 	mov	dpl,#0x07
      00006E 12 02 2F         [24]  342 	lcall	_iic_send_byte
                                    343 ;	RTC.c:30: iic_send_byte(0x00);                        // Write 0x00 to Control register to disable SQW-Out
      000071 75 82 00         [24]  344 	mov	dpl,#0x00
      000074 12 02 2F         [24]  345 	lcall	_iic_send_byte
                                    346 ;	RTC.c:32: iic_stop();                             // Stop I2C communication after initializing DS1307
                                    347 ;	RTC.c:33: }
      000077 02 01 FD         [24]  348 	ljmp	_iic_stop
                                    349 ;------------------------------------------------------------
                                    350 ;Allocation info for local variables in function 'showDigit'
                                    351 ;------------------------------------------------------------
                                    352 ;position                  Allocated with name '_showDigit_PARM_2'
                                    353 ;digit                     Allocated to registers r7 
                                    354 ;------------------------------------------------------------
                                    355 ;	RTC.c:38: void showDigit(char digit,char position){
                                    356 ;	-----------------------------------------
                                    357 ;	 function showDigit
                                    358 ;	-----------------------------------------
      00007A                        359 _showDigit:
                                    360 ;	RTC.c:39: switch (digit)
      00007A E5 82            [12]  361 	mov	a,dpl
      00007C FF               [12]  362 	mov	r7,a
      00007D 24 F6            [12]  363 	add	a,#0xff - 0x09
      00007F 50 03            [24]  364 	jnc	00125$
      000081 02 01 46         [24]  365 	ljmp	00111$
      000084                        366 00125$:
      000084 EF               [12]  367 	mov	a,r7
      000085 24 0A            [12]  368 	add	a,#(00126$-3-.)
      000087 83               [24]  369 	movc	a,@a+pc
      000088 F5 82            [12]  370 	mov	dpl,a
      00008A EF               [12]  371 	mov	a,r7
      00008B 24 0E            [12]  372 	add	a,#(00127$-3-.)
      00008D 83               [24]  373 	movc	a,@a+pc
      00008E F5 83            [12]  374 	mov	dph,a
      000090 E4               [12]  375 	clr	a
      000091 73               [24]  376 	jmp	@a+dptr
      000092                        377 00126$:
      000092 A6                     378 	.db	00101$
      000093 B7                     379 	.db	00102$
      000094 C8                     380 	.db	00103$
      000095 D8                     381 	.db	00104$
      000096 E8                     382 	.db	00105$
      000097 F8                     383 	.db	00106$
      000098 08                     384 	.db	00107$
      000099 18                     385 	.db	00108$
      00009A 28                     386 	.db	00109$
      00009B 38                     387 	.db	00110$
      00009C                        388 00127$:
      00009C 00                     389 	.db	00101$>>8
      00009D 00                     390 	.db	00102$>>8
      00009E 00                     391 	.db	00103$>>8
      00009F 00                     392 	.db	00104$>>8
      0000A0 00                     393 	.db	00105$>>8
      0000A1 00                     394 	.db	00106$>>8
      0000A2 01                     395 	.db	00107$>>8
      0000A3 01                     396 	.db	00108$>>8
      0000A4 01                     397 	.db	00109$>>8
      0000A5 01                     398 	.db	00110$>>8
                                    399 ;	RTC.c:41: case 0:
      0000A6                        400 00101$:
                                    401 ;	RTC.c:43: seg_A = HIGH;
                                    402 ;	assignBit
      0000A6 C2 A5            [12]  403 	clr	_P2_5
                                    404 ;	RTC.c:44: seg_B = HIGH;
                                    405 ;	assignBit
      0000A8 C2 A4            [12]  406 	clr	_P2_4
                                    407 ;	RTC.c:45: seg_C = HIGH;
                                    408 ;	assignBit
      0000AA C2 A1            [12]  409 	clr	_P2_1
                                    410 ;	RTC.c:46: seg_D = HIGH;
                                    411 ;	assignBit
      0000AC C2 A2            [12]  412 	clr	_P2_2
                                    413 ;	RTC.c:47: seg_E = HIGH;
                                    414 ;	assignBit
      0000AE C2 A3            [12]  415 	clr	_P2_3
                                    416 ;	RTC.c:48: seg_F = HIGH;
                                    417 ;	assignBit
      0000B0 C2 A6            [12]  418 	clr	_P2_6
                                    419 ;	RTC.c:49: seg_G = LOW;
                                    420 ;	assignBit
      0000B2 D2 A7            [12]  421 	setb	_P2_7
                                    422 ;	RTC.c:51: break;
      0000B4 02 01 46         [24]  423 	ljmp	00111$
                                    424 ;	RTC.c:52: case 1:
      0000B7                        425 00102$:
                                    426 ;	RTC.c:54: seg_A = LOW;
                                    427 ;	assignBit
      0000B7 D2 A5            [12]  428 	setb	_P2_5
                                    429 ;	RTC.c:55: seg_B = HIGH;
                                    430 ;	assignBit
      0000B9 C2 A4            [12]  431 	clr	_P2_4
                                    432 ;	RTC.c:56: seg_C = HIGH;
                                    433 ;	assignBit
      0000BB C2 A1            [12]  434 	clr	_P2_1
                                    435 ;	RTC.c:57: seg_D = LOW;
                                    436 ;	assignBit
      0000BD D2 A2            [12]  437 	setb	_P2_2
                                    438 ;	RTC.c:58: seg_E = LOW;
                                    439 ;	assignBit
      0000BF D2 A3            [12]  440 	setb	_P2_3
                                    441 ;	RTC.c:59: seg_F = LOW;
                                    442 ;	assignBit
      0000C1 D2 A6            [12]  443 	setb	_P2_6
                                    444 ;	RTC.c:60: seg_G = LOW;
                                    445 ;	assignBit
      0000C3 D2 A7            [12]  446 	setb	_P2_7
                                    447 ;	RTC.c:62: break;
      0000C5 02 01 46         [24]  448 	ljmp	00111$
                                    449 ;	RTC.c:63: case 2:
      0000C8                        450 00103$:
                                    451 ;	RTC.c:65: seg_A = HIGH;
                                    452 ;	assignBit
      0000C8 C2 A5            [12]  453 	clr	_P2_5
                                    454 ;	RTC.c:66: seg_B = HIGH;
                                    455 ;	assignBit
      0000CA C2 A4            [12]  456 	clr	_P2_4
                                    457 ;	RTC.c:67: seg_C = LOW;
                                    458 ;	assignBit
      0000CC D2 A1            [12]  459 	setb	_P2_1
                                    460 ;	RTC.c:68: seg_D = HIGH;
                                    461 ;	assignBit
      0000CE C2 A2            [12]  462 	clr	_P2_2
                                    463 ;	RTC.c:69: seg_E = HIGH;
                                    464 ;	assignBit
      0000D0 C2 A3            [12]  465 	clr	_P2_3
                                    466 ;	RTC.c:70: seg_F = LOW;
                                    467 ;	assignBit
      0000D2 D2 A6            [12]  468 	setb	_P2_6
                                    469 ;	RTC.c:71: seg_G = HIGH;
                                    470 ;	assignBit
      0000D4 C2 A7            [12]  471 	clr	_P2_7
                                    472 ;	RTC.c:73: break;
                                    473 ;	RTC.c:74: case 3:
      0000D6 80 6E            [24]  474 	sjmp	00111$
      0000D8                        475 00104$:
                                    476 ;	RTC.c:76: seg_A = HIGH;
                                    477 ;	assignBit
      0000D8 C2 A5            [12]  478 	clr	_P2_5
                                    479 ;	RTC.c:77: seg_B = HIGH;
                                    480 ;	assignBit
      0000DA C2 A4            [12]  481 	clr	_P2_4
                                    482 ;	RTC.c:78: seg_C = HIGH;
                                    483 ;	assignBit
      0000DC C2 A1            [12]  484 	clr	_P2_1
                                    485 ;	RTC.c:79: seg_D = HIGH;
                                    486 ;	assignBit
      0000DE C2 A2            [12]  487 	clr	_P2_2
                                    488 ;	RTC.c:80: seg_E = LOW;
                                    489 ;	assignBit
      0000E0 D2 A3            [12]  490 	setb	_P2_3
                                    491 ;	RTC.c:81: seg_F = LOW;
                                    492 ;	assignBit
      0000E2 D2 A6            [12]  493 	setb	_P2_6
                                    494 ;	RTC.c:82: seg_G = HIGH;
                                    495 ;	assignBit
      0000E4 C2 A7            [12]  496 	clr	_P2_7
                                    497 ;	RTC.c:84: break;
                                    498 ;	RTC.c:85: case 4:
      0000E6 80 5E            [24]  499 	sjmp	00111$
      0000E8                        500 00105$:
                                    501 ;	RTC.c:87: seg_A = LOW;
                                    502 ;	assignBit
      0000E8 D2 A5            [12]  503 	setb	_P2_5
                                    504 ;	RTC.c:88: seg_B = HIGH;
                                    505 ;	assignBit
      0000EA C2 A4            [12]  506 	clr	_P2_4
                                    507 ;	RTC.c:89: seg_C = HIGH;
                                    508 ;	assignBit
      0000EC C2 A1            [12]  509 	clr	_P2_1
                                    510 ;	RTC.c:90: seg_D = LOW;
                                    511 ;	assignBit
      0000EE D2 A2            [12]  512 	setb	_P2_2
                                    513 ;	RTC.c:91: seg_E = LOW;
                                    514 ;	assignBit
      0000F0 D2 A3            [12]  515 	setb	_P2_3
                                    516 ;	RTC.c:92: seg_F = HIGH;
                                    517 ;	assignBit
      0000F2 C2 A6            [12]  518 	clr	_P2_6
                                    519 ;	RTC.c:93: seg_G = HIGH;
                                    520 ;	assignBit
      0000F4 C2 A7            [12]  521 	clr	_P2_7
                                    522 ;	RTC.c:95: break;
                                    523 ;	RTC.c:96: case 5:
      0000F6 80 4E            [24]  524 	sjmp	00111$
      0000F8                        525 00106$:
                                    526 ;	RTC.c:98: seg_A = HIGH;
                                    527 ;	assignBit
      0000F8 C2 A5            [12]  528 	clr	_P2_5
                                    529 ;	RTC.c:99: seg_B = LOW;
                                    530 ;	assignBit
      0000FA D2 A4            [12]  531 	setb	_P2_4
                                    532 ;	RTC.c:100: seg_C = HIGH;
                                    533 ;	assignBit
      0000FC C2 A1            [12]  534 	clr	_P2_1
                                    535 ;	RTC.c:101: seg_D = HIGH;
                                    536 ;	assignBit
      0000FE C2 A2            [12]  537 	clr	_P2_2
                                    538 ;	RTC.c:102: seg_E = LOW;
                                    539 ;	assignBit
      000100 D2 A3            [12]  540 	setb	_P2_3
                                    541 ;	RTC.c:103: seg_F = HIGH;
                                    542 ;	assignBit
      000102 C2 A6            [12]  543 	clr	_P2_6
                                    544 ;	RTC.c:104: seg_G = HIGH;
                                    545 ;	assignBit
      000104 C2 A7            [12]  546 	clr	_P2_7
                                    547 ;	RTC.c:106: break;
                                    548 ;	RTC.c:107: case 6:
      000106 80 3E            [24]  549 	sjmp	00111$
      000108                        550 00107$:
                                    551 ;	RTC.c:109: seg_A = HIGH;
                                    552 ;	assignBit
      000108 C2 A5            [12]  553 	clr	_P2_5
                                    554 ;	RTC.c:110: seg_B = LOW;
                                    555 ;	assignBit
      00010A D2 A4            [12]  556 	setb	_P2_4
                                    557 ;	RTC.c:111: seg_C = HIGH;
                                    558 ;	assignBit
      00010C C2 A1            [12]  559 	clr	_P2_1
                                    560 ;	RTC.c:112: seg_D = HIGH;
                                    561 ;	assignBit
      00010E C2 A2            [12]  562 	clr	_P2_2
                                    563 ;	RTC.c:113: seg_E = HIGH;
                                    564 ;	assignBit
      000110 C2 A3            [12]  565 	clr	_P2_3
                                    566 ;	RTC.c:114: seg_F = HIGH;
                                    567 ;	assignBit
      000112 C2 A6            [12]  568 	clr	_P2_6
                                    569 ;	RTC.c:115: seg_G = HIGH;
                                    570 ;	assignBit
      000114 C2 A7            [12]  571 	clr	_P2_7
                                    572 ;	RTC.c:117: break;
                                    573 ;	RTC.c:118: case 7:
      000116 80 2E            [24]  574 	sjmp	00111$
      000118                        575 00108$:
                                    576 ;	RTC.c:120: seg_A = HIGH;
                                    577 ;	assignBit
      000118 C2 A5            [12]  578 	clr	_P2_5
                                    579 ;	RTC.c:121: seg_B = HIGH;
                                    580 ;	assignBit
      00011A C2 A4            [12]  581 	clr	_P2_4
                                    582 ;	RTC.c:122: seg_C = HIGH;
                                    583 ;	assignBit
      00011C C2 A1            [12]  584 	clr	_P2_1
                                    585 ;	RTC.c:123: seg_D = LOW;
                                    586 ;	assignBit
      00011E D2 A2            [12]  587 	setb	_P2_2
                                    588 ;	RTC.c:124: seg_E = LOW;
                                    589 ;	assignBit
      000120 D2 A3            [12]  590 	setb	_P2_3
                                    591 ;	RTC.c:125: seg_F = LOW;
                                    592 ;	assignBit
      000122 D2 A6            [12]  593 	setb	_P2_6
                                    594 ;	RTC.c:126: seg_G = LOW;
                                    595 ;	assignBit
      000124 D2 A7            [12]  596 	setb	_P2_7
                                    597 ;	RTC.c:128: break;
                                    598 ;	RTC.c:129: case 8:
      000126 80 1E            [24]  599 	sjmp	00111$
      000128                        600 00109$:
                                    601 ;	RTC.c:131: seg_A = HIGH;
                                    602 ;	assignBit
      000128 C2 A5            [12]  603 	clr	_P2_5
                                    604 ;	RTC.c:132: seg_B = HIGH;
                                    605 ;	assignBit
      00012A C2 A4            [12]  606 	clr	_P2_4
                                    607 ;	RTC.c:133: seg_C = HIGH;
                                    608 ;	assignBit
      00012C C2 A1            [12]  609 	clr	_P2_1
                                    610 ;	RTC.c:134: seg_D = HIGH;
                                    611 ;	assignBit
      00012E C2 A2            [12]  612 	clr	_P2_2
                                    613 ;	RTC.c:135: seg_E = HIGH;
                                    614 ;	assignBit
      000130 C2 A3            [12]  615 	clr	_P2_3
                                    616 ;	RTC.c:136: seg_F = HIGH;
                                    617 ;	assignBit
      000132 C2 A6            [12]  618 	clr	_P2_6
                                    619 ;	RTC.c:137: seg_G = HIGH;
                                    620 ;	assignBit
      000134 C2 A7            [12]  621 	clr	_P2_7
                                    622 ;	RTC.c:139: break;
                                    623 ;	RTC.c:140: case 9:
      000136 80 0E            [24]  624 	sjmp	00111$
      000138                        625 00110$:
                                    626 ;	RTC.c:142: seg_A = HIGH;
                                    627 ;	assignBit
      000138 C2 A5            [12]  628 	clr	_P2_5
                                    629 ;	RTC.c:143: seg_B = HIGH;
                                    630 ;	assignBit
      00013A C2 A4            [12]  631 	clr	_P2_4
                                    632 ;	RTC.c:144: seg_C = HIGH;
                                    633 ;	assignBit
      00013C C2 A1            [12]  634 	clr	_P2_1
                                    635 ;	RTC.c:145: seg_D = HIGH;
                                    636 ;	assignBit
      00013E C2 A2            [12]  637 	clr	_P2_2
                                    638 ;	RTC.c:146: seg_E = LOW;
                                    639 ;	assignBit
      000140 D2 A3            [12]  640 	setb	_P2_3
                                    641 ;	RTC.c:147: seg_F = HIGH;
                                    642 ;	assignBit
      000142 C2 A6            [12]  643 	clr	_P2_6
                                    644 ;	RTC.c:148: seg_G = HIGH;
                                    645 ;	assignBit
      000144 C2 A7            [12]  646 	clr	_P2_7
                                    647 ;	RTC.c:151: }
      000146                        648 00111$:
                                    649 ;	RTC.c:152: if (position)
      000146 E5 18            [12]  650 	mov	a,_showDigit_PARM_2
      000148 60 03            [24]  651 	jz	00113$
                                    652 ;	RTC.c:154: point = 0;
                                    653 ;	assignBit
      00014A C2 A0            [12]  654 	clr	_P2_0
      00014C 22               [24]  655 	ret
      00014D                        656 00113$:
                                    657 ;	RTC.c:158: point = 1;
                                    658 ;	assignBit
      00014D D2 A0            [12]  659 	setb	_P2_0
                                    660 ;	RTC.c:160: }
      00014F 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'main'
                                    664 ;------------------------------------------------------------
                                    665 ;rtc                       Allocated with name '_main_rtc_65536_32'
                                    666 ;sec                       Allocated to registers r7 
                                    667 ;a                         Allocated to registers r6 
                                    668 ;------------------------------------------------------------
                                    669 ;	RTC.c:164: void main (void)
                                    670 ;	-----------------------------------------
                                    671 ;	 function main
                                    672 ;	-----------------------------------------
      000150                        673 _main:
                                    674 ;	RTC.c:170: while (1)
      000150                        675 00109$:
                                    676 ;	RTC.c:172: if (!P1_0)
      000150 20 90 1E         [24]  677 	jb	_P1_0,00106$
                                    678 ;	RTC.c:174: for (a=0;a<10;a++)
      000153 7F 00            [12]  679 	mov	r7,#0x00
      000155                        680 00111$:
                                    681 ;	RTC.c:176: showDigit (a,a%2);
      000155 74 01            [12]  682 	mov	a,#0x01
      000157 5F               [12]  683 	anl	a,r7
      000158 F5 18            [12]  684 	mov	_showDigit_PARM_2,a
      00015A 8F 82            [24]  685 	mov	dpl,r7
      00015C C0 07            [24]  686 	push	ar7
      00015E 12 00 7A         [24]  687 	lcall	_showDigit
                                    688 ;	RTC.c:177: delay_ms(500);
      000161 90 01 F4         [24]  689 	mov	dptr,#0x01f4
      000164 12 01 B0         [24]  690 	lcall	_delay_ms
      000167 D0 07            [24]  691 	pop	ar7
                                    692 ;	RTC.c:174: for (a=0;a<10;a++)
      000169 0F               [12]  693 	inc	r7
      00016A BF 0A 00         [24]  694 	cjne	r7,#0x0a,00142$
      00016D                        695 00142$:
      00016D 40 E6            [24]  696 	jc	00111$
      00016F 80 DF            [24]  697 	sjmp	00109$
      000171                        698 00106$:
                                    699 ;	RTC.c:182: a = iic_ds1307_temp_read(0xD0);
      000171 75 82 D0         [24]  700 	mov	dpl,#0xd0
      000174 12 04 A1         [24]  701 	lcall	_iic_ds1307_temp_read
                                    702 ;	RTC.c:183: a = iic_ds1307_time_read(0xD0,&rtc);                
      000177 75 13 08         [24]  703 	mov	_iic_ds1307_time_read_PARM_2,#_main_rtc_65536_32
      00017A 75 14 00         [24]  704 	mov	(_iic_ds1307_time_read_PARM_2 + 1),#0x00
      00017D 75 15 40         [24]  705 	mov	(_iic_ds1307_time_read_PARM_2 + 2),#0x40
      000180 75 82 D0         [24]  706 	mov	dpl,#0xd0
      000183 12 02 FB         [24]  707 	lcall	_iic_ds1307_time_read
                                    708 ;	RTC.c:184: if (a==0)
      000186 E5 82            [12]  709 	mov	a,dpl
      000188 FE               [12]  710 	mov	r6,a
      000189 70 15            [24]  711 	jnz	00103$
                                    712 ;	RTC.c:186: sec = rtc.sec;
                                    713 ;	RTC.c:187: sec = sec >> 4;
      00018B E5 08            [12]  714 	mov	a,_main_rtc_65536_32
      00018D C4               [12]  715 	swap	a
                                    716 ;	RTC.c:188: sec = sec & 0x0F;
      00018E 54 0F            [12]  717 	anl	a,#0x0f
      000190 F5 82            [12]  718 	mov	dpl,a
                                    719 ;	RTC.c:189: showDigit (sec,1);
      000192 75 18 01         [24]  720 	mov	_showDigit_PARM_2,#0x01
      000195 12 00 7A         [24]  721 	lcall	_showDigit
                                    722 ;	RTC.c:190: delay_ms(900);
      000198 90 03 84         [24]  723 	mov	dptr,#0x0384
      00019B 12 01 B0         [24]  724 	lcall	_delay_ms
      00019E 80 B0            [24]  725 	sjmp	00109$
      0001A0                        726 00103$:
                                    727 ;	RTC.c:194: showDigit (a,0);
      0001A0 75 18 00         [24]  728 	mov	_showDigit_PARM_2,#0x00
      0001A3 8E 82            [24]  729 	mov	dpl,r6
      0001A5 12 00 7A         [24]  730 	lcall	_showDigit
                                    731 ;	RTC.c:195: delay_ms(1000);
      0001A8 90 03 E8         [24]  732 	mov	dptr,#0x03e8
      0001AB 12 01 B0         [24]  733 	lcall	_delay_ms
                                    734 ;	RTC.c:199: }
      0001AE 80 A0            [24]  735 	sjmp	00109$
                                    736 	.area CSEG    (CODE)
                                    737 	.area CONST   (CODE)
                                    738 	.area XINIT   (CODE)
                                    739 	.area CABS    (ABS,CODE)

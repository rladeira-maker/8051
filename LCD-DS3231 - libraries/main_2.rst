                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main_2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _init
                                     13 	.globl _SmgDisplay
                                     14 	.globl _I2CWrByte
                                     15 	.globl _I2CStop
                                     16 	.globl _I2Cask
                                     17 	.globl _I2CStart
                                     18 	.globl _delay_us
                                     19 	.globl _iic_ds1307_temp_read
                                     20 	.globl _iic_ds1307_time_read
                                     21 	.globl _lcd_GoToXY
                                     22 	.globl _lcd_GoToLineTwo
                                     23 	.globl _lcd_DisplayRtcDate
                                     24 	.globl _lcd_DisplayRtcTime
                                     25 	.globl _lcd_DisplayString
                                     26 	.globl _lcd_Writedata
                                     27 	.globl _lcd_Init
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _PS
                                     37 	.globl _PT1
                                     38 	.globl _PX1
                                     39 	.globl _PT0
                                     40 	.globl _PX0
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _EA
                                     58 	.globl _ES
                                     59 	.globl _ET1
                                     60 	.globl _EX1
                                     61 	.globl _ET0
                                     62 	.globl _EX0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _SM0
                                     72 	.globl _SM1
                                     73 	.globl _SM2
                                     74 	.globl _REN
                                     75 	.globl _TB8
                                     76 	.globl _RB8
                                     77 	.globl _TI
                                     78 	.globl _RI
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _TF1
                                     88 	.globl _TR1
                                     89 	.globl _TF0
                                     90 	.globl _TR0
                                     91 	.globl _IE1
                                     92 	.globl _IT1
                                     93 	.globl _IE0
                                     94 	.globl _IT0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _TF2
                                    104 	.globl _EXF2
                                    105 	.globl _RCLK
                                    106 	.globl _TCLK
                                    107 	.globl _EXEN2
                                    108 	.globl _TR2
                                    109 	.globl _C_T2
                                    110 	.globl _CP_RL2
                                    111 	.globl _T2CON_7
                                    112 	.globl _T2CON_6
                                    113 	.globl _T2CON_5
                                    114 	.globl _T2CON_4
                                    115 	.globl _T2CON_3
                                    116 	.globl _T2CON_2
                                    117 	.globl _T2CON_1
                                    118 	.globl _T2CON_0
                                    119 	.globl _PT2
                                    120 	.globl _ET2
                                    121 	.globl _B
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _TH2
                                    143 	.globl _TL2
                                    144 	.globl _RCAP2H
                                    145 	.globl _RCAP2L
                                    146 	.globl _T2CON
                                    147 ;--------------------------------------------------------
                                    148 ; special function registers
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           0000C8   152 _T2CON	=	0x00c8
                           0000CA   153 _RCAP2L	=	0x00ca
                           0000CB   154 _RCAP2H	=	0x00cb
                           0000CC   155 _TL2	=	0x00cc
                           0000CD   156 _TH2	=	0x00cd
                           000080   157 _P0	=	0x0080
                           000081   158 _SP	=	0x0081
                           000082   159 _DPL	=	0x0082
                           000083   160 _DPH	=	0x0083
                           000087   161 _PCON	=	0x0087
                           000088   162 _TCON	=	0x0088
                           000089   163 _TMOD	=	0x0089
                           00008A   164 _TL0	=	0x008a
                           00008B   165 _TL1	=	0x008b
                           00008C   166 _TH0	=	0x008c
                           00008D   167 _TH1	=	0x008d
                           000090   168 _P1	=	0x0090
                           000098   169 _SCON	=	0x0098
                           000099   170 _SBUF	=	0x0099
                           0000A0   171 _P2	=	0x00a0
                           0000A8   172 _IE	=	0x00a8
                           0000B0   173 _P3	=	0x00b0
                           0000B8   174 _IP	=	0x00b8
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 _ACC	=	0x00e0
                           0000F0   177 _B	=	0x00f0
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           0000AD   183 _ET2	=	0x00ad
                           0000BD   184 _PT2	=	0x00bd
                           0000C8   185 _T2CON_0	=	0x00c8
                           0000C9   186 _T2CON_1	=	0x00c9
                           0000CA   187 _T2CON_2	=	0x00ca
                           0000CB   188 _T2CON_3	=	0x00cb
                           0000CC   189 _T2CON_4	=	0x00cc
                           0000CD   190 _T2CON_5	=	0x00cd
                           0000CE   191 _T2CON_6	=	0x00ce
                           0000CF   192 _T2CON_7	=	0x00cf
                           0000C8   193 _CP_RL2	=	0x00c8
                           0000C9   194 _C_T2	=	0x00c9
                           0000CA   195 _TR2	=	0x00ca
                           0000CB   196 _EXEN2	=	0x00cb
                           0000CC   197 _TCLK	=	0x00cc
                           0000CD   198 _RCLK	=	0x00cd
                           0000CE   199 _EXF2	=	0x00ce
                           0000CF   200 _TF2	=	0x00cf
                           000080   201 _P0_0	=	0x0080
                           000081   202 _P0_1	=	0x0081
                           000082   203 _P0_2	=	0x0082
                           000083   204 _P0_3	=	0x0083
                           000084   205 _P0_4	=	0x0084
                           000085   206 _P0_5	=	0x0085
                           000086   207 _P0_6	=	0x0086
                           000087   208 _P0_7	=	0x0087
                           000088   209 _IT0	=	0x0088
                           000089   210 _IE0	=	0x0089
                           00008A   211 _IT1	=	0x008a
                           00008B   212 _IE1	=	0x008b
                           00008C   213 _TR0	=	0x008c
                           00008D   214 _TF0	=	0x008d
                           00008E   215 _TR1	=	0x008e
                           00008F   216 _TF1	=	0x008f
                           000090   217 _P1_0	=	0x0090
                           000091   218 _P1_1	=	0x0091
                           000092   219 _P1_2	=	0x0092
                           000093   220 _P1_3	=	0x0093
                           000094   221 _P1_4	=	0x0094
                           000095   222 _P1_5	=	0x0095
                           000096   223 _P1_6	=	0x0096
                           000097   224 _P1_7	=	0x0097
                           000098   225 _RI	=	0x0098
                           000099   226 _TI	=	0x0099
                           00009A   227 _RB8	=	0x009a
                           00009B   228 _TB8	=	0x009b
                           00009C   229 _REN	=	0x009c
                           00009D   230 _SM2	=	0x009d
                           00009E   231 _SM1	=	0x009e
                           00009F   232 _SM0	=	0x009f
                           0000A0   233 _P2_0	=	0x00a0
                           0000A1   234 _P2_1	=	0x00a1
                           0000A2   235 _P2_2	=	0x00a2
                           0000A3   236 _P2_3	=	0x00a3
                           0000A4   237 _P2_4	=	0x00a4
                           0000A5   238 _P2_5	=	0x00a5
                           0000A6   239 _P2_6	=	0x00a6
                           0000A7   240 _P2_7	=	0x00a7
                           0000A8   241 _EX0	=	0x00a8
                           0000A9   242 _ET0	=	0x00a9
                           0000AA   243 _EX1	=	0x00aa
                           0000AB   244 _ET1	=	0x00ab
                           0000AC   245 _ES	=	0x00ac
                           0000AF   246 _EA	=	0x00af
                           0000B0   247 _P3_0	=	0x00b0
                           0000B1   248 _P3_1	=	0x00b1
                           0000B2   249 _P3_2	=	0x00b2
                           0000B3   250 _P3_3	=	0x00b3
                           0000B4   251 _P3_4	=	0x00b4
                           0000B5   252 _P3_5	=	0x00b5
                           0000B6   253 _P3_6	=	0x00b6
                           0000B7   254 _P3_7	=	0x00b7
                           0000B0   255 _RXD	=	0x00b0
                           0000B1   256 _TXD	=	0x00b1
                           0000B2   257 _INT0	=	0x00b2
                           0000B3   258 _INT1	=	0x00b3
                           0000B4   259 _T0	=	0x00b4
                           0000B5   260 _T1	=	0x00b5
                           0000B6   261 _WR	=	0x00b6
                           0000B7   262 _RD	=	0x00b7
                           0000B8   263 _PX0	=	0x00b8
                           0000B9   264 _PT0	=	0x00b9
                           0000BA   265 _PX1	=	0x00ba
                           0000BB   266 _PT1	=	0x00bb
                           0000BC   267 _PS	=	0x00bc
                           0000D0   268 _P	=	0x00d0
                           0000D1   269 _F1	=	0x00d1
                           0000D2   270 _OV	=	0x00d2
                           0000D3   271 _RS0	=	0x00d3
                           0000D4   272 _RS1	=	0x00d4
                           0000D5   273 _F0	=	0x00d5
                           0000D6   274 _AC	=	0x00d6
                           0000D7   275 _CY	=	0x00d7
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 ;--------------------------------------------------------
                                    282 ; internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area DSEG    (DATA)
      000008                        285 _main_rtc_65536_41:
      000008                        286 	.ds 7
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable items in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 ;--------------------------------------------------------
                                    291 ; Stack segment in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 	.area	SSEG
      00002A                        294 __start__stack:
      00002A                        295 	.ds	1
                                    296 
                                    297 ;--------------------------------------------------------
                                    298 ; indirectly addressable internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area ISEG    (DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area IABS    (ABS,DATA)
                                    305 	.area IABS    (ABS,DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; bit data
                                    308 ;--------------------------------------------------------
                                    309 	.area BSEG    (BIT)
                                    310 ;--------------------------------------------------------
                                    311 ; paged external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area PSEG    (PAG,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XSEG    (XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XABS    (ABS,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; external initialized ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XISEG   (XDATA)
                                    326 	.area HOME    (CODE)
                                    327 	.area GSINIT0 (CODE)
                                    328 	.area GSINIT1 (CODE)
                                    329 	.area GSINIT2 (CODE)
                                    330 	.area GSINIT3 (CODE)
                                    331 	.area GSINIT4 (CODE)
                                    332 	.area GSINIT5 (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area CSEG    (CODE)
                                    336 ;--------------------------------------------------------
                                    337 ; interrupt vector 
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
      000000                        340 __interrupt_vect:
      000000 02 00 06         [24]  341 	ljmp	__sdcc_gsinit_startup
                                    342 ;--------------------------------------------------------
                                    343 ; global & static initialisations
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.globl __sdcc_gsinit_startup
                                    350 	.globl __sdcc_program_startup
                                    351 	.globl __start__stack
                                    352 	.globl __mcs51_genXINIT
                                    353 	.globl __mcs51_genXRAMCLEAR
                                    354 	.globl __mcs51_genRAMCLEAR
                                    355 	.area GSFINAL (CODE)
      00006E 02 00 03         [24]  356 	ljmp	__sdcc_program_startup
                                    357 ;--------------------------------------------------------
                                    358 ; Home
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
                                    361 	.area HOME    (CODE)
      000003                        362 __sdcc_program_startup:
      000003 02 01 2C         [24]  363 	ljmp	_main
                                    364 ;	return from main will return to caller
                                    365 ;--------------------------------------------------------
                                    366 ; code
                                    367 ;--------------------------------------------------------
                                    368 	.area CSEG    (CODE)
                                    369 ;------------------------------------------------------------
                                    370 ;Allocation info for local variables in function 'I2CStart'
                                    371 ;------------------------------------------------------------
                                    372 ;	main_2.c:23: void I2CStart (void) // 1637 start
                                    373 ;	-----------------------------------------
                                    374 ;	 function I2CStart
                                    375 ;	-----------------------------------------
      000071                        376 _I2CStart:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
                                    385 ;	main_2.c:25: clk = 1;
                                    386 ;	assignBit
      000071 D2 A2            [12]  387 	setb	_P2_2
                                    388 ;	main_2.c:26: dio = 1;
                                    389 ;	assignBit
      000073 D2 A3            [12]  390 	setb	_P2_3
                                    391 ;	main_2.c:27: delay_us (2);
      000075 90 00 02         [24]  392 	mov	dptr,#0x0002
      000078 12 08 54         [24]  393 	lcall	_delay_us
                                    394 ;	main_2.c:28: dio = 0;
                                    395 ;	assignBit
      00007B C2 A3            [12]  396 	clr	_P2_3
                                    397 ;	main_2.c:29: }
      00007D 22               [24]  398 	ret
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'I2Cask'
                                    401 ;------------------------------------------------------------
                                    402 ;	main_2.c:31: void I2Cask (void) // 1637 Answer
                                    403 ;	-----------------------------------------
                                    404 ;	 function I2Cask
                                    405 ;	-----------------------------------------
      00007E                        406 _I2Cask:
                                    407 ;	main_2.c:33: clk = 0;
                                    408 ;	assignBit
      00007E C2 A2            [12]  409 	clr	_P2_2
                                    410 ;	main_2.c:34: delay_us (5); // After the falling edge of the eighth clock delay 5us, ACK signals the beginning of judgment
      000080 90 00 05         [24]  411 	mov	dptr,#0x0005
      000083 12 08 54         [24]  412 	lcall	_delay_us
                                    413 ;	main_2.c:35: while (dio);
      000086                        414 00101$:
      000086 20 A3 FD         [24]  415 	jb	_P2_3,00101$
                                    416 ;	main_2.c:36: clk = 1;
                                    417 ;	assignBit
      000089 D2 A2            [12]  418 	setb	_P2_2
                                    419 ;	main_2.c:37: delay_us (2);
      00008B 90 00 02         [24]  420 	mov	dptr,#0x0002
      00008E 12 08 54         [24]  421 	lcall	_delay_us
                                    422 ;	main_2.c:38: clk = 0;
                                    423 ;	assignBit
      000091 C2 A2            [12]  424 	clr	_P2_2
                                    425 ;	main_2.c:39: }
      000093 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'I2CStop'
                                    429 ;------------------------------------------------------------
                                    430 ;	main_2.c:41: void I2CStop (void) // 1637 Stop
                                    431 ;	-----------------------------------------
                                    432 ;	 function I2CStop
                                    433 ;	-----------------------------------------
      000094                        434 _I2CStop:
                                    435 ;	main_2.c:43: clk = 0;
                                    436 ;	assignBit
      000094 C2 A2            [12]  437 	clr	_P2_2
                                    438 ;	main_2.c:44: delay_us (2);
      000096 90 00 02         [24]  439 	mov	dptr,#0x0002
      000099 12 08 54         [24]  440 	lcall	_delay_us
                                    441 ;	main_2.c:45: dio = 0;
                                    442 ;	assignBit
      00009C C2 A3            [12]  443 	clr	_P2_3
                                    444 ;	main_2.c:46: delay_us (2);
      00009E 90 00 02         [24]  445 	mov	dptr,#0x0002
      0000A1 12 08 54         [24]  446 	lcall	_delay_us
                                    447 ;	main_2.c:47: clk = 1;
                                    448 ;	assignBit
      0000A4 D2 A2            [12]  449 	setb	_P2_2
                                    450 ;	main_2.c:48: delay_us (2);
      0000A6 90 00 02         [24]  451 	mov	dptr,#0x0002
      0000A9 12 08 54         [24]  452 	lcall	_delay_us
                                    453 ;	main_2.c:49: dio = 1;
                                    454 ;	assignBit
      0000AC D2 A3            [12]  455 	setb	_P2_3
                                    456 ;	main_2.c:50: }
      0000AE 22               [24]  457 	ret
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'I2CWrByte'
                                    460 ;------------------------------------------------------------
                                    461 ;oneByte                   Allocated to registers r7 
                                    462 ;i                         Allocated to registers r6 
                                    463 ;------------------------------------------------------------
                                    464 ;	main_2.c:52: void I2CWrByte (unsigned char oneByte) // write a byte
                                    465 ;	-----------------------------------------
                                    466 ;	 function I2CWrByte
                                    467 ;	-----------------------------------------
      0000AF                        468 _I2CWrByte:
      0000AF AF 82            [24]  469 	mov	r7,dpl
                                    470 ;	main_2.c:55: for (i = 0; i <8; i ++)
      0000B1 7E 00            [12]  471 	mov	r6,#0x00
      0000B3                        472 00105$:
                                    473 ;	main_2.c:57: clk = 0;
                                    474 ;	assignBit
      0000B3 C2 A2            [12]  475 	clr	_P2_2
                                    476 ;	main_2.c:58: if (oneByte & 0x01) // low front
      0000B5 EF               [12]  477 	mov	a,r7
      0000B6 30 E0 04         [24]  478 	jnb	acc.0,00102$
                                    479 ;	main_2.c:59: {dio = 1;}
                                    480 ;	assignBit
      0000B9 D2 A3            [12]  481 	setb	_P2_3
      0000BB 80 02            [24]  482 	sjmp	00103$
      0000BD                        483 00102$:
                                    484 ;	main_2.c:60: else {dio = 0;}
                                    485 ;	assignBit
      0000BD C2 A3            [12]  486 	clr	_P2_3
      0000BF                        487 00103$:
                                    488 ;	main_2.c:61: delay_us (3);
      0000BF 90 00 03         [24]  489 	mov	dptr,#0x0003
      0000C2 C0 07            [24]  490 	push	ar7
      0000C4 C0 06            [24]  491 	push	ar6
      0000C6 12 08 54         [24]  492 	lcall	_delay_us
      0000C9 D0 06            [24]  493 	pop	ar6
      0000CB D0 07            [24]  494 	pop	ar7
                                    495 ;	main_2.c:62: oneByte = oneByte >> 1;
      0000CD EF               [12]  496 	mov	a,r7
      0000CE C3               [12]  497 	clr	c
      0000CF 13               [12]  498 	rrc	a
      0000D0 FF               [12]  499 	mov	r7,a
                                    500 ;	main_2.c:63: clk = 1;
                                    501 ;	assignBit
      0000D1 D2 A2            [12]  502 	setb	_P2_2
                                    503 ;	main_2.c:64: delay_us (3);
      0000D3 90 00 03         [24]  504 	mov	dptr,#0x0003
      0000D6 C0 07            [24]  505 	push	ar7
      0000D8 C0 06            [24]  506 	push	ar6
      0000DA 12 08 54         [24]  507 	lcall	_delay_us
      0000DD D0 06            [24]  508 	pop	ar6
      0000DF D0 07            [24]  509 	pop	ar7
                                    510 ;	main_2.c:55: for (i = 0; i <8; i ++)
      0000E1 0E               [12]  511 	inc	r6
      0000E2 BE 08 00         [24]  512 	cjne	r6,#0x08,00119$
      0000E5                        513 00119$:
      0000E5 40 CC            [24]  514 	jc	00105$
                                    515 ;	main_2.c:66: }
      0000E7 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'SmgDisplay'
                                    519 ;------------------------------------------------------------
                                    520 ;i                         Allocated to registers r7 
                                    521 ;------------------------------------------------------------
                                    522 ;	main_2.c:96: void SmgDisplay(void) // Write display register
                                    523 ;	-----------------------------------------
                                    524 ;	 function SmgDisplay
                                    525 ;	-----------------------------------------
      0000E8                        526 _SmgDisplay:
                                    527 ;	main_2.c:99: I2CStart();
      0000E8 12 00 71         [24]  528 	lcall	_I2CStart
                                    529 ;	main_2.c:100: I2CWrByte(0x40); //40H address is automatically incremented by 1 mode, 44H fixed address mode
      0000EB 75 82 40         [24]  530 	mov	dpl,#0x40
      0000EE 12 00 AF         [24]  531 	lcall	_I2CWrByte
                                    532 ;	main_2.c:101: I2Cask();
      0000F1 12 00 7E         [24]  533 	lcall	_I2Cask
                                    534 ;	main_2.c:102: I2CStop();
      0000F4 12 00 94         [24]  535 	lcall	_I2CStop
                                    536 ;	main_2.c:103: I2CStart();
      0000F7 12 00 71         [24]  537 	lcall	_I2CStart
                                    538 ;	main_2.c:104: I2CWrByte(0xc0); // Set the first address
      0000FA 75 82 C0         [24]  539 	mov	dpl,#0xc0
      0000FD 12 00 AF         [24]  540 	lcall	_I2CWrByte
                                    541 ;	main_2.c:105: I2Cask();
      000100 12 00 7E         [24]  542 	lcall	_I2Cask
                                    543 ;	main_2.c:106: for(i=0;i<6;i++) // Addresses from Canada, do not always write address
      000103 7F 00            [12]  544 	mov	r7,#0x00
      000105                        545 00102$:
                                    546 ;	main_2.c:108: I2CWrByte(0xff); // Send data
      000105 75 82 FF         [24]  547 	mov	dpl,#0xff
      000108 C0 07            [24]  548 	push	ar7
      00010A 12 00 AF         [24]  549 	lcall	_I2CWrByte
                                    550 ;	main_2.c:109: I2Cask();
      00010D 12 00 7E         [24]  551 	lcall	_I2Cask
      000110 D0 07            [24]  552 	pop	ar7
                                    553 ;	main_2.c:106: for(i=0;i<6;i++) // Addresses from Canada, do not always write address
      000112 0F               [12]  554 	inc	r7
      000113 BF 06 00         [24]  555 	cjne	r7,#0x06,00115$
      000116                        556 00115$:
      000116 40 ED            [24]  557 	jc	00102$
                                    558 ;	main_2.c:111: I2CStop();
      000118 12 00 94         [24]  559 	lcall	_I2CStop
                                    560 ;	main_2.c:112: I2CStart();
      00011B 12 00 71         [24]  561 	lcall	_I2CStart
                                    562 ;	main_2.c:113: I2CWrByte(0x8f); // Open display, maximum brightness
      00011E 75 82 8F         [24]  563 	mov	dpl,#0x8f
      000121 12 00 AF         [24]  564 	lcall	_I2CWrByte
                                    565 ;	main_2.c:114: I2Cask();
      000124 12 00 7E         [24]  566 	lcall	_I2Cask
                                    567 ;	main_2.c:115: I2CStop();
                                    568 ;	main_2.c:116: }
      000127 02 00 94         [24]  569 	ljmp	_I2CStop
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'init'
                                    572 ;------------------------------------------------------------
                                    573 ;	main_2.c:118: void init(void) // Initialization routine
                                    574 ;	-----------------------------------------
                                    575 ;	 function init
                                    576 ;	-----------------------------------------
      00012A                        577 _init:
                                    578 ;	main_2.c:120: __nop();// Initialization slightly
      00012A 00               [12]  579 	nop	
                                    580 ;	main_2.c:121: }
      00012B 22               [24]  581 	ret
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'main'
                                    584 ;------------------------------------------------------------
                                    585 ;rtc                       Allocated with name '_main_rtc_65536_41'
                                    586 ;temp_dig1                 Allocated to registers r4 
                                    587 ;temp_dig2                 Allocated to registers r6 
                                    588 ;temp                      Allocated to registers r7 
                                    589 ;------------------------------------------------------------
                                    590 ;	main_2.c:125: void main() 
                                    591 ;	-----------------------------------------
                                    592 ;	 function main
                                    593 ;	-----------------------------------------
      00012C                        594 _main:
                                    595 ;	main_2.c:132: lcd_Init();
      00012C 12 01 FE         [24]  596 	lcall	_lcd_Init
                                    597 ;	main_2.c:135: lcd_DisplayString("Hora: ");
      00012F 90 09 84         [24]  598 	mov	dptr,#___str_0
      000132 75 F0 80         [24]  599 	mov	b,#0x80
      000135 12 03 DF         [24]  600 	lcall	_lcd_DisplayString
                                    601 ;	main_2.c:138: lcd_GoToLineTwo();
      000138 12 03 B6         [24]  602 	lcall	_lcd_GoToLineTwo
                                    603 ;	main_2.c:139: lcd_DisplayString("Data: ");
      00013B 90 09 8B         [24]  604 	mov	dptr,#___str_1
      00013E 75 F0 80         [24]  605 	mov	b,#0x80
      000141 12 03 DF         [24]  606 	lcall	_lcd_DisplayString
                                    607 ;	main_2.c:141: init(); // Initialization TM1637
      000144 12 01 2A         [24]  608 	lcall	_init
                                    609 ;	main_2.c:142: SmgDisplay(); // Write register and open display
      000147 12 00 E8         [24]  610 	lcall	_SmgDisplay
                                    611 ;	main_2.c:145: while(1)
      00014A                        612 00102$:
                                    613 ;	main_2.c:148: iic_ds1307_time_read(0xD0,&rtc);
      00014A 75 25 08         [24]  614 	mov	_iic_ds1307_time_read_PARM_2,#_main_rtc_65536_41
      00014D 75 26 00         [24]  615 	mov	(_iic_ds1307_time_read_PARM_2 + 1),#0x00
      000150 75 27 40         [24]  616 	mov	(_iic_ds1307_time_read_PARM_2 + 2),#0x40
      000153 75 82 D0         [24]  617 	mov	dpl,#0xd0
      000156 12 05 C3         [24]  618 	lcall	_iic_ds1307_time_read
                                    619 ;	main_2.c:149: temp = iic_ds1307_temp_read(0xD0);
      000159 75 82 D0         [24]  620 	mov	dpl,#0xd0
      00015C 12 07 69         [24]  621 	lcall	_iic_ds1307_temp_read
      00015F AF 82            [24]  622 	mov	r7,dpl
                                    623 ;	main_2.c:150: temp_dig1 = temp/10;
      000161 7E 00            [12]  624 	mov	r6,#0x00
      000163 75 19 0A         [24]  625 	mov	__divsint_PARM_2,#0x0a
                                    626 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000166 8E 1A            [24]  627 	mov	(__divsint_PARM_2 + 1),r6
      000168 8F 82            [24]  628 	mov	dpl,r7
      00016A 8E 83            [24]  629 	mov	dph,r6
      00016C C0 07            [24]  630 	push	ar7
      00016E C0 06            [24]  631 	push	ar6
      000170 12 09 48         [24]  632 	lcall	__divsint
      000173 AC 82            [24]  633 	mov	r4,dpl
      000175 D0 06            [24]  634 	pop	ar6
      000177 D0 07            [24]  635 	pop	ar7
                                    636 ;	main_2.c:151: temp_dig2 = temp%10;        
      000179 75 19 0A         [24]  637 	mov	__modsint_PARM_2,#0x0a
      00017C 75 1A 00         [24]  638 	mov	(__modsint_PARM_2 + 1),#0x00
      00017F 8F 82            [24]  639 	mov	dpl,r7
      000181 8E 83            [24]  640 	mov	dph,r6
      000183 C0 04            [24]  641 	push	ar4
      000185 12 09 12         [24]  642 	lcall	__modsint
      000188 AE 82            [24]  643 	mov	r6,dpl
      00018A D0 04            [24]  644 	pop	ar4
                                    645 ;	main_2.c:155: lcd_GoToXY(0,5); 		 
      00018C 75 14 05         [24]  646 	mov	_lcd_GoToXY_PARM_2,#0x05
      00018F 75 82 00         [24]  647 	mov	dpl,#0x00
      000192 C0 06            [24]  648 	push	ar6
      000194 C0 04            [24]  649 	push	ar4
      000196 12 03 BC         [24]  650 	lcall	_lcd_GoToXY
      000199 D0 04            [24]  651 	pop	ar4
      00019B D0 06            [24]  652 	pop	ar6
                                    653 ;	main_2.c:156: lcd_DisplayRtcTime(rtc.hour,rtc.min,rtc.sec);
      00019D 85 0A 82         [24]  654 	mov	dpl,(_main_rtc_65536_41 + 0x0002)
      0001A0 85 09 15         [24]  655 	mov	_lcd_DisplayRtcTime_PARM_2,(_main_rtc_65536_41 + 0x0001)
      0001A3 85 08 16         [24]  656 	mov	_lcd_DisplayRtcTime_PARM_3,_main_rtc_65536_41
      0001A6 C0 06            [24]  657 	push	ar6
      0001A8 C0 04            [24]  658 	push	ar4
      0001AA 12 04 0A         [24]  659 	lcall	_lcd_DisplayRtcTime
                                    660 ;	main_2.c:157: lcd_DisplayString("  T");
      0001AD 90 09 92         [24]  661 	mov	dptr,#___str_2
      0001B0 75 F0 80         [24]  662 	mov	b,#0x80
      0001B3 12 03 DF         [24]  663 	lcall	_lcd_DisplayString
                                    664 ;	main_2.c:158: lcd_GoToXY(1,5); 
      0001B6 75 14 05         [24]  665 	mov	_lcd_GoToXY_PARM_2,#0x05
      0001B9 75 82 01         [24]  666 	mov	dpl,#0x01
      0001BC 12 03 BC         [24]  667 	lcall	_lcd_GoToXY
      0001BF D0 04            [24]  668 	pop	ar4
      0001C1 D0 06            [24]  669 	pop	ar6
                                    670 ;	main_2.c:159: lcd_DisplayRtcDate(rtc.date,rtc.month,rtc.year);
      0001C3 85 0C 82         [24]  671 	mov	dpl,(_main_rtc_65536_41 + 0x0004)
      0001C6 85 0D 17         [24]  672 	mov	_lcd_DisplayRtcDate_PARM_2,(_main_rtc_65536_41 + 0x0005)
      0001C9 85 0E 18         [24]  673 	mov	_lcd_DisplayRtcDate_PARM_3,(_main_rtc_65536_41 + 0x0006)
      0001CC C0 06            [24]  674 	push	ar6
      0001CE C0 04            [24]  675 	push	ar4
      0001D0 12 04 61         [24]  676 	lcall	_lcd_DisplayRtcDate
                                    677 ;	main_2.c:160: lcd_DisplayString(" ");
      0001D3 90 09 96         [24]  678 	mov	dptr,#___str_3
      0001D6 75 F0 80         [24]  679 	mov	b,#0x80
      0001D9 12 03 DF         [24]  680 	lcall	_lcd_DisplayString
      0001DC D0 04            [24]  681 	pop	ar4
                                    682 ;	main_2.c:161: lcd_Writedata(temp_dig1 + 0x30);
      0001DE 74 30            [12]  683 	mov	a,#0x30
      0001E0 2C               [12]  684 	add	a,r4
      0001E1 F5 82            [12]  685 	mov	dpl,a
      0001E3 12 02 D8         [24]  686 	lcall	_lcd_Writedata
      0001E6 D0 06            [24]  687 	pop	ar6
                                    688 ;	main_2.c:162: lcd_Writedata((temp_dig2) + 0x30);              
      0001E8 74 30            [12]  689 	mov	a,#0x30
      0001EA 2E               [12]  690 	add	a,r6
      0001EB F5 82            [12]  691 	mov	dpl,a
      0001ED 12 02 D8         [24]  692 	lcall	_lcd_Writedata
                                    693 ;	main_2.c:164: }
      0001F0 02 01 4A         [24]  694 	ljmp	00102$
                                    695 	.area CSEG    (CODE)
                                    696 	.area CONST   (CODE)
      000984                        697 ___str_0:
      000984 48 6F 72 61 3A 20      698 	.ascii "Hora: "
      00098A 00                     699 	.db 0x00
      00098B                        700 ___str_1:
      00098B 44 61 74 61 3A 20      701 	.ascii "Data: "
      000991 00                     702 	.db 0x00
      000992                        703 ___str_2:
      000992 20 20 54               704 	.ascii "  T"
      000995 00                     705 	.db 0x00
      000996                        706 ___str_3:
      000996 20                     707 	.ascii " "
      000997 00                     708 	.db 0x00
                                    709 	.area XINIT   (CODE)
                                    710 	.area CABS    (ABS,CODE)

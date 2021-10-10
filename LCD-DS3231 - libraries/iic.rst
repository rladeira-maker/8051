                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module iic
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF2
                                     12 	.globl _EXF2
                                     13 	.globl _RCLK
                                     14 	.globl _TCLK
                                     15 	.globl _EXEN2
                                     16 	.globl _TR2
                                     17 	.globl _C_T2
                                     18 	.globl _CP_RL2
                                     19 	.globl _T2CON_7
                                     20 	.globl _T2CON_6
                                     21 	.globl _T2CON_5
                                     22 	.globl _T2CON_4
                                     23 	.globl _T2CON_3
                                     24 	.globl _T2CON_2
                                     25 	.globl _T2CON_1
                                     26 	.globl _T2CON_0
                                     27 	.globl _PT2
                                     28 	.globl _ET2
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _PS
                                     38 	.globl _PT1
                                     39 	.globl _PX1
                                     40 	.globl _PT0
                                     41 	.globl _PX0
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _ES
                                     60 	.globl _ET1
                                     61 	.globl _EX1
                                     62 	.globl _ET0
                                     63 	.globl _EX0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _SM0
                                     73 	.globl _SM1
                                     74 	.globl _SM2
                                     75 	.globl _REN
                                     76 	.globl _TB8
                                     77 	.globl _RB8
                                     78 	.globl _TI
                                     79 	.globl _RI
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _TF1
                                     89 	.globl _TR1
                                     90 	.globl _TF0
                                     91 	.globl _TR0
                                     92 	.globl _IE1
                                     93 	.globl _IT1
                                     94 	.globl _IE0
                                     95 	.globl _IT0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _TH2
                                    105 	.globl _TL2
                                    106 	.globl _RCAP2H
                                    107 	.globl _RCAP2L
                                    108 	.globl _T2CON
                                    109 	.globl _B
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _IP
                                    113 	.globl _P3
                                    114 	.globl _IE
                                    115 	.globl _P2
                                    116 	.globl _SBUF
                                    117 	.globl _SCON
                                    118 	.globl _P1
                                    119 	.globl _TH1
                                    120 	.globl _TH0
                                    121 	.globl _TL1
                                    122 	.globl _TL0
                                    123 	.globl _TMOD
                                    124 	.globl _TCON
                                    125 	.globl _PCON
                                    126 	.globl _DPH
                                    127 	.globl _DPL
                                    128 	.globl _SP
                                    129 	.globl _P0
                                    130 	.globl _iic_single_byte_write_PARM_3
                                    131 	.globl _iic_single_byte_write_PARM_2
                                    132 	.globl _iic_ds1307_time_read_PARM_2
                                    133 	.globl _iic_single_byte_read_PARM_3
                                    134 	.globl _iic_single_byte_read_PARM_2
                                    135 	.globl _iic_start
                                    136 	.globl _iic_stop
                                    137 	.globl _iic_ack
                                    138 	.globl _iic_nack
                                    139 	.globl _iic_read_ack
                                    140 	.globl _iic_send_byte
                                    141 	.globl _iic_read_byte
                                    142 	.globl _iic_single_byte_read
                                    143 	.globl _iic_ds1307_time_read
                                    144 	.globl _iic_ds1307_temp_read
                                    145 	.globl _iic_single_byte_write
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                           0000C8   172 _T2CON	=	0x00c8
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                                    177 ;--------------------------------------------------------
                                    178 ; special function bits
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _P0_0	=	0x0080
                           000081   183 _P0_1	=	0x0081
                           000082   184 _P0_2	=	0x0082
                           000083   185 _P0_3	=	0x0083
                           000084   186 _P0_4	=	0x0084
                           000085   187 _P0_5	=	0x0085
                           000086   188 _P0_6	=	0x0086
                           000087   189 _P0_7	=	0x0087
                           000088   190 _IT0	=	0x0088
                           000089   191 _IE0	=	0x0089
                           00008A   192 _IT1	=	0x008a
                           00008B   193 _IE1	=	0x008b
                           00008C   194 _TR0	=	0x008c
                           00008D   195 _TF0	=	0x008d
                           00008E   196 _TR1	=	0x008e
                           00008F   197 _TF1	=	0x008f
                           000090   198 _P1_0	=	0x0090
                           000091   199 _P1_1	=	0x0091
                           000092   200 _P1_2	=	0x0092
                           000093   201 _P1_3	=	0x0093
                           000094   202 _P1_4	=	0x0094
                           000095   203 _P1_5	=	0x0095
                           000096   204 _P1_6	=	0x0096
                           000097   205 _P1_7	=	0x0097
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AF   227 _EA	=	0x00af
                           0000B0   228 _P3_0	=	0x00b0
                           0000B1   229 _P3_1	=	0x00b1
                           0000B2   230 _P3_2	=	0x00b2
                           0000B3   231 _P3_3	=	0x00b3
                           0000B4   232 _P3_4	=	0x00b4
                           0000B5   233 _P3_5	=	0x00b5
                           0000B6   234 _P3_6	=	0x00b6
                           0000B7   235 _P3_7	=	0x00b7
                           0000B0   236 _RXD	=	0x00b0
                           0000B1   237 _TXD	=	0x00b1
                           0000B2   238 _INT0	=	0x00b2
                           0000B3   239 _INT1	=	0x00b3
                           0000B4   240 _T0	=	0x00b4
                           0000B5   241 _T1	=	0x00b5
                           0000B6   242 _WR	=	0x00b6
                           0000B7   243 _RD	=	0x00b7
                           0000B8   244 _PX0	=	0x00b8
                           0000B9   245 _PT0	=	0x00b9
                           0000BA   246 _PX1	=	0x00ba
                           0000BB   247 _PT1	=	0x00bb
                           0000BC   248 _PS	=	0x00bc
                           0000D0   249 _P	=	0x00d0
                           0000D1   250 _F1	=	0x00d1
                           0000D2   251 _OV	=	0x00d2
                           0000D3   252 _RS0	=	0x00d3
                           0000D4   253 _RS1	=	0x00d4
                           0000D5   254 _F0	=	0x00d5
                           0000D6   255 _AC	=	0x00d6
                           0000D7   256 _CY	=	0x00d7
                           0000AD   257 _ET2	=	0x00ad
                           0000BD   258 _PT2	=	0x00bd
                           0000C8   259 _T2CON_0	=	0x00c8
                           0000C9   260 _T2CON_1	=	0x00c9
                           0000CA   261 _T2CON_2	=	0x00ca
                           0000CB   262 _T2CON_3	=	0x00cb
                           0000CC   263 _T2CON_4	=	0x00cc
                           0000CD   264 _T2CON_5	=	0x00cd
                           0000CE   265 _T2CON_6	=	0x00ce
                           0000CF   266 _T2CON_7	=	0x00cf
                           0000C8   267 _CP_RL2	=	0x00c8
                           0000C9   268 _C_T2	=	0x00c9
                           0000CA   269 _TR2	=	0x00ca
                           0000CB   270 _EXEN2	=	0x00cb
                           0000CC   271 _TCLK	=	0x00cc
                           0000CD   272 _RCLK	=	0x00cd
                           0000CE   273 _EXF2	=	0x00ce
                           0000CF   274 _TF2	=	0x00cf
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area DSEG    (DATA)
      000021                        284 _iic_single_byte_read_PARM_2:
      000021                        285 	.ds 1
      000022                        286 _iic_single_byte_read_PARM_3:
      000022                        287 	.ds 3
      000025                        288 _iic_ds1307_time_read_PARM_2:
      000025                        289 	.ds 3
      000028                        290 _iic_single_byte_write_PARM_2:
      000028                        291 	.ds 1
      000029                        292 _iic_single_byte_write_PARM_3:
      000029                        293 	.ds 1
                                    294 ;--------------------------------------------------------
                                    295 ; overlayable items in internal ram 
                                    296 ;--------------------------------------------------------
                                    297 	.area	OSEG    (OVR,DATA)
                                    298 	.area	OSEG    (OVR,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; indirectly addressable internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area ISEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area IABS    (ABS,DATA)
                                    307 	.area IABS    (ABS,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; bit data
                                    310 ;--------------------------------------------------------
                                    311 	.area BSEG    (BIT)
                                    312 ;--------------------------------------------------------
                                    313 ; paged external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area PSEG    (PAG,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XSEG    (XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XABS    (ABS,XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; external initialized ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XISEG   (XDATA)
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT0 (CODE)
                                    330 	.area GSINIT1 (CODE)
                                    331 	.area GSINIT2 (CODE)
                                    332 	.area GSINIT3 (CODE)
                                    333 	.area GSINIT4 (CODE)
                                    334 	.area GSINIT5 (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.area GSFINAL (CODE)
                                    337 	.area CSEG    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; global & static initialisations
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; Home
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area HOME    (CODE)
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'iic_start'
                                    356 ;------------------------------------------------------------
                                    357 ;	iic.c:8: void iic_start(void)
                                    358 ;	-----------------------------------------
                                    359 ;	 function iic_start
                                    360 ;	-----------------------------------------
      0004B8                        361 _iic_start:
                           000007   362 	ar7 = 0x07
                           000006   363 	ar6 = 0x06
                           000005   364 	ar5 = 0x05
                           000004   365 	ar4 = 0x04
                           000003   366 	ar3 = 0x03
                           000002   367 	ar2 = 0x02
                           000001   368 	ar1 = 0x01
                           000000   369 	ar0 = 0x00
                                    370 ;	iic.c:10: IIC_SCL = 0;
                                    371 ;	assignBit
      0004B8 C2 A0            [12]  372 	clr	_P2_0
                                    373 ;	iic.c:11: __nop(); __nop();
      0004BA 00               [12]  374 	nop	
      0004BB 00               [12]  375 	nop	
                                    376 ;	iic.c:12: IIC_SDA = 1;
                                    377 ;	assignBit
      0004BC D2 A1            [12]  378 	setb	_P2_1
                                    379 ;	iic.c:13: IIC_SCL = 1;
                                    380 ;	assignBit
      0004BE D2 A0            [12]  381 	setb	_P2_0
                                    382 ;	iic.c:14: __nop(); __nop();
      0004C0 00               [12]  383 	nop	
      0004C1 00               [12]  384 	nop	
                                    385 ;	iic.c:15: IIC_SDA = 0;
                                    386 ;	assignBit
      0004C2 C2 A1            [12]  387 	clr	_P2_1
                                    388 ;	iic.c:16: }
      0004C4 22               [24]  389 	ret
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'iic_stop'
                                    392 ;------------------------------------------------------------
                                    393 ;	iic.c:21: void iic_stop(void)
                                    394 ;	-----------------------------------------
                                    395 ;	 function iic_stop
                                    396 ;	-----------------------------------------
      0004C5                        397 _iic_stop:
                                    398 ;	iic.c:23: IIC_SCL = 0;
                                    399 ;	assignBit
      0004C5 C2 A0            [12]  400 	clr	_P2_0
                                    401 ;	iic.c:24: __nop(); __nop();
      0004C7 00               [12]  402 	nop	
      0004C8 00               [12]  403 	nop	
                                    404 ;	iic.c:25: IIC_SDA = 0;
                                    405 ;	assignBit
      0004C9 C2 A1            [12]  406 	clr	_P2_1
                                    407 ;	iic.c:26: IIC_SCL = 1;
                                    408 ;	assignBit
      0004CB D2 A0            [12]  409 	setb	_P2_0
                                    410 ;	iic.c:27: __nop(); __nop();
      0004CD 00               [12]  411 	nop	
      0004CE 00               [12]  412 	nop	
                                    413 ;	iic.c:28: IIC_SDA = 1;
                                    414 ;	assignBit
      0004CF D2 A1            [12]  415 	setb	_P2_1
                                    416 ;	iic.c:29: }
      0004D1 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'iic_ack'
                                    420 ;------------------------------------------------------------
                                    421 ;	iic.c:31: void iic_ack(void)
                                    422 ;	-----------------------------------------
                                    423 ;	 function iic_ack
                                    424 ;	-----------------------------------------
      0004D2                        425 _iic_ack:
                                    426 ;	iic.c:33: IIC_SCL = 0;
                                    427 ;	assignBit
      0004D2 C2 A0            [12]  428 	clr	_P2_0
                                    429 ;	iic.c:34: IIC_SDA = 0;
                                    430 ;	assignBit
      0004D4 C2 A1            [12]  431 	clr	_P2_1
                                    432 ;	iic.c:35: __nop(); __nop();
      0004D6 00               [12]  433 	nop	
      0004D7 00               [12]  434 	nop	
                                    435 ;	iic.c:36: IIC_SCL = 1;
                                    436 ;	assignBit
      0004D8 D2 A0            [12]  437 	setb	_P2_0
                                    438 ;	iic.c:37: }
      0004DA 22               [24]  439 	ret
                                    440 ;------------------------------------------------------------
                                    441 ;Allocation info for local variables in function 'iic_nack'
                                    442 ;------------------------------------------------------------
                                    443 ;	iic.c:39: void iic_nack(void) {
                                    444 ;	-----------------------------------------
                                    445 ;	 function iic_nack
                                    446 ;	-----------------------------------------
      0004DB                        447 _iic_nack:
                                    448 ;	iic.c:40: IIC_SCL = 0;
                                    449 ;	assignBit
      0004DB C2 A0            [12]  450 	clr	_P2_0
                                    451 ;	iic.c:41: __nop(); __nop();
      0004DD 00               [12]  452 	nop	
      0004DE 00               [12]  453 	nop	
                                    454 ;	iic.c:42: IIC_SDA = 1;
                                    455 ;	assignBit
      0004DF D2 A1            [12]  456 	setb	_P2_1
                                    457 ;	iic.c:43: __nop(); __nop();
      0004E1 00               [12]  458 	nop	
      0004E2 00               [12]  459 	nop	
                                    460 ;	iic.c:44: IIC_SCL = 1;
                                    461 ;	assignBit
      0004E3 D2 A0            [12]  462 	setb	_P2_0
                                    463 ;	iic.c:45: }
      0004E5 22               [24]  464 	ret
                                    465 ;------------------------------------------------------------
                                    466 ;Allocation info for local variables in function 'iic_read_ack'
                                    467 ;------------------------------------------------------------
                                    468 ;	iic.c:47: uint8_t iic_read_ack(void)
                                    469 ;	-----------------------------------------
                                    470 ;	 function iic_read_ack
                                    471 ;	-----------------------------------------
      0004E6                        472 _iic_read_ack:
                                    473 ;	iic.c:49: IIC_SCL = 0;
                                    474 ;	assignBit
      0004E6 C2 A0            [12]  475 	clr	_P2_0
                                    476 ;	iic.c:50: IIC_SDA = 1;
                                    477 ;	assignBit
      0004E8 D2 A1            [12]  478 	setb	_P2_1
                                    479 ;	iic.c:51: __nop(); __nop();
      0004EA 00               [12]  480 	nop	
      0004EB 00               [12]  481 	nop	
                                    482 ;	iic.c:52: IIC_SCL = 1;
                                    483 ;	assignBit
      0004EC D2 A0            [12]  484 	setb	_P2_0
                                    485 ;	iic.c:53: __nop(); __nop();
      0004EE 00               [12]  486 	nop	
      0004EF 00               [12]  487 	nop	
                                    488 ;	iic.c:54: return IIC_SDA;
      0004F0 A2 A1            [12]  489 	mov	c,_P2_1
      0004F2 E4               [12]  490 	clr	a
      0004F3 33               [12]  491 	rlc	a
      0004F4 F5 82            [12]  492 	mov	dpl,a
                                    493 ;	iic.c:55: }
      0004F6 22               [24]  494 	ret
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'iic_send_byte'
                                    497 ;------------------------------------------------------------
                                    498 ;data                      Allocated to registers r7 
                                    499 ;i                         Allocated to registers r6 
                                    500 ;------------------------------------------------------------
                                    501 ;	iic.c:57: void iic_send_byte(uint8_t data)
                                    502 ;	-----------------------------------------
                                    503 ;	 function iic_send_byte
                                    504 ;	-----------------------------------------
      0004F7                        505 _iic_send_byte:
      0004F7 AF 82            [24]  506 	mov	r7,dpl
                                    507 ;	iic.c:60: for(i=0; i<8; i++)
      0004F9 7E 00            [12]  508 	mov	r6,#0x00
      0004FB                        509 00102$:
                                    510 ;	iic.c:62: IIC_SCL = 0;
                                    511 ;	assignBit
      0004FB C2 A0            [12]  512 	clr	_P2_0
                                    513 ;	iic.c:63: __nop(); __nop();
      0004FD 00               [12]  514 	nop	
      0004FE 00               [12]  515 	nop	
                                    516 ;	iic.c:64: IIC_SDA = (data << i) & 0x80;
      0004FF 8F 04            [24]  517 	mov	ar4,r7
      000501 7D 00            [12]  518 	mov	r5,#0x00
      000503 8E F0            [24]  519 	mov	b,r6
      000505 05 F0            [12]  520 	inc	b
      000507 80 06            [24]  521 	sjmp	00112$
      000509                        522 00111$:
      000509 EC               [12]  523 	mov	a,r4
      00050A 2C               [12]  524 	add	a,r4
      00050B FC               [12]  525 	mov	r4,a
      00050C ED               [12]  526 	mov	a,r5
      00050D 33               [12]  527 	rlc	a
      00050E FD               [12]  528 	mov	r5,a
      00050F                        529 00112$:
      00050F D5 F0 F7         [24]  530 	djnz	b,00111$
      000512 EC               [12]  531 	mov	a,r4
      000513 23               [12]  532 	rl	a
      000514 54 01            [12]  533 	anl	a,#0x01
                                    534 ;	assignBit
      000516 FC               [12]  535 	mov	r4,a
      000517 24 FF            [12]  536 	add	a,#0xff
      000519 92 A1            [24]  537 	mov	_P2_1,c
                                    538 ;	iic.c:65: __nop(); __nop();
      00051B 00               [12]  539 	nop	
      00051C 00               [12]  540 	nop	
                                    541 ;	iic.c:66: IIC_SCL = 1;
                                    542 ;	assignBit
      00051D D2 A0            [12]  543 	setb	_P2_0
                                    544 ;	iic.c:60: for(i=0; i<8; i++)
      00051F 0E               [12]  545 	inc	r6
      000520 BE 08 00         [24]  546 	cjne	r6,#0x08,00113$
      000523                        547 00113$:
      000523 40 D6            [24]  548 	jc	00102$
                                    549 ;	iic.c:68: }
      000525 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'iic_read_byte'
                                    553 ;------------------------------------------------------------
                                    554 ;i                         Allocated to registers r6 
                                    555 ;data                      Allocated to registers r5 
                                    556 ;------------------------------------------------------------
                                    557 ;	iic.c:70: uint8_t iic_read_byte(void)
                                    558 ;	-----------------------------------------
                                    559 ;	 function iic_read_byte
                                    560 ;	-----------------------------------------
      000526                        561 _iic_read_byte:
                                    562 ;	iic.c:73: uint8_t data = 0x00;
      000526 7F 00            [12]  563 	mov	r7,#0x00
                                    564 ;	iic.c:74: for(i=0; i<8; i++)
      000528 7E 00            [12]  565 	mov	r6,#0x00
      00052A                        566 00102$:
                                    567 ;	iic.c:76: IIC_SCL = 0;
                                    568 ;	assignBit
      00052A C2 A0            [12]  569 	clr	_P2_0
                                    570 ;	iic.c:78: IIC_SDA = 1;
                                    571 ;	assignBit
      00052C D2 A1            [12]  572 	setb	_P2_1
                                    573 ;	iic.c:79: __nop(); __nop();
      00052E 00               [12]  574 	nop	
      00052F 00               [12]  575 	nop	
                                    576 ;	iic.c:80: data <<= 1;
      000530 8F 05            [24]  577 	mov	ar5,r7
      000532 ED               [12]  578 	mov	a,r5
      000533 2D               [12]  579 	add	a,r5
      000534 FD               [12]  580 	mov	r5,a
                                    581 ;	iic.c:81: IIC_SCL = 1;
                                    582 ;	assignBit
      000535 D2 A0            [12]  583 	setb	_P2_0
                                    584 ;	iic.c:82: __nop(); __nop();
      000537 00               [12]  585 	nop	
      000538 00               [12]  586 	nop	
                                    587 ;	iic.c:83: data |= IIC_SDA;
      000539 A2 A1            [12]  588 	mov	c,_P2_1
      00053B E4               [12]  589 	clr	a
      00053C 33               [12]  590 	rlc	a
      00053D FC               [12]  591 	mov	r4,a
      00053E 4D               [12]  592 	orl	a,r5
      00053F FF               [12]  593 	mov	r7,a
                                    594 ;	iic.c:74: for(i=0; i<8; i++)
      000540 0E               [12]  595 	inc	r6
      000541 BE 08 00         [24]  596 	cjne	r6,#0x08,00117$
      000544                        597 00117$:
      000544 40 E4            [24]  598 	jc	00102$
                                    599 ;	iic.c:85: return data;
      000546 8F 82            [24]  600 	mov	dpl,r7
                                    601 ;	iic.c:86: }
      000548 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'iic_single_byte_read'
                                    605 ;------------------------------------------------------------
                                    606 ;registerAddress           Allocated with name '_iic_single_byte_read_PARM_2'
                                    607 ;data                      Allocated with name '_iic_single_byte_read_PARM_3'
                                    608 ;deviceAddress             Allocated to registers r7 
                                    609 ;------------------------------------------------------------
                                    610 ;	iic.c:88: uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data)
                                    611 ;	-----------------------------------------
                                    612 ;	 function iic_single_byte_read
                                    613 ;	-----------------------------------------
      000549                        614 _iic_single_byte_read:
      000549 AF 82            [24]  615 	mov	r7,dpl
                                    616 ;	iic.c:90: iic_start();
      00054B C0 07            [24]  617 	push	ar7
      00054D 12 04 B8         [24]  618 	lcall	_iic_start
      000550 D0 07            [24]  619 	pop	ar7
                                    620 ;	iic.c:91: iic_send_byte(deviceAddress);
      000552 8F 82            [24]  621 	mov	dpl,r7
      000554 C0 07            [24]  622 	push	ar7
      000556 12 04 F7         [24]  623 	lcall	_iic_send_byte
                                    624 ;	iic.c:92: if(iic_read_ack() == IIC_NACK)
      000559 12 04 E6         [24]  625 	lcall	_iic_read_ack
      00055C AE 82            [24]  626 	mov	r6,dpl
      00055E D0 07            [24]  627 	pop	ar7
      000560 BE 01 04         [24]  628 	cjne	r6,#0x01,00102$
                                    629 ;	iic.c:94: return 1;
      000563 75 82 01         [24]  630 	mov	dpl,#0x01
      000566 22               [24]  631 	ret
      000567                        632 00102$:
                                    633 ;	iic.c:96: iic_send_byte(registerAddress);
      000567 85 21 82         [24]  634 	mov	dpl,_iic_single_byte_read_PARM_2
      00056A C0 07            [24]  635 	push	ar7
      00056C 12 04 F7         [24]  636 	lcall	_iic_send_byte
                                    637 ;	iic.c:97: if(iic_read_ack() == IIC_NACK)
      00056F 12 04 E6         [24]  638 	lcall	_iic_read_ack
      000572 AE 82            [24]  639 	mov	r6,dpl
      000574 D0 07            [24]  640 	pop	ar7
      000576 BE 01 04         [24]  641 	cjne	r6,#0x01,00104$
                                    642 ;	iic.c:99: return 2;
      000579 75 82 02         [24]  643 	mov	dpl,#0x02
      00057C 22               [24]  644 	ret
      00057D                        645 00104$:
                                    646 ;	iic.c:101: iic_start();
      00057D C0 07            [24]  647 	push	ar7
      00057F 12 04 B8         [24]  648 	lcall	_iic_start
      000582 D0 07            [24]  649 	pop	ar7
                                    650 ;	iic.c:102: iic_send_byte(deviceAddress | 0x01);
      000584 74 01            [12]  651 	mov	a,#0x01
      000586 4F               [12]  652 	orl	a,r7
      000587 F5 82            [12]  653 	mov	dpl,a
      000589 12 04 F7         [24]  654 	lcall	_iic_send_byte
                                    655 ;	iic.c:103: if(iic_read_ack() == IIC_NACK)
      00058C 12 04 E6         [24]  656 	lcall	_iic_read_ack
      00058F AF 82            [24]  657 	mov	r7,dpl
      000591 BF 01 04         [24]  658 	cjne	r7,#0x01,00106$
                                    659 ;	iic.c:105: return 3;
      000594 75 82 03         [24]  660 	mov	dpl,#0x03
      000597 22               [24]  661 	ret
      000598                        662 00106$:
                                    663 ;	iic.c:107: *data = iic_read_byte();
      000598 AD 22            [24]  664 	mov	r5,_iic_single_byte_read_PARM_3
      00059A AE 23            [24]  665 	mov	r6,(_iic_single_byte_read_PARM_3 + 1)
      00059C AF 24            [24]  666 	mov	r7,(_iic_single_byte_read_PARM_3 + 2)
      00059E C0 07            [24]  667 	push	ar7
      0005A0 C0 06            [24]  668 	push	ar6
      0005A2 C0 05            [24]  669 	push	ar5
      0005A4 12 05 26         [24]  670 	lcall	_iic_read_byte
      0005A7 AC 82            [24]  671 	mov	r4,dpl
      0005A9 D0 05            [24]  672 	pop	ar5
      0005AB D0 06            [24]  673 	pop	ar6
      0005AD D0 07            [24]  674 	pop	ar7
      0005AF 8D 82            [24]  675 	mov	dpl,r5
      0005B1 8E 83            [24]  676 	mov	dph,r6
      0005B3 8F F0            [24]  677 	mov	b,r7
      0005B5 EC               [12]  678 	mov	a,r4
      0005B6 12 08 65         [24]  679 	lcall	__gptrput
                                    680 ;	iic.c:108: iic_nack();
      0005B9 12 04 DB         [24]  681 	lcall	_iic_nack
                                    682 ;	iic.c:109: iic_stop();
      0005BC 12 04 C5         [24]  683 	lcall	_iic_stop
                                    684 ;	iic.c:110: return 0;
      0005BF 75 82 00         [24]  685 	mov	dpl,#0x00
                                    686 ;	iic.c:111: }
      0005C2 22               [24]  687 	ret
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'iic_ds1307_time_read'
                                    690 ;------------------------------------------------------------
                                    691 ;rtc                       Allocated with name '_iic_ds1307_time_read_PARM_2'
                                    692 ;deviceAddress             Allocated to registers r7 
                                    693 ;------------------------------------------------------------
                                    694 ;	iic.c:112: uint8_t iic_ds1307_time_read(uint8_t deviceAddress, rtc_t *rtc)
                                    695 ;	-----------------------------------------
                                    696 ;	 function iic_ds1307_time_read
                                    697 ;	-----------------------------------------
      0005C3                        698 _iic_ds1307_time_read:
      0005C3 AF 82            [24]  699 	mov	r7,dpl
                                    700 ;	iic.c:114: iic_start();
      0005C5 C0 07            [24]  701 	push	ar7
      0005C7 12 04 B8         [24]  702 	lcall	_iic_start
      0005CA D0 07            [24]  703 	pop	ar7
                                    704 ;	iic.c:115: iic_send_byte(deviceAddress);
      0005CC 8F 82            [24]  705 	mov	dpl,r7
      0005CE C0 07            [24]  706 	push	ar7
      0005D0 12 04 F7         [24]  707 	lcall	_iic_send_byte
                                    708 ;	iic.c:116: if(iic_read_ack() == IIC_NACK)
      0005D3 12 04 E6         [24]  709 	lcall	_iic_read_ack
      0005D6 AE 82            [24]  710 	mov	r6,dpl
      0005D8 D0 07            [24]  711 	pop	ar7
      0005DA BE 01 04         [24]  712 	cjne	r6,#0x01,00102$
                                    713 ;	iic.c:118: return 1;
      0005DD 75 82 01         [24]  714 	mov	dpl,#0x01
      0005E0 22               [24]  715 	ret
      0005E1                        716 00102$:
                                    717 ;	iic.c:120: iic_send_byte(0x00);
      0005E1 75 82 00         [24]  718 	mov	dpl,#0x00
      0005E4 C0 07            [24]  719 	push	ar7
      0005E6 12 04 F7         [24]  720 	lcall	_iic_send_byte
                                    721 ;	iic.c:121: if(iic_read_ack() == IIC_NACK)
      0005E9 12 04 E6         [24]  722 	lcall	_iic_read_ack
      0005EC AE 82            [24]  723 	mov	r6,dpl
      0005EE D0 07            [24]  724 	pop	ar7
      0005F0 BE 01 04         [24]  725 	cjne	r6,#0x01,00104$
                                    726 ;	iic.c:123: return 2;
      0005F3 75 82 02         [24]  727 	mov	dpl,#0x02
      0005F6 22               [24]  728 	ret
      0005F7                        729 00104$:
                                    730 ;	iic.c:125: iic_start();
      0005F7 C0 07            [24]  731 	push	ar7
      0005F9 12 04 B8         [24]  732 	lcall	_iic_start
      0005FC D0 07            [24]  733 	pop	ar7
                                    734 ;	iic.c:126: iic_send_byte(deviceAddress | 0x01);
      0005FE 74 01            [12]  735 	mov	a,#0x01
      000600 4F               [12]  736 	orl	a,r7
      000601 F5 82            [12]  737 	mov	dpl,a
      000603 12 04 F7         [24]  738 	lcall	_iic_send_byte
                                    739 ;	iic.c:127: if(iic_read_ack() == IIC_NACK)
      000606 12 04 E6         [24]  740 	lcall	_iic_read_ack
      000609 AF 82            [24]  741 	mov	r7,dpl
      00060B BF 01 04         [24]  742 	cjne	r7,#0x01,00106$
                                    743 ;	iic.c:129: return 3;
      00060E 75 82 03         [24]  744 	mov	dpl,#0x03
      000611 22               [24]  745 	ret
      000612                        746 00106$:
                                    747 ;	iic.c:131: rtc->sec = iic_read_byte();
      000612 AD 25            [24]  748 	mov	r5,_iic_ds1307_time_read_PARM_2
      000614 AE 26            [24]  749 	mov	r6,(_iic_ds1307_time_read_PARM_2 + 1)
      000616 AF 27            [24]  750 	mov	r7,(_iic_ds1307_time_read_PARM_2 + 2)
      000618 C0 07            [24]  751 	push	ar7
      00061A C0 06            [24]  752 	push	ar6
      00061C C0 05            [24]  753 	push	ar5
      00061E 12 05 26         [24]  754 	lcall	_iic_read_byte
      000621 AC 82            [24]  755 	mov	r4,dpl
      000623 D0 05            [24]  756 	pop	ar5
      000625 D0 06            [24]  757 	pop	ar6
      000627 D0 07            [24]  758 	pop	ar7
      000629 8D 82            [24]  759 	mov	dpl,r5
      00062B 8E 83            [24]  760 	mov	dph,r6
      00062D 8F F0            [24]  761 	mov	b,r7
      00062F EC               [12]  762 	mov	a,r4
      000630 12 08 65         [24]  763 	lcall	__gptrput
                                    764 ;	iic.c:132: iic_ack();
      000633 C0 07            [24]  765 	push	ar7
      000635 C0 06            [24]  766 	push	ar6
      000637 C0 05            [24]  767 	push	ar5
      000639 12 04 D2         [24]  768 	lcall	_iic_ack
      00063C D0 05            [24]  769 	pop	ar5
      00063E D0 06            [24]  770 	pop	ar6
      000640 D0 07            [24]  771 	pop	ar7
                                    772 ;	iic.c:133: rtc->min = iic_read_byte();
      000642 74 01            [12]  773 	mov	a,#0x01
      000644 2D               [12]  774 	add	a,r5
      000645 FA               [12]  775 	mov	r2,a
      000646 E4               [12]  776 	clr	a
      000647 3E               [12]  777 	addc	a,r6
      000648 FB               [12]  778 	mov	r3,a
      000649 8F 04            [24]  779 	mov	ar4,r7
      00064B C0 07            [24]  780 	push	ar7
      00064D C0 06            [24]  781 	push	ar6
      00064F C0 05            [24]  782 	push	ar5
      000651 C0 04            [24]  783 	push	ar4
      000653 C0 03            [24]  784 	push	ar3
      000655 C0 02            [24]  785 	push	ar2
      000657 12 05 26         [24]  786 	lcall	_iic_read_byte
      00065A A9 82            [24]  787 	mov	r1,dpl
      00065C D0 02            [24]  788 	pop	ar2
      00065E D0 03            [24]  789 	pop	ar3
      000660 D0 04            [24]  790 	pop	ar4
      000662 8A 82            [24]  791 	mov	dpl,r2
      000664 8B 83            [24]  792 	mov	dph,r3
      000666 8C F0            [24]  793 	mov	b,r4
      000668 E9               [12]  794 	mov	a,r1
      000669 12 08 65         [24]  795 	lcall	__gptrput
                                    796 ;	iic.c:134: iic_ack();
      00066C 12 04 D2         [24]  797 	lcall	_iic_ack
      00066F D0 05            [24]  798 	pop	ar5
      000671 D0 06            [24]  799 	pop	ar6
      000673 D0 07            [24]  800 	pop	ar7
                                    801 ;	iic.c:135: rtc->hour = iic_read_byte();
      000675 74 02            [12]  802 	mov	a,#0x02
      000677 2D               [12]  803 	add	a,r5
      000678 FA               [12]  804 	mov	r2,a
      000679 E4               [12]  805 	clr	a
      00067A 3E               [12]  806 	addc	a,r6
      00067B FB               [12]  807 	mov	r3,a
      00067C 8F 04            [24]  808 	mov	ar4,r7
      00067E C0 07            [24]  809 	push	ar7
      000680 C0 06            [24]  810 	push	ar6
      000682 C0 05            [24]  811 	push	ar5
      000684 C0 04            [24]  812 	push	ar4
      000686 C0 03            [24]  813 	push	ar3
      000688 C0 02            [24]  814 	push	ar2
      00068A 12 05 26         [24]  815 	lcall	_iic_read_byte
      00068D A9 82            [24]  816 	mov	r1,dpl
      00068F D0 02            [24]  817 	pop	ar2
      000691 D0 03            [24]  818 	pop	ar3
      000693 D0 04            [24]  819 	pop	ar4
      000695 8A 82            [24]  820 	mov	dpl,r2
      000697 8B 83            [24]  821 	mov	dph,r3
      000699 8C F0            [24]  822 	mov	b,r4
      00069B E9               [12]  823 	mov	a,r1
      00069C 12 08 65         [24]  824 	lcall	__gptrput
                                    825 ;	iic.c:136: iic_ack();
      00069F 12 04 D2         [24]  826 	lcall	_iic_ack
      0006A2 D0 05            [24]  827 	pop	ar5
      0006A4 D0 06            [24]  828 	pop	ar6
      0006A6 D0 07            [24]  829 	pop	ar7
                                    830 ;	iic.c:137: rtc->weekDay = iic_read_byte();
      0006A8 74 03            [12]  831 	mov	a,#0x03
      0006AA 2D               [12]  832 	add	a,r5
      0006AB FA               [12]  833 	mov	r2,a
      0006AC E4               [12]  834 	clr	a
      0006AD 3E               [12]  835 	addc	a,r6
      0006AE FB               [12]  836 	mov	r3,a
      0006AF 8F 04            [24]  837 	mov	ar4,r7
      0006B1 C0 07            [24]  838 	push	ar7
      0006B3 C0 06            [24]  839 	push	ar6
      0006B5 C0 05            [24]  840 	push	ar5
      0006B7 C0 04            [24]  841 	push	ar4
      0006B9 C0 03            [24]  842 	push	ar3
      0006BB C0 02            [24]  843 	push	ar2
      0006BD 12 05 26         [24]  844 	lcall	_iic_read_byte
      0006C0 A9 82            [24]  845 	mov	r1,dpl
      0006C2 D0 02            [24]  846 	pop	ar2
      0006C4 D0 03            [24]  847 	pop	ar3
      0006C6 D0 04            [24]  848 	pop	ar4
      0006C8 8A 82            [24]  849 	mov	dpl,r2
      0006CA 8B 83            [24]  850 	mov	dph,r3
      0006CC 8C F0            [24]  851 	mov	b,r4
      0006CE E9               [12]  852 	mov	a,r1
      0006CF 12 08 65         [24]  853 	lcall	__gptrput
                                    854 ;	iic.c:138: iic_ack();
      0006D2 12 04 D2         [24]  855 	lcall	_iic_ack
      0006D5 D0 05            [24]  856 	pop	ar5
      0006D7 D0 06            [24]  857 	pop	ar6
      0006D9 D0 07            [24]  858 	pop	ar7
                                    859 ;	iic.c:139: rtc->date = iic_read_byte();
      0006DB 74 04            [12]  860 	mov	a,#0x04
      0006DD 2D               [12]  861 	add	a,r5
      0006DE FA               [12]  862 	mov	r2,a
      0006DF E4               [12]  863 	clr	a
      0006E0 3E               [12]  864 	addc	a,r6
      0006E1 FB               [12]  865 	mov	r3,a
      0006E2 8F 04            [24]  866 	mov	ar4,r7
      0006E4 C0 07            [24]  867 	push	ar7
      0006E6 C0 06            [24]  868 	push	ar6
      0006E8 C0 05            [24]  869 	push	ar5
      0006EA C0 04            [24]  870 	push	ar4
      0006EC C0 03            [24]  871 	push	ar3
      0006EE C0 02            [24]  872 	push	ar2
      0006F0 12 05 26         [24]  873 	lcall	_iic_read_byte
      0006F3 A9 82            [24]  874 	mov	r1,dpl
      0006F5 D0 02            [24]  875 	pop	ar2
      0006F7 D0 03            [24]  876 	pop	ar3
      0006F9 D0 04            [24]  877 	pop	ar4
      0006FB 8A 82            [24]  878 	mov	dpl,r2
      0006FD 8B 83            [24]  879 	mov	dph,r3
      0006FF 8C F0            [24]  880 	mov	b,r4
      000701 E9               [12]  881 	mov	a,r1
      000702 12 08 65         [24]  882 	lcall	__gptrput
                                    883 ;	iic.c:140: iic_ack();
      000705 12 04 D2         [24]  884 	lcall	_iic_ack
      000708 D0 05            [24]  885 	pop	ar5
      00070A D0 06            [24]  886 	pop	ar6
      00070C D0 07            [24]  887 	pop	ar7
                                    888 ;	iic.c:141: rtc->month = iic_read_byte();
      00070E 74 05            [12]  889 	mov	a,#0x05
      000710 2D               [12]  890 	add	a,r5
      000711 FA               [12]  891 	mov	r2,a
      000712 E4               [12]  892 	clr	a
      000713 3E               [12]  893 	addc	a,r6
      000714 FB               [12]  894 	mov	r3,a
      000715 8F 04            [24]  895 	mov	ar4,r7
      000717 C0 07            [24]  896 	push	ar7
      000719 C0 06            [24]  897 	push	ar6
      00071B C0 05            [24]  898 	push	ar5
      00071D C0 04            [24]  899 	push	ar4
      00071F C0 03            [24]  900 	push	ar3
      000721 C0 02            [24]  901 	push	ar2
      000723 12 05 26         [24]  902 	lcall	_iic_read_byte
      000726 A9 82            [24]  903 	mov	r1,dpl
      000728 D0 02            [24]  904 	pop	ar2
      00072A D0 03            [24]  905 	pop	ar3
      00072C D0 04            [24]  906 	pop	ar4
      00072E 8A 82            [24]  907 	mov	dpl,r2
      000730 8B 83            [24]  908 	mov	dph,r3
      000732 8C F0            [24]  909 	mov	b,r4
      000734 E9               [12]  910 	mov	a,r1
      000735 12 08 65         [24]  911 	lcall	__gptrput
                                    912 ;	iic.c:142: iic_ack();
      000738 12 04 D2         [24]  913 	lcall	_iic_ack
      00073B D0 05            [24]  914 	pop	ar5
      00073D D0 06            [24]  915 	pop	ar6
                                    916 ;	iic.c:143: rtc->year = iic_read_byte();
      00073F 74 06            [12]  917 	mov	a,#0x06
      000741 2D               [12]  918 	add	a,r5
      000742 FD               [12]  919 	mov	r5,a
      000743 E4               [12]  920 	clr	a
      000744 3E               [12]  921 	addc	a,r6
      000745 FE               [12]  922 	mov	r6,a
      000746 C0 06            [24]  923 	push	ar6
      000748 C0 05            [24]  924 	push	ar5
      00074A 12 05 26         [24]  925 	lcall	_iic_read_byte
      00074D AC 82            [24]  926 	mov	r4,dpl
      00074F D0 05            [24]  927 	pop	ar5
      000751 D0 06            [24]  928 	pop	ar6
      000753 D0 07            [24]  929 	pop	ar7
      000755 8D 82            [24]  930 	mov	dpl,r5
      000757 8E 83            [24]  931 	mov	dph,r6
      000759 8F F0            [24]  932 	mov	b,r7
      00075B EC               [12]  933 	mov	a,r4
      00075C 12 08 65         [24]  934 	lcall	__gptrput
                                    935 ;	iic.c:144: iic_nack();
      00075F 12 04 DB         [24]  936 	lcall	_iic_nack
                                    937 ;	iic.c:145: iic_stop();
      000762 12 04 C5         [24]  938 	lcall	_iic_stop
                                    939 ;	iic.c:146: return 0;
      000765 75 82 00         [24]  940 	mov	dpl,#0x00
                                    941 ;	iic.c:147: }
      000768 22               [24]  942 	ret
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function 'iic_ds1307_temp_read'
                                    945 ;------------------------------------------------------------
                                    946 ;deviceAddress             Allocated to registers r7 
                                    947 ;temp_MSB                  Allocated to registers r7 
                                    948 ;temp_LSB                  Allocated to registers r6 
                                    949 ;------------------------------------------------------------
                                    950 ;	iic.c:149: int8_t iic_ds1307_temp_read(uint8_t deviceAddress)
                                    951 ;	-----------------------------------------
                                    952 ;	 function iic_ds1307_temp_read
                                    953 ;	-----------------------------------------
      000769                        954 _iic_ds1307_temp_read:
      000769 AF 82            [24]  955 	mov	r7,dpl
                                    956 ;	iic.c:153: iic_start();
      00076B C0 07            [24]  957 	push	ar7
      00076D 12 04 B8         [24]  958 	lcall	_iic_start
      000770 D0 07            [24]  959 	pop	ar7
                                    960 ;	iic.c:154: iic_send_byte(deviceAddress);
      000772 8F 82            [24]  961 	mov	dpl,r7
      000774 C0 07            [24]  962 	push	ar7
      000776 12 04 F7         [24]  963 	lcall	_iic_send_byte
                                    964 ;	iic.c:155: if(iic_read_ack() == IIC_NACK)
      000779 12 04 E6         [24]  965 	lcall	_iic_read_ack
      00077C AE 82            [24]  966 	mov	r6,dpl
      00077E D0 07            [24]  967 	pop	ar7
      000780 BE 01 04         [24]  968 	cjne	r6,#0x01,00102$
                                    969 ;	iic.c:157: return 1;
      000783 75 82 01         [24]  970 	mov	dpl,#0x01
      000786 22               [24]  971 	ret
      000787                        972 00102$:
                                    973 ;	iic.c:159: iic_send_byte(0x11);
      000787 75 82 11         [24]  974 	mov	dpl,#0x11
      00078A C0 07            [24]  975 	push	ar7
      00078C 12 04 F7         [24]  976 	lcall	_iic_send_byte
                                    977 ;	iic.c:160: if(iic_read_ack() == IIC_NACK)
      00078F 12 04 E6         [24]  978 	lcall	_iic_read_ack
      000792 AE 82            [24]  979 	mov	r6,dpl
      000794 D0 07            [24]  980 	pop	ar7
      000796 BE 01 04         [24]  981 	cjne	r6,#0x01,00104$
                                    982 ;	iic.c:162: return 2;
      000799 75 82 02         [24]  983 	mov	dpl,#0x02
      00079C 22               [24]  984 	ret
      00079D                        985 00104$:
                                    986 ;	iic.c:164: iic_start();
      00079D C0 07            [24]  987 	push	ar7
      00079F 12 04 B8         [24]  988 	lcall	_iic_start
      0007A2 D0 07            [24]  989 	pop	ar7
                                    990 ;	iic.c:165: iic_send_byte(deviceAddress | 0x01);
      0007A4 74 01            [12]  991 	mov	a,#0x01
      0007A6 4F               [12]  992 	orl	a,r7
      0007A7 F5 82            [12]  993 	mov	dpl,a
      0007A9 12 04 F7         [24]  994 	lcall	_iic_send_byte
                                    995 ;	iic.c:166: if(iic_read_ack() == IIC_NACK)
      0007AC 12 04 E6         [24]  996 	lcall	_iic_read_ack
      0007AF AF 82            [24]  997 	mov	r7,dpl
      0007B1 BF 01 04         [24]  998 	cjne	r7,#0x01,00106$
                                    999 ;	iic.c:168: return 3;
      0007B4 75 82 03         [24] 1000 	mov	dpl,#0x03
      0007B7 22               [24] 1001 	ret
      0007B8                       1002 00106$:
                                   1003 ;	iic.c:170: temp_MSB = iic_read_byte();
      0007B8 12 05 26         [24] 1004 	lcall	_iic_read_byte
      0007BB AF 82            [24] 1005 	mov	r7,dpl
                                   1006 ;	iic.c:171: iic_ack();
      0007BD C0 07            [24] 1007 	push	ar7
      0007BF 12 04 D2         [24] 1008 	lcall	_iic_ack
                                   1009 ;	iic.c:172: temp_LSB = iic_read_byte();
      0007C2 12 05 26         [24] 1010 	lcall	_iic_read_byte
      0007C5 AE 82            [24] 1011 	mov	r6,dpl
                                   1012 ;	iic.c:173: iic_nack();
      0007C7 C0 06            [24] 1013 	push	ar6
      0007C9 12 04 DB         [24] 1014 	lcall	_iic_nack
                                   1015 ;	iic.c:174: iic_stop();
      0007CC 12 04 C5         [24] 1016 	lcall	_iic_stop
      0007CF D0 06            [24] 1017 	pop	ar6
      0007D1 D0 07            [24] 1018 	pop	ar7
                                   1019 ;	iic.c:175: temp_LSB = temp_LSB >> 6;
      0007D3 EE               [12] 1020 	mov	a,r6
      0007D4 23               [12] 1021 	rl	a
      0007D5 23               [12] 1022 	rl	a
      0007D6 54 03            [12] 1023 	anl	a,#0x03
      0007D8 FE               [12] 1024 	mov	r6,a
                                   1025 ;	iic.c:176: if (temp_LSB == 3) temp_MSB ++;
      0007D9 BE 03 01         [24] 1026 	cjne	r6,#0x03,00108$
      0007DC 0F               [12] 1027 	inc	r7
      0007DD                       1028 00108$:
                                   1029 ;	iic.c:177: return temp_MSB;
      0007DD 8F 82            [24] 1030 	mov	dpl,r7
                                   1031 ;	iic.c:178: }
      0007DF 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'iic_single_byte_write'
                                   1035 ;------------------------------------------------------------
                                   1036 ;registerAddress           Allocated with name '_iic_single_byte_write_PARM_2'
                                   1037 ;data                      Allocated with name '_iic_single_byte_write_PARM_3'
                                   1038 ;deviceAddress             Allocated to registers r7 
                                   1039 ;------------------------------------------------------------
                                   1040 ;	iic.c:180: uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function iic_single_byte_write
                                   1043 ;	-----------------------------------------
      0007E0                       1044 _iic_single_byte_write:
      0007E0 AF 82            [24] 1045 	mov	r7,dpl
                                   1046 ;	iic.c:182: iic_start();
      0007E2 C0 07            [24] 1047 	push	ar7
      0007E4 12 04 B8         [24] 1048 	lcall	_iic_start
      0007E7 D0 07            [24] 1049 	pop	ar7
                                   1050 ;	iic.c:183: iic_send_byte(deviceAddress);
      0007E9 8F 82            [24] 1051 	mov	dpl,r7
      0007EB 12 04 F7         [24] 1052 	lcall	_iic_send_byte
                                   1053 ;	iic.c:184: if(iic_read_ack() == IIC_NACK)
      0007EE 12 04 E6         [24] 1054 	lcall	_iic_read_ack
      0007F1 AF 82            [24] 1055 	mov	r7,dpl
      0007F3 BF 01 04         [24] 1056 	cjne	r7,#0x01,00102$
                                   1057 ;	iic.c:186: return 1;
      0007F6 75 82 01         [24] 1058 	mov	dpl,#0x01
      0007F9 22               [24] 1059 	ret
      0007FA                       1060 00102$:
                                   1061 ;	iic.c:188: iic_send_byte(registerAddress);
      0007FA 85 28 82         [24] 1062 	mov	dpl,_iic_single_byte_write_PARM_2
      0007FD 12 04 F7         [24] 1063 	lcall	_iic_send_byte
                                   1064 ;	iic.c:189: if(iic_read_ack() == IIC_NACK)
      000800 12 04 E6         [24] 1065 	lcall	_iic_read_ack
      000803 AF 82            [24] 1066 	mov	r7,dpl
      000805 BF 01 04         [24] 1067 	cjne	r7,#0x01,00104$
                                   1068 ;	iic.c:191: return 2;
      000808 75 82 02         [24] 1069 	mov	dpl,#0x02
      00080B 22               [24] 1070 	ret
      00080C                       1071 00104$:
                                   1072 ;	iic.c:193: iic_send_byte(data);
      00080C 85 29 82         [24] 1073 	mov	dpl,_iic_single_byte_write_PARM_3
      00080F 12 04 F7         [24] 1074 	lcall	_iic_send_byte
                                   1075 ;	iic.c:194: if(iic_read_ack() == IIC_NACK)
      000812 12 04 E6         [24] 1076 	lcall	_iic_read_ack
      000815 AF 82            [24] 1077 	mov	r7,dpl
      000817 BF 01 04         [24] 1078 	cjne	r7,#0x01,00106$
                                   1079 ;	iic.c:196: return 3;
      00081A 75 82 03         [24] 1080 	mov	dpl,#0x03
      00081D 22               [24] 1081 	ret
      00081E                       1082 00106$:
                                   1083 ;	iic.c:198: iic_stop();
      00081E 12 04 C5         [24] 1084 	lcall	_iic_stop
                                   1085 ;	iic.c:199: return 0;
      000821 75 82 00         [24] 1086 	mov	dpl,#0x00
                                   1087 ;	iic.c:200: }
      000824 22               [24] 1088 	ret
                                   1089 	.area CSEG    (CODE)
                                   1090 	.area CONST   (CODE)
                                   1091 	.area XINIT   (CODE)
                                   1092 	.area CABS    (ABS,CODE)

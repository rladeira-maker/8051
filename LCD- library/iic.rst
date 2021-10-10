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
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _iic_single_byte_write_PARM_3
                                    108 	.globl _iic_single_byte_write_PARM_2
                                    109 	.globl _iic_single_byte_read_PARM_3
                                    110 	.globl _iic_single_byte_read_PARM_2
                                    111 	.globl _iic_start
                                    112 	.globl _iic_stop
                                    113 	.globl _iic_ack
                                    114 	.globl _iic_nack
                                    115 	.globl _iic_read_ack
                                    116 	.globl _iic_send_byte
                                    117 	.globl _iic_read_byte
                                    118 	.globl _iic_single_byte_read
                                    119 	.globl _iic_single_byte_write
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000010                        235 _iic_single_byte_read_PARM_2:
      000010                        236 	.ds 1
      000011                        237 _iic_single_byte_read_PARM_3:
      000011                        238 	.ds 3
      000014                        239 _iic_single_byte_write_PARM_2:
      000014                        240 	.ds 1
      000015                        241 _iic_single_byte_write_PARM_3:
      000015                        242 	.ds 1
                                    243 ;--------------------------------------------------------
                                    244 ; overlayable items in internal ram 
                                    245 ;--------------------------------------------------------
                                    246 	.area	OSEG    (OVR,DATA)
                                    247 	.area	OSEG    (OVR,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; indirectly addressable internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area ISEG    (DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; Home
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area HOME    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; code
                                    301 ;--------------------------------------------------------
                                    302 	.area CSEG    (CODE)
                                    303 ;------------------------------------------------------------
                                    304 ;Allocation info for local variables in function 'iic_start'
                                    305 ;------------------------------------------------------------
                                    306 ;	iic.c:6: void iic_start(void)
                                    307 ;	-----------------------------------------
                                    308 ;	 function iic_start
                                    309 ;	-----------------------------------------
      000347                        310 _iic_start:
                           000007   311 	ar7 = 0x07
                           000006   312 	ar6 = 0x06
                           000005   313 	ar5 = 0x05
                           000004   314 	ar4 = 0x04
                           000003   315 	ar3 = 0x03
                           000002   316 	ar2 = 0x02
                           000001   317 	ar1 = 0x01
                           000000   318 	ar0 = 0x00
                                    319 ;	iic.c:8: IIC_SCL = 0;
                                    320 ;	assignBit
      000347 C2 97            [12]  321 	clr	_P1_7
                                    322 ;	iic.c:9: __nop(); __nop();
      000349 00               [12]  323 	nop	
      00034A 00               [12]  324 	nop	
                                    325 ;	iic.c:10: IIC_SDA = 1;
                                    326 ;	assignBit
      00034B D2 96            [12]  327 	setb	_P1_6
                                    328 ;	iic.c:11: IIC_SCL = 1;
                                    329 ;	assignBit
      00034D D2 97            [12]  330 	setb	_P1_7
                                    331 ;	iic.c:12: __nop(); __nop();
      00034F 00               [12]  332 	nop	
      000350 00               [12]  333 	nop	
                                    334 ;	iic.c:13: IIC_SDA = 0;
                                    335 ;	assignBit
      000351 C2 96            [12]  336 	clr	_P1_6
                                    337 ;	iic.c:14: }
      000353 22               [24]  338 	ret
                                    339 ;------------------------------------------------------------
                                    340 ;Allocation info for local variables in function 'iic_stop'
                                    341 ;------------------------------------------------------------
                                    342 ;	iic.c:19: void iic_stop(void)
                                    343 ;	-----------------------------------------
                                    344 ;	 function iic_stop
                                    345 ;	-----------------------------------------
      000354                        346 _iic_stop:
                                    347 ;	iic.c:21: IIC_SCL = 0;
                                    348 ;	assignBit
      000354 C2 97            [12]  349 	clr	_P1_7
                                    350 ;	iic.c:22: __nop(); __nop();
      000356 00               [12]  351 	nop	
      000357 00               [12]  352 	nop	
                                    353 ;	iic.c:23: IIC_SDA = 0;
                                    354 ;	assignBit
      000358 C2 96            [12]  355 	clr	_P1_6
                                    356 ;	iic.c:24: IIC_SCL = 1;
                                    357 ;	assignBit
      00035A D2 97            [12]  358 	setb	_P1_7
                                    359 ;	iic.c:25: __nop(); __nop();
      00035C 00               [12]  360 	nop	
      00035D 00               [12]  361 	nop	
                                    362 ;	iic.c:26: IIC_SDA = 1;
                                    363 ;	assignBit
      00035E D2 96            [12]  364 	setb	_P1_6
                                    365 ;	iic.c:27: }
      000360 22               [24]  366 	ret
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'iic_ack'
                                    369 ;------------------------------------------------------------
                                    370 ;	iic.c:29: void iic_ack(void)
                                    371 ;	-----------------------------------------
                                    372 ;	 function iic_ack
                                    373 ;	-----------------------------------------
      000361                        374 _iic_ack:
                                    375 ;	iic.c:31: IIC_SCL = 0;
                                    376 ;	assignBit
      000361 C2 97            [12]  377 	clr	_P1_7
                                    378 ;	iic.c:32: IIC_SDA = 0;
                                    379 ;	assignBit
      000363 C2 96            [12]  380 	clr	_P1_6
                                    381 ;	iic.c:33: __nop(); __nop();
      000365 00               [12]  382 	nop	
      000366 00               [12]  383 	nop	
                                    384 ;	iic.c:34: IIC_SCL = 1;
                                    385 ;	assignBit
      000367 D2 97            [12]  386 	setb	_P1_7
                                    387 ;	iic.c:35: }
      000369 22               [24]  388 	ret
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'iic_nack'
                                    391 ;------------------------------------------------------------
                                    392 ;	iic.c:37: void iic_nack(void) {
                                    393 ;	-----------------------------------------
                                    394 ;	 function iic_nack
                                    395 ;	-----------------------------------------
      00036A                        396 _iic_nack:
                                    397 ;	iic.c:38: IIC_SCL = 0;
                                    398 ;	assignBit
      00036A C2 97            [12]  399 	clr	_P1_7
                                    400 ;	iic.c:39: __nop(); __nop();
      00036C 00               [12]  401 	nop	
      00036D 00               [12]  402 	nop	
                                    403 ;	iic.c:40: IIC_SDA = 1;
                                    404 ;	assignBit
      00036E D2 96            [12]  405 	setb	_P1_6
                                    406 ;	iic.c:41: __nop(); __nop();
      000370 00               [12]  407 	nop	
      000371 00               [12]  408 	nop	
                                    409 ;	iic.c:42: IIC_SCL = 1;
                                    410 ;	assignBit
      000372 D2 97            [12]  411 	setb	_P1_7
                                    412 ;	iic.c:43: }
      000374 22               [24]  413 	ret
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'iic_read_ack'
                                    416 ;------------------------------------------------------------
                                    417 ;	iic.c:45: uint8_t iic_read_ack(void)
                                    418 ;	-----------------------------------------
                                    419 ;	 function iic_read_ack
                                    420 ;	-----------------------------------------
      000375                        421 _iic_read_ack:
                                    422 ;	iic.c:47: IIC_SCL = 0;
                                    423 ;	assignBit
      000375 C2 97            [12]  424 	clr	_P1_7
                                    425 ;	iic.c:48: IIC_SDA = 1;
                                    426 ;	assignBit
      000377 D2 96            [12]  427 	setb	_P1_6
                                    428 ;	iic.c:49: __nop(); __nop();
      000379 00               [12]  429 	nop	
      00037A 00               [12]  430 	nop	
                                    431 ;	iic.c:50: IIC_SCL = 1;
                                    432 ;	assignBit
      00037B D2 97            [12]  433 	setb	_P1_7
                                    434 ;	iic.c:51: __nop(); __nop();
      00037D 00               [12]  435 	nop	
      00037E 00               [12]  436 	nop	
                                    437 ;	iic.c:52: return IIC_SDA;
      00037F A2 96            [12]  438 	mov	c,_P1_6
      000381 E4               [12]  439 	clr	a
      000382 33               [12]  440 	rlc	a
      000383 F5 82            [12]  441 	mov	dpl,a
                                    442 ;	iic.c:53: }
      000385 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'iic_send_byte'
                                    446 ;------------------------------------------------------------
                                    447 ;data                      Allocated to registers r7 
                                    448 ;i                         Allocated to registers r6 
                                    449 ;------------------------------------------------------------
                                    450 ;	iic.c:55: void iic_send_byte(uint8_t data)
                                    451 ;	-----------------------------------------
                                    452 ;	 function iic_send_byte
                                    453 ;	-----------------------------------------
      000386                        454 _iic_send_byte:
      000386 AF 82            [24]  455 	mov	r7,dpl
                                    456 ;	iic.c:58: for(i=0; i<8; i++)
      000388 7E 00            [12]  457 	mov	r6,#0x00
      00038A                        458 00102$:
                                    459 ;	iic.c:60: IIC_SCL = 0;
                                    460 ;	assignBit
      00038A C2 97            [12]  461 	clr	_P1_7
                                    462 ;	iic.c:61: __nop(); __nop();
      00038C 00               [12]  463 	nop	
      00038D 00               [12]  464 	nop	
                                    465 ;	iic.c:62: IIC_SDA = (data << i) & 0x80;
      00038E 8F 04            [24]  466 	mov	ar4,r7
      000390 7D 00            [12]  467 	mov	r5,#0x00
      000392 8E F0            [24]  468 	mov	b,r6
      000394 05 F0            [12]  469 	inc	b
      000396 80 06            [24]  470 	sjmp	00112$
      000398                        471 00111$:
      000398 EC               [12]  472 	mov	a,r4
      000399 2C               [12]  473 	add	a,r4
      00039A FC               [12]  474 	mov	r4,a
      00039B ED               [12]  475 	mov	a,r5
      00039C 33               [12]  476 	rlc	a
      00039D FD               [12]  477 	mov	r5,a
      00039E                        478 00112$:
      00039E D5 F0 F7         [24]  479 	djnz	b,00111$
      0003A1 EC               [12]  480 	mov	a,r4
      0003A2 23               [12]  481 	rl	a
      0003A3 54 01            [12]  482 	anl	a,#0x01
                                    483 ;	assignBit
      0003A5 FC               [12]  484 	mov	r4,a
      0003A6 24 FF            [12]  485 	add	a,#0xff
      0003A8 92 96            [24]  486 	mov	_P1_6,c
                                    487 ;	iic.c:63: __nop(); __nop();
      0003AA 00               [12]  488 	nop	
      0003AB 00               [12]  489 	nop	
                                    490 ;	iic.c:64: IIC_SCL = 1;
                                    491 ;	assignBit
      0003AC D2 97            [12]  492 	setb	_P1_7
                                    493 ;	iic.c:58: for(i=0; i<8; i++)
      0003AE 0E               [12]  494 	inc	r6
      0003AF BE 08 00         [24]  495 	cjne	r6,#0x08,00113$
      0003B2                        496 00113$:
      0003B2 40 D6            [24]  497 	jc	00102$
                                    498 ;	iic.c:66: }
      0003B4 22               [24]  499 	ret
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'iic_read_byte'
                                    502 ;------------------------------------------------------------
                                    503 ;i                         Allocated to registers r6 
                                    504 ;data                      Allocated to registers r5 
                                    505 ;------------------------------------------------------------
                                    506 ;	iic.c:68: uint8_t iic_read_byte(void)
                                    507 ;	-----------------------------------------
                                    508 ;	 function iic_read_byte
                                    509 ;	-----------------------------------------
      0003B5                        510 _iic_read_byte:
                                    511 ;	iic.c:71: uint8_t data = 0x00;
      0003B5 7F 00            [12]  512 	mov	r7,#0x00
                                    513 ;	iic.c:72: for(i=0; i<8; i++)
      0003B7 7E 00            [12]  514 	mov	r6,#0x00
      0003B9                        515 00102$:
                                    516 ;	iic.c:74: IIC_SCL = 0; // 如果主机发送ack将总线拉低，因为线与的关系这里要释放总线
                                    517 ;	assignBit
      0003B9 C2 97            [12]  518 	clr	_P1_7
                                    519 ;	iic.c:76: IIC_SDA = 1;
                                    520 ;	assignBit
      0003BB D2 96            [12]  521 	setb	_P1_6
                                    522 ;	iic.c:77: __nop(); __nop();
      0003BD 00               [12]  523 	nop	
      0003BE 00               [12]  524 	nop	
                                    525 ;	iic.c:78: data <<= 1;
      0003BF 8F 05            [24]  526 	mov	ar5,r7
      0003C1 ED               [12]  527 	mov	a,r5
      0003C2 2D               [12]  528 	add	a,r5
      0003C3 FD               [12]  529 	mov	r5,a
                                    530 ;	iic.c:79: IIC_SCL = 1;
                                    531 ;	assignBit
      0003C4 D2 97            [12]  532 	setb	_P1_7
                                    533 ;	iic.c:80: __nop(); __nop();
      0003C6 00               [12]  534 	nop	
      0003C7 00               [12]  535 	nop	
                                    536 ;	iic.c:81: data |= IIC_SDA;
      0003C8 A2 96            [12]  537 	mov	c,_P1_6
      0003CA E4               [12]  538 	clr	a
      0003CB 33               [12]  539 	rlc	a
      0003CC FC               [12]  540 	mov	r4,a
      0003CD 4D               [12]  541 	orl	a,r5
      0003CE FF               [12]  542 	mov	r7,a
                                    543 ;	iic.c:72: for(i=0; i<8; i++)
      0003CF 0E               [12]  544 	inc	r6
      0003D0 BE 08 00         [24]  545 	cjne	r6,#0x08,00117$
      0003D3                        546 00117$:
      0003D3 40 E4            [24]  547 	jc	00102$
                                    548 ;	iic.c:83: return data;
      0003D5 8F 82            [24]  549 	mov	dpl,r7
                                    550 ;	iic.c:84: }
      0003D7 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'iic_single_byte_read'
                                    554 ;------------------------------------------------------------
                                    555 ;registerAddress           Allocated with name '_iic_single_byte_read_PARM_2'
                                    556 ;data                      Allocated with name '_iic_single_byte_read_PARM_3'
                                    557 ;deviceAddress             Allocated to registers r7 
                                    558 ;------------------------------------------------------------
                                    559 ;	iic.c:86: uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data)
                                    560 ;	-----------------------------------------
                                    561 ;	 function iic_single_byte_read
                                    562 ;	-----------------------------------------
      0003D8                        563 _iic_single_byte_read:
      0003D8 AF 82            [24]  564 	mov	r7,dpl
                                    565 ;	iic.c:88: iic_start();
      0003DA C0 07            [24]  566 	push	ar7
      0003DC 12 03 47         [24]  567 	lcall	_iic_start
      0003DF D0 07            [24]  568 	pop	ar7
                                    569 ;	iic.c:89: iic_send_byte(deviceAddress);
      0003E1 8F 82            [24]  570 	mov	dpl,r7
      0003E3 C0 07            [24]  571 	push	ar7
      0003E5 12 03 86         [24]  572 	lcall	_iic_send_byte
                                    573 ;	iic.c:90: if(iic_read_ack() == IIC_NACK)
      0003E8 12 03 75         [24]  574 	lcall	_iic_read_ack
      0003EB AE 82            [24]  575 	mov	r6,dpl
      0003ED D0 07            [24]  576 	pop	ar7
      0003EF BE 01 04         [24]  577 	cjne	r6,#0x01,00102$
                                    578 ;	iic.c:92: return 1;
      0003F2 75 82 01         [24]  579 	mov	dpl,#0x01
      0003F5 22               [24]  580 	ret
      0003F6                        581 00102$:
                                    582 ;	iic.c:94: iic_send_byte(registerAddress);
      0003F6 85 10 82         [24]  583 	mov	dpl,_iic_single_byte_read_PARM_2
      0003F9 C0 07            [24]  584 	push	ar7
      0003FB 12 03 86         [24]  585 	lcall	_iic_send_byte
                                    586 ;	iic.c:95: if(iic_read_ack() == IIC_NACK)
      0003FE 12 03 75         [24]  587 	lcall	_iic_read_ack
      000401 AE 82            [24]  588 	mov	r6,dpl
      000403 D0 07            [24]  589 	pop	ar7
      000405 BE 01 04         [24]  590 	cjne	r6,#0x01,00104$
                                    591 ;	iic.c:97: return 2;
      000408 75 82 02         [24]  592 	mov	dpl,#0x02
      00040B 22               [24]  593 	ret
      00040C                        594 00104$:
                                    595 ;	iic.c:99: iic_start();
      00040C C0 07            [24]  596 	push	ar7
      00040E 12 03 47         [24]  597 	lcall	_iic_start
      000411 D0 07            [24]  598 	pop	ar7
                                    599 ;	iic.c:100: iic_send_byte(deviceAddress | 0x01);
      000413 74 01            [12]  600 	mov	a,#0x01
      000415 4F               [12]  601 	orl	a,r7
      000416 F5 82            [12]  602 	mov	dpl,a
      000418 12 03 86         [24]  603 	lcall	_iic_send_byte
                                    604 ;	iic.c:101: if(iic_read_ack() == IIC_NACK)
      00041B 12 03 75         [24]  605 	lcall	_iic_read_ack
      00041E AF 82            [24]  606 	mov	r7,dpl
      000420 BF 01 04         [24]  607 	cjne	r7,#0x01,00106$
                                    608 ;	iic.c:103: return 3;
      000423 75 82 03         [24]  609 	mov	dpl,#0x03
      000426 22               [24]  610 	ret
      000427                        611 00106$:
                                    612 ;	iic.c:105: *data = iic_read_byte();
      000427 AD 11            [24]  613 	mov	r5,_iic_single_byte_read_PARM_3
      000429 AE 12            [24]  614 	mov	r6,(_iic_single_byte_read_PARM_3 + 1)
      00042B AF 13            [24]  615 	mov	r7,(_iic_single_byte_read_PARM_3 + 2)
      00042D C0 07            [24]  616 	push	ar7
      00042F C0 06            [24]  617 	push	ar6
      000431 C0 05            [24]  618 	push	ar5
      000433 12 03 B5         [24]  619 	lcall	_iic_read_byte
      000436 AC 82            [24]  620 	mov	r4,dpl
      000438 D0 05            [24]  621 	pop	ar5
      00043A D0 06            [24]  622 	pop	ar6
      00043C D0 07            [24]  623 	pop	ar7
      00043E 8D 82            [24]  624 	mov	dpl,r5
      000440 8E 83            [24]  625 	mov	dph,r6
      000442 8F F0            [24]  626 	mov	b,r7
      000444 EC               [12]  627 	mov	a,r4
      000445 12 06 80         [24]  628 	lcall	__gptrput
                                    629 ;	iic.c:106: iic_nack();
      000448 12 03 6A         [24]  630 	lcall	_iic_nack
                                    631 ;	iic.c:107: iic_stop();
      00044B 12 03 54         [24]  632 	lcall	_iic_stop
                                    633 ;	iic.c:108: return 0;
      00044E 75 82 00         [24]  634 	mov	dpl,#0x00
                                    635 ;	iic.c:109: }
      000451 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'iic_single_byte_write'
                                    639 ;------------------------------------------------------------
                                    640 ;registerAddress           Allocated with name '_iic_single_byte_write_PARM_2'
                                    641 ;data                      Allocated with name '_iic_single_byte_write_PARM_3'
                                    642 ;deviceAddress             Allocated to registers r7 
                                    643 ;------------------------------------------------------------
                                    644 ;	iic.c:111: uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
                                    645 ;	-----------------------------------------
                                    646 ;	 function iic_single_byte_write
                                    647 ;	-----------------------------------------
      000452                        648 _iic_single_byte_write:
      000452 AF 82            [24]  649 	mov	r7,dpl
                                    650 ;	iic.c:113: iic_start();
      000454 C0 07            [24]  651 	push	ar7
      000456 12 03 47         [24]  652 	lcall	_iic_start
      000459 D0 07            [24]  653 	pop	ar7
                                    654 ;	iic.c:114: iic_send_byte(deviceAddress);
      00045B 8F 82            [24]  655 	mov	dpl,r7
      00045D 12 03 86         [24]  656 	lcall	_iic_send_byte
                                    657 ;	iic.c:115: if(iic_read_ack() == IIC_NACK)
      000460 12 03 75         [24]  658 	lcall	_iic_read_ack
      000463 AF 82            [24]  659 	mov	r7,dpl
      000465 BF 01 04         [24]  660 	cjne	r7,#0x01,00102$
                                    661 ;	iic.c:117: return 1;
      000468 75 82 01         [24]  662 	mov	dpl,#0x01
      00046B 22               [24]  663 	ret
      00046C                        664 00102$:
                                    665 ;	iic.c:119: iic_send_byte(registerAddress);
      00046C 85 14 82         [24]  666 	mov	dpl,_iic_single_byte_write_PARM_2
      00046F 12 03 86         [24]  667 	lcall	_iic_send_byte
                                    668 ;	iic.c:120: if(iic_read_ack() == IIC_NACK)
      000472 12 03 75         [24]  669 	lcall	_iic_read_ack
      000475 AF 82            [24]  670 	mov	r7,dpl
      000477 BF 01 04         [24]  671 	cjne	r7,#0x01,00104$
                                    672 ;	iic.c:122: return 2;
      00047A 75 82 02         [24]  673 	mov	dpl,#0x02
      00047D 22               [24]  674 	ret
      00047E                        675 00104$:
                                    676 ;	iic.c:124: iic_send_byte(data);
      00047E 85 15 82         [24]  677 	mov	dpl,_iic_single_byte_write_PARM_3
      000481 12 03 86         [24]  678 	lcall	_iic_send_byte
                                    679 ;	iic.c:125: if(iic_read_ack() == IIC_NACK)
      000484 12 03 75         [24]  680 	lcall	_iic_read_ack
      000487 AF 82            [24]  681 	mov	r7,dpl
      000489 BF 01 04         [24]  682 	cjne	r7,#0x01,00106$
                                    683 ;	iic.c:127: return 3;
      00048C 75 82 03         [24]  684 	mov	dpl,#0x03
      00048F 22               [24]  685 	ret
      000490                        686 00106$:
                                    687 ;	iic.c:129: iic_stop();
      000490 12 03 54         [24]  688 	lcall	_iic_stop
                                    689 ;	iic.c:130: return 0;
      000493 75 82 00         [24]  690 	mov	dpl,#0x00
                                    691 ;	iic.c:131: }
      000496 22               [24]  692 	ret
                                    693 	.area CSEG    (CODE)
                                    694 	.area CONST   (CODE)
                                    695 	.area XINIT   (CODE)
                                    696 	.area CABS    (ABS,CODE)

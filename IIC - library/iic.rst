                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
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
      000008                        235 _iic_single_byte_read_PARM_2:
      000008                        236 	.ds 1
      000009                        237 _iic_single_byte_read_PARM_3:
      000009                        238 	.ds 3
      00000C                        239 _iic_single_byte_write_PARM_2:
      00000C                        240 	.ds 1
      00000D                        241 _iic_single_byte_write_PARM_3:
      00000D                        242 	.ds 1
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
      0000BB                        310 _iic_start:
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
      0000BB C2 97            [12]  321 	clr	_P1_7
                                    322 ;	iic.c:9: __nop(); __nop();
      0000BD 00               [12]  323 	nop	
      0000BE 00               [12]  324 	nop	
                                    325 ;	iic.c:10: IIC_SDA = 1;
                                    326 ;	assignBit
      0000BF D2 96            [12]  327 	setb	_P1_6
                                    328 ;	iic.c:11: IIC_SCL = 1;
                                    329 ;	assignBit
      0000C1 D2 97            [12]  330 	setb	_P1_7
                                    331 ;	iic.c:12: __nop(); __nop();
      0000C3 00               [12]  332 	nop	
      0000C4 00               [12]  333 	nop	
                                    334 ;	iic.c:13: IIC_SDA = 0;
                                    335 ;	assignBit
      0000C5 C2 96            [12]  336 	clr	_P1_6
                                    337 ;	iic.c:14: }
      0000C7 22               [24]  338 	ret
                                    339 ;------------------------------------------------------------
                                    340 ;Allocation info for local variables in function 'iic_stop'
                                    341 ;------------------------------------------------------------
                                    342 ;	iic.c:19: void iic_stop(void)
                                    343 ;	-----------------------------------------
                                    344 ;	 function iic_stop
                                    345 ;	-----------------------------------------
      0000C8                        346 _iic_stop:
                                    347 ;	iic.c:21: IIC_SCL = 0;
                                    348 ;	assignBit
      0000C8 C2 97            [12]  349 	clr	_P1_7
                                    350 ;	iic.c:22: __nop(); __nop();
      0000CA 00               [12]  351 	nop	
      0000CB 00               [12]  352 	nop	
                                    353 ;	iic.c:23: IIC_SDA = 0;
                                    354 ;	assignBit
      0000CC C2 96            [12]  355 	clr	_P1_6
                                    356 ;	iic.c:24: IIC_SCL = 1;
                                    357 ;	assignBit
      0000CE D2 97            [12]  358 	setb	_P1_7
                                    359 ;	iic.c:25: __nop(); __nop();
      0000D0 00               [12]  360 	nop	
      0000D1 00               [12]  361 	nop	
                                    362 ;	iic.c:26: IIC_SDA = 1;
                                    363 ;	assignBit
      0000D2 D2 96            [12]  364 	setb	_P1_6
                                    365 ;	iic.c:27: }
      0000D4 22               [24]  366 	ret
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'iic_ack'
                                    369 ;------------------------------------------------------------
                                    370 ;	iic.c:29: void iic_ack(void)
                                    371 ;	-----------------------------------------
                                    372 ;	 function iic_ack
                                    373 ;	-----------------------------------------
      0000D5                        374 _iic_ack:
                                    375 ;	iic.c:31: IIC_SCL = 0;
                                    376 ;	assignBit
      0000D5 C2 97            [12]  377 	clr	_P1_7
                                    378 ;	iic.c:32: IIC_SDA = 0;
                                    379 ;	assignBit
      0000D7 C2 96            [12]  380 	clr	_P1_6
                                    381 ;	iic.c:33: __nop(); __nop();
      0000D9 00               [12]  382 	nop	
      0000DA 00               [12]  383 	nop	
                                    384 ;	iic.c:34: IIC_SCL = 1;
                                    385 ;	assignBit
      0000DB D2 97            [12]  386 	setb	_P1_7
                                    387 ;	iic.c:35: }
      0000DD 22               [24]  388 	ret
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'iic_nack'
                                    391 ;------------------------------------------------------------
                                    392 ;	iic.c:37: void iic_nack(void) {
                                    393 ;	-----------------------------------------
                                    394 ;	 function iic_nack
                                    395 ;	-----------------------------------------
      0000DE                        396 _iic_nack:
                                    397 ;	iic.c:38: IIC_SCL = 0;
                                    398 ;	assignBit
      0000DE C2 97            [12]  399 	clr	_P1_7
                                    400 ;	iic.c:39: __nop(); __nop();
      0000E0 00               [12]  401 	nop	
      0000E1 00               [12]  402 	nop	
                                    403 ;	iic.c:40: IIC_SDA = 1;
                                    404 ;	assignBit
      0000E2 D2 96            [12]  405 	setb	_P1_6
                                    406 ;	iic.c:41: __nop(); __nop();
      0000E4 00               [12]  407 	nop	
      0000E5 00               [12]  408 	nop	
                                    409 ;	iic.c:42: IIC_SCL = 1;
                                    410 ;	assignBit
      0000E6 D2 97            [12]  411 	setb	_P1_7
                                    412 ;	iic.c:43: }
      0000E8 22               [24]  413 	ret
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'iic_read_ack'
                                    416 ;------------------------------------------------------------
                                    417 ;	iic.c:45: uint8_t iic_read_ack(void)
                                    418 ;	-----------------------------------------
                                    419 ;	 function iic_read_ack
                                    420 ;	-----------------------------------------
      0000E9                        421 _iic_read_ack:
                                    422 ;	iic.c:47: IIC_SCL = 0;
                                    423 ;	assignBit
      0000E9 C2 97            [12]  424 	clr	_P1_7
                                    425 ;	iic.c:48: IIC_SDA = 1;
                                    426 ;	assignBit
      0000EB D2 96            [12]  427 	setb	_P1_6
                                    428 ;	iic.c:49: __nop(); __nop();
      0000ED 00               [12]  429 	nop	
      0000EE 00               [12]  430 	nop	
                                    431 ;	iic.c:50: IIC_SCL = 1;
                                    432 ;	assignBit
      0000EF D2 97            [12]  433 	setb	_P1_7
                                    434 ;	iic.c:51: __nop(); __nop();
      0000F1 00               [12]  435 	nop	
      0000F2 00               [12]  436 	nop	
                                    437 ;	iic.c:52: return IIC_SDA;
      0000F3 A2 96            [12]  438 	mov	c,_P1_6
      0000F5 E4               [12]  439 	clr	a
      0000F6 33               [12]  440 	rlc	a
      0000F7 F5 82            [12]  441 	mov	dpl,a
                                    442 ;	iic.c:53: }
      0000F9 22               [24]  443 	ret
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
      0000FA                        454 _iic_send_byte:
      0000FA AF 82            [24]  455 	mov	r7,dpl
                                    456 ;	iic.c:58: for(i=0; i<8; i++)
      0000FC 7E 00            [12]  457 	mov	r6,#0x00
      0000FE                        458 00102$:
                                    459 ;	iic.c:60: IIC_SCL = 0;
                                    460 ;	assignBit
      0000FE C2 97            [12]  461 	clr	_P1_7
                                    462 ;	iic.c:61: __nop(); __nop();
      000100 00               [12]  463 	nop	
      000101 00               [12]  464 	nop	
                                    465 ;	iic.c:62: IIC_SDA = (data << i) & 0x80;
      000102 8F 04            [24]  466 	mov	ar4,r7
      000104 7D 00            [12]  467 	mov	r5,#0x00
      000106 8E F0            [24]  468 	mov	b,r6
      000108 05 F0            [12]  469 	inc	b
      00010A 80 06            [24]  470 	sjmp	00112$
      00010C                        471 00111$:
      00010C EC               [12]  472 	mov	a,r4
      00010D 2C               [12]  473 	add	a,r4
      00010E FC               [12]  474 	mov	r4,a
      00010F ED               [12]  475 	mov	a,r5
      000110 33               [12]  476 	rlc	a
      000111 FD               [12]  477 	mov	r5,a
      000112                        478 00112$:
      000112 D5 F0 F7         [24]  479 	djnz	b,00111$
      000115 EC               [12]  480 	mov	a,r4
      000116 23               [12]  481 	rl	a
      000117 54 01            [12]  482 	anl	a,#0x01
      000119 FD               [12]  483 	mov	r5,a
      00011A 24 FF            [12]  484 	add	a,#0xff
      00011C 92 96            [24]  485 	mov	_P1_6,c
                                    486 ;	iic.c:63: __nop(); __nop();
      00011E 00               [12]  487 	nop	
      00011F 00               [12]  488 	nop	
                                    489 ;	iic.c:64: IIC_SCL = 1;
                                    490 ;	assignBit
      000120 D2 97            [12]  491 	setb	_P1_7
                                    492 ;	iic.c:58: for(i=0; i<8; i++)
      000122 0E               [12]  493 	inc	r6
      000123 BE 08 00         [24]  494 	cjne	r6,#0x08,00113$
      000126                        495 00113$:
      000126 40 D6            [24]  496 	jc	00102$
                                    497 ;	iic.c:66: }
      000128 22               [24]  498 	ret
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'iic_read_byte'
                                    501 ;------------------------------------------------------------
                                    502 ;i                         Allocated to registers r6 
                                    503 ;data                      Allocated to registers r5 
                                    504 ;------------------------------------------------------------
                                    505 ;	iic.c:68: uint8_t iic_read_byte(void)
                                    506 ;	-----------------------------------------
                                    507 ;	 function iic_read_byte
                                    508 ;	-----------------------------------------
      000129                        509 _iic_read_byte:
                                    510 ;	iic.c:71: uint8_t data = 0x00;
      000129 7F 00            [12]  511 	mov	r7,#0x00
                                    512 ;	iic.c:72: for(i=0; i<8; i++)
      00012B 7E 00            [12]  513 	mov	r6,#0x00
      00012D                        514 00102$:
                                    515 ;	iic.c:74: IIC_SCL = 0;
                                    516 ;	assignBit
      00012D C2 97            [12]  517 	clr	_P1_7
                                    518 ;	iic.c:76: IIC_SDA = 1;
                                    519 ;	assignBit
      00012F D2 96            [12]  520 	setb	_P1_6
                                    521 ;	iic.c:77: __nop(); __nop();
      000131 00               [12]  522 	nop	
      000132 00               [12]  523 	nop	
                                    524 ;	iic.c:78: data <<= 1;
      000133 8F 05            [24]  525 	mov	ar5,r7
      000135 ED               [12]  526 	mov	a,r5
      000136 2D               [12]  527 	add	a,r5
      000137 FD               [12]  528 	mov	r5,a
                                    529 ;	iic.c:79: IIC_SCL = 1;
                                    530 ;	assignBit
      000138 D2 97            [12]  531 	setb	_P1_7
                                    532 ;	iic.c:80: __nop(); __nop();
      00013A 00               [12]  533 	nop	
      00013B 00               [12]  534 	nop	
                                    535 ;	iic.c:81: data |= IIC_SDA;
      00013C A2 96            [12]  536 	mov	c,_P1_6
      00013E E4               [12]  537 	clr	a
      00013F 33               [12]  538 	rlc	a
      000140 FC               [12]  539 	mov	r4,a
      000141 4D               [12]  540 	orl	a,r5
      000142 FF               [12]  541 	mov	r7,a
                                    542 ;	iic.c:72: for(i=0; i<8; i++)
      000143 0E               [12]  543 	inc	r6
      000144 BE 08 00         [24]  544 	cjne	r6,#0x08,00117$
      000147                        545 00117$:
      000147 40 E4            [24]  546 	jc	00102$
                                    547 ;	iic.c:83: return data;
      000149 8F 82            [24]  548 	mov	dpl,r7
                                    549 ;	iic.c:84: }
      00014B 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'iic_single_byte_read'
                                    553 ;------------------------------------------------------------
                                    554 ;registerAddress           Allocated with name '_iic_single_byte_read_PARM_2'
                                    555 ;data                      Allocated with name '_iic_single_byte_read_PARM_3'
                                    556 ;deviceAddress             Allocated to registers r7 
                                    557 ;------------------------------------------------------------
                                    558 ;	iic.c:86: uint8_t iic_single_byte_read(uint8_t deviceAddress, uint8_t registerAddress, uint8_t *data)
                                    559 ;	-----------------------------------------
                                    560 ;	 function iic_single_byte_read
                                    561 ;	-----------------------------------------
      00014C                        562 _iic_single_byte_read:
      00014C AF 82            [24]  563 	mov	r7,dpl
                                    564 ;	iic.c:88: iic_start();
      00014E C0 07            [24]  565 	push	ar7
      000150 12 00 BB         [24]  566 	lcall	_iic_start
      000153 D0 07            [24]  567 	pop	ar7
                                    568 ;	iic.c:89: iic_send_byte(deviceAddress);
      000155 8F 82            [24]  569 	mov	dpl,r7
      000157 C0 07            [24]  570 	push	ar7
      000159 12 00 FA         [24]  571 	lcall	_iic_send_byte
                                    572 ;	iic.c:90: if(iic_read_ack() == IIC_NACK)
      00015C 12 00 E9         [24]  573 	lcall	_iic_read_ack
      00015F AE 82            [24]  574 	mov	r6,dpl
      000161 D0 07            [24]  575 	pop	ar7
      000163 BE 01 04         [24]  576 	cjne	r6,#0x01,00102$
                                    577 ;	iic.c:92: return 1;
      000166 75 82 01         [24]  578 	mov	dpl,#0x01
      000169 22               [24]  579 	ret
      00016A                        580 00102$:
                                    581 ;	iic.c:94: iic_send_byte(registerAddress);
      00016A 85 08 82         [24]  582 	mov	dpl,_iic_single_byte_read_PARM_2
      00016D C0 07            [24]  583 	push	ar7
      00016F 12 00 FA         [24]  584 	lcall	_iic_send_byte
                                    585 ;	iic.c:95: if(iic_read_ack() == IIC_NACK)
      000172 12 00 E9         [24]  586 	lcall	_iic_read_ack
      000175 AE 82            [24]  587 	mov	r6,dpl
      000177 D0 07            [24]  588 	pop	ar7
      000179 BE 01 04         [24]  589 	cjne	r6,#0x01,00104$
                                    590 ;	iic.c:97: return 2;
      00017C 75 82 02         [24]  591 	mov	dpl,#0x02
      00017F 22               [24]  592 	ret
      000180                        593 00104$:
                                    594 ;	iic.c:99: iic_start();
      000180 C0 07            [24]  595 	push	ar7
      000182 12 00 BB         [24]  596 	lcall	_iic_start
      000185 D0 07            [24]  597 	pop	ar7
                                    598 ;	iic.c:100: iic_send_byte(deviceAddress | 0x01);
      000187 43 07 01         [24]  599 	orl	ar7,#0x01
      00018A 8F 82            [24]  600 	mov	dpl,r7
      00018C 12 00 FA         [24]  601 	lcall	_iic_send_byte
                                    602 ;	iic.c:101: if(iic_read_ack() == IIC_NACK)
      00018F 12 00 E9         [24]  603 	lcall	_iic_read_ack
      000192 AF 82            [24]  604 	mov	r7,dpl
      000194 BF 01 04         [24]  605 	cjne	r7,#0x01,00106$
                                    606 ;	iic.c:103: return 3;
      000197 75 82 03         [24]  607 	mov	dpl,#0x03
      00019A 22               [24]  608 	ret
      00019B                        609 00106$:
                                    610 ;	iic.c:105: *data = iic_read_byte();
      00019B AD 09            [24]  611 	mov	r5,_iic_single_byte_read_PARM_3
      00019D AE 0A            [24]  612 	mov	r6,(_iic_single_byte_read_PARM_3 + 1)
      00019F AF 0B            [24]  613 	mov	r7,(_iic_single_byte_read_PARM_3 + 2)
      0001A1 C0 07            [24]  614 	push	ar7
      0001A3 C0 06            [24]  615 	push	ar6
      0001A5 C0 05            [24]  616 	push	ar5
      0001A7 12 01 29         [24]  617 	lcall	_iic_read_byte
      0001AA AC 82            [24]  618 	mov	r4,dpl
      0001AC D0 05            [24]  619 	pop	ar5
      0001AE D0 06            [24]  620 	pop	ar6
      0001B0 D0 07            [24]  621 	pop	ar7
      0001B2 8D 82            [24]  622 	mov	dpl,r5
      0001B4 8E 83            [24]  623 	mov	dph,r6
      0001B6 8F F0            [24]  624 	mov	b,r7
      0001B8 EC               [12]  625 	mov	a,r4
      0001B9 12 02 0B         [24]  626 	lcall	__gptrput
                                    627 ;	iic.c:106: iic_nack();
      0001BC 12 00 DE         [24]  628 	lcall	_iic_nack
                                    629 ;	iic.c:107: iic_stop();
      0001BF 12 00 C8         [24]  630 	lcall	_iic_stop
                                    631 ;	iic.c:108: return 0;
      0001C2 75 82 00         [24]  632 	mov	dpl,#0x00
                                    633 ;	iic.c:109: }
      0001C5 22               [24]  634 	ret
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'iic_single_byte_write'
                                    637 ;------------------------------------------------------------
                                    638 ;registerAddress           Allocated with name '_iic_single_byte_write_PARM_2'
                                    639 ;data                      Allocated with name '_iic_single_byte_write_PARM_3'
                                    640 ;deviceAddress             Allocated to registers r7 
                                    641 ;------------------------------------------------------------
                                    642 ;	iic.c:111: uint8_t iic_single_byte_write(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data)
                                    643 ;	-----------------------------------------
                                    644 ;	 function iic_single_byte_write
                                    645 ;	-----------------------------------------
      0001C6                        646 _iic_single_byte_write:
      0001C6 AF 82            [24]  647 	mov	r7,dpl
                                    648 ;	iic.c:113: iic_start();
      0001C8 C0 07            [24]  649 	push	ar7
      0001CA 12 00 BB         [24]  650 	lcall	_iic_start
      0001CD D0 07            [24]  651 	pop	ar7
                                    652 ;	iic.c:114: iic_send_byte(deviceAddress);
      0001CF 8F 82            [24]  653 	mov	dpl,r7
      0001D1 12 00 FA         [24]  654 	lcall	_iic_send_byte
                                    655 ;	iic.c:115: if(iic_read_ack() == IIC_NACK)
      0001D4 12 00 E9         [24]  656 	lcall	_iic_read_ack
      0001D7 AF 82            [24]  657 	mov	r7,dpl
      0001D9 BF 01 04         [24]  658 	cjne	r7,#0x01,00102$
                                    659 ;	iic.c:117: return 1;
      0001DC 75 82 01         [24]  660 	mov	dpl,#0x01
      0001DF 22               [24]  661 	ret
      0001E0                        662 00102$:
                                    663 ;	iic.c:119: iic_send_byte(registerAddress);
      0001E0 85 0C 82         [24]  664 	mov	dpl,_iic_single_byte_write_PARM_2
      0001E3 12 00 FA         [24]  665 	lcall	_iic_send_byte
                                    666 ;	iic.c:120: if(iic_read_ack() == IIC_NACK)
      0001E6 12 00 E9         [24]  667 	lcall	_iic_read_ack
      0001E9 AF 82            [24]  668 	mov	r7,dpl
      0001EB BF 01 04         [24]  669 	cjne	r7,#0x01,00104$
                                    670 ;	iic.c:122: return 2;
      0001EE 75 82 02         [24]  671 	mov	dpl,#0x02
      0001F1 22               [24]  672 	ret
      0001F2                        673 00104$:
                                    674 ;	iic.c:124: iic_send_byte(data);
      0001F2 85 0D 82         [24]  675 	mov	dpl,_iic_single_byte_write_PARM_3
      0001F5 12 00 FA         [24]  676 	lcall	_iic_send_byte
                                    677 ;	iic.c:125: if(iic_read_ack() == IIC_NACK)
      0001F8 12 00 E9         [24]  678 	lcall	_iic_read_ack
      0001FB AF 82            [24]  679 	mov	r7,dpl
      0001FD BF 01 04         [24]  680 	cjne	r7,#0x01,00106$
                                    681 ;	iic.c:127: return 3;
      000200 75 82 03         [24]  682 	mov	dpl,#0x03
      000203 22               [24]  683 	ret
      000204                        684 00106$:
                                    685 ;	iic.c:129: iic_stop();
      000204 12 00 C8         [24]  686 	lcall	_iic_stop
                                    687 ;	iic.c:130: return 0;
      000207 75 82 00         [24]  688 	mov	dpl,#0x00
                                    689 ;	iic.c:131: }
      00020A 22               [24]  690 	ret
                                    691 	.area CSEG    (CODE)
                                    692 	.area CONST   (CODE)
                                    693 	.area XINIT   (CODE)
                                    694 	.area CABS    (ABS,CODE)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delay_ms
                                     13 	.globl _ds1307_from_bcd
                                     14 	.globl _ds1307_to_bcd
                                     15 	.globl _ds1307_GetTemperature
                                     16 	.globl _ds1307_Init
                                     17 	.globl _lcd_BackLight
                                     18 	.globl _lcd_GoToXY
                                     19 	.globl _lcd_GoToLineTwo
                                     20 	.globl _lcd_DisplayString
                                     21 	.globl _lcd_Writedata
                                     22 	.globl _lcd_Init
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _PS
                                     32 	.globl _PT1
                                     33 	.globl _PX1
                                     34 	.globl _PT0
                                     35 	.globl _PX0
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD
                                     43 	.globl _RXD
                                     44 	.globl _P3_7
                                     45 	.globl _P3_6
                                     46 	.globl _P3_5
                                     47 	.globl _P3_4
                                     48 	.globl _P3_3
                                     49 	.globl _P3_2
                                     50 	.globl _P3_1
                                     51 	.globl _P3_0
                                     52 	.globl _EA
                                     53 	.globl _ES
                                     54 	.globl _ET1
                                     55 	.globl _EX1
                                     56 	.globl _ET0
                                     57 	.globl _EX0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _SM0
                                     67 	.globl _SM1
                                     68 	.globl _SM2
                                     69 	.globl _REN
                                     70 	.globl _TB8
                                     71 	.globl _RB8
                                     72 	.globl _TI
                                     73 	.globl _RI
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _TF1
                                     83 	.globl _TR1
                                     84 	.globl _TF0
                                     85 	.globl _TR0
                                     86 	.globl _IE1
                                     87 	.globl _IT1
                                     88 	.globl _IE0
                                     89 	.globl _IT0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _B
                                     99 	.globl _ACC
                                    100 	.globl _PSW
                                    101 	.globl _IP
                                    102 	.globl _P3
                                    103 	.globl _IE
                                    104 	.globl _P2
                                    105 	.globl _SBUF
                                    106 	.globl _SCON
                                    107 	.globl _P1
                                    108 	.globl _TH1
                                    109 	.globl _TH0
                                    110 	.globl _TL1
                                    111 	.globl _TL0
                                    112 	.globl _TMOD
                                    113 	.globl _TCON
                                    114 	.globl _PCON
                                    115 	.globl _DPH
                                    116 	.globl _DPL
                                    117 	.globl _SP
                                    118 	.globl _P0
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
      000008                        234 _main_temp_65536_25:
      000008                        235 	.ds 2
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable items in internal ram 
                                    238 ;--------------------------------------------------------
                                    239 ;--------------------------------------------------------
                                    240 ; Stack segment in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	SSEG
      000021                        243 __start__stack:
      000021                        244 	.ds	1
                                    245 
                                    246 ;--------------------------------------------------------
                                    247 ; indirectly addressable internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area ISEG    (DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area IABS    (ABS,DATA)
                                    254 	.area IABS    (ABS,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; bit data
                                    257 ;--------------------------------------------------------
                                    258 	.area BSEG    (BIT)
                                    259 ;--------------------------------------------------------
                                    260 ; paged external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area PSEG    (PAG,XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XSEG    (XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XABS    (ABS,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external initialized ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XISEG   (XDATA)
                                    275 	.area HOME    (CODE)
                                    276 	.area GSINIT0 (CODE)
                                    277 	.area GSINIT1 (CODE)
                                    278 	.area GSINIT2 (CODE)
                                    279 	.area GSINIT3 (CODE)
                                    280 	.area GSINIT4 (CODE)
                                    281 	.area GSINIT5 (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area CSEG    (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; interrupt vector 
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
      000000                        289 __interrupt_vect:
      000000 02 00 06         [24]  290 	ljmp	__sdcc_gsinit_startup
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.globl __sdcc_gsinit_startup
                                    299 	.globl __sdcc_program_startup
                                    300 	.globl __start__stack
                                    301 	.globl __mcs51_genXINIT
                                    302 	.globl __mcs51_genXRAMCLEAR
                                    303 	.globl __mcs51_genRAMCLEAR
                                    304 	.area GSFINAL (CODE)
      00006E 02 00 03         [24]  305 	ljmp	__sdcc_program_startup
                                    306 ;--------------------------------------------------------
                                    307 ; Home
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
                                    310 	.area HOME    (CODE)
      000003                        311 __sdcc_program_startup:
      000003 02 00 71         [24]  312 	ljmp	_main
                                    313 ;	return from main will return to caller
                                    314 ;--------------------------------------------------------
                                    315 ; code
                                    316 ;--------------------------------------------------------
                                    317 	.area CSEG    (CODE)
                                    318 ;------------------------------------------------------------
                                    319 ;Allocation info for local variables in function 'main'
                                    320 ;------------------------------------------------------------
                                    321 ;sec                       Allocated to registers r7 
                                    322 ;min                       Allocated to registers r6 
                                    323 ;hour                      Allocated to registers 
                                    324 ;temp                      Allocated with name '_main_temp_65536_25'
                                    325 ;bcd                       Allocated to registers r3 r4 
                                    326 ;hex                       Allocated to registers r1 r2 
                                    327 ;------------------------------------------------------------
                                    328 ;	main.c:8: void main() 
                                    329 ;	-----------------------------------------
                                    330 ;	 function main
                                    331 ;	-----------------------------------------
      000071                        332 _main:
                           000007   333 	ar7 = 0x07
                           000006   334 	ar6 = 0x06
                           000005   335 	ar5 = 0x05
                           000004   336 	ar4 = 0x04
                           000003   337 	ar3 = 0x03
                           000002   338 	ar2 = 0x02
                           000001   339 	ar1 = 0x01
                           000000   340 	ar0 = 0x00
                                    341 ;	main.c:15: sec = 00;
      000071 7F 00            [12]  342 	mov	r7,#0x00
                                    343 ;	main.c:16: min = 40;
      000073 7E 28            [12]  344 	mov	r6,#0x28
                                    345 ;	main.c:23: lcd_Init();
      000075 C0 07            [24]  346 	push	ar7
      000077 C0 06            [24]  347 	push	ar6
      000079 12 01 B8         [24]  348 	lcall	_lcd_Init
                                    349 ;	main.c:26: ds1307_Init();
      00007C 12 05 07         [24]  350 	lcall	_ds1307_Init
                                    351 ;	main.c:27: P1_6 = 1;
                                    352 ;	assignBit
      00007F D2 96            [12]  353 	setb	_P1_6
                                    354 ;	main.c:35: lcd_DisplayString("Time: ");
      000081 90 07 BC         [24]  355 	mov	dptr,#___str_0
      000084 75 F0 80         [24]  356 	mov	b,#0x80
      000087 12 03 1C         [24]  357 	lcall	_lcd_DisplayString
                                    358 ;	main.c:38: lcd_GoToLineTwo();
      00008A 12 02 EA         [24]  359 	lcall	_lcd_GoToLineTwo
                                    360 ;	main.c:39: lcd_DisplayString("Temp: ");
      00008D 90 07 C3         [24]  361 	mov	dptr,#___str_1
      000090 75 F0 80         [24]  362 	mov	b,#0x80
      000093 12 03 1C         [24]  363 	lcall	_lcd_DisplayString
      000096 D0 06            [24]  364 	pop	ar6
      000098 D0 07            [24]  365 	pop	ar7
                                    366 ;	main.c:42: while(1)
      00009A 7D 12            [12]  367 	mov	r5,#0x12
      00009C                        368 00109$:
                                    369 ;	main.c:44: if (!P1_6)
      00009C 20 96 17         [24]  370 	jb	_P1_6,00102$
                                    371 ;	main.c:46: temp = ds1307_GetTemperature();
      00009F C0 07            [24]  372 	push	ar7
      0000A1 C0 06            [24]  373 	push	ar6
      0000A3 C0 05            [24]  374 	push	ar5
      0000A5 12 04 97         [24]  375 	lcall	_ds1307_GetTemperature
      0000A8 85 82 08         [24]  376 	mov	_main_temp_65536_25,dpl
      0000AB 85 83 09         [24]  377 	mov	(_main_temp_65536_25 + 1),dph
      0000AE D0 05            [24]  378 	pop	ar5
      0000B0 D0 06            [24]  379 	pop	ar6
      0000B2 D0 07            [24]  380 	pop	ar7
      0000B4 80 06            [24]  381 	sjmp	00103$
      0000B6                        382 00102$:
                                    383 ;	main.c:50: temp = 25;
      0000B6 75 08 19         [24]  384 	mov	_main_temp_65536_25,#0x19
      0000B9 75 09 00         [24]  385 	mov	(_main_temp_65536_25 + 1),#0x00
      0000BC                        386 00103$:
                                    387 ;	main.c:52: lcd_BackLight(1);
                                    388 ;	assignBit
      0000BC D2 00            [12]  389 	setb	_lcd_BackLight_PARM_1
      0000BE C0 07            [24]  390 	push	ar7
      0000C0 C0 06            [24]  391 	push	ar6
      0000C2 C0 05            [24]  392 	push	ar5
      0000C4 12 01 AD         [24]  393 	lcall	_lcd_BackLight
                                    394 ;	main.c:53: lcd_GoToXY(0,6); 
      0000C7 75 0F 06         [24]  395 	mov	_lcd_GoToXY_PARM_2,#0x06
      0000CA 75 82 00         [24]  396 	mov	dpl,#0x00
      0000CD 12 02 FC         [24]  397 	lcall	_lcd_GoToXY
      0000D0 D0 05            [24]  398 	pop	ar5
                                    399 ;	main.c:54: hex = ds1307_from_bcd(hour);       
      0000D2 8D 01            [24]  400 	mov	ar1,r5
      0000D4 7A 00            [12]  401 	mov	r2,#0x00
      0000D6 89 82            [24]  402 	mov	dpl,r1
      0000D8 8A 83            [24]  403 	mov	dph,r2
      0000DA C0 05            [24]  404 	push	ar5
      0000DC 12 05 FD         [24]  405 	lcall	_ds1307_from_bcd
      0000DF A9 82            [24]  406 	mov	r1,dpl
      0000E1 AA 83            [24]  407 	mov	r2,dph
      0000E3 D0 05            [24]  408 	pop	ar5
      0000E5 D0 06            [24]  409 	pop	ar6
      0000E7 D0 07            [24]  410 	pop	ar7
                                    411 ;	main.c:55: lcd_Writedata(((hex & 0xf0)>>4)+0x30);
      0000E9 89 00            [24]  412 	mov	ar0,r1
      0000EB 53 00 F0         [24]  413 	anl	ar0,#0xf0
      0000EE E4               [12]  414 	clr	a
      0000EF C8               [12]  415 	xch	a,r0
      0000F0 C4               [12]  416 	swap	a
      0000F1 54 0F            [12]  417 	anl	a,#0x0f
      0000F3 68               [12]  418 	xrl	a,r0
      0000F4 C8               [12]  419 	xch	a,r0
      0000F5 54 0F            [12]  420 	anl	a,#0x0f
      0000F7 C8               [12]  421 	xch	a,r0
      0000F8 68               [12]  422 	xrl	a,r0
      0000F9 C8               [12]  423 	xch	a,r0
      0000FA 30 E3 02         [24]  424 	jnb	acc.3,00130$
      0000FD 44 F0            [12]  425 	orl	a,#0xf0
      0000FF                        426 00130$:
      0000FF 74 30            [12]  427 	mov	a,#0x30
      000101 28               [12]  428 	add	a,r0
      000102 F5 82            [12]  429 	mov	dpl,a
      000104 C0 07            [24]  430 	push	ar7
      000106 C0 06            [24]  431 	push	ar6
      000108 C0 05            [24]  432 	push	ar5
      00010A C0 02            [24]  433 	push	ar2
      00010C C0 01            [24]  434 	push	ar1
      00010E 12 02 5B         [24]  435 	lcall	_lcd_Writedata
      000111 D0 01            [24]  436 	pop	ar1
      000113 D0 02            [24]  437 	pop	ar2
                                    438 ;	main.c:56: lcd_Writedata((hex & 0x0f)+0x30);
      000115 74 0F            [12]  439 	mov	a,#0x0f
      000117 59               [12]  440 	anl	a,r1
      000118 24 30            [12]  441 	add	a,#0x30
      00011A F5 82            [12]  442 	mov	dpl,a
      00011C 12 02 5B         [24]  443 	lcall	_lcd_Writedata
                                    444 ;	main.c:57: lcd_Writedata(0x32);
      00011F 75 82 32         [24]  445 	mov	dpl,#0x32
      000122 12 02 5B         [24]  446 	lcall	_lcd_Writedata
                                    447 ;	main.c:59: bcd = ds1307_to_bcd(temp);
      000125 85 08 82         [24]  448 	mov	dpl,_main_temp_65536_25
      000128 85 09 83         [24]  449 	mov	dph,(_main_temp_65536_25 + 1)
      00012B 12 05 B2         [24]  450 	lcall	_ds1307_to_bcd
      00012E AB 82            [24]  451 	mov	r3,dpl
      000130 AC 83            [24]  452 	mov	r4,dph
                                    453 ;	main.c:60: lcd_GoToXY(1,6);
      000132 75 0F 06         [24]  454 	mov	_lcd_GoToXY_PARM_2,#0x06
      000135 75 82 01         [24]  455 	mov	dpl,#0x01
      000138 C0 04            [24]  456 	push	ar4
      00013A C0 03            [24]  457 	push	ar3
      00013C 12 02 FC         [24]  458 	lcall	_lcd_GoToXY
      00013F D0 03            [24]  459 	pop	ar3
      000141 D0 04            [24]  460 	pop	ar4
      000143 D0 05            [24]  461 	pop	ar5
      000145 D0 06            [24]  462 	pop	ar6
      000147 D0 07            [24]  463 	pop	ar7
                                    464 ;	main.c:61: lcd_Writedata(((bcd & 0xf0)>>4)+0x30);
      000149 8B 01            [24]  465 	mov	ar1,r3
      00014B 53 01 F0         [24]  466 	anl	ar1,#0xf0
      00014E E4               [12]  467 	clr	a
      00014F C9               [12]  468 	xch	a,r1
      000150 C4               [12]  469 	swap	a
      000151 54 0F            [12]  470 	anl	a,#0x0f
      000153 69               [12]  471 	xrl	a,r1
      000154 C9               [12]  472 	xch	a,r1
      000155 54 0F            [12]  473 	anl	a,#0x0f
      000157 C9               [12]  474 	xch	a,r1
      000158 69               [12]  475 	xrl	a,r1
      000159 C9               [12]  476 	xch	a,r1
      00015A 30 E3 02         [24]  477 	jnb	acc.3,00131$
      00015D 44 F0            [12]  478 	orl	a,#0xf0
      00015F                        479 00131$:
      00015F 74 30            [12]  480 	mov	a,#0x30
      000161 29               [12]  481 	add	a,r1
      000162 F5 82            [12]  482 	mov	dpl,a
      000164 C0 07            [24]  483 	push	ar7
      000166 C0 06            [24]  484 	push	ar6
      000168 C0 05            [24]  485 	push	ar5
      00016A C0 04            [24]  486 	push	ar4
      00016C C0 03            [24]  487 	push	ar3
      00016E 12 02 5B         [24]  488 	lcall	_lcd_Writedata
      000171 D0 03            [24]  489 	pop	ar3
      000173 D0 04            [24]  490 	pop	ar4
                                    491 ;	main.c:62: lcd_Writedata((bcd & 0x0f)+0x30);
      000175 74 0F            [12]  492 	mov	a,#0x0f
      000177 5B               [12]  493 	anl	a,r3
      000178 24 30            [12]  494 	add	a,#0x30
      00017A F5 82            [12]  495 	mov	dpl,a
      00017C 12 02 5B         [24]  496 	lcall	_lcd_Writedata
                                    497 ;	main.c:63: lcd_Writedata(0x43);  
      00017F 75 82 43         [24]  498 	mov	dpl,#0x43
      000182 12 02 5B         [24]  499 	lcall	_lcd_Writedata
      000185 D0 05            [24]  500 	pop	ar5
      000187 D0 06            [24]  501 	pop	ar6
      000189 D0 07            [24]  502 	pop	ar7
                                    503 ;	main.c:64: if (sec == 59)
      00018B BF 3B 03         [24]  504 	cjne	r7,#0x3b,00105$
                                    505 ;	main.c:66: sec = 0;
      00018E 7F 00            [12]  506 	mov	r7,#0x00
                                    507 ;	main.c:67: min ++;
      000190 0E               [12]  508 	inc	r6
      000191                        509 00105$:
                                    510 ;	main.c:69: if (min == 59)
      000191 BE 3B 03         [24]  511 	cjne	r6,#0x3b,00107$
                                    512 ;	main.c:71: min = 0;
      000194 7E 00            [12]  513 	mov	r6,#0x00
                                    514 ;	main.c:72: hour ++;
      000196 0D               [12]  515 	inc	r5
      000197                        516 00107$:
                                    517 ;	main.c:74: sec ++;
      000197 0F               [12]  518 	inc	r7
                                    519 ;	main.c:75: delay_ms(1000);     
      000198 90 03 E8         [24]  520 	mov	dptr,#0x03e8
      00019B C0 07            [24]  521 	push	ar7
      00019D C0 06            [24]  522 	push	ar6
      00019F C0 05            [24]  523 	push	ar5
      0001A1 12 06 44         [24]  524 	lcall	_delay_ms
      0001A4 D0 05            [24]  525 	pop	ar5
      0001A6 D0 06            [24]  526 	pop	ar6
      0001A8 D0 07            [24]  527 	pop	ar7
                                    528 ;	main.c:78: } 
      0001AA 02 00 9C         [24]  529 	ljmp	00109$
                                    530 	.area CSEG    (CODE)
                                    531 	.area CONST   (CODE)
                                    532 	.area CONST   (CODE)
      0007BC                        533 ___str_0:
      0007BC 54 69 6D 65 3A 20      534 	.ascii "Time: "
      0007C2 00                     535 	.db 0x00
                                    536 	.area CSEG    (CODE)
                                    537 	.area CONST   (CODE)
      0007C3                        538 ___str_1:
      0007C3 54 65 6D 70 3A 20      539 	.ascii "Temp: "
      0007C9 00                     540 	.db 0x00
                                    541 	.area CSEG    (CODE)
                                    542 	.area XINIT   (CODE)
                                    543 	.area CABS    (ABS,CODE)

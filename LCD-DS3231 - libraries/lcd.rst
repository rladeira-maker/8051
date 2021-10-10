                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _iic_single_byte_write
                                     12 	.globl _delay_us
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _lcd_BackLight_PARM_1
                                    110 	.globl _lcd_DisplayRtcDate_PARM_3
                                    111 	.globl _lcd_DisplayRtcDate_PARM_2
                                    112 	.globl _lcd_DisplayRtcTime_PARM_3
                                    113 	.globl _lcd_DisplayRtcTime_PARM_2
                                    114 	.globl _lcd_GoToXY_PARM_2
                                    115 	.globl _backlight
                                    116 	.globl _en
                                    117 	.globl _rw
                                    118 	.globl _rs
                                    119 	.globl _dataport
                                    120 	.globl _lcd_BackLight
                                    121 	.globl _lcd_Init
                                    122 	.globl _lcd_WriteCmd
                                    123 	.globl _lcd_Writedata
                                    124 	.globl _lcd_GoToLineTwo
                                    125 	.globl _lcd_GoToXY
                                    126 	.globl _lcd_DisplayString
                                    127 	.globl _lcd_DisplayRtcTime
                                    128 	.globl _lcd_DisplayRtcDate
                                    129 ;--------------------------------------------------------
                                    130 ; special function registers
                                    131 ;--------------------------------------------------------
                                    132 	.area RSEG    (ABS,DATA)
      000000                        133 	.org 0x0000
                           000080   134 _P0	=	0x0080
                           000081   135 _SP	=	0x0081
                           000082   136 _DPL	=	0x0082
                           000083   137 _DPH	=	0x0083
                           000087   138 _PCON	=	0x0087
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008A   141 _TL0	=	0x008a
                           00008B   142 _TL1	=	0x008b
                           00008C   143 _TH0	=	0x008c
                           00008D   144 _TH1	=	0x008d
                           000090   145 _P1	=	0x0090
                           000098   146 _SCON	=	0x0098
                           000099   147 _SBUF	=	0x0099
                           0000A0   148 _P2	=	0x00a0
                           0000A8   149 _IE	=	0x00a8
                           0000B0   150 _P3	=	0x00b0
                           0000B8   151 _IP	=	0x00b8
                           0000D0   152 _PSW	=	0x00d0
                           0000E0   153 _ACC	=	0x00e0
                           0000F0   154 _B	=	0x00f0
                                    155 ;--------------------------------------------------------
                                    156 ; special function bits
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0_0	=	0x0080
                           000081   161 _P0_1	=	0x0081
                           000082   162 _P0_2	=	0x0082
                           000083   163 _P0_3	=	0x0083
                           000084   164 _P0_4	=	0x0084
                           000085   165 _P0_5	=	0x0085
                           000086   166 _P0_6	=	0x0086
                           000087   167 _P0_7	=	0x0087
                           000088   168 _IT0	=	0x0088
                           000089   169 _IE0	=	0x0089
                           00008A   170 _IT1	=	0x008a
                           00008B   171 _IE1	=	0x008b
                           00008C   172 _TR0	=	0x008c
                           00008D   173 _TF0	=	0x008d
                           00008E   174 _TR1	=	0x008e
                           00008F   175 _TF1	=	0x008f
                           000090   176 _P1_0	=	0x0090
                           000091   177 _P1_1	=	0x0091
                           000092   178 _P1_2	=	0x0092
                           000093   179 _P1_3	=	0x0093
                           000094   180 _P1_4	=	0x0094
                           000095   181 _P1_5	=	0x0095
                           000096   182 _P1_6	=	0x0096
                           000097   183 _P1_7	=	0x0097
                           000098   184 _RI	=	0x0098
                           000099   185 _TI	=	0x0099
                           00009A   186 _RB8	=	0x009a
                           00009B   187 _TB8	=	0x009b
                           00009C   188 _REN	=	0x009c
                           00009D   189 _SM2	=	0x009d
                           00009E   190 _SM1	=	0x009e
                           00009F   191 _SM0	=	0x009f
                           0000A0   192 _P2_0	=	0x00a0
                           0000A1   193 _P2_1	=	0x00a1
                           0000A2   194 _P2_2	=	0x00a2
                           0000A3   195 _P2_3	=	0x00a3
                           0000A4   196 _P2_4	=	0x00a4
                           0000A5   197 _P2_5	=	0x00a5
                           0000A6   198 _P2_6	=	0x00a6
                           0000A7   199 _P2_7	=	0x00a7
                           0000A8   200 _EX0	=	0x00a8
                           0000A9   201 _ET0	=	0x00a9
                           0000AA   202 _EX1	=	0x00aa
                           0000AB   203 _ET1	=	0x00ab
                           0000AC   204 _ES	=	0x00ac
                           0000AF   205 _EA	=	0x00af
                           0000B0   206 _P3_0	=	0x00b0
                           0000B1   207 _P3_1	=	0x00b1
                           0000B2   208 _P3_2	=	0x00b2
                           0000B3   209 _P3_3	=	0x00b3
                           0000B4   210 _P3_4	=	0x00b4
                           0000B5   211 _P3_5	=	0x00b5
                           0000B6   212 _P3_6	=	0x00b6
                           0000B7   213 _P3_7	=	0x00b7
                           0000B0   214 _RXD	=	0x00b0
                           0000B1   215 _TXD	=	0x00b1
                           0000B2   216 _INT0	=	0x00b2
                           0000B3   217 _INT1	=	0x00b3
                           0000B4   218 _T0	=	0x00b4
                           0000B5   219 _T1	=	0x00b5
                           0000B6   220 _WR	=	0x00b6
                           0000B7   221 _RD	=	0x00b7
                           0000B8   222 _PX0	=	0x00b8
                           0000B9   223 _PT0	=	0x00b9
                           0000BA   224 _PX1	=	0x00ba
                           0000BB   225 _PT1	=	0x00bb
                           0000BC   226 _PS	=	0x00bc
                           0000D0   227 _P	=	0x00d0
                           0000D1   228 _F1	=	0x00d1
                           0000D2   229 _OV	=	0x00d2
                           0000D3   230 _RS0	=	0x00d3
                           0000D4   231 _RS1	=	0x00d4
                           0000D5   232 _F0	=	0x00d5
                           0000D6   233 _AC	=	0x00d6
                           0000D7   234 _CY	=	0x00d7
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable register banks
                                    237 ;--------------------------------------------------------
                                    238 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        239 	.ds 8
                                    240 ;--------------------------------------------------------
                                    241 ; internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area DSEG    (DATA)
      00000F                        244 _dataport::
      00000F                        245 	.ds 1
      000010                        246 _rs::
      000010                        247 	.ds 1
      000011                        248 _rw::
      000011                        249 	.ds 1
      000012                        250 _en::
      000012                        251 	.ds 1
      000013                        252 _backlight::
      000013                        253 	.ds 1
      000014                        254 _lcd_GoToXY_PARM_2:
      000014                        255 	.ds 1
      000015                        256 _lcd_DisplayRtcTime_PARM_2:
      000015                        257 	.ds 1
      000016                        258 _lcd_DisplayRtcTime_PARM_3:
      000016                        259 	.ds 1
      000017                        260 _lcd_DisplayRtcDate_PARM_2:
      000017                        261 	.ds 1
      000018                        262 _lcd_DisplayRtcDate_PARM_3:
      000018                        263 	.ds 1
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable items in internal ram 
                                    266 ;--------------------------------------------------------
                                    267 ;--------------------------------------------------------
                                    268 ; indirectly addressable internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area ISEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
      000000                        280 _lcd_BackLight_PARM_1:
      000000                        281 	.ds 1
                                    282 ;--------------------------------------------------------
                                    283 ; paged external ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area PSEG    (PAG,XDATA)
                                    286 ;--------------------------------------------------------
                                    287 ; external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area XSEG    (XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; absolute external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XABS    (ABS,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; external initialized ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XISEG   (XDATA)
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT0 (CODE)
                                    300 	.area GSINIT1 (CODE)
                                    301 	.area GSINIT2 (CODE)
                                    302 	.area GSINIT3 (CODE)
                                    303 	.area GSINIT4 (CODE)
                                    304 	.area GSINIT5 (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area CSEG    (CODE)
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 ;	lcd.c:13: uint8_t dataport = 0;
      00005F 75 0F 00         [24]  316 	mov	_dataport,#0x00
                                    317 ;	lcd.c:14: uint8_t rs = 1; //P0 do PCF8974
      000062 75 10 01         [24]  318 	mov	_rs,#0x01
                                    319 ;	lcd.c:15: uint8_t rw = 2; //P1 do PCF8974
      000065 75 11 02         [24]  320 	mov	_rw,#0x02
                                    321 ;	lcd.c:16: uint8_t en = 4; //P2 do PCF8974
      000068 75 12 04         [24]  322 	mov	_en,#0x04
                                    323 ;	lcd.c:17: uint8_t backlight = 8; //P3 do PCF8974
      00006B 75 13 08         [24]  324 	mov	_backlight,#0x08
                                    325 ;--------------------------------------------------------
                                    326 ; Home
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
                                    329 	.area HOME    (CODE)
                                    330 ;--------------------------------------------------------
                                    331 ; code
                                    332 ;--------------------------------------------------------
                                    333 	.area CSEG    (CODE)
                                    334 ;------------------------------------------------------------
                                    335 ;Allocation info for local variables in function 'lcd_BackLight'
                                    336 ;------------------------------------------------------------
                                    337 ;	lcd.c:29: void lcd_BackLight(__bit a)
                                    338 ;	-----------------------------------------
                                    339 ;	 function lcd_BackLight
                                    340 ;	-----------------------------------------
      0001F3                        341 _lcd_BackLight:
                           000007   342 	ar7 = 0x07
                           000006   343 	ar6 = 0x06
                           000005   344 	ar5 = 0x05
                           000004   345 	ar4 = 0x04
                           000003   346 	ar3 = 0x03
                           000002   347 	ar2 = 0x02
                           000001   348 	ar1 = 0x01
                           000000   349 	ar0 = 0x00
                                    350 ;	lcd.c:31: if (a)
      0001F3 30 00 04         [24]  351 	jnb	_lcd_BackLight_PARM_1,00102$
                                    352 ;	lcd.c:33: backlight = 8;
      0001F6 75 13 08         [24]  353 	mov	_backlight,#0x08
      0001F9 22               [24]  354 	ret
      0001FA                        355 00102$:
                                    356 ;	lcd.c:37: backlight = 0;
      0001FA 75 13 00         [24]  357 	mov	_backlight,#0x00
                                    358 ;	lcd.c:39: }
      0001FD 22               [24]  359 	ret
                                    360 ;------------------------------------------------------------
                                    361 ;Allocation info for local variables in function 'lcd_Init'
                                    362 ;------------------------------------------------------------
                                    363 ;	lcd.c:42: void lcd_Init()
                                    364 ;	-----------------------------------------
                                    365 ;	 function lcd_Init
                                    366 ;	-----------------------------------------
      0001FE                        367 _lcd_Init:
                                    368 ;	lcd.c:44: delay_us(5000);
      0001FE 90 13 88         [24]  369 	mov	dptr,#0x1388
      000201 12 08 54         [24]  370 	lcall	_delay_us
                                    371 ;	lcd.c:45: lcd_WriteCmd(0x02);  //initilize the LCD in 4bit Mode
      000204 75 82 02         [24]  372 	mov	dpl,#0x02
      000207 12 02 22         [24]  373 	lcall	_lcd_WriteCmd
                                    374 ;	lcd.c:46: lcd_WriteCmd(0x28);
      00020A 75 82 28         [24]  375 	mov	dpl,#0x28
      00020D 12 02 22         [24]  376 	lcall	_lcd_WriteCmd
                                    377 ;	lcd.c:47: lcd_WriteCmd(0x0C);  // display ON cursor ON
      000210 75 82 0C         [24]  378 	mov	dpl,#0x0c
      000213 12 02 22         [24]  379 	lcall	_lcd_WriteCmd
                                    380 ;	lcd.c:48: lcd_WriteCmd(0x01);  // clear the LCD
      000216 75 82 01         [24]  381 	mov	dpl,#0x01
      000219 12 02 22         [24]  382 	lcall	_lcd_WriteCmd
                                    383 ;	lcd.c:49: lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
      00021C 75 82 80         [24]  384 	mov	dpl,#0x80
                                    385 ;	lcd.c:51: }
      00021F 02 02 22         [24]  386 	ljmp	_lcd_WriteCmd
                                    387 ;------------------------------------------------------------
                                    388 ;Allocation info for local variables in function 'lcd_WriteCmd'
                                    389 ;------------------------------------------------------------
                                    390 ;a                         Allocated to registers r7 
                                    391 ;error                     Allocated to registers 
                                    392 ;------------------------------------------------------------
                                    393 ;	lcd.c:55: void lcd_WriteCmd( char a)
                                    394 ;	-----------------------------------------
                                    395 ;	 function lcd_WriteCmd
                                    396 ;	-----------------------------------------
      000222                        397 _lcd_WriteCmd:
      000222 AF 82            [24]  398 	mov	r7,dpl
                                    399 ;	lcd.c:58: dataport=(a & 0xf0) | en | backlight;
      000224 8F 05            [24]  400 	mov	ar5,r7
      000226 53 05 F0         [24]  401 	anl	ar5,#0xf0
      000229 7E 00            [12]  402 	mov	r6,#0x00
      00022B AB 12            [24]  403 	mov	r3,_en
      00022D 7C 00            [12]  404 	mov	r4,#0x00
      00022F ED               [12]  405 	mov	a,r5
      000230 42 03            [12]  406 	orl	ar3,a
      000232 EE               [12]  407 	mov	a,r6
      000233 42 04            [12]  408 	orl	ar4,a
      000235 A9 13            [24]  409 	mov	r1,_backlight
      000237 7A 00            [12]  410 	mov	r2,#0x00
      000239 E9               [12]  411 	mov	a,r1
      00023A 42 03            [12]  412 	orl	ar3,a
      00023C EA               [12]  413 	mov	a,r2
      00023D 42 04            [12]  414 	orl	ar4,a
      00023F 8B 0F            [24]  415 	mov	_dataport,r3
                                    416 ;	lcd.c:59: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);        
      000241 85 0F 28         [24]  417 	mov	_iic_single_byte_write_PARM_2,_dataport
      000244 85 0F 29         [24]  418 	mov	_iic_single_byte_write_PARM_3,_dataport
      000247 75 82 4E         [24]  419 	mov	dpl,#0x4e
      00024A C0 07            [24]  420 	push	ar7
      00024C C0 06            [24]  421 	push	ar6
      00024E C0 05            [24]  422 	push	ar5
      000250 12 07 E0         [24]  423 	lcall	_iic_single_byte_write
                                    424 ;	lcd.c:63: delay_us(1);
      000253 90 00 01         [24]  425 	mov	dptr,#0x0001
      000256 12 08 54         [24]  426 	lcall	_delay_us
      000259 D0 05            [24]  427 	pop	ar5
      00025B D0 06            [24]  428 	pop	ar6
                                    429 ;	lcd.c:64: dataport=(a & 0xf0) | backlight;
      00025D AB 13            [24]  430 	mov	r3,_backlight
      00025F 7C 00            [12]  431 	mov	r4,#0x00
      000261 EB               [12]  432 	mov	a,r3
      000262 42 05            [12]  433 	orl	ar5,a
      000264 EC               [12]  434 	mov	a,r4
      000265 42 06            [12]  435 	orl	ar6,a
      000267 8D 0F            [24]  436 	mov	_dataport,r5
                                    437 ;	lcd.c:65: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);   
      000269 85 0F 28         [24]  438 	mov	_iic_single_byte_write_PARM_2,_dataport
      00026C 85 0F 29         [24]  439 	mov	_iic_single_byte_write_PARM_3,_dataport
      00026F 75 82 4E         [24]  440 	mov	dpl,#0x4e
      000272 12 07 E0         [24]  441 	lcall	_iic_single_byte_write
                                    442 ;	lcd.c:67: delay_us(1);                  
      000275 90 00 01         [24]  443 	mov	dptr,#0x0001
      000278 12 08 54         [24]  444 	lcall	_delay_us
      00027B D0 07            [24]  445 	pop	ar7
                                    446 ;	lcd.c:68: dataport=((a<<4) & 0xf0) | en | backlight;
      00027D EF               [12]  447 	mov	a,r7
      00027E C4               [12]  448 	swap	a
      00027F 54 F0            [12]  449 	anl	a,#0xf0
      000281 FF               [12]  450 	mov	r7,a
      000282 33               [12]  451 	rlc	a
      000283 95 E0            [12]  452 	subb	a,acc
      000285 53 07 F0         [24]  453 	anl	ar7,#0xf0
      000288 7E 00            [12]  454 	mov	r6,#0x00
      00028A AC 12            [24]  455 	mov	r4,_en
      00028C 7D 00            [12]  456 	mov	r5,#0x00
      00028E EF               [12]  457 	mov	a,r7
      00028F 42 04            [12]  458 	orl	ar4,a
      000291 EE               [12]  459 	mov	a,r6
      000292 42 05            [12]  460 	orl	ar5,a
      000294 AA 13            [24]  461 	mov	r2,_backlight
      000296 7B 00            [12]  462 	mov	r3,#0x00
      000298 EA               [12]  463 	mov	a,r2
      000299 42 04            [12]  464 	orl	ar4,a
      00029B EB               [12]  465 	mov	a,r3
      00029C 42 05            [12]  466 	orl	ar5,a
      00029E 8C 0F            [24]  467 	mov	_dataport,r4
                                    468 ;	lcd.c:69: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);    
      0002A0 85 0F 28         [24]  469 	mov	_iic_single_byte_write_PARM_2,_dataport
      0002A3 85 0F 29         [24]  470 	mov	_iic_single_byte_write_PARM_3,_dataport
      0002A6 75 82 4E         [24]  471 	mov	dpl,#0x4e
      0002A9 C0 07            [24]  472 	push	ar7
      0002AB C0 06            [24]  473 	push	ar6
      0002AD 12 07 E0         [24]  474 	lcall	_iic_single_byte_write
                                    475 ;	lcd.c:73: delay_us(1);
      0002B0 90 00 01         [24]  476 	mov	dptr,#0x0001
      0002B3 12 08 54         [24]  477 	lcall	_delay_us
      0002B6 D0 06            [24]  478 	pop	ar6
      0002B8 D0 07            [24]  479 	pop	ar7
                                    480 ;	lcd.c:74: dataport = ((a<<4) & 0xf0)| backlight;
      0002BA AC 13            [24]  481 	mov	r4,_backlight
      0002BC 7D 00            [12]  482 	mov	r5,#0x00
      0002BE EC               [12]  483 	mov	a,r4
      0002BF 42 07            [12]  484 	orl	ar7,a
      0002C1 ED               [12]  485 	mov	a,r5
      0002C2 42 06            [12]  486 	orl	ar6,a
      0002C4 8F 0F            [24]  487 	mov	_dataport,r7
                                    488 ;	lcd.c:75: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);  
      0002C6 85 0F 28         [24]  489 	mov	_iic_single_byte_write_PARM_2,_dataport
      0002C9 85 0F 29         [24]  490 	mov	_iic_single_byte_write_PARM_3,_dataport
      0002CC 75 82 4E         [24]  491 	mov	dpl,#0x4e
      0002CF 12 07 E0         [24]  492 	lcall	_iic_single_byte_write
                                    493 ;	lcd.c:77: delay_us(1);
      0002D2 90 00 01         [24]  494 	mov	dptr,#0x0001
                                    495 ;	lcd.c:78: }
      0002D5 02 08 54         [24]  496 	ljmp	_delay_us
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'lcd_Writedata'
                                    499 ;------------------------------------------------------------
                                    500 ;a                         Allocated to registers r7 
                                    501 ;error                     Allocated to registers 
                                    502 ;------------------------------------------------------------
                                    503 ;	lcd.c:82: void lcd_Writedata( char a)
                                    504 ;	-----------------------------------------
                                    505 ;	 function lcd_Writedata
                                    506 ;	-----------------------------------------
      0002D8                        507 _lcd_Writedata:
      0002D8 AF 82            [24]  508 	mov	r7,dpl
                                    509 ;	lcd.c:85: dataport=(a & 0xf0)|en|rs| backlight;
      0002DA 8F 05            [24]  510 	mov	ar5,r7
      0002DC 53 05 F0         [24]  511 	anl	ar5,#0xf0
      0002DF 7E 00            [12]  512 	mov	r6,#0x00
      0002E1 AB 12            [24]  513 	mov	r3,_en
      0002E3 7C 00            [12]  514 	mov	r4,#0x00
      0002E5 ED               [12]  515 	mov	a,r5
      0002E6 42 03            [12]  516 	orl	ar3,a
      0002E8 EE               [12]  517 	mov	a,r6
      0002E9 42 04            [12]  518 	orl	ar4,a
      0002EB A9 10            [24]  519 	mov	r1,_rs
      0002ED 7A 00            [12]  520 	mov	r2,#0x00
      0002EF E9               [12]  521 	mov	a,r1
      0002F0 42 03            [12]  522 	orl	ar3,a
      0002F2 EA               [12]  523 	mov	a,r2
      0002F3 42 04            [12]  524 	orl	ar4,a
      0002F5 A9 13            [24]  525 	mov	r1,_backlight
      0002F7 7A 00            [12]  526 	mov	r2,#0x00
      0002F9 E9               [12]  527 	mov	a,r1
      0002FA 42 03            [12]  528 	orl	ar3,a
      0002FC EA               [12]  529 	mov	a,r2
      0002FD 42 04            [12]  530 	orl	ar4,a
      0002FF 8B 0F            [24]  531 	mov	_dataport,r3
                                    532 ;	lcd.c:86: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);           
      000301 85 0F 28         [24]  533 	mov	_iic_single_byte_write_PARM_2,_dataport
      000304 85 0F 29         [24]  534 	mov	_iic_single_byte_write_PARM_3,_dataport
      000307 75 82 4E         [24]  535 	mov	dpl,#0x4e
      00030A C0 07            [24]  536 	push	ar7
      00030C C0 06            [24]  537 	push	ar6
      00030E C0 05            [24]  538 	push	ar5
      000310 12 07 E0         [24]  539 	lcall	_iic_single_byte_write
                                    540 ;	lcd.c:90: delay_us(1);
      000313 90 00 01         [24]  541 	mov	dptr,#0x0001
      000316 12 08 54         [24]  542 	lcall	_delay_us
      000319 D0 05            [24]  543 	pop	ar5
      00031B D0 06            [24]  544 	pop	ar6
                                    545 ;	lcd.c:91: dataport=(a & 0xf0)|rs| backlight;
      00031D AB 10            [24]  546 	mov	r3,_rs
      00031F 7C 00            [12]  547 	mov	r4,#0x00
      000321 EB               [12]  548 	mov	a,r3
      000322 42 05            [12]  549 	orl	ar5,a
      000324 EC               [12]  550 	mov	a,r4
      000325 42 06            [12]  551 	orl	ar6,a
      000327 AB 13            [24]  552 	mov	r3,_backlight
      000329 7C 00            [12]  553 	mov	r4,#0x00
      00032B EB               [12]  554 	mov	a,r3
      00032C 42 05            [12]  555 	orl	ar5,a
      00032E EC               [12]  556 	mov	a,r4
      00032F 42 06            [12]  557 	orl	ar6,a
      000331 8D 0F            [24]  558 	mov	_dataport,r5
                                    559 ;	lcd.c:92: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);
      000333 85 0F 28         [24]  560 	mov	_iic_single_byte_write_PARM_2,_dataport
      000336 85 0F 29         [24]  561 	mov	_iic_single_byte_write_PARM_3,_dataport
      000339 75 82 4E         [24]  562 	mov	dpl,#0x4e
      00033C 12 07 E0         [24]  563 	lcall	_iic_single_byte_write
                                    564 ;	lcd.c:94: delay_us(1);                
      00033F 90 00 01         [24]  565 	mov	dptr,#0x0001
      000342 12 08 54         [24]  566 	lcall	_delay_us
      000345 D0 07            [24]  567 	pop	ar7
                                    568 ;	lcd.c:96: dataport=((a <<4) & 0xf0)|rs|en| backlight;
      000347 EF               [12]  569 	mov	a,r7
      000348 C4               [12]  570 	swap	a
      000349 54 F0            [12]  571 	anl	a,#0xf0
      00034B FF               [12]  572 	mov	r7,a
      00034C 33               [12]  573 	rlc	a
      00034D 95 E0            [12]  574 	subb	a,acc
      00034F 53 07 F0         [24]  575 	anl	ar7,#0xf0
      000352 7E 00            [12]  576 	mov	r6,#0x00
      000354 AC 10            [24]  577 	mov	r4,_rs
      000356 7D 00            [12]  578 	mov	r5,#0x00
      000358 EF               [12]  579 	mov	a,r7
      000359 42 04            [12]  580 	orl	ar4,a
      00035B EE               [12]  581 	mov	a,r6
      00035C 42 05            [12]  582 	orl	ar5,a
      00035E AA 12            [24]  583 	mov	r2,_en
      000360 7B 00            [12]  584 	mov	r3,#0x00
      000362 EA               [12]  585 	mov	a,r2
      000363 42 04            [12]  586 	orl	ar4,a
      000365 EB               [12]  587 	mov	a,r3
      000366 42 05            [12]  588 	orl	ar5,a
      000368 AA 13            [24]  589 	mov	r2,_backlight
      00036A 7B 00            [12]  590 	mov	r3,#0x00
      00036C EA               [12]  591 	mov	a,r2
      00036D 42 04            [12]  592 	orl	ar4,a
      00036F EB               [12]  593 	mov	a,r3
      000370 42 05            [12]  594 	orl	ar5,a
      000372 8C 0F            [24]  595 	mov	_dataport,r4
                                    596 ;	lcd.c:97: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport); 
      000374 85 0F 28         [24]  597 	mov	_iic_single_byte_write_PARM_2,_dataport
      000377 85 0F 29         [24]  598 	mov	_iic_single_byte_write_PARM_3,_dataport
      00037A 75 82 4E         [24]  599 	mov	dpl,#0x4e
      00037D C0 07            [24]  600 	push	ar7
      00037F C0 06            [24]  601 	push	ar6
      000381 12 07 E0         [24]  602 	lcall	_iic_single_byte_write
                                    603 ;	lcd.c:101: delay_us(1);
      000384 90 00 01         [24]  604 	mov	dptr,#0x0001
      000387 12 08 54         [24]  605 	lcall	_delay_us
      00038A D0 06            [24]  606 	pop	ar6
      00038C D0 07            [24]  607 	pop	ar7
                                    608 ;	lcd.c:102: dataport=((a <<4) & 0xf0)|rs| backlight;
      00038E AC 10            [24]  609 	mov	r4,_rs
      000390 7D 00            [12]  610 	mov	r5,#0x00
      000392 EC               [12]  611 	mov	a,r4
      000393 42 07            [12]  612 	orl	ar7,a
      000395 ED               [12]  613 	mov	a,r5
      000396 42 06            [12]  614 	orl	ar6,a
      000398 AC 13            [24]  615 	mov	r4,_backlight
      00039A 7D 00            [12]  616 	mov	r5,#0x00
      00039C EC               [12]  617 	mov	a,r4
      00039D 42 07            [12]  618 	orl	ar7,a
      00039F ED               [12]  619 	mov	a,r5
      0003A0 42 06            [12]  620 	orl	ar6,a
      0003A2 8F 0F            [24]  621 	mov	_dataport,r7
                                    622 ;	lcd.c:103: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);
      0003A4 85 0F 28         [24]  623 	mov	_iic_single_byte_write_PARM_2,_dataport
      0003A7 85 0F 29         [24]  624 	mov	_iic_single_byte_write_PARM_3,_dataport
      0003AA 75 82 4E         [24]  625 	mov	dpl,#0x4e
      0003AD 12 07 E0         [24]  626 	lcall	_iic_single_byte_write
                                    627 ;	lcd.c:106: delay_us(1);
      0003B0 90 00 01         [24]  628 	mov	dptr,#0x0001
                                    629 ;	lcd.c:108: }
      0003B3 02 08 54         [24]  630 	ljmp	_delay_us
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'lcd_GoToLineTwo'
                                    633 ;------------------------------------------------------------
                                    634 ;	lcd.c:112: void lcd_GoToLineTwo()
                                    635 ;	-----------------------------------------
                                    636 ;	 function lcd_GoToLineTwo
                                    637 ;	-----------------------------------------
      0003B6                        638 _lcd_GoToLineTwo:
                                    639 ;	lcd.c:114: lcd_WriteCmd(LineTwo);   // move the Cursor to Second line First Position
      0003B6 75 82 C0         [24]  640 	mov	dpl,#0xc0
                                    641 ;	lcd.c:115: }
      0003B9 02 02 22         [24]  642 	ljmp	_lcd_WriteCmd
                                    643 ;------------------------------------------------------------
                                    644 ;Allocation info for local variables in function 'lcd_GoToXY'
                                    645 ;------------------------------------------------------------
                                    646 ;col                       Allocated with name '_lcd_GoToXY_PARM_2'
                                    647 ;row                       Allocated to registers r7 
                                    648 ;pos                       Allocated to registers r7 
                                    649 ;------------------------------------------------------------
                                    650 ;	lcd.c:120: void lcd_GoToXY(char row, char col)
                                    651 ;	-----------------------------------------
                                    652 ;	 function lcd_GoToXY
                                    653 ;	-----------------------------------------
      0003BC                        654 _lcd_GoToXY:
      0003BC AF 82            [24]  655 	mov	r7,dpl
                                    656 ;	lcd.c:124: if(row<LCDMaxLines)
      0003BE BF 02 00         [24]  657 	cjne	r7,#0x02,00115$
      0003C1                        658 00115$:
      0003C1 50 1B            [24]  659 	jnc	00105$
                                    660 ;	lcd.c:126: pos= LineOne | (row << 6);
      0003C3 EF               [12]  661 	mov	a,r7
      0003C4 03               [12]  662 	rr	a
      0003C5 03               [12]  663 	rr	a
      0003C6 54 C0            [12]  664 	anl	a,#0xc0
      0003C8 FF               [12]  665 	mov	r7,a
      0003C9 33               [12]  666 	rlc	a
      0003CA 95 E0            [12]  667 	subb	a,acc
      0003CC 43 07 80         [24]  668 	orl	ar7,#0x80
                                    669 ;	lcd.c:129: if(col<LCDMaxChars)
      0003CF 74 F0            [12]  670 	mov	a,#0x100 - 0x10
      0003D1 25 14            [12]  671 	add	a,_lcd_GoToXY_PARM_2
      0003D3 40 04            [24]  672 	jc	00102$
                                    673 ;	lcd.c:130: pos= pos+col;            
      0003D5 E5 14            [12]  674 	mov	a,_lcd_GoToXY_PARM_2
      0003D7 2F               [12]  675 	add	a,r7
      0003D8 FF               [12]  676 	mov	r7,a
      0003D9                        677 00102$:
                                    678 ;	lcd.c:133: lcd_WriteCmd(pos);        
      0003D9 8F 82            [24]  679 	mov	dpl,r7
                                    680 ;	lcd.c:135: }
      0003DB 02 02 22         [24]  681 	ljmp	_lcd_WriteCmd
      0003DE                        682 00105$:
      0003DE 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'lcd_DisplayString'
                                    686 ;------------------------------------------------------------
                                    687 ;string_ptr                Allocated to registers 
                                    688 ;------------------------------------------------------------
                                    689 ;	lcd.c:139: void lcd_DisplayString(char *string_ptr)
                                    690 ;	-----------------------------------------
                                    691 ;	 function lcd_DisplayString
                                    692 ;	-----------------------------------------
      0003DF                        693 _lcd_DisplayString:
      0003DF AD 82            [24]  694 	mov	r5,dpl
      0003E1 AE 83            [24]  695 	mov	r6,dph
      0003E3 AF F0            [24]  696 	mov	r7,b
                                    697 ;	lcd.c:141: while(*string_ptr)
      0003E5                        698 00101$:
      0003E5 8D 82            [24]  699 	mov	dpl,r5
      0003E7 8E 83            [24]  700 	mov	dph,r6
      0003E9 8F F0            [24]  701 	mov	b,r7
      0003EB 12 08 F6         [24]  702 	lcall	__gptrget
      0003EE FC               [12]  703 	mov	r4,a
      0003EF 60 18            [24]  704 	jz	00104$
                                    705 ;	lcd.c:142: lcd_Writedata(*string_ptr++);
      0003F1 8C 82            [24]  706 	mov	dpl,r4
      0003F3 0D               [12]  707 	inc	r5
      0003F4 BD 00 01         [24]  708 	cjne	r5,#0x00,00116$
      0003F7 0E               [12]  709 	inc	r6
      0003F8                        710 00116$:
      0003F8 C0 07            [24]  711 	push	ar7
      0003FA C0 06            [24]  712 	push	ar6
      0003FC C0 05            [24]  713 	push	ar5
      0003FE 12 02 D8         [24]  714 	lcall	_lcd_Writedata
      000401 D0 05            [24]  715 	pop	ar5
      000403 D0 06            [24]  716 	pop	ar6
      000405 D0 07            [24]  717 	pop	ar7
      000407 80 DC            [24]  718 	sjmp	00101$
      000409                        719 00104$:
                                    720 ;	lcd.c:143: }
      000409 22               [24]  721 	ret
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'lcd_DisplayRtcTime'
                                    724 ;------------------------------------------------------------
                                    725 ;min                       Allocated with name '_lcd_DisplayRtcTime_PARM_2'
                                    726 ;sec                       Allocated with name '_lcd_DisplayRtcTime_PARM_3'
                                    727 ;hour                      Allocated to registers r7 
                                    728 ;------------------------------------------------------------
                                    729 ;	lcd.c:147: void lcd_DisplayRtcTime(char hour,char min,char sec)
                                    730 ;	-----------------------------------------
                                    731 ;	 function lcd_DisplayRtcTime
                                    732 ;	-----------------------------------------
      00040A                        733 _lcd_DisplayRtcTime:
                                    734 ;	lcd.c:149: lcd_Writedata(((hour>>4) & 0x0f) + 0x30);
      00040A E5 82            [12]  735 	mov	a,dpl
      00040C FF               [12]  736 	mov	r7,a
      00040D C4               [12]  737 	swap	a
      00040E 54 0F            [12]  738 	anl	a,#0x0f
      000410 24 30            [12]  739 	add	a,#0x30
      000412 F5 82            [12]  740 	mov	dpl,a
      000414 C0 07            [24]  741 	push	ar7
      000416 12 02 D8         [24]  742 	lcall	_lcd_Writedata
      000419 D0 07            [24]  743 	pop	ar7
                                    744 ;	lcd.c:150: lcd_Writedata((hour & 0x0f) + 0x30);
      00041B 74 0F            [12]  745 	mov	a,#0x0f
      00041D 5F               [12]  746 	anl	a,r7
      00041E 24 30            [12]  747 	add	a,#0x30
      000420 F5 82            [12]  748 	mov	dpl,a
      000422 12 02 D8         [24]  749 	lcall	_lcd_Writedata
                                    750 ;	lcd.c:151: lcd_Writedata(':');
      000425 75 82 3A         [24]  751 	mov	dpl,#0x3a
      000428 12 02 D8         [24]  752 	lcall	_lcd_Writedata
                                    753 ;	lcd.c:153: lcd_Writedata(((min>>4) & 0x0f) + 0x30);
      00042B E5 15            [12]  754 	mov	a,_lcd_DisplayRtcTime_PARM_2
      00042D C4               [12]  755 	swap	a
      00042E 54 0F            [12]  756 	anl	a,#0x0f
      000430 24 30            [12]  757 	add	a,#0x30
      000432 F5 82            [12]  758 	mov	dpl,a
      000434 12 02 D8         [24]  759 	lcall	_lcd_Writedata
                                    760 ;	lcd.c:154: lcd_Writedata((min & 0x0f) + 0x30);
      000437 AF 15            [24]  761 	mov	r7,_lcd_DisplayRtcTime_PARM_2
      000439 74 0F            [12]  762 	mov	a,#0x0f
      00043B 5F               [12]  763 	anl	a,r7
      00043C 24 30            [12]  764 	add	a,#0x30
      00043E F5 82            [12]  765 	mov	dpl,a
      000440 12 02 D8         [24]  766 	lcall	_lcd_Writedata
                                    767 ;	lcd.c:155: lcd_Writedata(':');
      000443 75 82 3A         [24]  768 	mov	dpl,#0x3a
      000446 12 02 D8         [24]  769 	lcall	_lcd_Writedata
                                    770 ;	lcd.c:157: lcd_Writedata(((sec>>4) & 0x0f) + 0x30);
      000449 E5 16            [12]  771 	mov	a,_lcd_DisplayRtcTime_PARM_3
      00044B C4               [12]  772 	swap	a
      00044C 54 0F            [12]  773 	anl	a,#0x0f
      00044E 24 30            [12]  774 	add	a,#0x30
      000450 F5 82            [12]  775 	mov	dpl,a
      000452 12 02 D8         [24]  776 	lcall	_lcd_Writedata
                                    777 ;	lcd.c:158: lcd_Writedata((sec & 0x0f) + 0x30);
      000455 AF 16            [24]  778 	mov	r7,_lcd_DisplayRtcTime_PARM_3
      000457 74 0F            [12]  779 	mov	a,#0x0f
      000459 5F               [12]  780 	anl	a,r7
      00045A 24 30            [12]  781 	add	a,#0x30
      00045C F5 82            [12]  782 	mov	dpl,a
                                    783 ;	lcd.c:160: }
      00045E 02 02 D8         [24]  784 	ljmp	_lcd_Writedata
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'lcd_DisplayRtcDate'
                                    787 ;------------------------------------------------------------
                                    788 ;month                     Allocated with name '_lcd_DisplayRtcDate_PARM_2'
                                    789 ;year                      Allocated with name '_lcd_DisplayRtcDate_PARM_3'
                                    790 ;day                       Allocated to registers r7 
                                    791 ;------------------------------------------------------------
                                    792 ;	lcd.c:164: void lcd_DisplayRtcDate(char day,char month,char year)
                                    793 ;	-----------------------------------------
                                    794 ;	 function lcd_DisplayRtcDate
                                    795 ;	-----------------------------------------
      000461                        796 _lcd_DisplayRtcDate:
                                    797 ;	lcd.c:166: lcd_Writedata(((day>>4) & 0x0f) + 0x30);
      000461 E5 82            [12]  798 	mov	a,dpl
      000463 FF               [12]  799 	mov	r7,a
      000464 C4               [12]  800 	swap	a
      000465 54 0F            [12]  801 	anl	a,#0x0f
      000467 24 30            [12]  802 	add	a,#0x30
      000469 F5 82            [12]  803 	mov	dpl,a
      00046B C0 07            [24]  804 	push	ar7
      00046D 12 02 D8         [24]  805 	lcall	_lcd_Writedata
      000470 D0 07            [24]  806 	pop	ar7
                                    807 ;	lcd.c:167: lcd_Writedata((day & 0x0f) + 0x30);
      000472 74 0F            [12]  808 	mov	a,#0x0f
      000474 5F               [12]  809 	anl	a,r7
      000475 24 30            [12]  810 	add	a,#0x30
      000477 F5 82            [12]  811 	mov	dpl,a
      000479 12 02 D8         [24]  812 	lcall	_lcd_Writedata
                                    813 ;	lcd.c:168: lcd_Writedata('/');
      00047C 75 82 2F         [24]  814 	mov	dpl,#0x2f
      00047F 12 02 D8         [24]  815 	lcall	_lcd_Writedata
                                    816 ;	lcd.c:170: lcd_Writedata(((month>>4) & 0x0f) + 0x30);
      000482 E5 17            [12]  817 	mov	a,_lcd_DisplayRtcDate_PARM_2
      000484 C4               [12]  818 	swap	a
      000485 54 0F            [12]  819 	anl	a,#0x0f
      000487 24 30            [12]  820 	add	a,#0x30
      000489 F5 82            [12]  821 	mov	dpl,a
      00048B 12 02 D8         [24]  822 	lcall	_lcd_Writedata
                                    823 ;	lcd.c:171: lcd_Writedata((month & 0x0f) + 0x30);
      00048E AF 17            [24]  824 	mov	r7,_lcd_DisplayRtcDate_PARM_2
      000490 74 0F            [12]  825 	mov	a,#0x0f
      000492 5F               [12]  826 	anl	a,r7
      000493 24 30            [12]  827 	add	a,#0x30
      000495 F5 82            [12]  828 	mov	dpl,a
      000497 12 02 D8         [24]  829 	lcall	_lcd_Writedata
                                    830 ;	lcd.c:172: lcd_Writedata('/');
      00049A 75 82 2F         [24]  831 	mov	dpl,#0x2f
      00049D 12 02 D8         [24]  832 	lcall	_lcd_Writedata
                                    833 ;	lcd.c:174: lcd_Writedata(((year>>4) & 0x0f) + 0x30);
      0004A0 E5 18            [12]  834 	mov	a,_lcd_DisplayRtcDate_PARM_3
      0004A2 C4               [12]  835 	swap	a
      0004A3 54 0F            [12]  836 	anl	a,#0x0f
      0004A5 24 30            [12]  837 	add	a,#0x30
      0004A7 F5 82            [12]  838 	mov	dpl,a
      0004A9 12 02 D8         [24]  839 	lcall	_lcd_Writedata
                                    840 ;	lcd.c:175: lcd_Writedata((year & 0x0f) + 0x30);
      0004AC AF 18            [24]  841 	mov	r7,_lcd_DisplayRtcDate_PARM_3
      0004AE 74 0F            [12]  842 	mov	a,#0x0f
      0004B0 5F               [12]  843 	anl	a,r7
      0004B1 24 30            [12]  844 	add	a,#0x30
      0004B3 F5 82            [12]  845 	mov	dpl,a
                                    846 ;	lcd.c:177: }
      0004B5 02 02 D8         [24]  847 	ljmp	_lcd_Writedata
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
                                    850 	.area XINIT   (CODE)
                                    851 	.area CABS    (ABS,CODE)

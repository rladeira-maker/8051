                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
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
                                    110 	.globl _lcd_GoToXY_PARM_2
                                    111 	.globl _backlight
                                    112 	.globl _en
                                    113 	.globl _rw
                                    114 	.globl _rs
                                    115 	.globl _dataport
                                    116 	.globl _lcd_BackLight
                                    117 	.globl _lcd_Init
                                    118 	.globl _lcd_WriteCmd
                                    119 	.globl _lcd_Writedata
                                    120 	.globl _lcd_GoToLineTwo
                                    121 	.globl _lcd_Clear
                                    122 	.globl _lcd_GoToXY
                                    123 	.globl _lcd_DisplayString
                                    124 ;--------------------------------------------------------
                                    125 ; special function registers
                                    126 ;--------------------------------------------------------
                                    127 	.area RSEG    (ABS,DATA)
      000000                        128 	.org 0x0000
                           000080   129 _P0	=	0x0080
                           000081   130 _SP	=	0x0081
                           000082   131 _DPL	=	0x0082
                           000083   132 _DPH	=	0x0083
                           000087   133 _PCON	=	0x0087
                           000088   134 _TCON	=	0x0088
                           000089   135 _TMOD	=	0x0089
                           00008A   136 _TL0	=	0x008a
                           00008B   137 _TL1	=	0x008b
                           00008C   138 _TH0	=	0x008c
                           00008D   139 _TH1	=	0x008d
                           000090   140 _P1	=	0x0090
                           000098   141 _SCON	=	0x0098
                           000099   142 _SBUF	=	0x0099
                           0000A0   143 _P2	=	0x00a0
                           0000A8   144 _IE	=	0x00a8
                           0000B0   145 _P3	=	0x00b0
                           0000B8   146 _IP	=	0x00b8
                           0000D0   147 _PSW	=	0x00d0
                           0000E0   148 _ACC	=	0x00e0
                           0000F0   149 _B	=	0x00f0
                                    150 ;--------------------------------------------------------
                                    151 ; special function bits
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           000080   155 _P0_0	=	0x0080
                           000081   156 _P0_1	=	0x0081
                           000082   157 _P0_2	=	0x0082
                           000083   158 _P0_3	=	0x0083
                           000084   159 _P0_4	=	0x0084
                           000085   160 _P0_5	=	0x0085
                           000086   161 _P0_6	=	0x0086
                           000087   162 _P0_7	=	0x0087
                           000088   163 _IT0	=	0x0088
                           000089   164 _IE0	=	0x0089
                           00008A   165 _IT1	=	0x008a
                           00008B   166 _IE1	=	0x008b
                           00008C   167 _TR0	=	0x008c
                           00008D   168 _TF0	=	0x008d
                           00008E   169 _TR1	=	0x008e
                           00008F   170 _TF1	=	0x008f
                           000090   171 _P1_0	=	0x0090
                           000091   172 _P1_1	=	0x0091
                           000092   173 _P1_2	=	0x0092
                           000093   174 _P1_3	=	0x0093
                           000094   175 _P1_4	=	0x0094
                           000095   176 _P1_5	=	0x0095
                           000096   177 _P1_6	=	0x0096
                           000097   178 _P1_7	=	0x0097
                           000098   179 _RI	=	0x0098
                           000099   180 _TI	=	0x0099
                           00009A   181 _RB8	=	0x009a
                           00009B   182 _TB8	=	0x009b
                           00009C   183 _REN	=	0x009c
                           00009D   184 _SM2	=	0x009d
                           00009E   185 _SM1	=	0x009e
                           00009F   186 _SM0	=	0x009f
                           0000A0   187 _P2_0	=	0x00a0
                           0000A1   188 _P2_1	=	0x00a1
                           0000A2   189 _P2_2	=	0x00a2
                           0000A3   190 _P2_3	=	0x00a3
                           0000A4   191 _P2_4	=	0x00a4
                           0000A5   192 _P2_5	=	0x00a5
                           0000A6   193 _P2_6	=	0x00a6
                           0000A7   194 _P2_7	=	0x00a7
                           0000A8   195 _EX0	=	0x00a8
                           0000A9   196 _ET0	=	0x00a9
                           0000AA   197 _EX1	=	0x00aa
                           0000AB   198 _ET1	=	0x00ab
                           0000AC   199 _ES	=	0x00ac
                           0000AF   200 _EA	=	0x00af
                           0000B0   201 _P3_0	=	0x00b0
                           0000B1   202 _P3_1	=	0x00b1
                           0000B2   203 _P3_2	=	0x00b2
                           0000B3   204 _P3_3	=	0x00b3
                           0000B4   205 _P3_4	=	0x00b4
                           0000B5   206 _P3_5	=	0x00b5
                           0000B6   207 _P3_6	=	0x00b6
                           0000B7   208 _P3_7	=	0x00b7
                           0000B0   209 _RXD	=	0x00b0
                           0000B1   210 _TXD	=	0x00b1
                           0000B2   211 _INT0	=	0x00b2
                           0000B3   212 _INT1	=	0x00b3
                           0000B4   213 _T0	=	0x00b4
                           0000B5   214 _T1	=	0x00b5
                           0000B6   215 _WR	=	0x00b6
                           0000B7   216 _RD	=	0x00b7
                           0000B8   217 _PX0	=	0x00b8
                           0000B9   218 _PT0	=	0x00b9
                           0000BA   219 _PX1	=	0x00ba
                           0000BB   220 _PT1	=	0x00bb
                           0000BC   221 _PS	=	0x00bc
                           0000D0   222 _P	=	0x00d0
                           0000D1   223 _F1	=	0x00d1
                           0000D2   224 _OV	=	0x00d2
                           0000D3   225 _RS0	=	0x00d3
                           0000D4   226 _RS1	=	0x00d4
                           0000D5   227 _F0	=	0x00d5
                           0000D6   228 _AC	=	0x00d6
                           0000D7   229 _CY	=	0x00d7
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable register banks
                                    232 ;--------------------------------------------------------
                                    233 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        234 	.ds 8
                                    235 ;--------------------------------------------------------
                                    236 ; internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area DSEG    (DATA)
      000008                        239 _dataport::
      000008                        240 	.ds 1
      000009                        241 _rs::
      000009                        242 	.ds 1
      00000A                        243 _rw::
      00000A                        244 	.ds 1
      00000B                        245 _en::
      00000B                        246 	.ds 1
      00000C                        247 _backlight::
      00000C                        248 	.ds 1
      00000D                        249 _lcd_GoToXY_PARM_2:
      00000D                        250 	.ds 1
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 ;--------------------------------------------------------
                                    255 ; indirectly addressable internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area ISEG    (DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area IABS    (ABS,DATA)
                                    262 	.area IABS    (ABS,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; bit data
                                    265 ;--------------------------------------------------------
                                    266 	.area BSEG    (BIT)
      000000                        267 _lcd_BackLight_PARM_1:
      000000                        268 	.ds 1
                                    269 ;--------------------------------------------------------
                                    270 ; paged external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area PSEG    (PAG,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XSEG    (XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; absolute external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XABS    (ABS,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; external initialized ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XISEG   (XDATA)
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT0 (CODE)
                                    287 	.area GSINIT1 (CODE)
                                    288 	.area GSINIT2 (CODE)
                                    289 	.area GSINIT3 (CODE)
                                    290 	.area GSINIT4 (CODE)
                                    291 	.area GSINIT5 (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area CSEG    (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; global & static initialisations
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 ;	lcd.c:8: uint8_t dataport = 0;
      00005F 75 08 00         [24]  303 	mov	_dataport,#0x00
                                    304 ;	lcd.c:9: uint8_t rs = 1; //P0 do PCF8974
      000062 75 09 01         [24]  305 	mov	_rs,#0x01
                                    306 ;	lcd.c:10: uint8_t rw = 2; //P1 do PCF8974
      000065 75 0A 02         [24]  307 	mov	_rw,#0x02
                                    308 ;	lcd.c:11: uint8_t en = 4; //P2 do PCF8974
      000068 75 0B 04         [24]  309 	mov	_en,#0x04
                                    310 ;	lcd.c:12: uint8_t backlight = 8; //P3 do PCF8974
      00006B 75 0C 08         [24]  311 	mov	_backlight,#0x08
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; code
                                    319 ;--------------------------------------------------------
                                    320 	.area CSEG    (CODE)
                                    321 ;------------------------------------------------------------
                                    322 ;Allocation info for local variables in function 'lcd_BackLight'
                                    323 ;------------------------------------------------------------
                                    324 ;	lcd.c:24: void lcd_BackLight(__bit a)
                                    325 ;	-----------------------------------------
                                    326 ;	 function lcd_BackLight
                                    327 ;	-----------------------------------------
      00013B                        328 _lcd_BackLight:
                           000007   329 	ar7 = 0x07
                           000006   330 	ar6 = 0x06
                           000005   331 	ar5 = 0x05
                           000004   332 	ar4 = 0x04
                           000003   333 	ar3 = 0x03
                           000002   334 	ar2 = 0x02
                           000001   335 	ar1 = 0x01
                           000000   336 	ar0 = 0x00
                                    337 ;	lcd.c:26: if (a)
      00013B 30 00 04         [24]  338 	jnb	_lcd_BackLight_PARM_1,00102$
                                    339 ;	lcd.c:28: backlight = 8;
      00013E 75 0C 08         [24]  340 	mov	_backlight,#0x08
      000141 22               [24]  341 	ret
      000142                        342 00102$:
                                    343 ;	lcd.c:32: backlight = 0;
      000142 75 0C 00         [24]  344 	mov	_backlight,#0x00
                                    345 ;	lcd.c:34: }
      000145 22               [24]  346 	ret
                                    347 ;------------------------------------------------------------
                                    348 ;Allocation info for local variables in function 'lcd_Init'
                                    349 ;------------------------------------------------------------
                                    350 ;	lcd.c:37: void lcd_Init()
                                    351 ;	-----------------------------------------
                                    352 ;	 function lcd_Init
                                    353 ;	-----------------------------------------
      000146                        354 _lcd_Init:
                                    355 ;	lcd.c:39: delay_us(5000);
      000146 90 13 88         [24]  356 	mov	dptr,#0x1388
      000149 12 00 00         [24]  357 	lcall	_delay_us
                                    358 ;	lcd.c:40: lcd_WriteCmd(0x02);  //initilize the LCD in 4bit Mode
      00014C 75 82 02         [24]  359 	mov	dpl,#0x02
      00014F 12 01 6A         [24]  360 	lcall	_lcd_WriteCmd
                                    361 ;	lcd.c:41: lcd_WriteCmd(0x28);
      000152 75 82 28         [24]  362 	mov	dpl,#0x28
      000155 12 01 6A         [24]  363 	lcall	_lcd_WriteCmd
                                    364 ;	lcd.c:42: lcd_WriteCmd(0x0C);  // display ON cursor ON
      000158 75 82 0C         [24]  365 	mov	dpl,#0x0c
      00015B 12 01 6A         [24]  366 	lcall	_lcd_WriteCmd
                                    367 ;	lcd.c:43: lcd_WriteCmd(0x01);  // clear the LCD
      00015E 75 82 01         [24]  368 	mov	dpl,#0x01
      000161 12 01 6A         [24]  369 	lcall	_lcd_WriteCmd
                                    370 ;	lcd.c:44: lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
      000164 75 82 80         [24]  371 	mov	dpl,#0x80
                                    372 ;	lcd.c:46: }
      000167 02 01 6A         [24]  373 	ljmp	_lcd_WriteCmd
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'lcd_WriteCmd'
                                    376 ;------------------------------------------------------------
                                    377 ;a                         Allocated to registers r7 
                                    378 ;error                     Allocated to registers 
                                    379 ;------------------------------------------------------------
                                    380 ;	lcd.c:50: void lcd_WriteCmd( char a)
                                    381 ;	-----------------------------------------
                                    382 ;	 function lcd_WriteCmd
                                    383 ;	-----------------------------------------
      00016A                        384 _lcd_WriteCmd:
      00016A AF 82            [24]  385 	mov	r7,dpl
                                    386 ;	lcd.c:53: dataport=(a & 0xf0) | en | backlight;
      00016C 74 F0            [12]  387 	mov	a,#0xf0
      00016E 5F               [12]  388 	anl	a,r7
      00016F FE               [12]  389 	mov	r6,a
      000170 AD 0B            [24]  390 	mov	r5,_en
      000172 42 05            [12]  391 	orl	ar5,a
      000174 E5 0C            [12]  392 	mov	a,_backlight
      000176 4D               [12]  393 	orl	a,r5
      000177 F5 08            [12]  394 	mov	_dataport,a
                                    395 ;	lcd.c:54: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);        
      000179 85 08 00         [24]  396 	mov	_iic_single_byte_write_PARM_2,_dataport
      00017C 85 08 00         [24]  397 	mov	_iic_single_byte_write_PARM_3,_dataport
      00017F 75 82 4E         [24]  398 	mov	dpl,#0x4e
      000182 C0 07            [24]  399 	push	ar7
      000184 C0 06            [24]  400 	push	ar6
      000186 12 00 00         [24]  401 	lcall	_iic_single_byte_write
                                    402 ;	lcd.c:58: delay_us(1);
      000189 90 00 01         [24]  403 	mov	dptr,#0x0001
      00018C 12 00 00         [24]  404 	lcall	_delay_us
      00018F D0 06            [24]  405 	pop	ar6
                                    406 ;	lcd.c:59: dataport=(a & 0xf0) | backlight;
      000191 E5 0C            [12]  407 	mov	a,_backlight
      000193 4E               [12]  408 	orl	a,r6
      000194 F5 08            [12]  409 	mov	_dataport,a
                                    410 ;	lcd.c:60: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);   
      000196 85 08 00         [24]  411 	mov	_iic_single_byte_write_PARM_2,_dataport
      000199 85 08 00         [24]  412 	mov	_iic_single_byte_write_PARM_3,_dataport
      00019C 75 82 4E         [24]  413 	mov	dpl,#0x4e
      00019F 12 00 00         [24]  414 	lcall	_iic_single_byte_write
                                    415 ;	lcd.c:62: delay_us(1);                  
      0001A2 90 00 01         [24]  416 	mov	dptr,#0x0001
      0001A5 12 00 00         [24]  417 	lcall	_delay_us
      0001A8 D0 07            [24]  418 	pop	ar7
                                    419 ;	lcd.c:63: dataport=((a<<4) & 0xf0) | en | backlight;
      0001AA EF               [12]  420 	mov	a,r7
      0001AB C4               [12]  421 	swap	a
      0001AC 54 F0            [12]  422 	anl	a,#0xf0
      0001AE FF               [12]  423 	mov	r7,a
      0001AF 53 07 F0         [24]  424 	anl	ar7,#0xf0
      0001B2 AE 0B            [24]  425 	mov	r6,_en
      0001B4 EF               [12]  426 	mov	a,r7
      0001B5 42 06            [12]  427 	orl	ar6,a
      0001B7 E5 0C            [12]  428 	mov	a,_backlight
      0001B9 4E               [12]  429 	orl	a,r6
      0001BA F5 08            [12]  430 	mov	_dataport,a
                                    431 ;	lcd.c:64: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);    
      0001BC 85 08 00         [24]  432 	mov	_iic_single_byte_write_PARM_2,_dataport
      0001BF 85 08 00         [24]  433 	mov	_iic_single_byte_write_PARM_3,_dataport
      0001C2 75 82 4E         [24]  434 	mov	dpl,#0x4e
      0001C5 C0 07            [24]  435 	push	ar7
      0001C7 12 00 00         [24]  436 	lcall	_iic_single_byte_write
                                    437 ;	lcd.c:68: delay_us(1);
      0001CA 90 00 01         [24]  438 	mov	dptr,#0x0001
      0001CD 12 00 00         [24]  439 	lcall	_delay_us
      0001D0 D0 07            [24]  440 	pop	ar7
                                    441 ;	lcd.c:69: dataport = ((a<<4) & 0xf0)| backlight;
      0001D2 E5 0C            [12]  442 	mov	a,_backlight
      0001D4 4F               [12]  443 	orl	a,r7
      0001D5 F5 08            [12]  444 	mov	_dataport,a
                                    445 ;	lcd.c:70: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);  
      0001D7 85 08 00         [24]  446 	mov	_iic_single_byte_write_PARM_2,_dataport
      0001DA 85 08 00         [24]  447 	mov	_iic_single_byte_write_PARM_3,_dataport
      0001DD 75 82 4E         [24]  448 	mov	dpl,#0x4e
      0001E0 12 00 00         [24]  449 	lcall	_iic_single_byte_write
                                    450 ;	lcd.c:72: delay_us(1);
      0001E3 90 00 01         [24]  451 	mov	dptr,#0x0001
                                    452 ;	lcd.c:73: }
      0001E6 02 00 00         [24]  453 	ljmp	_delay_us
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'lcd_Writedata'
                                    456 ;------------------------------------------------------------
                                    457 ;a                         Allocated to registers r7 
                                    458 ;error                     Allocated to registers 
                                    459 ;------------------------------------------------------------
                                    460 ;	lcd.c:77: void lcd_Writedata( char a)
                                    461 ;	-----------------------------------------
                                    462 ;	 function lcd_Writedata
                                    463 ;	-----------------------------------------
      0001E9                        464 _lcd_Writedata:
      0001E9 AF 82            [24]  465 	mov	r7,dpl
                                    466 ;	lcd.c:80: dataport=(a & 0xf0)|en|rs| backlight;
      0001EB 74 F0            [12]  467 	mov	a,#0xf0
      0001ED 5F               [12]  468 	anl	a,r7
      0001EE FE               [12]  469 	mov	r6,a
      0001EF AD 0B            [24]  470 	mov	r5,_en
      0001F1 42 05            [12]  471 	orl	ar5,a
      0001F3 E5 09            [12]  472 	mov	a,_rs
      0001F5 42 05            [12]  473 	orl	ar5,a
      0001F7 E5 0C            [12]  474 	mov	a,_backlight
      0001F9 4D               [12]  475 	orl	a,r5
      0001FA F5 08            [12]  476 	mov	_dataport,a
                                    477 ;	lcd.c:81: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);           
      0001FC 85 08 00         [24]  478 	mov	_iic_single_byte_write_PARM_2,_dataport
      0001FF 85 08 00         [24]  479 	mov	_iic_single_byte_write_PARM_3,_dataport
      000202 75 82 4E         [24]  480 	mov	dpl,#0x4e
      000205 C0 07            [24]  481 	push	ar7
      000207 C0 06            [24]  482 	push	ar6
      000209 12 00 00         [24]  483 	lcall	_iic_single_byte_write
                                    484 ;	lcd.c:85: delay_us(1);
      00020C 90 00 01         [24]  485 	mov	dptr,#0x0001
      00020F 12 00 00         [24]  486 	lcall	_delay_us
      000212 D0 06            [24]  487 	pop	ar6
                                    488 ;	lcd.c:86: dataport=(a & 0xf0)|rs| backlight;
      000214 E5 09            [12]  489 	mov	a,_rs
      000216 42 06            [12]  490 	orl	ar6,a
      000218 E5 0C            [12]  491 	mov	a,_backlight
      00021A 4E               [12]  492 	orl	a,r6
      00021B F5 08            [12]  493 	mov	_dataport,a
                                    494 ;	lcd.c:87: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);
      00021D 85 08 00         [24]  495 	mov	_iic_single_byte_write_PARM_2,_dataport
      000220 85 08 00         [24]  496 	mov	_iic_single_byte_write_PARM_3,_dataport
      000223 75 82 4E         [24]  497 	mov	dpl,#0x4e
      000226 12 00 00         [24]  498 	lcall	_iic_single_byte_write
                                    499 ;	lcd.c:89: delay_us(1);                
      000229 90 00 01         [24]  500 	mov	dptr,#0x0001
      00022C 12 00 00         [24]  501 	lcall	_delay_us
      00022F D0 07            [24]  502 	pop	ar7
                                    503 ;	lcd.c:91: dataport=((a <<4) & 0xf0)|rs|en| backlight;
      000231 EF               [12]  504 	mov	a,r7
      000232 C4               [12]  505 	swap	a
      000233 54 F0            [12]  506 	anl	a,#0xf0
      000235 FF               [12]  507 	mov	r7,a
      000236 53 07 F0         [24]  508 	anl	ar7,#0xf0
      000239 AE 09            [24]  509 	mov	r6,_rs
      00023B EF               [12]  510 	mov	a,r7
      00023C 42 06            [12]  511 	orl	ar6,a
      00023E E5 0B            [12]  512 	mov	a,_en
      000240 42 06            [12]  513 	orl	ar6,a
      000242 E5 0C            [12]  514 	mov	a,_backlight
      000244 4E               [12]  515 	orl	a,r6
      000245 F5 08            [12]  516 	mov	_dataport,a
                                    517 ;	lcd.c:92: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport); 
      000247 85 08 00         [24]  518 	mov	_iic_single_byte_write_PARM_2,_dataport
      00024A 85 08 00         [24]  519 	mov	_iic_single_byte_write_PARM_3,_dataport
      00024D 75 82 4E         [24]  520 	mov	dpl,#0x4e
      000250 C0 07            [24]  521 	push	ar7
      000252 12 00 00         [24]  522 	lcall	_iic_single_byte_write
                                    523 ;	lcd.c:96: delay_us(1);
      000255 90 00 01         [24]  524 	mov	dptr,#0x0001
      000258 12 00 00         [24]  525 	lcall	_delay_us
      00025B D0 07            [24]  526 	pop	ar7
                                    527 ;	lcd.c:97: dataport=((a <<4) & 0xf0)|rs| backlight;
      00025D E5 09            [12]  528 	mov	a,_rs
      00025F 42 07            [12]  529 	orl	ar7,a
      000261 E5 0C            [12]  530 	mov	a,_backlight
      000263 4F               [12]  531 	orl	a,r7
      000264 F5 08            [12]  532 	mov	_dataport,a
                                    533 ;	lcd.c:98: error = iic_single_byte_write((IIC_ADDR*2), dataport, dataport);
      000266 85 08 00         [24]  534 	mov	_iic_single_byte_write_PARM_2,_dataport
      000269 85 08 00         [24]  535 	mov	_iic_single_byte_write_PARM_3,_dataport
      00026C 75 82 4E         [24]  536 	mov	dpl,#0x4e
      00026F 12 00 00         [24]  537 	lcall	_iic_single_byte_write
                                    538 ;	lcd.c:101: delay_us(1);
      000272 90 00 01         [24]  539 	mov	dptr,#0x0001
                                    540 ;	lcd.c:103: }
      000275 02 00 00         [24]  541 	ljmp	_delay_us
                                    542 ;------------------------------------------------------------
                                    543 ;Allocation info for local variables in function 'lcd_GoToLineTwo'
                                    544 ;------------------------------------------------------------
                                    545 ;	lcd.c:107: void lcd_GoToLineTwo()
                                    546 ;	-----------------------------------------
                                    547 ;	 function lcd_GoToLineTwo
                                    548 ;	-----------------------------------------
      000278                        549 _lcd_GoToLineTwo:
                                    550 ;	lcd.c:109: lcd_WriteCmd(LineTwo);   // move the Cursor to Second line First Position
      000278 75 82 C0         [24]  551 	mov	dpl,#0xc0
                                    552 ;	lcd.c:110: }
      00027B 02 01 6A         [24]  553 	ljmp	_lcd_WriteCmd
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'lcd_Clear'
                                    556 ;------------------------------------------------------------
                                    557 ;	lcd.c:113: void lcd_Clear()
                                    558 ;	-----------------------------------------
                                    559 ;	 function lcd_Clear
                                    560 ;	-----------------------------------------
      00027E                        561 _lcd_Clear:
                                    562 ;	lcd.c:115: lcd_WriteCmd(0x01);  // clear the LCD
      00027E 75 82 01         [24]  563 	mov	dpl,#0x01
      000281 12 01 6A         [24]  564 	lcall	_lcd_WriteCmd
                                    565 ;	lcd.c:116: lcd_WriteCmd(0x80);  // move the Cursor to First line First Position
      000284 75 82 80         [24]  566 	mov	dpl,#0x80
                                    567 ;	lcd.c:117: } 
      000287 02 01 6A         [24]  568 	ljmp	_lcd_WriteCmd
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'lcd_GoToXY'
                                    571 ;------------------------------------------------------------
                                    572 ;col                       Allocated with name '_lcd_GoToXY_PARM_2'
                                    573 ;row                       Allocated to registers r7 
                                    574 ;pos                       Allocated to registers r7 
                                    575 ;------------------------------------------------------------
                                    576 ;	lcd.c:120: void lcd_GoToXY(char row, char col)
                                    577 ;	-----------------------------------------
                                    578 ;	 function lcd_GoToXY
                                    579 ;	-----------------------------------------
      00028A                        580 _lcd_GoToXY:
      00028A AF 82            [24]  581 	mov	r7,dpl
                                    582 ;	lcd.c:124: if(row<LCDMaxLines)
      00028C BF 02 00         [24]  583 	cjne	r7,#0x02,00115$
      00028F                        584 00115$:
      00028F 50 18            [24]  585 	jnc	00105$
                                    586 ;	lcd.c:126: pos= LineOne | (row << 6);
      000291 EF               [12]  587 	mov	a,r7
      000292 03               [12]  588 	rr	a
      000293 03               [12]  589 	rr	a
      000294 54 C0            [12]  590 	anl	a,#0xc0
      000296 FF               [12]  591 	mov	r7,a
      000297 43 07 80         [24]  592 	orl	ar7,#0x80
                                    593 ;	lcd.c:129: if(col<LCDMaxChars)
      00029A 74 F0            [12]  594 	mov	a,#0x100 - 0x10
      00029C 25 0D            [12]  595 	add	a,_lcd_GoToXY_PARM_2
      00029E 40 04            [24]  596 	jc	00102$
                                    597 ;	lcd.c:130: pos= pos+col;            
      0002A0 E5 0D            [12]  598 	mov	a,_lcd_GoToXY_PARM_2
      0002A2 2F               [12]  599 	add	a,r7
      0002A3 FF               [12]  600 	mov	r7,a
      0002A4                        601 00102$:
                                    602 ;	lcd.c:133: lcd_WriteCmd(pos);        
      0002A4 8F 82            [24]  603 	mov	dpl,r7
                                    604 ;	lcd.c:135: }
      0002A6 02 01 6A         [24]  605 	ljmp	_lcd_WriteCmd
      0002A9                        606 00105$:
      0002A9 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'lcd_DisplayString'
                                    610 ;------------------------------------------------------------
                                    611 ;string_ptr                Allocated to registers 
                                    612 ;------------------------------------------------------------
                                    613 ;	lcd.c:139: void lcd_DisplayString(char *string_ptr)
                                    614 ;	-----------------------------------------
                                    615 ;	 function lcd_DisplayString
                                    616 ;	-----------------------------------------
      0002AA                        617 _lcd_DisplayString:
      0002AA AD 82            [24]  618 	mov	r5,dpl
      0002AC AE 83            [24]  619 	mov	r6,dph
      0002AE AF F0            [24]  620 	mov	r7,b
                                    621 ;	lcd.c:141: while(*string_ptr)
      0002B0                        622 00101$:
      0002B0 8D 82            [24]  623 	mov	dpl,r5
      0002B2 8E 83            [24]  624 	mov	dph,r6
      0002B4 8F F0            [24]  625 	mov	b,r7
      0002B6 12 03 4B         [24]  626 	lcall	__gptrget
      0002B9 FC               [12]  627 	mov	r4,a
      0002BA 60 18            [24]  628 	jz	00104$
                                    629 ;	lcd.c:142: lcd_Writedata(*string_ptr++);
      0002BC 8C 82            [24]  630 	mov	dpl,r4
      0002BE 0D               [12]  631 	inc	r5
      0002BF BD 00 01         [24]  632 	cjne	r5,#0x00,00116$
      0002C2 0E               [12]  633 	inc	r6
      0002C3                        634 00116$:
      0002C3 C0 07            [24]  635 	push	ar7
      0002C5 C0 06            [24]  636 	push	ar6
      0002C7 C0 05            [24]  637 	push	ar5
      0002C9 12 01 E9         [24]  638 	lcall	_lcd_Writedata
      0002CC D0 05            [24]  639 	pop	ar5
      0002CE D0 06            [24]  640 	pop	ar6
      0002D0 D0 07            [24]  641 	pop	ar7
      0002D2 80 DC            [24]  642 	sjmp	00101$
      0002D4                        643 00104$:
                                    644 ;	lcd.c:143: }
      0002D4 22               [24]  645 	ret
                                    646 	.area CSEG    (CODE)
                                    647 	.area CONST   (CODE)
                                    648 	.area XINIT   (CODE)
                                    649 	.area CABS    (ABS,CODE)

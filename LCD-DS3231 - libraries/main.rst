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
                                     12 	.globl _iic_ds1307_temp_read
                                     13 	.globl _iic_ds1307_time_read
                                     14 	.globl _lcd_GoToXY
                                     15 	.globl _lcd_GoToLineTwo
                                     16 	.globl _lcd_DisplayRtcDate
                                     17 	.globl _lcd_DisplayRtcTime
                                     18 	.globl _lcd_DisplayString
                                     19 	.globl _lcd_Writedata
                                     20 	.globl _lcd_Init
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _TF2
                                     97 	.globl _EXF2
                                     98 	.globl _RCLK
                                     99 	.globl _TCLK
                                    100 	.globl _EXEN2
                                    101 	.globl _TR2
                                    102 	.globl _C_T2
                                    103 	.globl _CP_RL2
                                    104 	.globl _T2CON_7
                                    105 	.globl _T2CON_6
                                    106 	.globl _T2CON_5
                                    107 	.globl _T2CON_4
                                    108 	.globl _T2CON_3
                                    109 	.globl _T2CON_2
                                    110 	.globl _T2CON_1
                                    111 	.globl _T2CON_0
                                    112 	.globl _PT2
                                    113 	.globl _ET2
                                    114 	.globl _B
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _IP
                                    118 	.globl _P3
                                    119 	.globl _IE
                                    120 	.globl _P2
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _P1
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _P0
                                    135 	.globl _TH2
                                    136 	.globl _TL2
                                    137 	.globl _RCAP2H
                                    138 	.globl _RCAP2L
                                    139 	.globl _T2CON
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           0000C8   145 _T2CON	=	0x00c8
                           0000CA   146 _RCAP2L	=	0x00ca
                           0000CB   147 _RCAP2H	=	0x00cb
                           0000CC   148 _TL2	=	0x00cc
                           0000CD   149 _TH2	=	0x00cd
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000F0   170 _B	=	0x00f0
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           0000AD   176 _ET2	=	0x00ad
                           0000BD   177 _PT2	=	0x00bd
                           0000C8   178 _T2CON_0	=	0x00c8
                           0000C9   179 _T2CON_1	=	0x00c9
                           0000CA   180 _T2CON_2	=	0x00ca
                           0000CB   181 _T2CON_3	=	0x00cb
                           0000CC   182 _T2CON_4	=	0x00cc
                           0000CD   183 _T2CON_5	=	0x00cd
                           0000CE   184 _T2CON_6	=	0x00ce
                           0000CF   185 _T2CON_7	=	0x00cf
                           0000C8   186 _CP_RL2	=	0x00c8
                           0000C9   187 _C_T2	=	0x00c9
                           0000CA   188 _TR2	=	0x00ca
                           0000CB   189 _EXEN2	=	0x00cb
                           0000CC   190 _TCLK	=	0x00cc
                           0000CD   191 _RCLK	=	0x00cd
                           0000CE   192 _EXF2	=	0x00ce
                           0000CF   193 _TF2	=	0x00cf
                           000080   194 _P0_0	=	0x0080
                           000081   195 _P0_1	=	0x0081
                           000082   196 _P0_2	=	0x0082
                           000083   197 _P0_3	=	0x0083
                           000084   198 _P0_4	=	0x0084
                           000085   199 _P0_5	=	0x0085
                           000086   200 _P0_6	=	0x0086
                           000087   201 _P0_7	=	0x0087
                           000088   202 _IT0	=	0x0088
                           000089   203 _IE0	=	0x0089
                           00008A   204 _IT1	=	0x008a
                           00008B   205 _IE1	=	0x008b
                           00008C   206 _TR0	=	0x008c
                           00008D   207 _TF0	=	0x008d
                           00008E   208 _TR1	=	0x008e
                           00008F   209 _TF1	=	0x008f
                           000090   210 _P1_0	=	0x0090
                           000091   211 _P1_1	=	0x0091
                           000092   212 _P1_2	=	0x0092
                           000093   213 _P1_3	=	0x0093
                           000094   214 _P1_4	=	0x0094
                           000095   215 _P1_5	=	0x0095
                           000096   216 _P1_6	=	0x0096
                           000097   217 _P1_7	=	0x0097
                           000098   218 _RI	=	0x0098
                           000099   219 _TI	=	0x0099
                           00009A   220 _RB8	=	0x009a
                           00009B   221 _TB8	=	0x009b
                           00009C   222 _REN	=	0x009c
                           00009D   223 _SM2	=	0x009d
                           00009E   224 _SM1	=	0x009e
                           00009F   225 _SM0	=	0x009f
                           0000A0   226 _P2_0	=	0x00a0
                           0000A1   227 _P2_1	=	0x00a1
                           0000A2   228 _P2_2	=	0x00a2
                           0000A3   229 _P2_3	=	0x00a3
                           0000A4   230 _P2_4	=	0x00a4
                           0000A5   231 _P2_5	=	0x00a5
                           0000A6   232 _P2_6	=	0x00a6
                           0000A7   233 _P2_7	=	0x00a7
                           0000A8   234 _EX0	=	0x00a8
                           0000A9   235 _ET0	=	0x00a9
                           0000AA   236 _EX1	=	0x00aa
                           0000AB   237 _ET1	=	0x00ab
                           0000AC   238 _ES	=	0x00ac
                           0000AF   239 _EA	=	0x00af
                           0000B0   240 _P3_0	=	0x00b0
                           0000B1   241 _P3_1	=	0x00b1
                           0000B2   242 _P3_2	=	0x00b2
                           0000B3   243 _P3_3	=	0x00b3
                           0000B4   244 _P3_4	=	0x00b4
                           0000B5   245 _P3_5	=	0x00b5
                           0000B6   246 _P3_6	=	0x00b6
                           0000B7   247 _P3_7	=	0x00b7
                           0000B0   248 _RXD	=	0x00b0
                           0000B1   249 _TXD	=	0x00b1
                           0000B2   250 _INT0	=	0x00b2
                           0000B3   251 _INT1	=	0x00b3
                           0000B4   252 _T0	=	0x00b4
                           0000B5   253 _T1	=	0x00b5
                           0000B6   254 _WR	=	0x00b6
                           0000B7   255 _RD	=	0x00b7
                           0000B8   256 _PX0	=	0x00b8
                           0000B9   257 _PT0	=	0x00b9
                           0000BA   258 _PX1	=	0x00ba
                           0000BB   259 _PT1	=	0x00bb
                           0000BC   260 _PS	=	0x00bc
                           0000D0   261 _P	=	0x00d0
                           0000D1   262 _F1	=	0x00d1
                           0000D2   263 _OV	=	0x00d2
                           0000D3   264 _RS0	=	0x00d3
                           0000D4   265 _RS1	=	0x00d4
                           0000D5   266 _F0	=	0x00d5
                           0000D6   267 _AC	=	0x00d6
                           0000D7   268 _CY	=	0x00d7
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
      000008                        278 _main_rtc_65536_23:
      000008                        279 	.ds 7
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable items in internal ram 
                                    282 ;--------------------------------------------------------
                                    283 ;--------------------------------------------------------
                                    284 ; Stack segment in internal ram 
                                    285 ;--------------------------------------------------------
                                    286 	.area	SSEG
      00002B                        287 __start__stack:
      00002B                        288 	.ds	1
                                    289 
                                    290 ;--------------------------------------------------------
                                    291 ; indirectly addressable internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area ISEG    (DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area IABS    (ABS,DATA)
                                    298 	.area IABS    (ABS,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; bit data
                                    301 ;--------------------------------------------------------
                                    302 	.area BSEG    (BIT)
                                    303 ;--------------------------------------------------------
                                    304 ; paged external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area PSEG    (PAG,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XSEG    (XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external initialized ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
                                    319 	.area HOME    (CODE)
                                    320 	.area GSINIT0 (CODE)
                                    321 	.area GSINIT1 (CODE)
                                    322 	.area GSINIT2 (CODE)
                                    323 	.area GSINIT3 (CODE)
                                    324 	.area GSINIT4 (CODE)
                                    325 	.area GSINIT5 (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area CSEG    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; interrupt vector 
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
      000000                        333 __interrupt_vect:
      000000 02 00 06         [24]  334 	ljmp	__sdcc_gsinit_startup
                                    335 ;--------------------------------------------------------
                                    336 ; global & static initialisations
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.globl __sdcc_gsinit_startup
                                    343 	.globl __sdcc_program_startup
                                    344 	.globl __start__stack
                                    345 	.globl __mcs51_genXINIT
                                    346 	.globl __mcs51_genXRAMCLEAR
                                    347 	.globl __mcs51_genRAMCLEAR
                                    348 	.area GSFINAL (CODE)
      00006E 02 00 03         [24]  349 	ljmp	__sdcc_program_startup
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
      000003                        355 __sdcc_program_startup:
      000003 02 00 71         [24]  356 	ljmp	_main
                                    357 ;	return from main will return to caller
                                    358 ;--------------------------------------------------------
                                    359 ; code
                                    360 ;--------------------------------------------------------
                                    361 	.area CSEG    (CODE)
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'main'
                                    364 ;------------------------------------------------------------
                                    365 ;rtc                       Allocated with name '_main_rtc_65536_23'
                                    366 ;temp_dig1                 Allocated to registers r4 
                                    367 ;temp_dig2                 Allocated to registers r6 
                                    368 ;temp                      Allocated to registers r7 
                                    369 ;------------------------------------------------------------
                                    370 ;	main.c:8: void main() 
                                    371 ;	-----------------------------------------
                                    372 ;	 function main
                                    373 ;	-----------------------------------------
      000071                        374 _main:
                           000007   375 	ar7 = 0x07
                           000006   376 	ar6 = 0x06
                           000005   377 	ar5 = 0x05
                           000004   378 	ar4 = 0x04
                           000003   379 	ar3 = 0x03
                           000002   380 	ar2 = 0x02
                           000001   381 	ar1 = 0x01
                           000000   382 	ar0 = 0x00
                                    383 ;	main.c:15: lcd_Init();
      000071 12 04 EA         [24]  384 	lcall	_lcd_Init
                                    385 ;	main.c:18: lcd_DisplayString("Hora: ");
      000074 90 08 C3         [24]  386 	mov	dptr,#___str_0
      000077 75 F0 80         [24]  387 	mov	b,#0x80
      00007A 12 06 CB         [24]  388 	lcall	_lcd_DisplayString
                                    389 ;	main.c:21: lcd_GoToLineTwo();
      00007D 12 06 A2         [24]  390 	lcall	_lcd_GoToLineTwo
                                    391 ;	main.c:22: lcd_DisplayString("Data: ");
      000080 90 08 CA         [24]  392 	mov	dptr,#___str_1
      000083 75 F0 80         [24]  393 	mov	b,#0x80
      000086 12 06 CB         [24]  394 	lcall	_lcd_DisplayString
                                    395 ;	main.c:25: while(1)
      000089                        396 00102$:
                                    397 ;	main.c:28: iic_ds1307_time_read(0xD0,&rtc);
      000089 75 13 08         [24]  398 	mov	_iic_ds1307_time_read_PARM_2,#_main_rtc_65536_23
      00008C 75 14 00         [24]  399 	mov	(_iic_ds1307_time_read_PARM_2 + 1),#0x00
      00008F 75 15 40         [24]  400 	mov	(_iic_ds1307_time_read_PARM_2 + 2),#0x40
      000092 75 82 D0         [24]  401 	mov	dpl,#0xd0
      000095 12 02 3D         [24]  402 	lcall	_iic_ds1307_time_read
                                    403 ;	main.c:29: temp = iic_ds1307_temp_read(0xD0);
      000098 75 82 D0         [24]  404 	mov	dpl,#0xd0
      00009B 12 03 E3         [24]  405 	lcall	_iic_ds1307_temp_read
      00009E AF 82            [24]  406 	mov	r7,dpl
                                    407 ;	main.c:30: temp_dig1 = temp/10;
      0000A0 7E 00            [12]  408 	mov	r6,#0x00
      0000A2 75 18 0A         [24]  409 	mov	__divsint_PARM_2,#0x0a
                                    410 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000A5 8E 19            [24]  411 	mov	(__divsint_PARM_2 + 1),r6
      0000A7 8F 82            [24]  412 	mov	dpl,r7
      0000A9 8E 83            [24]  413 	mov	dph,r6
      0000AB C0 07            [24]  414 	push	ar7
      0000AD C0 06            [24]  415 	push	ar6
      0000AF 12 08 87         [24]  416 	lcall	__divsint
      0000B2 AC 82            [24]  417 	mov	r4,dpl
      0000B4 D0 06            [24]  418 	pop	ar6
      0000B6 D0 07            [24]  419 	pop	ar7
                                    420 ;	main.c:31: temp_dig2 = temp%10;        
      0000B8 75 18 0A         [24]  421 	mov	__modsint_PARM_2,#0x0a
      0000BB 75 19 00         [24]  422 	mov	(__modsint_PARM_2 + 1),#0x00
      0000BE 8F 82            [24]  423 	mov	dpl,r7
      0000C0 8E 83            [24]  424 	mov	dph,r6
      0000C2 C0 04            [24]  425 	push	ar4
      0000C4 12 08 51         [24]  426 	lcall	__modsint
      0000C7 AE 82            [24]  427 	mov	r6,dpl
      0000C9 D0 04            [24]  428 	pop	ar4
                                    429 ;	main.c:35: lcd_GoToXY(0,5); 		 
      0000CB 75 26 05         [24]  430 	mov	_lcd_GoToXY_PARM_2,#0x05
      0000CE 75 82 00         [24]  431 	mov	dpl,#0x00
      0000D1 C0 06            [24]  432 	push	ar6
      0000D3 C0 04            [24]  433 	push	ar4
      0000D5 12 06 A8         [24]  434 	lcall	_lcd_GoToXY
      0000D8 D0 04            [24]  435 	pop	ar4
      0000DA D0 06            [24]  436 	pop	ar6
                                    437 ;	main.c:36: lcd_DisplayRtcTime(rtc.hour,rtc.min,rtc.sec);
      0000DC 85 0A 82         [24]  438 	mov	dpl,(_main_rtc_65536_23 + 0x0002)
      0000DF 85 09 27         [24]  439 	mov	_lcd_DisplayRtcTime_PARM_2,(_main_rtc_65536_23 + 0x0001)
      0000E2 85 08 28         [24]  440 	mov	_lcd_DisplayRtcTime_PARM_3,_main_rtc_65536_23
      0000E5 C0 06            [24]  441 	push	ar6
      0000E7 C0 04            [24]  442 	push	ar4
      0000E9 12 06 F6         [24]  443 	lcall	_lcd_DisplayRtcTime
                                    444 ;	main.c:37: lcd_DisplayString("  T");
      0000EC 90 08 D1         [24]  445 	mov	dptr,#___str_2
      0000EF 75 F0 80         [24]  446 	mov	b,#0x80
      0000F2 12 06 CB         [24]  447 	lcall	_lcd_DisplayString
                                    448 ;	main.c:38: lcd_GoToXY(1,5); 
      0000F5 75 26 05         [24]  449 	mov	_lcd_GoToXY_PARM_2,#0x05
      0000F8 75 82 01         [24]  450 	mov	dpl,#0x01
      0000FB 12 06 A8         [24]  451 	lcall	_lcd_GoToXY
      0000FE D0 04            [24]  452 	pop	ar4
      000100 D0 06            [24]  453 	pop	ar6
                                    454 ;	main.c:39: lcd_DisplayRtcDate(rtc.date,rtc.month,rtc.year);
      000102 85 0C 82         [24]  455 	mov	dpl,(_main_rtc_65536_23 + 0x0004)
      000105 85 0D 29         [24]  456 	mov	_lcd_DisplayRtcDate_PARM_2,(_main_rtc_65536_23 + 0x0005)
      000108 85 0E 2A         [24]  457 	mov	_lcd_DisplayRtcDate_PARM_3,(_main_rtc_65536_23 + 0x0006)
      00010B C0 06            [24]  458 	push	ar6
      00010D C0 04            [24]  459 	push	ar4
      00010F 12 07 4D         [24]  460 	lcall	_lcd_DisplayRtcDate
                                    461 ;	main.c:40: lcd_DisplayString(" ");
      000112 90 08 D5         [24]  462 	mov	dptr,#___str_3
      000115 75 F0 80         [24]  463 	mov	b,#0x80
      000118 12 06 CB         [24]  464 	lcall	_lcd_DisplayString
      00011B D0 04            [24]  465 	pop	ar4
                                    466 ;	main.c:41: lcd_Writedata(temp_dig1 + 0x30);
      00011D 74 30            [12]  467 	mov	a,#0x30
      00011F 2C               [12]  468 	add	a,r4
      000120 F5 82            [12]  469 	mov	dpl,a
      000122 12 05 C4         [24]  470 	lcall	_lcd_Writedata
      000125 D0 06            [24]  471 	pop	ar6
                                    472 ;	main.c:42: lcd_Writedata((temp_dig2) + 0x30);
      000127 74 30            [12]  473 	mov	a,#0x30
      000129 2E               [12]  474 	add	a,r6
      00012A F5 82            [12]  475 	mov	dpl,a
      00012C 12 05 C4         [24]  476 	lcall	_lcd_Writedata
                                    477 ;	main.c:46: }
      00012F 02 00 89         [24]  478 	ljmp	00102$
                                    479 	.area CSEG    (CODE)
                                    480 	.area CONST   (CODE)
                                    481 	.area CONST   (CODE)
      0008C3                        482 ___str_0:
      0008C3 48 6F 72 61 3A 20      483 	.ascii "Hora: "
      0008C9 00                     484 	.db 0x00
                                    485 	.area CSEG    (CODE)
                                    486 	.area CONST   (CODE)
      0008CA                        487 ___str_1:
      0008CA 44 61 74 61 3A 20      488 	.ascii "Data: "
      0008D0 00                     489 	.db 0x00
                                    490 	.area CSEG    (CODE)
                                    491 	.area CONST   (CODE)
      0008D1                        492 ___str_2:
      0008D1 20 20 54               493 	.ascii "  T"
      0008D4 00                     494 	.db 0x00
                                    495 	.area CSEG    (CODE)
                                    496 	.area CONST   (CODE)
      0008D5                        497 ___str_3:
      0008D5 20                     498 	.ascii " "
      0008D6 00                     499 	.db 0x00
                                    500 	.area CSEG    (CODE)
                                    501 	.area XINIT   (CODE)
                                    502 	.area CABS    (ABS,CODE)

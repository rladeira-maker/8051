                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
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
                                    107 	.globl _delay_ms
                                    108 	.globl _delay_us
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable items in internal ram 
                                    226 ;--------------------------------------------------------
                                    227 	.area	OSEG    (OVR,DATA)
                                    228 	.area	OSEG    (OVR,DATA)
                                    229 ;--------------------------------------------------------
                                    230 ; indirectly addressable internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area ISEG    (DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; absolute internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area IABS    (ABS,DATA)
                                    237 	.area IABS    (ABS,DATA)
                                    238 ;--------------------------------------------------------
                                    239 ; bit data
                                    240 ;--------------------------------------------------------
                                    241 	.area BSEG    (BIT)
                                    242 ;--------------------------------------------------------
                                    243 ; paged external ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area PSEG    (PAG,XDATA)
                                    246 ;--------------------------------------------------------
                                    247 ; external ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area XSEG    (XDATA)
                                    250 ;--------------------------------------------------------
                                    251 ; absolute external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area XABS    (ABS,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; external initialized ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XISEG   (XDATA)
                                    258 	.area HOME    (CODE)
                                    259 	.area GSINIT0 (CODE)
                                    260 	.area GSINIT1 (CODE)
                                    261 	.area GSINIT2 (CODE)
                                    262 	.area GSINIT3 (CODE)
                                    263 	.area GSINIT4 (CODE)
                                    264 	.area GSINIT5 (CODE)
                                    265 	.area GSINIT  (CODE)
                                    266 	.area GSFINAL (CODE)
                                    267 	.area CSEG    (CODE)
                                    268 ;--------------------------------------------------------
                                    269 ; global & static initialisations
                                    270 ;--------------------------------------------------------
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT  (CODE)
                                    273 	.area GSFINAL (CODE)
                                    274 	.area GSINIT  (CODE)
                                    275 ;--------------------------------------------------------
                                    276 ; Home
                                    277 ;--------------------------------------------------------
                                    278 	.area HOME    (CODE)
                                    279 	.area HOME    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; code
                                    282 ;--------------------------------------------------------
                                    283 	.area CSEG    (CODE)
                                    284 ;------------------------------------------------------------
                                    285 ;Allocation info for local variables in function 'delay_ms'
                                    286 ;------------------------------------------------------------
                                    287 ;t                         Allocated to registers r6 r7 
                                    288 ;count                     Allocated to registers r4 r5 
                                    289 ;------------------------------------------------------------
                                    290 ;	delay.c:3: void delay_ms(uint16_t t)
                                    291 ;	-----------------------------------------
                                    292 ;	 function delay_ms
                                    293 ;	-----------------------------------------
      000825                        294 _delay_ms:
                           000007   295 	ar7 = 0x07
                           000006   296 	ar6 = 0x06
                           000005   297 	ar5 = 0x05
                           000004   298 	ar4 = 0x04
                           000003   299 	ar3 = 0x03
                           000002   300 	ar2 = 0x02
                           000001   301 	ar1 = 0x01
                           000000   302 	ar0 = 0x00
      000825 AE 82            [24]  303 	mov	r6,dpl
      000827 AF 83            [24]  304 	mov	r7,dph
                                    305 ;	delay.c:6: TMOD |= 0x01;
      000829 AC 89            [24]  306 	mov	r4,_TMOD
      00082B 43 04 01         [24]  307 	orl	ar4,#0x01
      00082E 8C 89            [24]  308 	mov	_TMOD,r4
                                    309 ;	delay.c:7: TH0 = 0xFC;
      000830 75 8C FC         [24]  310 	mov	_TH0,#0xfc
                                    311 ;	delay.c:8: TL0 = 0x66;
      000833 75 8A 66         [24]  312 	mov	_TL0,#0x66
                                    313 ;	delay.c:9: TR0 = 1;
                                    314 ;	assignBit
      000836 D2 8C            [12]  315 	setb	_TR0
                                    316 ;	delay.c:10: while (1)
      000838 7C 00            [12]  317 	mov	r4,#0x00
      00083A 7D 00            [12]  318 	mov	r5,#0x00
      00083C                        319 00106$:
                                    320 ;	delay.c:12: if (TF0 == 1)
      00083C 30 8D 0D         [24]  321 	jnb	_TF0,00102$
                                    322 ;	delay.c:14: count++;
      00083F 0C               [12]  323 	inc	r4
      000840 BC 00 01         [24]  324 	cjne	r4,#0x00,00120$
      000843 0D               [12]  325 	inc	r5
      000844                        326 00120$:
                                    327 ;	delay.c:15: TF0 = 0;
                                    328 ;	assignBit
      000844 C2 8D            [12]  329 	clr	_TF0
                                    330 ;	delay.c:16: TH0 = 0xFC;
      000846 75 8C FC         [24]  331 	mov	_TH0,#0xfc
                                    332 ;	delay.c:17: TL0 = 0x66;
      000849 75 8A 66         [24]  333 	mov	_TL0,#0x66
      00084C                        334 00102$:
                                    335 ;	delay.c:19: if (count >= t)
      00084C C3               [12]  336 	clr	c
      00084D EC               [12]  337 	mov	a,r4
      00084E 9E               [12]  338 	subb	a,r6
      00084F ED               [12]  339 	mov	a,r5
      000850 9F               [12]  340 	subb	a,r7
      000851 40 E9            [24]  341 	jc	00106$
                                    342 ;	delay.c:21: break;
                                    343 ;	delay.c:24: }
      000853 22               [24]  344 	ret
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'delay_us'
                                    347 ;------------------------------------------------------------
                                    348 ;t                         Allocated to registers 
                                    349 ;------------------------------------------------------------
                                    350 ;	delay.c:26: void delay_us(uint16_t t)
                                    351 ;	-----------------------------------------
                                    352 ;	 function delay_us
                                    353 ;	-----------------------------------------
      000854                        354 _delay_us:
      000854 AE 82            [24]  355 	mov	r6,dpl
      000856 AF 83            [24]  356 	mov	r7,dph
                                    357 ;	delay.c:28: while(t>0)
      000858                        358 00101$:
      000858 EE               [12]  359 	mov	a,r6
      000859 4F               [12]  360 	orl	a,r7
      00085A 60 08            [24]  361 	jz	00104$
                                    362 ;	delay.c:30: __nop();
      00085C 00               [12]  363 	nop	
                                    364 ;	delay.c:31: t --;
      00085D 1E               [12]  365 	dec	r6
      00085E BE FF 01         [24]  366 	cjne	r6,#0xff,00116$
      000861 1F               [12]  367 	dec	r7
      000862                        368 00116$:
      000862 80 F4            [24]  369 	sjmp	00101$
      000864                        370 00104$:
                                    371 ;	delay.c:33: }
      000864 22               [24]  372 	ret
                                    373 	.area CSEG    (CODE)
                                    374 	.area CONST   (CODE)
                                    375 	.area XINIT   (CODE)
                                    376 	.area CABS    (ABS,CODE)

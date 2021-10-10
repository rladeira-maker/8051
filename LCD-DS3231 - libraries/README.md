/**********/
/*English:*/
/**********/

Program compiled with SDCC.

Addresses:
SCL = P2_0
SDA = P2_1
DS3231 = 0xD0 (0x68 I2C for read)
LCD HD44780 = (0x27 I2C for write)

To work with the DS3231, I made changes to the IIC library, adding specific 
functionality for DS3231. With that, I also changed the iic.h. Function to
 adjust date and time of DS3231 was not implemented. I'll do it another time.
For now, I'm setting the clock for Arduino.

The main.c, iic.c, lcd.c and delay.c programs were used, whose source codes are
in the IIC and LCD folders, in this repository.

Here were several tests. The working file is main.c. As already said, iic.h 
(and iic.c) were changed to communicate with the DS3231 even allowing to read
the temperature registers on that chip, something that wasn't foreseen in the 
original program I based on on the internet.

RTC.c was a test, I don't know if it works. main_2.c was an adaptation to use 
TM1637. In a first test, it didn't work. After a lot of trying, I found that 
there was a design flaw in the Arduino shield containing this display (TM1637). 
In parallel with the CLK and DIO pins there are two capacitors. In the shield, 
these capacitors are with wrong values. They should be 100pF. It took me a while
to identify the problem because the display worked properly on Arduino UNO but 
it didn't on the 8051. Initially I thought it was a programming problem. 
When removing the two capacitors from the board, it worked perfectly. 
But I haven't tested this specific program.

/************/
/*Portugu�s:*/
/************/

Programa compilado com SDCC.

Endere�os:
SCL = P2_0
SDA = P2_1
DS3231 = 0xD0 (0x68 I2C para leitura)
LCD HD44780 = (0x27 I2C para escrita)

Para funcionar com o DS3231, fiz altera��es na biblioteca IIC, acrescentando
funcionalidades espec�ficas para o DS3231. Com isso, alterei ainda o
iic.h. N�o foi implementada fun��o para ajustar data e hora do DS3231. Farei
isso outra hora. Por enquanto, estou ajustando o rel�gio pelo Arduino.

Foram utilizados os programas main.c, iic.c, lcd.c e delay.c cujos c�digos-fonte
est�o nas pastas IIC e LCD, neste reposit�rio.

Aqui foram v�rios testes. O arquivo funcional � o main.c. Como j� dito, iic.h 
(e iic.c) foram alterados para comunicar com o DS3231 permitindo inclusive ler
os registradores de temperatura desse chip, algo que n�o estava previsto no pro-
grama original no qual se baseei na internet.

RTC.c foi um teste, n�o sei se funciona. J� main_2.c foi uma adapta��o para uti-
lizar o TM1637. Num primeiro teste, n�o funcionou. Depois de muito tentar, des-
cobri que havia uma falha de projeto no shield Arduino contendo esse display (TM
1637). Em paralelo com os pinos CLK e DIO h� dois capacitores. No shield, estes
capacitores est�o com valores errados. Eles deveriam ser de 100pF. Demorei para  
identificar o problema pois o display funcionava direito no Arduino UNO mas n�o
no 8051. Inicialmente achei que era um problema de programa��o. Ao retirar os 
dois capacitores da placa, funcionou perfeitamente. #Ficaadica



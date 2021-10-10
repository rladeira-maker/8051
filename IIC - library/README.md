/**********/
/*English:*/
/**********/
Program compiled with SDCC.

Two libraries were created, iic.h and delay.h. If you want to use the
libraries as they are, just compile the .rel files. As an example,
sdcc main.c delay.rel iic.rel.

The program was developed with 12Mhz crystal for use with AT89C2051. In the
config.h file, it is possible to change the pins used for SDA and SCL 
which, in this program, are P1_6 and P1_7, respectively.

Initially, we tried to use the program available here on Github
(hungtcs-lab). Unfortunately, it didn't work at first and it was 
to make adjustments, using parts of programs obtained from the internet.

/************/
/*Português:*/
/************/
Programa compilado com SDCC.

Foram criadas duas bibiliotecas, iic.h e delay.h. Caso queiram utilizar as 
bibliotecas como estão, é só compilar os arquivos .rel. Como exemplo,
sdcc main.c delay.rel iic.rel.

O programa foi desenvolvido com cristal 12Mhz para uso com AT89C2051. 
No arquivo config.h, é possível alterar os pinos utilizados para SDA e SCL
que, nesse programa, são P1_6 e P1_7, repectivamente.

Inicialmente tentou-se utilizar o programa disponível aqui no Github 
(hungtcs-lab). Infelizmente, não funcionou de primeiro e foi necessário 
fazer ajustes, utilizando-se partes de programas obtidos na internet.
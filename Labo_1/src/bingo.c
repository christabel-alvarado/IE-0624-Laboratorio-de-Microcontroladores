// Solución Lab 1 de IE-0624: Laboratorio de Microcontroladores.
// Christabel Alvarado Anchía, B80286
// Código referenciado: [1] Aki Technical, "PIC12F685 Reading LM35 Analog Sensor Example," 2020. [Online]. Available: https://aki-technical.blogspot.com/2020/05/pic12f685-reading-lm35-analog.html. [Accessed: 28-Aug-2024].

#include <pic14/pic12f675.h>
#include <stdlib.h>
// #include<74595.h>


void inicializar_array(unsigned int arr[]);
int repetido(unsigned int arr[], int num);

 void main(void)
{
    TRISIO = 0b00100000;		// Pone todos los pines como salidas excepto el  5
	GPIO = 0x00;				// Pone todos los pines en bajo

    unsigned int random_int;    // Número aleatorio a generar
    unsigned char ssd[16]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,
                0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};  //segmentos para los digitos 0-9, basado en código referenciado en encabezado.
    unsigned int nums_generados[10]; //almacenamiento de numeros generados.
    inicializar_array(nums_generados);
    int cont = 0;

     while ( 1 )
    {
			if (GP5 == 1) // Si se detecta que se presionó el botón
		{
			do{
                random_int = rand() % (9 - 0 + 1) + 0;; // Genera un número aleatorio
            } while (repetido (nums_generados, random_int));

            nums_generados[cont] = random_int;
            cont++;
            if (cont == 10) {
                cont = 0; // Reinicia el contador
                inicializar_array(nums_generados);
            }
            //Basado en código referenciado en encabezado.
            // shiftData=ssd[random_int];
            // write_expanded_outputs(&shiftData);
      
        }
    }
}

void inicializar_array(unsigned int arr[]) {
    for (int i = 0; i < 10; i++) {
        arr[i] = 10;  // Fuera del rango de 0-9
    }
}

int repetido(unsigned int arr[], int num) {
    for (int i = 0; i < 10; i++) {
        if (arr[i] == num) {
            return 1; // El número es repetido
        }
    }
    return 0; // El número no es repetido
}
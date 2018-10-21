/*
 * main.c
 *
 *  Created on: Oct 20, 2018
 *      Author: Sergaljerk
 */


#include "xil_types.h"


// Macro to access the base address of your LED controller
#define LED *((uint32_t *)0x4BB00000)

int main()
{
    int i = 0;

    // Turn off all LEDs
    LED = 0x00;

    // Infinite loop
    while (1) {

        // invert the LED value
	LED= ~LED;

        // Delay
        for (i = 0; i < 10000000; i++);
    }
    return 1;
}

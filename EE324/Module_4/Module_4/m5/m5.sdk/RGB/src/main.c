/*
 * main.c
 *
 *  Created on: Oct 31, 2019
 *      Author: root
 */

#include "RGB_PWM.h"
int main(void)
{
	while(1)
	{
		*(RGB_PWM_ADDR) = 0xF;

		//RGB DC
		*(RGB_PWM_ADDR + 1) = 230;
		*(RGB_PWM_ADDR + 2) = 100;
		*(RGB_PWM_ADDR + 3) = 166;

		//RGB PULSE WINDOW
		*(RGB_PWM_ADDR + 4) = 255;
		*(RGB_PWM_ADDR + 5) = 255;
		*(RGB_PWM_ADDR + 6) = 255;

		//RGB PULSE WINDOW
		*(RGB_PWM_ADDR + 7) = 0x2;
		*(RGB_PWM_ADDR + 8) = 0x2;
		*(RGB_PWM_ADDR + 9) = 0x2;




	}
}

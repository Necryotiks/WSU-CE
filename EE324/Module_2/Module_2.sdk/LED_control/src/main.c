/*
 * main.c
 *
 *  Created on: Mar 4, 2019
 *      Author: Sergaljerk
 */

#include "functions.h"

int main(void)
{
	disableLEDS();
	enableLEDS();
	//demoLEDS();
	disableRGBS();
	enableRGBS();
	demoRGBS();
	shiftLEDS();

}

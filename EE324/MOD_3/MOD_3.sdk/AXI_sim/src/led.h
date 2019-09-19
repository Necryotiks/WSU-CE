/*
 * led.h
 *
 *  Created on: Sep 15, 2019
 *      Author: root
 */

#ifndef SRC_LED_H_
#define SRC_LED_H_

#define LED_BASE_ADDR (uint32_t *)0x4BB00000
#include "xil_types.h"

#endif /* SRC_LED_H_ */


uint32_t readLEDS()
{
	return (*LED_BASE_ADDR & 0xF);
}
void disableLEDS(int val)
{
	*(LED_BASE_ADDR + 1) -= (val & 0xF);
}
void enableLEDS(int val)
{
	*(LED_BASE_ADDR + 1) = val & 0xF;
}
void writeLEDS(int val)
{
	*LED_BASE_ADDR = val & 0xF;
}
void demoLEDS()
{
			for(int i = 0; i < 10000000; i++)
			{
				continue;
			}
			*LED_BASE_ADDR ^= 0xF; //toggle LEDS
}
void setLEDPattern(int pattern)//TODO:turn this into a function table
{
	switch(pattern)
	{
	case 0:
		demoLEDS();
		break;
	case 1:
		break;
	case 2:
		writeLEDS(0x9);
		break;
	case 3:
		break;
	default:
		break;
	}

}
/*
 * functions.c
 *
 *  Created on: Sep 3, 2019
 *      Author: root
 */


#include "functions.h"



void demoLEDS()
{
	*(BASELEDADDR + 1) = 0xF; //enable all LEDs
	while(1)
	{
		for(int i = 0; i < 10000000; i++)
		{
			continue;
		}
		*BASELEDADDR ^= 0xF; //toggle LEDS
	}
}
void shiftLEDS()
{
	*(BASELEDADDR + 1) = 0xF; //enable all LEDs
	while(1)
	{
		for(int i = 0; i < 10000000; i++)
		{
			continue;
		}
		if((*BASELEDADDR & 0xF) == 0)
		{
			*BASELEDADDR = 0x1;
		}
		else
		{
			*BASELEDADDR = (*BASELEDADDR & 0xF) << 0x1; //toggle LEDS
		}

	}
}

void setLEDPattern(int pattern)
{
	switch(pattern)
	{
	case 0:
		demoLEDS();
		break;
	case 1:
		shiftLEDS();
		break;
	case 2:
		//TODO: implement
		break;
	default:
		break;
	}
}
uint32_t readLEDS()
{
	uint32_t val=0;

	//read value from IPCore and
	//mask so we only get 4LSB
	val = *BASELEDADDR & 0xF;

	return val;
}

/*
 * functions.c
 *
 *  Created on: Mar 4, 2019
 *      Author: Sergaljerk
 */

#include "functions.h"

void enableLEDS()
{
	*LED_BASEADDR = 0xF;
}
void disableLEDS()
{
	*LED_BASEADDR = 0x0;
}
void toggleLEDS(int ledID)
{
	*LED_BASEADDR = *LED_BASEADDR ^ ledID; //XOR with bitmask for toggle
}

void demoLEDS()
{
	int i = 0;
	*(LED_BASEADDR + 1) = 0x00; //LEDS ARE OFF
	while(1)
	{
		*(LED_BASEADDR + 1) = ~(*(LED_BASEADDR + 1)); //FLIP VALUE

		for(i = 0; i <10000000; i++)
		{
			;
		}
	}
}

void shiftLEDS()
{
	int i = 0;
	int count = 1;
	*(LED_BASEADDR + 1) = count;
	while(1)
	{

		for(i = 0; i <10000000; i++)
		{
			;
		}

		count = count << 1;
		if(count == 16)
		{
			count = count >> 2;
			*(LED_BASEADDR + 1) = count;
			while(1)
			{


				for(i = 0; i <10000000; i++)
				{
					;
				}
				count = count >> 1;
				if(count == 1)
				{
					*(LED_BASEADDR + 1) = count;
					break;
				}
				else
				{
					*(LED_BASEADDR + 1) = count;
				}
			}

		}
		else
		{
				*(LED_BASEADDR + 1) = count;
		}

	}
}
void enableRGBS()
{
	*RGB_BASEADDR = 0xF;
}
void disableRGBS()
{
	*RGB_BASEADDR = 0x0;
}
void toggleRGBS(int led0_ID,int led1_ID,int led2_ID,int led3_ID)
{
	*(RGB_BASEADDR + 1)= *(RGB_BASEADDR + 1) ^ led0_ID;
	*(RGB_BASEADDR + 2)= *(RGB_BASEADDR + 2) ^ led1_ID;
	*(RGB_BASEADDR + 3)= *(RGB_BASEADDR + 3) ^ led2_ID;
	*(RGB_BASEADDR + 4)= *(RGB_BASEADDR + 4) ^ led3_ID;
}
void demoRGBS()
{
	*(RGB_BASEADDR + 1)= 0x1;
	*(RGB_BASEADDR + 2)=  0x2;
	*(RGB_BASEADDR + 3)=  0x4;
	*(RGB_BASEADDR + 4)= 0x7;
}
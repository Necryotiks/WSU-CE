/*
 * functions.c
 *
 *  Created on: Mar 6, 2019
 *      Author: root
 */

#include "functions.h"

void enableLED()
{
	*LED_BASEADDR = 0xF;
}
void disableLED()
{
	*LED_BASEADDR = 0x0;
}
void demoLED()
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


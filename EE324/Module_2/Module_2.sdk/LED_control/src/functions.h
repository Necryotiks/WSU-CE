/*
 * functions.h
 *
 *  Created on: Mar 4, 2019
 *      Author: Sergaljerk
 */

#ifndef SRC_FUNCTIONS_H_
#define SRC_FUNCTIONS_H_
#endif /* SRC_FUNCTIONS_H_ */

#include "xil_types.h"

#define LED_BASEADDR ((uint32_t *)0x4BB00000)
#define RGB_BASEADDR ((uint32_t *)0x4BB01000)
void demoLEDS();
void shiftLEDS();
uint32_t readLED();
void enableLEDS();
void disableLEDS();
void toggleLEDS(int ledID);
void enableRGBS();
void disableRGBS();
void toggleRGBS(int led0_ID,int led1_ID,int led2_ID,int led3_ID);
void demoRGBS();

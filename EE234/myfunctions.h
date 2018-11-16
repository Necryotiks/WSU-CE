/*
 * myfunctions.h
 *
 *  Created on: Nov 10, 2018
 *      Author: Sergaljerk
 */

#ifndef SRC_MYFUNCTIONS_H_
#define SRC_MYFUNCTIONS_H_


#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#endif /* SRC_MYFUNCTIONS_H_ */


void activateLEDS(int LED_NUM);
void deactivateLEDS(int LED_NUM);
void configureLEDS();
void disableInterrupts();
void enableInterrupts();
void GICConfigure();
void initializeGPIOInterrupts();
void IRQHandler(void * data);
void configureIO();
void initializeSVD();
void initGlobalTimer();
void initGTInterrupts();
void configureGT();
void GT_IRQ();
void GPIO_IRQ(uint32_t button);
void storeChar(uint32_t character);
void SendChar(uint8_t C);
void StoreChar(uint8_t C);
void initUART1();
void sendREADY();
void parseCMD();
void invCMD();
void svdOff();
void incSVD(int digit);
void resetSVD(int digit);

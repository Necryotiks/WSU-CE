/*
 * functions.h
 *
 *  Created on: Sep 3, 2019
 *      Author: root
 */
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#define BASELEDADDR (uint32_t *)0x4BB00000
#ifndef SRC_FUNCTIONS_H_
#define SRC_FUNCTIONS_H_
#endif /* SRC_FUNCTIONS_H_ */

void setLEDPattern(int pattern);
uint32_t readLEDS();
uint32_t readRGBS();

/*
 * main.c
 *
 *  Created on: Oct 27, 2019
 *      Author: root
 */

#include "PWM_CONTROLLER.h"

int main(void)
{
enablePWM(0xF);
setPWMFreq(ONE,MASTER_CLK_FREQ);
setPWMFreq(TWO,MASTER_CLK_FREQ);
setPWMFreq(THREE,MASTER_CLK_FREQ);
setPWMFreq(FOUR,MASTER_CLK_FREQ);
setDC(FOUR,100);
setDC(THREE,75);
setDC(TWO,50);
setDC(ONE,25);

}

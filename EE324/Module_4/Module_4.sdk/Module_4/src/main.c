/*
 * main.c
 *
 *  Created on: Mar 10, 2019
 *      Author: root
 */


#include "functions.h"

int main()
{
    init_platform();

    testPWM();

    cleanup_platform();
    return 0;
}
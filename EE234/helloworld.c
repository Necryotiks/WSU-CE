#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "myfunctions.h"
#include "xil_exception.h"
#define UART1_C_Stat_Addr 0xE000102C
#define UART1_FIFO_Addr 0xE0001030
int data = 0;
int main()
{
	init_platform();
	    initUART1();
	    configureLEDS();
	    disableInterrupts();
	    GICConfigure();
	    initializeGPIOInterrupts();
	    enableInterrupts();
	    sendREADY();
	    //initializeSVD();
	    initGlobalTimer();
	    configureGT();
	    initGTInterrupts();
	   // Xil_ExceptionRegisterHandler(5, IRQHandler, NULL);// build- in
	    while(1){

	    	uint32_t R = *((uint32_t*) UART1_C_Stat_Addr);
	    	while((R & 0x0002) != 0x2)
	    	{
	    		for(int i = 0; i < 10000; i++)
	    		{
	    			;
	    		}
	    		R = *((uint32_t*) UART1_C_Stat_Addr);
	    		uint8_t C = *((uint32_t*) UART1_FIFO_Addr);
	    		if( C >= 32)
	    		{
	    		SendChar(C);
	    		StoreChar(C);
	    		data = 1;
	    		}
	    	}
	    	if(data == 1)
	    	{
	    		sendREADY();
	    		parseCMD();
	    		data = 0;
	    	}


	    	//parse after cmd is read
	    }
	    cleanup_platform();
}

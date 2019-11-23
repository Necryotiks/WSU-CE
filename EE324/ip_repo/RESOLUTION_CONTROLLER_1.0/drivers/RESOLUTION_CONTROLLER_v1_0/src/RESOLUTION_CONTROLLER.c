

/***************************** Include Files *******************************/
#include "RESOLUTION_CONTROLLER.h"

/************************** Function Definitions ***************************/

extern uint32_t RES_BASE_ADDR
void set_resolution(int res)
{
    if(res == 720)
    {
        //END OF LINE
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 0, 1650);
        //END OF _SCREEN
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 1, 750);
        //HA_END
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 2, 1280);
        //VA_END
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 3, 720);
        //HORIZONTAL_FRONT_PORCH
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 4, 110); 
        //HORIZONTAL_SYNC_WIDTH
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 5, 40);
        //VERTICAL_FRONT_PORCH 
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 6, 5);
        //VERTICAL_SYNC_WIDTH 
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 7, 5);
    }
    else if(res == 480)
    {
        //END OF LINE
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 0, 800);
        //END OF _SCREEN
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 1, 525);
        //HA_END
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 2, 640);
        //VA_END
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 3, 480);
        //HORIZONTAL_FRONT_PORCH
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 4, 16); 
        //HORIZONTAL_SYNC_WIDTH
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 5, 96);
        //VERTICAL_FRONT_PORCH 
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 6, 10);
        //VERTICAL_SYNC_WIDTH 
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 7, 2);
    }
    else
    {
        //END OF LINE
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 0, 1650);
        //END OF _SCREEN
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 1, 750);
        //HA_END
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 2, 1280);
        //VA_END
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 3, 720);
        //HORIZONTAL_FRONT_PORCH
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 4, 110); 
        //HORIZONTAL_SYNC_WIDTH
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 5, 40);
        //VERTICAL_FRONT_PORCH 
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 6, 5);
        //VERTICAL_SYNC_WIDTH 
        RESOLUTION_CONTROLLER_mWriteReg(RES_BASE_ADDR, 7, 5);
    }
}
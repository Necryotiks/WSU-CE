

/***************************** Include Files *******************************/
#include "CHAR_ROM_CONTROLLER.h"

/************************** Function Definitions ***************************/
extern uint32_t BaseAddress;

void set_bg_color(int red,int green, int blue)
{
    CHAR_ROM_CONTROLLER_mWriteReg(BaseAddress, 3, red);
    CHAR_ROM_CONTROLLER_mWriteReg(BaseAddress, 4, green);
    CHAR_ROM_CONTROLLER_mWriteReg(BaseAddress, 5, blue);
}

void set_fg_color(int red,int green, int blue)
{
    CHAR_ROM_CONTROLLER_mWriteReg(BaseAddress, 6, red);
    CHAR_ROM_CONTROLLER_mWriteReg(BaseAddress, 7, green);
    CHAR_ROM_CONTROLLER_mWriteReg(BaseAddress, 8, blue);
}
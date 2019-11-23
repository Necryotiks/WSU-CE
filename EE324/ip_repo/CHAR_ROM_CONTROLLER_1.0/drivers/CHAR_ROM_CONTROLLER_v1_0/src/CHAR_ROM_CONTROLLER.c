

/***************************** Include Files *******************************/
#include "CHAR_ROM_CONTROLLER.h"

/************************** Function Definitions ***************************/
extern uint32_t CHAR_BASE_ADDR;

void write_char(uint32_t data)
{
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 6, 0x1); //WRITE REQ
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 0, data); //32 bit data packet that contains B,G,R,CHAR values.
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 6, 0x0); //WRITE REQ
}
void set_start_pos(uint32_t x, uint32_t y)
{
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 1, x);
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 2, y);
}
void set_bg_color(int red,int green, int blue)
{
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 3, (uint32_t)red);
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 4, (uint32_t)green);
    CHAR_ROM_CONTROLLER_mWriteReg(CHAR_BASE_ADDR, 5, (uint32_t)blue);
}


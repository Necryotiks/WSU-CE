
#ifndef H_BRIDGE_H
#define H_BRIDGE_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define H_BRIDGE_S_AXI_SLV_REG0_OFFSET 0
#define H_BRIDGE_S_AXI_SLV_REG1_OFFSET 4
#define H_BRIDGE_S_AXI_SLV_REG2_OFFSET 8
#define H_BRIDGE_S_AXI_SLV_REG3_OFFSET 12
#define H_BRIDGE_S_AXI_SLV_REG4_OFFSET 16


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a H_BRIDGE register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the H_BRIDGEdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void H_BRIDGE_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define H_BRIDGE_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a H_BRIDGE register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the H_BRIDGE device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 H_BRIDGE_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define H_BRIDGE_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the H_BRIDGE instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus H_BRIDGE_Reg_SelfTest(void * baseaddr_p);

#endif // H_BRIDGE_H



/***************************** Include Files *******************************/
#include "PWM_CONTROLLER.h"

/************************** Function Definitions ***************************/

 void enablePWM(int target)
 {
    *(PWM_ADDR) =  (target & 0xF);
 }
 void setPWMPulseWindow(int target,int val)
 {
    target = target % 4;
    if (target == 0)
    {
    target++;
    }
    uint32_t processedValue = 0;
    processedValue = val;
    pulse_window = processedValue;
    *(PWM_ADDR+target) = processedValue;
 }
 void setDC(int target, int DCPercent)
 {
    target = target % 4;
    if (target == 0)
    {
    target++;
    }
 if(DCPercent > 100)
 {
 DCPercent = 100;
 }
 else if(DCPercent < 0)
 {
 DCPercent = 0;
 }
   uint32_t processedValue =  0;
   processedValue = pulse_window * ( DCPercent / 100); 
    *(PWM_ADDR+(target+4)) = processedValue;
 }

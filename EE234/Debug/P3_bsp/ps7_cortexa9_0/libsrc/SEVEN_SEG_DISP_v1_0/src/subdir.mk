################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/SEVEN_SEG_DISP.c \
../P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/SEVEN_SEG_DISP_selftest.c 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/SEVEN_SEG_DISP.o \
./P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/SEVEN_SEG_DISP_selftest.o 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/SEVEN_SEG_DISP.d \
./P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/SEVEN_SEG_DISP_selftest.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/SEVEN_SEG_DISP_v1_0/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



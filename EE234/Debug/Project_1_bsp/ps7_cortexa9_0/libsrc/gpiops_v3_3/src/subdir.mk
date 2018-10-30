################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_g.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_hw.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_intr.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_selftest.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_sinit.c 

OBJS += \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_g.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_hw.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_intr.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_selftest.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_sinit.o 

C_DEPS += \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_g.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_hw.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_intr.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_selftest.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/xgpiops_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/%.o: ../Project_1_bsp/ps7_cortexa9_0/libsrc/gpiops_v3_3/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



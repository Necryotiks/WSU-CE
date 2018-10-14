################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_g.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_selftest.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_sinit.c 

OBJS += \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_g.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_selftest.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_sinit.o 

C_DEPS += \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_g.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_selftest.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/xscutimer_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/%.o: ../Project_4_bsp/ps7_cortexa9_0/libsrc/scutimer_v2_1/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



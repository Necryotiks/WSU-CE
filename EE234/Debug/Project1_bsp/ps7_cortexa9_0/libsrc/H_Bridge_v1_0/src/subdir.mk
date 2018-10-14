################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/H_Bridge.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/H_Bridge_selftest.c 

OBJS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/H_Bridge.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/H_Bridge_selftest.o 

C_DEPS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/H_Bridge.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/H_Bridge_selftest.d 


# Each subdirectory must supply rules for building sources it contributes
Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/%.o: ../Project1_bsp/ps7_cortexa9_0/libsrc/H_Bridge_v1_0/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



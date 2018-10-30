################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../Project_2/src/lscript.ld 

S_UPPER_SRCS += \
../Project_2/src/P2.S \
../Project_2/src/RGB.S 

OBJS += \
./Project_2/src/P2.o \
./Project_2/src/RGB.o 

S_UPPER_DEPS += \
./Project_2/src/P2.d \
./Project_2/src/RGB.d 


# Each subdirectory must supply rules for building sources it contributes
Project_2/src/%.o: ../Project_2/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



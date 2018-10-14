################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../PRO3/src/lscript.ld 

S_UPPER_SRCS += \
../PRO3/src/d.S \
../PRO3/src/ttc.S 

OBJS += \
./PRO3/src/d.o \
./PRO3/src/ttc.o 

S_UPPER_DEPS += \
./PRO3/src/d.d \
./PRO3/src/ttc.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3/src/%.o: ../PRO3/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



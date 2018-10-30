################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../Project1/src/lscript.ld 

C_SRCS += \
../Project1/src/helloworld.c \
../Project1/src/platform.c 

OBJS += \
./Project1/src/helloworld.o \
./Project1/src/platform.o 

C_DEPS += \
./Project1/src/helloworld.d \
./Project1/src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
Project1/src/%.o: ../Project1/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



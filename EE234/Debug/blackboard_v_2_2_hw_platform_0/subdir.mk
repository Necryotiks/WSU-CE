################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../blackboard_v_2_2_hw_platform_0/ps7_init.c \
../blackboard_v_2_2_hw_platform_0/ps7_init_gpl.c 

OBJS += \
./blackboard_v_2_2_hw_platform_0/ps7_init.o \
./blackboard_v_2_2_hw_platform_0/ps7_init_gpl.o 

C_DEPS += \
./blackboard_v_2_2_hw_platform_0/ps7_init.d \
./blackboard_v_2_2_hw_platform_0/ps7_init_gpl.d 


# Each subdirectory must supply rules for building sources it contributes
blackboard_v_2_2_hw_platform_0/%.o: ../blackboard_v_2_2_hw_platform_0/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



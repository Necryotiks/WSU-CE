################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic.c \
../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_g.c \
../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_hw.c \
../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_intr.c \
../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_selftest.c \
../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_sinit.c 

OBJS += \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic.o \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_g.o \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_hw.o \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_intr.o \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_selftest.o \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_sinit.o 

C_DEPS += \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic.d \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_g.d \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_hw.d \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_intr.d \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_selftest.d \
./Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/%.o: ../Project_2_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



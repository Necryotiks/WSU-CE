################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic.c \
../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_g.c \
../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_hw.c \
../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_intr.c \
../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_selftest.c \
../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_sinit.c 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic.o \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_g.o \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_hw.o \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_intr.o \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_selftest.o \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_sinit.o 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic.d \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_g.d \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_hw.d \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_intr.d \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_selftest.d \
./P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/xscugic_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/scugic_v3_9/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



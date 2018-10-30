################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg.c \
../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_g.c \
../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_hw.c \
../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_intr.c \
../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_selftest.c \
../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_sinit.c 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg.o \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_g.o \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_hw.o \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_intr.o \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_selftest.o \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_sinit.o 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg.d \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_g.d \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_hw.d \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_intr.d \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_selftest.d \
./P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



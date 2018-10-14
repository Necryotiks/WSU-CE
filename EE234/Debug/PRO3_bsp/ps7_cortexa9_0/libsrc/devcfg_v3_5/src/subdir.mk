################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_g.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_hw.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_intr.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_selftest.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_sinit.c 

OBJS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_g.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_hw.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_intr.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_selftest.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_sinit.o 

C_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_g.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_hw.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_intr.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_selftest.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/xdevcfg_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/devcfg_v3_5/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



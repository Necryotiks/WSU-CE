################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips.c \
../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_g.c \
../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_hw.c \
../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_options.c \
../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_selftest.c \
../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_sinit.c 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips.o \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_g.o \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_hw.o \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_options.o \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_selftest.o \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_sinit.o 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips.d \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_g.d \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_hw.d \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_options.d \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_selftest.d \
./P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/xqspips_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/qspips_v3_4/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



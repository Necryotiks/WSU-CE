################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_g.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_hw.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_options.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_selftest.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_sinit.c 

OBJS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_g.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_hw.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_options.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_selftest.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_sinit.o 

C_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_g.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_hw.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_options.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_selftest.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/xspips_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/spips_v3_1/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



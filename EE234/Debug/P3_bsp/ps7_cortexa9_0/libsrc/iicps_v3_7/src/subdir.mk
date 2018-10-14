################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.c \
../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.c 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.o \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.o 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.d \
./P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.c 

OBJS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.o 

C_DEPS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.d 


# Each subdirectory must supply rules for building sources it contributes
Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/%.o: ../Project1_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



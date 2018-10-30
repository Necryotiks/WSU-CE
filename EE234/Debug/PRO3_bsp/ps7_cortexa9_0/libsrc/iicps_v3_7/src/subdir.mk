################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.c 

OBJS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.o 

C_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_g.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_hw.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_intr.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_master.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_options.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_selftest.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_sinit.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/xiicps_slave.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/iicps_v3_7/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



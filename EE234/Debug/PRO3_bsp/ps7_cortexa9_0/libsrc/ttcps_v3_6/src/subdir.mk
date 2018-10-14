################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_g.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_options.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_selftest.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_sinit.c 

OBJS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_g.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_options.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_selftest.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_sinit.o 

C_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_g.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_options.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_selftest.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/xttcps_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/ttcps_v3_6/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



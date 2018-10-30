################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_g.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_selftest.c \
../Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_sinit.c 

OBJS += \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_g.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_selftest.o \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_sinit.o 

C_DEPS += \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_g.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_selftest.d \
./Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/xscuwdt_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/%.o: ../Project_1_bsp/ps7_cortexa9_0/libsrc/scuwdt_v2_1/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_endpoint.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_g.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_hw.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_intr.c \
../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_sinit.c 

OBJS += \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_endpoint.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_g.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_hw.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_intr.o \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_sinit.o 

C_DEPS += \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_endpoint.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_g.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_hw.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_intr.d \
./Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/xusbps_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/%.o: ../Project_4_bsp/ps7_cortexa9_0/libsrc/usbps_v2_4/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



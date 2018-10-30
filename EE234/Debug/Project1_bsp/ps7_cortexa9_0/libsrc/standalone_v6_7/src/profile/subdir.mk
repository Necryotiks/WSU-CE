################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.c \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.c 

S_UPPER_SRCS += \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.S \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.S \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.S \
../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.S 

OBJS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.o \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.o 

S_UPPER_DEPS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.d 

C_DEPS += \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.d \
./Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.d 


# Each subdirectory must supply rules for building sources it contributes
Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.o: ../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.o: ../Project1_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



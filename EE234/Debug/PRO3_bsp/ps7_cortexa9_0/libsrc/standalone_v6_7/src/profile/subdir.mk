################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.c \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.c 

S_UPPER_SRCS += \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.S \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.S \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.S \
../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.S 

OBJS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.o \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.o 

S_UPPER_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.d 

C_DEPS += \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.d \
./PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.d 


# Each subdirectory must supply rules for building sources it contributes
PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.o: ../PRO3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



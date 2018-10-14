################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.c \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.c \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.c \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.c \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.c 

S_UPPER_SRCS += \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.S \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.S \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.S \
../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.S 

OBJS += \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.o \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.o 

S_UPPER_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/dummy.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_arm.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_mb.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_mcount_ppc.d 

C_DEPS += \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_clean.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_init.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/_profile_timer_hw.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_cg.d \
./P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/profile_hist.d 


# Each subdirectory must supply rules for building sources it contributes
P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.o: ../P3_bsp/ps7_cortexa9_0/libsrc/standalone_v6_7/src/profile/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/Sergaljerk/WSU-CPTE/EE234/Project_4_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



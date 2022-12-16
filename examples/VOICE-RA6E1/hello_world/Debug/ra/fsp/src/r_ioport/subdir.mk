################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/r_ioport/r_ioport.c 

SREC += \
Hello_World_TFLM_EKRA6M4_3.srec 

C_DEPS += \
./ra/fsp/src/r_ioport/r_ioport.d 

OBJS += \
./ra/fsp/src/r_ioport/r_ioport.o 

MAP += \
Hello_World_TFLM_EKRA6M4_3.map 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/r_ioport/%.o: ../ra/fsp/src/r_ioport/%.c
	$(file > $@.in,-mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fpermissive -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -D_RA_CORE=CM33 -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/src" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra/fsp/inc" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra/fsp/inc/api" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra/fsp/inc/instances" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra_gen" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra_cfg/fsp_cfg/bsp" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/ra_cfg/fsp_cfg" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/src/third_party/gemmlowp" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/src/third_party/ruy" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/src/third_party/kissfft" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_EKRA6M4_3/src/third_party/flatbuffers/include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"


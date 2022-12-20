################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc \
../src/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc \
../src/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc 

SREC += \
Hello_World_TFLM_VOICE_RA6E1.srec 

CC_DEPS += \
./src/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d \
./src/tensorflow/lite/micro/memory_planner/linear_memory_planner.d \
./src/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d 

OBJS += \
./src/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o \
./src/tensorflow/lite/micro/memory_planner/linear_memory_planner.o \
./src/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o 

MAP += \
Hello_World_TFLM_VOICE_RA6E1.map 


# Each subdirectory must supply rules for building sources it contributes
src/tensorflow/lite/micro/memory_planner/%.o: ../src/tensorflow/lite/micro/memory_planner/%.cc
	$(file > $@.in,-mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fpermissive -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -D_RA_CORE=CM33 -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/src" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra/fsp/inc" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra/fsp/inc/api" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra/fsp/inc/instances" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra_gen" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra_cfg/fsp_cfg/bsp" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/ra_cfg/fsp_cfg" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/src/third_party/gemmlowp" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/src/third_party/ruy" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/src/third_party/kissfft" -I"C:/Users/devteam/e2_studio/workspace/Hello_World_TFLM_VOICE_RA6E1/src/third_party/flatbuffers/include" -std=c++11 -fabi-version=0 -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<" -Os)
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"


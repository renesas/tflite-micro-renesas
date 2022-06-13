################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra_gen/common_data.c \
../ra_gen/hal_data.c \
../ra_gen/pin_data.c \
../ra_gen/vector_data.c 

C_DEPS += \
./ra_gen/common_data.d \
./ra_gen/hal_data.d \
./ra_gen/pin_data.d \
./ra_gen/vector_data.d 

OBJS += \
./ra_gen/common_data.o \
./ra_gen/hal_data.o \
./ra_gen/pin_data.o \
./ra_gen/vector_data.o 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fpermissive -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -D_RENESAS_RA_ -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\src" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra\fsp\inc" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra\fsp\inc\api" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra\fsp\inc\instances" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra_gen" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra_cfg\fsp_cfg\bsp" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\ra_cfg\fsp_cfg" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\src\third_party\gemmlowp" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\src\third_party\ruy" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\src\third_party\kissfft" -I"C:\Users\a5131463\Desktop\TinymlTEst\Hello_World_TFLM_EKRA6M4\src\third_party\flatbuffers\include" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/HAL_CM4.S \
../mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/SVC_Table.S 

OBJS += \
./mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/HAL_CM4.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/SVC_Table.o 

S_UPPER_DEPS += \
./mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/HAL_CM4.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/SVC_Table.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/%.o: ../mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\app" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\app\tasks" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\sensors\drivers" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../communication/interface/config/LoRaConfig.cpp 

OBJS += \
./communication/interface/config/LoRaConfig.o 

CPP_DEPS += \
./communication/interface/config/LoRaConfig.d 


# Each subdirectory must supply rules for building sources it contributes
communication/interface/config/%.o: ../communication/interface/config/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app\tasks" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



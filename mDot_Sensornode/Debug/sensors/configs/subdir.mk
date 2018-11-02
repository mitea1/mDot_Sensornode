################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../sensors/configs/BME280Config.cpp \
../sensors/configs/FlowMeterConfig.cpp \
../sensors/configs/MAX44009Config.cpp \
../sensors/configs/MPU9250Config.cpp \
../sensors/configs/SI1143Config.cpp \
../sensors/configs/uBloxConfig.cpp 

OBJS += \
./sensors/configs/BME280Config.o \
./sensors/configs/FlowMeterConfig.o \
./sensors/configs/MAX44009Config.o \
./sensors/configs/MPU9250Config.o \
./sensors/configs/SI1143Config.o \
./sensors/configs/uBloxConfig.o 

CPP_DEPS += \
./sensors/configs/BME280Config.d \
./sensors/configs/FlowMeterConfig.d \
./sensors/configs/MAX44009Config.d \
./sensors/configs/MPU9250Config.d \
./sensors/configs/SI1143Config.d \
./sensors/configs/uBloxConfig.d 


# Each subdirectory must supply rules for building sources it contributes
sensors/configs/%.o: ../sensors/configs/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app\tasks" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



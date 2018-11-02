################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../communication/messages/BME280HumidityMessage.cpp \
../communication/messages/BME280PressureMessage.cpp \
../communication/messages/BME280TemperatureMessage.cpp \
../communication/messages/CommandMessage.cpp \
../communication/messages/FlowMeterMessage.cpp \
../communication/messages/LoRaMeasuermentMessage.cpp \
../communication/messages/MAX44009Message.cpp \
../communication/messages/MPU9250AccelerationMessage.cpp \
../communication/messages/MPU9250GyroscopeMessage.cpp \
../communication/messages/MPU9250TeslaMessage.cpp \
../communication/messages/SI1143ProximityMessage.cpp \
../communication/messages/SensorMessage.cpp \
../communication/messages/UBloxGPSMessage.cpp 

OBJS += \
./communication/messages/BME280HumidityMessage.o \
./communication/messages/BME280PressureMessage.o \
./communication/messages/BME280TemperatureMessage.o \
./communication/messages/CommandMessage.o \
./communication/messages/FlowMeterMessage.o \
./communication/messages/LoRaMeasuermentMessage.o \
./communication/messages/MAX44009Message.o \
./communication/messages/MPU9250AccelerationMessage.o \
./communication/messages/MPU9250GyroscopeMessage.o \
./communication/messages/MPU9250TeslaMessage.o \
./communication/messages/SI1143ProximityMessage.o \
./communication/messages/SensorMessage.o \
./communication/messages/UBloxGPSMessage.o 

CPP_DEPS += \
./communication/messages/BME280HumidityMessage.d \
./communication/messages/BME280PressureMessage.d \
./communication/messages/BME280TemperatureMessage.d \
./communication/messages/CommandMessage.d \
./communication/messages/FlowMeterMessage.d \
./communication/messages/LoRaMeasuermentMessage.d \
./communication/messages/MAX44009Message.d \
./communication/messages/MPU9250AccelerationMessage.d \
./communication/messages/MPU9250GyroscopeMessage.d \
./communication/messages/MPU9250TeslaMessage.d \
./communication/messages/SI1143ProximityMessage.d \
./communication/messages/SensorMessage.d \
./communication/messages/UBloxGPSMessage.d 


# Each subdirectory must supply rules for building sources it contributes
communication/messages/%.o: ../communication/messages/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app\tasks" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



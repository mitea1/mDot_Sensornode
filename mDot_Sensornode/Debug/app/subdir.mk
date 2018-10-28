################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../app/Application.cpp \
../app/ApplicationConfig.cpp \
../app/Decoder.cpp \
../app/I2C_RT.cpp \
../app/UARTTunnel.cpp \
../app/main.cpp 

OBJS += \
./app/Application.o \
./app/ApplicationConfig.o \
./app/Decoder.o \
./app/I2C_RT.o \
./app/UARTTunnel.o \
./app/main.o 

CPP_DEPS += \
./app/Application.d \
./app/ApplicationConfig.d \
./app/Decoder.d \
./app/I2C_RT.d \
./app/UARTTunnel.d \
./app/main.d 


# Each subdirectory must supply rules for building sources it contributes
app/%.o: ../app/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\app" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\app\tasks" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



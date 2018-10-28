################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../app/tasks/Task.cpp \
../app/tasks/TaskAcceleration.cpp \
../app/tasks/TaskCommandHandler.cpp \
../app/tasks/TaskDatahandler.cpp \
../app/tasks/TaskFlowMeter.cpp \
../app/tasks/TaskGPS.cpp \
../app/tasks/TaskGyroscope.cpp \
../app/tasks/TaskHumidity.cpp \
../app/tasks/TaskLight.cpp \
../app/tasks/TaskLoRaMeasurement.cpp \
../app/tasks/TaskPressure.cpp \
../app/tasks/TaskProximity.cpp \
../app/tasks/TaskTemperature.cpp \
../app/tasks/TaskTesla.cpp 

OBJS += \
./app/tasks/Task.o \
./app/tasks/TaskAcceleration.o \
./app/tasks/TaskCommandHandler.o \
./app/tasks/TaskDatahandler.o \
./app/tasks/TaskFlowMeter.o \
./app/tasks/TaskGPS.o \
./app/tasks/TaskGyroscope.o \
./app/tasks/TaskHumidity.o \
./app/tasks/TaskLight.o \
./app/tasks/TaskLoRaMeasurement.o \
./app/tasks/TaskPressure.o \
./app/tasks/TaskProximity.o \
./app/tasks/TaskTemperature.o \
./app/tasks/TaskTesla.o 

CPP_DEPS += \
./app/tasks/Task.d \
./app/tasks/TaskAcceleration.d \
./app/tasks/TaskCommandHandler.d \
./app/tasks/TaskDatahandler.d \
./app/tasks/TaskFlowMeter.d \
./app/tasks/TaskGPS.d \
./app/tasks/TaskGyroscope.d \
./app/tasks/TaskHumidity.d \
./app/tasks/TaskLight.d \
./app/tasks/TaskLoRaMeasurement.d \
./app/tasks/TaskPressure.d \
./app/tasks/TaskProximity.d \
./app/tasks/TaskTemperature.d \
./app/tasks/TaskTesla.d 


# Each subdirectory must supply rules for building sources it contributes
app/tasks/%.o: ../app/tasks/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\app" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\eclipse-workspace\mDot_Sensornode\app\tasks" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



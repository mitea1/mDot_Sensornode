################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-rtos/rtos/rtos_idle.c 

CPP_SRCS += \
../mbed-rtos/rtos/Mutex.cpp \
../mbed-rtos/rtos/RtosTimer.cpp \
../mbed-rtos/rtos/Semaphore.cpp \
../mbed-rtos/rtos/Thread.cpp 

OBJS += \
./mbed-rtos/rtos/Mutex.o \
./mbed-rtos/rtos/RtosTimer.o \
./mbed-rtos/rtos/Semaphore.o \
./mbed-rtos/rtos/Thread.o \
./mbed-rtos/rtos/rtos_idle.o 

C_DEPS += \
./mbed-rtos/rtos/rtos_idle.d 

CPP_DEPS += \
./mbed-rtos/rtos/Mutex.d \
./mbed-rtos/rtos/RtosTimer.d \
./mbed-rtos/rtos/Semaphore.d \
./mbed-rtos/rtos/Thread.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-rtos/rtos/%.o: ../mbed-rtos/rtos/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app\tasks" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed-rtos/rtos/%.o: ../mbed-rtos/rtos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app\tasks" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



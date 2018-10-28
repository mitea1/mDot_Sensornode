################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbed-rtos/rtx/TARGET_CORTEX_M/HAL_CM.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Event.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_List.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_MemBox.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mutex.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Robin.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_System.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Task.c \
../mbed-rtos/rtx/TARGET_CORTEX_M/rt_Time.c 

OBJS += \
./mbed-rtos/rtx/TARGET_CORTEX_M/HAL_CM.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Event.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_List.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_MemBox.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mutex.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Robin.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_System.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Task.o \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Time.o 

C_DEPS += \
./mbed-rtos/rtx/TARGET_CORTEX_M/HAL_CM.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Event.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_List.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_MemBox.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mutex.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Robin.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_System.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Task.d \
./mbed-rtos/rtx/TARGET_CORTEX_M/rt_Time.d 


# Each subdirectory must supply rules for building sources it contributes
mbed-rtos/rtx/TARGET_CORTEX_M/%.o: ../mbed-rtos/rtx/TARGET_CORTEX_M/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DTARGET_STM32F411RE -D__CORTEX_M4 -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\LoRaMac" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot\MTS-Utils" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\TARGET_MTS_MDOT_F411RE\TARGET_STM\TARGET_STM32F4\TARGET_MTS_MDOT_F411RE" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtos" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed-rtos\rtx\TARGET_CORTEX_M" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\configs" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\sensors\drivers" -I"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\app\tasks" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



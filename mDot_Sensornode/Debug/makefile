################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include sensors/drivers/subdir.mk
-include sensors/configs/subdir.mk
-include mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_RTOS_M4_M7/TOOLCHAIN_GCC/subdir.mk
-include mbed-rtos/rtx/TARGET_CORTEX_M/subdir.mk
-include mbed-rtos/rtos/subdir.mk
-include communication/messages/subdir.mk
-include communication/interface/driver/subdir.mk
-include communication/interface/config/subdir.mk
-include app/tasks/subdir.mk
-include app/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
mDot_Sensornode.bin \

SECONDARY_SIZE += \
mDot_Sensornode.siz \


# All Target
all: mDot_Sensornode.elf secondary-outputs

# Tool invocations
mDot_Sensornode.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM Cross C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m4 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T "C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\ldscripts\STM32F411XE.ld" -Xlinker --gc-sections -L"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\libmDot" -L"C:\Users\Adrian\git\mDot_Sensornode\mDot_Sensornode\mbed\lib" -Wl,-Map,"mDot_Sensornode.map" --specs=nosys.specs -o "mDot_Sensornode.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

mDot_Sensornode.bin: mDot_Sensornode.elf
	@echo 'Invoking: GNU ARM Cross Create Flash Image'
	arm-none-eabi-objcopy -O binary "mDot_Sensornode.elf"  "mDot_Sensornode.bin"
	@echo 'Finished building: $@'
	@echo ' '

mDot_Sensornode.siz: mDot_Sensornode.elf
	@echo 'Invoking: GNU ARM Cross Print Size'
	arm-none-eabi-size --format=berkeley "mDot_Sensornode.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) mDot_Sensornode.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include MCAL/subdir.mk
-include HAL/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
Sergutic_Power.lss \

FLASH_IMAGE += \
Sergutic_Power.hex \

EEPROM_IMAGE += \
Sergutic_Power.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: Sergutic_Power.elf secondary-outputs

# Tool invocations
Sergutic_Power.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,Sergutic_Power.map -mmcu=atmega328p -o "Sergutic_Power.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Sergutic_Power.lss: Sergutic_Power.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S Sergutic_Power.elf  >"Sergutic_Power.lss"
	@echo 'Finished building: $@'
	@echo ' '

Sergutic_Power.hex: Sergutic_Power.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex Sergutic_Power.elf  "Sergutic_Power.hex"
	@echo 'Finished building: $@'
	@echo ' '

Sergutic_Power.eep: Sergutic_Power.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex Sergutic_Power.elf  "Sergutic_Power.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Sergutic_Power.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p Sergutic_Power.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) Sergutic_Power.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

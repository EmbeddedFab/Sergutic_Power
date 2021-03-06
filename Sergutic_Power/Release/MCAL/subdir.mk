################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/EF_ADC.c \
../MCAL/EF_DIO.c \
../MCAL/EF_PWM.c \
../MCAL/EF_SpechialTIMER.c \
../MCAL/EF_Timer.c \
../MCAL/EF_UART.c 

OBJS += \
./MCAL/EF_ADC.o \
./MCAL/EF_DIO.o \
./MCAL/EF_PWM.o \
./MCAL/EF_SpechialTIMER.o \
./MCAL/EF_Timer.o \
./MCAL/EF_UART.o 

C_DEPS += \
./MCAL/EF_ADC.d \
./MCAL/EF_DIO.d \
./MCAL/EF_PWM.d \
./MCAL/EF_SpechialTIMER.d \
./MCAL/EF_Timer.d \
./MCAL/EF_UART.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/%.o: ../MCAL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/OV7676/src/ov7676.c 

OBJS += \
./Drivers/OV7676/src/ov7676.o 

C_DEPS += \
./Drivers/OV7676/src/ov7676.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/OV7676/src/ov7676.o: ../Drivers/OV7676/src/ov7676.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F446xx -DDEBUG -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I"C:/Users/Alessandro/Desktop/STM32Workspace/ElectronicsForEmbeddedSystems/MCU_Firmware/Drivers/OV7676/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/OV7676/src/ov7676.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/lpuart.c \
../source/main.c \
../source/semihost_hardfault.c 

OBJS += \
./source/lpuart.o \
./source/main.o \
./source/semihost_hardfault.o 

C_DEPS += \
./source/lpuart.d \
./source/main.d \
./source/semihost_hardfault.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MIMXRT1052DVL6B -DCPU_MIMXRT1052DVL6B_cm7 -DSDK_DEBUGCONSOLE=1 -DPRINTF_FLOAT_ENABLE=0 -DSCANF_FLOAT_ENABLE=0 -DPRINTF_ADVANCED_ENABLE=0 -DSCANF_ADVANCED_ENABLE=0 -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DFSL_RTOS_FREE_RTOS -DCR_INTEGER_PRINTF -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSERIAL_PORT_TYPE_UART=1 -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/drivers" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/utilities" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/device" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/CMSIS" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/xip" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/component/serial_manager" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/component/lists" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/component/uart" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/drivers" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/utilities" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/device" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/CMSIS" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/xip" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/component/serial_manager" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/component/lists" -I"/Users/stlp/Documents/MCUX_workspace/cdh_uart_cons_prod/component/uart" -I../board -I../drivers/freertos -I../source -I../ -I../drivers -I../device -I../CMSIS -I../amazon-freertos/include -I../amazon-freertos/FreeRTOS/portable -I../utilities -I../component/serial_manager -I../component/uart -I../component/lists -I../xip -O0 -fno-common -g3 -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


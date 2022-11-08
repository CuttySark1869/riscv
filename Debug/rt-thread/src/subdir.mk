################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/device.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/mem.c \
../rt-thread/src/mempool.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/device.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/mem.o \
./rt-thread/src/mempool.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/device.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/mem.d \
./rt-thread/src/mempool.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv32-haawking-elf-gcc -march=rv32imc -D__RUNNING_IN_FLASH_  -T DSC28034_link_FLASH.ld -mabi=ilp32 -mcmodel=medlow -msave-restore --target=riscv32-unknown-elf --sysroot=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc/riscv64-unknown-elf --gcc-toolchain=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -DDEBUG -DDSC28034 -DDSC28034_BOARD -I"../teramic-drivers/teramic-dsc28034-board/common" -I"C:\Users\yg934\GitHub\teramic\board" -I"C:\Users\yg934\GitHub\teramic\rt-thread\bsp" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_headers/include" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_common/include" -I"C:\Users\yg934\GitHub\teramic\rt-thread\include" -I"C:\Users\yg934\GitHub\teramic\rt-thread\components\drivers\include" -I"C:\Users\yg934\GitHub\teramic" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



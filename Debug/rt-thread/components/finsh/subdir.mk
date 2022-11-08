################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/finsh/cmd.c \
../rt-thread/components/finsh/msh.c \
../rt-thread/components/finsh/msh_parse.c \
../rt-thread/components/finsh/shell.c 

OBJS += \
./rt-thread/components/finsh/cmd.o \
./rt-thread/components/finsh/msh.o \
./rt-thread/components/finsh/msh_parse.o \
./rt-thread/components/finsh/shell.o 

C_DEPS += \
./rt-thread/components/finsh/cmd.d \
./rt-thread/components/finsh/msh.d \
./rt-thread/components/finsh/msh_parse.d \
./rt-thread/components/finsh/shell.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/finsh/%.o: ../rt-thread/components/finsh/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv32-haawking-elf-gcc -march=rv32imc -D__RUNNING_IN_FLASH_  -T DSC28034_link_FLASH.ld -mabi=ilp32 -mcmodel=medlow -msave-restore --target=riscv32-unknown-elf --sysroot=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc/riscv64-unknown-elf --gcc-toolchain=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -DDEBUG -DDSC28034 -DDSC28034_BOARD -I"../teramic-drivers/teramic-dsc28034-board/common" -I"C:\Users\yg934\GitHub\teramic\board" -I"C:\Users\yg934\GitHub\teramic\rt-thread\bsp" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_headers/include" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_common/include" -I"C:\Users\yg934\GitHub\teramic\rt-thread\include" -I"C:\Users\yg934\GitHub\teramic\rt-thread\components\drivers\include" -I"C:\Users\yg934\GitHub\teramic" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



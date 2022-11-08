################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../teramic-drivers/teramic-dsc28034-board/common/syscalls.c 

S_UPPER_SRCS += \
../teramic-drivers/teramic-dsc28034-board/common/crt.S 

OBJS += \
./teramic-drivers/teramic-dsc28034-board/common/crt.o \
./teramic-drivers/teramic-dsc28034-board/common/syscalls.o 

S_UPPER_DEPS += \
./teramic-drivers/teramic-dsc28034-board/common/crt.d 

C_DEPS += \
./teramic-drivers/teramic-dsc28034-board/common/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
teramic-drivers/teramic-dsc28034-board/common/%.o: ../teramic-drivers/teramic-dsc28034-board/common/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv32-haawking-elf-gcc -march=rv32imc -D__RUNNING_IN_FLASH_  -T DSC28034_link_FLASH.ld -mabi=ilp32 -mcmodel=medlow -msave-restore --target=riscv32-unknown-elf --sysroot=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc/riscv64-unknown-elf --gcc-toolchain=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -x assembler-with-cpp -DDEBUG -DDSC28034 -DDSC28034_BOARD -I"../teramic-drivers/teramic-dsc28034-board/common" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_headers/include" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_common/include" -I"E:\Documents\workspace\C\rt-thread\include" -I"C:\Users\yg934\GitHub\teramic" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

teramic-drivers/teramic-dsc28034-board/common/%.o: ../teramic-drivers/teramic-dsc28034-board/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv32-haawking-elf-gcc -march=rv32imc -D__RUNNING_IN_FLASH_  -T DSC28034_link_FLASH.ld -mabi=ilp32 -mcmodel=medlow -msave-restore --target=riscv32-unknown-elf --sysroot=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc/riscv64-unknown-elf --gcc-toolchain=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -DDEBUG -DDSC28034 -DDSC28034_BOARD -I"../teramic-drivers/teramic-dsc28034-board/common" -I"C:\Users\yg934\GitHub\teramic\board" -I"C:\Users\yg934\GitHub\teramic\rt-thread\bsp" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_headers/include" -I"../teramic-drivers/teramic-dsc28034-board/DSP2803x_common/include" -I"C:\Users\yg934\GitHub\teramic\rt-thread\include" -I"C:\Users\yg934\GitHub\teramic\rt-thread\components\drivers\include" -I"C:\Users\yg934\GitHub\teramic" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf *.s *.map *.asm

# All of the sources participating in the build are defined here
-include sources.mk
-include teramic-drivers/teramic-dsc28034-board/common/subdir.mk
-include teramic-drivers/teramic-dsc28034-board/DSP2803x_headers/source/subdir.mk
-include teramic-drivers/teramic-dsc28034-board/DSP2803x_common/source/subdir.mk
-include src/subdir.mk
-include rt-thread/src/subdir.mk
-include rt-thread/libcpu/subdir.mk
-include rt-thread/components/finsh/subdir.mk
-include rt-thread/components/drivers/misc/subdir.mk
-include rt-thread/bsp/subdir.mk
-include board/subdir.mk
-include applications/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
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
SECONDARY_FLASH += \
TSET_BO.hex \

SECONDARY_SIZE += \
TSET_BO.siz \


# All Target
all: TSET_BO.elf secondary-outputs

# Tool invocations
TSET_BO.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C Linker'
	riscv32-haawking-elf-gcc -march=rv32imc -D__RUNNING_IN_FLASH_  -T DSC28034_link_FLASH.ld -mabi=ilp32 -mcmodel=medlow -msave-restore --target=riscv32-unknown-elf --sysroot=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc/riscv64-unknown-elf --gcc-toolchain=C:/Users/yg934/Documents/Teramic-IDE-win64-V1.5.1/dsc-tools/compiler/riscv-tc-gcc -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -nostartfiles -nostdlib -Xlinker --gc-sections -L../lib -L"../teramic-drivers/ldscripts" -Wl,-Map,"TSET_BO.map" -o "TSET_BO.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

TSET_BO.hex: TSET_BO.elf
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv32-haawking-elf-objcopy -O ihex "TSET_BO.elf"  "TSET_BO.hex"
	@echo 'Finished building: $@'
	@echo ' '

TSET_BO.siz: TSET_BO.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv32-haawking-elf-size --format=berkeley -x "TSET_BO.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) TSET_BO.elf
	-@echo ' '

post-build:
	-riscv32-haawking-elf-objdump -D "TSET_BO.elf" > "TSET_BO.asm";riscv64-unknown-elf-objdump -D "TSET_BO.elf" > "TSET_BO.s";
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents post-build

-include ../makefile.targets

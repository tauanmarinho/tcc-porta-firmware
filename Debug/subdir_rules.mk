################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Hardware.obj: ../Hardware.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="Hardware.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

MyString.obj: ../MyString.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="MyString.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

adc.obj: ../adc.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="adc.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

buzzer.obj: ../buzzer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="buzzer.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

cpu.obj: ../cpu.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="cpu.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

criptografy.obj: ../criptografy.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="criptografy.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

eth_client.obj: ../eth_client.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="eth_client.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

flash.obj: ../flash.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="flash.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

gpio.obj: ../gpio.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="gpio.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

interrupt.obj: ../interrupt.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="interrupt.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

json.obj: ../json.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="json.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

keyboard.obj: ../keyboard.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="keyboard.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

lcd.obj: ../lcd.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="lcd.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="main.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

rfid.obj: ../rfid.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="rfid.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

spi.obj: ../spi.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="spi.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

ssi.obj: ../ssi.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="ssi.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup_ccs.obj: ../startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="startup_ccs.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

sysctl.obj: ../sysctl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="sysctl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

timer.obj: ../timer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="timer.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

trava_eletrica.obj: ../trava_eletrica.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="trava_eletrica.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

uart.obj: ../uart.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 --abi=eabi -me -O2 --include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --include_path="E:/Downloads/trabalhoJunto/trabalhoJunto" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/examples/boards/ek-tm4c129exl" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/src/include/ipv4" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/apps" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party/lwip-1.4.1/ports/tiva-tm4c129/include" --include_path="C:/ti/tirex-content/TivaWare_C_Series-2.1.3.156/third_party" --advice:power=all -g --gcc --define=ccs="ccs" --define=PART_TM4C129ENCPDT --define=TARGET_IS_TM4C129_RA0 --define=LWIP_1_4_1 --define=USE_HTTP_1_0 --define=UART_BUFFERED --diag_wrap=off --diag_warning=225 --display_error_number --gen_func_subsections=on --ual --preproc_with_compile --preproc_dependency="uart.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '



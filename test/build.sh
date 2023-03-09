#!/bin/bash

# Not a proper build system but this is simple enough to not need one
sh-elf-gcc -T linkerscript.ld src/crt0.S src/syscall.S src/library.c src/main.c libs/printf.c libs/miniz.c -m4-nofpu -mb -fno-pie -ffreestanding -nostdlib -g -o program.elf -lgcc -g -flto -O3
sh-elf-objcopy -O binary program.elf program.bin

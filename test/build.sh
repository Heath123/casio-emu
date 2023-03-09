#!/bin/bash

sh-elf-gcc -T test.ld test-prog.c printf.c miniz.c crt0.S syscall.S -m4-nofpu -mb -fno-pie -ffreestanding -nostdlib -g -o test-prog.elf -lgcc -gdwarf-4
sh-elf-objcopy -O binary test-prog.elf test-prog.bin

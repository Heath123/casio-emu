#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "int.h"

// u8 memory[0x88023F98] = {0};
u8* memory = NULL;

int offset = 0;

void initMemory() {
  memory = calloc(0xffffffff, sizeof(u8));

  // Load /home/heath/calc-emu-2/test/a.out into memory at 0x8000
  FILE *f = fopen("/home/heath/calc-emu-2/test/test-prog.bin", "rb");
  if (f == NULL) {
    printf("Error opening file\n");
    exit(1);
  }

  fseek(f, 0, SEEK_END);
  long fsize = ftell(f);
  fseek(f, 0, SEEK_SET);

  fread(memory + 0x00300200, fsize, 1, f);
  fclose(f);
}

u32 readMemory(u32 address, u32 size) {
  // Check for unaligned access
  if (address % size != 0) {
    printf("Unaligned memory access at %08x\n", address);
    exit(1);
  }
  // printf("readMemory(%08x, %d)\n", address, size);
  // Read from memory (big endian)
  address += offset;
  u32 value = 0;
  for (u32 i = 0; i < size; i++) {
    value = (value << 8) | memory[address + i];
  }
  return value;
}

void writeMemory(u32 address, u32 size, u32 value) {
  // Check for unaligned access
  if (address % size != 0) {
    printf("Unaligned memory access at %08x\n", address);
    exit(1);
  }
  // if (address > 10000) {
  //   printf("writeMemory(%08x, %d, %d)\n", address, size, value);
  // }
  address += offset;
  // Write to memory (big endian)
  for (u32 i = 0; i < size; i++) {
    memory[address + size - i - 1] = value & 0xff;
    value >>= 8;
  }
}

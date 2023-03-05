#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "int.h"

u8 memory[1024 * 1024] = {0};

void initMemory() {
  // Load /home/heath/calc-emu-2/test/a.out into memory
  FILE *f = fopen("/home/heath/calc-emu-2/test/a.out", "rb");
  if (f == NULL) {
    printf("Error opening file\n");
    exit(1);
  }

  fseek(f, 0, SEEK_END);
  long fsize = ftell(f);
  fseek(f, 0, SEEK_SET);

  fread(memory, fsize, 1, f);
  fclose(f);
}

u32 readMemory(u32 address, u32 size) {
  // printf("readMemory: address = %08x, size = %d\n", address, size);
  // Read from memory (big endian)
  u32 value = 0;
  for (u32 i = 0; i < size; i++) {
    value = (value << 8) | memory[address + i];
  }
  return value;
}

void writeMemory(u32 address, u32 size, u32 value) {
  printf("writeMemory: not implemented\n");
  exit(1);
}

u32* getMemoryPtr(u32 address) {
  return (u32*) &memory[address];
}

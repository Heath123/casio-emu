#include <stdio.h>
#include <stdlib.h>

#include "../hardware/hwRegisters.h"
#include "../hardware/tlb/tlb.h"
#include "../int.h"

// 256-entry array mapping the first bytes of the address to another array etc.
// So 4 lookups are done to find the correct handler
// Not sure if this is the best way but I can't think of anything better

hwRegister**** hwRegisters[256] = {NULL};

// TODO: Copilot decided to use type punning here, which is undefined behaviour
// There could be endianness issues with that but it's probably fine now that I think about it
void addEntry(hwRegister* entry, u32 addr) {
  // printf("Adding entry for address %x\n", addr);
  u8* addr2 = (u8*) &addr;
  hwRegister**** reg = hwRegisters[addr2[0]];
  if (reg == NULL) {
    reg = calloc(256, sizeof(hwRegister**));
    hwRegisters[addr2[0]] = reg;
  }
  hwRegister*** reg2 = reg[addr2[1]];
  if (reg2 == NULL) {
    reg2 = calloc(256, sizeof(hwRegister*));
    reg[addr2[1]] = reg2;
  }
  hwRegister** reg3 = reg2[addr2[2]];
  if (reg3 == NULL) {
    reg3 = calloc(256, sizeof(hwRegister));
    reg2[addr2[2]] = reg3;
  }
  reg3[addr2[3]] = entry;
}

hwRegister* getEntry(u32 addr) {
  // printf("%08x\n", addr);
  u8* addrBytes = (u8*) &addr;
  hwRegister**** reg = hwRegisters[addrBytes[0]];
  if (reg == NULL) return NULL;
  hwRegister*** reg2 = reg[addrBytes[1]];
  if (reg2 == NULL) return NULL;
  hwRegister** reg3 = reg2[addrBytes[2]];
  if (reg3 == NULL) return NULL;
  return reg3[addrBytes[3]];
}

void defineReg_internal(char *name, void *var, u32 addr, u32 size) {
  hwRegister* entry = malloc(sizeof(hwRegister));
  entry->name = name;
  entry->addr = addr;
  entry->size = size;
  entry->var = var;
  entry->spacing = 0;
  entry->type = REG_TYPE_VAR;
  addEntry(entry, addr);
}

void defineRegCB(char *name, u32 (*read)(u32 addr), void (*write)(u32 addr, u32 value), u32 addr, u32 size) {
  hwRegister* entry = malloc(sizeof(hwRegister));
  entry->name = name;
  entry->addr = addr;
  entry->size = size;
  entry->cb.read = (readCallback) { .readSized = read };
  entry->cb.write = (writeCallback) { .writeSized = write };
  entry->spacing = 0;
  entry->type = REG_TYPE_CB;
  addEntry(entry, addr);
}

void defineRegCBUnsized(char *name, u32 (*read)(u32 addr, u32 size), void (*write)(u32 addr, u32 value, u32 size), u32 addr) {
  hwRegister* entry = malloc(sizeof(hwRegister));
  entry->name = name;
  entry->addr = addr;
  entry->size = 0;
  entry->cb.read = (readCallback) { .readUnsized = read };
  entry->cb.write = (writeCallback) { .writeUnsized = write };
  entry->spacing = 0;
  entry->type = REG_TYPE_CB;
  addEntry(entry, addr);
}

void defineRegArray_internal(char *name, void *var, u32 addr, u32 size, u32 count, u32 spacing) {
  // printf("Addr: %x, size: %d, count: %d\n", addr, size, count);
  hwRegister* entry = malloc(sizeof(hwRegister));
  entry->name = name;
  entry->addr = addr;
  entry->size = size;
  entry->var = var;
  entry->spacing = spacing;
  entry->type = REG_TYPE_ARRAY;
  // printf("ARRAY DEF START\n");
  for (u32 i = 0; i < count; i++) {
    addEntry(entry, addr + i * (size + spacing));
  }
  // printf("ARRAY DEF END\n");
}

bool readSpecial(u32 address, u32 size, u32* value) {
  hwRegister* entry = getEntry(address);
  if (entry == NULL) {
    // See if it's a TLB read
    if (address >= 0xf6000000 && address <= 0xf70fffff) {
      *value = utlbRead(address);
      return true;
    }
    return false;
  }
  // printf("readSpecial: %s\n", entry->name);
  // printf("Read special: %s\n", entry->name);
  if (entry->size != size && entry->size != 0) {
    // TODO: This is nice for debugging but it should probably just warn and return 0 or something
    printf("Invalid memory read size to \"%s\" at 0x%08x: %d (expected %d)\n", entry->name, entry->addr, size, entry->size);
    exit(1);
  }

  // If it's an array, calculate the index
  u32 index = 0;
  if (entry->type == REG_TYPE_ARRAY || entry->type == REG_TYPE_ARRAY_CB) {
    index = (address - entry->addr) / (entry->size + entry->spacing);
  }
  // printf("Index: %d\n", index);

  if (entry->type == REG_TYPE_CB) {
    if (entry->size == 0) {
      *value = entry->cb.read.readUnsized(address, size);
    } else {
      *value = entry->cb.read.readSized(address);
    }
  } else if (entry->type == REG_TYPE_ARRAY_CB) {
    *value = entry->array_cb.read(address, index);
  } else {
    switch (size) {
      case 1:
        // *value = *(u8*) (entry->var + index);
        *value = *((u8*) entry->var + index);
        break;
      case 2:
        // *value = *(u16*) (entry->var + index);
        *value = *((u16*) entry->var + index);
        break;
      case 4:
        // *value = *(u32*) (entry->var + index);
        *value = *((u32*) entry->var + index);
        break;
      default:
        printf("Invalid memory read size: %d\n", size);
        exit(1);
    }
  }
  return true;
}

bool writeSpecial(u32 address, u32 size, u32 value) {
  hwRegister* entry = getEntry(address);
  if (entry == NULL) return false;
  if (entry->size != size && entry->size != 0) {
    printf("Invalid memory write size to \"%s\" at 0x%08x: %d (expected %d)\n", entry->name,  entry->addr, size, entry->size);
    exit(1);
  }

  // If it's an array, calculate the index
  u32 index = 0;
  if (entry->type == REG_TYPE_ARRAY || entry->type == REG_TYPE_ARRAY_CB) {
    index = (address - entry->addr) / (entry->size + entry->spacing);
  }

  if (entry->type == REG_TYPE_CB) {
    if (entry->size == 0) {
      entry->cb.write.writeUnsized(address, value, size);
    } else {
      entry->cb.write.writeSized(address, value);
    }
  } else if (entry->type == REG_TYPE_ARRAY_CB) {
    entry->array_cb.write(address, index, value);
  } else {
    switch (size) {
      case 1:
        *((u8*) entry->var + index) = value;
        break;
      case 2:
        *((u16*) entry->var + index) = value;
        break;
      case 4:
        *((u32*) entry->var + index) = value;
        break;
      default:
        printf("Invalid memory write size: %d\n", size);
        exit(1);
    }
  }
  return true;
}
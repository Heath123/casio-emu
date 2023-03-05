#ifndef MEMORY_H
#define MEMORY_H

#include "int.h"

void initMemory();

u32 readMemory(u32 address, u32 size);
void writeMemory(u32 address, u32 size, u32 value);
u32* getMemoryPtr(u32 address);

#endif // MEMORY_H

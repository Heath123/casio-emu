#ifndef MEMORY_H
#define MEMORY_H

#include "../int.h"

void initMemory(char* filename);

u32 readMemory(u32 address, u32 size);
u32 readMemory2Quick(u32 address);
void writeMemory(u32 address, u32 size, u32 value);

// typedef struct {
//   u32 minValid;
//   u32 maxValid;
//   u32 offset;
//   void* buffer;
// } fastAccess;

#endif // MEMORY_H

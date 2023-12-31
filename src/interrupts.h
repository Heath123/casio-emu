#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#include "int.h"

void raiseInterrupt(u32 code, u32 handler, bool isException);
void handleInterrupt(u32 code, u32 handler, bool isException);

#endif // INTERRUPTS_H

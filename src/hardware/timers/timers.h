#ifndef TIMERS_H
#define TIMERS_H

#include "../../int.h"

bool readTimers(u32 realAddress, u32* value, u32 size);
bool writeTimers(u32 realAddress, u32 value, u32 size, u32 bitmask);

#endif // TIMERS_H

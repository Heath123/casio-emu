#ifndef SPECIALADDRS_H
#define SPECIALADDRS_H

#include "../int.h"

bool readSpecial(u32 address, u32 size, u32* value);
bool writeSpecial(u32 address, u32 size, u32 value);

#endif // SPECIALADDRS_H

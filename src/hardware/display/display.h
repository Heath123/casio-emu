#ifndef DISPLAY_H
#define DISPLAY_H

#include "../../int.h"

void initDisplay(void);
void updateDisplayFromFramebuffer(void);
void dispInterfaceWrite(u32 addr, u32 value, u32 size);

// extern bool displayFastPath;
// void fastWrite(u32 value);

// bool readDisplay(u32 realAddress, u32* value, u32 size);
// bool writeDisplay(u32 realAddress, u32 value, u32 size, u32 bitmask);

#endif // DISPLAY_H

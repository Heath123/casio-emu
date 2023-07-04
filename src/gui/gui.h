#ifndef GUI_H
#define GUI_H

#include "../int.h"

void initGui(void);
void updateDisplay(u16* vram);
void runMainLoop(void (*callback)(void));

#endif // GUI_H

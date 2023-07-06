#ifndef KEYBOARD_H
#define KEYBOARD_H

#include "../../int.h"
#include <stdbool.h>

void initKeyboard(void);
void setKeydown(int basic_keycode, bool down);

#endif // KEYBOARD_H

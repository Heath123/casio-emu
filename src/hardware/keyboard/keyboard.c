#include "../../int.h"
#include "../hwRegisters.h"

u16 KIUDATA[6] = {0};

bool isKeydown(int basic_keycode) {
  i32 row = basic_keycode % 10;
  i32 col = basic_keycode / 10 - 1;
  i32 word = row >> 1;
  i32 bit = col + 8 * (row & 1);
  return (0 != (KIUDATA[word] & 1 << bit));
}

void setKeydown(int basic_keycode, bool down) {
  i32 row = basic_keycode % 10;
  i32 col = basic_keycode / 10 - 1;
  i32 word = row >> 1;
  i32 bit = col + 8 * (row & 1);
  if (down) {
    KIUDATA[word] |= 1 << bit;
  } else {
    KIUDATA[word] &= ~(1 << bit);
  }
}

void initKeyboard() {
  // TODO: Keyboard interrupts

  defineRegArray("Key Input Data", KIUDATA, 0xa44b0000, 6, 0);
}

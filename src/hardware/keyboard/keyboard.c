#include "../../int.h"
#include "../hwRegisters.h"
#include "../intc/intc.h"
#include <stdio.h>

u16 KIUDATA[6] = {0};

// TODO: Emulate this properly
u16 KIUCNTREG = 0;
u16 KIUINTREG = 0;
u16 KIAUTOFIXREG = 0;
u16 KIUINTERVALREG = 0;
u16 KIUWSETREG = 0;
u16 KOUTPINSET = 0;
u16 KINPINSET = 0;
u16 KIUMODEREG = 0;

bool isKeydown(int basic_keycode) {
  i32 row = basic_keycode % 10;
  i32 col = basic_keycode / 10 - 1;
  i32 word = row >> 1;
  i32 bit = col + 8 * (row & 1);
  return (0 != (KIUDATA[word] & 1 << bit));
}

interruptData keyboardInterrupt = {
  .code = 0xbe0,
  .IMR = IMR5,
  .IMRbits = 0x80
};

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
  // printf("KEYIR: %x\n", KIUINTREG & 0b0000111100000000);
  // TODO: Differnt modes
  KIUINTREG &= ~0b1111111;
  if (down) {
    KIUINTREG |= 15;
  } else {
    KIUINTREG |= 102;
  }
  generateIntcInterrupt(&keyboardInterrupt);
}

void initKeyboard() {
  // TODO: Keyboard interrupts

  defineRegArray("Key Input Data", KIUDATA, 0xa44b0000, 6, 0);
  defineReg("Scan Control", KIUCNTREG, 0xa44b000c);
  defineReg("Interrupt setting", KIUINTREG, 0xa44b0014);
  defineReg("Automatic key bounce setting", KIAUTOFIXREG, 0xa44b000e);
  defineReg("Scan interval time setting", KIUINTERVALREG, 0xa44b0018);
  defineReg("Scan wait time setting", KIUWSETREG, 0xa44b0016);
  defineReg("KOUT line function setting", KOUTPINSET, 0xa44b001a);
  defineReg("KIN line function setting", KINPINSET, 0xa44b001c);
  defineReg("Scan mode setting", KIUMODEREG, 0xa44b0010);
}

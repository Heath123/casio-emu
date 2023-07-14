#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"

u32 readPrintChar(u32 addr) {
  return 0;
}

void writePrintChar(u32 addr, u32 value) {
  printf("%c", value);
}

void initDebug(void) {
  defineRegCB("Print Character (debug)", readPrintChar, writePrintChar, 0xfffff000, 1);
}

#include "intc.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"
#include "../../interrupts.h"
#include "../../cpu.h"

extern CpuState cpu;

// TODO: Intial values?
u16 IPR[12] = {0};
u8 IMR[13] = {0};

u32 INTEVT;
u32 INTEVT2;

// TODO: Emulate these
u32 INTPRI00 = 0;
u8 INTREQ00 = 0;
u8 INTMSK00 = 0;
u8 INTMSKCLR00 = 0;
u16 NMIFCR = 0;
u32 USERIMASK = 0;

u32 readIMR(u32 addr) {
  int index = (addr - 0xa4080080) / 4;
  return IMR[index];
}

// Writing 0 does nothing but writing 1 masks it
void writeIMR(u32 addr, u32 value) {
  int index = (addr - 0xa4080080) / 4;
  IMR[index] |= value;
}

u32 readMSKCLR(u32 addr) {
  // Undefined
  // TODO: Maybe there should be a warning, but the CPU will generate extra reads to this
  return 0;
}

void writeMSKCLR(u32 addr, u32 value) {
  int index = (addr - 0xa40800c0) / 4;
  IMR[index] &= ~value;
}

void initIntc() {
  defineRegArray("Interrupt priority array", IPR, 0xa4080000, 12, 2);
  // defineRegArray("Interrupt mask array", IMR, 0xa4080080, 13, 3);
  for (int i = 0; i < 13; i++) {
    defineRegCB("Interrupt mask array", readIMR, writeIMR, 0xa4080080 + (i * 4), 1);
  }
  // defineRegArray("Interrupt mask clear array", MSKCLR, 0xa40800c0, 13, 3);
  for (int i = 0; i < 13; i++) {
    defineRegCB("Interrupt mask clear array", readMSKCLR, writeMSKCLR, 0xa40800c0 + (i * 4), 1);
  }

  defineReg("Interrupt event", INTEVT, 0xff000028);

  // TODO: ???
  defineReg("Interrupt event 2", INTEVT2, 0xa4000000);

  defineReg("Interrupt priority for IRQ", INTPRI00, 0xa4140010);
  defineReg("Interrupt request for IRQ", INTREQ00, 0xa4140024);
  defineReg("Interrupt mask for IRQ", INTMSK00, 0xa4140044);
  defineReg("Interrupt mask clear for IRQ", INTMSKCLR00, 0xa4140064);
  defineReg("Interrupt control for NMI", NMIFCR, 0xa41400c0);
  defineReg("User interrupt mask", USERIMASK, 0xa4700000);

  // KEYSC interrupts should be disabled by default, I think
  IMR[IMR5] = 0x80;
}

// TODO: Do we need to handle NMIs? That might complicate things
// TODO: Interrupt sources
void generateIntcInterrupt(interruptData* data) {
  // TODO: Interrupt priority

  // If the interrupt is masked then ignore it
  // printf("IMR: %d\n", IMR[data->IMR] & data->IMRbits);
  if (IMR[data->IMR] & data->IMRbits) return;

  INTEVT = INTEVT2 = data->code;

  // TODO: What should the code be?
  raiseInterrupt(0, cpu.reg.VBR + 0x600, false);
}

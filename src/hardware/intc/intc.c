#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"
#include "../../interrupts.h"
#include "../../cpu.h"

extern CpuState cpu;

u16 IPR[12] = {0};
u8 IMR[13] = {0};
u8 MSKCLR[13] = {0};

u32 INTEVT;
u32 INTEVT2;

// TODO: Emulate these
u32 INTPRI00 = 0;
u8 INTREQ00 = 0;
u8 INTMSK00 = 0;
u8 INTMSKCLR00 = 0;
u16 NMIFCR = 0;
u32 USERIMASK = 0;

void initIntc() {
  defineRegArray("Interrupt priority array", IPR, 0xa4080000, 12, 2);
  defineRegArray("Interrupt mask array", IMR, 0xa4080080, 13, 3);
  defineRegArray("Interrupt mask clear array", MSKCLR, 0xa40800c0, 13, 3);

  defineReg("Interrupt event", INTEVT, 0xff000028);

  // TODO: ???
  defineReg("Interrupt event 2", INTEVT2, 0xa4000000);

  defineReg("Interrupt priority for IRQ", INTPRI00, 0xa4140010);
  defineReg("Interrupt request for IRQ", INTREQ00, 0xa4140024);
  defineReg("Interrupt mask for IRQ", INTMSK00, 0xa4140044);
  defineReg("Interrupt mask clear for IRQ", INTMSKCLR00, 0xa4140064);
  defineReg("Interrupt control for NMI", NMIFCR, 0xa41400c0);
  defineReg("User interrupt mask", USERIMASK, 0xa4700000);
}

// TODO: Do we need to handle NMIs? That might complicate things
// TODO: Interrupt sources
void generateIntcInterrupt(u32 code) {
  // TODO: Interrupt priority

  INTEVT = INTEVT2 = code;

  // TODO: What should the code be?
  raiseInterrupt(0, cpu.reg.VBR + 0x600, false);
}

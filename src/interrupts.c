#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#include "int.h"
#include "cpu.h"

extern CpuState cpu;

void raiseInterrupt(u32 code, u32 handler) {
  printf("Interrupt raised!\n");
  printf("%d %08X\n", cpu.reg.SR_parts.BL, cpu.reg.SR);
  if (cpu.reg.SR_parts.BL) {
    // Interrupts are blocked
    // This would cause the CPU to reset
    printf("Interrupt within interrupt!\n");
    exit(1);
  }

  cpu.reg.SPC = cpu.reg.PC;
  cpu.reg.SSR = cpu.reg.SR;
  cpu.reg.SGR = cpu.reg.r15;

  // Blocks further interrupts
  cpu.reg.SR_parts.BL = 1;

  // Put the CPU into privileged mode
  // We don't emulate user mode, so this is always set, but still
  cpu.reg.SR_parts.MD = 1;

  // Switch register bank
  // TODO: Do this every time SR is written to
  if (cpu.reg.SR_parts.RB != 1) {
    cpu.reg.SR_parts.RB = 1;
    // Switch all the registers with their banked counterparts

    for (int i = 0; i < 8; i++) {
      u32 temp = cpu.reg.regArray[i];
      cpu.reg.regArray[i] = cpu.reg.regArray[i + 16];
      cpu.reg.regArray[i + 16] = temp;
    }
  }

  cpu.reg.EXPEVT = code;
  cpu.reg.TRA = 0; // TODO: What goes here?
  cpu.reg.PC = handler + 2;
}

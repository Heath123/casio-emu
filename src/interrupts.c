#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#include "int.h"
#include "cpu.h"

extern CpuState cpu;

// TODO: Interrupt priority
void raiseInterrupt(u32 code, u32 handler, bool isException) {
  cpu.interruptPending = true;
  cpu.interruptCode = code;
  cpu.interruptVector = handler;
  cpu.interruptIsException = isException;
}

void handleInterrupt(u32 code, u32 handler, bool isException) {
  // printf("Interrupt raised!\n");
  if (cpu.reg.SR_parts.BL) {
    // Interrupts are blocked
    // This would cause the CPU to reset
    printf("Interrupt within interrupt!\n");
    printf("PC: %08X\n", cpu.reg.PC);
    exit(1);
  }

  cpu.reg.SPC = cpu.reg.PC;
  cpu.reg.SSR = cpu.reg.SR;
  cpu.reg.SGR = cpu.reg.r15;

  if (isException) {
    // Blocks further interrupts
    cpu.reg.SR_parts.BL = 1;
  }

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
  cpu.reg.PC = handler;

  cpu.isSleeping = false;

  // printf("Branching to interrupt handler at %08X\n", handler);
}

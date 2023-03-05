#include <stdio.h>
#include <stdbool.h>

#include "cpu.h"
#include "instructions.h"
#include "memory.h"
#include "config.h"

CpuState cpu;

int main(int argc, char *argv[]) {
  initMemory();

  // for (int i = 0; i < 100000000; i++) {
  cpu.isBranchDelaySlot = false;
  cpu.branchDelayDone = false;
  cpu.branchTarget = 0;

  cpu.reg.PC = 0x0;
  cpu.reg.PR = 0xffffffff;
  cpu.reg.r15 = 1024 * 1024; // Stack pointer
  cpu.reg.r14 = 0xdeadbeef;
  while (cpu.reg.PC < 0xffffff00) {
    #ifdef PRINT_INSTRUCTIONS
    if (cpu.isBranchDelaySlot) {
      printf("Branch delay slot:\n");
    }
    #endif

    if (cpu.isBranchDelaySlot) {
      cpu.isBranchDelaySlot = false;
      cpu.branchDelayDone = true;
    }

    u16 instr = readMemory(cpu.reg.PC, 2);
    cpu.reg.PC += 4;
    runInstr(instr);
    cpu.reg.PC -= 2;

    if (cpu.branchDelayDone) {
      cpu.reg.PC = cpu.branchTarget;
      cpu.branchDelayDone = false;
    }
  }
  
  // }
  printf("r0 = %d, r14 = %08x\n", cpu.reg.r0, cpu.reg.r14);

  return 0;
}

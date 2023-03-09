#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#include "cpu.h"
#include "instructions.h"
#include "memory.h"
#include "config.h"

CpuState cpu;

int main(int argc, char *argv[]) {
  initMemory();

  cpu.isBranchDelaySlot = false;
  cpu.branchDelayDone = false;
  cpu.branchTarget = 0;

  cpu.reg.PC = 0x00300200;

  // Return address
  cpu.reg.PR = 0xffffffff;
  // cpu.reg.r15 = 0x10000000; // Stack pointer
  while (cpu.reg.PC != 0xffffffff) {
    #ifdef PRINT_INSTRUCTIONS
    if (cpu.isBranchDelaySlot) {
      printf("Branch delay slot:\n");
    }
    #endif

    if (cpu.isBranchDelaySlot) {
      cpu.isBranchDelaySlot = false;
      cpu.branchDelayDone = true;
    }

    if (cpu.reg.PC == 0x80010070) {
      #ifdef PRINT_INSTRUCTIONS
      printf("Syscall table call! r0 = %d\n", cpu.reg.r0);
      #endif
      switch (cpu.reg.r0) {
        case 0x808: {
          // Print
          // Read until we hit a null byte
          u32 addr = cpu.reg.r4;
          while (readMemory(addr, 1) != 0) {
            printf("%c", readMemory(addr, 1));
            addr++;
          }
          break;
        }
        case 0x807: {
          // Locate - just treat it as a newline
          printf("\n");
          break;
        }
        default: {
          printf("Unknown syscall %d\n", cpu.reg.r0);
          exit(1);
          break;
        }
      }
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }

    u16 instr = readMemory(cpu.reg.PC, 2);
    #ifdef PRINT_INSTRUCTIONS
    printf("%x: ", cpu.reg.PC);
    #endif
    cpu.reg.PC += 4;
    runInstr(instr);
    cpu.reg.PC -= 2;

    #ifdef PRINT_INSTRUCTIONS
    printf("r0: %08X, r1: %08X, r2: %08X, r3: %08X, r4: %08X, r5: %08X, r6: %08X, r7: %08X, r8: %08X,\n", cpu.reg.r0, cpu.reg.r1, cpu.reg.r2, cpu.reg.r3, cpu.reg.r4, cpu.reg.r5, cpu.reg.r6, cpu.reg.r7, cpu.reg.r8);
    printf("r9: %08X, r10: %08X, r11: %08X, r12: %08X, r13: %08X, r14: %08X, r15: %08X, PR: %08X, T: %d, SR: %08X\n", cpu.reg.r9, cpu.reg.r10, cpu.reg.r11, cpu.reg.r12, cpu.reg.r13, cpu.reg.r14, cpu.reg.r15, cpu.reg.PR, cpu.reg.SR_parts.T, cpu.reg.SR);
    #endif

    if (cpu.branchDelayDone) {
      cpu.reg.PC = cpu.branchTarget;
      cpu.branchDelayDone = false;
    }
  }
  
  printf("Exit code: %d\n", cpu.reg.r0);

  return 0;
}

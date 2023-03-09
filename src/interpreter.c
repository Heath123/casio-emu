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

  // for (int i = 0; i < 100000000; i++) {
  cpu.isBranchDelaySlot = false;
  cpu.branchDelayDone = false;
  cpu.branchTarget = 0;

  cpu.reg.PC = 0x00300200;

  cpu.reg.r0 = 0x00300200;
  cpu.reg.r1 = 0x00000003;
  cpu.reg.r2 = 0xA002A67C;
  cpu.reg.r3 = 0x000000FB;
  cpu.reg.r4 = 0x00000001;
  cpu.reg.r5 = 0x00000000;
  cpu.reg.r6 = 0x00000020;
  cpu.reg.r7 = 0x00300000;
  cpu.reg.r8 = 0xA0035988;
  cpu.reg.r9 = 0x00000000;
  cpu.reg.r10 = 0x00000000;
  cpu.reg.r11 = 0x880068CC;
  cpu.reg.r12 = 0xA00D2B38;
  cpu.reg.r13 = 0x0000CFFB;
  cpu.reg.r14 = 0x00000000;
  cpu.reg.r15 = 0x88023F98;
  cpu.reg.GBR = 0xffffffe0;
  cpu.reg.MACH = 0x00000000;
  cpu.reg.MACL = 0x00000000;
  cpu.reg.PR = 0xA0056694;
  cpu.reg.SR = 0x40000001;
  cpu.reg.PR = 0xA0056694;

  // Return address
  // cpu.reg.PR = 0xffffffff;
  // cpu.reg.r15 = 0x10000000; // Stack pointer
  while (cpu.reg.PC != 0xA0056694) {
    #ifdef PRINT_INSTRUCTIONS
    if (cpu.isBranchDelaySlot) {
      printf("Branch delay slot:\n");
    }
    #endif

    if (cpu.isBranchDelaySlot) {
      cpu.isBranchDelaySlot = false;
      cpu.branchDelayDone = true;
    }

    if (cpu.reg.PC == 0xfffffe00) {
      #ifdef PRINT_INSTRUCTIONS
      printf("Print call! r4 = %d\n", cpu.reg.r4);
      #endif
      // Read until we hit a null byte
      u32 addr = cpu.reg.r4;
      while (readMemory(addr, 1) != 0) {
        printf("%c", readMemory(addr, 1));
        addr++;
      }
      printf("\n");
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }
    if (cpu.reg.PC == 0xfffffe04) {
      #ifdef PRINT_INSTRUCTIONS
      printf("Printnum call! r4 = %d\n", cpu.reg.r4);
      #endif
      printf("%d\n", cpu.reg.r4);
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }
    if (cpu.reg.PC == 0xfffffe08) {
      #ifdef PRINT_INSTRUCTIONS
      printf("putchar call! r4 = %d\n", cpu.reg.r4);
      #endif
      printf("%c", cpu.reg.r4);
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
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
    // bool didPrint = false;
    // if (cpu.reg.PC >= 0x00304100 && cpu.reg.PC <= 0x00304136) {
    //   printf("extend %x: ", cpu.reg.PC);
    //   printf("\n");
    //   didPrint = true;
    // }
    // if (cpu.reg.PC >= 0x00304a20 && cpu.reg.PC <= 0x00304a46) {
    //   printf("makedp %x: ", cpu.reg.PC);
    //   printf("\n");
    //   didPrint = true;
    }
    #endif
    cpu.reg.PC += 4;
    runInstr(instr);
    cpu.reg.PC -= 2;

    #ifdef PRINT_INSTRUCTIONS
    // if (didPrint) {
    printf("r0: %08X, r1: %08X, r2: %08X, r3: %08X, r4: %08X, r5: %08X, r6: %08X, r7: %08X, r8: %08X,\n", cpu.reg.r0, cpu.reg.r1, cpu.reg.r2, cpu.reg.r3, cpu.reg.r4, cpu.reg.r5, cpu.reg.r6, cpu.reg.r7, cpu.reg.r8);
    printf("r9: %08X, r10: %08X, r11: %08X, r12: %08X, r13: %08X, r14: %08X, r15: %08X, PR: %08X, T: %d, SR: %08X\n", cpu.reg.r9, cpu.reg.r10, cpu.reg.r11, cpu.reg.r12, cpu.reg.r13, cpu.reg.r14, cpu.reg.r15, cpu.reg.PR, cpu.reg.SR_parts.T, cpu.reg.SR);
    // }
    // Print the stack starting at the stack pointer r15
    // if (cpu.reg.r15 > (1024 - 32) * 1024) {
    //   printf("Stack: ");
    //   u32 stackPointer = cpu.reg.r15;
    //   while (stackPointer < 1024 * 1024) {
    //     printf("%08x ", readMemory(stackPointer, 4));
    //     stackPointer += 4;
    //   }
    //   printf("\n");
    // } else {
    //   printf("Stack seems invalid\n");
    // }
    #endif

    if (cpu.branchDelayDone) {
      cpu.reg.PC = cpu.branchTarget;
      cpu.branchDelayDone = false;
    }
  }
  
  // }
  printf("Exit code: %d\n", cpu.reg.r0);
  // As a float
  printf("Exit code: %f\n", *(float*)&cpu.reg.r0);

  return 0;
}

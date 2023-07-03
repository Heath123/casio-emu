#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
// #include <unistd.h>

#include "cpu.h"
#include "instructions.h"
#include "./memory/memory.h"
#include "config.h"
#include "gui/gui.h"
#include "hardware/timers/timers.h"
#include "hardware/cpuRegisters/cpuRegisters.h"
#include "hardware/tlb/tlb.h"
#include "hardware/display/display.h"
#include "hardware/keyboard/keyboard.h"
#include "hardware/intc/intc.h"
#include "hardware/dma/dma.h"
#include "hardware/power/power.h"
#include "interrupts.h"

CpuState cpu = {0};

void test(void);

// bool trace = false;

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("Usage: %s <path to g3a>\n", argv[0]);
    exit(1);
  }

  initMemory(argv[1]);
  initCpuRegisters();
  initTlb();
  initTimers();
  initDisplay();
  initKeyboard();
  initIntc();
  initDma();
  initPower();
  initGui();

  cpu.isBranchDelaySlot = false;
  cpu.branchDelayDone = false;
  cpu.branchTarget = 0;

  cpu.reg.PC = 0x00300000;

  // Return address
  cpu.reg.PR = 0xffffffff;
  cpu.reg.r15 = 0x8c080000; // Stack pointer, at the top of user memory
  unsigned int iterations = 0;
  while (true) {
    iterations++;
    if (iterations % 2048 == 0) {
      handleEvents();
    }

    // if (trace) {
      // printf("PC: %08x\n", cpu.reg.PC);
    //   printf("RS: %08x, RE: %08x, RC: %08x\n", cpu.reg.RS, cpu.reg.RE, cpu.reg.RC);
    // }
    // printf("r0: %08X, r1: %08X, r2: %08X, r3: %08X, r4: %08X, r5: %08X, r6: %08X, r7: %08X, r8: %08X,\n", cpu.reg.r0, cpu.reg.r1, cpu.reg.r2, cpu.reg.r3, cpu.reg.r4, cpu.reg.r5, cpu.reg.r6, cpu.reg.r7, cpu.reg.r8);
    // printf("r9: %08X, r10: %08X, r11: %08X, r12: %08X, r13: %08X, r14: %08X, r15: %08X, PR: %08X, T: %d, SR: %08X\n", cpu.reg.r9, cpu.reg.r10, cpu.reg.r11, cpu.reg.r12, cpu.reg.r13, cpu.reg.r14, cpu.reg.r15, cpu.reg.PR, cpu.reg.SR_parts.T, cpu.reg.SR);
    if (iterations % 2048 * 2048 == 0 && !cpu.isSleeping) {
      // if (cpu.reg.PC != 0x003641dc && cpu.reg.PC != 0x003641cc && cpu.reg.PC != 0x00364224 && cpu.reg.PC != 0x003641d8 && cpu.reg.PC != 0x003f879a && cpu.reg.PC != 0x003f20aa && cpu.reg.PC != 0x0036415e) {
        // printf("PC: %08x\n", cpu.reg.PC);
      // }
      
      // Print the program counter
    //   if (cpu.reg.PC == 0x0041c1a2) {
    //     // Try to do a stack trace
    //     // Print anything on the stack that looks like an address
    //     printf("Stack: ");
    //     u32 stackPointer = cpu.reg.r15;
    //     while (stackPointer < 0x8C1DFFFF) {
    //       u32 thing = readMemory(stackPointer, 4);
    //       if (thing > 0x00300000 && thing < 0x00500000) {
    //         printf("%08x ", thing);
    //       }
    //       stackPointer += 4;
    //     }
    //     printf("\n");
    //     exit(1);
    //   }
    }

    updateTimers();

    // TODO: How do interrupts act on branch delay slots?
    if (cpu.interruptPending && !cpu.isBranchDelaySlot) {
      cpu.interruptPending = false;
      handleInterrupt(cpu.interruptCode, cpu.interruptVector, cpu.interruptIsException);
    }

    // if (cpu.isSleeping) {
    //   cpu.isSleeping = false;
    //   generateIntcInterrupt();
    // }
    if (cpu.isSleeping) continue;

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
      if (cpu.reg.r4 == 0) {
        printf("Print: null string\n");
      } else {
        // Read until we hit a null byte
        u32 addr = cpu.reg.r4;
        while (readMemory(addr, 1) != 0) {
          printf("%c", readMemory(addr, 1));
          addr++;
        }
        // printf("\n");
      }
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }
    if (cpu.reg.PC == 0xffffff00) {
      printf("%d\n", cpu.reg.r4);
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }
    if (cpu.reg.PC == 0xfffffd00) {
      printf("%08X\n", cpu.reg.r4);
      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }
    if (cpu.reg.PC == 0xfffffc00) {
      // Copy pixels to screen
      u16 framebuffer[396 * 224] = {0xffff};
      u32 addr = cpu.reg.r4;
      for (int i = 0; i < 396 * 224; i++) {
        framebuffer[i] = 0xffff;
      }
      for (int i = 0; i < 396 * 224; i++) {
        framebuffer[i] = readMemory(addr, 2);
        addr += 2;
      }
      updateDisplay(framebuffer);
      // Sleep for 3 seconds
      // sleep(3);

      // while (1) {}

      // Set PC to PR (return)
      cpu.reg.PC = cpu.reg.PR;
    }
    if (cpu.reg.PC == 0x80020070) {
      #ifdef PRINT_INSTRUCTIONS
      printf("Syscall table call! r0 = %d\n", cpu.reg.r0);
      #endif
      // switch (cpu.reg.r0) {
      //   case 0x808: {
      //     // Print
      //     // Read until we hit a null byte
      //     u32 addr = cpu.reg.r4;
      //     while (readMemory(addr, 1) != 0) {
      //       printf("%c", readMemory(addr, 1));
      //       addr++;
      //     }
      //     break;
      //   }
      //   case 0x807: {
      //     // Locate - just treat it as a newline
      //     printf("\n");
      //     break;
      //   }
      //   default: {
      //     printf("Unknown syscall %d\n", cpu.reg.r0);
      //     exit(1);
      //     break;
      //   }
      // }
      printf("Syscalls not implemented\n");
      exit(1);
      // Set PC to PR (return)
      // cpu.reg.PC = cpu.reg.PR;
    }

    u16 instr = readMemory(cpu.reg.PC, 2);
    #ifdef PRINT_INSTRUCTIONS
    printf("%x: ", cpu.reg.PC);
    #endif

    // TODO: Instead of doing this should we just wrap all writes to SR?
    bool prevBank = cpu.reg.SR_parts.RB;

    cpu.reg.PC += 4;
    runInstr(instr);
    cpu.reg.PC -= 2;

    if (cpu.reg.SR_parts.RB != prevBank) {
      // Switch to the new bank
      for (int i = 0; i < 8; i++) {
        u32 temp = cpu.reg.regArray[i];
        cpu.reg.regArray[i] = cpu.reg.regArray[i + 16];
        cpu.reg.regArray[i + 16] = temp;
      }
    }

    #ifdef PRINT_INSTRUCTIONS
    printf("r0: %08X, r1: %08X, r2: %08X, r3: %08X, r4: %08X, r5: %08X, r6: %08X, r7: %08X, r8: %08X,\n", cpu.reg.r0, cpu.reg.r1, cpu.reg.r2, cpu.reg.r3, cpu.reg.r4, cpu.reg.r5, cpu.reg.r6, cpu.reg.r7, cpu.reg.r8);
    printf("r9: %08X, r10: %08X, r11: %08X, r12: %08X, r13: %08X, r14: %08X, r15: %08X, PR: %08X, T: %d, SR: %08X\n", cpu.reg.r9, cpu.reg.r10, cpu.reg.r11, cpu.reg.r12, cpu.reg.r13, cpu.reg.r14, cpu.reg.r15, cpu.reg.PR, cpu.reg.SR_parts.T, cpu.reg.SR);
    #endif

    if (cpu.branchDelayDone) {
      cpu.reg.PC = cpu.branchTarget;
      cpu.branchDelayDone = false;
    }

    // DSP repeat control
    // If we just finished executing the end instruction, jump to the start instruction and decrement the counter
    if (cpu.reg.PC - 2 == cpu.reg.RE && cpu.reg.RC > 1) {
      // printf("JUMP BACK!\n");
      cpu.reg.PC = cpu.reg.RS;
      cpu.reg.RC--;
    }
  }
  
  printf("Exit code: %d\n", cpu.reg.r0);

  return 0;
}

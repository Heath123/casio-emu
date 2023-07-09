#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
// #include <unistd.h>

#include "cpu.h"
#include "gui/gui.h"
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
#include "hardware/rtc/rtc.h"
#include "hardware/ports/ports.h"
#include "hardware/adc/adc.h"
#include "hardware/bcd/bcd.h"
#include "interrupts.h"

CpuState cpu = {0};

void test(void);

// bool trace = false;

#define SPEED_FACTOR ((u64) 2048 * 2)

// TODO: I think this is too many CPU cycles? Or maybe not enough...
// When adjusting this the timers will need to be adjusted too
#define ITERATIONS_PER_SEC ((u64) SPEED_FACTOR * 32768)
#define ITERATIONS_PER_FRAME (ITERATIONS_PER_SEC / 60)

void runFrame(void);

int startInterpreter(const char* filename) {
  initMemory(filename);
  initCpuRegisters();
  initTlb();
  initTimers();
  initDisplay();
  initKeyboard();
  initIntc();
  initDma();
  initPower();
  initRtc();
  initPorts();
  initAdc();
  initBcd();

  cpu.isBranchDelaySlot = false;
  cpu.branchDelayDone = false;
  cpu.branchTarget = 0;

  cpu.reg.PC = 0x00300000;

  // Return address
  cpu.reg.PR = 0xffffffff;
  cpu.reg.r15 = 0x8c080000; // Stack pointer, at the top of user memory

  cpu.reg.VBR = 0x80020f00;

  runMainLoop(runFrame);
  // runFrame(); runFrame(); runFrame(); runFrame();
  // for (int i = 0; i < 90; i++) {
  //   runFrame();
  // }
  return 0;
}

u64 iterations = 0;
u64 iterationsSleeping = 0;
// u64 iterationsThisFrame = 0;

void runIterationsCPU(int interationsToRun) {
  // while (iterations < (ITERATIONS_PER_SEC * 1)) {
  for (int i = 0; i < interationsToRun; i++) {
    iterations++;

    // TODO: How do interrupts act on branch delay slots?
    if (cpu.interruptPending && !cpu.isBranchDelaySlot) {
      cpu.interruptPending = false;
      handleInterrupt(cpu.interruptCode, cpu.interruptVector, cpu.interruptIsException);
    }

    if (cpu.isSleeping) {
      return;
    }

    #ifdef PRINT_INSTRUCTIONS
    if (cpu.isBranchDelaySlot) {
      printf("Branch delay slot:\n");
    }
    #endif

    if (cpu.isBranchDelaySlot) {
      cpu.isBranchDelaySlot = false;
      cpu.branchDelayDone = true;
    }

    // if (cpu.reg.PC == 0x801e7fa4) {
    //   printf("Intercept: %08x\n", cpu.reg.PC);
    //   cpu.reg.r0 = '\x03';
    //   cpu.reg.PC = cpu.reg.PR;
    // }

    if (cpu.reg.PC == 0x80020070) {
      printf("Syscall: %04x\n", cpu.reg.r0);
      // if (cpu.reg.r0 == 0x0eab) {
      //   // GetKey
      //   cpu.reg.r0 = 0;
      //   // printf("ptr: %08x\n", cpu.reg.r4);
      //   writeMemory(cpu.reg.r4, 4, 0x7534);
      //   cpu.reg.PC = cpu.reg.PR;
      // }
      // if (cpu.reg.r0 == 0x12bf) {
      //   // GetKeyWait_OS
      //   cpu.reg.r0 = 0;
      //   writeMemory(cpu.reg.r4, 4, 0x03);
      //   writeMemory(cpu.reg.r5, 4, 0x02);
      //   cpu.reg.PC = cpu.reg.PR;
      // }
      // if (cpu.reg.r0 == 0x0d39) {
      //   // PRGM_GetKey_OS
      //   // TODO?
      //   cpu.reg.PC = cpu.reg.PR;
      // }
    }

    // TODO: Check alignment
    u16 instr = readMemory2Quick(cpu.reg.PC);
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

    // if (cpu.reg.PC == 0xfffffe00) {
    //   if (cpu.reg.r4 == 0) {
    //     printf("Print: null string\n");
    //   } else {
    //     // Read until we hit a null byte
    //     u32 addr = cpu.reg.r4;
    //     while (readMemory(addr, 1) != 0) {
    //       printf("%c", readMemory(addr, 1));
    //       addr++;
    //     }
    //     // printf("\n");
    //   }
    //   // Set PC to PR (return)
    //   cpu.reg.PC = cpu.reg.PR;
    // }

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
}

u64 iterationsSinceRTCTick = 0;
void runFrame(void) {
  for (int i = 0; i < (ITERATIONS_PER_FRAME / SPEED_FACTOR); i++) {
    runIterationsCPU(SPEED_FACTOR);
    updateTimers();

    iterationsSinceRTCTick += SPEED_FACTOR;
    if (iterationsSinceRTCTick >= (ITERATIONS_PER_SEC / 128)) {
      updateRtc();
      iterationsSinceRTCTick = 0;
    }
  }
  updateDisplayFromFramebuffer();
}

#ifndef CPU_H
#define CPU_H

#include <stdbool.h>

#include "int.h"

struct SR_parts {
  u32 T : 1;
  u32 S : 1;
  u32 RF : 2;
  u32 IMASK : 4;
  u32 Q : 1;
  u32 M : 1;
  u32 DMY : 1;
  u32 DMX : 1;
  u32 DSP : 1;
  u32 reserved_1 : 3;
  u32 RC : 11;
  u32 BL : 1;
  u32 RB : 1;
  u32 MD : 1;
  u32 reserved_2 : 1;
};

typedef struct {
  union {
    u32 regArray[16 + 8 + 14];
    struct {
      u32 r0;
      u32 r1;
      u32 r2;
      u32 r3;
      u32 r4;
      u32 r5;
      u32 r6;
      u32 r7;
      u32 r8;
      u32 r9;
      u32 r10;
      u32 r11;
      u32 r12;
      u32 r13;
      u32 r14;
      u32 r15;
      u32 r0_banked;
      u32 r1_banked;
      u32 r2_banked;
      u32 r3_banked;
      u32 r4_banked;
      u32 r5_banked;
      u32 r6_banked;
      u32 r7_banked;
      u32 PC;
      u32 PR;
      // TODO: endianness?
      union {
        u32 SR;
        struct SR_parts SR_parts;
      };
      u32 GBR;
      u32 VBR;
      u32 MACH;
      u32 MACL;
      u32 SSR;
      u32 SPC;
      u32 SGR;
      u32 DBR;

      // MMU-related registers
      u32 TEA;

      // Exceptions/interrupts
      u32 EXPEVT;
      u32 TRA;
    };
  };
} CpuRegisters;

typedef struct CpuState {
  CpuRegisters reg;

  bool isBranchDelaySlot;
  bool branchDelayDone;
  u32 branchTarget;

  bool isSleeping;
} CpuState;

#endif // CPU_H


#include <stdbool.h>

#include "int.h"

typedef struct {
  union {
    u32 regArray[16 + 8 + 11];
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
      u32 SR;
      u32 GBR;
      u32 VBR;
      u32 MACH;
      u32 MACL;
      u32 SSR;
      u32 SPC;
      u32 SGR;
      u32 DBR;
    };
  };
} CpuRegisters;

typedef struct CpuState {
  CpuRegisters reg;

  bool isBranchDelaySlot;
  bool branchDelayDone;
  u32 branchTarget;
} CpuState;

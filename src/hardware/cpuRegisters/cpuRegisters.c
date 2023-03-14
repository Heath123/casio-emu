#include <stdio.h>

#include "../../int.h"
#include "../hwRegisters.h"
#include "../../cpu.h"

extern CpuState cpu;

    // case 0xff00000c:
    //   // TEA
    //   *value = cpu.reg.TEA;
    //   return true;
    // case 0xff000020:
    //   // TRA
    //   *value = cpu.reg.TRA;
    //   return true;
    // case 0xff000024:
    //   // EXPEVT
    //   *value = cpu.reg.EXPEVT;
    //   return true;
    // case 0xff000030:
    //   // Processor version register
    //   // TODO: This may be the value for the CG20
    //   *value = 0x10300B00;
    //   return true;
    // case 0xff000044:
    //   // Product register
    //   // TODO: This may be the value for the CG20
    //   *value = 0x00002C00;
    //   return true;
    // case 0xff2f0000:
    //   // CPU Operation Mode Register
    //   *value = 0x00a7ffd0;
    //   return true;
    // case 0xff000070:
    //   // Physical Address Space Control Register
    //   *value = 0x00000082;
    //   return true;
    // case 0xff000078:
    //   // Instruction Re-Fetch Inhibit Control Register
    //   *value = 0x00000000;
    //   return true;
    // case 0xa4150000:
    // case 0xa4150024:
    // case 0xa4150044:
    // case 0xa4150050:
    // case 0xfec10004:
    // case 0xfec10008:
    // case 0xfec1000c:
    // case 0xfec10014:
    // case 0xfec10024:
    // case 0xfec10028:
    // case 0xfec1002c:
    // case 0xfec10034:
    //   // Related to clock speed
    //   // TODO
    //   *value = 0x00000000;
    //   return true;
    // case 0xa405013c:
    // case 0xb4000000:
    //   // This is handled in the display code
    //   // TODO: This is a range of addresses, not a single address
    //   return readDisplay(realAddress, value, size);
    // case 0xa4490004:
    //   return readTimers(realAddress, value, size);

void nopWrite(u32 val) {}

u32 pvrRead(void) {
  return 0x10300b00;
}

u32 prRead(void) {
  return 0x00002c00;
}

// TODO: Put this in the CPU struct?
u32 CpuOPM = 0x00a7ffd0;

u16 IPR[12] = {0};
u8 IMR[13] = {0};

// TODO
u32 PASCR = 0x00000082;
u32 IRMCR = 0x00000000;

void initCpuRegisters(void) {
  defineRegCB("Processor Version Register", pvrRead, nopWrite, 0xff000030, 4);
  defineRegCB("Product Register", prRead, nopWrite, 0xff000044, 4);
  defineReg("CPU Operation Mode Register", CpuOPM, 0xff2f0000);
  defineReg("TLB Exception Address Register", cpu.reg.TEA, 0xff00000c);
  defineReg("TRAPA Exception Register", cpu.reg.TRA, 0xff000020);
  defineReg("Exception Event Register", cpu.reg.EXPEVT, 0xff000024);

  // TODO: Move this to an interrupt controller source file
  defineRegArray("Interrupt priority registers", IPR, 0xa4080000, 12, 2);
  defineRegArray("Interrupt mask registers", IMR, 0xa4080080, 13, 3);

  defineReg("Physical Address Space Control Register", PASCR, 0xff000070);
  defineReg("Instruction Re-Fetch Inhibit Control Register", IRMCR, 0xff000078);
}

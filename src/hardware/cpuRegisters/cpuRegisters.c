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

void nopWrite(u32 addr, u32 val) {}

u32 nopRead(u32 addr) {
  return 0;
}

void nopWriteUnsized(u32 addr, u32 val, u32 size) {}

u32 nopReadUnsized(u32 addr, u32 size) {
  return 0;
}

u32 pvrRead(u32 addr) {
  return 0x10300b00;
}

u32 cvrRead(u32 addr) {
  return 0x43440110;
}

u32 prRead(u32 addr) {
  return 0x00002c00;
}

// TODO: Put this in the CPU struct?
u32 CpuOPM = 0x00a7ffd0;

// TODO
u32 PASCR = 0x00000082;
u32 IRMCR = 0x00000000;

// TODO: Values
u32 CCR = 0;
u32 MMUCR = 0;
u32 TCSR = 0;
u32 RTCNT = 0;
u32 RTCOR = 0;
u32 CMNCR = 0;
u32 CS0BCR = 0;
u32 CS2BCR = 0;
u32 CS4BCR = 0;
u32 CS3BCR = 0;
u32 CS5ABCR = 0;
u32 CS5BBCR = 0;
u32 CS6ABCR = 0;
u32 CS6BBCR = 0;
u32 CS0WCR = 0;
u32 CS2WCR = 0;
u32 CS3WCR = 0;
u32 CS4WCR = 0;
u32 CS5AWCR = 0;
u32 CS5BWCR = 0;
u32 CS6AWCR = 0;
u32 CS6BWCR = 0;
u32 SDCR = 0;
u32 PLL2CR = 0;

void initCpuRegisters(void) {
  defineRegCB("Processor Version", pvrRead, nopWrite, 0xff000030, 4);
  defineRegCB("CVR", cvrRead, nopWrite, 0xFF000040, 4);
  defineRegCB("Product", prRead, nopWrite, 0xff000044, 4);
  defineReg("CPU Operation Mode", CpuOPM, 0xff2f0000);
  defineReg("TLB Exception Address", cpu.reg.TEA, 0xff00000c);
  defineReg("TRAPA Exception", cpu.reg.TRA, 0xff000020);
  defineReg("Exception Event", cpu.reg.EXPEVT, 0xff000024);

  defineReg("Physical Address Space Control", PASCR, 0xff000070);
  defineReg("Instruction Re-Fetch Inhibit Control", IRMCR, 0xff000078);
  defineReg("Cache Control", CCR, 0xff00001c);
  defineReg("MMU Control", MMUCR, 0xff000010);
  defineReg("Refresh timer control", TCSR, 0xfec10048);
  defineReg("Refresh counter", RTCNT, 0xfec1004c);
  defineReg("Refresh constant", RTCOR, 0xfec10050);
  defineReg("Bus Common control", CMNCR, 0xfec10000);
  defineReg("Bus control for CS0", CS0BCR, 0xfec10004);
  defineReg("Bus control for CS2", CS2BCR, 0xfec10008);
  defineReg("Bus control for CS4", CS4BCR, 0xfec10010);
  defineReg("Bus control for CS3", CS3BCR, 0xfec1000c);
  defineReg("Bus control for CS5A", CS5ABCR, 0xfec10014);
  defineReg("Bus control for CS5B", CS5BBCR, 0xfec10018);
  defineReg("Bus control for CS6A", CS6ABCR, 0xfec1001c);
  defineReg("Bus control for CS6B", CS6BBCR, 0xfec10020);
  defineReg("Wait control for CS0", CS0WCR, 0xfec10024);
  defineReg("Wait control for CS2", CS2WCR, 0xfec10028);
  defineReg("Wait control for CS3", CS3WCR, 0xfec1002c);
  defineReg("Wait control for CS4", CS4WCR, 0xfec10030);
  defineReg("Wait control for CS5A", CS5AWCR, 0xfec10034);
  defineReg("Wait control for CS5B", CS5BWCR, 0xfec10038);
  defineReg("Wait control for CS6A", CS6AWCR, 0xfec1003c);
  defineReg("Wait control for CS6B", CS6BWCR, 0xfec10040);
  defineReg("SDRAM control", SDCR, 0xfec10044);
  defineReg("PLL2 control", PLL2CR, 0xa4150028);

  // TODO: Make these do something, or at least return a sensible value
  u32 clockSpeedRelated[] = {0xa4150000, 0xa4150024, 0xa4150044, 0xa4150050, 0xa4150060, 0xfec10004, 0xfec10008, 0xfec1000c, 0xfec10014, 0xfec10024, 0xfec10028, 0xfec1002c, 0xfec10034, 0xfec15060, 0xa415003c, 0xa4150008, 0xa4150010};
  for (int i = 0; i < 17; i++) {
    defineRegCBUnsized("Clock speed related", nopReadUnsized, nopWriteUnsized, clockSpeedRelated[i]);
  }
}

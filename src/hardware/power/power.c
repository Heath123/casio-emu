#include "../../int.h"
#include "../hwRegisters.h"

// TODO: Do these need emulation?
u32 STBCR = 0;
u32 MSTPCR0 = 0;
u32 MSTPCR2 = 0;
u32 BAR = 0;

void initPower() {
  defineReg("Standby control", STBCR, 0xa4150020);
  defineReg("Module stop 0", MSTPCR0, 0xa4150030);
  defineReg("Module stop 2", MSTPCR2, 0xa4150038);
  defineReg("Boot address", BAR, 0xa4150040);
}


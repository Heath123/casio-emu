#ifndef INTC_H
#define INTC_H

#include "../../int.h"

enum intPriorityReg { IPRA, IPRB, IPRC, IPRD, IPRE, IPRF, IPRG, IPRH, IPRI, IPRJ, IPRK, IPRL };
enum intMaskReg { IMR0, IMR1, IMR2, IMR3, IMR4, IMR5, IMR6, IMR7, IMR8, IMR9, IMR10 };

typedef struct {
  u32 code;
  enum intMaskReg IMR;
  u8 IMRbits;
} interruptData;

void initIntc(void);
void generateIntcInterrupt(interruptData* data);

#endif // INTC_H

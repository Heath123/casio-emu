#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"
#include "../intc/intc.h"

interruptData adcInterrupt = {
  .code = 0x560,
  .IMR = IMR4,
  .IMRbits = 0x08
};

// Battery voltage in cV
int batteryVoltage = 470; // 4.7V

u16 ADDRA = 0;
u16 ADDRB = 0;
u16 ADDRC = 0;
u16 ADDRD = 0;
u16 ADCSR = 0;
u16 ADCCSR = 0;
u16 ADCUST = 0;
u16 ADPCTL = 0;

u32 readADCSR(u32 addr) {
  return ADCSR;
}

void writeADCSR(u32 addr, u32 value) {
  ADCSR = value;
  if (ADCSR & 0b0010000000000000) {
    // Start conversion
    ADDRC = batteryVoltage << 6;
    if (ADCSR & 0b0100000000000000) {
      // Raise interrupt
      // TODO: Delay this
      generateIntcInterrupt(&adcInterrupt);
    }
  }
}

void initAdc(void) {
  defineReg("A/D A data", ADDRA, 0xa4610080);
  defineReg("A/D B data", ADDRB, 0xa4610082);
  defineReg("A/D C data", ADDRC, 0xa4610084);
  defineReg("A/D D data", ADDRD, 0xa4610086);
  // defineReg("A/D Control/status", ADCSR, 0xa4610088);
  defineRegCB("A/D Control/status", readADCSR, writeADCSR, 0xa4610088, 2);
  defineReg("A/D Custom control", ADCCSR, 0xa461008a);
  defineReg("A/D Control", ADCUST, 0xa461008c);
  defineReg("A/D Port control", ADPCTL, 0xa461008e);
}

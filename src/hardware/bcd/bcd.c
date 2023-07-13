#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"
// #include "../intc/intc.h"

// FILE* testCaseLog = NULL;

void addBCD(u32 num1, u32 num2, u32 carryIn, u32* sum, int* carryOut) {
  // printf("addBCD(%08x, %08x, %08x)\n", num1, num2, carryIn);
  *sum = 0;
  u32 nibbleMask = 0xF;
  int carry = carryIn;

  for (int i = 0; i < 8; i++) {
    u32 nibble1 = num1 & nibbleMask;
    u32 nibble2 = num2 & nibbleMask;

    u32 nibbleSum = nibble1 + nibble2 + carry;

    if (nibbleSum > 9) {
      carry = 1;
      nibbleSum -= 10;
    } else {
      carry = 0;
    }

    *sum |= (nibbleSum << (4 * i));

    num1 >>= 4;
    num2 >>= 4;
  }

  *carryOut = carry;
}

void subtractBCD(u32 num1, u32 num2, u32 borrowIn, u32* difference, int* borrowOut) {
  // printf("subtractBCD(%08x, %08x, %08x)\n", num1, num2, borrowIn);
  *difference = 0;
  u32 nibbleMask = 0xF;
  int borrow = borrowIn;

  for (int i = 0; i < 8; i++) {
    u32 nibble1 = num1 & nibbleMask;
    u32 nibble2 = num2 & nibbleMask;

    if (nibble1 < (nibble2 + borrow)) {
      *difference |= ((nibble1 + 10 - nibble2 - borrow) << (4 * i));
      borrow = 1;
    } else {
      *difference |= ((nibble1 - nibble2 - borrow) << (4 * i));
      borrow = 0;
    }

    num1 >>= 4;
    num2 >>= 4;
  }

  *borrowOut = borrow;
}

u16 FASCR = 0;
u32 FASSRA = 0;
u32 FASSRB = 0;
u32 FASDR = 0;

// struct FASCR_t {
// 	uint32_t :3;
// 	uint32_t carryout :1;
// 	uint32_t :9;
// 	uint32_t carryin :1;
//  uint32_t carryFromLast :1; // If this is set the last carry/borrow is ORed with carryin
// 	uint32_t operation :1;
// };

int lastCarryOrBorrow = 0;

u32 readFASCR(u32 addr) {
  // printf("BCD control read: %08x\n", FASCR);
  return FASCR;
}

// TODO: Warn on unknown values
void writeFASCR(u32 addr, u32 value) {
  // printf("BCD control write: %08x\n", value);
  FASCR = value;
  // fprintf(testCaseLog, " {\n");
  // fprintf(testCaseLog, "   .FASSRAin = 0x%08x,\n", FASSRA);
  // fprintf(testCaseLog, "   .FASSRBin = 0x%08x,\n", FASSRB);
  // fprintf(testCaseLog, "   .FASCRin = 0x%04x,\n", FASCR);
  int operation = value & 0b1;
  int carryFromLast = value & 0b10;
  int carryIn = ((value & 0b100) >> 2) | (carryFromLast && lastCarryOrBorrow);
  if (operation == 0) {
    // Subtract
    int borrowOut;
    subtractBCD(FASSRA, FASSRB, carryIn, &FASDR, &borrowOut);
    // printf("Result of subtraction: %08x\n", FASDR);
    if (borrowOut) {
      FASCR |= 0b0001000000000000;
    } else {
      FASCR &= ~0b0001000000000000;
    }
    lastCarryOrBorrow = borrowOut;
  } else {
    // Add
    int carryOut;
    addBCD(FASSRA, FASSRB, carryIn, &FASDR, &carryOut);
    // printf("Result of addition: %08x\n", FASDR);
    if (carryOut) {
      FASCR |= 0b0001000000000000;
    } else {
      FASCR &= ~0b0001000000000000;
    }
    lastCarryOrBorrow = carryOut;
  }
  // fprintf(testCaseLog, "   .FASDRout = 0x%08x,\n", FASDR);
  // fprintf(testCaseLog, "   .FASCRout = 0x%04x,\n", FASCR);
  // fprintf(testCaseLog, " },\n");
  // fflush(testCaseLog);
}

u32 readFASSRA(u32 addr) {
  // printf("BCD A read: %08x\n", FASSRA);
  return FASSRA;
}

void writeFASSRA(u32 addr, u32 value) {
  // printf("BCD A write: %08x\n", value);
  FASSRA = value;
}

u32 readFASSRB(u32 addr) {
  // printf("BCD B read: %08x\n", FASSRB);
  return FASSRB;
}

void writeFASSRB(u32 addr, u32 value) {
  // printf("BCD B write: %08x\n", value);
  FASSRB = value;
}

u32 readFASDR(u32 addr) {
  // printf("BCD result read: %08x\n", FASDR);
  return FASDR;
}

void writeFASDR(u32 addr, u32 value) {
  // printf("BCD result write: %08x\n", value);
  FASDR = value;
}

void initBcd(void) {
  defineRegCB("BCD Calculation control", readFASCR, writeFASCR, 0xa4cb0010, 2);
  defineRegCB("BCD Calculation source A", readFASSRA, writeFASSRA, 0xa4cb0014, 4);
  defineRegCB("BCD Calculation source B", readFASSRB, writeFASSRB, 0xa4cb0018, 4);
  // defineReg("BCD Calculation result", FASDR, 0xa4cb001c);
  defineRegCB("BCD Calculation result", readFASDR, writeFASDR, 0xa4cb001c, 4);

  // testCaseLog = fopen("/home/heath/calc-emu-2/calc-emu-test/src/bcdTests.h","w");
  // fprintf(testCaseLog, "bcdTest tests[] = {\n");
  // fflush(testCaseLog);
}

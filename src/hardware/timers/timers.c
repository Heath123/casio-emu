#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "timers.h"

// TODO: What should this be initialized to?
u8 TSTR = 0;

// #define pad(bytes)	uint8_t pad_name(__COUNTER__)[bytes]
// #define GPACKED(x)	__attribute__((packed, aligned(x)))

// /* tmu_t - a single timer from a standard timer unit */
// typedef volatile struct
// {
// 	uint32_t TCOR;			/* Constant register */
// 	uint32_t TCNT;			/* Counter register, counts down */

// 	// word_union(TCR,
// 	// 	uint16_t	:7;
// 	// 	uint16_t UNF	:1;	/* Underflow flag */
// 	// 	uint16_t	:2;
// 	// 	uint16_t UNIE	:1;	/* Underflow interrupt enable */
// 	// 	uint16_t CKEG	:2;	/* Input clock edge */
// 	// 	uint16_t TPSC	:3;	/* Timer prescaler (input clock) */
// 	// );
//   uint16_t TCR;

// } GPACKED(4) tmu_t;

// // From gint
// typedef volatile struct
// {
// 	uint8_t TSTR;			/* Timer Start Register */
// 	pad(3);

// 	tmu_t TMU[3];

// } GPACKED(4) sh7305_tmu_t;

void expectSize(u32 size, u32 expected);

// Handles memory-mapped I/O for the timers
bool readTimers(u32 realAddress, u32* value, u32 size) {
  // Round down to the nearest 4 bytes
  // u32 address = realAddress & ~0x3;

  // Check if it's a special address
  switch (realAddress) {
    case 0xa4490004:
      // TSTR (Timer start register)
      expectSize(size, 1);
      *value = TSTR;
      return true;
  }

  return false;
}

bool writeTimers(u32 realAddress, u32 value, u32 size, u32 bitmask) {
  // Round down to the nearest 4 bytes
  // u32 address = realAddress & ~0x3;

  // Check if it's a special address
  switch (realAddress) {
    case 0xa4490004:
      // TSTR (Timer start register)
      if (size != 1) {
        // What is the correct behavior here?
        printf("Non-byte write to PRDR not implemented!\n");
        exit(1);
      }
      // printf("PRDR set to %02x\n", value);
      TSTR = value;
      return true;
  }

  return false;
}

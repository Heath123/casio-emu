#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "../../int.h"
#include "../hwRegisters.h"
#include "timers.h"
#include "../../interrupts.h"
#include "../intc/intc.h"
#include "../../cpu.h"

extern CpuState cpu;

struct TimerStart {
  u32 STR0 : 1;
  u32 STR1 : 1;
  u32 STR2 : 1;
  u32 reserved : 3;
};

union TimerStartRegister {
  u8 value;
  struct TimerStart bits;
};

union TimerStartRegister TSTR;


u32 TCOR[3] = {0};
u32 TCNT[3] = {0xffffffff};

struct TimerControl {
  uint16_t	:7;
  uint16_t UNF	:1;	/* Underflow flag */
  uint16_t	:2;
  uint16_t UNIE	:1;	/* Underflow interrupt enable */
  uint16_t CKEG	:2;	/* Input clock edge */
  uint16_t TPSC	:3;	/* Timer prescaler (input clock) */
};

union TimerControlRegister {
  u16 value;
  struct TimerControl bits;
};

union TimerControlRegister TCR[3] = {0};

// TODO: the right amount of timers
u8 E_TSTR[6] = {0};

u32 E_TCOR[6] = {0};
u32 E_TCNT[6] = {0xffffffff};
u8 E_TCR[6] = {0};

void initTimers(void) {
  defineReg("Timer Start", TSTR.value, 0xa4490004);

  for (int i = 0; i < 3; i++) {
    char *name = malloc(32);
    sprintf(name, "Timer Constant Register %d", i);
    defineReg(name, TCOR[i], 0xa4490008 + (i * 12));

    name = malloc(32);
    sprintf(name, "Timer Counter %d", i);
    defineReg(name, TCNT[i], 0xa449000c + (i * 12));

    name = malloc(32);
    sprintf(name, "Timer Control Register %d", i);
    defineReg(name, TCR[i], 0xa4490010 + (i * 12));
  }

  // ETMUs starting at 0xa44d0034

  // /* etmu_t - extra timers on SH7337, SH7355 and SH7305 */
  // typedef volatile struct
  // {
  // 	uint8_t TSTR;			/* Only bit 0 is used */
  // 	pad(3);

  // 	uint32_t TCOR;			/* Constant register */
  // 	uint32_t TCNT;			/* Counter register */

  // 	byte_union(TCR,
  // 		uint8_t		:6;
  // 		uint8_t UNF	:1;	/* Underflow flag */
  // 		uint8_t UNIE	:1;	/* Underflow interrupt enable */
  // 	);
  // 	pad(19);

  // } GPACKED(4) etmu_t;

  // TODO
  for (int i = 0; i < 6; i++) {
    char *name = malloc(32);
    sprintf(name, "ETMU Timer Start Register %d", i);
    defineReg(name, E_TSTR[i], 0xa44d0030 + (i * 32));

    name = malloc(32);
    sprintf(name, "ETMU Timer Constant Register %d", i);
    defineReg(name, E_TCOR[i], 0xa44d0034 + (i * 32));

    name = malloc(32);
    sprintf(name, "ETMU Timer Counter %d", i);
    defineReg(name, E_TCNT[i], 0xa44d0038 + (i * 32));

    name = malloc(32);
    sprintf(name, "ETMU Timer Control Register %d", i);
    // TODO: Why does this work?
    defineReg(name, E_TCR[i], 0xa44d003c + (i * 32));
  }
}

u32 count = 0;
u32 count2 = 0;

u32 tmu_event[9] = {0x400, 0x420, 0x440, 0x9e0, 0xc20, 0xc40, 0x900, 0xd00, 0xfa0};

u32 prescaler[8] = {4, 16, 64, 256, 0, 0, 0, 0};

void updateTimers(void) {
  if (count % (16384) == 0) {
    // TODO: Better value for this

    for (int i = 0; i < 9; i++) {
      bool isEtmu = i >= 3;
      bool enabled;
      if (isEtmu) {
        enabled = E_TSTR[i - 3] & 1;
      } else {
        enabled = TSTR.value & (1 << i);
      }
      
      if (enabled) {
        // Prescaler
        if (isEtmu) {
          // TODO
        } else {
          u32 index = TCR[i].bits.TPSC;
          if (index >= 4) {
            printf("Timer %d prescaler not implemented: %d\n", i, index);
            exit(1);
          }

          u32 prescale = prescaler[index];
          prescale *= 2;
          if (count2 % prescale != 0) {
            continue;
          }
        }

        if (isEtmu) {
          if (E_TCNT[i - 3] == 0) {
            // Timer underflow - raise an interrupt
            // printf("Timer %d interrupt\n", i);
            generateIntcInterrupt(tmu_event[i]);
            E_TCNT[i - 3] = E_TCOR[i - 3];
          }
          // Decrement the timer
          // printf("Timer %d value: %d\n", i, E_TCNT[i - 3]);
          E_TCNT[i - 3]--;
        } else {
          if (TCNT[i] == 0) {
            // Timer underflow - raise an interrupt
            // printf("Timer %d interrupt\n", i);
            generateIntcInterrupt(tmu_event[i]);
            TCNT[i] = TCOR[i];
          }
          // Decrement the timer
          TCNT[i]--;
        }
      }
    }
    count2++;
  }

  count++;
}

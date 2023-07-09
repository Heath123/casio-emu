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

// Compare match timer
// TODO: Interrupts
u16 CMSTR = 0;
u16 CMCSR = 0;
u32 CMCNT = 0;
u32 CMCOR = 0;

// TODO: Does this belong here?
// TODO: Emulate this
u8 DDCK_CNTR = 0;
u16 DDCLKR0 = 0;
u16 DDCLKR1 = 0;
u16 DDCLKR2 = 0;

/* Timer Unit (see tmu/tmu.c) */
typedef struct {
	/* Individual timers; TSTR is used for ETMU */
	struct tmu_state_stored_timer {
		uint32_t TCOR;
		uint32_t TCNT;
		uint16_t TCR;
		uint16_t TSTR;
	} t[9];
	/* TSTR value for TMU */
	uint8_t TSTR;
} tmu_state_t;

tmu_state_t os_state = {
  .t = {
    {
      .TCOR = 0xffffffff,
      .TCNT = 0xffffffff,
      .TCR = 0x0000,
      .TSTR = 0x5555,
    },
    {
      .TCOR = 0x0002d000,
      .TCNT = 0x0002d000,
      .TCR = 0x0023,
      .TSTR = 0x5555,
    },
    {
      .TCOR = 0xffffffff,
      .TCNT = 0x00000000,
      .TCR = 0x0003,
      .TSTR = 0x5555,
    },
    {
      .TCOR = 0x00000333,
      .TCNT = 0x00000333,
      .TCR = 0x0000,
      .TSTR = 0x0000,
    },
    {
      .TCOR = 0x00000333,
      .TCNT = 0x00000333,
      .TCR = 0x0000,
      .TSTR = 0x0000,
    },
    {
      .TCOR = 0x00000333,
      .TCNT = 0x00000333,
      .TCR = 0x0000,
      .TSTR = 0x0000,
    },
    {
      .TCOR = 0x00000333,
      .TCNT = 0x00000333,
      .TCR = 0x0000,
      .TSTR = 0x0000,
    },
    {
      .TCOR = 0x00000333,
      .TCNT = 0x00000333,
      .TCR = 0x0000,
      .TSTR = 0x0000,
    },
    {
      .TCOR = 0xffffffff,
      .TCNT = 0xf8a58232,
      .TCR = 0x0000,
      .TSTR = 0x0003,
    }
  },
  .TSTR = 0x00
};

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

  defineReg("Compare Match Timer Start", CMSTR, 0xa44a0000);
  defineReg("Compare Match Timer Control/Status", CMCSR, 0xa44a0060);
  defineReg("Compare Match Timer Counter", CMCNT, 0xa44a0064);
  defineReg("Compare Match Timer Constant", CMCOR, 0xa44a0068);

  defineReg("External Clock Control", DDCK_CNTR, 0xa44c0020);
  defineReg("External CLK1 setting", DDCLKR0, 0xa44c0000);
  defineReg("External CLK2 setting", DDCLKR1, 0xa44c0002);
  defineReg("External CLK3 setting", DDCLKR2, 0xa44c0004);

  // Restore the OS state
  for(int i = 0; i < 3; i++)
	{
		TCOR[i] = os_state.t[i].TCOR;
		TCNT[i] = os_state.t[i].TCNT;
		TCR[i].value = os_state.t[i].TCR;
	}
	for(int i = 3; i < 9; i++)
	{
		struct tmu_state_stored_timer const *c = &os_state.t[i];

    E_TCOR[i - 3] = c->TCOR;
    E_TSTR[i - 3] = c->TSTR;
    E_TCNT[i - 3] = c->TCNT;
    E_TCR[i - 3] = c->TCR;
	}

  TSTR.value = os_state.TSTR;
}

u32 count = 0;

interruptData tmu_interrupt[9] = {
  // TMU
  { .code = 0x400, .IMR = IMR4, .IMRbits = 0x10 },
  { .code = 0x420, .IMR = IMR4, .IMRbits = 0x20 },
  { .code = 0x440, .IMR = IMR4, .IMRbits = 0x40 },
  // ETMU
  { .code = 0x9e0, .IMR = IMR6, .IMRbits = 0x08 },
  { .code = 0xc20, .IMR = IMR5, .IMRbits = 0x02 },
  { .code = 0xc40, .IMR = IMR5, .IMRbits = 0x04 },
  { .code = 0x900, .IMR = IMR2, .IMRbits = 0x01 },
  { .code = 0xd00, .IMR = IMR6, .IMRbits = 0x10 },
  { .code = 0xfa0, .IMR = IMR8, .IMRbits = 0x02 },
};

u32 prescaler[8] = {4, 16, 64, 256, 0, 0, 0, 0};

void updateTimers(void) {
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
        if (count % prescale != 0) {
          continue;
        }
      }

      if (isEtmu) {
        if (E_TCNT[i - 3] == 0) {
          // Timer underflow - raise an interrupt
          // printf("Timer %d interrupt\n", i);
          generateIntcInterrupt(&tmu_interrupt[i]);
          E_TCNT[i - 3] = E_TCOR[i - 3];
        }
        // Decrement the timer
        // printf("Timer %d value: %d\n", i, E_TCNT[i - 3]);
        E_TCNT[i - 3]--;
      } else {
        if (TCNT[i] == 0) {
          // Timer underflow - raise an interrupt
          // printf("Timer %d interrupt\n", i);
          generateIntcInterrupt(&tmu_interrupt[i]);
          TCNT[i] = TCOR[i];
        }
        // Decrement the timer
        TCNT[i]--;
      }
    }
  }

  // TODO: Insyead of running this 28 times at once it should be spread out
  for (int i = 0; i < 28; i++) {
    bool compareMatchEnabled = (CMSTR & 0b00100000) >> 5;
    if (compareMatchEnabled) {
      // printf("Compare match enabled: %d/%d\n", CMCNT, CMCOR);
      // TODO: 16-bit mode, the standby thing
      CMCNT++;
      if (CMCNT == UINT32_MAX) {
        // Set the overflow flag
        CMCSR |= 0b0100000000000000;
      }
      if (CMCNT == CMCOR) {
        // Set the compare match flag
        CMCSR |= 0b1000000000000000;
        CMCNT = 0;
        if (!(CMSTR & 0b0000000100000000)) { // One-shot mode
          // Disable the compare match timer
          // TODO: Is this correct?
          CMSTR &= ~0b00100000;
        }
      }
    }
  }

  count++;
}

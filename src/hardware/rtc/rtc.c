#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include "rtc.h"
#include "../../int.h"
#include "../hwRegisters.h"

u8 R64CNT = 0;
u8 RSECCNT = 0;
u8 RMINCNT = 0;
u8 RHRCNT = 0;
u8 RWKCNT = 0;
u8 RDAYCNT = 0;
u8 RMONCNT = 0;
u16 RYRCNT = 0;

u8 RCR1 = 0;
// TODO: Emulate the functionality of this register
u8 RCR2 = 0;

// BCD functions from gint source code
/* int8(), int16(): Convert BCD to integer */
static int int8(uint8_t bcd)
{
	return (bcd & 0x0f) + 10 * (bcd >> 4);
}
static int int16(uint16_t bcd)
{
	return (bcd & 0xf) + 10 * ((bcd >> 4) & 0xf) + 100 * ((bcd >> 8) & 0xf)
		+ 1000 * (bcd >> 12);
}

/* bcd8(), bcd16(): Convert integer to BCD
   TODO: Use some kind of qdiv() for bcd8() and bcd16() */
static uint8_t bcd8(int integer)
{
	integer %= 100;
	return ((integer / 10) << 4) | (integer % 10);
}
static uint16_t bcd16(int integer)
{
	integer %= 10000;
	return (bcd8(integer / 100) << 8) | bcd8(integer % 100);
}

// Not from gint
// Increment a value stored as BCD
void incrementBCD8(u8* value) {
  u8 decValue = int8(*value);
  decValue++;
  *value = bcd8(decValue);
}

void initRtc(void) {
  // Even though it's called 64-Hz counter, I think it counts at 128Hz?
  defineReg("64-Hz Counter", R64CNT, 0xa413fec0);
  defineReg("Seconds counter", RSECCNT, 0xa413fec2);
 	defineReg("Minutes counter", RMINCNT, 0xa413fec4);
 	defineReg("Hours counter", RHRCNT, 0xa413fec6);
 	defineReg("Weekday counter", RWKCNT, 0xa413fec8);
 	defineReg("Date counter", RDAYCNT, 0xa413feca);
 	defineReg("Months counter", RMONCNT, 0xa413fecc);
 	defineReg("Years counter", RYRCNT, 0xa413fece);
  
  defineReg("RTC Control 1", RCR1, 0xa413fedc);
  defineReg("RTC Control 2", RCR2, 0xa413fede);
}

// Ticks the RTC, should be called 128 times per second
// TODO: Interrupts and alarms
void updateRTC(void) {
  R64CNT++;
  if (R64CNT == 128) {
    R64CNT = 0;

    // Set the carry flag
    RCR1 |= 0b10000000;

    // Increment the seconds counter
    incrementBCD8(&RSECCNT);
  }
  if (int8(RSECCNT) == 60) {
    RSECCNT = bcd8(0);

    // Increment the minutes counter
    incrementBCD8(&RMINCNT);
  }
  if (int8(RMINCNT) == 60) {
    RMINCNT = bcd8(0);

    // Increment the hours counter
    incrementBCD8(&RHRCNT);
  }
  if (int8(RHRCNT) == 24) {
    RHRCNT = bcd8(0);

    // Increment day of week counter (it's not BCD)
    RWKCNT = (RWKCNT + 1) % 7;

    // Increment day counter
    incrementBCD8(&RDAYCNT);
  }
  // OK, I'll give up here for now because I don't want
  // to deal with leap years and things like that
}

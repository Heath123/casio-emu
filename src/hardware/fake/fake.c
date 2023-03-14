#include <stdio.h>

#include "../../int.h"
#include "../hwRegisters.h"

u32 testRegister;

u32 testRegister2;
u32 read(void) {
  return testRegister2;
}
void write(u32 val) {
  printf("Writing %d to testRegister2\n", val);
  testRegister2 = val;
}

u32 regArray[4];

void initFake(void) {
  defineReg("Test Register", testRegister, 0xffff0000);
  defineRegCB("Test Register 2", read, write, 0xffff0004, 4);
  defineRegArray("Test Register Array", regArray, 0xffff0008, 4, 0);
}

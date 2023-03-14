#ifndef HWREGISTERS_H
#define HWREGISTERS_H

#include <stdbool.h>

#include "../int.h"

enum regType {
  REG_TYPE_VAR,
  REG_TYPE_CB,
  REG_TYPE_ARRAY,
  REG_TYPE_ARRAY_CB,
};

typedef struct hwRegister {
  char *name;
  u32 addr;
  u32 size;
  u32 spacing;
  enum regType type;
  union {
    // REG_TYPE_VAR, REG_TYPE_ARRAY
    void *var;
    // REG_TYPE_CB
    struct {
      u32 (*read)(void);
      void (*write)(u32);
    } cb;
    // REG_TYPE_ARRAY_CB
    struct {
      u32 (*read)(u32);
      void (*write)(u32, u32);
    } array_cb;
  };
} hwRegister;

void defineReg_internal(char *name, void *var,  u32 addr, u32 size);
#define defineReg(name, var, addr) defineReg_internal(name, &var, addr, sizeof(var))
void defineRegCB(char *name, u32 (*read)(void), void (*write)(u32), u32 addr, u32 size);
void defineRegArray_internal(char *name, void *var, u32 addr, u32 size, u32 count, u32 spacing);
#define defineRegArray(name, var, addr, count, spacing) defineRegArray_internal(name, var, addr, sizeof(var[0]), count, spacing)
void defineRegArrayCB(char *name, u32 (*read)(u32), void (*write)(u32, u32), u32 addr, u32 size, u32 count);

#endif // HWREGISTERS_H

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../../int.h"
#include "../../gui/gui.h"
#include "../hwRegisters.h"
#include "../../cpu.h"

extern CpuState cpu;

u8 PRDR; // Port R data register
u16 mode;

// TODO: Good defaults
u16 drivingWaveControl = 0; // I don't think this is relevant for emulation
u16 entryMode = 0; // TODO: Default value? Emulate this?
u16 lowPowerControl = 0; // TODO: Emulate 8-colour mode
u16 unknown = 0;

u16	ram_address_horizontal = 0; //  0x200
u16	ram_address_vertical = 0; // 0x201

// TODO: These are probably wrong
u16 horizontal_ram_start = 6; // 0x210
u16 horizontal_ram_end = 389; // 0x211
u16 vertical_ram_start = 0; // 0x212
u16 vertical_ram_end = 215; // 0x213

u8 brightness = 255; // 0x5a1

// 2D array of pixels
u16 pixels[224][396] = {{0xffff}};

// Set when the display is in the mode where it is receiving pixel data
// TODO: See if the fast path actually helps
// bool displayFastPath = false;

// void fastWrite(u32 value) {
//   // TODO: We can make this even faster when the destination is contiguous
//   pixels[ram_address_vertical][ram_address_horizontal] = value;

//   ram_address_horizontal++;
//   if (ram_address_horizontal > horizontal_ram_end) {
//     ram_address_horizontal = horizontal_ram_start;
//     ram_address_vertical++;
//     if (ram_address_vertical > vertical_ram_end) {
//       ram_address_vertical = vertical_ram_start;
//     }
//   }
  
//   if (ram_address_horizontal == horizontal_ram_end && ram_address_vertical == vertical_ram_end) {
//     updateDisplay(&pixels[0][0]);
//   }
// }

void expectSize(u32 size, u32 expected) {
  if (size != expected) {
    printf("Non-%d-byte read from display not implemented!\n", expected);
    exit(1);
  }
}

u32 dispInterfaceRead(u32 addr, u32 size) {
  if (!(PRDR & 0x10)) {
    // Mode select, or something
    return mode;
  } else {
    // TODO: Update these to match below
    switch (mode) {
      case 0x002:
        return drivingWaveControl;
      case 0x003:
        // Entry mode
        return entryMode;
      case 0x00b:
        // Low power control
        return lowPowerControl;
      case 0x200:
        // RAM address horizontal
        return ram_address_horizontal;
      case 0x201:
        // RAM address vertical
        return ram_address_vertical;
      case 0x210:
        // Horizontal RAM start
        return horizontal_ram_start;
      case 0x211:
        // Horizontal RAM end
        return horizontal_ram_end;
      case 0x212:
        // Vertical RAM start
        return vertical_ram_start;
      case 0x213:
        // Vertical RAM end
        return vertical_ram_end;
      case 0x403:
        // Not sure, some kind of bitfield
        return unknown;
      case 0x5a1:
        // Brightness
        return brightness;
      case 0x202: {
        static bool warned = false;
        if (!warned) {
          printf("Warning: Display read not implemented!\n");
          printf("This message will not be repeated.\n");
          warned = true;
        }
        return 0x0000;
      }
      default:
        printf("Unimplemented read from display interface!\n");
        printf("Mode: 0x%04x\n", mode);
        printf("OC: 0x%08x\n", cpu.reg.PC - 4);
        // exit(1);
        return 0x0000;
    }
  }
}

void dispInterfaceWrite(u32 addr, u32 value, u32 size) {
  // printf("Write!\n");
  // TODO: Is this valid for things other than pixel data?
  if (size == 4) {
    dispInterfaceWrite(addr, (value & 0xFFFF0000) >> 16, 2);
    dispInterfaceWrite(addr, value & 0xFFFF, 2);
    return;
  }

  if (!(PRDR & 0x10)) {
    mode = value;
  } else {
    switch (mode) {
      case 0x002:
        drivingWaveControl = value;
        break;
      case 0x003:
        entryMode = value;
        break;
      case 0x00b:
        lowPowerControl = value;
        break;
      case 0x200:
        // ram_address_horizontal = value;
        // printf("ram_address_horizontal: %d\n", ram_address_horizontal);
        ram_address_vertical = value;
        break;
      case 0x201:
        // ram_address_vertical = value;
        // printf("ram_address_vertical: %d\n", ram_address_vertical);
        ram_address_horizontal = value;
        break;
      case 0x210:
        // horizontal_ram_start = value;
        // printf("hstart: %d\n", value);
        // printf("PC: %08x\n", cpu.reg.PC - 4);
        horizontal_ram_end = 395 - value;
        break;
      case 0x211:
        // horizontal_ram_end = value;
        // printf("hend: %d\n", value);
        horizontal_ram_start = 395 - value;
        break;
      case 0x212:
        // printf("vstart: %d\n", value);
        vertical_ram_start = value;
        break;
      case 0x213:
        // printf("vend: %d\n", value);
        vertical_ram_end = value;
        break;
      case 0x403:
        // Not sure, some kind of bitfield
        unknown = value;
        break;
      case 0x5a1:
        brightness = value;
        break;
      case 0x202:
        pixels[ram_address_vertical + vertical_ram_start][ram_address_horizontal + horizontal_ram_start] = value;
        // printf("Set to %04x\n", value);
        // printf("%d %d\n", ram_address_horizontal, ram_address_vertical);

        ram_address_horizontal++;
        if (ram_address_horizontal > (horizontal_ram_end - horizontal_ram_start)) {
          ram_address_horizontal = 0;
          ram_address_vertical++;
          if (ram_address_vertical > (vertical_ram_end - vertical_ram_start)) {
            ram_address_vertical = 0;
          }
        }
        
        // static int count = 1;
        // count += 1;
        // if ((ram_address_horizontal == (horizontal_ram_end - horizontal_ram_start) && ram_address_vertical == (vertical_ram_end - vertical_ram_start)) || (count % 2048) == 0) {
        //   // printf("Update!");
        // }
        break;
      default:
        printf("Unimplemented write to display interface!\n");
        printf("Mode: 0x%04x\n", mode);
        // exit(1);
    }
  }
}

void initDisplay(void) {
  memset(pixels, 0xff, 224 * 396 * 2);

  defineReg("Port R data", PRDR, 0xa405013c);
  // TODO: Do 1 byte writes work? Here they will
  // Also do reads, and writes of things that aren't pixel data, work too?
  // TODO: Make this work in a range
  defineRegCBUnsized("Display Interface", dispInterfaceRead, dispInterfaceWrite, 0xb4000000);
}

void updateDisplayFromFramebuffer(void) {
  updateDisplay(&pixels[0][0]);
}

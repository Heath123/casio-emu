#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#include "../../int.h"
#include "../../gui/gui.h"
#include "../hwRegisters.h"

u8 PRDR; // Port R data register
u16 mode;

// TODO: Good defaults
u16	ram_address_horizontal = 0; //  0x200
u16	ram_address_vertical = 0; // 0x201

u16 horizontal_ram_start = 0; // 0x210
u16 horizontal_ram_end = 0; // 0x211
u16 vertical_ram_start = 0; // 0x212
u16 vertical_ram_end = 0; // 0x213

u8 brightness = 255; // 0x5a1

// 2D array of pixels
u16 pixels[224][396] = {0};

// Set when the display is in the mode where it is receiving pixel data
// TODO: See if the fast path actually helps
bool displayFastPath = false;

void fastWrite(u32 value) {
  // TODO: We can make this even faster when the destination is contiguous
  pixels[ram_address_vertical][ram_address_horizontal] = value;

  ram_address_horizontal++;
  if (ram_address_horizontal > horizontal_ram_end) {
    ram_address_horizontal = horizontal_ram_start;
    ram_address_vertical++;
    if (ram_address_vertical > vertical_ram_end) {
      ram_address_vertical = vertical_ram_start;
    }
  }
  
  if (ram_address_horizontal == horizontal_ram_end && ram_address_vertical == vertical_ram_end) {
    updateDisplay(&pixels[0][0]);
  }
}

void expectSize(u32 size, u32 expected) {
  if (size != expected) {
    printf("Non-%d-byte read from display not implemented!\n", expected);
    exit(1);
  }
}

// // Handles memory-mapped I/O for the display
// // TODO: What is the correct behavior when the sizes don't match?
// bool readDisplay(u32 realAddress, u32* value, u32 size) {
//   // Round down to the nearest 4 bytes
//   // u32 address = realAddress & ~0x3;

//   // Check if it's a special address
//   switch (realAddress) {
//     case 0xa405013c:
//       // PRDR (Port R data register)
//       // TODO: Handle all these in a central place?
//       expectSize(size, 1);
//       *value = PRDR;
//       return true;
//     case 0xb4000000:
//       // Display interface
//       if (!(PRDR & 0x10)) {
//         // Mode select, or something
//         expectSize(size, 2);
//         *value = mode;
//         return true;
//       } else {
//         switch (mode) {
//           case 0x200:
//             // RAM address horizontal
//             expectSize(size, 2);
//             *value = ram_address_horizontal;
//             return true;
//           case 0x201:
//             // RAM address vertical
//             expectSize(size, 2);
//             *value = ram_address_vertical;
//             return true;
//           case 0x210:
//             // Horizontal RAM start
//             expectSize(size, 2);
//             *value = horizontal_ram_start;
//             return true;
//           case 0x211:
//             // Horizontal RAM end
//             expectSize(size, 2);
//             *value = horizontal_ram_end;
//             return true;
//           case 0x212:
//             // Vertical RAM start
//             expectSize(size, 2);
//             *value = vertical_ram_start;
//             return true;
//           case 0x213:
//             // Vertical RAM end
//             expectSize(size, 2);
//             *value = vertical_ram_end;
//             return true;
//           case 0x202: {
//             static bool warned = false;
//             if (!warned) {
//               printf("Warning: Display read not implemented!\n");
//               printf("This message will not be repeated.\n");
//               warned = true;
//             }
//             *value = 0x0000;
//             return true;
//           }
//           default:
//             printf("Unimplemented read from display interface!\n");
//             exit(1);
//         }
//       }
//   }

//   return false;
// }

// bool writeDisplay(u32 realAddress, u32 value, u32 size, u32 bitmask) {
//   // Round down to the nearest 4 bytes
//   // u32 address = realAddress & ~0x3;

//   // Check if it's a special address
//   switch (realAddress) {
//     case 0xa405013c:
//       // PRDR (Port R data register)
//       if (size != 1) {
//         // What is the correct behavior here?
//         printf("Non-byte write to PRDR not implemented!\n");
//         exit(1);
//       }
//       // printf("PRDR set to %02x\n", value);
//       PRDR = value;
//       if (value & 0x10 && mode == 0x202) {
//         // printf("Display fast path enabled!\n");
//         displayFastPath = true;
//       } else {
//         displayFastPath = false;
//       }
//       return true;
//     case 0xb4000000:
//       // Display interface
//       if (!(PRDR & 0x10)) {
//         // Mode select, or something
//         expectSize(size, 2);
//         // printf("Display mode set to %04x\n", value);
//         mode = value;
//         return true;
//       } else {
//         switch (mode) {
//           case 0x200:
//             // RAM address horizontal
//             expectSize(size, 2);
//             // printf("RAM address horizontal set to %04x\n", value);
//             ram_address_horizontal = value;
//             return true;
//           case 0x201:
//             // RAM address vertical
//             expectSize(size, 2);
//             // printf("RAM address vertical set to %04x\n", value);
//             ram_address_vertical = value;
//             return true;
//           case 0x210:
//             // Horizontal RAM start
//             expectSize(size, 2);
//             // printf("Horizontal RAM start set to %04x\n", value);
//             horizontal_ram_start = value;
//             return true;
//           case 0x211:
//             // Horizontal RAM end
//             expectSize(size, 2);
//             // printf("Horizontal RAM end set to %04x\n", value);
//             horizontal_ram_end = value;
//             return true;
//           case 0x212:
//             // Vertical RAM start
//             expectSize(size, 2);
//             // printf("Vertical RAM start set to %04x\n", value);
//             vertical_ram_start = value;
//             return true;
//           case 0x213:
//             // Vertical RAM end
//             expectSize(size, 2);
//             // printf("Vertical RAM end set to %04x\n", value);
//             vertical_ram_end = value;
//             return true;
//           case 0x202:
//             // if (size == 1) {
//             //   // What is the correct behavior here?
//             //   printf("Byte write to display not implemented!\n");
//             //   exit(1);
//             // }
//             expectSize(size, 2);
//             // Data write
//             // printf("Data write: %08x, size = %d\n", value, size);
//             // printf("ram_address_horizontal = %d\n", ram_address_horizontal);
//             // printf("ram_address_vertical = %d\n", ram_address_vertical);
//             // printf("horizontal_ram_start = %d\n", horizontal_ram_start);
//             // printf("horizontal_ram_end = %d\n", horizontal_ram_end);
//             // printf("vertical_ram_start = %d\n", vertical_ram_start);
//             // printf("vertical_ram_end = %d\n", vertical_ram_end);

//             pixels[ram_address_vertical][ram_address_horizontal] = value;

//             ram_address_horizontal++;
//             if (ram_address_horizontal > horizontal_ram_end) {
//               ram_address_horizontal = horizontal_ram_start;
//               ram_address_vertical++;
//               if (ram_address_vertical > vertical_ram_end) {
//                 ram_address_vertical = vertical_ram_start;
//               }
//             }
            
//             if (ram_address_horizontal == horizontal_ram_end && ram_address_vertical == vertical_ram_end) {
//               updateDisplay(&pixels[0][0]);
//             }
//             return true;
//           default:
//             printf("Unimplemented write to display interface!\n");
//             exit(1);
//         }
//       }
//   }

//   return false;
// }

u32 dispInterfaceRead(u32 addr, u32 size) {
  if (!(PRDR & 0x10)) {
    // Mode select, or something
    return mode;
  } else {
    switch (mode) {
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
        // exit(1);
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
      case 0x200:
        ram_address_horizontal = value;
        break;
      case 0x201:
        ram_address_vertical = value;
        break;
      case 0x210:
        // horizontal_ram_start = value;
        // printf("start: %d\n", value);
        horizontal_ram_end = 395 - value;
        break;
      case 0x211:
        // horizontal_ram_end = value;
        // printf("end: %d\n", value);
        horizontal_ram_start = 395 - value;
        break;
      case 0x212:
        vertical_ram_start = value;
        break;
      case 0x213:
        vertical_ram_end = value;
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
        
        static int count = 1;
        // count += 1;
        if ((ram_address_horizontal == (horizontal_ram_end - horizontal_ram_start) && ram_address_vertical == (vertical_ram_end - vertical_ram_start)) || (count % 2048) == 0) {
          // printf("Update!");
          updateDisplay(&pixels[0][0]);
        }
        break;
      default:
        printf("Unimplemented write to display interface!\n");
        exit(1);
    }
  }
}

void initDisplay() {
  defineReg("Port R data", PRDR, 0xa405013c);
  // TODO: Do 1 byte writes work? Here they will
  // Also do reads, and writes of things that aren't pixel data, work too?
  // TODO: Make this work in a range
  defineRegCBUnsized("Display Interface", dispInterfaceRead, dispInterfaceWrite, 0xb4000000);
}

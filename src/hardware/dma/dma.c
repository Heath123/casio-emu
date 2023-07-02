#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

#include "../hwRegisters.h"
#include "../../int.h"
#include "../../cpu.h"
#include "../../memory/memory.h"

extern CpuState cpu;

// Source addresses
u32 SAR[6] = {0};
// Destination addresses
u32 DAR[6] = {0};
// Count
u32 DMA_TCR[6] = {0};
// Control
u32 CHCR[6] = {0};

// Operation
// u16 DMAOR = 0;

struct DmaOperation {
  uint16_t CMS	:4;	/* Cycle steal Mode Select */
  uint16_t	:2;
  uint16_t PR	:2;	/* PRiority mode */
  uint16_t 	:5;
  uint16_t AE	:1;	/* Address Error flag */
  uint16_t NMIF	:1;	/* NMI Flag */
  uint16_t DME	:1;	/* DMA Master Enable */
};

/* dma_size_t - Transfer block size */
typedef enum {
	/* Normal transfers of 1, 2, 4, 8, 16 or 32 bytes at a time */
	DMA_1B = 0,
	DMA_2B = 1,
	DMA_4B = 2,
	DMA_8B = 7,
	DMA_16B = 3,
	DMA_32B = 4,

	/* Transfers of 16 or 32 bytes divided in two operations */
	DMA_16B_DIV = 11,
	DMA_32B_DIV = 12,

} dma_size_t;

u32 get_size(dma_size_t size) {
  switch (size) {
    case DMA_1B:
      return 1;
    case DMA_2B:
      return 2;
    case DMA_4B:
      return 4;
    case DMA_8B:
      return 8;
    case DMA_16B:
    case DMA_16B_DIV:
      return 16;
    case DMA_32B:
    case DMA_32B_DIV:
      return 32;
    default:
      return 0;
  }
}

union DmaOperationRegister {
  uint16_t value;
  struct DmaOperation bits;
};

struct CHCRBits {
  u32	:1;
  u32 LCKN	:1;	/* Bus Right Release Enable */
  u32	:2;
  u32 RPT	:3;	/* Repeat setting [0..3] */
  u32 DA	:1;	/* DREQ Asynchronous [0,1] */

  u32 DO	:1;	/* DMA Overrun  [0,1] */
  u32	:1;
  u32 TS_32	:2;	/* Transfer Size (upper half) */
  u32 HE	:1;	/* Half-End flag [0..3] */
  u32 HIE	:1;	/* Half-end Interrupt Enable [0..3] */
  u32 AM	:1;	/* Acknowledge mode [0,1] */
  u32 AL	:1;	/* Acknowledge level [0,1] */

  u32 DM	:2;	/* Destination address Mode */
  u32 SM	:2;	/* Source address Mode */
  u32 RS	:4;	/* Resource Select [0,1] */

  u32 DL	:1;	/* DREQ Level [0,1] */
  u32 DS	:1;	/* DREQ Source select[0,1] */
  u32 TB	:1;	/* Transfer Bus Mode */
  u32 TS_10	:2;	/* Transfer Size (lower half) */
  u32 IE	:1;	/* Interrupt Enable */
  u32 TE	:1;	/* Transfer End flag */
  u32 DE	:1;	/* DMA Enable */
};

// struct CHCRBits {
//   u32 DE	:1;	/* DMA Enable */
//   u32 TE	:1;	/* Transfer End flag */
//   u32 IE	:1;	/* Interrupt Enable */
//   u32 TS_10	:2;	/* Transfer Size (lower half) */
//   u32 TB	:1;	/* Transfer Bus Mode */
//   u32 DS	:1;	/* DREQ Source select[0,1] */
//   u32 DL	:1;	/* DREQ Level [0,1] */

//   u32 RS	:4;	/* Resource Select [0,1] */
//   u32 SM	:2;	/* Source address Mode */
//   u32 DM	:2;	/* Destination address Mode */

//   u32 AL	:1;	/* Acknowledge level [0,1] */
//   u32 AM	:1;	/* Acknowledge mode [0,1] */
//   u32 HIE	:1;	/* Half-end Interrupt Enable [0..3] */
//   u32 HE	:1;	/* Half-End flag [0..3] */
//   u32 TS_32	:2;	/* Transfer Size (upper half) */
//   u32	:1;
//   u32 DO	:1;	/* DMA Overrun  [0,1] */

//   u32 DA	:1;	/* DREQ Asynchronous [0,1] */
//   u32 RPT	:3;	/* Repeat setting [0..3] */
//   u32	:2;
//   u32 LCKN	:1;	/* Bus Right Release Enable */
//   u32	:1;
// };

// union chcrUnion {
//   u32 value;
//   struct CHCRBits bits;
// };

union DmaOperationRegister DMAOR = {0};

// u32 reverseBits(u32 num) {
//   u32 count = sizeof(num) * 8 - 1;
//   u32 reverse_num = num;

//   num >>= 1;
//   while (num) {
//     reverse_num <<= 1;
//     reverse_num |= num & 1;
//     num >>= 1;
//     count--;
//   }
//   reverse_num <<= count;
//   return reverse_num;
// }

int getCHCRChannel(u32 addr) {
  int channel = (addr - 0xfe008020) / 0x10;
  if (channel >= 5) return channel - 1;
  return channel;
}

// TODO: Make DMA transfers not instant and more accurate
void writeCHCR(u32 addr, u32 value) {
  // printf("CHCR at %08x: %08x\n", addr, value);
  int channel = getCHCRChannel(addr);
  // printf("Channel: %d\n", channel);
  u32 oldVal = CHCR[channel];

  // printf("DE: %d\n", value & 1);
  if ((value & 1) == 1 && (oldVal & 1) == 0) {
    // Start DMA
    // printf("Starting DMA\n");
    // printf("PC: %08x\n", cpu.reg.PC);
    // printf("SAR: %08x\n", SAR[channel]);
    // printf("DAR: %08x\n", DAR[channel]);

    u32 transfer_size = (((value & 0b00000000001100000000000000000000) >> 20) << 2) | (value & 0b00000000000000000000000000011000);
    transfer_size = get_size(transfer_size);
    if (transfer_size == 0) {
      printf("Invalid DMA transfer size");
      exit(1);
    }
    u32 blocks = DMA_TCR[channel];
    u32 size = transfer_size * blocks;
    printf("DMA: Copying %d bytes\n", size);

    u32 src = SAR[channel] | 0xa0000000;
    u32 dst = DAR[channel] | 0xa0000000;
    // printf("src: %08x\n", src);
    // printf("dst: %08x\n", dst);
    
    u32 real_transfer_size = (transfer_size > 4) ? 4 : transfer_size;

    u32 dst_addr_mode = (value & 0b00000000000000001100000000000000) >> 14;
    u32 src_addr_mode = (value & 0b00000000000000000011000000000000) >> 12;
    // printf("src_addr_mode: %08x\n", src_addr_mode);
    // printf("dst_addr_mode: %08x\n", dst_addr_mode);

    for (u32 i = 0; i < (blocks * transfer_size) / real_transfer_size; i++) {
      u32 val = readMemory(src, real_transfer_size);
      // printf("%08x: %08x\n", src, val);
      writeMemory(dst, real_transfer_size, val);

      // TODO: Handle the division transfer mode properly
      if (dst_addr_mode == 0b01) {
        dst += real_transfer_size;
      } else if (src_addr_mode == 0b10) {
        dst -= real_transfer_size;
      }

      if (src_addr_mode == 0b01) {
        src += real_transfer_size;
      } else if (src_addr_mode == 0b10) {
        src -= real_transfer_size;
      }
    }

    // TODO: What am I meant to do here?
    // Set TE (transfer ended)
    value |= 0b10;
    // Unset DE (DMA enable)
    value &= ~0b1;
  }
  CHCR[channel] = value;
}

u32 readCHCR(u32 addr) {
  return CHCR[getCHCRChannel(addr)];
}

void initDma() {
  // Loop over the 6 channels to add the registers
  for (int i = 0; i < 6; i++) {
    int newI = i;
    // There is a gap
    if (i >= 4) newI++;

    char *name = malloc(32);
    snprintf(name, 32, "DMA Source Address Register %d", i);
    defineReg(name, SAR[i], 0xfe008020 + (newI * 0x10));

    name = malloc(32);
    snprintf(name, 32, "DMA Destination Address Register %d", i);
    defineReg(name, DAR[i], 0xfe008024 + (newI * 0x10));

    name = malloc(32);
    snprintf(name, 32, "DMA Transfer Count Register %d", i);
    defineReg(name, DMA_TCR[i], 0xfe008028 + (newI * 0x10));

    name = malloc(32);
    snprintf(name, 32, "DMA Control Register %d", i);
    // defineReg(name, CHCR[i], 0xfe00802c + (newI * 0x10));
    defineRegCB(name, readCHCR, writeCHCR, 0xfe00802c + (newI * 0x10), 4);
  }

  defineReg("DMA Operation Register", DMAOR, 0xfe008060);
}

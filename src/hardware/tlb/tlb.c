#include <gint/mpu/mmu.h>
#include <stdio.h>
#include <stdlib.h>

#include "../../int.h"
#include "../hwRegisters.h"

/*
The UTLB address array is allocated to addresses H'F600 0000 to H'F60F FFFF in the P4 area. An
address array access requires a 32-bit address field specification (when reading or writing) and a
32-bit data field specification (when writing). Information for selecting the entry to be accessed is
specified in the address field, and VPN, D, V, and ASID to be written to the address array are
specified in the data field.
In the address field, bits [31:20] have the value H'F60 indicating the UTLB address array and the
entry is specified by bits [13:8]. Bit [7] that is the association bit (A bit) in the address field
specifies whether address comparison is performed in a write to the UTLB address array.
In the data field, bits [31:10] indicate VPN, bit [9] indicates D, bit [8] indicates V, and bits [7:0]
indicate ASID.

// utlb_addr_t - address part of a UTLB entry
typedef struct
{
	u32 VPN	:22;
	u32 D		:1;
	u32 V		:1;
	u32 ASID	:8;

} GPACKED(4) utlb_addr_t;

// utlb_data_t - data part of a UTLB entry
typedef struct
{
	u32	null1	:3;
	u32 PPN	:19;
	u32	null2	:1;
	u32 V		:1;
	u32 SZ1	:1;
	u32 PR		:2;
	u32 SZ2	:1;
	u32 C		:1;
	u32 D		:1;
	u32 SH		:1;
	u32 WT		:1;

} GPACKED(4) utlb_data_t;
*/

/*
// utlb_addr() - get the P4 address of a UTLB address entry
GINLINE const utlb_addr_t *utlb_addr(uint E)
{
	uint32_t addr = 0xf6000000 | ((E & 0x3f) << 8);
	return (void *)addr;
}

// utlb_data() - get the P4 address of a UTLB data entry
GINLINE const utlb_data_t *utlb_data(uint E)
{
	uint32_t addr = 0xf7000000 | ((E & 0x3f) << 8);
	return (void *)addr;
}
*/

#define empty_addr { .VPN = 0x00000000, .D = 0, .V = 0, .ASID = 0x0 }
// TODO: ASID?
#define addr(src) { .VPN = (src >> 10), .D = 1, .V = 1, .ASID = 0x0 }

#define empty_data { .PPN = 0x00000000, .V = 0, .SZ1 = 0, .SZ2 = 0, .PR = 0, .C = 0, .D = 0, .SH = 0, .WT = 0 }
#define data_entry(dst, sz) { .PPN = (dst >> 10), .V = 1, .SZ1 = sz >> 1, .SZ2 = sz & 1, .PR = 0b11, .C = 1, .D = 1, .SH = 0, .WT = 0 }

// #define _1K 0, 0
// #define _4K 0, 1
// #define _64K 1, 0
// #define _1M 1, 1

#define _1K 0b00
#define _4K 0b01
#define _64K 0b10
#define _1M 0b11

// Prefilled fake UTLB (64 entries)
utlb_addr_t addresses[64] = {
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,
  empty_addr, empty_addr, empty_addr, empty_addr, empty_addr,

  addr(0x08100000), addr(0x08110000), addr(0x08120000), addr(0x08130000),
  addr(0x08140000), addr(0x08150000), addr(0x08160000), addr(0x08170000),

  addr(0x00000000)
};

utlb_data_t datas[64] = {
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,
  empty_data, empty_data, empty_data, empty_data, empty_data,

  data_entry(0x0C160000, _64K), data_entry(0x0C170000, _64K), data_entry(0x0C180000, _64K), data_entry(0x0C190000, _64K),
  data_entry(0x0C1A0000, _64K), data_entry(0x0C1B0000, _64K), data_entry(0x0C1C0000, _64K), data_entry(0x0C1D0000, _64K),

  data_entry(0x00000000, _64K)
};

// Read-only fake UTLB
u32 utlbRead(u32 address) {
  // printf("UTLB read %08x\n", address);
  // Determine the entry
  u32 entry = (address >> 8) & 0x3f;
  // Determine whether it's an address or data entry
  if ((address & 0xFF000000) == 0xF7000000) {
    // Data entry
    // printf("UTLB read data entry %d\n", entry);
    utlb_data_t data = datas[entry];
    // Convert to a u32 using bit operations to avoid endianness issues
    u32 result = 0;
  
    // result |= data.null1 << 29;
    result |= data.PPN << 10;
    // result |= data.null2 << 9;
    result |= data.V << 8;
    result |= data.SZ1 << 7;
    result |= data.PR << 5;
    result |= data.SZ2 << 4;
    result |= data.C << 3;
    result |= data.D << 2;
    result |= data.SH << 1;
    result |= data.WT;

    // Endian swap
    // result = (result >> 24) | ((result >> 8) & 0xFF00) | ((result << 8) & 0xFF0000) | (result << 24);
    return result;
  } else {
    // Address entry
    // printf("UTLB read address entry %d\n", entry);
    utlb_addr_t addr = addresses[entry];
    // Convert to a u32 using bit operations to avoid endianness issues
    u32 result = 0;
    result |= addr.VPN << 10;
    result |= addr.D << 9;
    result |= addr.V << 8;
    result |= addr.ASID;
    // Endian swap
    // result = (result >> 24) | ((result >> 8) & 0xFF00) | ((result << 8) & 0xFF0000) | (result << 24);
    return result;
  }
  // exit(1);
}

void initTlb(void) {
  // TODO: Have this wrap around properly
  // defineRegArray("UTLB Address Array", addresses, 0xf6000000, 64, 0x100 - 4);
  // defineRegArray("UTLB Data Array", datas, 0xf7000000, 64, 0x100 - 4);
}

#ifndef TLB_H
#define TLB_H

#include "../../int.h"

// From gint
#define GPACKED(x)	__attribute__((packed, aligned(x)))

/* utlb_addr_t - address part of a UTLB entry */
typedef  __attribute__((scalar_storage_order("big-endian"))) struct
{
	u32 VPN	:22;
	u32 D		:1;
	u32 V		:1;
	u32 ASID	:8;

} GPACKED(4) utlb_addr_t;

/* utlb_data_t - data part of a UTLB entry */
typedef  __attribute__((scalar_storage_order("big-endian"))) struct
{
	u32		:3;
	u32 PPN	:19;
	u32		:1;
	u32 V		:1;
	u32 SZ1	:1;
	u32 PR		:2;
	u32 SZ2	:1;
	u32 C		:1;
	u32 D		:1;
	u32 SH		:1;
	u32 WT		:1;

} GPACKED(4) utlb_data_t;


void initTlb(void);
u32 utlbRead(u32 address);

#endif // TLB_H

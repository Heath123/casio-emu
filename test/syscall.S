.text

.global _locate
.global _Print
.global _GetKey

#define syscall_(id, syscall_table)	\
	mov.l	syscall_table, r2	;\
	mov.l	1f, r0			;\
	jmp	@r2			;\
	nop				;\
.align 4				;\
1:	.long	id

#define syscall(id) syscall_(id, syscall_table)

_locate:
  syscall(0x807)

_Print:
  syscall(0x808)

_GetKey:
	syscall(0x90F)

syscall_table:
	.long	0x80010070

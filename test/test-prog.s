	.file	"test-prog.c"
	.text
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	_print
	.data
	.align 2
	.type	_print, @object
	.size	_print, 4
_print:
	.long	-512
	.global	_printNum
	.align 2
	.type	_printNum, @object
	.size	_printNum, 4
_printNum:
	.long	-508
	.global	_putchar
	.align 2
	.type	_putchar, @object
	.size	_putchar, 4
_putchar:
	.long	-504
	.text
	.align 1
	.global	_reverse
	.type	_reverse, @function
_reverse:
.LFB0:
	.file 1 "test-prog.c"
	.loc 1 10 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	add	#-20,r15
	.cfi_def_cfa_offset 24
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-44,r1
	mov.l	r4,@(48,r1)
	mov	r14,r1
	add	#-44,r1
	mov.l	r5,@(44,r1)
	.loc 1 11 9
	mov	r14,r1
	add	#-44,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 12 9
	mov	r14,r1
	add	#-44,r1
	mov	r14,r2
	add	#-44,r2
	mov.l	@(44,r2),r2
	add	#-1,r2
	mov.l	r2,@(56,r1)
	.loc 1 13 11
	bra	.L2
	nop
	.align 1
.L3:
.LBB2:
	.loc 1 15 26
	mov	r14,r1
	add	#-44,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#-44,r2
	mov.l	@(48,r2),r2
	add	r1,r2
	.loc 1 15 14
	mov	r14,r1
	add	#4,r1
	mov.b	@r2,r2
	mov	r2,r0
	mov.b	r0,@(7,r1)
	.loc 1 16 29
	mov	r14,r1
	add	#-44,r1
	mov.l	@(56,r1),r1
	mov	r14,r2
	add	#-44,r2
	mov.l	@(48,r2),r2
	add	r1,r2
	.loc 1 16 14
	mov	r14,r1
	add	#-44,r1
	mov.l	@(60,r1),r1
	mov	r14,r3
	add	#-44,r3
	mov.l	@(48,r3),r3
	add	r3,r1
	.loc 1 16 24
	mov.b	@r2,r2
	.loc 1 16 22
	mov.b	r2,@r1
	.loc 1 17 14
	mov	r14,r1
	add	#-44,r1
	mov.l	@(56,r1),r1
	mov	r14,r2
	add	#-44,r2
	mov.l	@(48,r2),r2
	add	r2,r1
	.loc 1 17 20
	mov	r14,r2
	add	#4,r2
	mov.b	@(7,r2),r0
	mov	r0,r2
	mov.b	r2,@r1
	.loc 1 19 14
	mov	r14,r1
	add	#-44,r1
	mov	r14,r2
	add	#-44,r2
	mov.l	@(60,r2),r2
	add	#1,r2
	mov.l	r2,@(60,r1)
	.loc 1 20 12
	mov	r14,r1
	add	#-44,r1
	mov	r14,r2
	add	#-44,r2
	mov.l	@(56,r2),r2
	add	#-1,r2
	mov.l	r2,@(56,r1)
.L2:
.LBE2:
	.loc 1 13 18
	mov	r14,r2
	add	#-44,r2
	mov	r14,r1
	add	#-44,r1
	mov.l	@(60,r2),r2
	mov.l	@(56,r1),r1
	cmp/ge	r1,r2
	bf	.L3
	.loc 1 22 1
	nop
	nop
	add	#20,r14
	.cfi_def_cfa_offset 4
	mov	r14,r15
	.cfi_def_cfa_register 15
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
	.cfi_endproc
.LFE0:
	.size	_reverse, .-_reverse
	.align 1
	.global	_itoa
	.type	_itoa, @function
_itoa:
.LFB1:
	.loc 1 26 1
	.cfi_startproc
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -8
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -12
	add	#-24,r15
	.cfi_def_cfa_offset 36
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-40,r1
	mov.l	r4,@(48,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r5,@(44,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r6,@(40,r1)
	.loc 1 28 9
	mov	r14,r1
	add	#-40,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 29 10
	mov	r14,r1
	add	#8,r1
	mov	#0,r2
	mov	r2,r0
	mov.b	r0,@(11,r1)
	.loc 1 32 8
	mov	r14,r1
	add	#-40,r1
	mov.l	@(48,r1),r1
	tst	r1,r1
	bf	.L5
	.loc 1 34 14
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	mov	r1,r2
	.loc 1 34 12
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	add	r2,r1
	.loc 1 34 18
	mov	#48,r2
	mov.b	r2,@r1
	.loc 1 35 12
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov.l	@(44,r2),r2
	add	r2,r1
	.loc 1 35 16
	mov	#0,r2
	mov.b	r2,@r1
	.loc 1 36 16
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	bra	.L6
	nop
	.align 1
.L5:
	.loc 1 41 8
	mov	r14,r1
	add	#-40,r1
	mov.l	@(48,r1),r1
	cmp/pz	r1
	bt	.L17
	.loc 1 41 17 discriminator 1
	mov	r14,r1
	add	#-40,r1
	mov.l	@(40,r1),r2
	mov	#10,r1
	cmp/eq	r1,r2
	bf	.L8
	.loc 1 43 20
	mov	r14,r1
	add	#8,r1
	mov	#1,r2
	mov	r2,r0
	mov.b	r0,@(11,r1)
	.loc 1 44 13
	mov	r14,r1
	add	#-40,r1
	mov	r14,r2
	add	#-40,r2
	mov.l	@(48,r2),r2
	neg	r2,r2
	mov.l	r2,@(48,r1)
.L17:
	.loc 1 48 11
	bra	.L8
	nop
	.align 1
.L11:
.LBB3:
	.loc 1 50 13
	mov	r14,r8
	add	#-40,r8
	mov	r14,r1
	add	#-40,r1
	mov	r14,r7
	add	#-40,r7
	mov.l	@(48,r1),r6
	mov.l	.L14,r0
	mov	r6,r4
	mov.l	@(40,r7),r5
	jsr	@r0
	nop
	mov	r0,r5
	mov.l	@(40,r7),r1
	mul.l	r1,r5
	sts	macl,r2
	mov	r6,r1
	sub	r2,r1
	mov.l	r1,@(52,r8)
	.loc 1 51 18
	mov	r14,r1
	add	#-40,r1
	mov.l	@(52,r1),r2
	mov	#9,r1
	cmp/gt	r1,r2
	bf	.L9
	.loc 1 51 40 discriminator 1
	mov	r14,r1
	add	#-40,r1
	mov.l	@(52,r1),r1
	extu.b	r1,r1
	add	#87,r1
	extu.b	r1,r1
	.loc 1 51 18 discriminator 1
	exts.b	r1,r1
	bra	.L10
	nop
	.align 1
.L9:
	.loc 1 51 52 discriminator 2
	mov	r14,r1
	add	#-40,r1
	mov.l	@(52,r1),r1
	extu.b	r1,r1
	add	#48,r1
	extu.b	r1,r1
	.loc 1 51 18 discriminator 2
	exts.b	r1,r1
.L10:
	.loc 1 51 14 discriminator 4
	mov	r14,r2
	add	#-40,r2
	mov.l	@(60,r2),r2
	mov	r14,r3
	add	#-40,r3
	mov	r2,r7
	add	#1,r7
	mov.l	r7,@(60,r3)
	mov	r2,r3
	.loc 1 51 12 discriminator 4
	mov	r14,r2
	add	#-40,r2
	mov.l	@(44,r2),r2
	add	r3,r2
	.loc 1 51 18 discriminator 4
	mov.b	r1,@r2
	.loc 1 52 13 discriminator 4
	mov	r14,r7
	add	#-40,r7
	mov	r14,r2
	add	#-40,r2
	mov	r14,r1
	add	#-40,r1
	mov.l	.L14,r6
	mov.l	@(48,r2),r4
	mov.l	@(40,r1),r5
	jsr	@r6
	nop
	mov	r0,r6
	mov.l	r6,@(48,r7)
.L8:
.LBE3:
	.loc 1 48 16
	mov	r14,r1
	add	#-40,r1
	mov.l	@(48,r1),r1
	tst	r1,r1
	bf	.L11
	.loc 1 56 8
	mov	r14,r1
	add	#8,r1
	mov.b	@(11,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L12
	.loc 1 57 14
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	mov	r1,r2
	.loc 1 57 12
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	add	r2,r1
	.loc 1 57 18
	mov	#45,r2
	mov.b	r2,@r1
.L12:
	.loc 1 59 8
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov.l	@(44,r2),r2
	add	r2,r1
	.loc 1 59 12
	mov	#0,r2
	mov.b	r2,@r1
	.loc 1 62 5
	mov	r14,r2
	add	#-40,r2
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r2),r5
	mov.l	@(44,r1),r4
	mov.l	.L15,r1
	jsr	@r1
	nop
.LVL0:
	.loc 1 64 12
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
.L6:
	.loc 1 65 1
	mov	r1,r0
	add	#24,r14
	.cfi_def_cfa_offset 12
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 8
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 4
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 0
	rts	
	nop
.L16:
	.align 2
.L14:
	.long	___sdivsi3
.L15:
	.long	_reverse
	.cfi_endproc
.LFE1:
	.size	_itoa, .-_itoa
	.align 1
	.global	_fac
	.type	_fac, @function
_fac:
.LFB2:
	.loc 1 68 16
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-4,r15
	.cfi_def_cfa_offset 12
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-60,r1
	mov.l	r4,@(60,r1)
	.loc 1 69 6
	mov	r14,r1
	add	#-60,r1
	mov.l	@(60,r1),r1
	tst	r1,r1
	bf	.L19
	.loc 1 70 12
	mov	#1,r1
	bra	.L20
	nop
	.align 1
.L19:
	.loc 1 72 16
	mov	r14,r1
	add	#-60,r1
	mov.l	@(60,r1),r1
	add	#-1,r1
	mov	r1,r4
	mov.l	.L21,r1
	jsr	@r1
	nop
.LVL1:
	mov	r0,r1
	.loc 1 72 14
	mov	r14,r2
	add	#-60,r2
	mov.l	@(60,r2),r2
	mul.l	r2,r1
	sts	macl,r1
.L20:
	.loc 1 74 1
	mov	r1,r0
	add	#4,r14
	.cfi_def_cfa_offset 8
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 4
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
.L22:
	.align 2
.L21:
	.long	_fac
	.cfi_endproc
.LFE2:
	.size	_fac, .-_fac
	.global	_message
	.section	.rodata
	.align 2
.LC0:
	.string	"Hello, world!"
	.data
	.align 2
	.type	_message, @object
	.size	_message, 4
_message:
	.long	.LC0
	.text
	.align 1
	.global	_test
	.type	_test, @function
_test:
.LFB3:
	.loc 1 78 13
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r15,r14
	.cfi_def_cfa_register 14
	.loc 1 78 14
	nop
	mov	r14,r15
	.cfi_def_cfa_register 15
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
	.cfi_endproc
.LFE3:
	.size	_test, .-_test
	.align 1
	.global	_strlen
	.type	_strlen, @function
_strlen:
.LFB4:
	.loc 1 101 23
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	add	#-8,r15
	.cfi_def_cfa_offset 12
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-56,r1
	mov.l	r4,@(56,r1)
	.loc 1 102 7
	mov	r14,r1
	add	#-56,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 103 9
	bra	.L25
	nop
	.align 1
.L26:
	.loc 1 104 6
	mov	r14,r1
	add	#-56,r1
	mov	r14,r2
	add	#-56,r2
	mov.l	@(60,r2),r2
	add	#1,r2
	mov.l	r2,@(60,r1)
.L25:
	.loc 1 103 13
	mov	r14,r1
	add	#-56,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#-56,r2
	mov.l	@(56,r2),r2
	add	r2,r1
	mov.b	@r1,r1
	.loc 1 103 17
	tst	r1,r1
	bf	.L26
	.loc 1 106 10
	mov	r14,r1
	add	#-56,r1
	mov.l	@(60,r1),r1
	.loc 1 107 1
	mov	r1,r0
	add	#8,r14
	.cfi_def_cfa_offset 4
	mov	r14,r15
	.cfi_def_cfa_register 15
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
	.cfi_endproc
.LFE4:
	.size	_strlen, .-_strlen
	.align 1
	.global	_ret123
	.type	_ret123, @function
_ret123:
.LFB5:
	.loc 1 109 14
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	mov	r15,r14
	.cfi_def_cfa_register 14
	.loc 1 110 10
	mov	#123,r1
	.loc 1 111 1
	mov	r1,r0
	mov	r14,r15
	.cfi_def_cfa_register 15
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
	.cfi_endproc
.LFE5:
	.size	_ret123, .-_ret123
	.global	_HelloWorld
	.data
	.align 2
	.type	_HelloWorld, @object
	.size	_HelloWorld, 14
_HelloWorld:
	.string	"Hello, world!"
	.text
	.align 1
	.global	__putchar
	.type	__putchar, @function
__putchar:
.LFB6:
	.loc 1 115 31
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-4,r15
	.cfi_def_cfa_offset 12
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r4,r2
	mov	r14,r1
	add	#-12,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 116 3
	mov.l	.L31,r1
	mov.l	@r1,r1
	mov	r14,r2
	add	#-12,r2
	mov.b	@(12,r2),r0
	mov	r0,r2
	mov	r2,r4
	jsr	@r1
	nop
.LVL2:
	.loc 1 117 1
	nop
	add	#4,r14
	.cfi_def_cfa_offset 8
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 4
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
.L32:
	.align 2
.L31:
	.long	_putchar
	.cfi_endproc
.LFE6:
	.size	__putchar, .-__putchar
	.section	.rodata
	.align 2
.LC1:
	.string	"Hello, world!\n"
	.align 2
.LC2:
	.string	"Format: %d, %x, %s\n"
	.text
	.align 1
	.global	_main
	.type	_main, @function
_main:
.LFB7:
	.loc 1 119 16
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	mov	r15,r14
	.cfi_def_cfa_register 14
	.loc 1 120 3
	mov.l	.L35,r1
	mov	r1,r4
	mov.l	.L39,r1
	jsr	@r1
	nop
.LVL3:
	.loc 1 121 3
	mov.l	.L37,r2
	mov.l	.L38,r1
	mov	r2,r7
	mov	#123,r6
	mov	#123,r5
	mov	r1,r4
	mov.l	.L39,r1
	jsr	@r1
	nop
.LVL4:
	.loc 1 122 10
	mov	#123,r1
	.loc 1 173 1
	mov	r1,r0
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 4
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
.L40:
	.align 2
.L35:
	.long	.LC1
.L39:
	.long	_printf_
.L37:
	.long	.LC0
.L38:
	.long	.LC2
	.cfi_endproc
.LFE7:
	.size	_main, .-_main
.Letext0:
	.file 2 "printf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.ualong	0x2d2
	.uaword	0x5
	.byte	0x1
	.byte	0x4
	.ualong	.Ldebug_abbrev0
	.uleb128 0xc
	.ualong	.LASF20
	.byte	0x1d
	.ualong	.LASF21
	.ualong	.LASF22
	.ualong	.Ltext0
	.ualong	.Letext0-.Ltext0
	.ualong	.Ldebug_line0
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ualong	.LASF0
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ualong	.LASF1
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ualong	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.ualong	.LASF3
	.uleb128 0x8
	.ualong	0x54
	.uleb128 0x5
	.ualong	0x54
	.byte	0
	.uleb128 0x2
	.ualong	0x59
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ualong	.LASF4
	.uleb128 0xe
	.ualong	0x59
	.uleb128 0x3
	.ualong	.LASF5
	.byte	0x5
	.byte	0x8
	.ualong	0x76
	.uleb128 0x5
	.byte	0x3
	.ualong	_print
	.uleb128 0x2
	.ualong	0x49
	.uleb128 0x8
	.ualong	0x86
	.uleb128 0x5
	.ualong	0x26
	.byte	0
	.uleb128 0x3
	.ualong	.LASF6
	.byte	0x6
	.byte	0x8
	.ualong	0x97
	.uleb128 0x5
	.byte	0x3
	.ualong	_printNum
	.uleb128 0x2
	.ualong	0x7b
	.uleb128 0x8
	.ualong	0xa7
	.uleb128 0x5
	.ualong	0x59
	.byte	0
	.uleb128 0x3
	.ualong	.LASF7
	.byte	0x7
	.byte	0x8
	.ualong	0xb8
	.uleb128 0x5
	.byte	0x3
	.ualong	_putchar
	.uleb128 0x2
	.ualong	0x9c
	.uleb128 0x3
	.ualong	.LASF8
	.byte	0x4c
	.byte	0x7
	.ualong	0x54
	.uleb128 0x5
	.byte	0x3
	.ualong	_message
	.uleb128 0xf
	.ualong	0x59
	.ualong	0xde
	.uleb128 0x10
	.ualong	0x2d
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.ualong	.LASF9
	.byte	0x71
	.byte	0x6
	.ualong	0xce
	.uleb128 0x5
	.byte	0x3
	.ualong	_HelloWorld
	.uleb128 0x11
	.ualong	.LASF23
	.byte	0x2
	.byte	0x3d
	.byte	0x5
	.ualong	0x26
	.ualong	0x106
	.uleb128 0x5
	.ualong	0x106
	.uleb128 0x12
	.byte	0
	.uleb128 0x2
	.ualong	0x60
	.uleb128 0x9
	.ualong	.LASF10
	.byte	0x77
	.byte	0x5
	.ualong	0x26
	.ualong	.LFB7
	.ualong	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x137
	.uleb128 0x6
	.ualong	.LVL3
	.ualong	0xef
	.uleb128 0x6
	.ualong	.LVL4
	.ualong	0xef
	.byte	0
	.uleb128 0x13
	.ualong	.LASF24
	.byte	0x1
	.byte	0x73
	.byte	0x6
	.ualong	.LFB6
	.ualong	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x15c
	.uleb128 0xa
	.ualong	.LASF12
	.byte	0x73
	.byte	0x14
	.ualong	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.ualong	.LASF25
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.ualong	0x26
	.ualong	.LFB5
	.ualong	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.ualong	.LASF11
	.byte	0x65
	.byte	0x5
	.ualong	0x26
	.ualong	.LFB4
	.ualong	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x1a6
	.uleb128 0x4
	.string	"str"
	.byte	0x65
	.byte	0x12
	.ualong	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"i"
	.byte	0x66
	.byte	0x7
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x15
	.ualong	.LASF26
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.ualong	.LFB3
	.ualong	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.string	"fac"
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.ualong	0x26
	.ualong	.LFB2
	.ualong	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x1e8
	.uleb128 0x4
	.string	"n"
	.byte	0x44
	.byte	0xd
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.ualong	.LVL1
	.ualong	0x1b8
	.byte	0
	.uleb128 0x9
	.ualong	.LASF13
	.byte	0x19
	.byte	0x7
	.ualong	0x54
	.ualong	.LFB1
	.ualong	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x26b
	.uleb128 0x4
	.string	"num"
	.byte	0x19
	.byte	0x10
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.string	"str"
	.byte	0x19
	.byte	0x1b
	.ualong	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.ualong	.LASF14
	.byte	0x19
	.byte	0x24
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"i"
	.byte	0x1c
	.byte	0x9
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xb
	.ualong	.LASF15
	.byte	0x1d
	.byte	0xa
	.ualong	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.ualong	.LBB3
	.ualong	.LBE3-.LBB3
	.ualong	0x261
	.uleb128 0x7
	.string	"rem"
	.byte	0x32
	.byte	0xd
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.ualong	.LVL0
	.ualong	0x272
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.ualong	.LASF16
	.uleb128 0x18
	.ualong	.LASF27
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.ualong	.LFB0
	.ualong	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"str"
	.byte	0x9
	.byte	0x13
	.ualong	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.ualong	.LASF17
	.byte	0x9
	.byte	0x1e
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.ualong	.LASF18
	.byte	0xb
	.byte	0x9
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x7
	.string	"end"
	.byte	0xc
	.byte	0x9
	.ualong	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.ualong	.LBB2
	.ualong	.LBE2-.LBB2
	.uleb128 0xb
	.ualong	.LASF19
	.byte	0xf
	.byte	0xe
	.ualong	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.ualong	0x1c
	.uaword	0x2
	.ualong	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uaword	0
	.uaword	0
	.ualong	.Ltext0
	.ualong	.Letext0-.Ltext0
	.ualong	0
	.ualong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"long long int"
.LASF12:
	.string	"character"
.LASF7:
	.string	"putchar"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"message"
.LASF9:
	.string	"HelloWorld"
.LASF6:
	.string	"printNum"
.LASF25:
	.string	"ret123"
.LASF20:
	.string	"GNU C17 11.1.0 -m3 -mb -g -fno-pie -ffreestanding"
.LASF17:
	.string	"length"
.LASF5:
	.string	"print"
.LASF14:
	.string	"base"
.LASF24:
	.string	"_putchar"
.LASF19:
	.string	"temp"
.LASF27:
	.string	"reverse"
.LASF4:
	.string	"char"
.LASF23:
	.string	"printf_"
.LASF1:
	.string	"long int"
.LASF21:
	.string	"test-prog.c"
.LASF16:
	.string	"_Bool"
.LASF11:
	.string	"strlen"
.LASF15:
	.string	"isNegative"
.LASF26:
	.string	"test"
.LASF10:
	.string	"main"
.LASF3:
	.string	"long double"
.LASF22:
	.string	"/home/heath/calc-emu-2/test"
.LASF13:
	.string	"itoa"
.LASF18:
	.string	"start"
	.ident	"GCC: (GNU) 11.1.0"

	.file	"printf.c"
	.text
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align 1
	.type	__out_buffer, @function
__out_buffer:
.LFB0:
	.file 1 "printf.c"
	.loc 1 134 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	add	#-16,r15
	.cfi_def_cfa_offset 20
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r4,r2
	mov	r14,r1
	add	#-48,r1
	mov.l	r5,@(56,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r6,@(52,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r7,@(48,r1)
	mov	r14,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 135 6
	mov	r14,r2
	add	#-48,r2
	mov	r14,r1
	add	#-48,r1
	mov.l	@(52,r2),r2
	mov.l	@(48,r1),r1
	cmp/hs	r1,r2
	bt	.L3
	.loc 1 136 20
	mov	r14,r2
	add	#-48,r2
	mov	r14,r1
	add	#-48,r1
	mov.l	@(56,r2),r2
	mov.l	@(52,r1),r1
	add	r2,r1
	.loc 1 136 26
	mov	r14,r2
	mov.b	@(12,r2),r0
	mov	r0,r2
	mov.b	r2,@r1
.L3:
	.loc 1 138 1
	nop
	add	#16,r14
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
	.size	__out_buffer, .-__out_buffer
	.align 1
	.type	__out_null, @function
__out_null:
.LFB1:
	.loc 1 143 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	add	#-16,r15
	.cfi_def_cfa_offset 20
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r4,r2
	mov	r14,r1
	add	#-48,r1
	mov.l	r5,@(56,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r6,@(52,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r7,@(48,r1)
	mov	r14,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 145 1
	nop
	add	#16,r14
	.cfi_def_cfa_offset 4
	mov	r14,r15
	.cfi_def_cfa_register 15
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
	.cfi_endproc
.LFE1:
	.size	__out_null, .-__out_null
	.align 1
	.type	__out_char, @function
__out_char:
.LFB2:
	.loc 1 150 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-16,r15
	.cfi_def_cfa_offset 24
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r4,r2
	mov	r14,r1
	add	#-48,r1
	mov.l	r5,@(56,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r6,@(52,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r7,@(48,r1)
	mov	r14,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 152 6
	mov	r14,r1
	mov.b	@(12,r1),r0
	mov	r0,r1
	tst	r1,r1
	bt	.L7
	.loc 1 153 5
	mov	r14,r1
	mov.b	@(12,r1),r0
	mov	r0,r1
	mov	r1,r4
	mov.l	.L8,r1
	jsr	@r1
	nop
.LVL0:
.L7:
	.loc 1 155 1
	nop
	add	#16,r14
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
.L9:
	.align 2
.L8:
	.long	__putchar
	.cfi_endproc
.LFE2:
	.size	__out_char, .-__out_char
	.align 1
	.type	__out_fct, @function
__out_fct:
.LFB3:
	.loc 1 160 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-16,r15
	.cfi_def_cfa_offset 24
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r4,r2
	mov	r14,r1
	add	#-48,r1
	mov.l	r5,@(56,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r6,@(52,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r7,@(48,r1)
	mov	r14,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 162 6
	mov	r14,r1
	mov.b	@(12,r1),r0
	mov	r0,r1
	tst	r1,r1
	bt	.L12
	.loc 1 164 33
	mov	r14,r1
	add	#-48,r1
	mov.l	@(56,r1),r1
	mov.l	@r1,r1
	.loc 1 164 6
	mov	r14,r2
	mov.b	@(12,r2),r0
	mov	r0,r3
	mov	r14,r2
	add	#-48,r2
	mov.l	@(56,r2),r2
	mov.l	@(4,r2),r2
	mov	r2,r5
	mov	r3,r4
	jsr	@r1
	nop
.LVL1:
.L12:
	.loc 1 166 1
	nop
	add	#16,r14
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
	.cfi_endproc
.LFE3:
	.size	__out_fct, .-__out_fct
	.align 1
	.type	__strnlen_s, @function
__strnlen_s:
.LFB4:
	.loc 1 172 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	add	#-12,r15
	.cfi_def_cfa_offset 16
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-52,r1
	mov.l	r4,@(56,r1)
	mov	r14,r1
	add	#-52,r1
	mov.l	r5,@(52,r1)
	.loc 1 174 10
	mov	r14,r1
	add	#-52,r1
	mov	r14,r2
	add	#-52,r2
	mov.l	@(56,r2),r2
	mov.l	r2,@(60,r1)
	.loc 1 174 3
	bra	.L14
	nop
	.align 1
.L16:
	.loc 1 174 34 discriminator 4
	mov	r14,r1
	add	#-52,r1
	mov	r14,r2
	add	#-52,r2
	mov.l	@(60,r2),r2
	add	#1,r2
	mov.l	r2,@(60,r1)
.L14:
	.loc 1 174 17 discriminator 1
	mov	r14,r1
	add	#-52,r1
	mov.l	@(60,r1),r1
	mov.b	@r1,r1
	.loc 1 174 20 discriminator 1
	tst	r1,r1
	bt	.L15
	.loc 1 174 30 discriminator 3
	mov	r14,r1
	add	#-52,r1
	mov.l	@(52,r1),r1
	mov	r14,r2
	add	#-52,r2
	mov	r1,r3
	add	#-1,r3
	mov.l	r3,@(52,r2)
	.loc 1 174 20 discriminator 3
	tst	r1,r1
	bf	.L16
.L15:
	.loc 1 175 27
	mov	r14,r2
	add	#-52,r2
	mov	r14,r1
	add	#-52,r1
	mov.l	@(60,r2),r2
	mov.l	@(56,r1),r1
	sub	r1,r2
	.loc 1 175 10
	mov	r2,r1
	.loc 1 176 1
	mov	r1,r0
	add	#12,r14
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
	.size	__strnlen_s, .-__strnlen_s
	.align 1
	.type	__is_digit, @function
__is_digit:
.LFB5:
	.loc 1 182 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	add	#-4,r15
	.cfi_def_cfa_offset 8
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r4,r2
	mov	r14,r1
	add	#-12,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 183 22
	mov	r14,r1
	add	#-12,r1
	mov.b	@(12,r1),r0
	mov	r0,r2
	mov	#47,r1
	cmp/gt	r1,r2
	bf	.L19
	.loc 1 183 22 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#-12,r1
	mov.b	@(12,r1),r0
	mov	r0,r2
	mov	#57,r1
	cmp/gt	r1,r2
	bt	.L19
	.loc 1 183 22 discriminator 3
	mov	#1,r1
	bra	.L20
	nop
	.align 1
.L19:
	.loc 1 183 22 discriminator 4
	mov	#0,r1
.L20:
	.loc 1 183 22 discriminator 6
	mov	#1,r2
	and	r2,r1
	extu.b	r1,r1
	.loc 1 184 1 is_stmt 1 discriminator 6
	mov	r1,r0
	add	#4,r14
	.cfi_def_cfa_offset 4
	mov	r14,r15
	.cfi_def_cfa_register 15
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 0
	rts	
	nop
	.cfi_endproc
.LFE5:
	.size	__is_digit, .-__is_digit
	.align 1
	.type	__atoi, @function
__atoi:
.LFB6:
	.loc 1 189 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-8,r15
	.cfi_def_cfa_offset 16
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-56,r1
	mov.l	r4,@(56,r1)
	.loc 1 190 16
	mov	r14,r1
	add	#-56,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 191 9
	bra	.L23
	nop
	.align 1
.L24:
	.loc 1 192 11
	mov	r14,r1
	add	#-56,r1
	mov.l	@(60,r1),r2
	mov	r2,r1
	shll2	r1
	add	r2,r1
	add	r1,r1
	mov	r1,r7
	.loc 1 192 37
	mov	r14,r1
	add	#-56,r1
	mov.l	@(56,r1),r1
	mov.l	@r1,r1
	.loc 1 192 42
	mov	r1,r3
	add	#1,r3
	mov	r14,r2
	add	#-56,r2
	mov.l	@(56,r2),r2
	mov.l	r3,@r2
	.loc 1 192 34
	mov.b	@r1,r1
	.loc 1 192 17
	mov	r7,r2
	add	r1,r2
	.loc 1 192 7
	mov	r14,r1
	add	#-56,r1
	add	#-48,r2
	mov.l	r2,@(60,r1)
.L23:
	.loc 1 191 21
	mov	r14,r1
	add	#-56,r1
	mov.l	@(56,r1),r1
	mov.l	@r1,r1
	.loc 1 191 20
	mov.b	@r1,r1
	.loc 1 191 10
	mov	r1,r4
	mov.l	.L26,r1
	jsr	@r1
	nop
.LVL2:
	mov	r0,r1
	tst	r1,r1
	bf	.L24
	.loc 1 194 10
	mov	r14,r1
	add	#-56,r1
	mov.l	@(60,r1),r1
	.loc 1 195 1
	mov	r1,r0
	add	#8,r14
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
.L27:
	.align 2
.L26:
	.long	__is_digit
	.cfi_endproc
.LFE6:
	.size	__atoi, .-__atoi
	.align 1
	.type	__out_rev, @function
__out_rev:
.LFB7:
	.loc 1 200 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-24,r15
	.cfi_def_cfa_offset 32
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-40,r1
	mov.l	r4,@(52,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r5,@(48,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r6,@(44,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r7,@(40,r1)
	.loc 1 201 16
	mov	r14,r1
	add	#-40,r1
	mov	r14,r2
	add	#-40,r2
	mov.l	@(44,r2),r2
	mov.l	r2,@(56,r1)
	.loc 1 204 15
	mov.l	@(44,r14),r1
	mov	#2,r2
	and	r2,r1
	.loc 1 204 6
	tst	r1,r1
	bf	.L32
	.loc 1 204 40 discriminator 1
	mov.l	@(44,r14),r1
	mov	#1,r2
	and	r2,r1
	.loc 1 204 29 discriminator 1
	tst	r1,r1
	bf	.L32
.LBB2:
	.loc 1 205 17
	mov	r14,r1
	add	#-40,r1
	mov.l	@(36,r14),r2
	mov.l	r2,@(60,r1)
	.loc 1 205 5
	bra	.L30
	nop
	.align 1
.L31:
	.loc 1 206 7 discriminator 3
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-40,r7
	mov	r14,r3
	add	#-40,r3
	mov	r14,r2
	add	#-40,r2
	mov.l	@(52,r2),r2
	mov.l	@(40,r7),r7
	mov	r1,r6
	mov.l	@(48,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL3:
	.loc 1 205 38 discriminator 3
	mov	r14,r1
	add	#-40,r1
	mov	r14,r2
	add	#-40,r2
	mov.l	@(60,r2),r2
	add	#1,r2
	mov.l	r2,@(60,r1)
.L30:
	.loc 1 205 28 discriminator 1
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r1),r2
	mov.l	@(40,r14),r1
	cmp/hs	r1,r2
	bf	.L31
.LBE2:
	.loc 1 211 9
	bra	.L32
	nop
	.align 1
.L33:
	.loc 1 212 5
	mov.l	@(36,r14),r1
	add	#-1,r1
	mov.l	r1,@(36,r14)
	.loc 1 212 12
	mov.l	@(32,r14),r2
	mov.l	@(36,r14),r1
	add	r2,r1
	mov.b	@r1,r1
	.loc 1 212 5
	mov	r1,r4
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-40,r7
	mov	r14,r3
	add	#-40,r3
	mov	r14,r2
	add	#-40,r2
	mov.l	@(52,r2),r2
	mov.l	@(40,r7),r7
	mov	r1,r6
	mov.l	@(48,r3),r5
	jsr	@r2
	nop
.LVL4:
.L32:
	.loc 1 211 10
	mov.l	@(36,r14),r1
	tst	r1,r1
	bf	.L33
	.loc 1 216 13
	mov.l	@(44,r14),r1
	mov	#2,r2
	and	r2,r1
	.loc 1 216 6
	tst	r1,r1
	bt	.L34
	.loc 1 217 11
	bra	.L35
	nop
	.align 1
.L36:
	.loc 1 218 7
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#-40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-40,r7
	mov	r14,r3
	add	#-40,r3
	mov	r14,r2
	add	#-40,r2
	mov.l	@(52,r2),r2
	mov.l	@(40,r7),r7
	mov	r1,r6
	mov.l	@(48,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL5:
.L35:
	.loc 1 217 16
	mov	r14,r1
	add	#-40,r1
	mov	r14,r2
	add	#-40,r2
	mov.l	@(44,r1),r1
	mov.l	@(56,r2),r2
	sub	r2,r1
	.loc 1 217 28
	mov.l	@(40,r14),r2
	cmp/hi	r1,r2
	bt	.L36
.L34:
	.loc 1 222 10
	mov	r14,r1
	add	#-40,r1
	mov.l	@(44,r1),r1
	.loc 1 223 1
	mov	r1,r0
	add	#24,r14
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
	.cfi_endproc
.LFE7:
	.size	__out_rev, .-__out_rev
	.align 1
	.type	__ntoa_format, @function
__ntoa_format:
.LFB8:
	.loc 1 228 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-36,r15
	.cfi_def_cfa_offset 44
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-28,r1
	mov.l	r4,@(60,r1)
	mov	r14,r1
	add	#-28,r1
	mov.l	r5,@(56,r1)
	mov	r14,r1
	add	#-28,r1
	mov.l	r6,@(52,r1)
	mov	r14,r1
	add	#-28,r1
	mov.l	r7,@(48,r1)
	mov.l	@(52,r14),r2
	mov	r14,r1
	add	#4,r1
	mov	r2,r0
	mov.b	r0,@(12,r1)
	.loc 1 230 15
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r2),r1
	mov	#2,r3
	and	r3,r1
	.loc 1 230 6
	tst	r1,r1
	bt	.L63
	bra	.L39
	nop
.L63:
	.loc 1 231 8
	mov	r14,r5
	add	#64,r5
	mov.l	@(0,r5),r1
	tst	r1,r1
	bt	.L42
	.loc 1 231 25 discriminator 1
	mov	r14,r0
	add	#64,r0
	mov.l	@(4,r0),r1
	mov	#1,r2
	and	r2,r1
	.loc 1 231 15 discriminator 1
	tst	r1,r1
	bt	.L42
	.loc 1 231 42 discriminator 2
	mov	r14,r1
	add	#4,r1
	mov.b	@(12,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bf	.L41
	.loc 1 231 65 discriminator 3
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r2),r1
	mov	#12,r3
	and	r3,r1
	.loc 1 231 55 discriminator 3
	tst	r1,r1
	bt	.L42
.L41:
	.loc 1 232 12
	mov	r14,r5
	add	#64,r5
	mov.l	@(0,r5),r1
	add	#-1,r1
	mov	r14,r0
	add	#64,r0
	mov.l	r1,@(0,r0)
	.loc 1 234 11
	bra	.L42
	nop
	.align 1
.L44:
	.loc 1 235 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 235 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 235 18
	mov	#48,r2
	mov.b	r2,@r1
.L42:
	.loc 1 234 25
	mov.l	@(48,r14),r2
	mov.l	@(60,r14),r1
	cmp/hs	r1,r2
	bt	.L45
	.loc 1 234 25 is_stmt 0 discriminator 1
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L44
	.loc 1 237 11 is_stmt 1
	bra	.L45
	nop
	.align 1
.L46:
	.loc 1 238 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 238 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 238 18
	mov	#48,r2
	mov.b	r2,@r1
.L45:
	.loc 1 237 19
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r2),r1
	mov	#1,r3
	and	r3,r1
	.loc 1 237 53
	tst	r1,r1
	bt	.L39
	.loc 1 237 36 discriminator 1
	mov.l	@(48,r14),r2
	mov	r14,r5
	add	#64,r5
	mov.l	@(0,r5),r1
	cmp/hs	r1,r2
	bt	.L39
	.loc 1 237 53 discriminator 2
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L46
.L39:
	.loc 1 243 13
	mov	r14,r0
	add	#64,r0
	mov.l	@(4,r0),r1
	mov	#16,r2
	and	r2,r1
	.loc 1 243 6
	tst	r1,r1
	bf	.L62
	bra	.L47
	nop
.L62:
	.loc 1 244 17
	mov	r14,r3
	add	#64,r3
	mov.l	@(4,r3),r2
	mov.w	.L57,r1
	and	r2,r1
	.loc 1 244 8
	tst	r1,r1
	bf	.L48
	.loc 1 244 36 discriminator 1
	mov.l	@(48,r14),r1
	tst	r1,r1
	bt	.L48
	.loc 1 244 43 discriminator 2
	mov.l	@(48,r14),r2
	mov.l	@(60,r14),r1
	cmp/eq	r1,r2
	bt	.L49
	.loc 1 244 61 discriminator 3
	mov.l	@(48,r14),r2
	mov	r14,r5
	add	#64,r5
	mov.l	@(0,r5),r1
	cmp/eq	r1,r2
	bf	.L48
.L49:
	.loc 1 245 10
	mov.l	@(48,r14),r1
	add	#-1,r1
	mov.l	r1,@(48,r14)
	.loc 1 246 10
	mov.l	@(48,r14),r1
	tst	r1,r1
	bt	.L48
	.loc 1 246 15 discriminator 1
	mov.l	@(56,r14),r2
	mov	#16,r1
	cmp/eq	r1,r2
	bf	.L48
	.loc 1 247 12
	mov.l	@(48,r14),r1
	add	#-1,r1
	mov.l	r1,@(48,r14)
.L48:
	.loc 1 250 8
	mov.l	@(56,r14),r2
	mov	#16,r1
	cmp/eq	r1,r2
	bf	.L50
	.loc 1 250 34 discriminator 1
	mov	r14,r0
	add	#64,r0
	mov.l	@(4,r0),r1
	mov	#32,r2
	and	r2,r1
	.loc 1 250 23 discriminator 1
	tst	r1,r1
	bf	.L50
	.loc 1 250 53 discriminator 2
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L50
	.loc 1 251 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 251 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 251 18
	mov	#120,r2
	mov.b	r2,@r1
	bra	.L51
	nop
	.align 1
.L50:
	.loc 1 253 13
	mov.l	@(56,r14),r2
	mov	#16,r1
	cmp/eq	r1,r2
	bf	.L52
	.loc 1 253 38 discriminator 1
	mov	r14,r3
	add	#64,r3
	mov.l	@(4,r3),r1
	mov	#32,r5
	and	r5,r1
	.loc 1 253 28 discriminator 1
	tst	r1,r1
	bt	.L52
	.loc 1 253 57 discriminator 2
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L52
	.loc 1 254 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 254 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 254 18
	mov	#88,r2
	mov.b	r2,@r1
	bra	.L51
	nop
	.align 1
.L57:
	.short	1024
	.align 1
.L52:
	.loc 1 256 13
	mov.l	@(56,r14),r2
	mov	#2,r1
	cmp/eq	r1,r2
	bf	.L51
	.loc 1 256 27 discriminator 1
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L51
	.loc 1 257 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 257 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 257 18
	mov	#98,r2
	mov.b	r2,@r1
.L51:
	.loc 1 259 8
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L47
	.loc 1 260 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 260 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 260 18
	mov	#48,r2
	mov.b	r2,@r1
.L47:
	.loc 1 264 6
	mov.l	@(48,r14),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L53
	.loc 1 265 8
	mov	r14,r1
	add	#4,r1
	mov.b	@(12,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L54
	.loc 1 266 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 266 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 266 18
	mov	#45,r2
	mov.b	r2,@r1
	bra	.L53
	nop
	.align 1
.L54:
	.loc 1 268 20
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r2),r1
	mov	#4,r3
	and	r3,r1
	.loc 1 268 13
	tst	r1,r1
	bt	.L55
	.loc 1 269 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 269 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 269 18
	mov	#43,r2
	mov.b	r2,@r1
	bra	.L53
	nop
	.align 1
.L55:
	.loc 1 271 20
	mov	r14,r5
	add	#64,r5
	mov.l	@(4,r5),r1
	mov	#8,r0
	and	r0,r1
	.loc 1 271 13
	tst	r1,r1
	bt	.L53
	.loc 1 272 14
	mov.l	@(48,r14),r1
	mov	r1,r2
	add	#1,r2
	mov.l	r2,@(48,r14)
	.loc 1 272 10
	mov.l	@(44,r14),r2
	add	r2,r1
	.loc 1 272 18
	mov	#32,r2
	mov.b	r2,@r1
.L53:
	.loc 1 276 10
	mov	r14,r7
	add	#-28,r7
	mov	r14,r3
	add	#-28,r3
	mov	r14,r2
	add	#-28,r2
	mov	r14,r1
	add	#-28,r1
	mov	r14,r5
	add	#64,r5
	mov.l	@(4,r5),r6
	mov.l	r6,@(12,r15)
	mov	r14,r0
	add	#64,r0
	mov.l	@(0,r0),r6
	mov.l	r6,@(8,r15)
	mov.l	@(48,r14),r6
	mov.l	r6,@(4,r15)
	mov.l	@(44,r14),r6
	mov.l	r6,@r15
	mov.l	@(48,r7),r7
	mov.l	@(52,r3),r6
	mov.l	@(56,r2),r5
	mov.l	@(60,r1),r4
	mov.l	.L58,r1
	jsr	@r1
	nop
.LVL6:
	mov	r0,r1
	.loc 1 277 1
	mov	r1,r0
	add	#36,r14
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
.L59:
	.align 2
.L58:
	.long	__out_rev
	.cfi_endproc
.LFE8:
	.size	__ntoa_format, .-__ntoa_format
	.align 1
	.type	__ntoa_long, @function
__ntoa_long:
.LFB9:
	.loc 1 282 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-88,r15
	.cfi_def_cfa_offset 96
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#24,r1
	mov.l	r4,@(20,r1)
	mov	r14,r1
	add	#24,r1
	mov.l	r5,@(16,r1)
	mov	r14,r1
	add	#24,r1
	mov.l	r6,@(12,r1)
	mov	r14,r1
	add	#24,r1
	mov.l	r7,@(8,r1)
	mov	r14,r0
	add	#64,r0
	mov.l	@(36,r0),r2
	mov	r14,r1
	add	#24,r1
	mov	r2,r0
	mov.b	r0,@(4,r1)
	.loc 1 284 10
	mov	r14,r1
	add	#24,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 287 6
	mov	r14,r2
	add	#64,r2
	mov.l	@(32,r2),r1
	tst	r1,r1
	bf	.L65
	.loc 1 288 11
	mov	r14,r4
	add	#64,r4
	mov.l	@(52,r4),r2
	mov	#-17,r1
	and	r2,r1
	mov	r14,r7
	add	#64,r7
	mov.l	r1,@(52,r7)
.L65:
	.loc 1 292 15
	mov	r14,r0
	add	#64,r0
	mov.l	@(52,r0),r2
	mov.w	.L74,r1
	and	r2,r1
	.loc 1 292 6
	tst	r1,r1
	bt	.L72
	.loc 1 292 34 discriminator 1
	mov	r14,r2
	add	#64,r2
	mov.l	@(32,r2),r1
	tst	r1,r1
	bf	.L80
	bra	.L67
	nop
.L80:
.L72:
.LBB3:
	.loc 1 294 39
	mov	r14,r4
	add	#64,r4
	mov.l	@(32,r4),r2
	mov.l	.L76,r3
	mov	r2,r4
	mov	r14,r7
	add	#64,r7
	mov.l	@(40,r7),r5
	jsr	@r3
	nop
	mov	r0,r3
	mov	r14,r4
	add	#64,r4
	mov.l	@(40,r4),r1
	mul.l	r1,r3
	sts	macl,r1
	sub	r1,r2
	.loc 1 294 18
	mov	r14,r1
	add	#72,r1
	mov	r2,r0
	mov.b	r0,@(11,r1)
	.loc 1 295 18
	mov	r14,r1
	add	#72,r1
	mov.b	@(11,r1),r0
	mov	r0,r2
	mov	#9,r1
	cmp/gt	r1,r2
	bt	.L68
	.loc 1 295 37 discriminator 1
	mov	r14,r1
	add	#72,r1
	mov.b	@(11,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	add	#48,r1
	extu.b	r1,r1
	.loc 1 295 18 discriminator 1
	exts.b	r1,r2
	bra	.L69
	nop
	.align 1
.L68:
	.loc 1 295 54 discriminator 2
	mov	r14,r2
	add	#64,r2
	mov.l	@(52,r2),r1
	mov	#32,r4
	and	r4,r1
	.loc 1 295 85 discriminator 2
	tst	r1,r1
	bt	.L70
	.loc 1 295 85 is_stmt 0 discriminator 4
	mov	#65,r1
	bra	.L71
	nop
	.align 1
.L70:
	.loc 1 295 85 discriminator 5
	mov	#97,r1
.L71:
	.loc 1 295 85 discriminator 7
	mov	r14,r2
	add	#72,r2
	mov.b	@(11,r2),r0
	mov	r0,r2
	extu.b	r2,r2
	add	r2,r1
	extu.b	r1,r1
	.loc 1 295 93 is_stmt 1 discriminator 7
	add	#-10,r1
	extu.b	r1,r1
	.loc 1 295 18 discriminator 7
	exts.b	r1,r2
.L69:
	.loc 1 295 14 discriminator 8
	mov	r14,r1
	add	#24,r1
	mov.l	@(60,r1),r1
	mov	r14,r3
	add	#24,r3
	mov	r1,r7
	add	#1,r7
	mov.l	r7,@(60,r3)
	.loc 1 295 18 discriminator 8
	mov	r14,r3
	add	#48,r3
	mov	r1,r0
	mov.b	r2,@(r0,r3)
	.loc 1 296 13 discriminator 8
	mov.l	.L76,r2
	mov	r14,r1
	add	#64,r1
	mov.l	@(32,r1),r4
	mov	r14,r7
	add	#64,r7
	mov.l	@(40,r7),r5
	jsr	@r2
	nop
	mov	r0,r2
	mov	r14,r1
	add	#64,r1
	mov.l	r2,@(32,r1)
.LBE3:
	.loc 1 297 20 discriminator 8
	mov	r14,r2
	add	#64,r2
	mov.l	@(32,r2),r1
	tst	r1,r1
	bt	.L67
	.loc 1 297 20 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#24,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L72
.L67:
	.loc 1 300 10 is_stmt 1
	mov	r14,r1
	add	#24,r1
	mov.b	@(4,r1),r0
	mov	r0,r1
	extu.b	r1,r6
	mov	r14,r7
	add	#24,r7
	mov	r14,r3
	add	#24,r3
	mov	r14,r2
	add	#24,r2
	mov	r14,r1
	add	#24,r1
	mov	r14,r4
	add	#64,r4
	mov.l	@(52,r4),r5
	mov.l	r5,@(24,r15)
	mov	r14,r0
	add	#64,r0
	mov.l	@(48,r0),r5
	mov.l	r5,@(20,r15)
	mov	r14,r4
	add	#64,r4
	mov.l	@(44,r4),r5
	mov.l	r5,@(16,r15)
	mov	r14,r0
	add	#64,r0
	mov.l	@(40,r0),r5
	mov.l	r5,@(12,r15)
	mov.l	r6,@(8,r15)
	mov	r14,r6
	add	#24,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(4,r15)
	mov	r14,r6
	add	#48,r6
	mov.l	r6,@r15
	mov.l	@(8,r7),r7
	mov.l	@(12,r3),r6
	mov.l	@(16,r2),r5
	mov.l	@(20,r1),r4
	mov.l	.L77,r1
	jsr	@r1
	nop
.LVL7:
	mov	r0,r1
	.loc 1 301 1
	mov	r1,r0
	add	#88,r14
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
	.align 1
.L74:
	.short	1024
.L78:
	.align 2
.L76:
	.long	___udivsi3
.L77:
	.long	__ntoa_format
	.cfi_endproc
.LFE9:
	.size	__ntoa_long, .-__ntoa_long
	.global	___umoddi3
	.global	___udivdi3
	.align 1
	.type	__ntoa_long_long, @function
__ntoa_long_long:
.LFB10:
	.loc 1 307 1
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
	add	#-88,r15
	.cfi_def_cfa_offset 100
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#24,r1
	mov.l	r4,@(20,r1)
	mov	r14,r1
	add	#24,r1
	mov.l	r5,@(16,r1)
	mov	r14,r1
	add	#24,r1
	mov.l	r6,@(12,r1)
	mov	r14,r1
	add	#24,r1
	mov.l	r7,@(8,r1)
	mov	r14,r0
	add	#64,r0
	mov.l	@(44,r0),r2
	mov	r14,r1
	add	#24,r1
	mov	r2,r0
	mov.b	r0,@(4,r1)
	.loc 1 309 10
	mov	r14,r1
	add	#24,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 312 6
	mov	r14,r1
	add	#68,r1
	mov.l	@(32,r1),r2
	mov.l	@(36,r1),r3
	mov	r2,r1
	tst	r1,r1
	bf	.L82
	mov	r3,r1
	tst	r1,r1
	bf	.L82
	.loc 1 313 11
	mov	r14,r5
	add	#124,r5
	mov.l	@(4,r5),r2
	mov	#-17,r1
	and	r2,r1
	mov	r14,r8
	add	#124,r8
	mov.l	r1,@(4,r8)
.L82:
	.loc 1 317 15
	mov	r14,r0
	add	#124,r0
	mov.l	@(4,r0),r2
	mov.w	.L94,r1
	and	r2,r1
	.loc 1 317 6
	tst	r1,r1
	bt	.L91
	.loc 1 317 34 discriminator 1
	mov	r14,r1
	add	#68,r1
	mov.l	@(32,r1),r2
	mov.l	@(36,r1),r3
	mov	r2,r1
	tst	r1,r1
	bf	.L91
	mov	r3,r1
	tst	r1,r1
	bf	.L101
	bra	.L84
	nop
.L101:
.L91:
.LBB4:
	.loc 1 319 39
	mov	r14,r5
	add	#68,r5
	mov.l	@(32,r5),r2
	mov.l	@(36,r5),r3
	mov.l	.L95,r1
	mov	r14,r8
	add	#64,r8
	mov.l	@(48,r8),r6
	mov.l	@(52,r8),r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL8:
	mov	r0,r2
	mov	r1,r3
	.loc 1 319 18
	mov	r14,r1
	add	#72,r1
	mov	r3,r0
	mov.b	r0,@(11,r1)
	.loc 1 320 18
	mov	r14,r1
	add	#72,r1
	mov.b	@(11,r1),r0
	mov	r0,r2
	mov	#9,r1
	cmp/gt	r1,r2
	bt	.L86
	.loc 1 320 37 discriminator 1
	mov	r14,r1
	add	#72,r1
	mov.b	@(11,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	add	#48,r1
	extu.b	r1,r1
	.loc 1 320 18 discriminator 1
	exts.b	r1,r2
	bra	.L87
	nop
	.align 1
.L86:
	.loc 1 320 54 discriminator 2
	mov	r14,r2
	add	#124,r2
	mov.l	@(4,r2),r1
	mov	#32,r5
	and	r5,r1
	.loc 1 320 85 discriminator 2
	tst	r1,r1
	bt	.L88
	.loc 1 320 85 is_stmt 0 discriminator 4
	mov	#65,r1
	bra	.L89
	nop
	.align 1
.L94:
	.short	1024
.L96:
	.align 2
.L95:
	.long	___umoddi3
	.align 1
.L88:
	.loc 1 320 85 discriminator 5
	mov	#97,r1
.L89:
	.loc 1 320 85 discriminator 7
	mov	r14,r2
	add	#72,r2
	mov.b	@(11,r2),r0
	mov	r0,r2
	extu.b	r2,r2
	add	r2,r1
	extu.b	r1,r1
	.loc 1 320 93 is_stmt 1 discriminator 7
	add	#-10,r1
	extu.b	r1,r1
	.loc 1 320 18 discriminator 7
	exts.b	r1,r2
.L87:
	.loc 1 320 14 discriminator 8
	mov	r14,r1
	add	#24,r1
	mov.l	@(60,r1),r1
	mov	r14,r3
	add	#24,r3
	mov	r1,r7
	add	#1,r7
	mov.l	r7,@(60,r3)
	.loc 1 320 18 discriminator 8
	mov	r14,r3
	add	#48,r3
	mov	r1,r0
	mov.b	r2,@(r0,r3)
	.loc 1 321 13 discriminator 8
	mov.l	.L97,r1
	mov	r14,r2
	add	#64,r2
	mov.l	@(48,r2),r6
	mov.l	@(52,r2),r7
	mov	r14,r8
	add	#68,r8
	mov.l	@(32,r8),r4
	mov.l	@(36,r8),r5
	jsr	@r1
	nop
.LVL9:
	mov	r0,r2
	mov	r1,r3
	mov	r14,r0
	add	#68,r0
	mov.l	r2,@(32,r0)
	mov.l	r3,@(36,r0)
.LBE4:
	.loc 1 322 20 discriminator 8
	mov	r14,r1
	add	#68,r1
	mov.l	@(32,r1),r2
	mov.l	@(36,r1),r3
	mov	r2,r1
	tst	r1,r1
	bf	.L93
	mov	r3,r1
	tst	r1,r1
	bt	.L84
.L93:
	.loc 1 322 20 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#24,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L91
.L84:
	.loc 1 325 10 is_stmt 1
	mov	r14,r1
	add	#24,r1
	mov.b	@(4,r1),r0
	mov	r0,r1
	extu.b	r1,r6
	mov	r14,r1
	add	#64,r1
	mov.l	@(52,r1),r5
	mov	r14,r7
	add	#24,r7
	mov	r14,r3
	add	#24,r3
	mov	r14,r2
	add	#24,r2
	mov	r14,r1
	add	#24,r1
	mov	r14,r8
	add	#124,r8
	mov.l	@(4,r8),r4
	mov.l	r4,@(24,r15)
	mov	r14,r0
	add	#64,r0
	mov.l	@(60,r0),r4
	mov.l	r4,@(20,r15)
	mov	r14,r8
	add	#64,r8
	mov.l	@(56,r8),r4
	mov.l	r4,@(16,r15)
	mov.l	r5,@(12,r15)
	mov.l	r6,@(8,r15)
	mov	r14,r6
	add	#24,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(4,r15)
	mov	r14,r6
	add	#48,r6
	mov.l	r6,@r15
	mov.l	@(8,r7),r7
	mov.l	@(12,r3),r6
	mov.l	@(16,r2),r5
	mov.l	@(20,r1),r4
	mov.l	.L98,r1
	jsr	@r1
	nop
.LVL10:
	mov	r0,r1
	.loc 1 326 1
	mov	r1,r0
	add	#88,r14
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
.L99:
	.align 2
.L97:
	.long	___udivdi3
.L98:
	.long	__ntoa_format
	.cfi_endproc
.LFE10:
	.size	__ntoa_long_long, .-__ntoa_long_long
	.global	___nedf2
	.section	.rodata
	.align 2
.LC0:
	.string	"nan"
	.global	___ltdf2
	.align 2
.LC1:
	.string	"fni-"
	.global	___gtdf2
	.align 2
.LC2:
	.string	"fni+"
	.align 2
.LC3:
	.string	"fni"
	.global	___subdf3
	.global	___fixdfsi
	.global	___floatsidf
	.global	___muldf3
	.global	___fixunsdfsi
	.global	___floatunsidf
	.global	___gedf2
	.text
	.align 1
	.type	__ftoa, @function
__ftoa:
.LFB11:
	.loc 1 340 1
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
	add	#-104,r15
	.cfi_def_cfa_offset 116
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-24,r1
	mov.l	r4,@(56,r1)
	mov	r14,r1
	add	#-24,r1
	mov.l	r5,@(52,r1)
	mov	r14,r1
	add	#-24,r1
	mov.l	r6,@(48,r1)
	mov	r14,r1
	add	#-24,r1
	mov.l	r7,@(44,r1)
	.loc 1 342 10
	mov	r14,r1
	add	#40,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
	.loc 1 343 10
	mov	r14,r1
	add	#44,r1
	mov	#0,r2
	mov	#0,r3
	mov.l	r2,@(32,r1)
	mov.l	r3,@(36,r1)
	.loc 1 349 6
	mov.l	.L164,r1
	mov	r14,r0
	add	#68,r0
	mov.l	@(48,r0),r6
	mov.l	@(52,r0),r7
	mov	r14,r2
	add	#68,r2
	mov.l	@(48,r2),r4
	mov.l	@(52,r2),r5
	jsr	@r1
	nop
.LVL11:
	mov	r0,r1
	tst	r1,r1
	bt	.L157
	.loc 1 350 12
	mov	r14,r7
	add	#-24,r7
	mov	r14,r3
	add	#-24,r3
	mov	r14,r2
	add	#-24,r2
	mov	r14,r1
	add	#-24,r1
	mov	r14,r4
	add	#124,r4
	mov.l	@(8,r4),r6
	mov.l	r6,@(12,r15)
	mov	r14,r5
	add	#124,r5
	mov.l	@(4,r5),r6
	mov.l	r6,@(8,r15)
	mov	#3,r6
	mov.l	r6,@(4,r15)
	mov.l	.L165,r6
	mov.l	r6,@r15
	mov.l	@(44,r7),r7
	mov.l	@(48,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L175,r1
	jsr	@r1
	nop
.LVL12:
	mov	r0,r1
	bra	.L150
	nop
	.align 1
.L157:
	.loc 1 351 6
	mov.l	.L181,r1
	mov.l	.L168,r6
	mov	#-1,r7
	mov	r14,r8
	add	#68,r8
	mov.l	@(48,r8),r4
	mov.l	@(52,r8),r5
	jsr	@r1
	nop
.LVL13:
	mov	r0,r1
	cmp/pz	r1
	bt	.L158
	.loc 1 352 12
	mov	r14,r7
	add	#-24,r7
	mov	r14,r3
	add	#-24,r3
	mov	r14,r2
	add	#-24,r2
	mov	r14,r1
	add	#-24,r1
	mov	r14,r0
	add	#124,r0
	mov.l	@(8,r0),r6
	mov.l	r6,@(12,r15)
	mov	r14,r4
	add	#124,r4
	mov.l	@(4,r4),r6
	mov.l	r6,@(8,r15)
	mov	#4,r6
	mov.l	r6,@(4,r15)
	mov.l	.L169,r6
	mov.l	r6,@r15
	mov.l	@(44,r7),r7
	mov.l	@(48,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L175,r1
	jsr	@r1
	nop
.LVL14:
	mov	r0,r1
	bra	.L150
	nop
	.align 1
.L158:
	.loc 1 353 6
	mov.l	.L176,r1
	mov.l	.L172,r6
	mov	#-1,r7
	mov	r14,r8
	add	#68,r8
	mov.l	@(48,r8),r4
	mov.l	@(52,r8),r5
	jsr	@r1
	nop
.LVL15:
	mov	r0,r1
	cmp/pl	r1
	bf	.L159
	.loc 1 354 54
	mov	r14,r0
	add	#124,r0
	mov.l	@(8,r0),r1
	mov	#4,r2
	and	r2,r1
	.loc 1 354 12
	tst	r1,r1
	bt	.L110
	.loc 1 354 12 is_stmt 0 discriminator 1
	mov.l	.L173,r1
	bra	.L111
	nop
	.align 1
.L110:
	.loc 1 354 12 discriminator 2
	mov.l	.L174,r1
.L111:
	.loc 1 354 93 is_stmt 1 discriminator 4
	mov	r14,r3
	add	#124,r3
	mov.l	@(8,r3),r2
	mov	#4,r4
	and	r4,r2
	.loc 1 354 12 discriminator 4
	tst	r2,r2
	bt	.L112
	.loc 1 354 12 is_stmt 0 discriminator 5
	mov	#4,r2
	bra	.L113
	nop
	.align 1
.L112:
	.loc 1 354 12 discriminator 6
	mov	#3,r2
.L113:
	.loc 1 354 12 discriminator 8
	mov	r14,r7
	add	#-24,r7
	mov	r14,r6
	add	#-24,r6
	mov	r14,r5
	add	#-24,r5
	mov	r14,r3
	add	#-24,r3
	mov	r14,r8
	add	#124,r8
	mov.l	@(8,r8),r4
	mov.l	r4,@(12,r15)
	mov	r14,r0
	add	#124,r0
	mov.l	@(4,r0),r4
	mov.l	r4,@(8,r15)
	mov.l	r2,@(4,r15)
	mov.l	r1,@r15
	mov.l	@(44,r7),r7
	mov.l	@(48,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r3),r4
	mov.l	.L175,r1
	jsr	@r1
	nop
.LVL16:
	mov	r0,r1
	bra	.L150
	nop
	.align 1
.L159:
	.loc 1 358 6 is_stmt 1
	mov.l	.L176,r1
	mov.l	.L177,r6
	mov	#0,r7
	mov	r14,r2
	add	#68,r2
	mov.l	@(48,r2),r4
	mov.l	@(52,r2),r5
	jsr	@r1
	nop
.LVL17:
	mov	r0,r1
	cmp/pl	r1
	bt	.L114
	.loc 1 358 34 discriminator 1
	mov.l	.L181,r1
	mov.l	.L179,r6
	mov	#0,r7
	mov	r14,r3
	add	#68,r3
	mov.l	@(48,r3),r4
	mov.l	@(52,r3),r5
	jsr	@r1
	nop
.LVL18:
	mov	r0,r1
	cmp/pz	r1
	bt	.L160
.L114:
	.loc 1 360 12
	mov	r14,r7
	add	#-24,r7
	mov	r14,r6
	add	#-24,r6
	mov	r14,r5
	add	#-24,r5
	mov	r14,r1
	add	#-24,r1
	mov	r14,r4
	add	#124,r4
	mov.l	@(8,r4),r2
	mov.l	r2,@(16,r15)
	mov	r14,r8
	add	#124,r8
	mov.l	@(4,r8),r2
	mov.l	r2,@(12,r15)
	mov	r14,r0
	add	#64,r0
	mov.l	@(60,r0),r2
	mov.l	r2,@(8,r15)
	mov	r14,r4
	add	#68,r4
	mov.l	@(48,r4),r2
	mov.l	@(52,r4),r3
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(44,r7),r7
	mov.l	@(48,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r1),r4
	mov.l	.L180,r1
	jsr	@r1
	nop
.LVL19:
	mov	r0,r1
	bra	.L150
	nop
	.align 1
.L160:
	.loc 1 367 8
	mov	r14,r1
	add	#88,r1
	mov	#0,r2
	mov	r2,r0
	mov.b	r0,@(11,r1)
	.loc 1 368 6
	mov.l	.L181,r1
	mov	#0,r6
	mov	#0,r7
	mov	r14,r2
	add	#68,r2
	mov.l	@(48,r2),r4
	mov.l	@(52,r2),r5
	jsr	@r1
	nop
.LVL20:
	mov	r0,r1
	cmp/pz	r1
	bt	.L117
	.loc 1 369 14
	mov	r14,r1
	add	#88,r1
	mov	#1,r2
	mov	r2,r0
	mov.b	r0,@(11,r1)
	.loc 1 370 11
	mov.l	.L182,r1
	mov	r14,r2
	add	#68,r2
	mov.l	@(48,r2),r6
	mov.l	@(52,r2),r7
	mov	#0,r4
	mov	#0,r5
	jsr	@r1
	nop
.LVL21:
	mov	r0,r2
	mov	r1,r3
	mov	r14,r4
	add	#68,r4
	mov.l	r2,@(48,r4)
	mov.l	r3,@(52,r4)
.L117:
	.loc 1 374 15
	mov	r14,r5
	add	#124,r5
	mov.l	@(8,r5),r2
	mov.w	.L183,r1
	and	r2,r1
	.loc 1 374 6
	tst	r1,r1
	bf	.L120
	.loc 1 375 10
	mov	#6,r1
	mov	r14,r8
	add	#64,r8
	mov.l	r1,@(60,r8)
	.loc 1 378 9
	bra	.L120
	nop
	.align 1
.L183:
	.short	1024
.L184:
	.align 2
.L164:
	.long	___nedf2
.L165:
	.long	.LC0
.L175:
	.long	__out_rev
.L181:
	.long	___ltdf2
.L168:
	.long	-1048577
.L169:
	.long	.LC1
.L176:
	.long	___gtdf2
.L172:
	.long	2146435071
.L173:
	.long	.LC2
.L174:
	.long	.LC3
.L177:
	.long	1104006501
.L179:
	.long	-1043477147
.L180:
	.long	__etoa
.L182:
	.long	___subdf3
	.align 1
.L122:
	.loc 1 379 12
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 379 16
	mov	r14,r2
	add	#36,r2
	mov	#48,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
	.loc 1 380 9
	mov	r14,r2
	add	#64,r2
	mov.l	@(60,r2),r1
	add	#-1,r1
	mov	r14,r3
	add	#64,r3
	mov.l	r1,@(60,r3)
.L120:
	.loc 1 378 42
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L121
	.loc 1 378 42 is_stmt 0 discriminator 1
	mov	r14,r4
	add	#64,r4
	mov.l	@(60,r4),r2
	mov	#9,r1
	cmp/hi	r1,r2
	bt	.L122
.L121:
	.loc 1 383 7 is_stmt 1
	mov	r14,r8
	add	#40,r8
	mov.l	.L185,r1
	mov	r14,r0
	add	#68,r0
	mov.l	@(48,r0),r4
	mov.l	@(52,r0),r5
	jsr	@r1
	nop
.LVL22:
	mov	r0,r1
	mov.l	r1,@(52,r8)
	.loc 1 384 23
	mov	r14,r2
	add	#40,r2
	mov.l	.L200,r1
	mov.l	@(52,r2),r4
	jsr	@r1
	nop
.LVL23:
	mov	r0,r2
	mov	r1,r3
	mov.l	.L201,r1
	mov	r2,r6
	mov	r3,r7
	mov	r14,r2
	add	#68,r2
	mov.l	@(48,r2),r4
	mov.l	@(52,r2),r5
	jsr	@r1
	nop
.LVL24:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r4
	mov	r3,r5
	.loc 1 384 39
	mov.l	.L196,r2
	mov	r14,r3
	add	#64,r3
	mov.l	@(60,r3),r1
	shll2	r1
	add	r1,r1
	add	r2,r1
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	.loc 1 384 10
	mov	r14,r8
	add	#44,r8
	mov.l	.L189,r1
	mov	r2,r6
	mov	r3,r7
	jsr	@r1
	nop
.LVL25:
	mov	r0,r2
	mov	r1,r3
	mov.l	r2,@(24,r8)
	mov.l	r3,@(28,r8)
	.loc 1 385 17
	mov	r14,r8
	add	#40,r8
	mov	r14,r2
	add	#44,r2
	mov.l	.L190,r1
	mov.l	@(24,r2),r4
	mov.l	@(28,r2),r5
	jsr	@r1
	nop
.LVL26:
	mov	r0,r1
	mov.l	r1,@(48,r8)
	.loc 1 386 14
	mov	r14,r2
	add	#40,r2
	mov.l	.L195,r1
	mov.l	@(48,r2),r4
	jsr	@r1
	nop
.LVL27:
	mov	r0,r6
	mov	r1,r7
	.loc 1 386 8
	mov	r14,r8
	add	#44,r8
	mov	r14,r2
	add	#44,r2
	mov.l	.L201,r1
	mov.l	@(24,r2),r4
	mov.l	@(28,r2),r5
	jsr	@r1
	nop
.LVL28:
	mov	r0,r2
	mov	r1,r3
	mov.l	r2,@(32,r8)
	mov.l	r3,@(36,r8)
	.loc 1 388 6
	mov	r14,r2
	add	#44,r2
	mov.l	.L204,r1
	mov.l	.L205,r6
	mov	#0,r7
	mov.l	@(32,r2),r4
	mov.l	@(36,r2),r5
	jsr	@r1
	nop
.LVL29:
	mov	r0,r1
	cmp/pl	r1
	bf	.L161
	.loc 1 389 5
	mov	r14,r1
	add	#40,r1
	mov	r14,r2
	add	#40,r2
	mov.l	@(48,r2),r2
	add	#1,r2
	mov.l	r2,@(48,r1)
	.loc 1 391 14
	mov	r14,r2
	add	#40,r2
	mov.l	.L195,r1
	mov.l	@(48,r2),r4
	jsr	@r1
	nop
.LVL30:
	mov	r0,r4
	mov	r1,r5
	.loc 1 391 22
	mov.l	.L196,r2
	mov	r14,r8
	add	#64,r8
	mov.l	@(60,r8),r1
	shll2	r1
	add	r1,r1
	add	r2,r1
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	.loc 1 391 8
	mov.l	.L197,r1
	mov	r2,r6
	mov	r3,r7
	jsr	@r1
	nop
.LVL31:
	mov	r0,r1
	cmp/pz	r1
	bf	.L125
	.loc 1 392 12
	mov	r14,r1
	add	#40,r1
	mov	#0,r2
	mov.l	r2,@(48,r1)
	.loc 1 393 7
	mov	r14,r1
	add	#40,r1
	mov	r14,r2
	add	#40,r2
	mov.l	@(52,r2),r2
	add	#1,r2
	mov.l	r2,@(52,r1)
	bra	.L125
	nop
	.align 1
.L161:
	.loc 1 396 11
	mov	r14,r2
	add	#44,r2
	mov.l	.L202,r1
	mov.l	.L205,r6
	mov	#0,r7
	mov.l	@(32,r2),r4
	mov.l	@(36,r2),r5
	jsr	@r1
	nop
.LVL32:
	mov	r0,r1
	cmp/pz	r1
	bf	.L125
	.loc 1 398 11
	mov	r14,r1
	add	#40,r1
	mov.l	@(48,r1),r1
	tst	r1,r1
	bt	.L127
	.loc 1 398 34 discriminator 1
	mov	r14,r1
	add	#40,r1
	mov.l	@(48,r1),r1
	mov	#1,r0
	and	r0,r1
	.loc 1 398 25 discriminator 1
	tst	r1,r1
	bt	.L125
.L127:
	.loc 1 400 5
	mov	r14,r1
	add	#40,r1
	mov	r14,r2
	add	#40,r2
	mov.l	@(48,r2),r2
	add	#1,r2
	mov.l	r2,@(48,r1)
.L125:
	.loc 1 403 6
	mov	r14,r2
	add	#64,r2
	mov.l	@(60,r2),r1
	tst	r1,r1
	bt	.LF100
	bra	.L128
	nop
.LF100:
	.loc 1 404 20
	mov	r14,r2
	add	#40,r2
	mov.l	.L200,r1
	mov.l	@(52,r2),r4
	jsr	@r1
	nop
.LVL33:
	mov	r0,r2
	mov	r1,r3
	.loc 1 404 10
	mov	r14,r8
	add	#44,r8
	mov.l	.L201,r1
	mov	r2,r6
	mov	r3,r7
	mov	r14,r3
	add	#68,r3
	mov.l	@(48,r3),r4
	mov.l	@(52,r3),r5
	jsr	@r1
	nop
.LVL34:
	mov	r0,r2
	mov	r1,r3
	mov.l	r2,@(32,r8)
	mov.l	r3,@(36,r8)
	.loc 1 405 17
	mov	r14,r2
	add	#44,r2
	mov	#1,r1
	mov	r1,r8
	mov.l	.L202,r1
	mov.l	.L205,r6
	mov	#0,r7
	mov.l	@(32,r2),r4
	mov.l	@(36,r2),r5
	jsr	@r1
	nop
.LVL35:
	mov	r0,r1
	cmp/pz	r1
	bf	.L129
	mov	#0,r1
	mov	r1,r8
.L129:
	extu.b	r8,r1
	.loc 1 405 10
	mov	#1,r4
	xor	r4,r1
	extu.b	r1,r1
	.loc 1 405 8
	tst	r1,r1
	bf	.L130
	.loc 1 405 24 discriminator 2
	mov	r14,r2
	add	#44,r2
	mov.l	.L204,r1
	mov.l	.L205,r6
	mov	#0,r7
	mov.l	@(32,r2),r4
	mov.l	@(36,r2),r5
	jsr	@r1
	nop
.LVL36:
	mov	r0,r1
	cmp/pl	r1
	bt	.L217
	bra	.L131
	nop
.L217:
.L130:
	.loc 1 405 51 discriminator 3
	mov	r14,r1
	add	#40,r1
	mov.l	@(52,r1),r1
	mov	#1,r5
	and	r5,r1
	.loc 1 405 41 discriminator 3
	tst	r1,r1
	bt	.L214
	.loc 1 408 7
	mov	r14,r1
	add	#40,r1
	mov	r14,r2
	add	#40,r2
	mov.l	@(52,r2),r2
	add	#1,r2
	mov.l	r2,@(52,r1)
.L214:
	bra	.L139
	nop
	.align 1
.L128:
.LBB5:
	.loc 1 412 18
	mov	r14,r1
	add	#40,r1
	mov	r14,r8
	add	#64,r8
	mov.l	@(60,r8),r2
	mov.l	r2,@(44,r1)
	.loc 1 414 11
	bra	.L133
	nop
	.align 1
.L135:
	.loc 1 415 7
	mov	r14,r1
	add	#40,r1
	mov	r14,r2
	add	#40,r2
	mov.l	@(44,r2),r2
	add	#-1,r2
	mov.l	r2,@(44,r1)
	.loc 1 416 39
	mov	r14,r1
	add	#40,r1
	mov.l	@(48,r1),r3
	mov.l	.L207,r1
	dmulu.l	r1,r3
	sts	mach,r1
	nop
	mov	r1,r2
	shlr2	r2
	shlr	r2
	mov	r2,r1
	shll2	r1
	add	r2,r1
	add	r1,r1
	mov	r3,r2
	sub	r1,r2
	.loc 1 416 31
	extu.b	r2,r1
	add	#48,r1
	extu.b	r1,r2
	.loc 1 416 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r3
	add	#40,r3
	mov	r1,r7
	add	#1,r7
	mov.l	r7,@(60,r3)
	.loc 1 416 20
	exts.b	r2,r3
	.loc 1 416 18
	mov	r14,r2
	add	#36,r2
	mov	r1,r0
	mov.b	r3,@(r0,r2)
	.loc 1 417 18
	mov	r14,r1
	add	#40,r1
	mov	r14,r2
	add	#40,r2
	mov.l	@(48,r2),r3
	mov.l	.L207,r2
	dmulu.l	r2,r3
	sts	mach,r2
	nop
	shlr2	r2
	shlr	r2
	mov.l	r2,@(48,r1)
	.loc 1 417 10
	mov	r14,r1
	add	#40,r1
	mov.l	@(48,r1),r1
	tst	r1,r1
	bt	.L162
.L133:
	.loc 1 414 16
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L135
	bra	.L136
	nop
.L208:
	.align 2
.L185:
	.long	___fixdfsi
.L200:
	.long	___floatsidf
.L201:
	.long	___subdf3
.L196:
	.long	_pow10.0
.L189:
	.long	___muldf3
.L190:
	.long	___fixunsdfsi
.L195:
	.long	___floatunsidf
.L204:
	.long	___gtdf2
.L205:
	.long	1071644672
.L197:
	.long	___gedf2
.L202:
	.long	___ltdf2
.L207:
	.long	-858993459
	.align 1
.L162:
	.loc 1 418 9
	nop
	.loc 1 422 11
	bra	.L136
	nop
	.align 1
.L138:
	.loc 1 423 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 423 18
	mov	r14,r2
	add	#36,r2
	mov	#48,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
.L136:
	.loc 1 422 44
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L137
	.loc 1 422 53 discriminator 1
	mov	r14,r1
	add	#40,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#-1,r3
	mov.l	r3,@(44,r2)
	.loc 1 422 44 discriminator 1
	tst	r1,r1
	bf	.L138
.L137:
	.loc 1 425 8
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L139
	.loc 1 427 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 427 18
	mov	r14,r2
	add	#36,r2
	mov	#46,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
.L131:
.LBE5:
	.loc 1 432 9 discriminator 1
	bra	.L139
	nop
	.align 1
.L141:
	.loc 1 433 37
	mov	r14,r1
	add	#40,r1
	mov.l	@(52,r1),r3
	mov.l	.L210,r1
	dmuls.l	r1,r3
	sts	mach,r1
	nop
	shar	r1
	shar	r1
	mov	r1,r2
	mov	#0,r1
	cmp/gt	r3,r1
	subc	r1,r1
	sub	r1,r2
	mov	r2,r1
	shll2	r1
	add	r2,r1
	add	r1,r1
	mov	r3,r2
	sub	r1,r2
	.loc 1 433 28
	extu.b	r2,r1
	add	#48,r1
	extu.b	r1,r2
	.loc 1 433 12
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r3
	add	#40,r3
	mov	r1,r7
	add	#1,r7
	mov.l	r7,@(60,r3)
	.loc 1 433 18
	exts.b	r2,r3
	.loc 1 433 16
	mov	r14,r2
	add	#36,r2
	mov	r1,r0
	mov.b	r3,@(r0,r2)
	.loc 1 434 17
	mov	r14,r3
	add	#40,r3
	mov	r14,r1
	add	#40,r1
	mov.l	@(52,r1),r2
	mov.l	.L210,r1
	dmuls.l	r1,r2
	sts	mach,r1
	nop
	shar	r1
	shar	r1
	mov	r1,r7
	mov	#0,r1
	cmp/gt	r2,r1
	subc	r2,r2
	mov	r7,r1
	sub	r2,r1
	mov.l	r1,@(52,r3)
	.loc 1 434 8
	mov	r14,r1
	add	#40,r1
	mov.l	@(52,r1),r1
	tst	r1,r1
	bt	.L163
.L139:
	.loc 1 432 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L141
	bra	.L140
	nop
	.align 1
.L163:
	.loc 1 435 7
	nop
.L140:
	.loc 1 440 15
	mov	r14,r2
	add	#124,r2
	mov.l	@(8,r2),r1
	mov	#2,r3
	and	r3,r1
	.loc 1 440 6
	tst	r1,r1
	bt	.L216
	bra	.L142
	nop
.L216:
	.loc 1 440 39 discriminator 1
	mov	r14,r4
	add	#124,r4
	mov.l	@(8,r4),r1
	mov	#1,r5
	and	r5,r1
	.loc 1 440 29 discriminator 1
	tst	r1,r1
	bt	.L142
	.loc 1 441 8
	mov	r14,r8
	add	#124,r8
	mov.l	@(4,r8),r1
	tst	r1,r1
	bt	.L145
	.loc 1 441 15 discriminator 1
	mov	r14,r1
	add	#88,r1
	mov.b	@(11,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bf	.L144
	.loc 1 441 38 discriminator 2
	mov	r14,r2
	add	#124,r2
	mov.l	@(8,r2),r1
	mov	#12,r3
	and	r3,r1
	.loc 1 441 28 discriminator 2
	tst	r1,r1
	bt	.L145
.L144:
	.loc 1 442 12
	mov	r14,r4
	add	#124,r4
	mov.l	@(4,r4),r1
	add	#-1,r1
	mov	r14,r5
	add	#124,r5
	mov.l	r1,@(4,r5)
	.loc 1 444 11
	bra	.L145
	nop
	.align 1
.L146:
	.loc 1 445 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 445 18
	mov	r14,r2
	add	#36,r2
	mov	#48,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
.L145:
	.loc 1 444 26
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	r14,r3
	add	#124,r3
	mov.l	@(4,r3),r1
	cmp/hs	r1,r2
	bt	.L142
	.loc 1 444 26 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bf	.L146
.L142:
	.loc 1 449 6 is_stmt 1
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r2
	mov	#31,r1
	cmp/hi	r1,r2
	bt	.L147
	.loc 1 450 8
	mov	r14,r1
	add	#88,r1
	mov.b	@(11,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L148
	.loc 1 451 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 451 18
	mov	r14,r2
	add	#36,r2
	mov	#45,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
	bra	.L147
	nop
	.align 1
.L148:
	.loc 1 453 20
	mov	r14,r2
	add	#124,r2
	mov.l	@(8,r2),r1
	mov	#4,r3
	and	r3,r1
	.loc 1 453 13
	tst	r1,r1
	bt	.L149
	.loc 1 454 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 454 18
	mov	r14,r2
	add	#36,r2
	mov	#43,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
	bra	.L147
	nop
	.align 1
.L149:
	.loc 1 456 20
	mov	r14,r2
	add	#124,r2
	mov.l	@(8,r2),r1
	mov	#8,r3
	and	r3,r1
	.loc 1 456 13
	tst	r1,r1
	bt	.L147
	.loc 1 457 14
	mov	r14,r1
	add	#40,r1
	mov.l	@(60,r1),r1
	mov	r14,r2
	add	#40,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(60,r2)
	.loc 1 457 18
	mov	r14,r2
	add	#36,r2
	mov	#32,r3
	mov	r1,r0
	mov.b	r3,@(r0,r2)
.L147:
	.loc 1 461 10
	mov	r14,r7
	add	#-24,r7
	mov	r14,r3
	add	#-24,r3
	mov	r14,r2
	add	#-24,r2
	mov	r14,r1
	add	#-24,r1
	mov	r14,r4
	add	#124,r4
	mov.l	@(8,r4),r6
	mov.l	r6,@(12,r15)
	mov	r14,r5
	add	#124,r5
	mov.l	@(4,r5),r6
	mov.l	r6,@(8,r15)
	mov	r14,r6
	add	#40,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(4,r15)
	mov	r14,r6
	add	#36,r6
	mov.l	r6,@r15
	mov.l	@(44,r7),r7
	mov.l	@(48,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L211,r1
	jsr	@r1
	nop
.LVL37:
	mov	r0,r1
.L150:
	.loc 1 462 1 discriminator 3
	mov	r1,r0
	add	#104,r14
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
.L212:
	.align 2
.L210:
	.long	1717986919
.L211:
	.long	__out_rev
	.cfi_endproc
.LFE11:
	.size	__ftoa, .-__ftoa
	.global	___adddf3
	.global	___divdf3
	.align 1
	.type	__etoa, @function
__etoa:
.LFB12:
	.loc 1 468 1
	.cfi_startproc
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	mov.l	r9,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 9, -8
	mov.l	r10,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 10, -12
	mov.l	r11,@-r15
	.cfi_def_cfa_offset 16
	.cfi_offset 11, -16
	mov.l	r12,@-r15
	.cfi_def_cfa_offset 20
	.cfi_offset 12, -20
	mov.l	r13,@-r15
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 28
	.cfi_offset 14, -28
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 32
	.cfi_offset 17, -32
	add	#-128,r15
	.cfi_def_cfa_offset 160
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#64,r1
	mov.l	r4,@(12,r1)
	mov	r14,r1
	add	#64,r1
	mov.l	r5,@(8,r1)
	mov	r14,r1
	add	#64,r1
	mov.l	r6,@(4,r1)
	mov	r14,r1
	add	#64,r1
	mov.l	r7,@(0,r1)
	.loc 1 470 6
	mov.l	.L253,r1
	mov.w	.L262,r0
	add	r14,r0
	mov.l	@(32,r0),r6
	mov.l	@(36,r0),r7
	mov.w	.L262,r2
	add	r14,r2
	mov.l	@(32,r2),r4
	mov.l	@(36,r2),r5
	jsr	@r1
	nop
.LVL38:
	mov	r0,r1
	tst	r1,r1
	bf	.L219
	.loc 1 470 24 discriminator 1
	mov.l	.L256,r1
	mov.l	.L257,r6
	mov	#-1,r7
	mov.w	.L262,r3
	add	r14,r3
	mov.l	@(32,r3),r4
	mov.l	@(36,r3),r5
	jsr	@r1
	nop
.LVL39:
	mov	r0,r1
	cmp/pl	r1
	bt	.L219
	.loc 1 470 45 discriminator 2
	mov.l	.L259,r1
	mov.l	.L260,r6
	mov	#-1,r7
	mov.w	.L262,r0
	add	r14,r0
	mov.l	@(32,r0),r4
	mov.l	@(36,r0),r5
	jsr	@r1
	nop
.LVL40:
	mov	r0,r1
	cmp/pz	r1
	bt	.L251
.L219:
	.loc 1 471 12
	mov	r14,r7
	add	#64,r7
	mov	r14,r6
	add	#64,r6
	mov	r14,r5
	add	#64,r5
	mov	r14,r1
	add	#64,r1
	mov	r14,r3
	add	#124,r3
	mov.l	@(52,r3),r2
	mov.l	r2,@(16,r15)
	mov	r14,r4
	add	#124,r4
	mov.l	@(48,r4),r2
	mov.l	r2,@(12,r15)
	mov	r14,r0
	add	#124,r0
	mov.l	@(44,r0),r2
	mov.l	r2,@(8,r15)
	mov.w	.L262,r4
	add	r14,r4
	mov.l	@(32,r4),r2
	mov.l	@(36,r4),r3
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(0,r7),r7
	mov.l	@(4,r6),r6
	mov.l	@(8,r5),r5
	mov.l	@(12,r1),r4
	mov.l	.L263,r1
	jsr	@r1
	nop
.LVL41:
	mov	r0,r1
	bra	.L247
	nop
	.align 1
.L262:
	.short	128
.L264:
	.align 2
.L253:
	.long	___nedf2
.L256:
	.long	___gtdf2
.L257:
	.long	2146435071
.L259:
	.long	___ltdf2
.L260:
	.long	-1048577
.L263:
	.long	__ftoa
	.align 1
.L251:
	.loc 1 475 14
	mov	r14,r11
	add	#112,r11
	mov	#1,r1
	mov	r1,r10
	mov.l	.L266,r1
	mov	#0,r6
	mov	#0,r7
	mov.w	.L271,r0
	add	r14,r0
	mov.l	@(32,r0),r4
	mov.l	@(36,r0),r5
	jsr	@r1
	nop
.LVL42:
	mov	r0,r1
	cmp/pz	r1
	bf	.L223
	mov	#0,r1
	mov	r1,r10
.L223:
	mov	r10,r0
	mov.b	r0,@(3,r11)
	.loc 1 476 6
	mov	r14,r1
	add	#112,r1
	mov.b	@(3,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L224
	.loc 1 477 11
	mov	r14,r1
	add	#124,r1
	mov.l	@(36,r1),r2
	mov.l	.L268,r1
	mov	r2,r12
	xor	r1,r12
	mov	r14,r2
	add	#124,r2
	mov.l	@(40,r2),r13
	mov.w	.L271,r3
	add	r14,r3
	mov.l	r12,@(32,r3)
	mov.l	r13,@(36,r3)
.L224:
	.loc 1 481 15
	mov	r14,r4
	add	#124,r4
	mov.l	@(52,r4),r2
	mov.w	.L270,r1
	and	r2,r1
	.loc 1 481 6
	tst	r1,r1
	bf	.L225
	.loc 1 482 10
	mov	#6,r1
	mov	r14,r5
	add	#124,r5
	mov.l	r1,@(44,r5)
.L225:
	.loc 1 492 10
	mov	r14,r1
	add	#64,r1
	mov.w	.L271,r6
	add	r14,r6
	mov.l	@(32,r6),r2
	mov.l	@(36,r6),r3
	mov.l	r2,@(16,r1)
	mov.l	r3,@(20,r1)
	.loc 1 493 25
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r2
	mov.l	@(20,r1),r3
	.loc 1 493 28
	mov	r2,r7
	mov	#-20,r0
	shld	r0,r7
	mov.l	r7,@(60,r14)
	mov	#0,r1
	mov.l	r1,@(56,r14)
	.loc 1 493 36
	mov.l	@(60,r14),r2
	.loc 1 493 14
	mov.w	.L272,r1
	and	r1,r2
	.loc 1 493 7
	mov	r14,r1
	add	#64,r1
	mov.w	.L273,r3
	add	r3,r2
	mov.l	r2,@(44,r1)
	.loc 1 494 17
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r2
	mov.l	@(20,r1),r3
	.loc 1 494 20
	mov.l	.L274,r1
	mov	r2,r8
	and	r1,r8
	mov	#-1,r1
	mov	r3,r9
	and	r1,r9
	.loc 1 494 44
	mov.l	.L275,r1
	mov	r8,r4
	or	r1,r4
	mov.l	r4,@(48,r14)
	mov	#0,r5
	or	r9,r5
	mov.l	r5,@(52,r14)
	.loc 1 494 10
	mov	r14,r1
	add	#64,r1
	mov.l	@(48,r14),r6
	mov.l	@(52,r14),r7
	mov.l	r6,@(16,r1)
	mov.l	r7,@(20,r1)
	.loc 1 496 45
	mov	r14,r2
	add	#64,r2
	mov.l	.L301,r1
	mov.l	@(44,r2),r4
	jsr	@r1
	nop
.LVL43:
	mov	r0,r2
	mov	r1,r3
	mov.l	.L298,r1
	mov.l	.L278,r6
	mov.l	.L279,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL44:
	mov	r0,r2
	mov	r1,r3
	.loc 1 496 38
	mov.l	.L294,r1
	mov.l	.L281,r6
	mov.l	.L282,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL45:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r8
	mov	r3,r9
	.loc 1 496 72
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r2
	mov.l	@(20,r1),r3
	.loc 1 496 75
	mov.l	.L283,r1
	mov.l	.L284,r6
	mov	#0,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL46:
	mov	r0,r2
	mov	r1,r3
	.loc 1 496 82
	mov.l	.L298,r1
	mov.l	.L286,r6
	mov.l	.L287,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL47:
	mov	r0,r2
	mov	r1,r3
	.loc 1 496 65
	mov.l	.L294,r1
	mov	r2,r6
	mov	r3,r7
	mov	r8,r4
	mov	r9,r5
	jsr	@r1
	nop
.LVL48:
	mov	r0,r2
	mov	r1,r3
	.loc 1 496 7
	mov	r14,r8
	add	#64,r8
	mov.l	.L296,r1
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL49:
	mov	r0,r1
	mov.l	r1,@(60,r8)
	.loc 1 498 23
	mov	r14,r2
	add	#64,r2
	mov.l	.L301,r1
	mov.l	@(60,r2),r4
	jsr	@r1
	nop
.LVL50:
	mov	r0,r2
	mov	r1,r3
	mov.l	.L298,r1
	mov.l	.L292,r6
	mov.l	.L293,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL51:
	mov	r0,r2
	mov	r1,r3
	.loc 1 498 43
	mov.l	.L294,r1
	mov.l	.L295,r6
	mov	#0,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL52:
	mov	r0,r2
	mov	r1,r3
	.loc 1 498 8
	mov	r14,r8
	add	#64,r8
	mov.l	.L296,r1
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL53:
	mov	r0,r1
	mov.l	r1,@(44,r8)
	.loc 1 499 28
	mov	r14,r2
	add	#64,r2
	mov.l	.L301,r1
	mov.l	@(60,r2),r4
	jsr	@r1
	nop
.LVL54:
	mov	r0,r2
	mov	r1,r3
	mov.l	.L298,r1
	mov.l	.L299,r6
	mov.l	.L300,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL55:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r10
	mov	r3,r11
	.loc 1 499 55
	mov	r14,r2
	add	#64,r2
	mov.l	.L301,r1
	mov.l	@(44,r2),r4
	bra	.L265
	nop
	.align 1
.L271:
	.short	128
.L270:
	.short	1024
.L272:
	.short	2047
.L273:
	.short	-1023
.L302:
	.align 2
.L266:
	.long	___ltdf2
.L268:
	.long	-2147483648
.L274:
	.long	1048575
.L275:
	.long	1072693248
.L301:
	.long	___floatsidf
.L298:
	.long	___muldf3
.L278:
	.long	1070810131
.L279:
	.long	1352628731
.L294:
	.long	___adddf3
.L281:
	.long	1069976104
.L282:
	.long	-1956591437
.L283:
	.long	___subdf3
.L284:
	.long	1073217536
.L286:
	.long	1070761895
.L287:
	.long	1668236129
.L296:
	.long	___fixdfsi
.L292:
	.long	1074434895
.L293:
	.long	158966641
.L295:
	.long	1071644672
.L299:
	.long	1073900465
.L300:
	.long	-1145744106
	.align 1
.L265:
	jsr	@r1
	nop
.LVL56:
	mov	r0,r2
	mov	r1,r3
	mov.l	.L324,r1
	mov.l	.L304,r6
	mov.l	.L305,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL57:
	mov	r0,r2
	mov	r1,r3
	.loc 1 499 16
	mov	r14,r8
	add	#68,r8
	mov.l	.L310,r1
	mov	r2,r6
	mov	r3,r7
	mov	r10,r4
	mov	r11,r5
	jsr	@r1
	nop
.LVL58:
	mov	r0,r2
	mov	r1,r3
	mov.l	r2,@(32,r8)
	mov.l	r3,@(36,r8)
	.loc 1 500 16
	mov	r14,r8
	add	#68,r8
	mov	r14,r1
	add	#68,r1
	mov.l	.L324,r2
	mov.l	@(32,r1),r6
	mov.l	@(36,r1),r7
	mov.l	@(32,r1),r4
	mov.l	@(36,r1),r5
	jsr	@r2
	nop
.LVL59:
	mov	r0,r2
	mov	r1,r3
	mov.l	r2,@(24,r8)
	mov.l	r3,@(28,r8)
	.loc 1 501 28
	mov	r14,r1
	add	#64,r1
	mov.l	@(44,r1),r1
	mov.w	.L308,r7
	add	r7,r1
	.loc 1 501 12
	mov.l	r1,@(44,r14)
	mov	#0,r2
	cmp/gt	r1,r2
	subc	r1,r1
	mov.l	r1,@(40,r14)
	.loc 1 501 36
	mov	#20,r1
	mov.l	@(44,r14),r0
	shld	r1,r0
	mov.l	r0,@(32,r14)
	mov	#0,r1
	mov.l	r1,@(36,r14)
	.loc 1 501 10
	mov	r14,r1
	add	#64,r1
	mov.l	@(32,r14),r2
	mov.l	@(36,r14),r3
	mov.l	r2,@(16,r1)
	mov.l	r3,@(20,r1)
	.loc 1 503 10
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r8
	mov.l	@(20,r1),r9
	.loc 1 503 19
	mov	r14,r1
	add	#68,r1
	mov.l	@(32,r1),r2
	mov.l	@(36,r1),r3
	mov.l	.L322,r1
	mov	r2,r6
	mov	r3,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL60:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r10
	mov	r3,r11
	.loc 1 503 28
	mov	r14,r2
	add	#68,r2
	mov.l	.L310,r1
	mov.l	@(32,r2),r6
	mov.l	@(36,r2),r7
	mov.l	.L311,r4
	mov	#0,r5
	jsr	@r1
	nop
.LVL61:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r12
	mov	r3,r13
	.loc 1 503 60
	mov	r14,r2
	add	#68,r2
	mov.l	.L327,r1
	mov.l	.L313,r6
	mov	#0,r7
	mov.l	@(24,r2),r4
	mov.l	@(28,r2),r5
	jsr	@r1
	nop
.LVL62:
	mov	r0,r2
	mov	r1,r3
	.loc 1 503 55
	mov.l	.L322,r1
	mov.l	.L328,r6
	mov	#0,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL63:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r6
	mov	r3,r7
	.loc 1 503 49
	mov	r14,r2
	add	#68,r2
	mov.l	.L327,r1
	mov.l	@(24,r2),r4
	mov.l	@(28,r2),r5
	jsr	@r1
	nop
.LVL64:
	mov	r0,r2
	mov	r1,r3
	.loc 1 503 43
	mov.l	.L322,r1
	mov.l	.L318,r6
	mov	#0,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL65:
	mov	r0,r2
	mov	r1,r3
	mov	r2,r6
	mov	r3,r7
	.loc 1 503 38
	mov	r14,r2
	add	#68,r2
	mov.l	.L327,r1
	mov.l	@(24,r2),r4
	mov.l	@(28,r2),r5
	jsr	@r1
	nop
.LVL66:
	mov	r0,r2
	mov	r1,r3
	.loc 1 503 32
	mov.l	.L322,r1
	mov	r2,r6
	mov	r3,r7
	mov	r12,r4
	mov	r13,r5
	jsr	@r1
	nop
.LVL67:
	mov	r0,r2
	mov	r1,r3
	.loc 1 503 23
	mov.l	.L327,r1
	mov	r2,r6
	mov	r3,r7
	mov	r10,r4
	mov	r11,r5
	jsr	@r1
	nop
.LVL68:
	mov	r0,r2
	mov	r1,r3
	.loc 1 503 15
	mov.l	.L322,r1
	mov.l	.L323,r6
	mov	#0,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL69:
	mov	r0,r2
	mov	r1,r3
	.loc 1 503 10
	mov.l	.L324,r1
	mov	r2,r6
	mov	r3,r7
	mov	r8,r4
	mov	r9,r5
	jsr	@r1
	nop
.LVL70:
	mov	r0,r2
	mov	r1,r3
	mov	r14,r1
	add	#64,r1
	mov.l	r2,@(16,r1)
	mov.l	r3,@(20,r1)
	.loc 1 505 19
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r2
	mov.l	@(20,r1),r3
	.loc 1 505 6
	mov.l	.L325,r1
	mov	r2,r6
	mov	r3,r7
	mov.w	.L326,r3
	add	r14,r3
	mov.l	@(32,r3),r4
	mov.l	@(36,r3),r5
	jsr	@r1
	nop
.LVL71:
	mov	r0,r1
	cmp/pz	r1
	bt	.L226
	.loc 1 506 11
	mov	r14,r1
	add	#64,r1
	mov	r14,r2
	add	#64,r2
	mov.l	@(60,r2),r2
	add	#-1,r2
	mov.l	r2,@(60,r1)
	.loc 1 507 12
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r2
	mov.l	@(20,r1),r3
	mov.l	.L327,r1
	mov.l	.L328,r6
	mov	#0,r7
	mov	r2,r4
	mov	r3,r5
	jsr	@r1
	nop
.LVL72:
	mov	r0,r2
	mov	r1,r3
	mov	r14,r1
	add	#64,r1
	mov.l	r2,@(16,r1)
	mov.l	r3,@(20,r1)
.L226:
	.loc 1 511 68
	mov	r14,r1
	add	#64,r1
	mov.l	@(60,r1),r2
	mov	#99,r1
	cmp/gt	r1,r2
	bt	.L228
	.loc 1 511 43 discriminator 1
	mov	r14,r1
	add	#64,r1
	mov.l	@(60,r1),r2
	mov	#-99,r1
	cmp/ge	r1,r2
	bf	.L228
	.loc 1 511 68 discriminator 3
	mov	#4,r1
	bra	.L229
	nop
	.align 1
.L308:
	.short	1023
.L326:
	.short	128
.L329:
	.align 2
.L324:
	.long	___muldf3
.L304:
	.long	1072049730
.L305:
	.long	-17155601
.L310:
	.long	___subdf3
.L322:
	.long	___adddf3
.L311:
	.long	1073741824
.L327:
	.long	___divdf3
.L313:
	.long	1076625408
.L328:
	.long	1076101120
.L318:
	.long	1075314688
.L323:
	.long	1072693248
.L325:
	.long	___ltdf2
	.align 1
.L228:
	.loc 1 511 68 is_stmt 0 discriminator 4
	mov	#5,r1
.L229:
	.loc 1 511 16 is_stmt 1 discriminator 6
	mov	r14,r2
	add	#64,r2
	mov.l	r1,@(56,r2)
	.loc 1 514 13 discriminator 6
	mov	r14,r4
	add	#124,r4
	mov.l	@(52,r4),r2
	mov.w	.L330,r1
	and	r2,r1
	.loc 1 514 6 discriminator 6
	tst	r1,r1
	bt	.L351
	.loc 1 516 8
	mov.l	.L331,r1
	mov.l	.L332,r6
	mov.l	.L333,r7
	mov.w	.L337,r0
	add	r14,r0
	mov.l	@(32,r0),r4
	mov.l	@(36,r0),r5
	jsr	@r1
	nop
.LVL73:
	mov	r0,r1
	cmp/pz	r1
	bf	.L231
	.loc 1 516 25 discriminator 1
	mov.l	.L335,r1
	mov.l	.L336,r6
	mov	#0,r7
	mov.w	.L337,r2
	add	r14,r2
	mov.l	@(32,r2),r4
	mov.l	@(36,r2),r5
	jsr	@r1
	nop
.LVL74:
	mov	r0,r1
	cmp/pz	r1
	bt	.L231
	.loc 1 517 11
	mov	r14,r3
	add	#124,r3
	mov.l	@(44,r3),r1
	.loc 1 517 10
	mov	r14,r2
	add	#64,r2
	mov.l	@(60,r2),r2
	cmp/ge	r1,r2
	bt	.L234
	.loc 1 518 27
	mov	r14,r4
	add	#124,r4
	mov.l	@(44,r4),r1
	.loc 1 518 37
	mov	r14,r2
	add	#64,r2
	mov.l	@(60,r2),r2
	sub	r2,r1
	.loc 1 518 46
	add	#-1,r1
	.loc 1 518 14
	mov	r14,r5
	add	#124,r5
	mov.l	r1,@(44,r5)
	bra	.L235
	nop
	.align 1
.L234:
	.loc 1 521 14
	mov	#0,r1
	mov	r14,r6
	add	#124,r6
	mov.l	r1,@(44,r6)
.L235:
	.loc 1 523 13
	mov	r14,r7
	add	#124,r7
	mov.l	@(52,r7),r2
	mov.w	.L339,r1
	or	r2,r1
	mov	r14,r0
	add	#124,r0
	mov.l	r1,@(52,r0)
	.loc 1 525 16
	mov	r14,r1
	add	#64,r1
	mov	#0,r2
	mov.l	r2,@(56,r1)
	.loc 1 526 16
	mov	r14,r1
	add	#64,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
.L351:
	bra	.L230
	nop
	.align 1
.L231:
	.loc 1 530 10
	mov	r14,r2
	add	#124,r2
	mov.l	@(44,r2),r1
	tst	r1,r1
	bt	.L230
	.loc 1 530 32 discriminator 1
	mov	r14,r3
	add	#124,r3
	mov.l	@(52,r3),r2
	mov.w	.L339,r1
	and	r2,r1
	.loc 1 530 22 discriminator 1
	tst	r1,r1
	bt	.L230
	.loc 1 531 9
	mov	r14,r4
	add	#124,r4
	mov.l	@(44,r4),r1
	add	#-1,r1
	mov	r14,r5
	add	#124,r5
	mov.l	r1,@(44,r5)
.L230:
	.loc 1 537 16
	mov	r14,r1
	add	#64,r1
	mov	r14,r6
	add	#124,r6
	mov.l	@(48,r6),r2
	mov.l	r2,@(52,r1)
	.loc 1 538 6
	mov	r14,r1
	add	#64,r1
	mov	r14,r7
	add	#124,r7
	mov.l	@(48,r7),r2
	mov.l	@(56,r1),r1
	cmp/hi	r1,r2
	bf	.L236
	.loc 1 540 12
	mov	r14,r1
	add	#64,r1
	mov	r14,r2
	add	#64,r2
	mov	r14,r3
	add	#64,r3
	mov.l	@(52,r2),r2
	mov.l	@(56,r3),r3
	sub	r3,r2
	mov.l	r2,@(52,r1)
	bra	.L237
	nop
	.align 1
.L330:
	.short	2048
.L337:
	.short	128
.L339:
	.short	1024
.L340:
	.align 2
.L331:
	.long	___gedf2
.L332:
	.long	1058682594
.L333:
	.long	-350469331
.L335:
	.long	___ltdf2
.L336:
	.long	1093567616
	.align 1
.L236:
	.loc 1 543 12
	mov	r14,r1
	add	#64,r1
	mov	#0,r2
	mov.l	r2,@(52,r1)
.L237:
	.loc 1 545 14
	mov	r14,r0
	add	#124,r0
	mov.l	@(52,r0),r1
	mov	#2,r2
	and	r2,r1
	.loc 1 545 6
	tst	r1,r1
	bt	.L238
	.loc 1 545 28 discriminator 1
	mov	r14,r1
	add	#64,r1
	mov.l	@(56,r1),r1
	tst	r1,r1
	bt	.L238
	.loc 1 547 12
	mov	r14,r1
	add	#64,r1
	mov	#0,r2
	mov.l	r2,@(52,r1)
.L238:
	.loc 1 551 6
	mov	r14,r1
	add	#64,r1
	mov.l	@(60,r1),r1
	tst	r1,r1
	bt	.L239
	.loc 1 552 18
	mov	r14,r1
	add	#64,r1
	mov.l	@(16,r1),r2
	mov.l	@(20,r1),r3
	.loc 1 552 11
	mov.l	.L341,r1
	mov	r2,r6
	mov	r3,r7
	mov.w	.L345,r3
	add	r14,r3
	mov.l	@(32,r3),r4
	mov.l	@(36,r3),r5
	jsr	@r1
	nop
.LVL75:
	mov	r0,r2
	mov	r1,r3
	mov.w	.L345,r4
	add	r14,r4
	mov.l	r2,@(32,r4)
	mov.l	r3,@(36,r4)
.L239:
	.loc 1 556 16
	mov	r14,r1
	add	#64,r1
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r2),r2
	mov.l	r2,@(24,r1)
	.loc 1 557 9
	mov	r14,r1
	add	#112,r1
	mov.b	@(3,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L240
	.loc 1 557 9 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#124,r1
	mov.l	@(36,r1),r2
	mov.l	.L344,r1
	mov	r2,r3
	xor	r1,r3
	mov.l	r3,@(24,r14)
	mov	r14,r4
	add	#124,r4
	mov.l	@(40,r4),r4
	mov.l	r4,@(28,r14)
	bra	.L241
	nop
	.align 1
.L240:
	.loc 1 557 9 discriminator 2
	mov.w	.L345,r6
	add	r14,r6
	mov.l	@(32,r6),r5
	mov.l	@(36,r6),r6
	mov.l	r5,@(24,r14)
	mov.l	r6,@(28,r14)
.L241:
	.loc 1 557 9 discriminator 4
	mov	r14,r7
	add	#124,r7
	mov.l	@(52,r7),r2
	mov.w	.L346,r1
	mov	r2,r6
	and	r1,r6
	mov	r14,r8
	add	#64,r8
	mov	r14,r7
	add	#64,r7
	mov	r14,r3
	add	#64,r3
	mov	r14,r2
	add	#64,r2
	mov	r14,r1
	add	#64,r1
	mov.l	r6,@(16,r15)
	mov	r14,r6
	add	#64,r6
	mov.l	@(52,r6),r6
	mov.l	r6,@(12,r15)
	mov	r14,r0
	add	#124,r0
	mov.l	@(44,r0),r6
	mov.l	r6,@(8,r15)
	mov.l	@(24,r14),r4
	mov.l	@(28,r14),r5
	mov.l	r4,@r15
	mov.l	r5,@(4,r15)
	mov.l	@(0,r7),r7
	mov.l	@(4,r3),r6
	mov.l	@(8,r2),r5
	mov.l	@(12,r1),r4
	mov.l	.L347,r1
	jsr	@r1
	nop
.LVL76:
	mov	r0,r1
	mov.l	r1,@(4,r8)
	.loc 1 560 6 is_stmt 1 discriminator 4
	mov	r14,r1
	add	#64,r1
	mov.l	@(56,r1),r1
	tst	r1,r1
	bf	.L353
	bra	.L242
	nop
.L353:
	.loc 1 562 16
	mov	r14,r5
	add	#124,r5
	mov.l	@(52,r5),r1
	mov	#32,r6
	and	r6,r1
	.loc 1 562 5
	tst	r1,r1
	bt	.L243
	.loc 1 562 5 is_stmt 0 discriminator 1
	mov	#69,r1
	bra	.L244
	nop
	.align 1
.L345:
	.short	128
.L346:
	.short	-2049
.L348:
	.align 2
.L341:
	.long	___divdf3
.L344:
	.long	-2147483648
.L347:
	.long	__ftoa
	.align 1
.L243:
	.loc 1 562 5 discriminator 2
	mov	#101,r1
.L244:
	.loc 1 562 5 discriminator 4
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r2),r2
	mov	r14,r3
	add	#64,r3
	mov	r2,r7
	add	#1,r7
	mov.l	r7,@(4,r3)
	mov	r14,r7
	add	#64,r7
	mov	r14,r5
	add	#64,r5
	mov	r14,r3
	add	#64,r3
	mov.l	@(12,r3),r3
	mov.l	@(0,r7),r7
	mov	r2,r6
	mov.l	@(8,r5),r5
	mov	r1,r4
	jsr	@r3
	nop
.LVL77:
	.loc 1 564 71 is_stmt 1 discriminator 4
	mov	r14,r1
	add	#64,r1
	mov.l	@(60,r1),r1
	cmp/pz	r1
	mov	r1,r2
	bt	.L252
	neg	r1,r2
.L252:
	.loc 1 564 11 discriminator 4
	mov	r2,r4
	mov	r14,r1
	add	#64,r1
	mov.l	@(60,r1),r1
	shll	r1
	movt	r1
	mov	r1,r0
	mov	r14,r1
	add	#64,r1
	mov.l	@(56,r1),r1
	mov	r1,r6
	add	#-1,r6
	mov	r14,r8
	add	#64,r8
	mov	r14,r7
	add	#64,r7
	mov	r14,r3
	add	#64,r3
	mov	r14,r2
	add	#64,r2
	mov	r14,r1
	add	#64,r1
	mov	#5,r5
	mov.l	r5,@(20,r15)
	mov.l	r6,@(16,r15)
	mov	#0,r6
	mov.l	r6,@(12,r15)
	mov	#10,r6
	mov.l	r6,@(8,r15)
	mov.l	r0,@(4,r15)
	mov.l	r4,@r15
	mov.l	@(0,r7),r7
	mov.l	@(4,r3),r6
	mov.l	@(8,r2),r5
	mov.l	@(12,r1),r4
	mov.l	.L349,r1
	jsr	@r1
	nop
.LVL78:
	mov	r0,r1
	mov.l	r1,@(4,r8)
	.loc 1 566 15 discriminator 4
	mov	r14,r7
	add	#124,r7
	mov.l	@(52,r7),r1
	mov	#2,r0
	and	r0,r1
	.loc 1 566 8 discriminator 4
	tst	r1,r1
	bt	.L242
	.loc 1 567 13
	bra	.L245
	nop
	.align 1
.L246:
	.loc 1 567 39 discriminator 2
	mov	r14,r1
	add	#64,r1
	mov.l	@(4,r1),r1
	mov	r14,r2
	add	#64,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(4,r2)
	mov	r14,r7
	add	#64,r7
	mov	r14,r3
	add	#64,r3
	mov	r14,r2
	add	#64,r2
	mov.l	@(12,r2),r2
	mov.l	@(0,r7),r7
	mov	r1,r6
	mov.l	@(8,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL79:
.L245:
	.loc 1 567 18 discriminator 1
	mov	r14,r1
	add	#64,r1
	mov	r14,r2
	add	#64,r2
	mov.l	@(4,r1),r1
	mov.l	@(24,r2),r2
	sub	r2,r1
	.loc 1 567 30 discriminator 1
	mov	r14,r3
	add	#124,r3
	mov.l	@(48,r3),r2
	cmp/hi	r1,r2
	bt	.L246
.L242:
	.loc 1 570 10
	mov	r14,r1
	add	#64,r1
	mov.l	@(4,r1),r1
.L247:
	.loc 1 571 1 discriminator 1
	mov	r1,r0
	add	#64,r14
	.cfi_def_cfa_offset 96
	add	#64,r14
	.cfi_def_cfa_offset 32
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 28
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 24
	mov.l	@r15+,r13
	.cfi_restore 13
	.cfi_def_cfa_offset 20
	mov.l	@r15+,r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	mov.l	@r15+,r11
	.cfi_restore 11
	.cfi_def_cfa_offset 12
	mov.l	@r15+,r10
	.cfi_restore 10
	.cfi_def_cfa_offset 8
	mov.l	@r15+,r9
	.cfi_restore 9
	.cfi_def_cfa_offset 4
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 0
	rts	
	nop
.L350:
	.align 2
.L349:
	.long	__ntoa_long
	.cfi_endproc
.LFE12:
	.size	__etoa, .-__etoa
	.align 1
	.type	__vsnprintf, @function
__vsnprintf:
.LFB13:
	.loc 1 578 1
	.cfi_startproc
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -4
	mov.l	r10,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 10, -8
	mov.l	r11,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -12
	mov.l	r12,@-r15
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov.l	r13,@-r15
	.cfi_def_cfa_offset 20
	.cfi_offset 13, -20
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 28
	.cfi_offset 17, -28
	add	#-124,r15
	.cfi_def_cfa_offset 152
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-4,r1
	mov.l	r4,@(56,r1)
	mov	r14,r1
	add	#-4,r1
	mov.l	r5,@(52,r1)
	mov	r14,r1
	add	#-4,r1
	mov.l	r6,@(48,r1)
	mov	r14,r1
	add	#-4,r1
	mov.l	r7,@(44,r1)
	.loc 1 580 10
	mov	r14,r1
	add	#60,r1
	mov	#0,r2
	mov.l	r2,@(44,r1)
	.loc 1 582 6
	mov	r14,r1
	add	#-4,r1
	mov.l	@(52,r1),r1
	tst	r1,r1
	bf	.L504
	.loc 1 584 9
	mov	r14,r1
	add	#-4,r1
	mov.l	.L459,r2
	mov.l	r2,@(56,r1)
.L504:
	.loc 1 587 9
	mov.l	r13,@-r15
	mov.w	.L529,r13
	braf	r13
	mov.l	@r15+,r13
.L529:
	.word .L356-.L529
	.align 1
.L449:
	.loc 1 590 9
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 590 8
	mov	#37,r1
	cmp/eq	r1,r2
	bt	.L357
	.loc 1 592 11 discriminator 1
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	.loc 1 592 7 discriminator 1
	mov	r1,r4
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	jsr	@r2
	nop
.LVL80:
	.loc 1 593 13 discriminator 1
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 594 7 discriminator 1
	mov.l	r13,@-r15
	mov.w	.L530,r13
	braf	r13
	mov.l	@r15+,r13
.L530:
	.word .L356-.L530
	.align 1
.L357:
	.loc 1 598 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 602 11
	mov	r14,r1
	add	#60,r1
	mov	#0,r2
	mov.l	r2,@(60,r1)
.L367:
	.loc 1 604 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	mov	r1,r7
	.loc 1 604 7
	mov	#32,r2
	mov	#16,r1
	mov	r2,r3
	mov	r1,r2
	mov	r7,r1
	sub	r3,r1
	cmp/hi	r2,r1
	bf	.L528
	bra	.L358
	nop
.L528:
	mova	.L360,r0
	shll2	r1
	mov.l	@(r0,r1),r1
	braf	r1
	nop
.L361:
.L460:
	.align 2
.L459:
	.long	__out_null
	.align 2
.L360:
	.long	.L365-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L364-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L363-.L361
	.long	.L358-.L361
	.long	.L362-.L361
	.long	.L358-.L361
	.long	.L358-.L361
	.long	.L359-.L361
	.align 1
.L359:
	.loc 1 605 25
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#1,r3
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 605 49
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 605 55
	mov	r14,r1
	add	#60,r1
	mov	#1,r2
	mov.l	r2,@(48,r1)
	.loc 1 605 61
	bra	.L366
	nop
	.align 1
.L362:
	.loc 1 606 25
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#2,r0
	or	r0,r2
	mov.l	r2,@(60,r1)
	.loc 1 606 49
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 606 55
	mov	r14,r1
	add	#60,r1
	mov	#1,r2
	mov.l	r2,@(48,r1)
	.loc 1 606 61
	bra	.L366
	nop
	.align 1
.L363:
	.loc 1 607 25
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#4,r3
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 607 49
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 607 55
	mov	r14,r1
	add	#60,r1
	mov	#1,r2
	mov.l	r2,@(48,r1)
	.loc 1 607 61
	bra	.L366
	nop
	.align 1
.L365:
	.loc 1 608 25
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#8,r0
	or	r0,r2
	mov.l	r2,@(60,r1)
	.loc 1 608 49
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 608 55
	mov	r14,r1
	add	#60,r1
	mov	#1,r2
	mov.l	r2,@(48,r1)
	.loc 1 608 61
	bra	.L366
	nop
	.align 1
.L364:
	.loc 1 609 25
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#16,r3
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 609 49
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 609 55
	mov	r14,r1
	add	#60,r1
	mov	#1,r2
	mov.l	r2,@(48,r1)
	.loc 1 609 61
	bra	.L366
	nop
	.align 1
.L358:
	.loc 1 610 55
	mov	r14,r1
	add	#60,r1
	mov	#0,r2
	mov.l	r2,@(48,r1)
	.loc 1 610 61
	nop
.L366:
	.loc 1 612 14
	mov	r14,r1
	add	#60,r1
	mov.l	@(48,r1),r1
	tst	r1,r1
	bt	.L527
	bra	.L367
	nop
.L527:
	.loc 1 615 11
	mov	r14,r1
	add	#60,r1
	mov	#0,r2
	mov.l	r2,@(56,r1)
	.loc 1 616 19
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	.loc 1 616 9
	mov	r1,r4
	mov.l	.L464,r1
	jsr	@r1
	nop
.LVL81:
	mov	r0,r1
	.loc 1 616 8
	tst	r1,r1
	bt	.L368
	.loc 1 617 15
	mov	r14,r8
	add	#60,r8
	mov	r14,r1
	add	#40,r1
	mov	r1,r4
	mov.l	.L465,r1
	jsr	@r1
	nop
.LVL82:
	mov	r0,r1
	mov.l	r1,@(56,r8)
	bra	.L369
	nop
	.align 1
.L368:
	.loc 1 619 14
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 619 13
	mov	#42,r1
	cmp/eq	r1,r2
	bf	.L369
.LBB6:
	.loc 1 620 17
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov	r14,r2
	add	#60,r2
	mov.l	@r1,r1
	mov.l	r1,@(24,r2)
	.loc 1 621 10
	mov	r14,r1
	add	#60,r1
	mov.l	@(24,r1),r1
	cmp/pz	r1
	bt	.L370
	.loc 1 622 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#2,r0
	or	r0,r2
	mov.l	r2,@(60,r1)
	.loc 1 623 31
	mov	r14,r1
	add	#60,r1
	mov.l	@(24,r1),r1
	neg	r1,r2
	.loc 1 623 15
	mov	r14,r1
	add	#60,r1
	mov.l	r2,@(56,r1)
	bra	.L371
	nop
	.align 1
.L370:
	.loc 1 626 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(24,r2),r2
	mov.l	r2,@(56,r1)
.L371:
	.loc 1 628 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
.L369:
.LBE6:
	.loc 1 632 15
	mov	r14,r1
	add	#60,r1
	mov	#0,r2
	mov.l	r2,@(52,r1)
	.loc 1 633 9
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 633 8
	mov	#46,r1
	cmp/eq	r1,r2
	bf	.L372
	.loc 1 634 13
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L463,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 635 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 636 21
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	.loc 1 636 11
	mov	r1,r4
	mov.l	.L464,r1
	jsr	@r1
	nop
.LVL83:
	mov	r0,r1
	.loc 1 636 10
	tst	r1,r1
	bt	.L373
	.loc 1 637 21
	mov	r14,r8
	add	#60,r8
	mov	r14,r1
	add	#40,r1
	mov	r1,r4
	mov.l	.L465,r1
	jsr	@r1
	nop
.LVL84:
	mov	r0,r1
	mov.l	r1,@(52,r8)
	bra	.L372
	nop
	.align 1
.L373:
	.loc 1 639 16
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 639 15
	mov	#42,r1
	cmp/eq	r1,r2
	bf	.L372
.LBB7:
	.loc 1 640 19
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov	r14,r2
	add	#60,r2
	mov.l	@r1,r1
	mov.l	r1,@(20,r2)
	.loc 1 641 51
	mov	r14,r1
	add	#60,r1
	mov.l	@(20,r1),r1
	cmp/pz	r1
	bt	.L374
	mov	#0,r1
.L374:
	.loc 1 641 19
	mov	r14,r2
	add	#60,r2
	mov.l	r1,@(52,r2)
	.loc 1 642 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
.L372:
.LBE7:
	.loc 1 647 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	mov	r1,r7
	.loc 1 647 5
	mov	#104,r2
	mov	#18,r1
	mov	r2,r3
	mov	r1,r2
	mov	r7,r1
	sub	r3,r1
	cmp/hi	r2,r1
	bf	.L526
	bra	.L453
	nop
.L526:
	mova	.L377,r0
	shll2	r1
	mov.l	@(r0,r1),r1
	braf	r1
	nop
.L378:
	.align 1
.L463:
	.short	1024
.L466:
	.align 2
.L464:
	.long	__is_digit
.L465:
	.long	__atoi
	.align 2
.L377:
	.long	.L382-.L378
	.long	.L453-.L378
	.long	.L381-.L378
	.long	.L453-.L378
	.long	.L380-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L379-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L453-.L378
	.long	.L376-.L378
	.align 1
.L380:
	.loc 1 649 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L472,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 650 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 651 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 651 12
	mov	#108,r1
	cmp/eq	r1,r2
	bf	.L508
	.loc 1 652 17
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L471,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 653 17
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
.L508:
	.loc 1 655 9
	bra	.L454
	nop
	.align 1
.L382:
	.loc 1 657 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov.w	.L469,r3
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 658 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 659 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 659 12
	mov	#104,r1
	cmp/eq	r1,r2
	bf	.L509
	.loc 1 660 17
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#64,r0
	or	r0,r2
	mov.l	r2,@(60,r1)
	.loc 1 661 17
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
.L509:
	.loc 1 663 9
	bra	.L455
	nop
	.align 1
.L379:
	.loc 1 666 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L472,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 667 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 668 9
	bra	.L384
	nop
	.align 1
.L381:
	.loc 1 671 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L471,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 672 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 673 9
	bra	.L384
	nop
	.align 1
.L376:
	.loc 1 675 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L472,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 676 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 677 9
	bra	.L384
	nop
	.align 1
.L453:
	.loc 1 679 9
	nop
	bra	.L384
	nop
	.align 1
.L454:
	.loc 1 655 9
	nop
	bra	.L384
	nop
	.align 1
.L472:
	.short	256
.L471:
	.short	512
.L469:
	.short	128
	.align 1
.L455:
	.loc 1 663 9
	nop
.L384:
	.loc 1 683 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	.loc 1 683 5
	mov	#103,r2
	cmp/gt	r2,r1
	bf	.L525
	bra	.L386
	nop
.L525:
	mov	#37,r2
	cmp/ge	r2,r1
	bt	.L387
	mov.l	r13,@-r15
	mov.w	.L531,r13
	braf	r13
	mov.l	@r15+,r13
.L531:
	.word .L388-.L531
	.align 1
.L398:
	mov	r1,r2
	add	#-105,r2
	mov	#1,r1
	shld	r2,r1
	mov.l	.L473,r2
	and	r1,r2
	tst	r2,r2
	mov	#-1,r2
	negc	r2,r2
	extu.b	r2,r2
	tst	r2,r2
	bt	.L524
	bra	.L389
	nop
.L524:
	mov.w	.L474,r2
	and	r1,r2
	tst	r2,r2
	mov	#-1,r2
	negc	r2,r2
	extu.b	r2,r2
	tst	r2,r2
	bt	.L523
	mov.l	r13,@-r15
	mov.w	.L532,r13
	braf	r13
	mov.l	@r15+,r13
.L532:
	.word .L390-.L532
.L523:
	mov.w	.L475,r2
	and	r2,r1
	tst	r1,r1
	mov	#-1,r1
	negc	r1,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L522
	bra	.L391
	nop
.L522:
.L514:
	mov.l	r13,@-r15
	mov.w	.L533,r13
	braf	r13
	mov.l	@r15+,r13
.L533:
	.word .L388-.L533
	.align 1
.L387:
	mov	#37,r3
	mov	#66,r2
	sub	r3,r1
	cmp/hi	r2,r1
	bt	.L514
	mova	.L393,r0
	shll2	r1
	mov.l	@(r0,r1),r1
	braf	r1
	nop
.L394:
	.align 1
.L474:
	.short	128
.L475:
	.short	1024
.L476:
	.align 2
.L473:
	.long	36929
	.align 2
.L393:
	.long	.L397-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L392-.L394
	.long	.L395-.L394
	.long	.L392-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L389-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L388-.L394
	.long	.L389-.L394
	.long	.L396-.L394
	.long	.L389-.L394
	.long	.L392-.L394
	.long	.L395-.L394
	.long	.L392-.L394
	.align 1
.L386:
	mov	#120,r2
	cmp/gt	r2,r1
	bt	.L515
	mov	#105,r2
	cmp/ge	r2,r1
	bf	.L521
	bra	.L398
	nop
.L521:
.L515:
	bra	.L388
	nop
	.align 1
.L389:
.LBB8:
	.loc 1 693 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 693 12
	mov	#120,r1
	cmp/eq	r1,r2
	bt	.L399
	.loc 1 693 31 discriminator 1
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 693 28 discriminator 1
	mov	#88,r1
	cmp/eq	r1,r2
	bf	.L400
.L399:
	.loc 1 694 16
	mov	r14,r1
	add	#60,r1
	mov	#16,r2
	mov.l	r2,@(40,r1)
	bra	.L401
	nop
	.align 1
.L400:
	.loc 1 696 18
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 696 17
	mov	#111,r1
	cmp/eq	r1,r2
	bf	.L402
	.loc 1 697 16
	mov	r14,r1
	add	#60,r1
	mov	#8,r2
	mov.l	r2,@(40,r1)
	bra	.L401
	nop
	.align 1
.L402:
	.loc 1 699 18
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 699 17
	mov	#98,r1
	cmp/eq	r1,r2
	bf	.L403
	.loc 1 700 16
	mov	r14,r1
	add	#60,r1
	mov	#2,r2
	mov.l	r2,@(40,r1)
	bra	.L401
	nop
	.align 1
.L403:
	.loc 1 703 16
	mov	r14,r1
	add	#60,r1
	mov	#10,r2
	mov.l	r2,@(40,r1)
	.loc 1 704 17
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov	#-17,r2
	and	r3,r2
	mov.l	r2,@(60,r1)
.L401:
	.loc 1 707 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 707 12
	mov	#88,r1
	cmp/eq	r1,r2
	bf	.L404
	.loc 1 708 17
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#32,r3
	or	r3,r2
	mov.l	r2,@(60,r1)
.L404:
	.loc 1 712 14
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 712 12
	mov	#105,r1
	cmp/eq	r1,r2
	bt	.L405
	.loc 1 712 34 discriminator 1
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 712 30 discriminator 1
	mov	#100,r1
	cmp/eq	r1,r2
	bt	.L405
	.loc 1 713 17
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov	#-13,r2
	and	r3,r2
	mov.l	r2,@(60,r1)
.L405:
	.loc 1 717 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L477,r1
	and	r2,r1
	.loc 1 717 12
	tst	r1,r1
	bt	.L406
	.loc 1 718 17
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov	#-2,r2
	and	r3,r2
	mov.l	r2,@(60,r1)
.L406:
	.loc 1 722 14
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 722 12
	mov	#105,r1
	cmp/eq	r1,r2
	bt	.L407
	.loc 1 722 34 discriminator 1
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 722 30 discriminator 1
	mov	#100,r1
	cmp/eq	r1,r2
	bt	.L520
	bra	.L408
	nop
.L520:
.L407:
	.loc 1 724 21
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L478,r1
	and	r2,r1
	.loc 1 724 14
	tst	r1,r1
	bt	.L409
.LBB9:
	.loc 1 726 29
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#8,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov	r14,r7
	add	#56,r7
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	mov.l	r2,@r7
	mov.l	r3,@(4,r7)
	.loc 1 727 61
	mov	r14,r1
	add	#56,r1
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	cmp/pz	r2
	mov	r2,r6
	mov	r3,r7
	bt	.L458
	negc	r3,r7
	negc	r2,r6
.L458:
	.loc 1 727 19
	mov	r6,r2
	mov	r7,r3
	mov	r14,r1
	add	#56,r1
	mov.l	@r1,r1
	shll	r1
	movt	r1
	extu.b	r1,r1
	mov	r1,r0
	mov	r14,r1
	add	#60,r1
	mov.l	@(40,r1),r1
	mov	r1,r11
	mov	#0,r10
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r6
	add	#60,r6
	mov	r14,r5
	add	#-4,r5
	mov	r14,r4
	add	#-4,r4
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov.l	r1,@(28,r15)
	mov	r14,r1
	add	#60,r1
	mov.l	@(56,r1),r1
	mov.l	r1,@(24,r15)
	mov	r14,r1
	add	#60,r1
	mov.l	@(52,r1),r1
	mov.l	r1,@(20,r15)
	mov.l	r10,@(12,r15)
	mov.l	r11,@(16,r15)
	mov.l	r0,@(8,r15)
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(48,r7),r7
	mov.l	@(44,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r4),r4
	mov.l	.L479,r1
	jsr	@r1
	nop
.LVL85:
	mov	r0,r1
	mov.l	r1,@(44,r8)
.LBE9:
	.loc 1 724 14
	bra	.L416
	nop
	.align 1
.L477:
	.short	1024
.L478:
	.short	512
.L480:
	.align 2
.L479:
	.long	__ntoa_long_long
	.align 1
.L409:
	.loc 1 730 26
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L481,r1
	and	r2,r1
	.loc 1 730 19
	tst	r1,r1
	bt	.L411
.LBB10:
	.loc 1 731 24
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov	r14,r2
	add	#60,r2
	mov.l	@r1,r1
	mov.l	r1,@(4,r2)
	.loc 1 732 56
	mov	r14,r1
	add	#60,r1
	mov.l	@(4,r1),r1
	cmp/pz	r1
	mov	r1,r2
	bt	.L457
	neg	r1,r2
.L457:
	.loc 1 732 19
	mov	r2,r5
	mov	r14,r1
	add	#60,r1
	mov.l	@(4,r1),r1
	shll	r1
	movt	r1
	mov	r1,r4
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#60,r3
	mov	r14,r2
	add	#-4,r2
	mov	r14,r1
	add	#-4,r1
	mov	r14,r6
	add	#60,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(20,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(56,r6),r6
	mov.l	r6,@(16,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(52,r6),r6
	mov.l	r6,@(12,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(40,r6),r6
	mov.l	r6,@(8,r15)
	mov.l	r4,@(4,r15)
	mov.l	r5,@r15
	mov.l	@(48,r7),r7
	mov.l	@(44,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L482,r1
	jsr	@r1
	nop
.LVL86:
	mov	r0,r1
	mov.l	r1,@(44,r8)
.LBE10:
	.loc 1 724 14
	bra	.L416
	nop
	.align 1
.L411:
.LBB11:
	.loc 1 735 38
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov	#64,r0
	and	r0,r1
	.loc 1 735 76
	tst	r1,r1
	bt	.L412
	.loc 1 735 60
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
	.loc 1 735 54
	exts.b	r1,r1
	bra	.L413
	nop
	.align 1
.L412:
	.loc 1 735 85 discriminator 2
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov.w	.L483,r0
	and	r0,r1
	.loc 1 735 129 discriminator 2
	tst	r1,r1
	bt	.L414
	.loc 1 735 113
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
	.loc 1 735 102
	exts.w	r1,r1
	bra	.L413
	nop
	.align 1
.L481:
	.short	256
.L483:
	.short	128
.L484:
	.align 2
.L482:
	.long	__ntoa_long
	.align 1
.L414:
	.loc 1 735 129
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
.L413:
	.loc 1 735 23 discriminator 8
	mov	r14,r2
	add	#60,r2
	mov.l	r1,@(8,r2)
	.loc 1 736 56 discriminator 8
	mov	r14,r1
	add	#60,r1
	mov.l	@(8,r1),r1
	cmp/pz	r1
	mov	r1,r2
	bt	.L456
	neg	r1,r2
.L456:
	.loc 1 736 19 discriminator 8
	mov	r2,r5
	mov	r14,r1
	add	#60,r1
	mov.l	@(8,r1),r1
	shll	r1
	movt	r1
	mov	r1,r4
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#60,r3
	mov	r14,r2
	add	#-4,r2
	mov	r14,r1
	add	#-4,r1
	mov	r14,r6
	add	#60,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(20,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(56,r6),r6
	mov.l	r6,@(16,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(52,r6),r6
	mov.l	r6,@(12,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(40,r6),r6
	mov.l	r6,@(8,r15)
	mov.l	r4,@(4,r15)
	mov.l	r5,@r15
	mov.l	@(48,r7),r7
	mov.l	@(44,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L489,r1
	jsr	@r1
	nop
.LVL87:
	mov	r0,r1
	mov.l	r1,@(44,r8)
.LBE11:
	.loc 1 724 14 discriminator 8
	bra	.L416
	nop
	.align 1
.L408:
	.loc 1 741 21
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L486,r1
	and	r2,r1
	.loc 1 741 14
	tst	r1,r1
	bt	.L417
	.loc 1 743 19
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#8,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	mov	r14,r1
	add	#60,r1
	mov.l	@(40,r1),r1
	mov	r1,r13
	mov	#0,r12
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r6
	add	#60,r6
	mov	r14,r5
	add	#-4,r5
	mov	r14,r1
	add	#-4,r1
	mov	r14,r4
	add	#60,r4
	mov.l	@(60,r4),r4
	mov.l	r4,@(28,r15)
	mov	r14,r4
	add	#60,r4
	mov.l	@(56,r4),r4
	mov.l	r4,@(24,r15)
	mov	r14,r4
	add	#60,r4
	mov.l	@(52,r4),r4
	mov.l	r4,@(20,r15)
	mov.l	r12,@(12,r15)
	mov.l	r13,@(16,r15)
	mov	#0,r4
	mov.l	r4,@(8,r15)
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(48,r7),r7
	mov.l	@(44,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r1),r4
	mov.l	.L487,r1
	jsr	@r1
	nop
.LVL88:
	mov	r0,r1
	mov.l	r1,@(44,r8)
	bra	.L416
	nop
	.align 1
.L417:
	.loc 1 746 26
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L488,r1
	and	r2,r1
	.loc 1 746 19
	tst	r1,r1
	bt	.L418
	.loc 1 747 19
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r6
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#60,r3
	mov	r14,r2
	add	#-4,r2
	mov	r14,r1
	add	#-4,r1
	mov	r14,r5
	add	#60,r5
	mov.l	@(60,r5),r5
	mov.l	r5,@(20,r15)
	mov	r14,r5
	add	#60,r5
	mov.l	@(56,r5),r5
	mov.l	r5,@(16,r15)
	mov	r14,r5
	add	#60,r5
	mov.l	@(52,r5),r5
	mov.l	r5,@(12,r15)
	mov	r14,r5
	add	#60,r5
	mov.l	@(40,r5),r5
	mov.l	r5,@(8,r15)
	mov	#0,r5
	mov.l	r5,@(4,r15)
	mov.l	r6,@r15
	mov.l	@(48,r7),r7
	mov.l	@(44,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L489,r1
	jsr	@r1
	nop
.LVL89:
	mov	r0,r1
	mov.l	r1,@(44,r8)
	bra	.L416
	nop
	.align 1
.L418:
.LBB12:
	.loc 1 750 47
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov	#64,r0
	and	r0,r1
	.loc 1 750 103
	tst	r1,r1
	bt	.L419
	.loc 1 750 78
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
	.loc 1 750 63
	extu.b	r1,r1
	bra	.L420
	nop
	.align 1
.L419:
	.loc 1 750 112 discriminator 2
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov.w	.L490,r0
	and	r0,r1
	.loc 1 750 174 discriminator 2
	tst	r1,r1
	bt	.L421
	.loc 1 750 149
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
	.loc 1 750 129
	extu.w	r1,r1
	bra	.L420
	nop
	.align 1
.L486:
	.short	512
.L488:
	.short	256
.L490:
	.short	128
.L491:
	.align 2
.L489:
	.long	__ntoa_long
.L487:
	.long	__ntoa_long_long
	.align 1
.L421:
	.loc 1 750 174
	mov	r14,r0
	add	#124,r0
	mov.l	@(28,r0),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
.L420:
	.loc 1 750 32 discriminator 8
	mov	r14,r2
	add	#60,r2
	mov.l	r1,@(12,r2)
	.loc 1 751 19 discriminator 8
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#60,r3
	mov	r14,r2
	add	#-4,r2
	mov	r14,r1
	add	#-4,r1
	mov	r14,r6
	add	#60,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(20,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(56,r6),r6
	mov.l	r6,@(16,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(52,r6),r6
	mov.l	r6,@(12,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(40,r6),r6
	mov.l	r6,@(8,r15)
	mov	#0,r6
	mov.l	r6,@(4,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(12,r6),r6
	mov.l	r6,@r15
	mov.l	@(48,r7),r7
	mov.l	@(44,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L492,r1
	jsr	@r1
	nop
.LVL90:
	mov	r0,r1
	mov.l	r1,@(44,r8)
.L416:
.LBE12:
	.loc 1 754 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 755 9
	bra	.L356
	nop
	.align 1
.L395:
.LBE8:
	.loc 1 760 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 760 12
	mov	#70,r1
	cmp/eq	r1,r2
	bf	.L423
	.loc 1 760 35 discriminator 1
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#32,r0
	or	r0,r2
	mov.l	r2,@(60,r1)
.L423:
	.loc 1 761 15
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#8,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r6
	add	#60,r6
	mov	r14,r5
	add	#-4,r5
	mov	r14,r1
	add	#-4,r1
	mov	r14,r4
	add	#60,r4
	mov.l	@(60,r4),r4
	mov.l	r4,@(16,r15)
	mov	r14,r4
	add	#60,r4
	mov.l	@(56,r4),r4
	mov.l	r4,@(12,r15)
	mov	r14,r4
	add	#60,r4
	mov.l	@(52,r4),r4
	mov.l	r4,@(8,r15)
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(48,r7),r7
	mov.l	@(44,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r1),r4
	mov.l	.L493,r1
	jsr	@r1
	nop
.LVL91:
	mov	r0,r1
	mov.l	r1,@(44,r8)
	.loc 1 762 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 763 9
	bra	.L356
	nop
	.align 1
.L392:
	.loc 1 769 14
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 769 12
	mov	#103,r1
	cmp/eq	r1,r2
	bt	.L424
	.loc 1 769 32 discriminator 2
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 769 29 discriminator 2
	mov	#71,r1
	cmp/eq	r1,r2
	bf	.L425
.L424:
	.loc 1 769 55 discriminator 3
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r3
	mov.w	.L494,r2
	or	r3,r2
	mov.l	r2,@(60,r1)
.L425:
	.loc 1 770 14
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 770 12
	mov	#69,r1
	cmp/eq	r1,r2
	bt	.L426
	.loc 1 770 32 discriminator 2
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r2
	.loc 1 770 29 discriminator 2
	mov	#71,r1
	cmp/eq	r1,r2
	bf	.L427
.L426:
	.loc 1 770 55 discriminator 3
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#32,r0
	or	r0,r2
	mov.l	r2,@(60,r1)
.L427:
	.loc 1 771 15
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#8,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r2
	mov.l	@(4,r1),r3
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r6
	add	#60,r6
	mov	r14,r5
	add	#-4,r5
	mov	r14,r1
	add	#-4,r1
	mov	r14,r4
	add	#60,r4
	mov.l	@(60,r4),r4
	mov.l	r4,@(16,r15)
	mov	r14,r4
	add	#60,r4
	mov.l	@(56,r4),r4
	mov.l	r4,@(12,r15)
	mov	r14,r4
	add	#60,r4
	mov.l	@(52,r4),r4
	mov.l	r4,@(8,r15)
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(48,r7),r7
	mov.l	@(44,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r1),r4
	mov.l	.L495,r1
	jsr	@r1
	nop
.LVL92:
	mov	r0,r1
	mov.l	r1,@(44,r8)
	.loc 1 772 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 773 9
	bra	.L356
	nop
	.align 1
.L396:
.LBB13:
	.loc 1 777 22
	mov	r14,r1
	add	#60,r1
	mov	#1,r2
	mov.l	r2,@(36,r1)
	.loc 1 779 21
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov	#2,r0
	and	r0,r1
	.loc 1 779 12
	tst	r1,r1
	bf	.L428
	.loc 1 780 17
	bra	.L429
	nop
	.align 1
.L494:
	.short	2048
.L496:
	.align 2
.L492:
	.long	__ntoa_long
.L493:
	.long	__ftoa
.L495:
	.long	__etoa
	.align 1
.L430:
	.loc 1 781 13
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL93:
.L429:
	.loc 1 780 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(36,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(36,r2)
	.loc 1 780 22
	mov	r14,r2
	add	#60,r2
	mov.l	@(56,r2),r2
	cmp/hi	r1,r2
	bt	.L430
.L428:
	.loc 1 785 19
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
	.loc 1 785 13
	exts.b	r1,r1
	.loc 1 785 9
	mov	r1,r4
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	jsr	@r2
	nop
.LVL94:
	.loc 1 787 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov	#2,r0
	and	r0,r1
	.loc 1 787 12
	tst	r1,r1
	bt	.L431
	.loc 1 788 17
	bra	.L432
	nop
	.align 1
.L433:
	.loc 1 789 13
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL95:
.L432:
	.loc 1 788 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(36,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(36,r2)
	.loc 1 788 22
	mov	r14,r2
	add	#60,r2
	mov.l	@(56,r2),r2
	cmp/hi	r1,r2
	bt	.L433
.L431:
	.loc 1 792 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 793 9
	bra	.L356
	nop
	.align 1
.L391:
.LBE13:
.LBB14:
	.loc 1 797 21
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov	r14,r2
	add	#60,r2
	mov.l	@r1,r1
	mov.l	r1,@(32,r2)
	.loc 1 798 26
	mov	r14,r1
	add	#60,r1
	mov.l	@(52,r1),r1
	tst	r1,r1
	bt	.L434
	.loc 1 798 26 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#60,r1
	mov.l	@(52,r1),r1
	bra	.L435
	nop
	.align 1
.L434:
	.loc 1 798 26 discriminator 2
	mov	#-1,r1
.L435:
	.loc 1 798 26 discriminator 4
	mov	r14,r8
	add	#60,r8
	mov	r14,r2
	add	#60,r2
	mov	r1,r5
	mov.l	@(32,r2),r4
	mov.l	.L497,r1
	jsr	@r1
	nop
.LVL96:
	mov	r0,r1
	mov.l	r1,@(28,r8)
	.loc 1 800 19 is_stmt 1 discriminator 4
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L499,r1
	and	r2,r1
	.loc 1 800 12 discriminator 4
	tst	r1,r1
	bt	.L436
	.loc 1 801 13
	mov	r14,r3
	add	#60,r3
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(28,r2),r2
	mov.l	@(52,r1),r1
	cmp/hi	r2,r1
	bf	.L437
	mov	r2,r1
.L437:
	mov.l	r1,@(28,r3)
.L436:
	.loc 1 803 21
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov	#2,r0
	and	r0,r1
	.loc 1 803 12
	tst	r1,r1
	bf	.L441
	.loc 1 804 17
	bra	.L439
	nop
	.align 1
.L440:
	.loc 1 805 13
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL97:
.L439:
	.loc 1 804 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(28,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(28,r2)
	.loc 1 804 22
	mov	r14,r2
	add	#60,r2
	mov.l	@(56,r2),r2
	cmp/hi	r1,r2
	bt	.L440
	.loc 1 809 15
	bra	.L441
	nop
	.align 1
.L443:
	.loc 1 810 18
	mov	r14,r1
	add	#60,r1
	mov.l	@(32,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(32,r2)
	.loc 1 810 15
	mov.b	@r1,r1
	.loc 1 810 11
	mov	r1,r4
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	jsr	@r2
	nop
.LVL98:
.L441:
	.loc 1 809 17
	mov	r14,r1
	add	#60,r1
	mov.l	@(32,r1),r1
	mov.b	@r1,r1
	.loc 1 809 26
	tst	r1,r1
	bt	.L442
	.loc 1 809 38 discriminator 1
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r2
	mov.w	.L499,r1
	and	r2,r1
	.loc 1 809 26 discriminator 1
	tst	r1,r1
	bt	.L443
	.loc 1 809 69 discriminator 2
	mov	r14,r1
	add	#60,r1
	mov.l	@(52,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#-1,r3
	mov.l	r3,@(52,r2)
	.loc 1 809 57 discriminator 2
	tst	r1,r1
	bf	.L443
.L442:
	.loc 1 813 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(60,r1),r1
	mov	#2,r2
	and	r2,r1
	.loc 1 813 12
	tst	r1,r1
	bt	.L444
	.loc 1 814 17
	bra	.L445
	nop
	.align 1
.L499:
	.short	1024
.L500:
	.align 2
.L497:
	.long	__strnlen_s
	.align 1
.L446:
	.loc 1 815 13
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	mov	#32,r4
	jsr	@r2
	nop
.LVL99:
.L445:
	.loc 1 814 19
	mov	r14,r1
	add	#60,r1
	mov.l	@(28,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(28,r2)
	.loc 1 814 22
	mov	r14,r2
	add	#60,r2
	mov.l	@(56,r2),r2
	cmp/hi	r1,r2
	bt	.L446
.L444:
	.loc 1 818 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 819 9
	bra	.L356
	nop
	.align 1
.L390:
.LBE14:
.LBB15:
	.loc 1 823 15
	mov	r14,r1
	add	#60,r1
	mov	#8,r2
	mov.l	r2,@(56,r1)
	.loc 1 824 15
	mov	r14,r1
	add	#60,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov	#33,r3
	or	r3,r2
	mov.l	r2,@(60,r1)
	.loc 1 826 20
	mov	r14,r1
	add	#76,r1
	mov	#0,r2
	mov	r2,r0
	mov.b	r0,@(3,r1)
	.loc 1 827 12
	mov	r14,r1
	add	#76,r1
	mov.b	@(3,r1),r0
	mov	r0,r1
	extu.b	r1,r1
	tst	r1,r1
	bt	.L447
	.loc 1 828 70
	mov	r14,r2
	add	#124,r2
	mov.l	@(28,r2),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r3
	add	#124,r3
	mov.l	r2,@(28,r3)
	mov.l	@r1,r1
	.loc 1 828 17
	mov.l	r1,@(36,r14)
	mov	#0,r0
	mov.l	r0,@(32,r14)
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r6
	add	#60,r6
	mov	r14,r5
	add	#-4,r5
	mov	r14,r1
	add	#-4,r1
	mov	r14,r2
	add	#60,r2
	mov.l	@(60,r2),r2
	mov.l	r2,@(28,r15)
	mov	r14,r2
	add	#60,r2
	mov.l	@(56,r2),r2
	mov.l	r2,@(24,r15)
	mov	r14,r2
	add	#60,r2
	mov.l	@(52,r2),r2
	mov.l	r2,@(20,r15)
	mov	#0,r2
	mov	#16,r3
	mov.l	r2,@(12,r15)
	mov.l	r3,@(16,r15)
	mov	#0,r2
	mov.l	r2,@(8,r15)
	mov.l	@(32,r14),r2
	mov.l	@(36,r14),r3
	mov.l	r2,@r15
	mov.l	r3,@(4,r15)
	mov.l	@(48,r7),r7
	mov.l	@(44,r6),r6
	mov.l	@(52,r5),r5
	mov.l	@(56,r1),r4
	mov.l	.L501,r1
	jsr	@r1
	nop
.LVL100:
	mov	r0,r1
	mov.l	r1,@(44,r8)
	bra	.L448
	nop
	.align 1
.L447:
	.loc 1 832 81
	mov	r14,r3
	add	#124,r3
	mov.l	@(28,r3),r1
	mov	r1,r2
	add	#4,r2
	mov	r14,r0
	add	#124,r0
	mov.l	r2,@(28,r0)
	mov.l	@r1,r1
	.loc 1 832 17
	mov	r1,r5
	mov	r14,r8
	add	#60,r8
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#60,r3
	mov	r14,r2
	add	#-4,r2
	mov	r14,r1
	add	#-4,r1
	mov	r14,r6
	add	#60,r6
	mov.l	@(60,r6),r6
	mov.l	r6,@(20,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(56,r6),r6
	mov.l	r6,@(16,r15)
	mov	r14,r6
	add	#60,r6
	mov.l	@(52,r6),r6
	mov.l	r6,@(12,r15)
	mov	#16,r6
	mov.l	r6,@(8,r15)
	mov	#0,r6
	mov.l	r6,@(4,r15)
	mov.l	r5,@r15
	mov.l	@(48,r7),r7
	mov.l	@(44,r3),r6
	mov.l	@(52,r2),r5
	mov.l	@(56,r1),r4
	mov.l	.L502,r1
	jsr	@r1
	nop
.LVL101:
	mov	r0,r1
	mov.l	r1,@(44,r8)
.L448:
	.loc 1 836 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 837 9
	bra	.L356
	nop
	.align 1
.L397:
.LBE15:
	.loc 1 841 9
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	mov	#37,r4
	jsr	@r2
	nop
.LVL102:
	.loc 1 842 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 843 9
	bra	.L356
	nop
	.align 1
.L388:
	.loc 1 846 13
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	.loc 1 846 9
	mov	r1,r4
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	mov	r14,r2
	add	#60,r2
	mov	r1,r3
	add	#1,r3
	mov.l	r3,@(44,r2)
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	jsr	@r2
	nop
.LVL103:
	.loc 1 847 15
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov	r1,r2
	add	#1,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	r2,@(44,r1)
	.loc 1 848 9
	nop
.L356:
	.loc 1 587 10
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r1),r1
	mov.b	@r1,r1
	tst	r1,r1
	bt	.L519
	mov.l	r13,@-r15
	mov.w	.L534,r13
	braf	r13
	mov.l	@r15+,r13
.L534:
	.word .L449-.L534
.L519:
	.loc 1 853 3
	mov	r14,r2
	add	#60,r2
	mov	r14,r1
	add	#-4,r1
	mov.l	@(44,r2),r2
	mov.l	@(48,r1),r1
	cmp/hs	r1,r2
	bf	.L450
	.loc 1 853 3 is_stmt 0 discriminator 1
	mov	r14,r1
	add	#-4,r1
	mov.l	@(48,r1),r1
	add	#-1,r1
	bra	.L451
	nop
	.align 1
.L450:
	.loc 1 853 3 discriminator 2
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
.L451:
	.loc 1 853 3 discriminator 4
	mov	r14,r7
	add	#-4,r7
	mov	r14,r3
	add	#-4,r3
	mov	r14,r2
	add	#-4,r2
	mov.l	@(56,r2),r2
	mov.l	@(48,r7),r7
	mov	r1,r6
	mov.l	@(52,r3),r5
	mov	#0,r4
	jsr	@r2
	nop
.LVL104:
	.loc 1 856 10 is_stmt 1 discriminator 4
	mov	r14,r1
	add	#60,r1
	mov.l	@(44,r1),r1
	.loc 1 857 1 discriminator 4
	mov	r1,r0
	add	#124,r14
	.cfi_def_cfa_offset 28
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 24
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 20
	mov.l	@r15+,r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	mov.l	@r15+,r12
	.cfi_restore 12
	.cfi_def_cfa_offset 12
	mov.l	@r15+,r11
	.cfi_restore 11
	.cfi_def_cfa_offset 8
	mov.l	@r15+,r10
	.cfi_restore 10
	.cfi_def_cfa_offset 4
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 0
	rts	
	nop
.L503:
	.align 2
.L501:
	.long	__ntoa_long_long
.L502:
	.long	__ntoa_long
	.cfi_endproc
.LFE13:
	.size	__vsnprintf, .-__vsnprintf
	.align 1
	.global	_printf_
	.type	_printf_, @function
_printf_:
.LFB14:
	.loc 1 863 1
	.cfi_startproc
	mov.l	r7,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	mov.l	r6,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	mov.l	r5,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 5, -12
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 16
	.cfi_offset 8, -16
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 20
	.cfi_offset 14, -20
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 24
	.cfi_offset 17, -24
	add	#-20,r15
	.cfi_def_cfa_offset 44
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-44,r1
	mov.l	r4,@(48,r1)
	.loc 1 865 3
	mov	r14,r2
	add	#32,r2
	mov	r14,r1
	add	#-44,r1
	mov.l	r2,@(56,r1)
	.loc 1 867 19
	mov	r14,r1
	add	#-44,r1
	mov.l	@(56,r1),r2
	mov	r14,r8
	add	#-44,r8
	mov	r14,r1
	add	#-44,r1
	mov	r14,r5
	add	#8,r5
	mov.l	.L537,r3
	mov.l	r2,@r15
	mov.l	@(48,r1),r7
	mov	#-1,r6
	mov	r3,r4
	mov.l	.L538,r1
	jsr	@r1
	nop
.LVL105:
	mov	r0,r1
	mov.l	r1,@(60,r8)
	.loc 1 869 10
	mov	r14,r1
	add	#-44,r1
	mov.l	@(60,r1),r1
	.loc 1 870 1
	mov	r1,r0
	add	#20,r14
	.cfi_def_cfa_offset 24
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 20
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 12
	add	#12,r15
	.cfi_def_cfa_offset 0
	rts	
	nop
.L539:
	.align 2
.L537:
	.long	__out_char
.L538:
	.long	__vsnprintf
	.cfi_endproc
.LFE14:
	.size	_printf_, .-_printf_
	.align 1
	.global	_sprintf_
	.type	_sprintf_, @function
_sprintf_:
.LFB15:
	.loc 1 874 1
	.cfi_startproc
	mov.l	r7,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	mov.l	r6,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 8, -12
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 20
	.cfi_offset 17, -20
	add	#-20,r15
	.cfi_def_cfa_offset 40
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-44,r1
	mov.l	r4,@(52,r1)
	mov	r14,r1
	add	#-44,r1
	mov.l	r5,@(48,r1)
	.loc 1 876 3
	mov	r14,r2
	add	#32,r2
	mov	r14,r1
	add	#-44,r1
	mov.l	r2,@(56,r1)
	.loc 1 877 19
	mov	r14,r1
	add	#-44,r1
	mov.l	@(56,r1),r3
	mov	r14,r8
	add	#-44,r8
	mov	r14,r2
	add	#-44,r2
	mov	r14,r1
	add	#-44,r1
	mov.l	.L542,r4
	mov.l	r3,@r15
	mov.l	@(48,r2),r7
	mov	#-1,r6
	mov.l	@(52,r1),r5
	mov.l	.L543,r1
	jsr	@r1
	nop
.LVL106:
	mov	r0,r1
	mov.l	r1,@(60,r8)
	.loc 1 879 10
	mov	r14,r1
	add	#-44,r1
	mov.l	@(60,r1),r1
	.loc 1 880 1
	mov	r1,r0
	add	#20,r14
	.cfi_def_cfa_offset 20
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 16
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 12
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 8
	add	#8,r15
	.cfi_def_cfa_offset 0
	rts	
	nop
.L544:
	.align 2
.L542:
	.long	__out_buffer
.L543:
	.long	__vsnprintf
	.cfi_endproc
.LFE15:
	.size	_sprintf_, .-_sprintf_
	.align 1
	.global	_snprintf_
	.type	_snprintf_, @function
_snprintf_:
.LFB16:
	.loc 1 884 1
	.cfi_startproc
	mov.l	r7,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -8
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -12
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -16
	add	#-24,r15
	.cfi_def_cfa_offset 40
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-40,r1
	mov.l	r4,@(52,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r5,@(48,r1)
	mov	r14,r1
	add	#-40,r1
	mov.l	r6,@(44,r1)
	.loc 1 886 3
	mov	r14,r2
	add	#36,r2
	mov	r14,r1
	add	#-40,r1
	mov.l	r2,@(56,r1)
	.loc 1 887 19
	mov	r14,r1
	add	#-40,r1
	mov.l	@(56,r1),r7
	mov	r14,r8
	add	#-40,r8
	mov	r14,r3
	add	#-40,r3
	mov	r14,r2
	add	#-40,r2
	mov	r14,r1
	add	#-40,r1
	mov.l	.L547,r4
	mov.l	r7,@r15
	mov.l	@(44,r3),r7
	mov.l	@(48,r2),r6
	mov.l	@(52,r1),r5
	mov.l	.L548,r1
	jsr	@r1
	nop
.LVL107:
	mov	r0,r1
	mov.l	r1,@(60,r8)
	.loc 1 889 10
	mov	r14,r1
	add	#-40,r1
	mov.l	@(60,r1),r1
	.loc 1 890 1
	mov	r1,r0
	add	#24,r14
	.cfi_def_cfa_offset 16
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 12
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 4
	add	#4,r15
	.cfi_def_cfa_offset 0
	rts	
	nop
.L549:
	.align 2
.L547:
	.long	__out_buffer
.L548:
	.long	__vsnprintf
	.cfi_endproc
.LFE16:
	.size	_snprintf_, .-_snprintf_
	.align 1
	.global	_vprintf_
	.type	_vprintf_, @function
_vprintf_:
.LFB17:
	.loc 1 894 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-16,r15
	.cfi_def_cfa_offset 24
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-48,r1
	mov.l	r4,@(56,r1)
	mov	r14,r1
	add	#-48,r1
	mov.l	r5,@(52,r1)
	.loc 1 896 10
	mov	r14,r1
	add	#-48,r1
	mov	r14,r5
	add	#12,r5
	mov.l	.L552,r3
	mov	r14,r2
	add	#-48,r2
	mov.l	@(52,r2),r2
	mov.l	r2,@r15
	mov.l	@(56,r1),r7
	mov	#-1,r6
	mov	r3,r4
	mov.l	.L553,r1
	jsr	@r1
	nop
.LVL108:
	mov	r0,r1
	.loc 1 897 1
	mov	r1,r0
	add	#16,r14
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
.L554:
	.align 2
.L552:
	.long	__out_char
.L553:
	.long	__vsnprintf
	.cfi_endproc
.LFE17:
	.size	_vprintf_, .-_vprintf_
	.align 1
	.global	_vsnprintf_
	.type	_vsnprintf_, @function
_vsnprintf_:
.LFB18:
	.loc 1 901 1
	.cfi_startproc
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -8
	add	#-20,r15
	.cfi_def_cfa_offset 28
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-44,r1
	mov.l	r4,@(60,r1)
	mov	r14,r1
	add	#-44,r1
	mov.l	r5,@(56,r1)
	mov	r14,r1
	add	#-44,r1
	mov.l	r6,@(52,r1)
	mov	r14,r1
	add	#-44,r1
	mov.l	r7,@(48,r1)
	.loc 1 902 10
	mov	r14,r3
	add	#-44,r3
	mov	r14,r2
	add	#-44,r2
	mov	r14,r1
	add	#-44,r1
	mov.l	.L557,r4
	mov	r14,r7
	add	#-44,r7
	mov.l	@(48,r7),r7
	mov.l	r7,@r15
	mov.l	@(52,r3),r7
	mov.l	@(56,r2),r6
	mov.l	@(60,r1),r5
	mov.l	.L558,r1
	jsr	@r1
	nop
.LVL109:
	mov	r0,r1
	.loc 1 903 1
	mov	r1,r0
	add	#20,r14
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
.L559:
	.align 2
.L557:
	.long	__out_buffer
.L558:
	.long	__vsnprintf
	.cfi_endproc
.LFE18:
	.size	_vsnprintf_, .-_vsnprintf_
	.align 1
	.global	_fctprintf
	.type	_fctprintf, @function
_fctprintf:
.LFB19:
	.loc 1 907 1
	.cfi_startproc
	mov.l	r7,@-r15
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	mov.l	r8,@-r15
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -8
	mov.l	r14,@-r15
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -12
	sts.l	pr,@-r15
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -16
	add	#-32,r15
	.cfi_def_cfa_offset 48
	mov	r15,r14
	.cfi_def_cfa_register 14
	mov	r14,r1
	add	#-32,r1
	mov.l	r4,@(44,r1)
	mov	r14,r1
	add	#-32,r1
	mov.l	r5,@(40,r1)
	mov	r14,r1
	add	#-32,r1
	mov.l	r6,@(36,r1)
	.loc 1 909 3
	mov	r14,r2
	add	#44,r2
	mov	r14,r1
	add	#-32,r1
	mov.l	r2,@(56,r1)
	.loc 1 910 27
	mov	r14,r1
	add	#-32,r1
	mov	r14,r2
	add	#-32,r2
	mov.l	@(44,r2),r2
	mov.l	r2,@(48,r1)
	mov	r14,r1
	add	#-32,r1
	mov	r14,r2
	add	#-32,r2
	mov.l	@(40,r2),r2
	mov.l	r2,@(52,r1)
	.loc 1 911 19
	mov	r14,r1
	add	#-32,r1
	mov.l	@(56,r1),r2
	mov	r14,r8
	add	#-32,r8
	mov	r14,r1
	add	#-32,r1
	mov	r14,r5
	add	#16,r5
	mov.l	.L562,r3
	mov.l	r2,@r15
	mov.l	@(36,r1),r7
	mov	#-1,r6
	mov	r3,r4
	mov.l	.L563,r1
	jsr	@r1
	nop
.LVL110:
	mov	r0,r1
	mov.l	r1,@(60,r8)
	.loc 1 913 10
	mov	r14,r1
	add	#-32,r1
	mov.l	@(60,r1),r1
	.loc 1 914 1
	mov	r1,r0
	add	#32,r14
	.cfi_def_cfa_offset 16
	mov	r14,r15
	.cfi_def_cfa_register 15
	lds.l	@r15+,pr
	.cfi_restore 17
	.cfi_def_cfa_offset 12
	mov.l	@r15+,r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	mov.l	@r15+,r8
	.cfi_restore 8
	.cfi_def_cfa_offset 4
	add	#4,r15
	.cfi_def_cfa_offset 0
	rts	
	nop
.L564:
	.align 2
.L562:
	.long	__out_fct
.L563:
	.long	__vsnprintf
	.cfi_endproc
.LFE19:
	.size	_fctprintf, .-_fctprintf
	.section	.rodata
	.align 2
	.type	_pow10.0, @object
	.size	_pow10.0, 80
_pow10.0:
	.long	1072693248
	.long	0
	.long	1076101120
	.long	0
	.long	1079574528
	.long	0
	.long	1083129856
	.long	0
	.long	1086556160
	.long	0
	.long	1090021888
	.long	0
	.long	1093567616
	.long	0
	.long	1097011920
	.long	0
	.long	1100470148
	.long	0
	.long	1104006501
	.long	0
	.text
.Letext0:
	.file 2 "/home/heath/.local/share/fxsdk/sysroot/lib/gcc/sh3eb-elf/11.1.0/include/stdint-gcc.h"
	.file 3 "/home/heath/.local/share/fxsdk/sysroot/lib/gcc/sh3eb-elf/11.1.0/include/stdarg.h"
	.file 4 "/home/heath/.local/share/fxsdk/sysroot/lib/gcc/sh3eb-elf/11.1.0/include/stddef.h"
	.file 5 "printf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.ualong	0xe6a
	.uaword	0x5
	.byte	0x1
	.byte	0x4
	.ualong	.Ldebug_abbrev0
	.uleb128 0x19
	.ualong	.LASF65
	.byte	0x1d
	.ualong	.LASF66
	.ualong	.LASF67
	.ualong	.Ltext0
	.ualong	.Letext0-.Ltext0
	.ualong	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.ualong	.LASF0
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.ualong	.LASF1
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ualong	.LASF2
	.uleb128 0xa
	.ualong	0x34
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.ualong	.LASF3
	.uleb128 0xa
	.ualong	0x40
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.ualong	.LASF4
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.ualong	.LASF5
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.ualong	.LASF6
	.uleb128 0xb
	.ualong	.LASF9
	.byte	0x2
	.byte	0x37
	.byte	0x19
	.ualong	0x6d
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.ualong	.LASF7
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.ualong	0x74
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.ualong	.LASF8
	.uleb128 0xa
	.ualong	0x80
	.uleb128 0xb
	.ualong	.LASF10
	.byte	0x2
	.byte	0x56
	.byte	0x1a
	.ualong	0x80
	.uleb128 0xb
	.ualong	.LASF11
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.ualong	0xa4
	.uleb128 0x1b
	.byte	0x4
	.ualong	.LASF68
	.uleb128 0xb
	.ualong	.LASF12
	.byte	0x3
	.byte	0x63
	.byte	0x18
	.ualong	0x98
	.uleb128 0xb
	.ualong	.LASF13
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.ualong	0x80
	.uleb128 0xa
	.ualong	0xb6
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.ualong	.LASF14
	.uleb128 0xb
	.ualong	.LASF15
	.byte	0x1
	.byte	0x7a
	.byte	0x10
	.ualong	0xda
	.uleb128 0xe
	.ualong	0xdf
	.uleb128 0x15
	.ualong	0xf9
	.uleb128 0xc
	.ualong	0xf9
	.uleb128 0xc
	.ualong	0x105
	.uleb128 0xc
	.ualong	0xb6
	.uleb128 0xc
	.ualong	0xb6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.ualong	.LASF16
	.uleb128 0xa
	.ualong	0xf9
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x1d
	.byte	0x8
	.byte	0x1
	.byte	0x7e
	.byte	0x9
	.ualong	0x129
	.uleb128 0x16
	.string	"fct"
	.byte	0x7f
	.byte	0xb
	.ualong	0x139
	.byte	0
	.uleb128 0x16
	.string	"arg"
	.byte	0x80
	.byte	0x9
	.ualong	0x105
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.ualong	0x139
	.uleb128 0xc
	.ualong	0xf9
	.uleb128 0xc
	.ualong	0x105
	.byte	0
	.uleb128 0xe
	.ualong	0x129
	.uleb128 0xb
	.ualong	.LASF17
	.byte	0x1
	.byte	0x81
	.byte	0x3
	.ualong	0x107
	.uleb128 0xa
	.ualong	0x13e
	.uleb128 0x1e
	.ualong	.LASF69
	.byte	0x5
	.byte	0x31
	.byte	0x6
	.ualong	0x161
	.uleb128 0xc
	.ualong	0xf9
	.byte	0
	.uleb128 0xd
	.ualong	.LASF20
	.uaword	0x38a
	.ualong	0x74
	.ualong	.LFB19
	.ualong	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x1de
	.uleb128 0x7
	.string	"out"
	.uaword	0x38a
	.byte	0x16
	.ualong	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.string	"arg"
	.uaword	0x38a
	.byte	0x3d
	.ualong	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x38a
	.byte	0x4e
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.uleb128 0x5
	.string	"va"
	.uaword	0x38c
	.byte	0xb
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.ualong	.LASF19
	.uaword	0x38e
	.byte	0x1b
	.ualong	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"ret"
	.uaword	0x38f
	.byte	0xd
	.ualong	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.ualong	.LVL110
	.ualong	0x3d1
	.byte	0
	.uleb128 0xe
	.ualong	0x100
	.uleb128 0xd
	.ualong	.LASF21
	.uaword	0x384
	.ualong	0x74
	.ualong	.LFB18
	.ualong	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x241
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x384
	.byte	0x16
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.ualong	.LASF23
	.uaword	0x384
	.byte	0x25
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x384
	.byte	0x38
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.string	"va"
	.uaword	0x384
	.byte	0x48
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.ualong	.LVL109
	.ualong	0x3d1
	.byte	0
	.uleb128 0xe
	.ualong	0xf9
	.uleb128 0xd
	.ualong	.LASF24
	.uaword	0x37d
	.ualong	0x74
	.ualong	.LFB17
	.ualong	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x295
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x37d
	.byte	0x1a
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.string	"va"
	.uaword	0x37d
	.byte	0x2a
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.ualong	.LASF22
	.uaword	0x37f
	.byte	0x8
	.ualong	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.ualong	.LVL108
	.ualong	0x3d1
	.byte	0
	.uleb128 0x12
	.ualong	0xf9
	.ualong	0x2a5
	.uleb128 0x13
	.ualong	0x80
	.byte	0
	.byte	0
	.uleb128 0xd
	.ualong	.LASF25
	.uaword	0x373
	.ualong	0x74
	.ualong	.LFB16
	.ualong	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x313
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x373
	.byte	0x15
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.ualong	.LASF23
	.uaword	0x373
	.byte	0x24
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x373
	.byte	0x37
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.uleb128 0x5
	.string	"va"
	.uaword	0x375
	.byte	0xb
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"ret"
	.uaword	0x377
	.byte	0xd
	.ualong	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.ualong	.LVL107
	.ualong	0x3d1
	.byte	0
	.uleb128 0xd
	.ualong	.LASF26
	.uaword	0x369
	.ualong	0x74
	.ualong	.LFB15
	.ualong	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x372
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x369
	.byte	0x14
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x369
	.byte	0x28
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.uleb128 0x5
	.string	"va"
	.uaword	0x36b
	.byte	0xb
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"ret"
	.uaword	0x36d
	.byte	0xd
	.ualong	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.ualong	.LVL106
	.ualong	0x3d1
	.byte	0
	.uleb128 0xd
	.ualong	.LASF27
	.uaword	0x35e
	.ualong	0x74
	.ualong	.LFB14
	.ualong	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x3d1
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x35e
	.byte	0x19
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.uleb128 0x5
	.string	"va"
	.uaword	0x360
	.byte	0xb
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.ualong	.LASF22
	.uaword	0x362
	.byte	0x8
	.ualong	0x295
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"ret"
	.uaword	0x363
	.byte	0xd
	.ualong	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.ualong	.LVL105
	.ualong	0x3d1
	.byte	0
	.uleb128 0x10
	.ualong	.LASF37
	.uaword	0x241
	.byte	0xc
	.ualong	0x74
	.ualong	.LFB13
	.ualong	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x63a
	.uleb128 0x7
	.string	"out"
	.uaword	0x241
	.byte	0x24
	.ualong	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x241
	.byte	0x2f
	.ualong	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.ualong	.LASF28
	.uaword	0x241
	.byte	0x44
	.ualong	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1
	.ualong	.LASF18
	.uaword	0x241
	.byte	0x58
	.ualong	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x7
	.string	"va"
	.uaword	0x241
	.byte	0x68
	.ualong	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.ualong	.LASF29
	.uaword	0x243
	.byte	0x10
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.ualong	.LASF30
	.uaword	0x243
	.byte	0x17
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.ualong	.LASF31
	.uaword	0x243
	.byte	0x1e
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.uaword	0x243
	.byte	0x29
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.string	"idx"
	.uaword	0x244
	.byte	0xa
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.ualong	.LBB6
	.ualong	.LBE6-.LBB6
	.ualong	0x49e
	.uleb128 0x5
	.string	"w"
	.uaword	0x26c
	.byte	0x11
	.ualong	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x9
	.ualong	.LBB7
	.ualong	.LBE7-.LBB7
	.ualong	0x4bc
	.uleb128 0x3
	.ualong	.LASF32
	.uaword	0x280
	.byte	0x13
	.ualong	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.ualong	.LBB8
	.ualong	.LBE8-.LBB8
	.ualong	0x587
	.uleb128 0x3
	.ualong	.LASF33
	.uaword	0x2b4
	.byte	0x16
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.ualong	.LBB9
	.ualong	.LBE9-.LBB9
	.ualong	0x4ff
	.uleb128 0x3
	.ualong	.LASF34
	.uaword	0x2d6
	.byte	0x1d
	.ualong	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.ualong	.LVL85
	.ualong	0x92a
	.byte	0
	.uleb128 0x9
	.ualong	.LBB10
	.ualong	.LBE10-.LBB10
	.ualong	0x526
	.uleb128 0x3
	.ualong	.LASF34
	.uaword	0x2db
	.byte	0x18
	.ualong	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.ualong	.LVL86
	.ualong	0xa21
	.byte	0
	.uleb128 0x9
	.ualong	.LBB11
	.ualong	.LBE11-.LBB11
	.ualong	0x54d
	.uleb128 0x3
	.ualong	.LASF34
	.uaword	0x2df
	.byte	0x17
	.ualong	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2
	.ualong	.LVL87
	.ualong	0xa21
	.byte	0
	.uleb128 0x9
	.ualong	.LBB12
	.ualong	.LBE12-.LBB12
	.ualong	0x574
	.uleb128 0x3
	.ualong	.LASF34
	.uaword	0x2ee
	.byte	0x20
	.ualong	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.ualong	.LVL90
	.ualong	0xa21
	.byte	0
	.uleb128 0x2
	.ualong	.LVL88
	.ualong	0x92a
	.uleb128 0x2
	.ualong	.LVL89
	.ualong	0xa21
	.byte	0
	.uleb128 0x9
	.ualong	.LBB13
	.ualong	.LBE13-.LBB13
	.ualong	0x5a2
	.uleb128 0x5
	.string	"l"
	.uaword	0x309
	.byte	0x16
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x9
	.ualong	.LBB14
	.ualong	.LBE14-.LBB14
	.ualong	0x5d3
	.uleb128 0x5
	.string	"p"
	.uaword	0x31d
	.byte	0x15
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"l"
	.uaword	0x31e
	.byte	0x16
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.ualong	.LVL96
	.ualong	0xcee
	.byte	0
	.uleb128 0x9
	.ualong	.LBB15
	.ualong	.LBE15-.LBB15
	.ualong	0x603
	.uleb128 0x3
	.ualong	.LASF35
	.uaword	0x33a
	.byte	0x14
	.ualong	0x641
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x2
	.ualong	.LVL100
	.ualong	0x92a
	.uleb128 0x2
	.ualong	.LVL101
	.ualong	0xa21
	.byte	0
	.uleb128 0x2
	.ualong	.LVL81
	.ualong	0xcc7
	.uleb128 0x2
	.ualong	.LVL82
	.ualong	0xc85
	.uleb128 0x2
	.ualong	.LVL83
	.ualong	0xcc7
	.uleb128 0x2
	.ualong	.LVL84
	.ualong	0xc85
	.uleb128 0x2
	.ualong	.LVL91
	.ualong	0x7a8
	.uleb128 0x2
	.ualong	.LVL92
	.ualong	0x646
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.ualong	.LASF36
	.uleb128 0xa
	.ualong	0x63a
	.uleb128 0x10
	.ualong	.LASF38
	.uaword	0x1d3
	.byte	0xf
	.ualong	0xb6
	.ualong	.LFB12
	.ualong	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x79c
	.uleb128 0x7
	.string	"out"
	.uaword	0x1d3
	.byte	0x22
	.ualong	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x1d3
	.byte	0x2d
	.ualong	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.string	"idx"
	.uaword	0x1d3
	.byte	0x3c
	.ualong	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.ualong	.LASF28
	.uaword	0x1d3
	.byte	0x48
	.ualong	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.ualong	.LASF34
	.uaword	0x1d3
	.byte	0x57
	.ualong	0x79c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ualong	.LASF32
	.uaword	0x1d3
	.byte	0x6b
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ualong	.LASF30
	.uaword	0x1d3
	.byte	0x7e
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1
	.ualong	.LASF29
	.uaword	0x1d3
	.byte	0x92
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3
	.ualong	.LASF39
	.uaword	0x1db
	.byte	0xe
	.ualong	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1f
	.byte	0x8
	.byte	0x1
	.uaword	0x1e7
	.byte	0x3
	.ualong	0x708
	.uleb128 0x17
	.string	"U"
	.uaword	0x1e8
	.ualong	0x61
	.uleb128 0x17
	.string	"F"
	.uaword	0x1e9
	.ualong	0x79c
	.byte	0
	.uleb128 0x3
	.ualong	.LASF40
	.uaword	0x1ea
	.byte	0x5
	.ualong	0x6eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.ualong	.LASF41
	.uaword	0x1ed
	.byte	0x7
	.ualong	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.ualong	.LASF42
	.uaword	0x1f0
	.byte	0x7
	.ualong	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"z"
	.uaword	0x1f3
	.byte	0x10
	.ualong	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.string	"z2"
	.uaword	0x1f4
	.byte	0x10
	.ualong	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.ualong	.LASF43
	.uaword	0x1ff
	.byte	0x10
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.ualong	.LASF44
	.uaword	0x219
	.byte	0x10
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.ualong	.LASF45
	.uaword	0x22c
	.byte	0x10
	.ualong	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.ualong	.LVL41
	.ualong	0x7a8
	.uleb128 0x2
	.ualong	.LVL76
	.ualong	0x7a8
	.uleb128 0x2
	.ualong	.LVL78
	.ualong	0xa21
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.ualong	.LASF46
	.uleb128 0xa
	.ualong	0x79c
	.uleb128 0x10
	.ualong	.LASF47
	.uaword	0x153
	.byte	0xf
	.ualong	0xb6
	.ualong	.LFB11
	.ualong	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.ualong	0x905
	.uleb128 0x7
	.string	"out"
	.uaword	0x153
	.byte	0x22
	.ualong	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x153
	.byte	0x2d
	.ualong	0x241
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.string	"idx"
	.uaword	0x153
	.byte	0x3c
	.ualong	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.ualong	.LASF28
	.uaword	0x153
	.byte	0x48
	.ualong	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.ualong	.LASF34
	.uaword	0x153
	.byte	0x57
	.ualong	0x79c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ualong	.LASF32
	.uaword	0x153
	.byte	0x6b
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ualong	.LASF30
	.uaword	0x153
	.byte	0x7e
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1
	.ualong	.LASF29
	.uaword	0x153
	.byte	0x92
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x5
	.string	"buf"
	.uaword	0x155
	.byte	0x8
	.ualong	0x905
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.string	"len"
	.uaword	0x156
	.byte	0xa
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.ualong	.LASF48
	.uaword	0x157
	.byte	0xa
	.ualong	0x79c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.ualong	.LASF49
	.uaword	0x15a
	.byte	0x17
	.ualong	0x925
	.uleb128 0x5
	.byte	0x3
	.ualong	_pow10.0
	.uleb128 0x3
	.ualong	.LASF39
	.uaword	0x16f
	.byte	0x8
	.ualong	0x63a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3
	.ualong	.LASF50
	.uaword	0x17f
	.byte	0x7
	.ualong	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"tmp"
	.uaword	0x180
	.byte	0xa
	.ualong	0x79c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.ualong	.LASF51
	.uaword	0x181
	.byte	0x11
	.ualong	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ualong	.LBB5
	.ualong	.LBE5-.LBB5
	.ualong	0x8d7
	.uleb128 0x3
	.ualong	.LASF23
	.uaword	0x19c
	.byte	0x12
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2
	.ualong	.LVL12
	.ualong	0xbd5
	.uleb128 0x2
	.ualong	.LVL14
	.ualong	0xbd5
	.uleb128 0x2
	.ualong	.LVL16
	.ualong	0xbd5
	.uleb128 0x2
	.ualong	.LVL19
	.ualong	0x646
	.uleb128 0x2
	.ualong	.LVL37
	.ualong	0xbd5
	.byte	0
	.uleb128 0x12
	.ualong	0xf9
	.ualong	0x915
	.uleb128 0x13
	.ualong	0x80
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.ualong	0x7a3
	.ualong	0x925
	.uleb128 0x13
	.ualong	0x80
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.ualong	0x915
	.uleb128 0x10
	.ualong	.LASF52
	.uaword	0x132
	.byte	0xf
	.ualong	0xb6
	.ualong	.LFB10
	.ualong	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xa21
	.uleb128 0x7
	.string	"out"
	.uaword	0x132
	.byte	0x2c
	.ualong	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x132
	.byte	0x37
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"idx"
	.uaword	0x132
	.byte	0x46
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.ualong	.LASF28
	.uaword	0x132
	.byte	0x52
	.ualong	0xb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.ualong	.LASF34
	.uaword	0x132
	.byte	0x6d
	.ualong	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ualong	.LASF39
	.uaword	0x132
	.byte	0x79
	.ualong	0x63a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.ualong	.LASF33
	.uaword	0x132
	.byte	0x96
	.ualong	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1
	.ualong	.LASF32
	.uaword	0x132
	.byte	0xa9
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1
	.ualong	.LASF30
	.uaword	0x132
	.byte	0xbc
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1
	.ualong	.LASF29
	.uaword	0x132
	.byte	0xd0
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x5
	.string	"buf"
	.uaword	0x134
	.byte	0x8
	.ualong	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"len"
	.uaword	0x135
	.byte	0xa
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.ualong	.LBB4
	.ualong	.LBE4-.LBB4
	.ualong	0xa17
	.uleb128 0x3
	.ualong	.LASF53
	.uaword	0x13f
	.byte	0x12
	.ualong	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2
	.ualong	.LVL10
	.ualong	0xb18
	.byte	0
	.uleb128 0x20
	.ualong	.LASF54
	.byte	0x1
	.uaword	0x119
	.byte	0xf
	.ualong	0xb6
	.ualong	.LFB9
	.ualong	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xb18
	.uleb128 0x7
	.string	"out"
	.uaword	0x119
	.byte	0x27
	.ualong	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.ualong	.LASF22
	.uaword	0x119
	.byte	0x32
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"idx"
	.uaword	0x119
	.byte	0x41
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.ualong	.LASF28
	.uaword	0x119
	.byte	0x4d
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.ualong	.LASF34
	.uaword	0x119
	.byte	0x63
	.ualong	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.ualong	.LASF39
	.uaword	0x119
	.byte	0x6f
	.ualong	0x63a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.ualong	.LASF33
	.uaword	0x119
	.byte	0x87
	.ualong	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.ualong	.LASF32
	.uaword	0x119
	.byte	0x9a
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1
	.ualong	.LASF30
	.uaword	0x119
	.byte	0xad
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1
	.ualong	.LASF29
	.uaword	0x119
	.byte	0xc1
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x5
	.string	"buf"
	.uaword	0x11b
	.byte	0x8
	.ualong	0x905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"len"
	.uaword	0x11c
	.byte	0xa
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.ualong	.LBB3
	.ualong	.LBE3-.LBB3
	.ualong	0xb0e
	.uleb128 0x3
	.ualong	.LASF53
	.uaword	0x126
	.byte	0x12
	.ualong	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x2
	.ualong	.LVL7
	.ualong	0xb18
	.byte	0
	.uleb128 0x11
	.ualong	.LASF55
	.byte	0xe3
	.byte	0xf
	.ualong	0xb6
	.ualong	.LFB8
	.ualong	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xbd5
	.uleb128 0x6
	.string	"out"
	.byte	0xe3
	.byte	0x29
	.ualong	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0xe3
	.byte	0x34
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.string	"idx"
	.byte	0xe3
	.byte	0x43
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.ualong	.LASF28
	.byte	0xe3
	.byte	0x4f
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"buf"
	.byte	0xe3
	.byte	0x5d
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"len"
	.byte	0xe3
	.byte	0x69
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.ualong	.LASF39
	.byte	0xe3
	.byte	0x73
	.ualong	0x63a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.ualong	.LASF33
	.byte	0xe3
	.byte	0x8a
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x4
	.ualong	.LASF32
	.byte	0xe3
	.byte	0x9d
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x4
	.ualong	.LASF30
	.byte	0xe3
	.byte	0xb0
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x4
	.ualong	.LASF29
	.byte	0xe3
	.byte	0xc4
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2
	.ualong	.LVL6
	.ualong	0xbd5
	.byte	0
	.uleb128 0x21
	.ualong	.LASF56
	.byte	0x1
	.byte	0xc7
	.byte	0xf
	.ualong	0xb6
	.ualong	.LFB7
	.ualong	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xc85
	.uleb128 0x6
	.string	"out"
	.byte	0xc7
	.byte	0x25
	.ualong	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0xc7
	.byte	0x30
	.ualong	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"idx"
	.byte	0xc7
	.byte	0x3f
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.ualong	.LASF28
	.byte	0xc7
	.byte	0x4b
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"buf"
	.byte	0xc7
	.byte	0x5f
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"len"
	.byte	0xc7
	.byte	0x6b
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x4
	.ualong	.LASF30
	.byte	0xc7
	.byte	0x7d
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x4
	.ualong	.LASF29
	.byte	0xc7
	.byte	0x91
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.ualong	.LASF45
	.byte	0x1
	.byte	0xc9
	.byte	0x10
	.ualong	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.ualong	.LBB2
	.ualong	.LBE2-.LBB2
	.uleb128 0x14
	.string	"i"
	.byte	0xcd
	.byte	0x11
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x11
	.ualong	.LASF57
	.byte	0xbc
	.byte	0x15
	.ualong	0x80
	.ualong	.LFB6
	.ualong	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xcc2
	.uleb128 0x6
	.string	"str"
	.byte	0xbc
	.byte	0x28
	.ualong	0xcc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"i"
	.byte	0xbe
	.byte	0x10
	.ualong	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2
	.ualong	.LVL2
	.ualong	0xcc7
	.byte	0
	.uleb128 0xe
	.ualong	0x1de
	.uleb128 0x11
	.ualong	.LASF58
	.byte	0xb5
	.byte	0x14
	.ualong	0x63a
	.ualong	.LFB5
	.ualong	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xcee
	.uleb128 0x6
	.string	"ch"
	.byte	0xb5
	.byte	0x23
	.ualong	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x11
	.ualong	.LASF59
	.byte	0xab
	.byte	0x1c
	.ualong	0x80
	.ualong	.LFB4
	.ualong	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xd30
	.uleb128 0x6
	.string	"str"
	.byte	0xab
	.byte	0x33
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ualong	.LASF60
	.byte	0xab
	.byte	0x3f
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.string	"s"
	.byte	0xad
	.byte	0xf
	.ualong	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x24
	.ualong	.LASF62
	.byte	0x1
	.byte	0x9f
	.byte	0x14
	.ualong	.LFB3
	.ualong	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xd7f
	.uleb128 0x4
	.ualong	.LASF61
	.byte	0x9f
	.byte	0x22
	.ualong	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0x9f
	.byte	0x33
	.ualong	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.string	"idx"
	.byte	0x9f
	.byte	0x42
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.ualong	.LASF28
	.byte	0x9f
	.byte	0x4e
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.ualong	.LASF63
	.byte	0x95
	.ualong	.LFB2
	.ualong	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xdd5
	.uleb128 0x4
	.ualong	.LASF61
	.byte	0x95
	.byte	0x23
	.ualong	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0x95
	.byte	0x34
	.ualong	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.string	"idx"
	.byte	0x95
	.byte	0x43
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4
	.ualong	.LASF28
	.byte	0x95
	.byte	0x4f
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.ualong	.LVL0
	.ualong	0x14f
	.byte	0
	.uleb128 0x18
	.ualong	.LASF64
	.byte	0x8e
	.ualong	.LFB1
	.ualong	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.ualong	0xe22
	.uleb128 0x4
	.ualong	.LASF61
	.byte	0x8e
	.byte	0x23
	.ualong	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0x8e
	.byte	0x34
	.ualong	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.string	"idx"
	.byte	0x8e
	.byte	0x43
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.ualong	.LASF28
	.byte	0x8e
	.byte	0x4f
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.ualong	.LASF70
	.byte	0x1
	.byte	0x85
	.byte	0x14
	.ualong	.LFB0
	.ualong	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.ualong	.LASF61
	.byte	0x85
	.byte	0x25
	.ualong	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x4
	.ualong	.LASF22
	.byte	0x85
	.byte	0x36
	.ualong	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.string	"idx"
	.byte	0x85
	.byte	0x45
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x4
	.ualong	.LASF28
	.byte	0x85
	.byte	0x51
	.ualong	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
.LASF27:
	.string	"printf_"
.LASF49:
	.string	"pow10"
.LASF41:
	.string	"exp2"
.LASF19:
	.string	"out_fct_wrap"
.LASF48:
	.string	"diff"
.LASF70:
	.string	"_out_buffer"
.LASF9:
	.string	"uint64_t"
.LASF1:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF43:
	.string	"minwidth"
.LASF38:
	.string	"_etoa"
.LASF63:
	.string	"_out_char"
.LASF60:
	.string	"maxsize"
.LASF12:
	.string	"va_list"
.LASF51:
	.string	"frac"
.LASF34:
	.string	"value"
.LASF62:
	.string	"_out_fct"
.LASF10:
	.string	"uintptr_t"
.LASF45:
	.string	"start_idx"
.LASF30:
	.string	"width"
.LASF20:
	.string	"fctprintf"
.LASF39:
	.string	"negative"
.LASF3:
	.string	"long long int"
.LASF2:
	.string	"long int"
.LASF33:
	.string	"base"
.LASF55:
	.string	"_ntoa_format"
.LASF47:
	.string	"_ftoa"
.LASF37:
	.string	"_vsnprintf"
.LASF64:
	.string	"_out_null"
.LASF42:
	.string	"expval"
.LASF15:
	.string	"out_fct_type"
.LASF14:
	.string	"long double"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"_ntoa_long"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"flags"
.LASF7:
	.string	"long long unsigned int"
.LASF25:
	.string	"snprintf_"
.LASF8:
	.string	"unsigned int"
.LASF21:
	.string	"vsnprintf_"
.LASF28:
	.string	"maxlen"
.LASF65:
	.string	"GNU C17 11.1.0 -m3 -mb -g -fno-pie -ffreestanding"
.LASF57:
	.string	"_atoi"
.LASF5:
	.string	"short unsigned int"
.LASF59:
	.string	"_strnlen_s"
.LASF50:
	.string	"whole"
.LASF16:
	.string	"char"
.LASF36:
	.string	"_Bool"
.LASF26:
	.string	"sprintf_"
.LASF58:
	.string	"_is_digit"
.LASF22:
	.string	"buffer"
.LASF40:
	.string	"conv"
.LASF6:
	.string	"long unsigned int"
.LASF68:
	.string	"__builtin_va_list"
.LASF46:
	.string	"double"
.LASF61:
	.string	"character"
.LASF56:
	.string	"_out_rev"
.LASF66:
	.string	"printf.c"
.LASF23:
	.string	"count"
.LASF17:
	.string	"out_fct_wrap_type"
.LASF32:
	.string	"prec"
.LASF44:
	.string	"fwidth"
.LASF11:
	.string	"__gnuc_va_list"
.LASF53:
	.string	"digit"
.LASF52:
	.string	"_ntoa_long_long"
.LASF35:
	.string	"is_ll"
.LASF69:
	.string	"_putchar"
.LASF18:
	.string	"format"
.LASF67:
	.string	"/home/heath/calc-emu-2/test"
.LASF31:
	.string	"precision"
.LASF24:
	.string	"vprintf_"
	.ident	"GCC: (GNU) 11.1.0"

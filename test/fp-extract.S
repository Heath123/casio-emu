.global ___eqsf2

___eqsf2:
  mov.l   r8,@-r15
  sts.l   pr,@-r15
  mov.l   .L1,r8
  add     #-40,r15
  mov.l   r5,@(4,r15)
  mov     r15,r5
  mov.l   r4,@r15
  add     #8,r5
  jsr     @r8
  mov     r15,r4
  mov     r15,r5
  mov     r15,r4
  add     #24,r5
  jsr     @r8
  add     #4,r4
  mov.l   @(8,r15),r2
  mov     #1,r1
  cmp/hi  r1,r2
  bf.s    .L2
  mov.l   @(24,r15),r2
  cmp/hi  r1,r2
  bf.s    .L2
  mov     r15,r5
  mov.l   .L3,r0
  mov     r15,r4
  add     #24,r5
  jsr     @r0
  add     #8,r4
  add     #40,r15
  lds.l   @r15+,pr
  rts
  mov.l   @r15+,r8
.L2:
  mov     #1,r0
  add     #40,r15
  lds.l   @r15+,pr
  rts
  mov.l   @r15+,r8
  nop
.L1:
  .long ___unpack_f
.L3:
  .long ___fpcmp_parts_f

___unpack_f:
  mov.l   @r4,r2
  mov     #-23,r3
  mov.l   .L4,r1
  mov     r2,r0
  shld    r3,r0
  mov     r2,r3
  shll    r3
  movt    r3
  mov.l   r3,@(4,r5)
  tst     #255,r0
  and     r2,r1
  bf.s    .L5
  extu.b  r0,r7
  tst     r1,r1
  bt.s    .L6
  mov     #7,r2
  mov.l   .L14,r7
  shld    r2,r1
  mov     #3,r2
  mov.l   r2,@r5
  mov     #-127,r2
  nop
.L7:
  add     r1,r1
  cmp/hi  r7,r1
  mov     r2,r3
  bf.s    .L7
  add     #-1,r2
  mov.l   r3,@(8,r5)
  rts
  mov.l   r1,@(12,r5)
.L5:
  mov.w   .L8,r3
  cmp/eq  r3,r7
  bt.s    .L9
  add     #-127,r7
  mov     #3,r2
  mov.l   r2,@r5
  mov     #7,r2
  shld    r2,r1
  mov.l   .L10,r2
  mov.l   r7,@(8,r5)
  or      r2,r1
  rts
  mov.l   r1,@(12,r5)
.L6:
  mov     #2,r1
  rts
  mov.l   r1,@r5
.L9:
  tst     r1,r1
  bf.s    .L11
  mov     #-1,r1
  mov     #4,r1
  rts
  mov.l   r1,@r5
.L11:
  mov.l   .L12,r3
  tst     r3,r2
  negc    r1,r1
  mov.l   r1,@r5
  mov     #7,r1
  shld    r1,r2
  mov.l   .L13,r1
  and     r1,r2
  rts
  mov.l   r2,@(12,r5)
.L8:
  .word 0x00ff
  nop
.L4:
  .long 0x007fffff
.L14:
  .long 0x3fffffff
.L10:
   .long 0x40000000
.L12:
  .long 0x00400000
.L13:
  .long 0x1fffff80

___fpcmp_parts_f:
  mov.l   @r4,r1
  mov     #1,r3
  cmp/hi  r3,r1
  bf      .L15
  mov.l   @r5,r2
  cmp/hi  r3,r2
  bf      .L15
  mov     r1,r0
  cmp/eq  #4,r0
  bf.s    .L16
  mov     r2,r0
  cmp/eq  #4,r0
  bt      .L17
.L16:
  mov     r1,r0
  cmp/eq  #4,r0
  bt      .L18
  mov     r2,r0
  cmp/eq  #4,r0
  bt      .L19
  mov     r1,r0
  cmp/eq  #2,r0
  bf.s    .L19
  mov     r2,r0
  cmp/eq  #2,r0
  bt      .L21
.L20:
  mov     r1,r0
  cmp/eq  #2,r0
  bt      .L19
  mov     r2,r0
  cmp/eq  #2,r0
  bt.s    .L22
  mov.l   @(4,r4),r1
  mov.l   @(4,r5),r2
  cmp/eq  r1,r2
  bf.s    .L23
  tst     r1,r1
  mov.l   @(8,r4),r3
  mov.l   @(8,r5),r1
  cmp/gt  r1,r3
  bt.s    .L24
  cmp/ge  r1,r3
  bf.s    .L25
  tst     r2,r2
  mov.l   @(12,r4),r3
  mov.l   @(12,r5),r1
  cmp/hi  r1,r3
  bt.s    .L24
  cmp/hs  r1,r3
  bf.s    .L26
  mov     #0,r0
.L27:
  rts
  nop
.L22:
  tst     r1,r1
.L23:
  bt.s    .L27
  mov     #1,r0
.L28:
  rts
  mov     #-1,r0
.L19:
  mov.l   @(4,r5),r1
  tst     r1,r1
  bt.s    .L27
  mov     #-1,r0
.L15:
  rts
  mov     #1,r0
.L26:
  tst     r2,r2
.L25:
  bt.s    .L27
  mov     #-1,r0
  bra     .L15
  nop
.L24:
  tst     r2,r2
  bt.s    .L27
  mov     #1,r0
  bra     .L28
  nop
.L18:
  mov.l   @(4,r4),r1
  tst     r1,r1
  bt.s    .L27
  mov     #1,r0
  bra     .L28:
  nop
.L21:
  rts
  mov     #0,r0
.L17:
  mov.l   @(4,r5),r0
  mov.l   @(4,r4),r1
  rts
  sub     r1,r0
  nop

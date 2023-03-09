    .extern _main
    .global initialize
   
    .section ".pretext"
    .align 2
initialize:
! Copy .data section into RAM
    mov.l v_datald, r0      ! From
    mov.l v_sdata, r2       ! To
    mov.l v_edata, r3       ! Limit
dataLoop:
    cmp/hs r3, r2
    bt dataDone             ! Stop when r2 >= r3
    mov.l @r0+, r1
    mov.l r1, @r2
    bra dataLoop
    add #4, r2              ! Delay slot
dataDone:
 
! Zero out .bss
    mov.l v_ram_ebss, r2    ! To
    mov.l v_ram_bbss, r3    ! Limit
    mov #0, r1              ! Constant
bssLoop:
    cmp/hi r3, r2
    bf bssDone              ! Stop when r2 <= r3
    nop
    bra bssLoop
    mov.b r1, @-r2          ! Delay slot
bssDone:

    ! mov.l spVal, r15
    mov.l main, r7
    jmp @r7
    nop
   

! Constants
    .align 4
spVal:
    .long 0x10000000
main:
    .long _main

v_datald:
    .long _datald
v_edata:
    .long _edata
v_sdata:
    .long _sdata
   
v_ram_bbss:
    .long _bbss
v_ram_ebss:
    .long _ebss

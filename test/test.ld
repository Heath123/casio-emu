OUTPUT_FORMAT(binary)
OUTPUT_ARCH(sh3)
 
/* Entry point.  Not really important here, since doing binary output */
ENTRY(_initialize)
 
MEMORY
{
        rom (rx) : o = 0x0, l = 960k
        ram (rwx) : o = 0xf0000, l = 32k
}
 
SECTIONS
{
        /* Code, in ROM */
        .text : {
                *(.pretext)     /* init stuff */
                *(.text)
                *(.text.*)
        } > rom
       
        /* Read-only data, in ROM */
        .rodata : {
                *(.rodata)
                *(.rodata.*)
        } > rom
       
        /* RW initialized data, VMA in RAM but LMA in ROM */
        .data : ALIGN(4) {
                _datald = LOADADDR(.data) ;
                _sdata = . ;
                *(.data)
                *(.data.*);
                _edata = . ;
        } >ram AT>rom
       
        /* Uninitialized data (fill with 0), in RAM */
        .bss : ALIGN(4) {
                _bbss = . ;
                *(.bss)
                *(.bss*)
                *(COMMON)
                _ebss = . ;
        } >ram
}

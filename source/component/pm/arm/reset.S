.globl _start
    b _start
    b .
    b .
    b .
    b .
    b .
    b .
    b .

_start:
    ldr     sp, =__end
    add     sp, sp, #0x3800

	bl      main
	
	ldr     r4, =0x101e0000
	ldr     r0, [r4, #0xa4]
	mov     pc, r0

  nop
	nop
	nop
	nop
	b .                  /* bug here */

__end:
    .word _end


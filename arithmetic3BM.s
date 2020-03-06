@Arithmetic 3

.section .data
val1: .byte -60		@ 8-bit variable var1 in memory
val2: .byte 11		@ 8-bit variable var2 in memory
val3: .byte 16		@ 8-bit variable var3 in memory


.section .text
.globl _start
_start:
	ldr r1,=val1		@load the memory address of val1 into r1
	ldrsb r1,[r1]		@load the value var1 into r1
	ldr r2,=val2		@load the memory address of val2 into r2
	ldrb r2, [r2]		@load the value var2 into r2
	ldr r3,=val3		@load the memory address of sign val3 into r3
	ldrsb r3,[r3]		@load the value val3 into r3
	add r2,r2,r3		@add r3 to r2 and store in r2
	add r2,r2, #3		@add 3 to r2 and store in r2
	sub r2, r2, r1		@subtract r1 from r2, store in r2


	mov r7,#1		@Program Termination: exit syscall
	svc #0			@Program Termination: wake kernal
.end



@fourth program

.section .data

x: .word 0
y: .word 0

.section .text
.globl _start
_start:

	ldr r1, =x
	ldr r1, [r1]

	cmp r1, #0
	bnq thenpart
	

thenpart:
	 mov r2,#1
	ldr r3, =y
	ldr r2, [r3]
endofif:
	mov r7, #1
	svc #0
	.end

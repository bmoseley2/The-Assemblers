@ Natasha Mullings
@ Control Structure Program
	@ int x;
	@ if(x <= 3)
	@ x = x-1
	@ else
	@ x = x-2
.section .data
x: .word 8	@32-bit signed integer
.section .text
.globl _start
_start:
	ldr r1,=x	@load the memory address of x into r1
	ldr r1,[r1]	@load the value x into r1
	cmp r1,#3	@
	ble thenpart	@branch (jump) if true((Z or(N xor V))==1) to the thenpart
	bgt elseofif	@branch (jump) if false((Z or(N xor V)) ==0) to the elseofif

thenpart:
	sub r2,r1,#1	@subtract 1 from x in r1 and store into r2
	bal endofif	@branch (jump) to endofif to exit code

elseofif:
	sub r2,r1,#2	@subtract 2 from x in r1 and store into r2
	bal endofif	@branch (jump) to endofif to exit code
endofif:
	mov r7,#1	@Program Termination: exit syscall
	svc #0		@Program Termination: wake kernel
	.end

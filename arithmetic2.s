@ arithmetic 2

.section .data

val1: .word 6
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
	ldr r1, =val2 @  memory adress is loaded :  11 to r1 
	ldr r1,[r1] @ value 11 is loaded to r1
        add r1, #9  @ add 9 to r1 : 20

	ldr r2,=val3 @  memory adress is loaded : 16 to r2
	ldr r2, [r2]  @ value 16 is loaded to r2
	add r1,r1, r2 @ add r2 to  r1 . Stores 36
	ldr r3,=val1 @  memory adress is loaded : 6 to r3
	ldr r3 , [r3] @ value 6 is loaded to r3
	sub r1, r3  @ substracts 6 from 36 :changes r1 to  30

	mov r7, #1  @ Program ztermination: exit syscall
	svc #0  @ Program Termination: wake kernel

.end

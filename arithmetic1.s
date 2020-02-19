@arithmetic1
.section .data
.section .text
.globl _start
_start:
        mov r1,#7 @moves 7 to r1
        mov r2,#2 @moves 2 to r2
        mov r3,#10 @moves 10 to r3
        mul r1,r2 @ Mult r1 and r2
        add r3,r3,#11 @ add 11 to r3
        sub r3,r3,r1 @subract r1 from r3

        mov r6,#1 @Program Termination: exit syscall
        svc #0 @Program Termination: wake kernel
.end



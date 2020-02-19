@arithmetic1
@Joshua Taylor
.section .data
.section .text
.globl _start
_start:
mov r1, #7	@r1 with value 7
mov r2, #2	@r2 with value 2
mul r1, r2	@multiply r1 by r2
mov r3, #10	@r3 with the value of 10
add r3, r3, #11	@adding 11 to r3
sub r3, r3, r1	@subtracting r1 from r3

mov r6, #1	@program Termination: exit syscall
svc #0		@program Termination: wake kernel
.end



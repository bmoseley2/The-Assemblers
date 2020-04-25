

.section .data
x: .word 1

.section .text
.global _start
_start:
       ldr r0, =x        @ loads the memory address of x into r0
       ldr r0, [r0]	@ loads the value x into r0
       cmp r0, #3        @comparing value of x with 3
       ble truepart      @ jump if less than equal to 3
       bgt  falsepart      @jump if greater than 3

truepart: sub r1, r0, #1 @subtracting 1 and storing in x
	  ldr r1, [r1] @ loads  the value of r1 to r1

falsepart: sub r1, r0, #2 @subtracting 1 and storing in x
	   ldr r1, [r1]   @ loads the value of r1 to r1
       mov r7, #1        @terminating
       svc #0
       .end



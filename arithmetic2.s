@arithmetic2
.section .data
val1: .word 6
val2: .word 11
val3: .word 16

.section .text
.globl _start
_start:
  ldr r1,=val2  	@loading address val2 into r1
  ldr r1,[r1]    	@loading the value into r1
  ldr r2,=val3  	@loading address val3 into r2
  ldr r2,[r2]		@loading the value into r2
  add r1, r1, r2	@adding r1 to r2 and storing the value into r1
  add r1, #9		@adding immediate 9 to r1
  ldr r2,=val1		@loading address val1 into r2
  ldr r2, [r2]		@loading the value into r2
  sub r1, r2		@subtracting r2 from r1

  mov r7, #1	@Program Termination: exit syscall
  svc #0	@Program Termination: wake kernal
.end

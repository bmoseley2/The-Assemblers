@ Natasha Mullings
@ Arithmetic 3 Program: Register = val2 + 3 + val3 - val1

.section .data
val1: .byte -60         @8-bit variable val1 in memory
val2: .byte 11          @8-bit variable val2 in memory
val3: .byte 16          @8-bit variable val3 in memory
Register: .byte 0       @8-bit variable Register in memory

.section .text
.globl _start
_start:
        ldr r0,=val1	@load the memory address of val1 into r0
	ldrsb r0,[r0]	@load the value val1 into r0 as a signed integer
	ldr r1,=val2	@load the memory address of val2 into r1
	ldrb r1,[r1]	@load the value val2 into r1 as an unsigned integer
	ldr r2,=val3	@load the memory address of val3 into r2
	ldrb r2,[r2]	@load the value val3 into r2 as  an unsiged integer
	add r1,r1,#3	@add 3 to r1 and store into r1
	add r1,r1,r2	@add r2 to r1 and store into r1
	sub r1,r1,r0	@subtract r0 from r1 and store into r1
	ldrb r0,=Register @load the memory address of Register into r0
			  @unsigned integer 
	strb r1,[r0]	@store r0 into memory Register

        mov r7,#1       @Program Termination: exit syscall
        svc #0          @Program Termination: wake kernel
 .end


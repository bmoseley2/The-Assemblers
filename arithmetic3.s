@ danne anthony

.section .data
val1: .byte -60         @8 bit variable val1 in memory
val2: .byte 11          @8 bit variable val2 in memory
val3: .byte 16          @8 bit variable val3 in memory
register: .byte 0       @8 bit variable register in memory

.section .text
.globl _start
_start:
        ldr r0,=val2	@load the memory address of val2 into r0
	ldrb r0,[r0]	@load the value val2 into r0 as a unsigned integer
	ldr r1,=val1	@load the memory address of val1 into r1
	ldrb r1,[r1]	@load the value val2 into r1 as an unsigned integer
	ldr r2,=val3	@load the memory address of val3 into r2
	ldrsb r2,[r2]	@load the value val3 into r2 as  an sign integer
	add r0,r0,#3	@add 3 to r0 and store into r0
	add r2,r2,r0	@add r0 to r2 and store into r2
	sub r2,r2,r1	@subtract r1 from r2 and store into r2
	ldr r3,=register @load the memory address of Register into r3
	strb r2,[r3]	@store r2 into register

        mov r7,#1       @Program Termination: exit syscall
        svc #0          @Program Termination: wake kernel
 .end


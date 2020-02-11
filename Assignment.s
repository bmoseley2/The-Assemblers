.section .data
.section . text
.global _start
_start:
	mov r1, #5  @moving 5 to r1
	sub r1, r1, #1 @subtract 1 from r1
	add r1, r1, #4 @add 4 to r1
	mov r7, #1 @Program TerminationL exit syscall
	svc #0 @Program Termination: wake kernal
.end

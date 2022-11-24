;Using subroutine, find the factorial of a number. 
	AREA mycode, CODE, READONLY
	ENTRY
Main
	LDR R0, =05
	BL factorial
STOP B STOP

factorial
	PUSH {R4, LR}
	MOV R4, R0
	CMP R0, #0
	BNE not_zero
	MOV R0, #1
	B last
not_zero
	SUB R0, R0, #1
	BL factorial
	MOV R1, R4
	MUL R0, R1, R0
last
	POP {R4, LR}
	BX lr
	
	END
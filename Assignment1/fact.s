;Find the factorial of a number.
	AREA mycode, CODE, READONLY
	ENTRY
Main
	MOV R0, #0x5		;number whose factorial to be found out
	MOV R1, #0x1		;initialize R1 = 1
UP	MUL R1, R0, R1		;R1 = R0 * R1
	SUB R0, R0, #1		;R0 = R0 - 1
	CMP R0, #0			;check if R0 is equal to 0
	BNE UP				;Branch if not equal
STOP B STOP
	END
	
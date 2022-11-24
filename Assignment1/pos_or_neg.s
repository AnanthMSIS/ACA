;Find whether the 32-bit number is negative or a positive number
	AREA mycode, CODE, READONLY
	ENTRY
Main
	LDR R0, =0x40000000
	LDR R1, =0x80000000
	LDR R0, [R0]
	AND R0, R0, R1			;if R0 is 0 then the number is a positive number else negative
STOP B STOP
	END
; Implement a 32-bit addition. Assume data is present in code memory.

	AREA RESET, CODE, READONLY
	ENTRY
Main
	LDR R0, =num1
	LDR R1, =num2
	LDR R0, [R0]
	LDR R1, [R1]
	ADD R0, R0, R1
	
STOP B STOP
	
num1 DCD &10101010
num2 DCD &12121212
	END
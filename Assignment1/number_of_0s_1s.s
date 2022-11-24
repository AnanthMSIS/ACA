;Consider a 32-bit number present in 0x4000 0000. Find the number of ones and zero presentin the 32-bit number.
;Store the result in 0x4000 0004 and 0x4000 0008.
	AREA mycode, CODE, READONLY
	ENTRY
Main
	LDR R0, =0x40000000		;Load address of input
	LDR R5, =0x40000004		;load address for output
	LDR R0, [R0]			;load input value from the address
	MOV R1, #32				;initialize counter for 32 bit
UP 	CMP R1, #0				;check if counter is 0 or not
	BEQ OUT					;if zero then jump to store instructions
	MOVS R0, R0, LSR #1		;do logical shift right to get msb in the carry flag
	ADDCS R2, R2, #1		;increment r2 if carry flag is 1
	ADDCC R3, R3, #1		;increment r3 if carry flag is 0
	SUB R1, R1, #1			;decrement counter
	B UP					;unconditional branching to UP
;storing values in corresponding addresses
OUT	STR R2, [R5]			
	STR R3, [R5, #4]
STOP B STOP
	END
	
		
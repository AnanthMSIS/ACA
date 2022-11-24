; Implement a 16-bit addition. Assume data is present in code memory.
	AREA mycode, CODE, READONLY
	ENTRY
Main
	LDR R0, =NUM1		;Load address of NUM1 to r0
	LDRH R1, [R0]		;Load lower half word of NUM1 to r1
	LDRH R2, [R0, #2]	;Load higher half word of NUM1 to r2
	ADD R1, R1, R2		;perform addition
STOP B STOP

NUM1 DCD &11223344		;define constant NUM1 with value 11223344
	END
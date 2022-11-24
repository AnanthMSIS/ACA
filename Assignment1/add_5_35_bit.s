;Consider an array of 5 32-numbers present from location 0x4000 0000. 
;Find the sum of these numbers and store back in 0x4000 1000
	AREA mycode, CODE, READONLY
	ENTRY
Main
	LDR R0, =0x40000000			;load first address of array
	LDR R7, =0x40001000			;load address for result
	LDM R0!, {R1-R5}			;Load multiple and save in reg R1 to R5
	ADD R1, R1, R2				; perform addition	
	ADD R1, R1, R3
	ADD R1, R1, R4
	ADD R1, R1, R5
	STR R1, [R7]				;Store the result in the given address
STOP B STOP
	END
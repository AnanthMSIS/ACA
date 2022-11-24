;Find the square root of a number present in 0x4000 0000.

	AREA my_code,CODE,READONLY
	ENTRY
Main
	MOV R0,#0x40000000
	MOV R1,#0x40000030
	LDR R0,[R0]
	MOV R2,#1		;initialize counter = 1    
	MOV R3,#1		;initialize result R3 = 1
loop CMP R3,R0 		;Compare result R3 and the actual input
	BGT OUT1
	BEQ OUT
	ADD R2,#1 		;i++
	MUL R3,R2,R2 	;result = i * i
	B loop
		
;Store the result back in 0x4000 0030    
OUT1 SUB R2, R2, #1	;if product is more than input number 
					;prev value is the square root
OUT	STR R2,[R1]
STOP B STOP
	END
	
	
	
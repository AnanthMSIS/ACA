;Find the length of the string character
	AREA    Program, CODE, READONLY
    ENTRY
Main
    LDR    R0, =Table        ; Load the address of the lookup table
    MOV    R1, #-1            ; Start count at -1
Loop
    ADD    R1, R1, #1        ; Increment count
    LDRB R2, [R0], #1    ; Load the first byte into R2
    CMP    R2, #0            ; Is it the terminator ?
    BNE    Loop            ; No => Next char
	STR    R1, CharCount        ; Store result
STOP B STOP

Table     DCB    "Hello, World", 0
    ALIGN

CharCount     DCB    0            ; Storage for count
    ALIGN
    END
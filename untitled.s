.global _start
_start:
	MOV R0, #0
	LDR R1, [R0, #0]
loop:
	LDR R3, [R1] //leer switches
	SUBS R7, R3, #0xA
	BLMI FUNC1
	BL FUNC2
	B loop

FUNC2:
	ADD R5, R0, #768
	MOV R6, #0
FUNC21:
	MOV R12, lr
	BL LOOP2
	MOV LR, R12
	SUBS R7, R6, #9
	MOVPL PC, LR
	B FUNC21

LOOP2:
	STR R5, [R1, #4]
	LSR R5, #1
	ADD R6, R6, #1
	MOV R11, LR
	LDR R4, [R0, #4]
	BL Delay
	MOV LR, R11
	MOV PC, LR

FUNC1:
	MOV R5, #3
	MOV R6, #0 //SUM
	
FUNC12:
	MOV R12, lr
	BL LOOP1
	MOV LR, R12
	SUBS R7, R6, #9
	MOVPL PC, LR
	B FUNC12

LOOP1:
	STR R5, [R1, #4]
	LSL R5, #1
	ADD R6, R6, #1
	MOV R11, LR
	LDR R4, [R0, #4]
	BL Delay
	MOV LR, R11
	MOV PC, LR

Delay:
	SUBS R4, R4, #1
	BNE Delay
	MOV PC, LR
	
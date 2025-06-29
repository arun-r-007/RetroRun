STACK SEGMENT PARA STACK
    DW 64 DUP (?)   
STACK ENDS

DATA SEGMENT PARA 'DATA'

res db ?
PROMPT db 'Enter the resolution of the art: $'

DATA ENDS

CODE SEGMENT PARA 'CODE'

	MAIN PROC FAR
		ASSUME CS:CODE, DS:DATA, SS:STACK    
		MOV AX, DATA                         
		MOV DS, AX   
		
    		MOV AX, 0A000h    ; Load VGA memory segment
    		MOV ES, AX        ; Set ES to point to VGA memory

            LEA DX, PROMPT
            MOV AH,9H
            INT 21H

            
	MAIN ENDP

	
    TWO_INPUT PROC
        MOV AH,01H
        INT 21H
            
        MOV DH , AL
        MOV 
        MUL
        MOV AH,01H
        INT 21H


	TEMPLATE PROC
    		RET
	TEMPLATE ENDP


CODE ENDS
END MAIN
HLT
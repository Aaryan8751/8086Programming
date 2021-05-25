CODE SEGMENT
    ASSUME CS:CODE
    START:
    MOV AX,2000H
    MOV DS,AX
    MOV SI,0000H
    MOV AX,[SI]
    MOV BX,[SI+4]
    MUL BX
    MOV [SI+8],AX
    MOV [SI+0AH],DX
    
    MOV AX,[SI+2]
    MOV BX,[SI+6]
    MUL BX
    MOV [SI+0CH],AX
    MOV [SI+0EH],DX
    
    MOV AX,[SI+2]
    MOV BX,[SI+4]
    MUL BX
    ADD AX,[SI+0AH]
    MOV [SI+0AH],AX
    ADC DX,[SI+0CH]
    MOV [SI+0CH],DX
    MOV AX,0000H
    ADC AX,[SI+0EH]
    MOV [SI+0EH],AX
    
    MOV AX,[SI]
    MOV BX,[SI+6]
    MUL BX
    ADD AX,[SI+0AH]
    MOV [SI+0AH],AX
    ADC DX,[SI+0CH]
    MOV [SI+0CH],DX
    MOV AX,0000H
    ADC AX,[SI+0EH]
    MOV [SI+0EH],AX
    
    INT 03H
    CODE ENDS
END START
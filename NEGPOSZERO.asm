CODE SEGMENT
    ASSUME CS:CODE
    START:
    MOV AX,4000H
    MOV DS,AX
    MOV SI,2000H
    MOV CX,0064H
    MOV BL,00H
    MOV BH,00H
    MOV DL,00H
    
    BACK:MOV AL,[SI]
    ADD AL,00H
    JZ ZERO
    ROL AL,01H
    JC NEGATIVE
    INC BH
    JMP NEXT
    
    NEGATIVE:
    INC BL
    JMP NEXT
    
    ZERO:
    INC DL
    
    NEXT:
    INC SI
    LOOP BACK
    
    MOV [SI],BX
    MOV [SI+2],DL
    INC SI
    INC SI
    INC SI
    
    INT 03H
    
    CODE ENDS
END START
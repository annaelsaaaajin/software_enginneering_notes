.global add
    mov x1, #0
add:
    add x1, x1, x0
    sub x0, x0, #1
    cmp x0, #0
    bne add
    mov x0, x1
    ret


.global add 
    MOV x1, #0
add:                
    ADD x1, x1, x0
    SUB x0, x0, #1 
    CMP x0, #0 
    BNE add 
    MOV x0, x1

RET
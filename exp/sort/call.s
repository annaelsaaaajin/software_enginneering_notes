.global sort
sort:
    mov x6, #6
loop1:
    mov x7, x6
    mov x2, x0
    mov x1, x0
loop2:
    sub x7, x7, #1
    add x2, x2, #4
    ldr w3, [x1]
    ldr w4, [x2]
    cmp w3, w4
    bls next
    str w3, [x2]
    str w4, [x1]
next:
    cmp x7, #1
    bne loop2
    add x0, x0, #4
    sub x6, x6, #1
    cmp x6, #1
    bne loop1
ret
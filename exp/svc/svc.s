.text
.global _start
_start:
    mov x0, #0
    ldr x1, =msg
    mov x2, len
    mov x8, 64
    svc #0

    mov x0, 123
    mov x8, 93
    svc #0

.data
msg:
    .ascii "Test demo\n"
    .ascii "YES\n"

len=.-msg
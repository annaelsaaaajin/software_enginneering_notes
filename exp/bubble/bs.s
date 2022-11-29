.global sort
sort:
	mov x6, #-1
	mov x9, #5
loop0:
	cmp x6, x9
	bge stop
	add x6, x6, #1
	mov x7, #-1
loop1:
	add x7, x7, #1
	add x8, x7, #1
	sub x5, x9, x6
	cmp x7, x5
	bge loop0
	mov x1, x7, lsl #2
	mov x2, x8, lsl #2
	ldr w3, [x0, x1]
	ldr w4, [x0, x2]
	cmp w3, w4
	blt loop1
swap:
	str w3, [x0, x2]
	str w4, [x0, x1]
	b loop1
stop:
	ret

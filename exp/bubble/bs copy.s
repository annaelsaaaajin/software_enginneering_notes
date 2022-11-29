.global sort
sort:
	mov x2, #-1
	mov x8, #5
loop0:
	cmp x2, x8
	bge stop
	add x2, x2, #1
	mov x3, #-1
loop1:
	add x3, x3, #1
	add x4, x3, #1
	sub x7, x8, x2
	cmp x3, x7
	bge loop0
	ldr w5, [x0, x3]
	ldr w6, [x0, x4]
	cmp w5, w6
	blt loop1
swap:
	str w5, [x0, x4]
	str w6, [x0, x3]
	b loop1
stop:
	end

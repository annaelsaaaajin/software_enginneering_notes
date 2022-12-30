
bomb：     文件格式 elf64-littleaarch64


Disassembly of section .init:

00000000004006c0 <_init>:
  4006c0:	d503201f 	nop
  4006c4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4006c8:	910003fd 	mov	x29, sp
  4006cc:	9400004e 	bl	400804 <call_weak_fn>
  4006d0:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4006d4:	d65f03c0 	ret

Disassembly of section .plt:

00000000004006e0 <.plt>:
  4006e0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  4006e4:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1dd98>
  4006e8:	f947fe11 	ldr	x17, [x16, #4088]
  4006ec:	913fe210 	add	x16, x16, #0xff8
  4006f0:	d61f0220 	br	x17
  4006f4:	d503201f 	nop
  4006f8:	d503201f 	nop
  4006fc:	d503201f 	nop

0000000000400700 <strlen@plt>:
  400700:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400704:	f9400211 	ldr	x17, [x16]
  400708:	91000210 	add	x16, x16, #0x0
  40070c:	d61f0220 	br	x17

0000000000400710 <exit@plt>:
  400710:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400714:	f9400611 	ldr	x17, [x16, #8]
  400718:	91002210 	add	x16, x16, #0x8
  40071c:	d61f0220 	br	x17

0000000000400720 <__libc_start_main@plt>:
  400720:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400724:	f9400a11 	ldr	x17, [x16, #16]
  400728:	91004210 	add	x16, x16, #0x10
  40072c:	d61f0220 	br	x17

0000000000400730 <fopen@plt>:
  400730:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400734:	f9400e11 	ldr	x17, [x16, #24]
  400738:	91006210 	add	x16, x16, #0x18
  40073c:	d61f0220 	br	x17

0000000000400740 <__gmon_start__@plt>:
  400740:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400744:	f9401211 	ldr	x17, [x16, #32]
  400748:	91008210 	add	x16, x16, #0x20
  40074c:	d61f0220 	br	x17

0000000000400750 <abort@plt>:
  400750:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400754:	f9401611 	ldr	x17, [x16, #40]
  400758:	9100a210 	add	x16, x16, #0x28
  40075c:	d61f0220 	br	x17

0000000000400760 <puts@plt>:
  400760:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400764:	f9401a11 	ldr	x17, [x16, #48]
  400768:	9100c210 	add	x16, x16, #0x30
  40076c:	d61f0220 	br	x17

0000000000400770 <strcmp@plt>:
  400770:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400774:	f9401e11 	ldr	x17, [x16, #56]
  400778:	9100e210 	add	x16, x16, #0x38
  40077c:	d61f0220 	br	x17

0000000000400780 <__isoc99_sscanf@plt>:
  400780:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400784:	f9402211 	ldr	x17, [x16, #64]
  400788:	91010210 	add	x16, x16, #0x40
  40078c:	d61f0220 	br	x17

0000000000400790 <printf@plt>:
  400790:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  400794:	f9402611 	ldr	x17, [x16, #72]
  400798:	91012210 	add	x16, x16, #0x48
  40079c:	d61f0220 	br	x17

00000000004007a0 <fgets@plt>:
  4007a0:	90000110 	adrp	x16, 420000 <strlen@GLIBC_2.17>
  4007a4:	f9402a11 	ldr	x17, [x16, #80]
  4007a8:	91014210 	add	x16, x16, #0x50
  4007ac:	d61f0220 	br	x17

Disassembly of section .text:

00000000004007c0 <_start>:
  4007c0:	d503201f 	nop
  4007c4:	d280001d 	mov	x29, #0x0                   	// #0
  4007c8:	d280001e 	mov	x30, #0x0                   	// #0
  4007cc:	aa0003e5 	mov	x5, x0
  4007d0:	f94003e1 	ldr	x1, [sp]
  4007d4:	910023e2 	add	x2, sp, #0x8
  4007d8:	910003e6 	mov	x6, sp
  4007dc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4007e0:	911fd000 	add	x0, x0, #0x7f4
  4007e4:	d2800003 	mov	x3, #0x0                   	// #0
  4007e8:	d2800004 	mov	x4, #0x0                   	// #0
  4007ec:	97ffffcd 	bl	400720 <__libc_start_main@plt>
  4007f0:	97ffffd8 	bl	400750 <abort@plt>

00000000004007f4 <__wrap_main>:
  4007f4:	d503201f 	nop
  4007f8:	1400015a 	b	400d60 <main>
  4007fc:	d503201f 	nop

0000000000400800 <_dl_relocate_static_pie>:
  400800:	d65f03c0 	ret

0000000000400804 <call_weak_fn>:
  400804:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1dd98>
  400808:	f947ec00 	ldr	x0, [x0, #4056]
  40080c:	b4000040 	cbz	x0, 400814 <call_weak_fn+0x10>
  400810:	17ffffcc 	b	400740 <__gmon_start__@plt>
  400814:	d65f03c0 	ret
  400818:	d503201f 	nop
  40081c:	d503201f 	nop

0000000000400820 <deregister_tm_clones>:
  400820:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400824:	9101e000 	add	x0, x0, #0x78
  400828:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  40082c:	9101e021 	add	x1, x1, #0x78
  400830:	eb00003f 	cmp	x1, x0
  400834:	540000c0 	b.eq	40084c <deregister_tm_clones+0x2c>  // b.none
  400838:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1dd98>
  40083c:	f947e821 	ldr	x1, [x1, #4048]
  400840:	b4000061 	cbz	x1, 40084c <deregister_tm_clones+0x2c>
  400844:	aa0103f0 	mov	x16, x1
  400848:	d61f0200 	br	x16
  40084c:	d65f03c0 	ret

0000000000400850 <register_tm_clones>:
  400850:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400854:	9101e000 	add	x0, x0, #0x78
  400858:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  40085c:	9101e021 	add	x1, x1, #0x78
  400860:	cb000021 	sub	x1, x1, x0
  400864:	d37ffc22 	lsr	x2, x1, #63
  400868:	8b810c41 	add	x1, x2, x1, asr #3
  40086c:	9341fc21 	asr	x1, x1, #1
  400870:	b40000c1 	cbz	x1, 400888 <register_tm_clones+0x38>
  400874:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1dd98>
  400878:	f947f042 	ldr	x2, [x2, #4064]
  40087c:	b4000062 	cbz	x2, 400888 <register_tm_clones+0x38>
  400880:	aa0203f0 	mov	x16, x2
  400884:	d61f0200 	br	x16
  400888:	d65f03c0 	ret
  40088c:	d503201f 	nop

0000000000400890 <__do_global_dtors_aux>:
  400890:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400894:	910003fd 	mov	x29, sp
  400898:	f9000bf3 	str	x19, [sp, #16]
  40089c:	90000113 	adrp	x19, 420000 <strlen@GLIBC_2.17>
  4008a0:	39420260 	ldrb	w0, [x19, #128]
  4008a4:	35000080 	cbnz	w0, 4008b4 <__do_global_dtors_aux+0x24>
  4008a8:	97ffffde 	bl	400820 <deregister_tm_clones>
  4008ac:	52800020 	mov	w0, #0x1                   	// #1
  4008b0:	39020260 	strb	w0, [x19, #128]
  4008b4:	f9400bf3 	ldr	x19, [sp, #16]
  4008b8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4008bc:	d65f03c0 	ret

00000000004008c0 <frame_dummy>:
  4008c0:	17ffffe4 	b	400850 <register_tm_clones>

00000000004008c4 <read>:
  4008c4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4008c8:	910003fd 	mov	x29, sp
  4008cc:	b9001fff 	str	wzr, [sp, #28]
  4008d0:	14000013 	b	40091c <read+0x58>
  4008d4:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008d8:	aa0103e0 	mov	x0, x1
  4008dc:	d37ef400 	lsl	x0, x0, #2
  4008e0:	8b010000 	add	x0, x0, x1
  4008e4:	d37cec00 	lsl	x0, x0, #4
  4008e8:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  4008ec:	91024021 	add	x1, x1, #0x90
  4008f0:	8b010003 	add	x3, x0, x1
  4008f4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  4008f8:	91022000 	add	x0, x0, #0x88
  4008fc:	f9400000 	ldr	x0, [x0]
  400900:	aa0003e2 	mov	x2, x0
  400904:	52800a01 	mov	w1, #0x50                  	// #80
  400908:	aa0303e0 	mov	x0, x3
  40090c:	97ffffa5 	bl	4007a0 <fgets@plt>
  400910:	b9401fe0 	ldr	w0, [sp, #28]
  400914:	11000400 	add	w0, w0, #0x1
  400918:	b9001fe0 	str	w0, [sp, #28]
  40091c:	b9401fe0 	ldr	w0, [sp, #28]
  400920:	7100081f 	cmp	w0, #0x2
  400924:	54fffd8d 	b.le	4008d4 <read+0x10>
  400928:	b9001bff 	str	wzr, [sp, #24]
  40092c:	14000018 	b	40098c <read+0xc8>
  400930:	b9801be1 	ldrsw	x1, [sp, #24]
  400934:	aa0103e0 	mov	x0, x1
  400938:	d37ef400 	lsl	x0, x0, #2
  40093c:	8b010000 	add	x0, x0, x1
  400940:	d37cec00 	lsl	x0, x0, #4
  400944:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  400948:	91024021 	add	x1, x1, #0x90
  40094c:	8b010000 	add	x0, x0, x1
  400950:	97ffff6c 	bl	400700 <strlen@plt>
  400954:	d1000402 	sub	x2, x0, #0x1
  400958:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  40095c:	91024003 	add	x3, x0, #0x90
  400960:	b9801be1 	ldrsw	x1, [sp, #24]
  400964:	aa0103e0 	mov	x0, x1
  400968:	d37ef400 	lsl	x0, x0, #2
  40096c:	8b010000 	add	x0, x0, x1
  400970:	d37cec00 	lsl	x0, x0, #4
  400974:	8b000060 	add	x0, x3, x0
  400978:	8b020000 	add	x0, x0, x2
  40097c:	3900001f 	strb	wzr, [x0]
  400980:	b9401be0 	ldr	w0, [sp, #24]
  400984:	11000400 	add	w0, w0, #0x1
  400988:	b9001be0 	str	w0, [sp, #24]
  40098c:	b9401be0 	ldr	w0, [sp, #24]
  400990:	7100081f 	cmp	w0, #0x2
  400994:	54fffced 	b.le	400930 <read+0x6c>
  400998:	d503201f 	nop
  40099c:	d503201f 	nop
  4009a0:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4009a4:	d65f03c0 	ret

00000000004009a8 <print>:
  4009a8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4009ac:	910003fd 	mov	x29, sp
  4009b0:	b9001fff 	str	wzr, [sp, #28]
  4009b4:	1400000d 	b	4009e8 <print+0x40>
  4009b8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009bc:	aa0103e0 	mov	x0, x1
  4009c0:	d37ef400 	lsl	x0, x0, #2
  4009c4:	8b010000 	add	x0, x0, x1
  4009c8:	d37cec00 	lsl	x0, x0, #4
  4009cc:	90000101 	adrp	x1, 420000 <strlen@GLIBC_2.17>
  4009d0:	91024021 	add	x1, x1, #0x90
  4009d4:	8b010000 	add	x0, x0, x1
  4009d8:	97ffff62 	bl	400760 <puts@plt>
  4009dc:	b9401fe0 	ldr	w0, [sp, #28]
  4009e0:	11000400 	add	w0, w0, #0x1
  4009e4:	b9001fe0 	str	w0, [sp, #28]
  4009e8:	b9401fe0 	ldr	w0, [sp, #28]
  4009ec:	7100081f 	cmp	w0, #0x2
  4009f0:	54fffe4d 	b.le	4009b8 <print+0x10>
  4009f4:	d503201f 	nop
  4009f8:	d503201f 	nop
  4009fc:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400a00:	d65f03c0 	ret

0000000000400a04 <defuse_failed>:
  400a04:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400a08:	910003fd 	mov	x29, sp
  400a0c:	b9001fe0 	str	w0, [sp, #28]
  400a10:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400a14:	91060000 	add	x0, x0, #0x180
  400a18:	b9400000 	ldr	w0, [x0]
  400a1c:	2a0003e2 	mov	w2, w0
  400a20:	b9401fe1 	ldr	w1, [sp, #28]
  400a24:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400a28:	913a8000 	add	x0, x0, #0xea0
  400a2c:	97ffff59 	bl	400790 <printf@plt>
  400a30:	52800000 	mov	w0, #0x0                   	// #0
  400a34:	97ffff37 	bl	400710 <exit@plt>

0000000000400a38 <defuse_success>:
  400a38:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400a3c:	910003fd 	mov	x29, sp
  400a40:	b9001fe0 	str	w0, [sp, #28]
  400a44:	b9401fe0 	ldr	w0, [sp, #28]
  400a48:	51000401 	sub	w1, w0, #0x1
  400a4c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400a50:	9101a000 	add	x0, x0, #0x68
  400a54:	93407c21 	sxtw	x1, w1
  400a58:	b8617801 	ldr	w1, [x0, x1, lsl #2]
  400a5c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400a60:	91060000 	add	x0, x0, #0x180
  400a64:	b9400000 	ldr	w0, [x0]
  400a68:	0b000021 	add	w1, w1, w0
  400a6c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400a70:	91060000 	add	x0, x0, #0x180
  400a74:	b9000001 	str	w1, [x0]
  400a78:	b9401fe0 	ldr	w0, [sp, #28]
  400a7c:	51000401 	sub	w1, w0, #0x1
  400a80:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400a84:	9101a000 	add	x0, x0, #0x68
  400a88:	93407c21 	sxtw	x1, w1
  400a8c:	b8617800 	ldr	w0, [x0, x1, lsl #2]
  400a90:	2a0003e2 	mov	w2, w0
  400a94:	b9401fe1 	ldr	w1, [sp, #28]
  400a98:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400a9c:	913b8000 	add	x0, x0, #0xee0
  400aa0:	97ffff3c 	bl	400790 <printf@plt>
  400aa4:	d503201f 	nop
  400aa8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400aac:	d65f03c0 	ret

0000000000400ab0 <phase1>:
  400ab0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400ab4:	910003fd 	mov	x29, sp
  400ab8:	f9000fe0 	str	x0, [sp, #24]
  400abc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400ac0:	913c6001 	add	x1, x0, #0xf18
  400ac4:	f9400fe0 	ldr	x0, [sp, #24]
  400ac8:	97ffff2a 	bl	400770 <strcmp@plt>
  400acc:	7100001f 	cmp	w0, #0x0
  400ad0:	54000081 	b.ne	400ae0 <phase1+0x30>  // b.any
  400ad4:	52800020 	mov	w0, #0x1                   	// #1
  400ad8:	97ffffd8 	bl	400a38 <defuse_success>
  400adc:	14000003 	b	400ae8 <phase1+0x38>
  400ae0:	52800020 	mov	w0, #0x1                   	// #1
  400ae4:	97ffffc8 	bl	400a04 <defuse_failed>
  400ae8:	d503201f 	nop
  400aec:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400af0:	d65f03c0 	ret

0000000000400af4 <phase2_check>:
  400af4:	d10083ff 	sub	sp, sp, #0x20
  400af8:	f90007e0 	str	x0, [sp, #8]
  400afc:	b9001fff 	str	wzr, [sp, #28]
  400b00:	52800020 	mov	w0, #0x1                   	// #1
  400b04:	b9001be0 	str	w0, [sp, #24]
  400b08:	1400001a 	b	400b70 <phase2_check+0x7c>
  400b0c:	b9801fe0 	ldrsw	x0, [sp, #28]
  400b10:	91000800 	add	x0, x0, #0x2
  400b14:	d37ef400 	lsl	x0, x0, #2
  400b18:	f94007e1 	ldr	x1, [sp, #8]
  400b1c:	8b000020 	add	x0, x1, x0
  400b20:	b9400001 	ldr	w1, [x0]
  400b24:	b9801fe0 	ldrsw	x0, [sp, #28]
  400b28:	91000400 	add	x0, x0, #0x1
  400b2c:	d37ef400 	lsl	x0, x0, #2
  400b30:	f94007e2 	ldr	x2, [sp, #8]
  400b34:	8b000040 	add	x0, x2, x0
  400b38:	b9400002 	ldr	w2, [x0]
  400b3c:	b9801fe0 	ldrsw	x0, [sp, #28]
  400b40:	d37ef400 	lsl	x0, x0, #2
  400b44:	f94007e3 	ldr	x3, [sp, #8]
  400b48:	8b000060 	add	x0, x3, x0
  400b4c:	b9400000 	ldr	w0, [x0]
  400b50:	0b000040 	add	w0, w2, w0
  400b54:	6b00003f 	cmp	w1, w0
  400b58:	54000060 	b.eq	400b64 <phase2_check+0x70>  // b.none
  400b5c:	b9001bff 	str	wzr, [sp, #24]
  400b60:	14000007 	b	400b7c <phase2_check+0x88>
  400b64:	b9401fe0 	ldr	w0, [sp, #28]
  400b68:	11000400 	add	w0, w0, #0x1
  400b6c:	b9001fe0 	str	w0, [sp, #28]
  400b70:	b9401fe0 	ldr	w0, [sp, #28]
  400b74:	71000c1f 	cmp	w0, #0x3
  400b78:	54fffcad 	b.le	400b0c <phase2_check+0x18>
  400b7c:	b9401be0 	ldr	w0, [sp, #24]
  400b80:	910083ff 	add	sp, sp, #0x20
  400b84:	d65f03c0 	ret

0000000000400b88 <phase2>:
  400b88:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400b8c:	910003fd 	mov	x29, sp
  400b90:	f9000fe0 	str	x0, [sp, #24]
  400b94:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400b98:	91067007 	add	x7, x0, #0x19c
  400b9c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400ba0:	91066006 	add	x6, x0, #0x198
  400ba4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400ba8:	91065005 	add	x5, x0, #0x194
  400bac:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400bb0:	91064004 	add	x4, x0, #0x190
  400bb4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400bb8:	91063003 	add	x3, x0, #0x18c
  400bbc:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400bc0:	91062002 	add	x2, x0, #0x188
  400bc4:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400bc8:	913da001 	add	x1, x0, #0xf68
  400bcc:	f9400fe0 	ldr	x0, [sp, #24]
  400bd0:	97fffeec 	bl	400780 <__isoc99_sscanf@plt>
  400bd4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400bd8:	91062000 	add	x0, x0, #0x188
  400bdc:	b9400000 	ldr	w0, [x0]
  400be0:	7100041f 	cmp	w0, #0x1
  400be4:	54000060 	b.eq	400bf0 <phase2+0x68>  // b.none
  400be8:	52800040 	mov	w0, #0x2                   	// #2
  400bec:	97ffff86 	bl	400a04 <defuse_failed>
  400bf0:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400bf4:	91062000 	add	x0, x0, #0x188
  400bf8:	b9400400 	ldr	w0, [x0, #4]
  400bfc:	7100041f 	cmp	w0, #0x1
  400c00:	54000060 	b.eq	400c0c <phase2+0x84>  // b.none
  400c04:	52800040 	mov	w0, #0x2                   	// #2
  400c08:	97ffff7f 	bl	400a04 <defuse_failed>
  400c0c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400c10:	91062000 	add	x0, x0, #0x188
  400c14:	97ffffb8 	bl	400af4 <phase2_check>
  400c18:	7100001f 	cmp	w0, #0x0
  400c1c:	54000080 	b.eq	400c2c <phase2+0xa4>  // b.none
  400c20:	52800040 	mov	w0, #0x2                   	// #2
  400c24:	97ffff85 	bl	400a38 <defuse_success>
  400c28:	14000003 	b	400c34 <phase2+0xac>
  400c2c:	52800040 	mov	w0, #0x2                   	// #2
  400c30:	97ffff75 	bl	400a04 <defuse_failed>
  400c34:	d503201f 	nop
  400c38:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400c3c:	d65f03c0 	ret

0000000000400c40 <phase3_check>:
  400c40:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400c44:	910003fd 	mov	x29, sp
  400c48:	f9000fe0 	str	x0, [sp, #24]
  400c4c:	b90017e1 	str	w1, [sp, #20]
  400c50:	b94017e0 	ldr	w0, [sp, #20]
  400c54:	7100001f 	cmp	w0, #0x0
  400c58:	54000061 	b.ne	400c64 <phase3_check+0x24>  // b.any
  400c5c:	52800020 	mov	w0, #0x1                   	// #1
  400c60:	14000016 	b	400cb8 <phase3_check+0x78>
  400c64:	b98017e0 	ldrsw	x0, [sp, #20]
  400c68:	d37ef400 	lsl	x0, x0, #2
  400c6c:	f9400fe1 	ldr	x1, [sp, #24]
  400c70:	8b000020 	add	x0, x1, x0
  400c74:	b9400001 	ldr	w1, [x0]
  400c78:	b98017e0 	ldrsw	x0, [sp, #20]
  400c7c:	d37ef400 	lsl	x0, x0, #2
  400c80:	d1001000 	sub	x0, x0, #0x4
  400c84:	f9400fe2 	ldr	x2, [sp, #24]
  400c88:	8b000040 	add	x0, x2, x0
  400c8c:	b9400000 	ldr	w0, [x0]
  400c90:	531f7800 	lsl	w0, w0, #1
  400c94:	6b00003f 	cmp	w1, w0
  400c98:	540000e1 	b.ne	400cb4 <phase3_check+0x74>  // b.any
  400c9c:	b94017e0 	ldr	w0, [sp, #20]
  400ca0:	51000400 	sub	w0, w0, #0x1
  400ca4:	2a0003e1 	mov	w1, w0
  400ca8:	f9400fe0 	ldr	x0, [sp, #24]
  400cac:	97ffffe5 	bl	400c40 <phase3_check>
  400cb0:	14000002 	b	400cb8 <phase3_check+0x78>
  400cb4:	52800000 	mov	w0, #0x0                   	// #0
  400cb8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400cbc:	d65f03c0 	ret

0000000000400cc0 <phase3>:
  400cc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400cc4:	910003fd 	mov	x29, sp
  400cc8:	f9000fe0 	str	x0, [sp, #24]
  400ccc:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400cd0:	9106d007 	add	x7, x0, #0x1b4
  400cd4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400cd8:	9106c006 	add	x6, x0, #0x1b0
  400cdc:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400ce0:	9106b005 	add	x5, x0, #0x1ac
  400ce4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400ce8:	9106a004 	add	x4, x0, #0x1a8
  400cec:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400cf0:	91069003 	add	x3, x0, #0x1a4
  400cf4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400cf8:	91068002 	add	x2, x0, #0x1a0
  400cfc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400d00:	913da001 	add	x1, x0, #0xf68
  400d04:	f9400fe0 	ldr	x0, [sp, #24]
  400d08:	97fffe9e 	bl	400780 <__isoc99_sscanf@plt>
  400d0c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400d10:	91068000 	add	x0, x0, #0x1a0
  400d14:	b9400000 	ldr	w0, [x0]
  400d18:	7100041f 	cmp	w0, #0x1
  400d1c:	54000060 	b.eq	400d28 <phase3+0x68>  // b.none
  400d20:	52800060 	mov	w0, #0x3                   	// #3
  400d24:	97ffff38 	bl	400a04 <defuse_failed>
  400d28:	528000a1 	mov	w1, #0x5                   	// #5
  400d2c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400d30:	91068000 	add	x0, x0, #0x1a0
  400d34:	97ffffc3 	bl	400c40 <phase3_check>
  400d38:	7100001f 	cmp	w0, #0x0
  400d3c:	54000080 	b.eq	400d4c <phase3+0x8c>  // b.none
  400d40:	52800060 	mov	w0, #0x3                   	// #3
  400d44:	97ffff3d 	bl	400a38 <defuse_success>
  400d48:	14000003 	b	400d54 <phase3+0x94>
  400d4c:	52800060 	mov	w0, #0x3                   	// #3
  400d50:	97ffff2d 	bl	400a04 <defuse_failed>
  400d54:	d503201f 	nop
  400d58:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400d5c:	d65f03c0 	ret

0000000000400d60 <main>:
  400d60:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400d64:	910003fd 	mov	x29, sp
  400d68:	b9001fe0 	str	w0, [sp, #28]
  400d6c:	f9000be1 	str	x1, [sp, #16]
  400d70:	b9401fe0 	ldr	w0, [sp, #28]
  400d74:	7100041f 	cmp	w0, #0x1
  400d78:	54000101 	b.ne	400d98 <main+0x38>  // b.any
  400d7c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400d80:	9101e000 	add	x0, x0, #0x78
  400d84:	f9400001 	ldr	x1, [x0]
  400d88:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400d8c:	91022000 	add	x0, x0, #0x88
  400d90:	f9000001 	str	x1, [x0]
  400d94:	14000027 	b	400e30 <main+0xd0>
  400d98:	b9401fe0 	ldr	w0, [sp, #28]
  400d9c:	7100081f 	cmp	w0, #0x2
  400da0:	54000381 	b.ne	400e10 <main+0xb0>  // b.any
  400da4:	f9400be0 	ldr	x0, [sp, #16]
  400da8:	91002000 	add	x0, x0, #0x8
  400dac:	f9400002 	ldr	x2, [x0]
  400db0:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400db4:	913e0001 	add	x1, x0, #0xf80
  400db8:	aa0203e0 	mov	x0, x2
  400dbc:	97fffe5d 	bl	400730 <fopen@plt>
  400dc0:	aa0003e1 	mov	x1, x0
  400dc4:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400dc8:	91022000 	add	x0, x0, #0x88
  400dcc:	f9000001 	str	x1, [x0]
  400dd0:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400dd4:	91022000 	add	x0, x0, #0x88
  400dd8:	f9400000 	ldr	x0, [x0]
  400ddc:	f100001f 	cmp	x0, #0x0
  400de0:	54000281 	b.ne	400e30 <main+0xd0>  // b.any
  400de4:	f9400be0 	ldr	x0, [sp, #16]
  400de8:	f9400001 	ldr	x1, [x0]
  400dec:	f9400be0 	ldr	x0, [sp, #16]
  400df0:	91002000 	add	x0, x0, #0x8
  400df4:	f9400000 	ldr	x0, [x0]
  400df8:	aa0003e2 	mov	x2, x0
  400dfc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400e00:	913e2000 	add	x0, x0, #0xf88
  400e04:	97fffe63 	bl	400790 <printf@plt>
  400e08:	52800100 	mov	w0, #0x8                   	// #8
  400e0c:	97fffe41 	bl	400710 <exit@plt>
  400e10:	f9400be0 	ldr	x0, [sp, #16]
  400e14:	f9400000 	ldr	x0, [x0]
  400e18:	aa0003e1 	mov	x1, x0
  400e1c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400e20:	913ea000 	add	x0, x0, #0xfa8
  400e24:	97fffe5b 	bl	400790 <printf@plt>
  400e28:	52800100 	mov	w0, #0x8                   	// #8
  400e2c:	97fffe39 	bl	400710 <exit@plt>
  400e30:	97fffea5 	bl	4008c4 <read>
  400e34:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400e38:	913f2000 	add	x0, x0, #0xfc8
  400e3c:	97fffe49 	bl	400760 <puts@plt>
  400e40:	97fffeda 	bl	4009a8 <print>
  400e44:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400e48:	91024000 	add	x0, x0, #0x90
  400e4c:	97ffff19 	bl	400ab0 <phase1>
  400e50:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400e54:	91038000 	add	x0, x0, #0xe0
  400e58:	97ffff4c 	bl	400b88 <phase2>
  400e5c:	90000100 	adrp	x0, 420000 <strlen@GLIBC_2.17>
  400e60:	9104c000 	add	x0, x0, #0x130
  400e64:	97ffff97 	bl	400cc0 <phase3>
  400e68:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400e6c:	913f6000 	add	x0, x0, #0xfd8
  400e70:	97fffe3c 	bl	400760 <puts@plt>
  400e74:	52800000 	mov	w0, #0x0                   	// #0
  400e78:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400e7c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400e80 <_fini>:
  400e80:	d503201f 	nop
  400e84:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400e88:	910003fd 	mov	x29, sp
  400e8c:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400e90:	d65f03c0 	ret

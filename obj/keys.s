	.file	"keys.c"
	.text
.Ltext0:
	.section	.text.unlikely.bt_keys_clear,"ax",@progbits
.LCOLDB0:
	.section	.text.bt_keys_clear,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.bt_keys_clear
.Ltext_cold0:
	.section	.text.bt_keys_clear
	.globl	bt_keys_clear
	.type	bt_keys_clear, @function
bt_keys_clear:
.LFB67:
	.file 1 "src/keys.c"
	.loc 1 3288 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 3288 0
	movl	8(%ebp), %ebx
	.loc 1 3290 0
	testb	$2, 12(%ebx)
	je	.L2
	.loc 1 3291 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_id_del
.LVL1:
	addl	$16, %esp
.L2:
	.loc 1 3293 0
	movl	%ebx, %edi
	movl	$24, %ecx
	xorl	%eax, %eax
	rep stosl
	.loc 1 3294 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE67:
	.size	bt_keys_clear, .-bt_keys_clear
	.section	.text.unlikely.bt_keys_clear
.LCOLDE0:
	.section	.text.bt_keys_clear
.LHOTE0:
	.section	.text.unlikely.bt_keys_get_addr,"ax",@progbits
.LCOLDB1:
	.section	.text.bt_keys_get_addr,"ax",@progbits
.LHOTB1:
	.globl	bt_keys_get_addr
	.type	bt_keys_get_addr, @function
bt_keys_get_addr:
.LFB60:
	.loc 1 3177 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 3177 0
	movl	8(%ebp), %esi
.LBB10:
.LBB11:
	.loc 1 1379 0
	pushl	$7
.LBE11:
.LBE10:
	.loc 1 3177 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL3:
.LBB13:
.LBB12:
	.loc 1 1379 0
	pushl	%esi
	pushl	$key_pool
	call	memcmp
.LVL4:
	addl	$16, %esp
.LVL5:
.LBE12:
.LBE13:
	.loc 1 3183 0
	testl	%eax, %eax
	movl	$key_pool, %edx
	je	.L9
	.loc 1 3186 0
	leal	-19(%ebp), %edi
	xorl	%eax, %eax
	movl	$7, %ecx
	rep stosb
.LVL6:
.LBB14:
.LBB15:
	.loc 1 1379 0
	pushl	%eax
	leal	-19(%ebp), %eax
.LVL7:
	pushl	$7
	pushl	%eax
	pushl	%edx
	call	memcmp
.LVL8:
	addl	$16, %esp
.LVL9:
.LBE15:
.LBE14:
	.loc 1 3194 0
	xorl	%edx, %edx
	.loc 1 3186 0
	testl	%eax, %eax
	jne	.L9
.LVL10:
.LBB16:
.LBB17:
	.loc 1 1387 0
	movl	$key_pool, %eax
	movl	$7, %ecx
	movl	%eax, %edi
	movl	%eax, %edx
	rep movsb
.LVL11:
.L9:
.LBE17:
.LBE16:
	.loc 1 3196 0
	movl	%edx, %eax
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L10
	call	__stack_chk_fail
.LVL12:
.L10:
	leal	-8(%ebp), %esp
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE60:
	.size	bt_keys_get_addr, .-bt_keys_get_addr
	.section	.text.unlikely.bt_keys_get_addr
.LCOLDE1:
	.section	.text.bt_keys_get_addr
.LHOTE1:
	.section	.text.unlikely.bt_keys_foreach,"ax",@progbits
.LCOLDB2:
	.section	.text.bt_keys_foreach,"ax",@progbits
.LHOTB2:
	.globl	bt_keys_foreach
	.type	bt_keys_foreach, @function
bt_keys_foreach:
.LFB61:
	.loc 1 3198 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3201 0
	movzwl	key_pool+12, %edx
	.loc 1 3198 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3201 0
	testl	%edx, 8(%ebp)
	.loc 1 3198 0
	movl	12(%ebp), %eax
	.loc 1 3201 0
	je	.L14
	.loc 1 3202 0
	movl	$key_pool, 8(%ebp)
.LVL14:
	.loc 1 3205 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3202 0
	jmp	*%eax
.LVL15:
.L14:
	.cfi_restore_state
	.loc 1 3205 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE61:
	.size	bt_keys_foreach, .-bt_keys_foreach
	.section	.text.unlikely.bt_keys_foreach
.LCOLDE2:
	.section	.text.bt_keys_foreach
.LHOTE2:
	.section	.text.unlikely.bt_keys_find,"ax",@progbits
.LCOLDB3:
	.section	.text.bt_keys_find,"ax",@progbits
.LHOTB3:
	.globl	bt_keys_find
	.type	bt_keys_find, @function
bt_keys_find:
.LFB62:
	.loc 1 3207 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 3211 0
	movzwl	key_pool+12, %eax
	.loc 1 3217 0
	xorl	%ebx, %ebx
	.loc 1 3211 0
	testl	%eax, 8(%ebp)
	je	.L18
.LVL17:
.LBB20:
.LBB21:
	.loc 1 1379 0
	pushl	%eax
	pushl	$7
	pushl	12(%ebp)
	pushl	$key_pool
	call	memcmp
.LVL18:
	addl	$16, %esp
.LVL19:
.LBE21:
.LBE20:
	.loc 1 3213 0
	testl	%eax, %eax
	movl	$key_pool, %eax
	cmove	%eax, %ebx
.L18:
	.loc 1 3219 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	bt_keys_find, .-bt_keys_find
	.section	.text.unlikely.bt_keys_find
.LCOLDE3:
	.section	.text.bt_keys_find
.LHOTE3:
	.section	.text.unlikely.bt_keys_get_type,"ax",@progbits
.LCOLDB4:
	.section	.text.bt_keys_get_type,"ax",@progbits
.LHOTB4:
	.globl	bt_keys_get_type
	.type	bt_keys_get_type, @function
bt_keys_get_type:
.LFB63:
	.loc 1 3221 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3221 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	.loc 1 3224 0
	pushl	%edi
	pushl	%esi
	call	bt_keys_find
.LVL21:
	addl	$16, %esp
	.loc 1 3225 0
	testl	%eax, %eax
	.loc 1 3224 0
	movl	%eax, %ebx
.LVL22:
	.loc 1 3225 0
	jne	.L24
	.loc 1 3228 0
	subl	$12, %esp
	pushl	%edi
	call	bt_keys_get_addr
.LVL23:
	.loc 1 3229 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L24
.LVL24:
.LBB22:
.LBB23:
	.loc 1 3285 0
	orw	%si, 12(%eax)
.LVL25:
.LBE23:
.LBE22:
	.loc 1 3235 0
	movl	%eax, %ebx
.LVL26:
.L24:
	.loc 1 3236 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE63:
	.size	bt_keys_get_type, .-bt_keys_get_type
	.section	.text.unlikely.bt_keys_get_type
.LCOLDE4:
	.section	.text.bt_keys_get_type
.LHOTE4:
	.section	.text.unlikely.bt_keys_find_irk,"ax",@progbits
.LCOLDB5:
	.section	.text.bt_keys_find_irk,"ax",@progbits
.LHOTB5:
	.globl	bt_keys_find_irk
	.type	bt_keys_find_irk, @function
bt_keys_find_irk:
.LFB64:
	.loc 1 3238 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3238 0
	movl	8(%ebp), %ebx
.LVL28:
.LBB30:
.LBB31:
	.loc 1 1395 0
	cmpb	$1, (%ebx)
	je	.L29
.LVL29:
.L31:
.LBE31:
.LBE30:
	.loc 1 3243 0
	xorl	%edx, %edx
	jmp	.L30
.LVL30:
.L29:
	.loc 1 3241 0
	movb	6(%ebx), %al
	andl	$-64, %eax
	cmpb	$64, %al
	jne	.L31
.LVL31:
	.loc 1 3247 0 discriminator 1
	testb	$2, key_pool+12
	je	.L31
.LVL32:
.LBB32:
.LBB33:
	.loc 1 1375 0
	leal	1(%ebx), %esi
.LVL33:
	pushl	%edx
	pushl	$6
	pushl	$key_pool+60
.LVL34:
	pushl	%esi
.LVL35:
	call	memcmp
.LVL36:
	addl	$16, %esp
.LVL37:
.LBE33:
.LBE32:
	.loc 1 3250 0
	testl	%eax, %eax
	.loc 1 3252 0
	movl	$key_pool, %edx
	.loc 1 3250 0
	je	.L30
	.loc 1 3259 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	$key_pool+44
	call	bt_rpa_irk_matches
.LVL38:
	addl	$16, %esp
	testb	%al, %al
	je	.L31
.LVL39:
.LBB34:
.LBB35:
	.loc 1 1383 0
	movl	1(%ebx), %eax
.LBE35:
.LBE34:
	.loc 1 3262 0
	movl	$key_pool, %edx
.LBB37:
.LBB36:
	.loc 1 1383 0
	movl	%eax, key_pool+60
	movw	5(%ebx), %ax
	movw	%ax, key_pool+64
.LVL40:
.L30:
.LBE36:
.LBE37:
	.loc 1 3269 0
	leal	-8(%ebp), %esp
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE64:
	.size	bt_keys_find_irk, .-bt_keys_find_irk
	.section	.text.unlikely.bt_keys_find_irk
.LCOLDE5:
	.section	.text.bt_keys_find_irk
.LHOTE5:
	.section	.text.unlikely.bt_keys_find_addr,"ax",@progbits
.LCOLDB6:
	.section	.text.bt_keys_find_addr,"ax",@progbits
.LHOTB6:
	.globl	bt_keys_find_addr
	.type	bt_keys_find_addr, @function
bt_keys_find_addr:
.LFB65:
	.loc 1 3271 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL42:
	subl	$12, %esp
.LBB40:
.LBB41:
	.loc 1 1379 0
	pushl	$7
	pushl	8(%ebp)
	pushl	$key_pool
	call	memcmp
.LVL43:
	addl	$16, %esp
.LVL44:
.LBE41:
.LBE40:
	.loc 1 3280 0
	movl	$0, %edx
	testl	%eax, %eax
	movl	$key_pool, %eax
	.loc 1 3282 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3280 0
	cmovne	%edx, %eax
	.loc 1 3282 0
	ret
	.cfi_endproc
.LFE65:
	.size	bt_keys_find_addr, .-bt_keys_find_addr
	.section	.text.unlikely.bt_keys_find_addr
.LCOLDE6:
	.section	.text.bt_keys_find_addr
.LHOTE6:
	.section	.text.unlikely.bt_keys_add_type,"ax",@progbits
.LCOLDB7:
	.section	.text.bt_keys_add_type,"ax",@progbits
.LHOTB7:
	.globl	bt_keys_add_type
	.type	bt_keys_add_type, @function
bt_keys_add_type:
.LFB66:
	.loc 1 3284 0
	.cfi_startproc
.LVL45:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3284 0
	movl	8(%ebp), %eax
	.loc 1 3285 0
	movl	12(%ebp), %edx
	orw	%dx, 12(%eax)
	.loc 1 3286 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE66:
	.size	bt_keys_add_type, .-bt_keys_add_type
	.section	.text.unlikely.bt_keys_add_type
.LCOLDE7:
	.section	.text.bt_keys_add_type
.LHOTE7:
	.section	.text.unlikely.bt_keys_clear_all,"ax",@progbits
.LCOLDB8:
	.section	.text.bt_keys_clear_all,"ax",@progbits
.LHOTB8:
	.globl	bt_keys_clear_all
	.type	bt_keys_clear_all, @function
bt_keys_clear_all:
.LFB68:
	.loc 1 3296 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 3297 0
	pushl	$bt_keys_clear
	pushl	$63
	call	bt_keys_foreach
.LVL46:
	.loc 1 3298 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE68:
	.size	bt_keys_clear_all, .-bt_keys_clear_all
	.section	.text.unlikely.bt_keys_clear_all
.LCOLDE8:
	.section	.text.bt_keys_clear_all
.LHOTE8:
	.section	.bss.key_pool,"aw",@nobits
	.align 32
	.type	key_pool, @object
	.size	key_pool, 96
key_pool:
	.zero	96
	.text
.Letext0:
	.section	.text.unlikely.bt_keys_clear
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x85a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0xc
	.long	.LASF91
	.long	.LASF92
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x3a
	.long	0x2c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0x3b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x3d
	.long	0x56
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.value	0x341
	.long	0x5d
	.uleb128 0x6
	.long	0xa1
	.long	0xbd
	.uleb128 0x7
	.long	0x93
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x386
	.long	0xed
	.uleb128 0x9
	.long	.LASF16
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.uleb128 0x9
	.long	.LASF18
	.byte	0x2
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x38d
	.long	0x11d
	.uleb128 0x9
	.long	.LASF23
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.uleb128 0x9
	.long	.LASF26
	.byte	0x3
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x1
	.value	0x556
	.long	0x134
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.value	0x557
	.long	0x134
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x72
	.long	0x144
	.uleb128 0x7
	.long	0x93
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF28
	.byte	0x1
	.value	0x558
	.long	0x11d
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.value	0x559
	.long	0x172
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.value	0x55a
	.long	0x72
	.byte	0
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.value	0x55b
	.long	0x144
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF30
	.byte	0x1
	.value	0x55c
	.long	0x150
	.uleb128 0x6
	.long	0x72
	.long	0x18e
	.uleb128 0x7
	.long	0x93
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x194
	.uleb128 0xe
	.long	0x144
	.uleb128 0xd
	.byte	0x4
	.long	0x19f
	.uleb128 0xe
	.long	0x172
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF31
	.uleb128 0xf
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0xb93
	.long	0x20d
	.uleb128 0x9
	.long	.LASF32
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.uleb128 0x9
	.long	.LASF34
	.byte	0x2
	.uleb128 0x9
	.long	.LASF35
	.byte	0x3
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.uleb128 0x9
	.long	.LASF42
	.byte	0xa
	.uleb128 0x9
	.long	.LASF43
	.byte	0xb
	.uleb128 0x9
	.long	.LASF44
	.byte	0xc
	.uleb128 0x9
	.long	.LASF45
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0xc27
	.long	0x245
	.uleb128 0x9
	.long	.LASF46
	.byte	0x1
	.uleb128 0x9
	.long	.LASF47
	.byte	0x2
	.uleb128 0x9
	.long	.LASF48
	.byte	0x4
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x10
	.uleb128 0x9
	.long	.LASF51
	.byte	0x20
	.uleb128 0x9
	.long	.LASF52
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0xc32
	.long	0x271
	.uleb128 0x9
	.long	.LASF53
	.byte	0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x1
	.uleb128 0x9
	.long	.LASF55
	.byte	0x2
	.uleb128 0x9
	.long	.LASF56
	.byte	0x3
	.uleb128 0x9
	.long	.LASF57
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1c
	.byte	0x1
	.value	0xc39
	.long	0x2a6
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1
	.value	0xc3a
	.long	0x88
	.byte	0
	.uleb128 0xc
	.long	.LASF59
	.byte	0x1
	.value	0xc3b
	.long	0x7d
	.byte	0x8
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.value	0xc3c
	.long	0x17e
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF61
	.byte	0x16
	.byte	0x1
	.value	0xc3e
	.long	0x2ce
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.value	0xc3f
	.long	0x17e
	.byte	0
	.uleb128 0xb
	.string	"rpa"
	.byte	0x1
	.value	0xc40
	.long	0x144
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x60
	.byte	0x1
	.value	0xc46
	.long	0x337
	.uleb128 0xc
	.long	.LASF63
	.byte	0x1
	.value	0xc47
	.long	0x172
	.byte	0
	.uleb128 0xc
	.long	.LASF64
	.byte	0x1
	.value	0xc48
	.long	0x72
	.byte	0x7
	.uleb128 0xc
	.long	.LASF65
	.byte	0x1
	.value	0xc49
	.long	0xad
	.byte	0x8
	.uleb128 0xc
	.long	.LASF66
	.byte	0x1
	.value	0xc4a
	.long	0x7d
	.byte	0xc
	.uleb128 0xb
	.string	"ltk"
	.byte	0x1
	.value	0xc4b
	.long	0x271
	.byte	0x10
	.uleb128 0xb
	.string	"irk"
	.byte	0x1
	.value	0xc4c
	.long	0x2a6
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF67
	.byte	0x1
	.value	0xc4d
	.long	0x271
	.byte	0x44
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0xc58
	.long	0x35d
	.uleb128 0x9
	.long	.LASF68
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x1
	.uleb128 0x9
	.long	.LASF70
	.byte	0x2
	.uleb128 0x9
	.long	.LASF71
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF93
	.byte	0x1
	.value	0xcd3
	.byte	0x1
	.long	0x383
	.uleb128 0x12
	.long	.LASF66
	.byte	0x1
	.value	0xcd3
	.long	0x383
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.value	0xcd3
	.long	0x5d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x2ce
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.value	0xcd7
	.long	.LFB67
	.long	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8
	.uleb128 0x14
	.long	.LASF66
	.byte	0x1
	.value	0xcd7
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LVL1
	.long	0x830
	.byte	0
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.value	0x561
	.long	0x5d
	.byte	0x3
	.long	0x3de
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x561
	.long	0x199
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x561
	.long	0x199
	.byte	0
	.uleb128 0x18
	.long	.LASF81
	.byte	0x1
	.value	0x569
	.byte	0x3
	.long	0x404
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.value	0x569
	.long	0x404
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.value	0x569
	.long	0x199
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x172
	.uleb128 0x19
	.long	.LASF75
	.byte	0x1
	.value	0xc68
	.long	0x383
	.long	.LFB60
	.long	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e2
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.value	0xc68
	.long	0x199
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x1
	.value	0xc6a
	.long	0x383
	.uleb128 0x6
	.byte	0x3
	.long	key_pool
	.byte	0x9f
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0xc6b
	.long	0x5d
	.byte	0
	.uleb128 0x1c
	.long	0x3b8
	.long	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xc6f
	.long	0x481
	.uleb128 0x1d
	.long	0x3d3
	.long	.LLST0
	.uleb128 0x1d
	.long	0x3c9
	.long	.LLST1
	.uleb128 0x15
	.long	.LVL4
	.long	0x83c
	.byte	0
	.uleb128 0x1e
	.long	0x3b8
	.long	.LBB14
	.long	.LBE14-.LBB14
	.byte	0x1
	.value	0xc72
	.long	0x4b1
	.uleb128 0x1d
	.long	0x3d3
	.long	.LLST2
	.uleb128 0x1d
	.long	0x3c9
	.long	.LLST3
	.uleb128 0x15
	.long	.LVL8
	.long	0x83c
	.byte	0
	.uleb128 0x1e
	.long	0x3de
	.long	.LBB16
	.long	.LBE16-.LBB16
	.byte	0x1
	.value	0xc73
	.long	0x4d8
	.uleb128 0x1d
	.long	0x3f7
	.long	.LLST4
	.uleb128 0x1d
	.long	0x3eb
	.long	.LLST5
	.byte	0
	.uleb128 0x15
	.long	.LVL12
	.long	0x848
	.byte	0
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.value	0xc7d
	.long	.LFB61
	.long	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x538
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x1
	.value	0xc7d
	.long	0x5d
	.long	.LLST6
	.uleb128 0x1f
	.long	.LASF74
	.byte	0x1
	.value	0xc7d
	.long	0x543
	.long	.LLST7
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0xc7f
	.long	0x5d
	.byte	0
	.uleb128 0x20
	.long	.LVL15
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	key_pool
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x543
	.uleb128 0x23
	.long	0x383
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x538
	.uleb128 0x19
	.long	.LASF76
	.byte	0x1
	.value	0xc86
	.long	0x383
	.long	.LFB62
	.long	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b9
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.value	0xc86
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.value	0xc86
	.long	0x199
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0xc88
	.long	0x5d
	.byte	0
	.uleb128 0x24
	.long	0x3b8
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.value	0xc8c
	.uleb128 0x1d
	.long	0x3d3
	.long	.LLST8
	.uleb128 0x1d
	.long	0x3c9
	.long	.LLST9
	.uleb128 0x15
	.long	.LVL18
	.long	0x83c
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF77
	.byte	0x1
	.value	0xc94
	.long	0x383
	.long	.LFB63
	.long	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.value	0xc94
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.value	0xc94
	.long	0x199
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF66
	.byte	0x1
	.value	0xc96
	.long	0x383
	.long	.LLST10
	.uleb128 0x1e
	.long	0x35d
	.long	.LBB22
	.long	.LBE22-.LBB22
	.byte	0x1
	.value	0xca2
	.long	0x628
	.uleb128 0x1d
	.long	0x376
	.long	.LLST11
	.uleb128 0x1d
	.long	0x36a
	.long	.LLST12
	.byte	0
	.uleb128 0x15
	.long	.LVL21
	.long	0x549
	.uleb128 0x15
	.long	.LVL23
	.long	0x40a
	.byte	0
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.value	0x571
	.long	0x1a4
	.byte	0x3
	.long	0x659
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.value	0x571
	.long	0x199
	.byte	0
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x55d
	.long	0x5d
	.byte	0x3
	.long	0x67f
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.value	0x55d
	.long	0x18e
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.value	0x55d
	.long	0x18e
	.byte	0
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.value	0x565
	.byte	0x3
	.long	0x6a5
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.value	0x565
	.long	0x6a5
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.value	0x565
	.long	0x18e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x144
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.value	0xca5
	.long	0x383
	.long	.LFB64
	.long	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x75d
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.value	0xca5
	.long	0x199
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0xca7
	.long	0x5d
	.long	.LLST13
	.uleb128 0x1e
	.long	0x63b
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.value	0xca9
	.long	0x700
	.uleb128 0x1d
	.long	0x64c
	.long	.LLST14
	.byte	0
	.uleb128 0x1e
	.long	0x659
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.value	0xcb2
	.long	0x730
	.uleb128 0x1d
	.long	0x674
	.long	.LLST15
	.uleb128 0x1d
	.long	0x66a
	.long	.LLST16
	.uleb128 0x15
	.long	.LVL36
	.long	0x83c
	.byte	0
	.uleb128 0x1c
	.long	0x67f
	.long	.LBB34
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xcbd
	.long	0x753
	.uleb128 0x27
	.long	0x698
	.uleb128 0x1d
	.long	0x68c
	.long	.LLST17
	.byte	0
	.uleb128 0x15
	.long	.LVL38
	.long	0x851
	.byte	0
	.uleb128 0x19
	.long	.LASF84
	.byte	0x1
	.value	0xcc6
	.long	0x383
	.long	.LFB65
	.long	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x7be
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.value	0xcc6
	.long	0x199
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0xcc8
	.long	0x5d
	.byte	0
	.uleb128 0x24
	.long	0x3b8
	.long	.LBB40
	.long	.LBE40-.LBB40
	.byte	0x1
	.value	0xccb
	.uleb128 0x1d
	.long	0x3d3
	.long	.LLST18
	.uleb128 0x1d
	.long	0x3c9
	.long	.LLST19
	.uleb128 0x15
	.long	.LVL43
	.long	0x83c
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x35d
	.long	.LFB66
	.long	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e2
	.uleb128 0x29
	.long	0x36a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	0x376
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.long	.LASF85
	.byte	0x1
	.value	0xcdf
	.long	.LFB68
	.long	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x802
	.uleb128 0x15
	.long	.LVL46
	.long	0x4e2
	.byte	0
	.uleb128 0x6
	.long	0x2ce
	.long	0x812
	.uleb128 0x7
	.long	0x93
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0xc67
	.long	0x802
	.uleb128 0x5
	.byte	0x3
	.long	key_pool
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x222
	.long	0x64
	.uleb128 0x2b
	.long	.LASF87
	.long	.LASF87
	.byte	0x1
	.value	0xbd1
	.uleb128 0x2b
	.long	.LASF88
	.long	.LASF88
	.byte	0x1
	.value	0x2b3
	.uleb128 0x2c
	.long	.LASF95
	.long	.LASF95
	.uleb128 0x2b
	.long	.LASF89
	.long	.LASF89
	.byte	0x1
	.value	0xb8c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL5
	.value	0x6
	.byte	0x3
	.long	key_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL7
	.value	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8-1
	.long	.LVL9
	.value	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL9
	.value	0x6
	.byte	0x3
	.long	key_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL11
	.value	0x6
	.byte	0x3
	.long	key_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL15
	.long	.LFE61
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL15
	.long	.LFE61
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST9:
	.long	.LVL17
	.long	.LVL19
	.value	0x6
	.byte	0x3
	.long	key_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL23-1
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	.LVL23
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST12:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL31
	.long	.LVL40
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LVL32
	.long	.LVL34
	.value	0x6
	.byte	0x3
	.long	key_pool+60
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL35
	.long	.LVL36-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL36-1
	.long	.LVL37
	.value	0x6
	.byte	0x3
	.long	key_pool+60
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL33
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL33
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST17:
	.long	.LVL39
	.long	.LVL40
	.value	0x6
	.byte	0x3
	.long	key_pool+60
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL42
	.long	.LVL44
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL41
	.long	.LVL44
	.value	0x6
	.byte	0x3
	.long	key_pool
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB10
	.long	.LBE10
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LBB34
	.long	.LBE34
	.long	.LBB37
	.long	.LBE37
	.long	0
	.long	0
	.long	.LFB67
	.long	.LFE67
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB68
	.long	.LFE68
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"bt_addr_t"
.LASF23:
	.string	"_POLL_STATE_NOT_READY"
.LASF20:
	.string	"_POLL_NUM_TYPES"
.LASF43:
	.string	"BT_DEV_RPA_VALID"
.LASF32:
	.string	"BT_DEV_ENABLE"
.LASF42:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF44:
	.string	"BT_DEV_ID_PENDING"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"sizetype"
.LASF67:
	.string	"slave_ltk"
.LASF49:
	.string	"BT_KEYS_LOCAL_CSRK"
.LASF45:
	.string	"BT_DEV_NUM_FLAGS"
.LASF77:
	.string	"bt_keys_get_type"
.LASF35:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF58:
	.string	"rand"
.LASF89:
	.string	"bt_rpa_irk_matches"
.LASF80:
	.string	"bt_addr_cmp"
.LASF34:
	.string	"BT_DEV_ID_STATIC_RANDOM"
.LASF40:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF38:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF9:
	.string	"long double"
.LASF88:
	.string	"memcmp"
.LASF6:
	.string	"long long int"
.LASF73:
	.string	"bt_keys_foreach"
.LASF25:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF4:
	.string	"long int"
.LASF76:
	.string	"bt_keys_find"
.LASF12:
	.string	"u64_t"
.LASF63:
	.string	"addr"
.LASF33:
	.string	"BT_DEV_READY"
.LASF41:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF94:
	.string	"aos_log_level"
.LASF69:
	.string	"BT_LINK_KEY_DEBUG"
.LASF50:
	.string	"BT_KEYS_REMOTE_CSRK"
.LASF17:
	.string	"_POLL_TYPE_SIGNAL"
.LASF64:
	.string	"enc_size"
.LASF51:
	.string	"BT_KEYS_LTK_P256"
.LASF66:
	.string	"keys"
.LASF86:
	.string	"key_pool"
.LASF47:
	.string	"BT_KEYS_IRK"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF62:
	.string	"bt_keys"
.LASF39:
	.string	"BT_DEV_SCANNING"
.LASF16:
	.string	"_POLL_TYPE_IGNORE"
.LASF75:
	.string	"bt_keys_get_addr"
.LASF0:
	.string	"signed char"
.LASF65:
	.string	"flags"
.LASF7:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF8:
	.string	"unsigned int"
.LASF26:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF85:
	.string	"bt_keys_clear_all"
.LASF54:
	.string	"BT_KEYS_DEBUG"
.LASF3:
	.string	"short unsigned int"
.LASF46:
	.string	"BT_KEYS_SLAVE_LTK"
.LASF14:
	.string	"char"
.LASF57:
	.string	"BT_KEYS_NUM_FLAGS"
.LASF61:
	.string	"bt_irk"
.LASF93:
	.string	"bt_keys_add_type"
.LASF48:
	.string	"BT_KEYS_LTK"
.LASF74:
	.string	"func"
.LASF31:
	.string	"_Bool"
.LASF79:
	.string	"bt_addr_le_is_rpa"
.LASF90:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF81:
	.string	"bt_addr_le_copy"
.LASF56:
	.string	"BT_KEYS_ID_PENDING_DEL"
.LASF83:
	.string	"bt_keys_find_irk"
.LASF5:
	.string	"long unsigned int"
.LASF37:
	.string	"BT_DEV_ADVERTISING"
.LASF59:
	.string	"ediv"
.LASF24:
	.string	"_POLL_STATE_SIGNALED"
.LASF68:
	.string	"BT_LINK_KEY_AUTHENTICATED"
.LASF55:
	.string	"BT_KEYS_ID_PENDING_ADD"
.LASF21:
	.string	"_poll_types_bits"
.LASF52:
	.string	"BT_KEYS_ALL"
.LASF10:
	.string	"u8_t"
.LASF71:
	.string	"BT_LINK_KEY_NUM_FLAGS"
.LASF87:
	.string	"bt_id_del"
.LASF60:
	.string	"bt_ltk"
.LASF70:
	.string	"BT_LINK_KEY_SC"
.LASF11:
	.string	"u16_t"
.LASF30:
	.string	"bt_addr_le_t"
.LASF72:
	.string	"bt_keys_clear"
.LASF22:
	.string	"_poll_states_bits"
.LASF53:
	.string	"BT_KEYS_AUTHENTICATED"
.LASF92:
	.string	"/home/stone/Documents/pca"
.LASF27:
	.string	"_POLL_NUM_STATES"
.LASF95:
	.string	"__stack_chk_fail"
.LASF82:
	.string	"bt_addr_copy"
.LASF84:
	.string	"bt_keys_find_addr"
.LASF19:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF91:
	.string	"src/keys.c"
.LASF78:
	.string	"bt_addr_le_cmp"
.LASF36:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF15:
	.string	"atomic_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

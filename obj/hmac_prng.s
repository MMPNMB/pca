	.file	"hmac_prng.c"
	.text
.Ltext0:
	.section	.text.unlikely.update,"ax",@progbits
.LCOLDB0:
	.section	.text.update,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.update
.Ltext_cold0:
	.section	.text.update
	.type	update, @function
update:
.LFB0:
	.file 1 "src/hmac_prng.c"
	.loc 1 109 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	.loc 1 113 0
	leal	268(%ebx), %esi
	.loc 1 116 0
	leal	236(%ebx), %edi
	.loc 1 109 0
	subl	$56, %esp
	.loc 1 109 0
	movl	%edx, -52(%ebp)
	movl	%ecx, -44(%ebp)
	.loc 1 112 0
	pushl	%ebx
	.loc 1 110 0
	movb	$0, -30(%ebp)
	.loc 1 109 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 111 0
	movb	$1, -29(%ebp)
	.loc 1 112 0
	call	tc_hmac_init
.LVL2:
	.loc 1 113 0
	addl	$12, %esp
	pushl	$32
	pushl	%esi
	pushl	%ebx
	call	tc_hmac_update
.LVL3:
	.loc 1 114 0
	leal	-30(%ebp), %eax
	addl	$12, %esp
	pushl	$1
	pushl	%eax
	pushl	%ebx
	call	tc_hmac_update
.LVL4:
	.loc 1 115 0
	movl	-44(%ebp), %ecx
	movl	-52(%ebp), %edx
	addl	$12, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	movl	%ecx, -48(%ebp)
	movl	%edx, -44(%ebp)
.LVL5:
	call	tc_hmac_update
.LVL6:
	.loc 1 116 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$32
	pushl	%edi
	call	tc_hmac_final
.LVL7:
	.loc 1 117 0
	addl	$12, %esp
	pushl	$32
	pushl	%edi
	pushl	%ebx
	call	tc_hmac_set_key
.LVL8:
	.loc 1 118 0
	movl	%ebx, (%esp)
	call	tc_hmac_init
.LVL9:
	.loc 1 119 0
	addl	$12, %esp
	pushl	$32
	pushl	%esi
	pushl	%ebx
	call	tc_hmac_update
.LVL10:
	.loc 1 120 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$32
	pushl	%esi
	call	tc_hmac_final
.LVL11:
	.loc 1 121 0
	movl	%ebx, (%esp)
	call	tc_hmac_init
.LVL12:
	.loc 1 122 0
	addl	$12, %esp
	pushl	$32
	pushl	%esi
	pushl	%ebx
	call	tc_hmac_update
.LVL13:
	.loc 1 123 0
	leal	-29(%ebp), %eax
	addl	$12, %esp
	pushl	$1
	pushl	%eax
	pushl	%ebx
	call	tc_hmac_update
.LVL14:
	.loc 1 124 0
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %edx
	addl	$12, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	call	tc_hmac_update
.LVL15:
	.loc 1 125 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$32
	pushl	%edi
	call	tc_hmac_final
.LVL16:
	.loc 1 126 0
	addl	$12, %esp
	pushl	$32
	pushl	%edi
	pushl	%ebx
	call	tc_hmac_set_key
.LVL17:
	.loc 1 127 0
	movl	%ebx, (%esp)
	call	tc_hmac_init
.LVL18:
	.loc 1 128 0
	addl	$12, %esp
	pushl	$32
	pushl	%esi
	pushl	%ebx
	call	tc_hmac_update
.LVL19:
	.loc 1 129 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$32
	pushl	%esi
	call	tc_hmac_final
.LVL20:
	.loc 1 130 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2
	call	__stack_chk_fail
.LVL21:
.L2:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL22:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL23:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL24:
	ret
	.cfi_endproc
.LFE0:
	.size	update, .-update
	.section	.text.unlikely.update
.LCOLDE0:
	.section	.text.update
.LHOTE0:
	.section	.text.unlikely.tc_hmac_prng_init,"ax",@progbits
.LCOLDB1:
	.section	.text.tc_hmac_prng_init,"ax",@progbits
.LHOTB1:
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB1:
	.loc 1 134 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 134 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 135 0
	testl	%ebx, %ebx
	je	.L7
	testl	%esi, %esi
	je	.L7
	.loc 1 139 0
	leal	236(%ebx), %edi
	pushl	%eax
	pushl	$32
	pushl	$0
	pushl	%edi
	call	_set
.LVL26:
	.loc 1 140 0
	leal	268(%ebx), %eax
	addl	$12, %esp
	pushl	$32
	pushl	$1
	pushl	%eax
	call	_set
.LVL27:
	.loc 1 141 0
	addl	$12, %esp
	pushl	$32
	pushl	%edi
	pushl	%ebx
	call	tc_hmac_set_key
.LVL28:
	.loc 1 142 0
	movl	16(%ebp), %ecx
	movl	%ebx, %eax
	movl	%esi, %edx
	call	update
.LVL29:
	.loc 1 143 0
	movl	$0, 300(%ebx)
	.loc 1 144 0
	addl	$16, %esp
	movl	$1, %eax
	jmp	.L6
.L7:
	.loc 1 137 0
	xorl	%eax, %eax
.L6:
	.loc 1 145 0
	leal	-12(%ebp), %esp
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
.LFE1:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.section	.text.unlikely.tc_hmac_prng_init
.LCOLDE1:
	.section	.text.tc_hmac_prng_init
.LHOTE1:
	.section	.text.unlikely.tc_hmac_prng_reseed,"ax",@progbits
.LCOLDB2:
	.section	.text.tc_hmac_prng_reseed,"ax",@progbits
.LHOTB2:
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB2:
	.loc 1 151 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 154 0
	cmpl	$0, 12(%ebp)
	.loc 1 151 0
	movl	16(%ebp), %ecx
	movl	8(%ebp), %ebx
	movl	20(%ebp), %edi
	movl	24(%ebp), %esi
	.loc 1 154 0
	sete	%al
	cmpl	$31, %ecx
	movb	%al, %dl
	setbe	%al
	orb	%al, %dl
	jne	.L13
	testl	%ebx, %ebx
	je	.L13
	.loc 1 158 0
	testl	%edi, %edi
	je	.L11
	.loc 1 156 0
	xorl	%eax, %eax
	.loc 1 159 0
	testl	%esi, %esi
	je	.L10
	.loc 1 162 0
	movl	12(%ebp), %edx
	movl	%ebx, %eax
	call	update
.LVL31:
	.loc 1 163 0
	movl	%esi, %ecx
	movl	%edi, %edx
	jmp	.L17
.L11:
	.loc 1 166 0
	movl	12(%ebp), %edx
.L17:
	movl	%ebx, %eax
	call	update
.LVL32:
	.loc 1 168 0
	movl	$-1, 300(%ebx)
	.loc 1 169 0
	movl	$1, %eax
	jmp	.L10
.L13:
	.loc 1 156 0
	xorl	%eax, %eax
.L10:
	.loc 1 170 0
	addl	$12, %esp
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
.LFE2:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.section	.text.unlikely.tc_hmac_prng_reseed
.LCOLDE2:
	.section	.text.tc_hmac_prng_reseed
.LHOTE2:
	.section	.text.unlikely.tc_hmac_prng_generate,"ax",@progbits
.LCOLDB3:
	.section	.text.tc_hmac_prng_generate,"ax",@progbits
.LHOTB3:
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB3:
	.loc 1 172 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 174 0
	cmpl	$0, 8(%ebp)
	.loc 1 172 0
	movl	12(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 174 0
	je	.L22
	testl	%ebx, %ebx
	je	.L22
	.loc 1 176 0
	leal	-1(%esi), %edx
	.loc 1 178 0
	xorl	%eax, %eax
	.loc 1 176 0
	cmpl	$524287, %edx
	ja	.L19
	.loc 1 179 0
	movl	300(%ebx), %edx
	.loc 1 180 0
	orl	$-1, %eax
	.loc 1 179 0
	testl	%edx, %edx
	je	.L19
	.loc 1 182 0
	decl	%edx
	.loc 1 185 0
	leal	268(%ebx), %edi
	.loc 1 182 0
	movl	%edx, 300(%ebx)
.LVL34:
.L21:
	.loc 1 184 0
	subl	$12, %esp
	pushl	%ebx
	call	tc_hmac_init
.LVL35:
	.loc 1 185 0
	addl	$12, %esp
	pushl	$32
	pushl	%edi
	pushl	%ebx
	call	tc_hmac_update
.LVL36:
	.loc 1 186 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$32
	pushl	%edi
	call	tc_hmac_final
.LVL37:
	.loc 1 187 0
	addl	$16, %esp
	movl	$32, %edx
	cmpl	$32, %esi
	cmovbe	%esi, %edx
.LVL38:
	.loc 1 189 0
	pushl	%edx
	pushl	%edi
	pushl	%edx
	pushl	8(%ebp)
	movl	%edx, -28(%ebp)
	call	_copy
.LVL39:
	.loc 1 190 0
	movl	-28(%ebp), %edx
	.loc 1 192 0
	addl	$16, %esp
	.loc 1 190 0
	addl	%edx, 8(%ebp)
.LVL40:
	.loc 1 192 0
	cmpl	$32, %esi
	ja	.L20
.LVL41:
	.loc 1 194 0
	movl	%ebx, %eax
	movl	$32, %ecx
	movl	%edi, %edx
	call	update
.LVL42:
	.loc 1 195 0
	movl	$1, %eax
	jmp	.L19
.LVL43:
.L20:
	.loc 1 192 0 discriminator 1
	subl	$32, %esi
.LVL44:
	jmp	.L21
.LVL45:
.L22:
	.loc 1 178 0
	xorl	%eax, %eax
.LVL46:
.L19:
	.loc 1 196 0
	leal	-12(%ebp), %esp
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
.LFE3:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.section	.text.unlikely.tc_hmac_prng_generate
.LCOLDE3:
	.section	.text.tc_hmac_prng_generate
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.update
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4f2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF51
	.byte	0xc
	.long	.LASF52
	.long	.LASF53
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x2
	.long	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x9
	.long	0x5e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0xf
	.long	0x8c
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x1b
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x21
	.long	0x81
	.uleb128 0x5
	.long	.LASF19
	.byte	0x6c
	.byte	0x1
	.byte	0x36
	.long	0xe5
	.uleb128 0x6
	.string	"iv"
	.byte	0x1
	.byte	0x37
	.long	0xe5
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x38
	.long	0x9e
	.byte	0x20
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x39
	.long	0xfc
	.byte	0x28
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x3a
	.long	0x2c
	.byte	0x68
	.byte	0
	.uleb128 0x8
	.long	0x37
	.long	0xf5
	.uleb128 0x9
	.long	0xf5
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0x8
	.long	0x93
	.long	0x10c
	.uleb128 0x9
	.long	0xf5
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0xec
	.byte	0x1
	.byte	0x40
	.long	0x131
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x41
	.long	0xa9
	.byte	0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x42
	.long	0x131
	.byte	0x6c
	.byte	0
	.uleb128 0x8
	.long	0x93
	.long	0x141
	.uleb128 0x9
	.long	0xf5
	.byte	0x7f
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.value	0x130
	.byte	0x1
	.byte	0x4b
	.long	0x17d
	.uleb128 0x6
	.string	"h"
	.byte	0x1
	.byte	0x4c
	.long	0x10c
	.byte	0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x4d
	.long	0x17d
	.byte	0xec
	.uleb128 0xb
	.string	"v"
	.byte	0x1
	.byte	0x4e
	.long	0x17d
	.value	0x10c
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x4f
	.long	0x37
	.value	0x12c
	.byte	0
	.uleb128 0x8
	.long	0x93
	.long	0x18d
	.uleb128 0x9
	.long	0xf5
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x1
	.byte	0x51
	.long	0x198
	.uleb128 0xd
	.byte	0x4
	.long	0x141
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.byte	0x6c
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a6
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x6c
	.long	0x18d
	.long	.LLST0
	.uleb128 0x10
	.string	"e"
	.byte	0x1
	.byte	0x6c
	.long	0x2a6
	.long	.LLST1
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x6c
	.long	0x37
	.long	.LLST2
	.uleb128 0x11
	.long	.LASF26
	.byte	0x1
	.byte	0x6e
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.byte	0x6f
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x12
	.long	.LVL2
	.long	0x4aa
	.uleb128 0x12
	.long	.LVL3
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL4
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL6
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL7
	.long	0x4c0
	.uleb128 0x12
	.long	.LVL8
	.long	0x4cb
	.uleb128 0x12
	.long	.LVL9
	.long	0x4aa
	.uleb128 0x12
	.long	.LVL10
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL11
	.long	0x4c0
	.uleb128 0x12
	.long	.LVL12
	.long	0x4aa
	.uleb128 0x12
	.long	.LVL13
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL14
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL15
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL16
	.long	0x4c0
	.uleb128 0x12
	.long	.LVL17
	.long	0x4cb
	.uleb128 0x12
	.long	.LVL18
	.long	0x4aa
	.uleb128 0x12
	.long	.LVL19
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL20
	.long	0x4c0
	.uleb128 0x12
	.long	.LVL21
	.long	0x4d6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x2ac
	.uleb128 0x13
	.long	0x93
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.byte	0x83
	.long	0x25
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x83
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF28
	.byte	0x1
	.byte	0x84
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.byte	0x85
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.long	.LVL26
	.long	0x4df
	.uleb128 0x12
	.long	.LVL27
	.long	0x4df
	.uleb128 0x12
	.long	.LVL28
	.long	0x4cb
	.uleb128 0x16
	.long	.LVL29
	.long	0x19e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.byte	0x92
	.long	0x25
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bf
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x92
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF32
	.byte	0x1
	.byte	0x93
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF33
	.byte	0x1
	.byte	0x94
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x95
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.byte	0x96
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.long	.LVL31
	.long	0x19e
	.long	0x3ae
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.long	.LVL32
	.long	0x19e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.byte	0xab
	.long	0x25
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x454
	.uleb128 0x10
	.string	"out"
	.byte	0x1
	.byte	0xab
	.long	0x454
	.long	.LLST3
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.byte	0xab
	.long	0x37
	.long	.LLST4
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0xab
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.byte	0xad
	.long	0x37
	.long	.LLST5
	.uleb128 0x12
	.long	.LVL35
	.long	0x4aa
	.uleb128 0x12
	.long	.LVL36
	.long	0x4b5
	.uleb128 0x12
	.long	.LVL37
	.long	0x4c0
	.uleb128 0x12
	.long	.LVL39
	.long	0x4ea
	.uleb128 0x16
	.long	.LVL42
	.long	0x19e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x93
	.uleb128 0x1a
	.long	.LASF39
	.byte	0x1
	.byte	0x5e
	.long	0x466
	.byte	0x20
	.uleb128 0x13
	.long	0x37
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x1
	.byte	0x5f
	.long	0x466
	.sleb128 -1
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x1
	.byte	0x62
	.long	0x466
	.sleb128 -1
	.uleb128 0x1b
	.long	.LASF42
	.byte	0x1
	.byte	0x65
	.long	0x466
	.sleb128 -1
	.uleb128 0x1b
	.long	.LASF43
	.byte	0x1
	.byte	0x68
	.long	0x466
	.sleb128 -1
	.uleb128 0x1c
	.long	.LASF44
	.byte	0x1
	.byte	0x6b
	.long	0x466
	.long	0x80000
	.uleb128 0x1d
	.long	.LASF45
	.long	.LASF45
	.byte	0x1
	.byte	0x47
	.uleb128 0x1d
	.long	.LASF46
	.long	.LASF46
	.byte	0x1
	.byte	0x48
	.uleb128 0x1d
	.long	.LASF47
	.long	.LASF47
	.byte	0x1
	.byte	0x4a
	.uleb128 0x1d
	.long	.LASF48
	.long	.LASF48
	.byte	0x1
	.byte	0x45
	.uleb128 0x1e
	.long	.LASF55
	.long	.LASF55
	.uleb128 0x1d
	.long	.LASF49
	.long	.LASF49
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1d
	.long	.LASF50
	.long	.LASF50
	.byte	0x1
	.byte	0x59
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LVL23
	.value	0x4
	.byte	0x77
	.sleb128 -236
	.byte	0x9f
	.long	.LVL23
	.long	.LFE0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2-1
	.value	0x1
	.byte	0x52
	.long	.LVL2-1
	.long	.LVL24
	.value	0x2
	.byte	0x75
	.sleb128 -52
	.long	.LVL24
	.long	.LFE0
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2-1
	.value	0x1
	.byte	0x51
	.long	.LVL2-1
	.long	.LVL5
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	.LVL5
	.long	.LFE0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL33
	.long	.LVL39
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL39
	.long	.LVL40
	.value	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL40
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL34
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	.LVL41
	.long	.LVL43
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	.LVL45
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x52
	.long	.LVL39-1
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"outlen"
.LASF14:
	.string	"uint64_t"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"size_t"
.LASF18:
	.string	"sizetype"
.LASF44:
	.string	"MAX_OUT"
.LASF46:
	.string	"tc_hmac_update"
.LASF19:
	.string	"tc_sha256_state_struct"
.LASF13:
	.string	"uint8_t"
.LASF26:
	.string	"separator0"
.LASF27:
	.string	"separator1"
.LASF25:
	.string	"prng"
.LASF17:
	.string	"leftover_offset"
.LASF52:
	.string	"src/hmac_prng.c"
.LASF1:
	.string	"long long int"
.LASF54:
	.string	"update"
.LASF9:
	.string	"long int"
.LASF35:
	.string	"additionallen"
.LASF5:
	.string	"__uint8_t"
.LASF49:
	.string	"_set"
.LASF47:
	.string	"tc_hmac_final"
.LASF2:
	.string	"long double"
.LASF34:
	.string	"additional_input"
.LASF6:
	.string	"unsigned char"
.LASF23:
	.string	"countdown"
.LASF15:
	.string	"bits_hashed"
.LASF3:
	.string	"signed char"
.LASF31:
	.string	"tc_hmac_prng_reseed"
.LASF12:
	.string	"long long unsigned int"
.LASF48:
	.string	"tc_hmac_set_key"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"MAX_SLEN"
.LASF29:
	.string	"plen"
.LASF16:
	.string	"leftover"
.LASF8:
	.string	"short unsigned int"
.LASF32:
	.string	"seed"
.LASF28:
	.string	"personalization"
.LASF43:
	.string	"MAX_GENS"
.LASF30:
	.string	"tc_hmac_prng_init"
.LASF22:
	.string	"tc_hmac_prng_struct"
.LASF11:
	.string	"__uint64_t"
.LASF20:
	.string	"tc_hmac_state_struct"
.LASF10:
	.string	"long unsigned int"
.LASF45:
	.string	"tc_hmac_init"
.LASF41:
	.string	"MAX_PLEN"
.LASF21:
	.string	"hash_state"
.LASF51:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF38:
	.string	"bufferlen"
.LASF42:
	.string	"MAX_ALEN"
.LASF53:
	.string	"/home/stone/Documents/pca"
.LASF24:
	.string	"TCHmacPrng_t"
.LASF55:
	.string	"__stack_chk_fail"
.LASF36:
	.string	"tc_hmac_prng_generate"
.LASF33:
	.string	"seedlen"
.LASF39:
	.string	"MIN_SLEN"
.LASF50:
	.string	"_copy"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

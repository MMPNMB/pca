	.file	"cmac_mode.c"
	.text
.Ltext0:
	.section	.text.unlikely.gf_double,"ax",@progbits
.LCOLDB0:
	.section	.text.gf_double,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.gf_double
.Ltext_cold0:
	.section	.text.gf_double
	.globl	gf_double
	.type	gf_double, @function
gf_double:
.LFB0:
	.file 1 "src/cmac_mode.c"
	.loc 1 87 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 89 0
	movl	$16, %edx
	.loc 1 87 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 87 0
	movl	12(%ebp), %ebx
.LVL1:
	.loc 1 89 0
	movb	(%ebx), %al
	sarb	$7, %al
	andl	$-121, %eax
.LVL2:
.L4:
	.loc 1 92 0
	movzbl	-1(%ebx,%edx), %ecx
	addl	%ecx, %ecx
	xorl	%ecx, %eax
	movl	8(%ebp), %ecx
	movb	%al, -1(%ecx,%edx)
	.loc 1 93 0
	decl	%edx
.LVL3:
	je	.L1
.LVL4:
	.loc 1 96 0
	movb	(%ebx,%edx), %al
	shrb	$7, %al
.LVL5:
	.loc 1 97 0
	jmp	.L4
.LVL6:
.L1:
	.loc 1 98 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	gf_double, .-gf_double
	.section	.text.unlikely.gf_double
.LCOLDE0:
	.section	.text.gf_double
.LHOTE0:
	.section	.text.unlikely.tc_cmac_erase,"ax",@progbits
.LCOLDB1:
	.section	.text.tc_cmac_erase,"ax",@progbits
.LHOTB1:
	.globl	tc_cmac_erase
	.type	tc_cmac_erase, @function
tc_cmac_erase:
.LFB2:
	.loc 1 116 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 116 0
	movl	8(%ebp), %edx
	.loc 1 117 0
	testl	%edx, %edx
	je	.L9
	.loc 1 120 0
	pushl	%eax
	pushl	$84
	pushl	$0
	pushl	%edx
	call	_set
.LVL8:
	.loc 1 121 0
	addl	$16, %esp
	movl	$1, %eax
.L9:
	.loc 1 122 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	tc_cmac_erase, .-tc_cmac_erase
	.section	.text.unlikely.tc_cmac_erase
.LCOLDE1:
	.section	.text.tc_cmac_erase
.LHOTE1:
	.section	.text.unlikely.tc_cmac_init,"ax",@progbits
.LCOLDB2:
	.section	.text.tc_cmac_init,"ax",@progbits
.LHOTB2:
	.globl	tc_cmac_init
	.type	tc_cmac_init, @function
tc_cmac_init:
.LFB3:
	.loc 1 124 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 124 0
	movl	8(%ebp), %ebx
	.loc 1 125 0
	testl	%ebx, %ebx
	je	.L14
	.loc 1 128 0
	pushl	%eax
	pushl	$16
	pushl	$0
	pushl	%ebx
	call	_set
.LVL10:
	.loc 1 129 0
	leal	48(%ebx), %eax
	addl	$12, %esp
	pushl	$16
	pushl	$0
	pushl	%eax
	call	_set
.LVL11:
	.loc 1 130 0
	movl	$0, 68(%ebx)
	.loc 1 131 0
	movl	$0, 76(%ebx)
	.loc 1 132 0
	addl	$16, %esp
	.loc 1 131 0
	movl	$65536, 80(%ebx)
	.loc 1 132 0
	movl	$1, %eax
.L14:
	.loc 1 133 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	tc_cmac_init, .-tc_cmac_init
	.section	.text.unlikely.tc_cmac_init
.LCOLDE2:
	.section	.text.tc_cmac_init
.LHOTE2:
	.section	.text.unlikely.tc_cmac_setup,"ax",@progbits
.LCOLDB3:
	.section	.text.tc_cmac_setup,"ax",@progbits
.LHOTB3:
	.globl	tc_cmac_setup
	.type	tc_cmac_setup, @function
tc_cmac_setup:
.LFB1:
	.loc 1 100 0
	.cfi_startproc
.LVL12:
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
	.loc 1 100 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	16(%ebp), %esi
	.loc 1 101 0
	testl	%ebx, %ebx
	je	.L20
	testl	%edi, %edi
	je	.L20
	.loc 1 105 0
	pushl	%eax
	pushl	$84
	pushl	$0
	pushl	%ebx
	call	_set
.LVL13:
	.loc 1 106 0
	movl	%esi, 72(%ebx)
	.loc 1 107 0
	popl	%edx
	popl	%ecx
	pushl	%edi
	pushl	%esi
	.loc 1 110 0
	leal	16(%ebx), %esi
	.loc 1 107 0
	call	tc_aes128_set_encrypt_key
.LVL14:
	.loc 1 108 0
	addl	$12, %esp
	pushl	$16
	pushl	$0
	pushl	%ebx
	call	_set
.LVL15:
	.loc 1 109 0
	addl	$12, %esp
	pushl	72(%ebx)
	pushl	%ebx
	pushl	%ebx
	call	tc_aes_encrypt
.LVL16:
	.loc 1 110 0
	popl	%edi
	popl	%eax
	pushl	%ebx
	pushl	%esi
	call	gf_double
.LVL17:
	.loc 1 111 0
	popl	%eax
	leal	32(%ebx), %eax
	popl	%edx
	pushl	%esi
	pushl	%eax
	call	gf_double
.LVL18:
	.loc 1 112 0
	movl	%ebx, (%esp)
	call	tc_cmac_init
.LVL19:
	.loc 1 113 0
	addl	$16, %esp
	movl	$1, %eax
	jmp	.L19
.L20:
	.loc 1 103 0
	xorl	%eax, %eax
.L19:
	.loc 1 114 0
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
	.size	tc_cmac_setup, .-tc_cmac_setup
	.section	.text.unlikely.tc_cmac_setup
.LCOLDE3:
	.section	.text.tc_cmac_setup
.LHOTE3:
	.section	.text.unlikely.tc_cmac_update,"ax",@progbits
.LCOLDB4:
	.section	.text.tc_cmac_update,"ax",@progbits
.LHOTB4:
	.globl	tc_cmac_update
	.type	tc_cmac_update, @function
tc_cmac_update:
.LFB4:
	.loc 1 135 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 138 0
	xorl	%eax, %eax
	.loc 1 135 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 135 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	.loc 1 137 0
	testl	%ebx, %ebx
	je	.L23
	.loc 1 140 0
	testl	%esi, %esi
	je	.L45
	.loc 1 138 0
	xorl	%eax, %eax
	.loc 1 143 0
	cmpl	$0, 12(%ebp)
	je	.L23
	.loc 1 146 0
	movl	80(%ebx), %ecx
	movl	76(%ebx), %edx
	movl	%ecx, %edi
	orl	%edx, %edi
	je	.L23
	.loc 1 149 0
	movl	%edx, %eax
	movl	%ecx, %edx
	addl	$-1, %eax
	movl	%eax, 76(%ebx)
	.loc 1 150 0
	movl	68(%ebx), %eax
	.loc 1 149 0
	adcl	$-1, %edx
	movl	%edx, 80(%ebx)
	.loc 1 150 0
	testl	%eax, %eax
	je	.L25
.LBB2:
	.loc 1 151 0
	movl	$16, %edx
	subl	%eax, %edx
	leal	48(%eax), %eax
	.loc 1 152 0
	cmpl	%edx, %esi
	.loc 1 151 0
	movl	%edx, %edi
.LVL21:
	.loc 1 152 0
	jnb	.L26
	.loc 1 153 0
	addl	%ebx, %eax
	pushl	%esi
	pushl	12(%ebp)
	pushl	%esi
	pushl	%eax
	call	_copy
.LVL22:
	.loc 1 154 0
	addl	%esi, 68(%ebx)
	jmp	.L46
.LVL23:
.L26:
	.loc 1 157 0
	addl	%ebx, %eax
	pushl	%edx
	pushl	12(%ebp)
	pushl	%edx
	pushl	%eax
	.loc 1 161 0
	subl	%edi, %esi
	.loc 1 157 0
	call	_copy
.LVL24:
	.loc 1 162 0
	addl	%edi, 12(%ebp)
	.loc 1 163 0
	movl	$0, 68(%ebx)
.LVL25:
	addl	$16, %esp
	.loc 1 164 0
	xorl	%eax, %eax
.LVL26:
.L27:
	.loc 1 165 0 discriminator 3
	movb	48(%ebx,%eax), %dl
	xorb	%dl, (%ebx,%eax)
	.loc 1 164 0 discriminator 3
	incl	%eax
.LVL27:
	cmpl	$16, %eax
	jne	.L27
	.loc 1 167 0
	pushl	%edx
	pushl	72(%ebx)
	pushl	%ebx
	pushl	%ebx
	call	tc_aes_encrypt
.LVL28:
	addl	$16, %esp
.LVL29:
.L25:
.LBE2:
	movl	%esi, %edi
.LVL30:
.L28:
	movl	%esi, %ecx
	subl	%edi, %ecx
	addl	12(%ebp), %ecx
.LVL31:
	.loc 1 169 0
	cmpl	$16, %edi
	jbe	.L47
	xorl	%eax, %eax
.L29:
.LVL32:
	.loc 1 171 0 discriminator 3
	movb	(%ecx,%eax), %dl
	xorb	%dl, (%ebx,%eax)
	.loc 1 170 0 discriminator 3
	incl	%eax
.LVL33:
	cmpl	$16, %eax
	jne	.L29
.LVL34:
	.loc 1 173 0
	pushl	%eax
	pushl	72(%ebx)
	.loc 1 175 0
	subl	$16, %edi
.LVL35:
	.loc 1 173 0
	pushl	%ebx
	pushl	%ebx
	call	tc_aes_encrypt
.LVL36:
	.loc 1 175 0
	addl	$16, %esp
	jmp	.L28
.LVL37:
.L47:
	.loc 1 177 0
	testl	%edi, %edi
	je	.L45
	.loc 1 178 0
	leal	48(%ebx), %eax
	pushl	%edi
	pushl	%ecx
	pushl	%edi
	pushl	%eax
	call	_copy
.LVL38:
	.loc 1 179 0
	movl	%edi, 68(%ebx)
.LVL39:
.L46:
	addl	$16, %esp
.L45:
	.loc 1 181 0
	movl	$1, %eax
.L23:
	.loc 1 182 0
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
.LFE4:
	.size	tc_cmac_update, .-tc_cmac_update
	.section	.text.unlikely.tc_cmac_update
.LCOLDE4:
	.section	.text.tc_cmac_update
.LHOTE4:
	.section	.text.unlikely.tc_cmac_final,"ax",@progbits
.LCOLDB5:
	.section	.text.tc_cmac_final,"ax",@progbits
.LHOTB5:
	.globl	tc_cmac_final
	.type	tc_cmac_final, @function
tc_cmac_final:
.LFB5:
	.loc 1 184 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 184 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 187 0
	testl	%esi, %esi
	je	.L53
	testl	%ebx, %ebx
	je	.L53
	.loc 1 191 0
	movl	68(%ebx), %eax
	.loc 1 192 0
	leal	16(%ebx), %ecx
	.loc 1 191 0
	cmpl	$16, %eax
	je	.L51
.LVL41:
.LBB3:
	.loc 1 195 0
	pushl	%edx
	movl	$16, %edx
	subl	%eax, %edx
.LVL42:
	leal	48(%ebx,%eax), %eax
	pushl	%edx
	pushl	$0
	pushl	%eax
	call	_set
.LVL43:
	.loc 1 196 0
	movl	68(%ebx), %eax
	.loc 1 197 0
	leal	32(%ebx), %ecx
.LVL44:
	addl	$16, %esp
	.loc 1 196 0
	movb	$-128, 48(%ebx,%eax)
.LVL45:
.L51:
.LBE3:
	.loc 1 199 0
	xorl	%eax, %eax
.LVL46:
.L52:
	.loc 1 200 0 discriminator 3
	movb	(%ebx,%eax), %dl
	xorb	48(%ebx,%eax), %dl
	xorb	(%ecx,%eax), %dl
	movb	%dl, (%ebx,%eax)
	.loc 1 199 0 discriminator 3
	incl	%eax
.LVL47:
	cmpl	$16, %eax
	jne	.L52
.LVL48:
	.loc 1 202 0
	pushl	%eax
	pushl	72(%ebx)
	pushl	%ebx
	pushl	%esi
	call	tc_aes_encrypt
.LVL49:
	.loc 1 203 0
	movl	%ebx, (%esp)
	call	tc_cmac_erase
.LVL50:
	.loc 1 204 0
	addl	$16, %esp
	movl	$1, %eax
	jmp	.L49
.LVL51:
.L53:
	.loc 1 189 0
	xorl	%eax, %eax
.LVL52:
.L49:
	.loc 1 205 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	tc_cmac_final, .-tc_cmac_final
	.section	.text.unlikely.tc_cmac_final
.LCOLDE5:
	.section	.text.tc_cmac_final
.LHOTE5:
	.globl	gf_wrap
	.section	.rodata.gf_wrap,"a",@progbits
	.type	gf_wrap, @object
	.size	gf_wrap, 1
gf_wrap:
	.byte	-121
	.text
.Letext0:
	.section	.text.unlikely.gf_double
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x436
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF41
	.byte	0xc
	.long	.LASF42
	.long	.LASF43
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x2
	.long	0x37
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
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x8
	.long	0x6c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x1a
	.long	0x61
	.uleb128 0x5
	.long	.LASF17
	.byte	0xb0
	.byte	0x1
	.byte	0x2f
	.long	0xb0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x30
	.long	0xb0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x7a
	.long	0xc0
	.uleb128 0x8
	.long	0xc0
	.byte	0x2b
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x31
	.long	0xd2
	.uleb128 0x9
	.byte	0x4
	.long	0x97
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x39
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF16
	.uleb128 0x5
	.long	.LASF18
	.byte	0x54
	.byte	0x1
	.byte	0x3f
	.long	0x154
	.uleb128 0xa
	.string	"iv"
	.byte	0x1
	.byte	0x40
	.long	0x154
	.byte	0
	.uleb128 0xa
	.string	"K1"
	.byte	0x1
	.byte	0x41
	.long	0x154
	.byte	0x10
	.uleb128 0xa
	.string	"K2"
	.byte	0x1
	.byte	0x42
	.long	0x154
	.byte	0x20
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x43
	.long	0x154
	.byte	0x30
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x44
	.long	0x7a
	.byte	0x40
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x45
	.long	0x7a
	.byte	0x44
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x46
	.long	0xc7
	.byte	0x48
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0x47
	.long	0x8c
	.byte	0x4c
	.byte	0
	.uleb128 0x7
	.long	0x81
	.long	0x164
	.uleb128 0x8
	.long	0xc0
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x1
	.byte	0x48
	.long	0x16f
	.uleb128 0x9
	.byte	0x4
	.long	0xea
	.uleb128 0xb
	.long	.LASF44
	.byte	0x1
	.byte	0x56
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x56
	.long	0x1c3
	.long	.LLST0
	.uleb128 0xd
	.string	"in"
	.byte	0x1
	.byte	0x56
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.byte	0x58
	.long	0x1c3
	.long	.LLST1
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x59
	.long	0x81
	.long	.LLST2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x81
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x73
	.long	0x73
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f8
	.uleb128 0xd
	.string	"s"
	.byte	0x1
	.byte	0x73
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LVL8
	.long	0x40d
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0x7b
	.long	0x73
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x230
	.uleb128 0xd
	.string	"s"
	.byte	0x1
	.byte	0x7b
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LVL10
	.long	0x40d
	.uleb128 0x11
	.long	.LVL11
	.long	0x40d
	.byte	0
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.byte	0x63
	.long	0x73
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b1
	.uleb128 0xd
	.string	"s"
	.byte	0x1
	.byte	0x63
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"key"
	.byte	0x1
	.byte	0x63
	.long	0x2b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x63
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LVL13
	.long	0x40d
	.uleb128 0x11
	.long	.LVL14
	.long	0x418
	.uleb128 0x11
	.long	.LVL15
	.long	0x40d
	.uleb128 0x11
	.long	.LVL16
	.long	0x423
	.uleb128 0x11
	.long	.LVL17
	.long	0x175
	.uleb128 0x11
	.long	.LVL18
	.long	0x175
	.uleb128 0x11
	.long	.LVL19
	.long	0x1f8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x2b7
	.uleb128 0x13
	.long	0x81
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x86
	.long	0x73
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x357
	.uleb128 0xd
	.string	"s"
	.byte	0x1
	.byte	0x86
	.long	0x164
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.byte	0x86
	.long	0x2b1
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF32
	.byte	0x1
	.byte	0x86
	.long	0xd8
	.long	.LLST4
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x88
	.long	0x7a
	.long	.LLST5
	.uleb128 0x15
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x344
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x97
	.long	0xd8
	.long	.LLST6
	.uleb128 0x11
	.long	.LVL22
	.long	0x42e
	.uleb128 0x11
	.long	.LVL24
	.long	0x42e
	.uleb128 0x11
	.long	.LVL28
	.long	0x423
	.byte	0
	.uleb128 0x11
	.long	.LVL36
	.long	0x423
	.uleb128 0x11
	.long	.LVL38
	.long	0x42e
	.byte	0
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0xb7
	.long	0x73
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df
	.uleb128 0xc
	.string	"tag"
	.byte	0x1
	.byte	0xb7
	.long	0x1c3
	.long	.LLST7
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0xb7
	.long	0x164
	.long	.LLST8
	.uleb128 0xe
	.string	"k"
	.byte	0x1
	.byte	0xb9
	.long	0x1c3
	.long	.LLST9
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xba
	.long	0x7a
	.long	.LLST10
	.uleb128 0x15
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0x3cc
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.byte	0xc2
	.long	0xd8
	.long	.LLST11
	.uleb128 0x11
	.long	.LVL43
	.long	0x40d
	.byte	0
	.uleb128 0x11
	.long	.LVL49
	.long	0x423
	.uleb128 0x11
	.long	.LVL50
	.long	0x1c9
	.byte	0
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x54
	.long	0x3f2
	.quad	0x1000000000000
	.uleb128 0x13
	.long	0x8c
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0x55
	.long	0x408
	.uleb128 0x5
	.byte	0x3
	.long	gf_wrap
	.uleb128 0x13
	.long	0x37
	.uleb128 0x18
	.long	.LASF37
	.long	.LASF37
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF38
	.long	.LASF38
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.long	.LASF39
	.long	.LASF39
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.long	.LASF40
	.long	.LASF40
	.byte	0x1
	.byte	0x4f
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
	.uleb128 0x8
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL2
	.long	.LVL3
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.long	.LVL6
	.long	.LFE0
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL6
	.long	.LFE0
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.value	0xb
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL20
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL31
	.long	.LVL36-1
	.value	0x1
	.byte	0x51
	.long	.LVL36-1
	.long	.LVL36
	.value	0xc
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x51
	.long	.LVL38-1
	.long	.LVL39
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL20
	.long	.LVL24
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL24
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	.LVL31
	.long	.LVL35
	.value	0x1
	.byte	0x57
	.long	.LVL35
	.long	.LVL36
	.value	0x3
	.byte	0x77
	.sleb128 16
	.byte	0x9f
	.long	.LVL36
	.long	.LVL39
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST5:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL28-1
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL34
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	.LVL22-1
	.long	.LVL23
	.value	0x1
	.byte	0x57
	.long	.LVL23
	.long	.LVL24-1
	.value	0x1
	.byte	0x52
	.long	.LVL24-1
	.long	.LVL29
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST7:
	.long	.LVL40
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x56
	.long	.LVL52
	.long	.LFE5
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL40
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	.LVL52
	.long	.LFE5
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST9:
	.long	.LVL44
	.long	.LVL49-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL45
	.long	.LVL46
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL46
	.long	.LVL48
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL41
	.long	.LVL42
	.value	0x5
	.byte	0x40
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB1
	.long	.LFE1
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"words"
.LASF12:
	.string	"uint64_t"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF25:
	.string	"TCCmacState_t"
.LASF29:
	.string	"tc_cmac_setup"
.LASF39:
	.string	"tc_aes_encrypt"
.LASF21:
	.string	"keyid"
.LASF27:
	.string	"tc_cmac_erase"
.LASF11:
	.string	"uint8_t"
.LASF17:
	.string	"tc_aes_key_sched_struct"
.LASF22:
	.string	"leftover_offset"
.LASF38:
	.string	"tc_aes128_set_encrypt_key"
.LASF6:
	.string	"long long int"
.LASF33:
	.string	"remaining_space"
.LASF4:
	.string	"long int"
.LASF7:
	.string	"__uint8_t"
.LASF37:
	.string	"_set"
.LASF18:
	.string	"tc_cmac_struct"
.LASF16:
	.string	"long double"
.LASF36:
	.string	"MAX_CALLS"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"gf_wrap"
.LASF24:
	.string	"countdown"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF28:
	.string	"tc_cmac_init"
.LASF20:
	.string	"leftover"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"carry"
.LASF30:
	.string	"tc_cmac_update"
.LASF43:
	.string	"/home/stone/Documents/pca"
.LASF8:
	.string	"__uint64_t"
.LASF31:
	.string	"data"
.LASF14:
	.string	"TCAesKeySched_t"
.LASF5:
	.string	"long unsigned int"
.LASF32:
	.string	"data_length"
.LASF41:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF35:
	.string	"remaining"
.LASF23:
	.string	"sched"
.LASF44:
	.string	"gf_double"
.LASF42:
	.string	"src/cmac_mode.c"
.LASF34:
	.string	"tc_cmac_final"
.LASF40:
	.string	"_copy"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

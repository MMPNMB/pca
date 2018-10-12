	.file	"mayfly.c"
	.text
.Ltext0:
	.section	.text.unlikely.mayfly_init,"ax",@progbits
.LCOLDB0:
	.section	.text.mayfly_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.mayfly_init
.Ltext_cold0:
	.section	.text.mayfly_init
	.globl	mayfly_init
	.type	mayfly_init, @function
mayfly_init:
.LFB0:
	.file 1 "src/mayfly.c"
	.loc 1 91 0
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
	.loc 1 93 0
	movb	$4, %bl
	.loc 1 91 0
	subl	$28, %esp
.LVL1:
.L2:
	.loc 1 94 0
	decl	%ebx
.LVL2:
	cmpb	$-1, %bl
	je	.L1
.LBB2:
	.loc 1 100 0
	movzbl	%bl, %esi
.LBE2:
	movb	$4, %dl
.LBB3:
	.loc 1 98 0
	imull	$48, %esi, %eax
	movl	%eax, -28(%ebp)
.L5:
.LVL3:
	.loc 1 97 0
	decl	%edx
.LVL4:
	cmpb	$-1, %dl
	je	.L2
	.loc 1 100 0
	movzbl	%dl, %eax
	.loc 1 98 0
	movl	-28(%ebp), %edi
	.loc 1 100 0
	movb	%dl, -29(%ebp)
	.loc 1 98 0
	imull	$12, %eax, %ecx
	leal	(%eax,%esi,4), %eax
.LVL5:
	pushl	%edx
	leal	mfl(,%eax,8), %eax
	leal	mft(%ecx,%edi), %ecx
	leal	4(%ecx), %edi
	pushl	%edi
	pushl	%ecx
	pushl	%eax
	call	memq_init
.LVL6:
	addl	$16, %esp
	movb	-29(%ebp), %dl
	jmp	.L5
.LVL7:
.L1:
.LBE3:
	.loc 1 103 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL8:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	mayfly_init, .-mayfly_init
	.section	.text.unlikely.mayfly_init
.LCOLDE0:
	.section	.text.mayfly_init
.LHOTE0:
	.section	.text.unlikely.mayfly_enable,"ax",@progbits
.LCOLDB1:
	.section	.text.mayfly_enable,"ax",@progbits
.LHOTB1:
	.globl	mayfly_enable
	.type	mayfly_enable, @function
mayfly_enable:
.LFB1:
	.loc 1 105 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 105 0
	movl	16(%ebp), %ecx
	movzbl	12(%ebp), %edx
	movzbl	8(%ebp), %eax
	.loc 1 106 0
	testb	%cl, %cl
	je	.L9
	.loc 1 107 0
	imull	$48, %edx, %ebx
	imull	$12, %eax, %esi
	leal	mft(%esi,%ebx), %esi
	movb	8(%esi), %bl
	cmpb	9(%esi), %bl
	jne	.L10
	.loc 1 109 0
	incl	%ebx
	movb	%bl, 8(%esi)
.L10:
	.loc 1 111 0
	movzbl	%cl, %ecx
	movl	%edx, 12(%ebp)
.LVL10:
	movl	%eax, 8(%ebp)
.LVL11:
	.loc 1 119 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.loc 1 111 0
	movl	%ecx, 16(%ebp)
.LVL12:
	.loc 1 119 0
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 111 0
	jmp	mayfly_enable_cb
.LVL13:
.L9:
	.cfi_restore_state
	.loc 1 113 0
	imull	$48, %edx, %ecx
	imull	$12, %eax, %ebx
	leal	mft(%ebx,%ecx), %ebx
	movb	10(%ebx), %cl
	cmpb	11(%ebx), %cl
	jne	.L8
	.loc 1 115 0
	incl	%ecx
	movb	%cl, 10(%ebx)
	.loc 1 116 0
	movl	%edx, 12(%ebp)
.LVL14:
	.loc 1 119 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.loc 1 116 0
	movl	%eax, 8(%ebp)
.LVL15:
	.loc 1 119 0
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 116 0
	jmp	mayfly_pend
.LVL16:
.L8:
	.cfi_restore_state
	.loc 1 119 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	mayfly_enable, .-mayfly_enable
	.section	.text.unlikely.mayfly_enable
.LCOLDE1:
	.section	.text.mayfly_enable
.LHOTE1:
	.section	.text.unlikely.mayfly_enqueue,"ax",@progbits
.LCOLDB2:
	.section	.text.mayfly_enqueue,"ax",@progbits
.LHOTB2:
	.globl	mayfly_enqueue
	.type	mayfly_enqueue, @function
mayfly_enqueue:
.LFB2:
	.loc 1 122 0
	.cfi_startproc
.LVL17:
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
	.loc 1 126 0
	cmpb	$0, 16(%ebp)
	.loc 1 122 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	movl	20(%ebp), %ecx
	movl	%eax, -28(%ebp)
	.loc 1 126 0
	je	.L14
.L16:
	movl	$1, %esi
	jmp	.L15
.L14:
	.loc 1 125 0
	movzbl	-28(%ebp), %edi
	movzbl	%bl, %esi
	pushl	%eax
	pushl	%eax
	pushl	%esi
	movl	%ecx, -32(%ebp)
	pushl	%edi
	call	mayfly_prio_is_equal
.LVL18:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-32(%ebp), %ecx
	je	.L16
	.loc 1 126 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	%edi
	call	mayfly_is_enabled
.LVL19:
	.loc 1 125 0 discriminator 1
	addl	$16, %esp
	testl	%eax, %eax
	movl	-32(%ebp), %ecx
	je	.L16
	.loc 1 127 0 discriminator 2
	imull	$48, %esi, %esi
	imull	$12, %edi, %edi
	.loc 1 126 0 discriminator 2
	movb	mft+11(%edi,%esi), %al
	cmpb	%al, mft+10(%edi,%esi)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %esi
.L15:
.LVL20:
	.loc 1 129 0
	movb	1(%ecx), %dl
.LVL21:
	.loc 1 130 0
	movb	(%ecx), %al
	subl	%edx, %eax
.LVL22:
	.loc 1 131 0
	andb	$3, %al
.LVL23:
	movb	%al, -32(%ebp)
	je	.L17
	.loc 1 132 0
	testl	%esi, %esi
	je	.L18
	.loc 1 133 0
	cmpb	$1, -32(%ebp)
	.loc 1 138 0
	movl	$1, %eax
.LVL24:
	.loc 1 133 0
	je	.L19
	.loc 1 135 0
	movzbl	-28(%ebp), %eax
	.loc 1 134 0
	incl	%edx
.LVL25:
	.loc 1 135 0
	movzbl	%bl, %ebx
	.loc 1 134 0
	movb	%dl, (%ecx)
.LVL26:
	.loc 1 135 0
	pushl	%esi
.LVL27:
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	jmp	.L31
.LVL28:
.L18:
	.loc 1 140 0
	addl	$2, %edx
.LVL29:
	movb	%dl, (%ecx)
	jmp	.L20
.LVL30:
.L17:
	.loc 1 142 0
	testl	%esi, %esi
	jne	.L21
.LVL31:
.L20:
	.loc 1 143 0
	subl	$12, %esp
	pushl	8(%ecx)
.LVL32:
	call	*12(%ecx)
.LVL33:
	jmp	.L32
.LVL34:
.L21:
	.loc 1 147 0
	movzbl	-28(%ebp), %esi
.LVL35:
	.loc 1 146 0
	incl	%edx
.LVL36:
	.loc 1 147 0
	movzbl	%bl, %ebx
	.loc 1 146 0
	movb	%dl, (%ecx)
.LVL37:
	.loc 1 147 0
	pushl	%eax
.LVL38:
	imull	$48, %ebx, %eax
	imull	$12, %esi, %edx
	leal	mft+4(%edx,%eax), %eax
	pushl	%eax
	pushl	%ecx
	pushl	4(%ecx)
	call	memq_enqueue
.LVL39:
	.loc 1 148 0
	popl	%edx
	popl	%ecx
	pushl	%ebx
	pushl	%esi
.L31:
	call	mayfly_pend
.LVL40:
.L32:
	.loc 1 149 0
	addl	$16, %esp
	xorl	%eax, %eax
.L19:
	.loc 1 150 0
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
.LFE2:
	.size	mayfly_enqueue, .-mayfly_enqueue
	.section	.text.unlikely.mayfly_enqueue
.LCOLDE2:
	.section	.text.mayfly_enqueue
.LHOTE2:
	.section	.text.unlikely.mayfly_run,"ax",@progbits
.LCOLDB3:
	.section	.text.mayfly_run,"ax",@progbits
.LHOTB3:
	.globl	mayfly_run
	.type	mayfly_run, @function
mayfly_run:
.LFB3:
	.loc 1 152 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 152 0
	movl	8(%ebp), %eax
	.loc 1 156 0
	movb	$4, -41(%ebp)
	.loc 1 154 0
	movb	$0, -43(%ebp)
	.loc 1 153 0
	movb	$0, -42(%ebp)
	.loc 1 152 0
	movl	%eax, -56(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL42:
.LBB4:
	.loc 1 160 0
	movzbl	-56(%ebp), %eax
	imull	$48, %eax, %ebx
	movl	%eax, -52(%ebp)
.LVL43:
.L34:
.LBE4:
	.loc 1 157 0
	decb	-41(%ebp)
.LVL44:
	cmpb	$-1, -41(%ebp)
	je	.L57
.LVL45:
.LBB6:
	.loc 1 160 0
	movzbl	-41(%ebp), %eax
	.loc 1 159 0
	movl	$0, -32(%ebp)
	.loc 1 160 0
	movl	%eax, -48(%ebp)
	pushl	%eax
	leal	-32(%ebp), %eax
	imull	$12, -48(%ebp), %esi
	pushl	%eax
	leal	(%esi,%ebx), %eax
	pushl	mft+4(%eax)
	pushl	mft(%eax)
	call	memq_peek
.LVL46:
	.loc 1 163 0
	addl	$16, %esp
	.loc 1 160 0
	movl	%eax, %edi
.LVL47:
.L35:
	.loc 1 163 0
	testl	%edi, %edi
	je	.L54
.LBB5:
	.loc 1 166 0
	movl	-32(%ebp), %eax
.LVL48:
	movb	(%eax), %dl
.LVL49:
	.loc 1 167 0
	movb	1(%eax), %cl
	subl	%ecx, %edx
.LVL50:
	andl	$3, %edx
	movb	%dl, -44(%ebp)
.LVL51:
	.loc 1 168 0
	decb	%dl
.LVL52:
	jne	.L36
	.loc 1 169 0
	decl	%ecx
	.loc 1 170 0
	subl	$12, %esp
	.loc 1 169 0
	movb	%cl, 1(%eax)
	.loc 1 170 0
	pushl	8(%eax)
	call	*12(%eax)
.LVL53:
	addl	$16, %esp
.L36:
	.loc 1 172 0
	movl	-32(%ebp), %eax
	movb	(%eax), %dl
.LVL54:
	.loc 1 173 0
	movzbl	1(%eax), %eax
	movl	%edx, %ecx
	movb	%dl, -57(%ebp)
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$3, %eax
	decl	%eax
	je	.L37
	.loc 1 174 0
	pushl	%eax
	leal	mft(%esi,%ebx), %eax
	pushl	$0
	pushl	%eax
	pushl	4(%eax)
	call	memq_dequeue
.LVL55:
	.loc 1 177 0
	movl	-32(%ebp), %eax
	.loc 1 178 0
	movb	-57(%ebp), %dl
	addl	$16, %esp
	.loc 1 177 0
	movl	%edi, 4(%eax)
	.loc 1 178 0
	movb	%dl, 1(%eax)
.L37:
	.loc 1 180 0
	leal	-32(%ebp), %eax
.LVL56:
	pushl	%edi
	pushl	%eax
	leal	(%esi,%ebx), %eax
	pushl	mft+4(%eax)
	pushl	mft(%eax)
	call	memq_peek
.LVL57:
	.loc 1 183 0
	addl	$16, %esp
	cmpb	$1, -44(%ebp)
	.loc 1 180 0
	movl	%eax, %edi
.LVL58:
	.loc 1 183 0
	jne	.L35
	.loc 1 184 0
	cmpb	$0, -41(%ebp)
	jne	.L47
	testl	%eax, %eax
	je	.L54
.L47:
	.loc 1 185 0
	pushl	%ecx
	pushl	%ecx
	pushl	-52(%ebp)
	pushl	-52(%ebp)
	call	mayfly_pend
.LVL59:
	jmp	.L56
.LVL60:
.L54:
.LBE5:
	.loc 1 190 0
	imull	$12, -48(%ebp), %eax
	leal	mft(%eax,%ebx), %eax
	movb	10(%eax), %dl
	cmpb	11(%eax), %dl
	je	.L42
.LVL61:
	.loc 1 193 0
	movb	%dl, 11(%eax)
	.loc 1 192 0
	movb	$1, -42(%ebp)
.LVL62:
.L42:
	.loc 1 196 0
	imull	$12, -48(%ebp), %eax
	leal	mft(%eax,%ebx), %eax
	movb	8(%eax), %dl
	cmpb	9(%eax), %dl
	je	.L34
.LVL63:
	.loc 1 199 0
	movb	%dl, 9(%eax)
	.loc 1 198 0
	movb	$1, -43(%ebp)
.LVL64:
	jmp	.L34
.LVL65:
.L57:
.LBE6:
	.loc 1 203 0
	movb	-43(%ebp), %al
	xorl	$1, %eax
	testb	%al, -42(%ebp)
	je	.L33
	.loc 1 204 0
	movzbl	-56(%ebp), %eax
	pushl	%edx
	pushl	$0
	pushl	%eax
	pushl	%eax
	call	mayfly_enable_cb
.LVL66:
.L56:
	addl	$16, %esp
.L33:
	.loc 1 206 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L45
	call	__stack_chk_fail
.LVL67:
.L45:
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
	.size	mayfly_run, .-mayfly_run
	.section	.text.unlikely.mayfly_run
.LCOLDE3:
	.section	.text.mayfly_run
.LHOTE3:
	.section	.bss.mfl,"aw",@nobits
	.align 32
	.type	mfl, @object
	.size	mfl, 128
mfl:
	.zero	128
	.section	.bss.mft,"aw",@nobits
	.align 32
	.type	mft, @object
	.size	mft, 192
mft:
	.zero	192
	.text
.Letext0:
	.section	.text.unlikely.mayfly_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x42a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF44
	.byte	0xc
	.long	.LASF45
	.long	.LASF46
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
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0x33
	.long	0x2c
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x35
	.long	0x64
	.uleb128 0x5
	.long	.LASF13
	.byte	0x8
	.byte	0x1
	.byte	0x37
	.long	0xa6
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x38
	.long	0xa6
	.byte	0
	.uleb128 0x7
	.string	"mem"
	.byte	0x1
	.byte	0x39
	.long	0xac
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x81
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x3b
	.long	0x81
	.uleb128 0x5
	.long	.LASF14
	.byte	0x10
	.byte	0x1
	.byte	0x41
	.long	0x101
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x42
	.long	0x101
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x43
	.long	0x6b
	.byte	0x1
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x44
	.long	0x106
	.byte	0x4
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x45
	.long	0xac
	.byte	0x8
	.uleb128 0x7
	.string	"fp"
	.byte	0x1
	.byte	0x46
	.long	0x117
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	0x6b
	.uleb128 0x8
	.byte	0x4
	.long	0xae
	.uleb128 0xb
	.long	0x117
	.uleb128 0xc
	.long	0xac
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x10c
	.uleb128 0xd
	.byte	0xc
	.byte	0x1
	.byte	0x51
	.long	0x16e
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x52
	.long	0x106
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x53
	.long	0x106
	.byte	0x4
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x54
	.long	0x6b
	.byte	0x8
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x55
	.long	0x6b
	.byte	0x9
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x56
	.long	0x6b
	.byte	0xa
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0x57
	.long	0x6b
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x5a
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b1
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x5c
	.long	0x6b
	.long	.LLST0
	.uleb128 0x10
	.long	.Ldebug_ranges0+0
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x5f
	.long	0x6b
	.long	.LLST1
	.uleb128 0x11
	.long	.LVL6
	.long	0x3cc
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x1
	.byte	0x68
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x206
	.uleb128 0x12
	.long	.LASF26
	.byte	0x1
	.byte	0x68
	.long	0x6b
	.long	.LLST2
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x68
	.long	0x6b
	.long	.LLST3
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.byte	0x68
	.long	0x6b
	.long	.LLST4
	.uleb128 0x13
	.long	.LVL13
	.long	0x3d7
	.uleb128 0x13
	.long	.LVL16
	.long	0x3e2
	.byte	0
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0x78
	.long	0x76
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x299
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0x78
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x78
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF30
	.byte	0x1
	.byte	0x78
	.long	0x6b
	.long	.LLST5
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x79
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xf
	.long	.LASF31
	.byte	0x1
	.byte	0x7b
	.long	0x6b
	.long	.LLST6
	.uleb128 0x17
	.string	"ack"
	.byte	0x1
	.byte	0x7c
	.long	0x6b
	.long	.LLST7
	.uleb128 0x11
	.long	.LVL18
	.long	0x3ed
	.uleb128 0x11
	.long	.LVL19
	.long	0x3f8
	.uleb128 0x11
	.long	.LVL39
	.long	0x403
	.uleb128 0x11
	.long	.LVL40
	.long	0x3e2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0xb9
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.byte	0x97
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x377
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x97
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x99
	.long	0x6b
	.long	.LLST8
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x9a
	.long	0x6b
	.long	.LLST9
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x9b
	.long	0x6b
	.long	.LLST10
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x18
	.long	0x364
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.byte	0x9e
	.long	0x106
	.long	.LLST11
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.byte	0x9f
	.long	0x299
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5-.LBB5
	.long	0x35a
	.uleb128 0xf
	.long	.LASF31
	.byte	0x1
	.byte	0xa4
	.long	0x6b
	.long	.LLST12
	.uleb128 0x17
	.string	"req"
	.byte	0x1
	.byte	0xa5
	.long	0x6b
	.long	.LLST13
	.uleb128 0x11
	.long	.LVL55
	.long	0x40e
	.uleb128 0x11
	.long	.LVL57
	.long	0x419
	.uleb128 0x11
	.long	.LVL59
	.long	0x3e2
	.byte	0
	.uleb128 0x11
	.long	.LVL46
	.long	0x419
	.byte	0
	.uleb128 0x11
	.long	.LVL66
	.long	0x3d7
	.uleb128 0x11
	.long	.LVL67
	.long	0x424
	.byte	0
	.uleb128 0x1c
	.long	0x11d
	.long	0x38d
	.uleb128 0x1d
	.long	0x38d
	.byte	0x3
	.uleb128 0x1d
	.long	0x38d
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF35
	.uleb128 0x1a
	.string	"mft"
	.byte	0x1
	.byte	0x58
	.long	0x377
	.uleb128 0x5
	.byte	0x3
	.long	mft
	.uleb128 0x1c
	.long	0xae
	.long	0x3bb
	.uleb128 0x1d
	.long	0x38d
	.byte	0x3
	.uleb128 0x1d
	.long	0x38d
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.string	"mfl"
	.byte	0x1
	.byte	0x59
	.long	0x3a5
	.uleb128 0x5
	.byte	0x3
	.long	mfl
	.uleb128 0x1e
	.long	.LASF36
	.long	.LASF36
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF37
	.long	.LASF37
	.byte	0x1
	.byte	0x4d
	.uleb128 0x1e
	.long	.LASF38
	.long	.LASF38
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF39
	.long	.LASF39
	.byte	0x1
	.byte	0x4f
	.uleb128 0x1e
	.long	.LASF40
	.long	.LASF40
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1e
	.long	.LASF41
	.long	.LASF41
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1e
	.long	.LASF42
	.long	.LASF42
	.byte	0x1
	.byte	0x40
	.uleb128 0x1e
	.long	.LASF43
	.long	.LASF43
	.byte	0x1
	.byte	0x3f
	.uleb128 0x1f
	.long	.LASF48
	.long	.LASF48
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
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
	.uleb128 0x2116
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL1
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x52
	.long	.LVL5
	.long	.LVL7
	.value	0x2
	.byte	0x75
	.sleb128 -29
	.long	0
	.long	0
.LLST2:
	.long	.LVL9
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL11
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL15
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL10
	.long	.LVL13-1
	.value	0x1
	.byte	0x52
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL14
	.long	.LVL16-1
	.value	0x1
	.byte	0x52
	.long	.LVL16
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL13
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST5:
	.long	.LVL17
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL20
	.long	.LVL26
	.value	0x1
	.byte	0x56
	.long	.LVL28
	.long	.LVL35
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST6:
	.long	.LVL22
	.long	.LVL23
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL28
	.long	.LVL33-1
	.value	0x1
	.byte	0x50
	.long	.LVL33-1
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL34
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LFE2
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST7:
	.long	.LVL21
	.long	.LVL25
	.value	0x1
	.byte	0x52
	.long	.LVL25
	.long	.LVL27
	.value	0x2
	.byte	0x71
	.sleb128 1
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x52
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x71
	.sleb128 1
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x52
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x71
	.sleb128 1
	.long	.LVL34
	.long	.LVL36
	.value	0x1
	.byte	0x52
	.long	.LVL36
	.long	.LVL38
	.value	0x2
	.byte	0x71
	.sleb128 1
	.long	0
	.long	0
.LLST8:
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	.LVL61
	.long	.LVL62
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL62
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	0
	.long	0
.LLST9:
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL63
	.value	0x2
	.byte	0x91
	.sleb128 -51
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL64
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 -51
	.long	0
	.long	0
.LLST10:
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x2
	.byte	0x91
	.sleb128 -49
	.long	.LVL45
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 -49
	.long	0
	.long	0
.LLST11:
	.long	.LVL47
	.long	.LVL48
	.value	0x1
	.byte	0x50
	.long	.LVL48
	.long	.LVL56
	.value	0x1
	.byte	0x57
	.long	.LVL58
	.long	.LVL59-1
	.value	0x1
	.byte	0x50
	.long	.LVL59-1
	.long	.LVL60
	.value	0x1
	.byte	0x57
	.long	.LVL60
	.long	.LVL65
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x52
	.long	.LVL52
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST13:
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	.LVL54
	.long	.LVL55-1
	.value	0x1
	.byte	0x52
	.long	.LVL55-1
	.long	.LVL60
	.value	0x3
	.byte	0x91
	.sleb128 -65
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
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
	.long	.LBB4
	.long	.LBE4
	.long	.LBB6
	.long	.LBE6
	.long	0
	.long	0
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
.LASF12:
	.string	"memq_link_t"
.LASF31:
	.string	"state"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"sizetype"
.LASF43:
	.string	"memq_peek"
.LASF41:
	.string	"memq_enqueue"
.LASF22:
	.string	"enable_ack"
.LASF47:
	.string	"mayfly_enqueue"
.LASF19:
	.string	"head"
.LASF29:
	.string	"enable"
.LASF10:
	.string	"u32_t"
.LASF27:
	.string	"mayfly_init"
.LASF34:
	.string	"link"
.LASF13:
	.string	"_memq_link"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"long int"
.LASF25:
	.string	"callee_id"
.LASF36:
	.string	"memq_init"
.LASF14:
	.string	"mayfly"
.LASF24:
	.string	"disable_ack"
.LASF20:
	.string	"tail"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"_req"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF18:
	.string	"param"
.LASF3:
	.string	"short unsigned int"
.LASF38:
	.string	"mayfly_pend"
.LASF37:
	.string	"mayfly_enable_cb"
.LASF42:
	.string	"memq_dequeue"
.LASF40:
	.string	"mayfly_is_enabled"
.LASF32:
	.string	"mayfly_run"
.LASF28:
	.string	"mayfly_enable"
.LASF5:
	.string	"long unsigned int"
.LASF26:
	.string	"caller_id"
.LASF21:
	.string	"enable_req"
.LASF23:
	.string	"disable_req"
.LASF9:
	.string	"u8_t"
.LASF44:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF45:
	.string	"src/mayfly.c"
.LASF46:
	.string	"/home/stone/Documents/pca"
.LASF33:
	.string	"disable"
.LASF16:
	.string	"_ack"
.LASF48:
	.string	"__stack_chk_fail"
.LASF39:
	.string	"mayfly_prio_is_equal"
.LASF30:
	.string	"chain"
.LASF11:
	.string	"next"
.LASF17:
	.string	"_link"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

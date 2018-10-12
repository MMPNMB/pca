	.file	"def.c"
	.text
.Ltext0:
	.section	.text.unlikely.lwip_htons,"ax",@progbits
.LCOLDB0:
	.section	.text.lwip_htons,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.lwip_htons
.Ltext_cold0:
	.section	.text.lwip_htons
	.globl	lwip_htons
	.type	lwip_htons, @function
lwip_htons:
.LFB23:
	.file 1 "kernel/protocols/net/core/def.c"
	.loc 1 75 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 76 0
	movl	8(%ebp), %eax
	.loc 1 77 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 76 0
	xchgb	%ah, %al
	.loc 1 77 0
	ret
	.cfi_endproc
.LFE23:
	.size	lwip_htons, .-lwip_htons
	.section	.text.unlikely.lwip_htons
.LCOLDE0:
	.section	.text.lwip_htons
.LHOTE0:
	.section	.text.unlikely.lwip_htonl,"ax",@progbits
.LCOLDB1:
	.section	.text.lwip_htonl,"ax",@progbits
.LHOTB1:
	.globl	lwip_htonl
	.type	lwip_htonl, @function
lwip_htonl:
.LFB24:
	.loc 1 90 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	.loc 1 92 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	bswap	%eax
	ret
	.cfi_endproc
.LFE24:
	.size	lwip_htonl, .-lwip_htonl
	.section	.text.unlikely.lwip_htonl
.LCOLDE1:
	.section	.text.lwip_htonl
.LHOTE1:
	.section	.text.unlikely.lwip_strnstr,"ax",@progbits
.LCOLDB2:
	.section	.text.lwip_strnstr,"ax",@progbits
.LHOTB2:
	.globl	lwip_strnstr
	.type	lwip_strnstr, @function
lwip_strnstr:
.LFB25:
	.loc 1 106 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 108 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	.loc 1 106 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 108 0
	movl	12(%ebp), %edi
	.loc 1 106 0
	movl	8(%ebp), %edx
	.loc 1 108 0
	repnz scasb
.LVL3:
	.loc 1 110 0
	movl	%edx, %eax
	.loc 1 108 0
	notl	%ecx
.LVL4:
	.loc 1 109 0
	movl	%ecx, %esi
	decl	%esi
.LVL5:
	je	.L6
	.loc 1 112 0 discriminator 1
	movl	16(%ebp), %edi
	movl	%edx, %ebx
	addl	%edx, %edi
.L7:
.LVL6:
	movb	(%ebx), %al
	testb	%al, %al
	je	.L12
	.loc 1 112 0 is_stmt 0 discriminator 3
	leal	(%ebx,%esi), %edx
	cmpl	%edx, %edi
	jb	.L12
	.loc 1 113 0 is_stmt 1
	movl	12(%ebp), %edx
	cmpb	(%edx), %al
	jne	.L8
	.loc 1 113 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%esi
	pushl	%edx
	pushl	%ebx
	call	strncmp
.LVL7:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L11
.L8:
	.loc 1 112 0 is_stmt 1 discriminator 2
	incl	%ebx
.LVL8:
	jmp	.L7
.L11:
	movl	%ebx, %eax
	jmp	.L6
.L12:
	.loc 1 117 0
	xorl	%eax, %eax
.LVL9:
.L6:
	.loc 1 118 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL10:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	lwip_strnstr, .-lwip_strnstr
	.section	.text.unlikely.lwip_strnstr
.LCOLDE2:
	.section	.text.lwip_strnstr
.LHOTE2:
	.section	.text.unlikely.lwip_stricmp,"ax",@progbits
.LCOLDB3:
	.section	.text.lwip_stricmp,"ax",@progbits
.LHOTB3:
	.globl	lwip_stricmp
	.type	lwip_stricmp, @function
lwip_stricmp:
.LFB26:
	.loc 1 129 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LVL12:
.L19:
	.loc 1 134 0
	movl	12(%ebp), %edx
	.loc 1 133 0
	movl	8(%ebp), %esi
	.loc 1 134 0
	movzbl	(%edx,%eax), %edi
	.loc 1 133 0
	movb	(%esi,%eax), %cl
.LVL13:
	.loc 1 135 0
	movl	%edi, %ebx
	cmpb	%bl, %cl
	je	.L17
.LBB2:
	.loc 1 136 0
	movb	%cl, %bl
	orl	$32, %ebx
.LVL14:
	.loc 1 137 0
	leal	-97(%ebx), %esi
	movl	%esi, %edx
	cmpb	$25, %dl
	ja	.L21
.LVL15:
.LBB3:
	.loc 1 141 0
	movl	%edi, %edx
	orl	$32, %edx
	cmpb	%dl, %bl
	jne	.L21
.LVL16:
.L17:
	incl	%eax
.LVL17:
.LBE3:
.LBE2:
	.loc 1 151 0
	testb	%cl, %cl
	jne	.L19
	.loc 1 152 0
	xorl	%eax, %eax
.LVL18:
	jmp	.L18
.LVL19:
.L21:
.LBB4:
	.loc 1 148 0
	movl	$1, %eax
.LVL20:
.L18:
.LBE4:
	.loc 1 153 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL21:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	lwip_stricmp, .-lwip_stricmp
	.section	.text.unlikely.lwip_stricmp
.LCOLDE3:
	.section	.text.lwip_stricmp
.LHOTE3:
	.section	.text.unlikely.lwip_strnicmp,"ax",@progbits
.LCOLDB4:
	.section	.text.lwip_strnicmp,"ax",@progbits
.LHOTB4:
	.globl	lwip_strnicmp
	.type	lwip_strnicmp, @function
lwip_strnicmp:
.LFB27:
	.loc 1 164 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LVL23:
.L27:
	.loc 1 168 0
	movl	8(%ebp), %esi
	movb	(%esi,%eax), %cl
.LVL24:
	.loc 1 169 0
	movl	12(%ebp), %esi
	movzbl	(%esi,%eax), %edi
.LVL25:
	.loc 1 170 0
	movl	%edi, %ebx
	cmpb	%bl, %cl
	je	.L25
.LBB5:
	.loc 1 171 0
	movb	%cl, %bl
	orl	$32, %ebx
.LVL26:
	.loc 1 172 0
	leal	-97(%ebx), %esi
	movl	%esi, %edx
	cmpb	$25, %dl
	ja	.L29
.LVL27:
.LBB6:
	.loc 1 176 0
	movl	%edi, %edx
	orl	$32, %edx
	cmpb	%dl, %bl
	jne	.L29
.LVL28:
.L25:
.LBE6:
.LBE5:
	.loc 1 186 0
	testb	%cl, %cl
	setne	%cl
.LVL29:
	cmpl	%eax, 16(%ebp)
	setne	%dl
	incl	%eax
.LVL30:
	testb	%dl, %cl
	jne	.L27
	.loc 1 187 0
	xorl	%eax, %eax
.LVL31:
	jmp	.L26
.LVL32:
.L29:
.LBB7:
	.loc 1 183 0
	movl	$1, %eax
.LVL33:
.L26:
.LBE7:
	.loc 1 188 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL34:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	lwip_strnicmp, .-lwip_strnicmp
	.section	.text.unlikely.lwip_strnicmp
.LCOLDE4:
	.section	.text.lwip_strnicmp
.LHOTE4:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz"
	.section	.text.unlikely.lwip_itoa,"ax",@progbits
.LCOLDB6:
	.section	.text.lwip_itoa,"ax",@progbits
.LHOTB6:
	.globl	lwip_itoa
	.type	lwip_itoa, @function
lwip_itoa:
.LFB28:
	.loc 1 199 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%edx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 199 0
	movl	8(%ebp), %ecx
.LVL36:
	movl	16(%ebp), %ebx
	.loc 1 201 0
	movl	%ecx, %esi
.LVL37:
.L33:
	.loc 1 207 0 discriminator 1
	movl	%ebx, %eax
	movl	$10, %edi
	cltd
	idivl	%edi
	.loc 1 208 0 discriminator 1
	leal	1(%esi), %edx
	imull	$-10, %eax, %edi
	.loc 1 207 0 discriminator 1
	movl	%eax, -16(%ebp)
.LVL38:
	.loc 1 209 0 discriminator 1
	cmpl	$0, -16(%ebp)
	.loc 1 208 0 discriminator 1
	movb	.LC5+35(%ebx,%edi), %al
.LVL39:
	movb	%al, -1(%edx)
	.loc 1 209 0 discriminator 1
	je	.L39
	movl	%edx, %esi
	movl	-16(%ebp), %ebx
.LVL40:
	jmp	.L33
.LVL41:
.L39:
	.loc 1 212 0
	testl	%ebx, %ebx
	jns	.L34
	.loc 1 213 0
	leal	2(%esi), %edx
.LVL42:
	movb	$45, 1(%esi)
.L34:
	.loc 1 215 0
	leal	-1(%edx), %eax
.LVL43:
	movb	$0, (%edx)
.LVL44:
.L35:
	.loc 1 216 0
	cmpl	%ecx, %eax
	jbe	.L40
	.loc 1 217 0
	movb	(%eax), %dl
.LVL45:
	.loc 1 218 0
	movb	(%ecx), %bl
	decl	%eax
.LVL46:
	.loc 1 219 0
	incl	%ecx
.LVL47:
	.loc 1 218 0
	movb	%bl, 1(%eax)
	.loc 1 219 0
	movb	%dl, -1(%ecx)
	jmp	.L35
.LVL48:
.L40:
	.loc 1 221 0
	popl	%eax
.LVL49:
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
.LFE28:
	.size	lwip_itoa, .-lwip_itoa
	.section	.text.unlikely.lwip_itoa
.LCOLDE6:
	.section	.text.lwip_itoa
.LHOTE6:
	.text
.Letext0:
	.section	.text.unlikely.lwip_htons
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 4 "./include/aos/log.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x32b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF37
	.byte	0xc
	.long	.LASF38
	.long	.LASF39
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0xd8
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x97
	.uleb128 0x6
	.long	0x8a
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x33
	.long	0x61
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x35
	.long	0x6f
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF17
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x4a
	.long	0xaa
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xed
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x4a
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x59
	.long	0xb5
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x113
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x59
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x69
	.long	0x84
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x17b
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x69
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x69
	.long	0x91
	.long	.LLST0
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x69
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x6b
	.long	0x91
	.long	.LLST1
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x6c
	.long	0x25
	.long	.LLST2
	.uleb128 0xd
	.long	.LVL7
	.long	0x323
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0x80
	.long	0x25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x80
	.long	0x91
	.long	.LLST3
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x80
	.long	0x91
	.long	.LLST4
	.uleb128 0xe
	.string	"c1"
	.byte	0x1
	.byte	0x82
	.long	0x8a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xb
	.string	"c2"
	.byte	0x1
	.byte	0x82
	.long	0x8a
	.long	.LLST5
	.uleb128 0xf
	.long	.Ldebug_ranges0+0
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x88
	.long	0x8a
	.long	.LLST6
	.uleb128 0x10
	.long	.LBB3
	.long	.LBE3-.LBB3
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x8c
	.long	0x8a
	.long	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.byte	0xa3
	.long	0x25
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x28c
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0xa3
	.long	0x91
	.long	.LLST8
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0xa3
	.long	0x91
	.long	.LLST9
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xa3
	.long	0x2c
	.long	.LLST10
	.uleb128 0xb
	.string	"c1"
	.byte	0x1
	.byte	0xa5
	.long	0x8a
	.long	.LLST11
	.uleb128 0xb
	.string	"c2"
	.byte	0x1
	.byte	0xa5
	.long	0x8a
	.long	.LLST12
	.uleb128 0xf
	.long	.Ldebug_ranges0+0x18
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0xab
	.long	0x8a
	.long	.LLST13
	.uleb128 0x10
	.long	.LBB6
	.long	.LBE6-.LBB6
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0xaf
	.long	0x8a
	.long	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0xc6
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x313
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0xc6
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0xc6
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.byte	0xc6
	.long	0x25
	.long	.LLST15
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0xc8
	.long	0x313
	.byte	0xa
	.uleb128 0xb
	.string	"ptr"
	.byte	0x1
	.byte	0xc9
	.long	0x84
	.long	.LLST16
	.uleb128 0x14
	.long	.LASF34
	.byte	0x1
	.byte	0xc9
	.long	0x84
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0xc9
	.long	0x8a
	.long	.LLST17
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.byte	0xca
	.long	0x25
	.long	.LLST18
	.byte	0
	.uleb128 0x6
	.long	0x25
	.uleb128 0x15
	.long	.LASF41
	.byte	0x4
	.byte	0x17
	.long	0x37
	.uleb128 0x16
	.long	.LASF42
	.long	.LASF42
	.byte	0x5
	.byte	0x27
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.long	.LVL2
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL5
	.long	.LVL10
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST3:
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL12
	.long	.LVL17
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL12
	.long	.LVL13
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL13
	.long	.LVL17
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL21
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x53
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL23
	.long	.LVL30
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL23
	.long	.LVL24
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL24
	.long	.LVL30
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL23
	.long	.LVL28
	.value	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL30
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.value	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL24
	.long	.LVL29
	.value	0x1
	.byte	0x51
	.long	.LVL29
	.long	.LVL30
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.long	.LVL30
	.long	.LVL31
	.value	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST12:
	.long	.LVL25
	.long	.LVL34
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL27
	.long	.LVL28
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL35
	.long	.LVL37
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x53
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LFE28
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST16:
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x51
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x56
	.long	.LVL38
	.long	.LVL43
	.value	0x1
	.byte	0x52
	.long	.LVL43
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL45
	.long	.LVL48
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST18:
	.long	.LVL37
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL41
	.long	.LVL44
	.value	0x1
	.byte	0x53
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB4
	.long	.LBE4
	.long	0
	.long	0
	.long	.LBB5
	.long	.LBE5
	.long	.LBB7
	.long	.LBE7
	.long	0
	.long	0
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"lwip_htons"
.LASF37:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF20:
	.string	"lwip_strnstr"
.LASF7:
	.string	"long int"
.LASF6:
	.string	"short unsigned int"
.LASF23:
	.string	"tokenlen"
.LASF13:
	.string	"double"
.LASF28:
	.string	"c2_upc"
.LASF12:
	.string	"float"
.LASF4:
	.string	"unsigned char"
.LASF35:
	.string	"tmp_char"
.LASF33:
	.string	"base"
.LASF36:
	.string	"tmp_value"
.LASF14:
	.string	"size_t"
.LASF15:
	.string	"u16_t"
.LASF25:
	.string	"str1"
.LASF26:
	.string	"str2"
.LASF8:
	.string	"long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF30:
	.string	"result"
.LASF38:
	.string	"src/def.c"
.LASF41:
	.string	"aos_log_level"
.LASF31:
	.string	"bufsize"
.LASF10:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF29:
	.string	"lwip_strnicmp"
.LASF42:
	.string	"strncmp"
.LASF39:
	.string	"/home/stone/Documents/pca"
.LASF5:
	.string	"short int"
.LASF40:
	.string	"lwip_itoa"
.LASF21:
	.string	"buffer"
.LASF32:
	.string	"number"
.LASF16:
	.string	"u32_t"
.LASF24:
	.string	"lwip_stricmp"
.LASF22:
	.string	"token"
.LASF2:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF17:
	.string	"_Bool"
.LASF27:
	.string	"c1_upc"
.LASF34:
	.string	"ptr1"
.LASF19:
	.string	"lwip_htonl"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

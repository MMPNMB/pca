	.file	"base64.c"
	.text
.Ltext0:
	.section	.text.unlikely.mbedtls_base64_encode,"ax",@progbits
.LCOLDB0:
	.section	.text.mbedtls_base64_encode,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.mbedtls_base64_encode
.Ltext_cold0:
	.section	.text.mbedtls_base64_encode
	.globl	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB0:
	.file 1 "security/mbedtls/src/base64.c"
	.loc 1 79 0
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
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 84 0
	cmpl	$0, 24(%ebp)
	jne	.L2
	.loc 1 86 0
	movl	16(%ebp), %eax
	movl	$0, (%eax)
	jmp	.L16
.L2:
	.loc 1 90 0
	movl	24(%ebp), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	testl	%edx, %edx
	setne	%dl
	movzbl	%dl, %edx
	addl	%eax, %edx
.LVL1:
	.loc 1 92 0
	cmpl	$1073741823, %edx
	jbe	.L4
	.loc 1 94 0
	movl	16(%ebp), %eax
	movl	$-1, (%eax)
	jmp	.L17
.L4:
.LVL2:
	.loc 1 100 0
	cmpl	$0, 8(%ebp)
	leal	1(,%edx,4), %edx
.LVL3:
	je	.L14
	cmpl	12(%ebp), %edx
	jbe	.L5
.L14:
	.loc 1 102 0
	movl	16(%ebp), %eax
.LVL4:
	movl	%edx, (%eax)
.LVL5:
.L17:
	.loc 1 103 0
	movl	$-42, %eax
	jmp	.L3
.LVL6:
.L5:
	.loc 1 106 0
	leal	(%eax,%eax,2), %eax
.LVL7:
	.loc 1 108 0
	movl	20(%ebp), %edx
	.loc 1 106 0
	movl	%eax, -32(%ebp)
.LVL8:
	.loc 1 108 0
	movl	8(%ebp), %eax
.LVL9:
.L7:
	movl	%edx, %ecx
	subl	20(%ebp), %ecx
.LVL10:
	.loc 1 108 0 is_stmt 0 discriminator 1
	cmpl	%ecx, -32(%ebp)
	jbe	.L19
.LVL11:
	.loc 1 110 0 is_stmt 1 discriminator 3
	movzbl	(%edx), %edi
	.loc 1 111 0 discriminator 3
	movzbl	1(%edx), %esi
	addl	$3, %edx
.LVL12:
	.loc 1 112 0 discriminator 3
	movb	-1(%edx), %bl
	addl	$4, %eax
.LVL13:
	.loc 1 110 0 discriminator 3
	movl	%edi, %ecx
.LVL14:
	.loc 1 114 0 discriminator 3
	sarl	$2, %edi
.LVL15:
	.loc 1 112 0 discriminator 3
	movb	%bl, -28(%ebp)
.LVL16:
	.loc 1 114 0 discriminator 3
	movb	base64_enc_map(%edi), %bl
.LVL17:
	.loc 1 115 0 discriminator 3
	andl	$3, %ecx
.LVL18:
	sall	$4, %ecx
	.loc 1 114 0 discriminator 3
	movb	%bl, -4(%eax)
.LVL19:
	.loc 1 115 0 discriminator 3
	movl	%esi, %ebx
	.loc 1 116 0 discriminator 3
	andl	$15, %esi
.LVL20:
	.loc 1 115 0 discriminator 3
	movzbl	%bl, %edi
.LVL21:
	.loc 1 117 0 discriminator 3
	movl	-28(%ebp), %ebx
	.loc 1 115 0 discriminator 3
	sarl	$4, %edi
.LVL22:
	movb	base64_enc_map(%ecx,%edi), %cl
	.loc 1 117 0 discriminator 3
	andl	$63, %ebx
	.loc 1 115 0 discriminator 3
	movb	%cl, -3(%eax)
	.loc 1 116 0 discriminator 3
	movzbl	-28(%ebp), %ecx
.LVL23:
	sarl	$6, %ecx
.LVL24:
	movb	base64_enc_map(%ecx,%esi,4), %cl
	movb	%cl, -2(%eax)
.LVL25:
	.loc 1 117 0 discriminator 3
	movb	base64_enc_map(%ebx), %cl
	movb	%cl, -1(%eax)
.LVL26:
	jmp	.L7
.LVL27:
.L19:
	.loc 1 120 0
	cmpl	%ecx, 24(%ebp)
	jbe	.L9
.LVL28:
	.loc 1 122 0
	movzbl	(%edx), %edi
	.loc 1 123 0
	incl	%ecx
.LVL29:
	xorl	%esi, %esi
	cmpl	%ecx, 24(%ebp)
	.loc 1 122 0
	movl	%edi, %ebx
.LVL30:
	.loc 1 123 0
	jbe	.L10
.LVL31:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movzbl	1(%edx), %esi
.LVL32:
.L10:
	.loc 1 125 0 is_stmt 1 discriminator 4
	sarl	$2, %edi
	.loc 1 126 0 discriminator 4
	andl	$3, %ebx
.LVL33:
	.loc 1 125 0 discriminator 4
	movb	base64_enc_map(%edi), %dl
.LVL34:
	.loc 1 126 0 discriminator 4
	sall	$4, %ebx
	.loc 1 125 0 discriminator 4
	movb	%dl, (%eax)
.LVL35:
	.loc 1 126 0 discriminator 4
	movl	%esi, %edx
	sarl	$4, %edx
	.loc 1 128 0 discriminator 4
	cmpl	%ecx, 24(%ebp)
	leal	3(%eax), %ecx
.LVL36:
	.loc 1 126 0 discriminator 4
	movb	base64_enc_map(%ebx,%edx), %dl
	movb	%dl, 1(%eax)
	.loc 1 128 0 discriminator 4
	jbe	.L11
.LVL37:
	.loc 1 129 0
	andl	$15, %esi
	movb	base64_enc_map(,%esi,4), %dl
	movb	%dl, 2(%eax)
	jmp	.L12
.LVL38:
.L11:
	.loc 1 130 0
	movb	$61, 2(%eax)
.L12:
	.loc 1 132 0
	leal	1(%ecx), %eax
.LVL39:
	movb	$61, (%ecx)
.L9:
	.loc 1 135 0
	movl	%eax, %edx
	subl	8(%ebp), %edx
	movl	16(%ebp), %edi
	movl	%edx, (%edi)
	.loc 1 136 0
	movb	$0, (%eax)
.LVL40:
.L16:
	.loc 1 138 0
	xorl	%eax, %eax
.L3:
	.loc 1 139 0
	addl	$20, %esp
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
.LFE0:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.unlikely.mbedtls_base64_encode
.LCOLDE0:
	.section	.text.mbedtls_base64_encode
.LHOTE0:
	.section	.text.unlikely.mbedtls_base64_decode,"ax",@progbits
.LCOLDB1:
	.section	.text.mbedtls_base64_decode,"ax",@progbits
.LHOTB1:
	.globl	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB1:
	.loc 1 146 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 152 0
	xorl	%eax, %eax
	xorl	%edx, %edx
	.loc 1 146 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 152 0
	xorl	%ebx, %ebx
	.loc 1 146 0
	subl	$24, %esp
	.loc 1 146 0
	movl	20(%ebp), %edi
.LVL42:
.L21:
	.loc 1 152 0 discriminator 1
	cmpl	24(%ebp), %edx
	jnb	.L25
	xorl	%esi, %esi
.L22:
.LVL43:
	.loc 1 156 0 discriminator 1
	cmpb	$32, (%edi,%edx)
	jne	.L23
.LVL44:
	.loc 1 158 0
	incl	%edx
.LVL45:
	.loc 1 159 0
	incl	%esi
.LVL46:
	.loc 1 156 0
	cmpl	%edx, 24(%ebp)
	ja	.L22
.LVL47:
.L23:
	.loc 1 163 0
	cmpl	%edx, 24(%ebp)
	je	.L25
	.loc 1 166 0
	movl	24(%ebp), %ecx
	subl	%edx, %ecx
	cmpl	$1, %ecx
	jbe	.L26
	.loc 1 166 0 is_stmt 0 discriminator 1
	cmpb	$13, (%edi,%edx)
	jne	.L26
	.loc 1 167 0 is_stmt 1
	cmpb	$10, 1(%edi,%edx)
	je	.L27
.L26:
	.loc 1 170 0
	movzbl	(%edi,%edx), %ecx
	cmpb	$10, %cl
	je	.L27
	.loc 1 174 0
	testl	%esi, %esi
	jne	.L46
	.loc 1 177 0
	cmpb	$61, %cl
	jne	.L29
	.loc 1 177 0 is_stmt 0 discriminator 1
	incl	%ebx
.LVL48:
	cmpl	$2, %ebx
	jbe	.L61
	jmp	.L46
.L29:
	.loc 1 180 0 is_stmt 1
	testb	%cl, %cl
	js	.L46
.L61:
	.loc 1 180 0 is_stmt 0 discriminator 1
	movb	base64_dec_map(%ecx), %cl
	cmpb	$127, %cl
	je	.L46
	.loc 1 183 0 is_stmt 1 discriminator 1
	testl	%ebx, %ebx
	je	.L47
	cmpb	$63, %cl
	jbe	.L46
.L47:
	.loc 1 186 0
	incl	%eax
.LVL49:
.L27:
	.loc 1 152 0 discriminator 2
	incl	%edx
.LVL50:
	jmp	.L21
.LVL51:
.L25:
	.loc 1 189 0
	testl	%eax, %eax
	jne	.L32
	.loc 1 191 0
	movl	16(%ebp), %eax
.LVL52:
	movl	$0, (%eax)
	jmp	.L65
.LVL53:
.L32:
	.loc 1 200 0
	movl	%eax, %ecx
	shrl	$3, %eax
.LVL54:
	andl	$7, %ecx
.LVL55:
	imull	$6, %ecx, %ecx
	imull	$6, %eax, %eax
	addl	$7, %ecx
	shrl	$3, %ecx
	subl	%ebx, %eax
	addl	%eax, %ecx
.LVL56:
	.loc 1 202 0
	cmpl	$0, 8(%ebp)
	je	.L33
	cmpl	12(%ebp), %ecx
	ja	.L33
	leal	(%edi,%edx), %eax
	.loc 1 202 0 is_stmt 0 discriminator 1
	movl	$3, -16(%ebp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
.LVL57:
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
	jmp	.L34
.LVL58:
.L33:
	.loc 1 204 0 is_stmt 1
	movl	16(%ebp), %eax
	movl	%ecx, (%eax)
	.loc 1 205 0
	movl	$-42, %eax
	jmp	.L62
.LVL59:
.L40:
	.loc 1 210 0
	movb	(%edi), %bl
	movl	%ebx, %esi
	movb	%bl, -32(%ebp)
	subl	$10, %esi
	movl	%esi, %ebx
	cmpb	$22, %bl
	ja	.L35
	movl	$4194313, %ebx
	btl	%esi, %ebx
	jnc	.L35
.LVL60:
.L36:
	.loc 1 208 0 discriminator 2
	incl	%edi
.LVL61:
.L34:
	.loc 1 208 0 is_stmt 0 discriminator 1
	cmpl	-36(%ebp), %edi
	jne	.L40
	jmp	.L66
.L35:
	.loc 1 213 0 is_stmt 1
	movzbl	-32(%ebp), %esi
	movb	base64_dec_map(%esi), %bl
	movb	%bl, -32(%ebp)
	.loc 1 214 0
	movl	-32(%ebp), %esi
	.loc 1 213 0
	cmpb	$64, %bl
	sete	%bl
	.loc 1 214 0
	sall	$6, %edx
.LVL62:
	.loc 1 216 0
	incl	%ecx
.LVL63:
	.loc 1 213 0
	movzbl	%bl, %ebx
	subl	%ebx, -16(%ebp)
.LVL64:
	.loc 1 214 0
	andl	$63, %esi
	orl	%esi, %edx
.LVL65:
	.loc 1 216 0
	cmpl	$4, %ecx
	jne	.L36
.LVL66:
	.loc 1 219 0
	cmpl	$0, -16(%ebp)
	je	.L64
.LVL67:
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	%edx, %ecx
	shrl	$16, %ecx
	.loc 1 220 0 is_stmt 1 discriminator 1
	cmpl	$1, -16(%ebp)
	.loc 1 219 0 discriminator 1
	movb	%cl, (%eax)
	.loc 1 220 0 discriminator 1
	jne	.L38
	.loc 1 219 0
	incl	%eax
.LVL68:
	jmp	.L64
.LVL69:
.L38:
	.loc 1 220 0 discriminator 1
	movl	%edx, %ecx
	shrl	$8, %ecx
	.loc 1 221 0 discriminator 1
	cmpl	$2, -16(%ebp)
	.loc 1 220 0 discriminator 1
	movb	%cl, 1(%eax)
	.loc 1 221 0 discriminator 1
	jne	.L39
	.loc 1 220 0
	addl	$2, %eax
.LVL70:
	jmp	.L64
.LVL71:
.L39:
	.loc 1 221 0 discriminator 1
	movb	%dl, 2(%eax)
	addl	$3, %eax
.LVL72:
.L64:
	.loc 1 218 0 discriminator 1
	xorl	%ecx, %ecx
	jmp	.L36
.LVL73:
.L66:
	.loc 1 225 0
	subl	8(%ebp), %eax
.LVL74:
	movl	16(%ebp), %edi
.LVL75:
	movl	%eax, (%edi)
.LVL76:
.L65:
	.loc 1 227 0
	xorl	%eax, %eax
	jmp	.L62
.LVL77:
.L46:
	.loc 1 175 0
	movl	$-44, %eax
.LVL78:
.L62:
	.loc 1 228 0
	addl	$24, %esp
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
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.section	.text.unlikely.mbedtls_base64_decode
.LCOLDE1:
	.section	.text.mbedtls_base64_decode
.LHOTE1:
	.section	.rodata.base64_dec_map,"a",@progbits
	.align 32
	.type	base64_dec_map, @object
	.size	base64_dec_map, 128
base64_dec_map:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	62
	.byte	127
	.byte	127
	.byte	127
	.byte	63
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	127
	.byte	127
	.byte	127
	.byte	64
	.byte	127
	.byte	127
	.byte	127
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.section	.rodata.base64_enc_map,"a",@progbits
	.align 32
	.type	base64_enc_map, @object
	.size	base64_enc_map, 64
base64_enc_map:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	43
	.byte	47
	.text
.Letext0:
	.section	.text.unlikely.mbedtls_base64_encode
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x24e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF21
	.byte	0xc
	.long	.LASF22
	.long	.LASF23
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x41
	.long	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0xd8
	.long	0x25
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0x4f
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x4d
	.long	0x6f
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x145
	.uleb128 0x6
	.string	"dst"
	.byte	0x1
	.byte	0x4d
	.long	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x4d
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x4d
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.string	"src"
	.byte	0x1
	.byte	0x4e
	.long	0x151
	.long	.LLST0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x4e
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x50
	.long	0x76
	.long	.LLST1
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x50
	.long	0x76
	.long	.LLST2
	.uleb128 0x9
	.string	"C1"
	.byte	0x1
	.byte	0x51
	.long	0x6f
	.long	.LLST3
	.uleb128 0x9
	.string	"C2"
	.byte	0x1
	.byte	0x51
	.long	0x6f
	.long	.LLST4
	.uleb128 0x9
	.string	"C3"
	.byte	0x1
	.byte	0x51
	.long	0x6f
	.long	.LLST5
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x52
	.long	0x145
	.long	.LLST6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x33
	.uleb128 0xa
	.byte	0x4
	.long	0x76
	.uleb128 0xa
	.byte	0x4
	.long	0x157
	.uleb128 0xb
	.long	0x33
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.byte	0x90
	.long	0x6f
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe
	.uleb128 0x6
	.string	"dst"
	.byte	0x1
	.byte	0x90
	.long	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x90
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x90
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.string	"src"
	.byte	0x1
	.byte	0x91
	.long	0x151
	.long	.LLST7
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x91
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x93
	.long	0x76
	.long	.LLST8
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x93
	.long	0x76
	.long	.LLST9
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x94
	.long	0x88
	.long	.LLST10
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x94
	.long	0x88
	.long	.LLST11
	.uleb128 0x9
	.string	"p"
	.byte	0x1
	.byte	0x95
	.long	0x145
	.long	.LLST12
	.byte	0
	.uleb128 0xc
	.long	0x157
	.long	0x20e
	.uleb128 0xd
	.long	0x20e
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x2c
	.long	0x226
	.uleb128 0x5
	.byte	0x3
	.long	base64_enc_map
	.uleb128 0xb
	.long	0x1fe
	.uleb128 0xc
	.long	0x157
	.long	0x23b
	.uleb128 0xd
	.long	0x20e
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.byte	0x37
	.long	0x24c
	.uleb128 0x5
	.byte	0x3
	.long	base64_dec_map
	.uleb128 0xb
	.long	0x22b
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LVL12
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL12
	.long	.LVL14
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	.LVL14
	.long	.LVL28
	.value	0x1
	.byte	0x52
	.long	.LVL28
	.long	.LVL31
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.value	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL14
	.value	0x1
	.byte	0x51
	.long	.LVL14
	.long	.LVL26
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.value	0x1
	.byte	0x51
	.long	.LVL29
	.long	.LVL36
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x52
	.long	.LVL2
	.long	.LVL3
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x11
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1d
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x1b
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1d
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.value	0x11
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1d
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.value	0x1b
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1d
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL40
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST3:
	.long	.LVL14
	.long	.LVL15
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL15
	.long	.LVL18
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x8
	.byte	0x72
	.sleb128 -3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL30
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	.LVL33
	.long	.LVL34
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL20
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL17
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.value	0x8
	.byte	0x72
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL19
	.long	.LVL23
	.value	0x8
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x51
	.long	.LVL24
	.long	.LVL27
	.value	0x8
	.byte	0x91
	.sleb128 -36
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL9
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL16
	.value	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	.LVL25
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL35
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL35
	.long	.LVL37
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x51
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL41
	.long	.LVL59
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL59
	.long	.LVL75
	.value	0x1
	.byte	0x57
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST8:
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL45
	.long	.LVL47
	.value	0x1
	.byte	0x52
	.long	.LVL49
	.long	.LVL50
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST9:
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL54
	.value	0x12
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x36
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x36
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.value	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x36
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x36
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x33
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x51
	.long	.LVL58
	.long	.LVL63
	.value	0x1
	.byte	0x51
	.long	.LVL63
	.long	.LVL65
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
	.value	0x1
	.byte	0x51
	.long	.LVL66
	.long	.LVL73
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73
	.long	.LVL76
	.value	0x1
	.byte	0x51
	.long	.LVL77
	.long	.LVL78
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL59
	.value	0x1
	.byte	0x53
	.long	.LVL59
	.long	.LVL64
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL73
	.long	.LVL76
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL77
	.long	.LVL78
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL43
	.long	.LVL51
	.value	0x1
	.byte	0x56
	.long	.LVL59
	.long	.LVL62
	.value	0x1
	.byte	0x52
	.long	.LVL65
	.long	.LVL76
	.value	0x1
	.byte	0x52
	.long	.LVL77
	.long	.LVL78
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST12:
	.long	.LVL59
	.long	.LVL67
	.value	0x1
	.byte	0x50
	.long	.LVL67
	.long	.LVL68
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LVL72
	.value	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"size_t"
.LASF22:
	.string	"src/base64.c"
.LASF13:
	.string	"dlen"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"slen"
.LASF6:
	.string	"long unsigned int"
.LASF21:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF4:
	.string	"short unsigned int"
.LASF9:
	.string	"__uint32_t"
.LASF16:
	.string	"mbedtls_base64_encode"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF14:
	.string	"olen"
.LASF19:
	.string	"base64_enc_map"
.LASF18:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF20:
	.string	"base64_dec_map"
.LASF23:
	.string	"/home/stone/Documents/pca"
.LASF3:
	.string	"short int"
.LASF12:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF1:
	.string	"signed char"
.LASF17:
	.string	"mbedtls_base64_decode"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

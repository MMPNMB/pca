	.file	"asn1parse.c"
	.text
.Ltext0:
	.section	.text.unlikely.mbedtls_asn1_get_len,"ax",@progbits
.LCOLDB0:
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.mbedtls_asn1_get_len
.Ltext_cold0:
	.section	.text.mbedtls_asn1_get_len
	.globl	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB1:
	.file 1 "security/alicrypto/./mbedtls/library/asn1parse.c"
	.loc 1 57 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	movl	8(%ebp), %edx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	12(%ebp), %esi
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 57 0
	movl	16(%ebp), %ebx
	.loc 1 58 0
	movl	(%edx), %eax
	movl	%esi, %edi
	subl	%eax, %edi
	testl	%edi, %edi
	jg	.L2
.L11:
	.loc 1 59 0
	movl	$-96, %eax
	jmp	.L3
.LVL1:
.L2:
	.loc 1 61 0
	movb	(%eax), %cl
	testb	%cl, %cl
	js	.L4
	.loc 1 62 0
	leal	1(%eax), %ecx
	movl	%ecx, (%edx)
	movzbl	(%eax), %eax
	movl	%eax, (%ebx)
	jmp	.L5
.LVL2:
.L4:
	.loc 1 65 0
	andl	$127, %ecx
	cmpb	$2, %cl
	je	.L6
	ja	.L7
	decb	%cl
	je	.L8
	jmp	.L12
.L7:
	cmpb	$3, %cl
	je	.L9
	cmpb	$4, %cl
	je	.L10
	jmp	.L12
.L8:
	.loc 1 68 0
	decl	%edi
	je	.L11
	.loc 1 71 0
	movzbl	1(%eax), %ecx
	.loc 1 72 0
	addl	$2, %eax
	.loc 1 71 0
	movl	%ecx, (%ebx)
	jmp	.L17
.L6:
	.loc 1 76 0
	cmpl	$2, %edi
	jle	.L11
	.loc 1 79 0
	movw	1(%eax), %cx
	.loc 1 80 0
	addl	$3, %eax
	.loc 1 79 0
	xchgb	%ch, %cl
	movzwl	%cx, %ecx
	movl	%ecx, (%ebx)
	jmp	.L17
.L9:
	.loc 1 84 0
	cmpl	$3, %edi
	jle	.L11
	.loc 1 87 0
	movzbl	1(%eax), %ecx
	.loc 1 89 0
	addl	$4, %eax
	.loc 1 87 0
	movl	%ecx, %edi
	movzbl	-2(%eax), %ecx
	sall	$16, %edi
	sall	$8, %ecx
	orl	%edi, %ecx
	movzbl	-1(%eax), %edi
	orl	%edi, %ecx
	movl	%ecx, (%ebx)
	jmp	.L17
.L10:
	.loc 1 93 0
	cmpl	$4, %edi
	jle	.L11
	movl	1(%eax), %ecx
	.loc 1 98 0
	addl	$5, %eax
	bswap	%ecx
	.loc 1 96 0
	movl	%ecx, (%ebx)
.L17:
	.loc 1 98 0
	movl	%eax, (%edx)
.L5:
	.loc 1 106 0
	subl	(%edx), %esi
.LVL3:
	.loc 1 109 0
	xorl	%eax, %eax
	.loc 1 106 0
	cmpl	%esi, (%ebx)
	jbe	.L3
	jmp	.L11
.LVL4:
.L12:
	.loc 1 102 0
	movl	$-100, %eax
.LVL5:
.L3:
	.loc 1 110 0
	popl	%ebx
	.cfi_restore 3
.LVL6:
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
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.unlikely.mbedtls_asn1_get_len
.LCOLDE0:
	.section	.text.mbedtls_asn1_get_len
.LHOTE0:
	.section	.text.unlikely.mbedtls_asn1_get_tag,"ax",@progbits
.LCOLDB1:
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
.LHOTB1:
	.globl	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB2:
	.loc 1 115 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 115 0
	movl	20(%ebp), %esi
	.loc 1 116 0
	movl	(%edx), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	testl	%edi, %edi
	jle	.L21
	.loc 1 119 0
	movzbl	(%eax), %edi
	cmpl	%esi, %edi
	jne	.L22
	.loc 1 122 0
	incl	%eax
	movl	%eax, (%edx)
	.loc 1 125 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 124 0
	jmp	mbedtls_asn1_get_len
.LVL8:
.L21:
	.cfi_restore_state
	.loc 1 117 0
	movl	$-96, %eax
	jmp	.L20
.L22:
	.loc 1 120 0
	movl	$-98, %eax
.L20:
	.loc 1 125 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL9:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.unlikely.mbedtls_asn1_get_tag
.LCOLDE1:
	.section	.text.mbedtls_asn1_get_tag
.LHOTE1:
	.section	.text.unlikely.mbedtls_asn1_get_bool,"ax",@progbits
.LCOLDB2:
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
.LHOTB2:
	.globl	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB3:
	.loc 1 130 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 130 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 134 0
	leal	-16(%ebp), %eax
	pushl	$1
	pushl	%eax
	pushl	12(%ebp)
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL11:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L25
	.loc 1 137 0
	cmpl	$1, -16(%ebp)
	jne	.L28
	.loc 1 140 0
	movl	(%ebx), %edx
	xorl	%ecx, %ecx
	cmpb	$0, (%edx)
	setne	%cl
	.loc 1 141 0
	incl	%edx
	.loc 1 140 0
	movl	%ecx, (%esi)
	.loc 1 141 0
	movl	%edx, (%ebx)
	.loc 1 143 0
	jmp	.L25
.L28:
	.loc 1 138 0
	movl	$-100, %eax
.LVL12:
.L25:
	.loc 1 144 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L26
	call	__stack_chk_fail
.LVL13:
.L26:
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
.LFE3:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.unlikely.mbedtls_asn1_get_bool
.LCOLDE2:
	.section	.text.mbedtls_asn1_get_bool
.LHOTE2:
	.section	.text.unlikely.mbedtls_asn1_get_int,"ax",@progbits
.LCOLDB3:
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
.LHOTB3:
	.globl	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB4:
	.loc 1 149 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 149 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 153 0
	leal	-16(%ebp), %eax
	pushl	$2
	pushl	%eax
	pushl	12(%ebp)
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL15:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L31
	.loc 1 156 0
	movl	-16(%ebp), %eax
.LVL16:
	leal	-1(%eax), %edx
	.loc 1 157 0
	movl	$-100, %eax
	.loc 1 156 0
	cmpl	$3, %edx
	ja	.L31
	.loc 1 156 0 is_stmt 0 discriminator 1
	movl	(%ebx), %edx
	cmpb	$0, (%edx)
	js	.L31
	.loc 1 159 0 is_stmt 1
	movl	$0, (%esi)
.L32:
	.loc 1 161 0
	movl	-16(%ebp), %eax
	leal	-1(%eax), %edx
	testl	%eax, %eax
	movl	%edx, -16(%ebp)
	je	.L31
	.loc 1 163 0
	movl	(%ebx), %eax
	movl	(%esi), %ecx
	movzbl	(%eax), %edx
	sall	$8, %ecx
	.loc 1 164 0
	incl	%eax
	.loc 1 163 0
	orl	%ecx, %edx
	movl	%edx, (%esi)
	.loc 1 164 0
	movl	%eax, (%ebx)
	jmp	.L32
.L31:
	.loc 1 168 0
	movl	-12(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L34
	call	__stack_chk_fail
.LVL17:
.L34:
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
.LFE4:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.unlikely.mbedtls_asn1_get_int
.LCOLDE3:
	.section	.text.mbedtls_asn1_get_int
.LHOTE3:
	.section	.text.unlikely.mbedtls_asn1_get_mpi,"ax",@progbits
.LCOLDB4:
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
.LHOTB4:
	.globl	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB5:
	.loc 1 174 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 174 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 178 0
	leal	-16(%ebp), %eax
	pushl	$2
	pushl	%eax
	pushl	12(%ebp)
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL19:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L40
.LVL20:
	.loc 1 181 0
	pushl	%eax
	pushl	-16(%ebp)
	pushl	(%ebx)
	pushl	%esi
	call	mbedtls_mpi_read_binary
.LVL21:
	.loc 1 183 0
	movl	-16(%ebp), %edx
	addl	%edx, (%ebx)
	.loc 1 185 0
	addl	$16, %esp
.L40:
	.loc 1 186 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L41
	call	__stack_chk_fail
.LVL22:
.L41:
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
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.unlikely.mbedtls_asn1_get_mpi
.LCOLDE4:
	.section	.text.mbedtls_asn1_get_mpi
.LHOTE4:
	.section	.text.unlikely.mbedtls_asn1_get_bitstring,"ax",@progbits
.LCOLDB5:
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
.LHOTB5:
	.globl	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB6:
	.loc 1 191 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	16(%ebp), %edi
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 191 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 195 0
	pushl	$3
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	call	mbedtls_asn1_get_tag
.LVL24:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L45
	.loc 1 199 0
	movl	(%edi), %edx
	testl	%edx, %edx
	je	.L47
	.loc 1 204 0
	movl	(%esi), %ecx
	.loc 1 201 0
	decl	%edx
	movl	%edx, (%edi)
	.loc 1 204 0
	movb	(%ecx), %cl
	.loc 1 205 0
	cmpb	$7, %cl
	.loc 1 204 0
	movb	%cl, 4(%edi)
	.loc 1 205 0
	ja	.L48
	.loc 1 207 0
	movl	(%esi), %ecx
	incl	%ecx
	movl	%ecx, (%esi)
	.loc 1 210 0
	movl	%ecx, 8(%edi)
	.loc 1 211 0
	addl	(%esi), %edx
	.loc 1 216 0
	cmpl	%edx, %ebx
	.loc 1 211 0
	movl	%edx, (%esi)
	.loc 1 216 0
	movl	$-102, %edx
	cmovne	%edx, %eax
.LVL25:
	jmp	.L45
.LVL26:
.L47:
	.loc 1 200 0
	movl	$-96, %eax
.LVL27:
	jmp	.L45
.LVL28:
.L48:
	.loc 1 206 0
	movl	$-100, %eax
.LVL29:
.L45:
	.loc 1 217 0
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
.LFE6:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.unlikely.mbedtls_asn1_get_bitstring
.LCOLDE5:
	.section	.text.mbedtls_asn1_get_bitstring
.LHOTE5:
	.section	.text.unlikely.mbedtls_asn1_get_bitstring_null,"ax",@progbits
.LCOLDB6:
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
.LHOTB6:
	.globl	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB7:
	.loc 1 224 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 224 0
	movl	16(%ebp), %esi
	movl	8(%ebp), %ebx
	.loc 1 227 0
	pushl	$3
	pushl	%esi
	pushl	12(%ebp)
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL31:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L52
	.loc 1 230 0
	movl	(%esi), %edx
	leal	-1(%edx), %ecx
	cmpl	$1, %edx
	movl	%ecx, (%esi)
	jbe	.L53
	.loc 1 230 0 is_stmt 0 discriminator 1
	movl	(%ebx), %edx
	leal	1(%edx), %ecx
	movl	%ecx, (%ebx)
	cmpb	$0, (%edx)
	je	.L52
.L53:
	.loc 1 231 0 is_stmt 1
	movl	$-104, %eax
.LVL32:
.L52:
	.loc 1 234 0
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
.LFE7:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.unlikely.mbedtls_asn1_get_bitstring_null
.LCOLDE6:
	.section	.text.mbedtls_asn1_get_bitstring_null
.LHOTE6:
	.section	.text.unlikely.mbedtls_asn1_get_sequence_of,"ax",@progbits
.LCOLDB7:
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
.LHOTB7:
	.globl	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB8:
	.loc 1 245 0
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
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 245 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 251 0
	leal	-32(%ebp), %eax
	pushl	$48
	.loc 1 245 0
	movl	16(%ebp), %edi
	.loc 1 251 0
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	mbedtls_asn1_get_tag
.LVL34:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L58
	.loc 1 255 0
	movl	-32(%ebp), %eax
.LVL35:
	addl	(%esi), %eax
	cmpl	%eax, %ebx
	je	.L69
.LVL36:
.L63:
	.loc 1 256 0
	movl	$-102, %eax
	jmp	.L58
.L60:
.LVL37:
	.loc 1 258 0
	movl	(%esi), %eax
	cmpl	%eax, %ebx
	jbe	.L71
.LVL38:
	.loc 1 261 0
	movzbl	(%eax), %eax
	.loc 1 263 0
	movl	%edx, -44(%ebp)
	.loc 1 261 0
	movl	%eax, (%edi)
	.loc 1 263 0
	pushl	20(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%esi
	call	mbedtls_asn1_get_tag
.LVL39:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L58
	.loc 1 266 0
	movl	(%esi), %eax
.LVL40:
	.loc 1 270 0
	movl	-44(%ebp), %edx
	.loc 1 266 0
	movl	%eax, 8(%edi)
	.loc 1 267 0
	movl	4(%edi), %eax
	addl	(%esi), %eax
	.loc 1 270 0
	cmpl	%eax, %ebx
	.loc 1 267 0
	movl	%eax, (%esi)
	.loc 1 270 0
	jbe	.L60
	.loc 1 272 0
	pushl	%eax
	pushl	%eax
	pushl	$16
	pushl	$1
	call	calloc
.LVL41:
	.loc 1 275 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 272 0
	movl	%eax, 12(%edi)
	.loc 1 275 0
	je	.L67
	movl	%eax, %edi
.LVL42:
.L69:
	.loc 1 263 0
	leal	4(%edi), %edx
	jmp	.L60
.LVL43:
.L71:
	.loc 1 283 0
	movl	$0, 12(%edi)
	.loc 1 288 0
	xorl	%eax, %eax
	.loc 1 285 0
	cmpl	(%esi), %ebx
	je	.L58
	jmp	.L63
.LVL44:
.L67:
	.loc 1 276 0
	movl	$-106, %eax
.LVL45:
.L58:
	.loc 1 289 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L64
	call	__stack_chk_fail
.LVL46:
.L64:
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
.LFE8:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.unlikely.mbedtls_asn1_get_sequence_of
.LCOLDE7:
	.section	.text.mbedtls_asn1_get_sequence_of
.LHOTE7:
	.section	.text.unlikely.mbedtls_asn1_get_alg,"ax",@progbits
.LCOLDB8:
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
.LHOTB8:
	.globl	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB9:
	.loc 1 294 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 294 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 298 0
	leal	-32(%ebp), %eax
	.loc 1 294 0
	movl	16(%ebp), %edx
	.loc 1 298 0
	pushl	$48
	.loc 1 294 0
	movl	20(%ebp), %esi
	.loc 1 298 0
	pushl	%eax
	pushl	%edi
	pushl	%ebx
	.loc 1 294 0
	movl	%edx, -44(%ebp)
	.loc 1 298 0
	call	mbedtls_asn1_get_tag
.LVL48:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L73
	.loc 1 302 0
	movl	(%ebx), %ecx
	.loc 1 303 0
	movl	$-96, %eax
.LVL49:
	.loc 1 302 0
	subl	%ecx, %edi
	testl	%edi, %edi
	jle	.L73
	.loc 1 305 0
	movzbl	(%ecx), %eax
	movl	-44(%ebp), %edx
	.loc 1 306 0
	addl	-32(%ebp), %ecx
	.loc 1 305 0
	movl	%eax, (%edx)
	.loc 1 308 0
	leal	4(%edx), %eax
	pushl	$6
	.loc 1 306 0
	movl	%ecx, %edi
.LVL50:
	.loc 1 308 0
	pushl	%eax
	pushl	%ecx
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL51:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L73
	.loc 1 311 0
	movl	(%ebx), %eax
.LVL52:
	movl	-44(%ebp), %edx
	movl	%eax, 8(%edx)
	.loc 1 312 0
	movl	4(%edx), %eax
	addl	(%ebx), %eax
	.loc 1 314 0
	cmpl	%eax, %edi
	.loc 1 312 0
	movl	%eax, (%ebx)
	.loc 1 314 0
	jne	.L74
	leal	12(%esi), %eax
.L75:
.LVL53:
.LBB4:
.LBB5:
	.loc 1 48 0
	cmpl	%eax, %esi
	je	.L77
.LVL54:
	movb	$0, (%esi)
	incl	%esi
.LVL55:
	jmp	.L75
.LVL56:
.L74:
.LBE5:
.LBE4:
	.loc 1 320 0
	movzbl	(%eax), %edx
	.loc 1 321 0
	incl	%eax
	.loc 1 320 0
	movl	%edx, (%esi)
	.loc 1 321 0
	movl	%eax, (%ebx)
	.loc 1 323 0
	leal	4(%esi), %eax
	pushl	%eax
	pushl	%edi
	pushl	%ebx
	call	mbedtls_asn1_get_len
.LVL57:
	addl	$12, %esp
	testl	%eax, %eax
	jne	.L73
	.loc 1 326 0
	movl	(%ebx), %eax
.LVL58:
	.loc 1 327 0
	movl	4(%esi), %edx
	.loc 1 326 0
	movl	%eax, 8(%esi)
	.loc 1 327 0
	addl	(%ebx), %edx
	.loc 1 330 0
	movl	$-102, %eax
	.loc 1 329 0
	cmpl	%edx, %edi
	.loc 1 327 0
	movl	%edx, (%ebx)
	.loc 1 329 0
	jne	.L73
.L77:
	.loc 1 332 0
	xorl	%eax, %eax
.LVL59:
.L73:
	.loc 1 333 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L78
	call	__stack_chk_fail
.LVL60:
.L78:
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
.LFE9:
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.unlikely.mbedtls_asn1_get_alg
.LCOLDE8:
	.section	.text.mbedtls_asn1_get_alg
.LHOTE8:
	.section	.text.unlikely.mbedtls_asn1_get_alg_null,"ax",@progbits
.LCOLDB9:
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
.LHOTB9:
	.globl	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB10:
	.loc 1 338 0
	.cfi_startproc
.LVL61:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 342 0
	movl	$3, %ecx
	.loc 1 338 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.loc 1 342 0
	leal	-24(%ebp), %edx
	.loc 1 338 0
	subl	$20, %esp
	.cfi_offset 7, -12
	.loc 1 338 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 342 0
	movl	%edx, %edi
	rep stosl
	.loc 1 344 0
	pushl	%edx
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	mbedtls_asn1_get_alg
.LVL62:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L86
	.loc 1 347 0
	movl	-24(%ebp), %edx
	cmpl	$5, %edx
	je	.L92
	testl	%edx, %edx
	.loc 1 348 0
	movl	$-104, %eax
.LVL63:
	.loc 1 347 0
	jne	.L86
.L92:
	.loc 1 350 0 discriminator 1
	cmpl	$1, -20(%ebp)
	sbbl	%eax, %eax
	notl	%eax
	andl	$-104, %eax
.L86:
	.loc 1 351 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L88
	call	__stack_chk_fail
.LVL64:
.L88:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.unlikely.mbedtls_asn1_get_alg_null
.LCOLDE9:
	.section	.text.mbedtls_asn1_get_alg_null
.LHOTE9:
	.section	.text.unlikely.mbedtls_asn1_free_named_data,"ax",@progbits
.LCOLDB10:
	.section	.text.mbedtls_asn1_free_named_data,"ax",@progbits
.LHOTB10:
	.globl	mbedtls_asn1_free_named_data
	.type	mbedtls_asn1_free_named_data, @function
mbedtls_asn1_free_named_data:
.LFB11:
	.loc 1 354 0
	.cfi_startproc
.LVL65:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 354 0
	movl	8(%ebp), %ebx
	.loc 1 355 0
	testl	%ebx, %ebx
	je	.L97
	.loc 1 358 0
	subl	$12, %esp
	pushl	8(%ebx)
	call	free
.LVL66:
	.loc 1 359 0
	popl	%eax
	pushl	20(%ebx)
	call	free
.LVL67:
	leal	32(%ebx), %eax
	addl	$16, %esp
.LVL68:
.L99:
.LBB8:
.LBB9:
	.loc 1 48 0
	cmpl	%eax, %ebx
	je	.L97
.LVL69:
	movb	$0, (%ebx)
	incl	%ebx
.LVL70:
	jmp	.L99
.LVL71:
.L97:
.LBE9:
.LBE8:
	.loc 1 362 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	mbedtls_asn1_free_named_data, .-mbedtls_asn1_free_named_data
	.section	.text.unlikely.mbedtls_asn1_free_named_data
.LCOLDE10:
	.section	.text.mbedtls_asn1_free_named_data
.LHOTE10:
	.section	.text.unlikely.mbedtls_asn1_free_named_data_list,"ax",@progbits
.LCOLDB11:
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
.LHOTB11:
	.globl	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB12:
	.loc 1 365 0
	.cfi_startproc
.LVL72:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %esi
.L104:
	.loc 1 368 0
	movl	(%esi), %ebx
.LVL73:
	testl	%ebx, %ebx
	je	.L107
	.loc 1 370 0
	movl	24(%ebx), %eax
	.loc 1 371 0
	subl	$12, %esp
	.loc 1 370 0
	movl	%eax, (%esi)
	.loc 1 371 0
	pushl	%ebx
	call	mbedtls_asn1_free_named_data
.LVL74:
	.loc 1 372 0
	movl	%ebx, (%esp)
	call	free
.LVL75:
	addl	$16, %esp
	jmp	.L104
.L107:
	.loc 1 374 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL76:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.unlikely.mbedtls_asn1_free_named_data_list
.LCOLDE11:
	.section	.text.mbedtls_asn1_free_named_data_list
.LHOTE11:
	.section	.text.unlikely.mbedtls_asn1_find_named_data,"ax",@progbits
.LCOLDB12:
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
.LHOTB12:
	.globl	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB13:
	.loc 1 378 0
	.cfi_startproc
.LVL77:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	16(%ebp), %esi
	movl	8(%ebp), %ebx
.LVL78:
.L109:
	.loc 1 379 0
	testl	%ebx, %ebx
	je	.L111
	.loc 1 381 0
	cmpl	%esi, 4(%ebx)
	jne	.L110
	.loc 1 382 0 discriminator 1
	pushl	%eax
	pushl	%esi
	pushl	12(%ebp)
	pushl	8(%ebx)
	call	memcmp
.LVL79:
	addl	$16, %esp
	.loc 1 381 0 discriminator 1
	testl	%eax, %eax
	je	.L111
.L110:
	.loc 1 387 0
	movl	24(%ebx), %ebx
.LVL80:
	jmp	.L109
.L111:
	.loc 1 391 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL81:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
	.section	.text.unlikely.mbedtls_asn1_find_named_data
.LCOLDE12:
	.section	.text.mbedtls_asn1_find_named_data
.LHOTE12:
	.text
.Letext0:
	.section	.text.unlikely.mbedtls_asn1_get_len
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./security/alicrypto/./mbedtls/include/mbedtls/bignum.h"
	.file 6 "./security/alicrypto/./mbedtls/include/mbedtls/asn1.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x850
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF44
	.byte	0xc
	.long	.LASF45
	.long	.LASF46
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x41
	.long	0x53
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0xd8
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0x48
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x83
	.long	0x88
	.uleb128 0x5
	.byte	0xc
	.byte	0x5
	.byte	0x90
	.long	0xc5
	.uleb128 0x6
	.string	"s"
	.byte	0x5
	.byte	0x92
	.long	0x68
	.byte	0
	.uleb128 0x6
	.string	"n"
	.byte	0x5
	.byte	0x93
	.long	0x76
	.byte	0x4
	.uleb128 0x6
	.string	"p"
	.byte	0x5
	.byte	0x94
	.long	0xc5
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x93
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x96
	.long	0x9e
	.uleb128 0x8
	.long	.LASF15
	.byte	0xc
	.byte	0x6
	.byte	0x76
	.long	0x105
	.uleb128 0x6
	.string	"tag"
	.byte	0x6
	.byte	0x78
	.long	0x68
	.byte	0
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x79
	.long	0x76
	.byte	0x4
	.uleb128 0x6
	.string	"p"
	.byte	0x6
	.byte	0x7a
	.long	0x105
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x6
	.byte	0x7c
	.long	0xd6
	.uleb128 0x8
	.long	.LASF16
	.byte	0xc
	.byte	0x6
	.byte	0x81
	.long	0x145
	.uleb128 0x6
	.string	"len"
	.byte	0x6
	.byte	0x83
	.long	0x76
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0x84
	.long	0x2c
	.byte	0x4
	.uleb128 0x6
	.string	"p"
	.byte	0x6
	.byte	0x85
	.long	0x105
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x87
	.long	0x116
	.uleb128 0x8
	.long	.LASF18
	.byte	0x10
	.byte	0x6
	.byte	0x8c
	.long	0x175
	.uleb128 0x6
	.string	"buf"
	.byte	0x6
	.byte	0x8e
	.long	0x10b
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0x8f
	.long	0x175
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x150
	.uleb128 0x3
	.long	.LASF18
	.byte	0x6
	.byte	0x91
	.long	0x150
	.uleb128 0x8
	.long	.LASF20
	.byte	0x20
	.byte	0x6
	.byte	0x96
	.long	0x1c3
	.uleb128 0x6
	.string	"oid"
	.byte	0x6
	.byte	0x98
	.long	0x10b
	.byte	0
	.uleb128 0x6
	.string	"val"
	.byte	0x6
	.byte	0x99
	.long	0x10b
	.byte	0xc
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0x9a
	.long	0x1c3
	.byte	0x18
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0x9b
	.long	0x2c
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x186
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x9d
	.long	0x186
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF22
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x7
	.byte	0x4
	.long	0x1ea
	.uleb128 0xb
	.long	0x1dd
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0x36
	.long	0x68
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x234
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x36
	.long	0x234
	.long	.LLST0
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x37
	.long	0x23a
	.long	.LLST1
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x38
	.long	0x245
	.long	.LLST2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x105
	.uleb128 0x7
	.byte	0x4
	.long	0x240
	.uleb128 0xb
	.long	0x2c
	.uleb128 0x7
	.byte	0x4
	.long	0x76
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x70
	.long	0x68
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c0
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x70
	.long	0x234
	.long	.LLST3
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0x71
	.long	0x23a
	.long	.LLST4
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0x72
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.string	"tag"
	.byte	0x1
	.byte	0x72
	.long	0x68
	.long	.LLST5
	.uleb128 0xf
	.long	.LVL8
	.long	0x1ef
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x7f
	.long	0x68
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x331
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x7f
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x80
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0x81
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0x83
	.long	0x68
	.long	.LLST6
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x84
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LVL11
	.long	0x24b
	.uleb128 0x13
	.long	.LVL13
	.long	0x81d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x68
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x92
	.long	0x68
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a8
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x92
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x93
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.byte	0x94
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0x96
	.long	0x68
	.long	.LLST7
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x97
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LVL15
	.long	0x24b
	.uleb128 0x13
	.long	.LVL17
	.long	0x81d
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0xab
	.long	0x68
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x420
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0xab
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0xac
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"X"
	.byte	0x1
	.byte	0xad
	.long	0x420
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xaf
	.long	0x68
	.long	.LLST8
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0xb0
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LVL19
	.long	0x24b
	.uleb128 0x13
	.long	.LVL21
	.long	0x826
	.uleb128 0x13
	.long	.LVL22
	.long	0x81d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xcb
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0xbd
	.long	0x68
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x47f
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0xbd
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0xbd
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"bs"
	.byte	0x1
	.byte	0xbe
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xc0
	.long	0x68
	.long	.LLST9
	.uleb128 0x13
	.long	.LVL24
	.long	0x24b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x145
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0xde
	.long	0x68
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4df
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0xde
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0xde
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0xdf
	.long	0x245
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xe1
	.long	0x68
	.long	.LLST10
	.uleb128 0x13
	.long	.LVL31
	.long	0x24b
	.byte	0
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0xf1
	.long	0x68
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x580
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0xf1
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0xf2
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"cur"
	.byte	0x1
	.byte	0xf3
	.long	0x580
	.long	.LLST11
	.uleb128 0xe
	.string	"tag"
	.byte	0x1
	.byte	0xf4
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xf6
	.long	0x68
	.long	.LLST12
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0xf7
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xf8
	.long	0x586
	.long	.LLST13
	.uleb128 0x13
	.long	.LVL34
	.long	0x24b
	.uleb128 0x13
	.long	.LVL39
	.long	0x24b
	.uleb128 0x13
	.long	.LVL41
	.long	0x832
	.uleb128 0x13
	.long	.LVL46
	.long	0x81d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x17b
	.uleb128 0x7
	.byte	0x4
	.long	0x10b
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x5b4
	.uleb128 0x15
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.long	0x1db
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x2f
	.long	0x76
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x30
	.long	0x5b4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5ba
	.uleb128 0x17
	.long	0x2c
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.value	0x123
	.long	0x68
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x68e
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x123
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"end"
	.byte	0x1
	.value	0x124
	.long	0x23a
	.long	.LLST14
	.uleb128 0x19
	.string	"alg"
	.byte	0x1
	.value	0x125
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x1
	.value	0x125
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x127
	.long	0x68
	.long	.LLST15
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x128
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	0x58c
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.value	0x13c
	.long	0x669
	.uleb128 0x1f
	.long	0x5a1
	.long	.LLST16
	.uleb128 0x20
	.long	0x598
	.uleb128 0x21
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x22
	.long	0x5aa
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LVL48
	.long	0x24b
	.uleb128 0x13
	.long	.LVL51
	.long	0x24b
	.uleb128 0x13
	.long	.LVL57
	.long	0x1ef
	.uleb128 0x13
	.long	.LVL60
	.long	0x81d
	.byte	0
	.uleb128 0x18
	.long	.LASF34
	.byte	0x1
	.value	0x14f
	.long	0x68
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x705
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.value	0x14f
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"end"
	.byte	0x1
	.value	0x150
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"alg"
	.byte	0x1
	.value	0x151
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x153
	.long	0x68
	.long	.LLST18
	.uleb128 0x23
	.long	.LASF33
	.byte	0x1
	.value	0x154
	.long	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LVL62
	.long	0x5bf
	.uleb128 0x13
	.long	.LVL64
	.long	0x81d
	.byte	0
	.uleb128 0x24
	.long	.LASF35
	.byte	0x1
	.value	0x161
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x777
	.uleb128 0x19
	.string	"cur"
	.byte	0x1
	.value	0x161
	.long	0x777
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	0x58c
	.long	.LBB8
	.long	.LBE8-.LBB8
	.byte	0x1
	.value	0x169
	.long	0x764
	.uleb128 0x1f
	.long	0x5a1
	.long	.LLST19
	.uleb128 0x1f
	.long	0x598
	.long	.LLST20
	.uleb128 0x21
	.long	.LBB9
	.long	.LBE9-.LBB9
	.uleb128 0x22
	.long	0x5aa
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LVL66
	.long	0x83d
	.uleb128 0x13
	.long	.LVL67
	.long	0x83d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1c9
	.uleb128 0x24
	.long	.LASF36
	.byte	0x1
	.value	0x16c
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c5
	.uleb128 0x1b
	.long	.LASF37
	.byte	0x1
	.value	0x16c
	.long	0x7c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"cur"
	.byte	0x1
	.value	0x16e
	.long	0x777
	.long	.LLST22
	.uleb128 0x13
	.long	.LVL74
	.long	0x705
	.uleb128 0x13
	.long	.LVL75
	.long	0x83d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x777
	.uleb128 0x18
	.long	.LASF38
	.byte	0x1
	.value	0x178
	.long	0x777
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x81d
	.uleb128 0x25
	.long	.LASF39
	.byte	0x1
	.value	0x178
	.long	0x777
	.long	.LLST23
	.uleb128 0x19
	.string	"oid"
	.byte	0x1
	.value	0x179
	.long	0x1e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x179
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x13
	.long	.LVL79
	.long	0x848
	.byte	0
	.uleb128 0x26
	.long	.LASF48
	.long	.LASF48
	.uleb128 0x27
	.long	.LASF40
	.long	.LASF40
	.byte	0x5
	.value	0x17c
	.uleb128 0x28
	.long	.LASF41
	.long	.LASF41
	.byte	0x7
	.byte	0x5a
	.uleb128 0x28
	.long	.LASF42
	.long	.LASF42
	.byte	0x7
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF43
	.long	.LASF43
	.byte	0x8
	.byte	0x1a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x18
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.long	.LFE1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL1
	.long	.LVL3
	.value	0x1
	.byte	0x56
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	.LVL5
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL2
	.long	.LVL6
	.value	0x1
	.byte	0x53
	.long	.LVL6
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL8
	.long	.LFE2
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL8
	.long	.LFE2
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x56
	.long	.LVL9
	.long	.LFE2
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST6:
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LFE5
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL37
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	.LVL43
	.long	.LVL45
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST12:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL38
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST14:
	.long	.LVL47
	.long	.LVL50
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL50
	.long	.LVL51-1
	.value	0x1
	.byte	0x51
	.long	.LVL51-1
	.long	.LVL59
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST15:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL58
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL53
	.long	.LVL56
	.value	0x2
	.byte	0x3b
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x56
	.long	.LVL54
	.long	.LVL55
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST18:
	.long	.LVL62
	.long	.LVL63
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL67
	.long	.LVL68
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL68
	.long	.LVL71
	.value	0x2
	.byte	0x4f
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x53
	.long	.LVL68
	.long	.LVL71
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST21:
	.long	.LVL67
	.long	.LVL69
	.value	0x1
	.byte	0x53
	.long	.LVL69
	.long	.LVL70
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST22:
	.long	.LVL73
	.long	.LVL76
	.value	0x1
	.byte	0x53
	.long	.LVL76
	.long	.LFE12
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0
	.long	0
.LLST23:
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL78
	.long	.LVL81
	.value	0x1
	.byte	0x53
	.long	.LVL81
	.long	.LFE13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"size_t"
.LASF38:
	.string	"mbedtls_asn1_find_named_data"
.LASF15:
	.string	"mbedtls_asn1_buf"
.LASF7:
	.string	"long long unsigned int"
.LASF36:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF19:
	.string	"next"
.LASF14:
	.string	"mbedtls_mpi"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"long int"
.LASF26:
	.string	"mbedtls_asn1_get_bool"
.LASF46:
	.string	"/home/stone/Documents/pca"
.LASF9:
	.string	"__uint32_t"
.LASF35:
	.string	"mbedtls_asn1_free_named_data"
.LASF8:
	.string	"unsigned int"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF40:
	.string	"mbedtls_mpi_read_binary"
.LASF27:
	.string	"mbedtls_asn1_get_int"
.LASF30:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF22:
	.string	"sizetype"
.LASF11:
	.string	"long double"
.LASF45:
	.string	"src/asn1parse.c"
.LASF32:
	.string	"mbedtls_asn1_get_alg"
.LASF18:
	.string	"mbedtls_asn1_sequence"
.LASF29:
	.string	"mbedtls_asn1_get_bitstring"
.LASF13:
	.string	"mbedtls_mpi_uint"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"mbedtls_asn1_get_len"
.LASF25:
	.string	"mbedtls_asn1_get_tag"
.LASF48:
	.string	"__stack_chk_fail"
.LASF37:
	.string	"head"
.LASF44:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF12:
	.string	"uint32_t"
.LASF34:
	.string	"mbedtls_asn1_get_alg_null"
.LASF23:
	.string	"char"
.LASF47:
	.string	"mbedtls_zeroize"
.LASF33:
	.string	"params"
.LASF43:
	.string	"memcmp"
.LASF42:
	.string	"free"
.LASF20:
	.string	"mbedtls_asn1_named_data"
.LASF41:
	.string	"calloc"
.LASF31:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF21:
	.string	"next_merged"
.LASF28:
	.string	"mbedtls_asn1_get_mpi"
.LASF39:
	.string	"list"
.LASF17:
	.string	"unused_bits"
.LASF16:
	.string	"mbedtls_asn1_bitstring"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

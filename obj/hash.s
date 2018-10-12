	.file	"hash.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"E %s %d: get_ctx_size: bad input!\n"
.LC1:
	.string	"E %s %d: get_ctx_size: invalid hash type(%d)\n"
	.section	.text.unlikely.ali_hash_get_ctx_size,"ax",@progbits
.LCOLDB2:
	.section	.text.ali_hash_get_ctx_size,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.ali_hash_get_ctx_size
.Ltext_cold0:
	.section	.text.ali_hash_get_ctx_size
	.globl	ali_hash_get_ctx_size
	.type	ali_hash_get_ctx_size, @function
ali_hash_get_ctx_size:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/mbed/hash/hash.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 9 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	.loc 1 10 0
	testl	%eax, %eax
	jne	.L2
	.loc 1 11 0
	pushl	%eax
	pushl	$11
	pushl	$__FUNCTION__.4644
	pushl	$.LC0
	call	printf
.LVL1:
	.loc 1 12 0
	addl	$16, %esp
	movl	$-65529, %eax
	jmp	.L3
.L2:
	.loc 1 15 0
	leal	-1(%edx), %ecx
	cmpl	$5, %ecx
	jbe	.L6
	.loc 1 25 0
	pushl	%edx
	pushl	$25
	pushl	$__FUNCTION__.4644
	pushl	$.LC1
	call	printf
.LVL2:
	.loc 1 26 0
	addl	$16, %esp
	movl	$-65533, %eax
	jmp	.L3
.L6:
	.loc 1 29 0
	movl	$224, (%eax)
	.loc 1 31 0
	xorl	%eax, %eax
.L3:
	.loc 1 32 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	ali_hash_get_ctx_size, .-ali_hash_get_ctx_size
	.section	.text.unlikely.ali_hash_get_ctx_size
.LCOLDE2:
	.section	.text.ali_hash_get_ctx_size
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"E %s %d: ali_hash_init: bad ctx!\n"
.LC4:
	.string	"E %s %d: ali_hash_init: bad status(%d)\n"
.LC5:
	.string	"E %s %d: ali_hash_init: invalid hash type(%d)\n"
	.section	.text.unlikely.ali_hash_init,"ax",@progbits
.LCOLDB6:
	.section	.text.ali_hash_init,"ax",@progbits
.LHOTB6:
	.globl	ali_hash_init
	.type	ali_hash_init, @function
ali_hash_init:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
.LVL3:
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
	.loc 1 35 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 38 0
	testl	%ebx, %ebx
	jne	.L10
	.loc 1 39 0
	pushl	%eax
	pushl	$39
	pushl	$__FUNCTION__.4658
	pushl	$.LC3
	call	printf
.LVL4:
	.loc 1 40 0
	addl	$16, %esp
	movl	$-65532, %eax
	jmp	.L11
.L10:
.LVL5:
	.loc 1 44 0
	cmpl	$305419896, (%ebx)
	jne	.L12
	.loc 1 45 0 discriminator 1
	movl	4(%ebx), %eax
	cmpl	$3, %eax
	je	.L12
	testl	%eax, %eax
	je	.L12
	.loc 1 47 0
	pushl	%eax
	pushl	$47
	pushl	$__FUNCTION__.4658
	pushl	$.LC4
	call	printf
.LVL6:
	.loc 1 48 0
	addl	$16, %esp
	movl	$-65523, %eax
	jmp	.L11
.L12:
	.loc 1 51 0
	cmpl	$2, %esi
	je	.L14
	ja	.L15
	cmpl	$1, %esi
	jne	.L13
	.loc 1 54 0
	leal	12(%ebx), %edi
	subl	$12, %esp
	pushl	%edi
	call	mbedtls_sha1_init
.LVL7:
	.loc 1 55 0
	movl	%edi, (%esp)
	call	mbedtls_sha1_starts
.LVL8:
	jmp	.L27
.L15:
	.loc 1 51 0
	cmpl	$3, %esi
	je	.L17
	cmpl	$6, %esi
	jne	.L13
	.loc 1 90 0
	leal	12(%ebx), %edi
	subl	$12, %esp
	pushl	%edi
	call	mbedtls_md5_init
.LVL9:
	.loc 1 91 0
	movl	%edi, (%esp)
	call	mbedtls_md5_starts
.LVL10:
	jmp	.L27
.L14:
	.loc 1 62 0
	leal	12(%ebx), %edi
	subl	$12, %esp
	pushl	%edi
	call	mbedtls_sha256_init
.LVL11:
	.loc 1 63 0
	popl	%ecx
	popl	%eax
	pushl	$1
	jmp	.L28
.L17:
	.loc 1 68 0
	leal	12(%ebx), %edi
	subl	$12, %esp
	pushl	%edi
	call	mbedtls_sha256_init
.LVL12:
	.loc 1 69 0
	popl	%eax
	popl	%edx
	pushl	$0
.L28:
	pushl	%edi
	call	mbedtls_sha256_starts
.LVL13:
.L27:
	.loc 1 92 0
	addl	$16, %esp
	.loc 1 101 0
	movl	%esi, 8(%ebx)
	.loc 1 102 0
	movl	$1, 4(%ebx)
	.loc 1 103 0
	movl	$305419896, (%ebx)
	.loc 1 105 0
	xorl	%eax, %eax
	jmp	.L11
.L13:
	.loc 1 97 0
	pushl	%esi
	pushl	$97
	pushl	$__FUNCTION__.4658
	pushl	$.LC5
	call	printf
.LVL14:
	.loc 1 98 0
	addl	$16, %esp
	movl	$-65533, %eax
.LVL15:
.L11:
	.loc 1 106 0
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
	.size	ali_hash_init, .-ali_hash_init
	.section	.text.unlikely.ali_hash_init
.LCOLDE6:
	.section	.text.ali_hash_init
.LHOTE6:
	.section	.rodata.str1.1
.LC7:
	.string	"E %s %d: ali_hash_update: bad ctx!\n"
.LC8:
	.string	"E %s %d: ali_hash_update: bad args!\n"
.LC9:
	.string	"E %s %d: ali_hash_update: bad magic!\n"
.LC10:
	.string	"E %s %d: ali_hash_update: bad status(%d)\n"
.LC11:
	.string	"E %s %d: ali_hash_update: invalid hash type(%d)\n"
	.section	.text.unlikely.ali_hash_update,"ax",@progbits
.LCOLDB12:
	.section	.text.ali_hash_update,"ax",@progbits
.LHOTB12:
	.globl	ali_hash_update
	.type	ali_hash_update, @function
ali_hash_update:
.LFB3:
	.loc 1 109 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 109 0
	movl	16(%ebp), %ebx
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	.loc 1 112 0
	testl	%ebx, %ebx
	jne	.L30
	.loc 1 113 0
	pushl	%eax
	pushl	$113
	pushl	$__FUNCTION__.4671
	pushl	$.LC7
	jmp	.L50
.L30:
	.loc 1 117 0
	testl	%edx, %edx
	jne	.L32
	testl	%ecx, %ecx
	je	.L32
	.loc 1 118 0
	pushl	%eax
	pushl	$118
	pushl	$__FUNCTION__.4671
	pushl	$.LC8
	call	printf
.LVL17:
	.loc 1 119 0
	addl	$16, %esp
	movl	$-65529, %eax
	jmp	.L31
.LVL18:
.L32:
	.loc 1 123 0
	cmpl	$305419896, (%ebx)
	je	.L33
	.loc 1 124 0
	pushl	%eax
	pushl	$124
	pushl	$__FUNCTION__.4671
	pushl	$.LC9
.LVL19:
.L50:
	call	printf
.LVL20:
	.loc 1 125 0
	addl	$16, %esp
	movl	$-65532, %eax
	jmp	.L31
.LVL21:
.L33:
	.loc 1 128 0
	movl	4(%ebx), %eax
	leal	-1(%eax), %esi
	cmpl	$1, %esi
	jbe	.L34
	.loc 1 130 0
	pushl	%eax
	pushl	$130
	pushl	$__FUNCTION__.4671
	pushl	$.LC10
	call	printf
.LVL22:
	.loc 1 131 0
	addl	$16, %esp
	movl	$-65523, %eax
	jmp	.L31
.LVL23:
.L34:
	.loc 1 134 0
	movl	8(%ebx), %eax
	cmpl	$2, %eax
	je	.L39
	ja	.L37
	cmpl	$1, %eax
	jne	.L35
	.loc 1 137 0
	pushl	%eax
	leal	12(%ebx), %eax
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	mbedtls_sha1_update
.LVL24:
	jmp	.L49
.LVL25:
.L37:
	.loc 1 134 0
	cmpl	$3, %eax
	je	.L39
	cmpl	$6, %eax
	jne	.L35
	.loc 1 173 0
	pushl	%eax
	leal	12(%ebx), %eax
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	mbedtls_md5_update
.LVL26:
	jmp	.L49
.LVL27:
.L39:
	.loc 1 151 0
	leal	12(%ebx), %eax
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	mbedtls_sha256_update
.LVL28:
.L49:
	.loc 1 175 0
	addl	$16, %esp
	.loc 1 184 0
	movl	$2, 4(%ebx)
	.loc 1 186 0
	xorl	%eax, %eax
	jmp	.L31
.LVL29:
.L35:
	.loc 1 180 0
	pushl	%eax
	pushl	$180
	pushl	$__FUNCTION__.4671
	pushl	$.LC11
	call	printf
.LVL30:
	.loc 1 181 0
	addl	$16, %esp
	movl	$-65533, %eax
.LVL31:
.L31:
	.loc 1 187 0
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
	.size	ali_hash_update, .-ali_hash_update
	.section	.text.unlikely.ali_hash_update
.LCOLDE12:
	.section	.text.ali_hash_update
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"E %s %d: ali_hash_final: invalid context!\n"
.LC14:
	.string	"E %s %d: ali_hash_final: bad input args!\n"
.LC15:
	.string	"E %s %d: ali_hash_final: bad magic!\n"
.LC16:
	.string	"E %s %d: ali_hash_final: bad status(%d)\n"
.LC17:
	.string	"E %s %d: ali_hash_final: invalid hash type(%d)\n"
	.section	.text.unlikely.ali_hash_final,"ax",@progbits
.LCOLDB18:
	.section	.text.ali_hash_final,"ax",@progbits
.LHOTB18:
	.globl	ali_hash_final
	.type	ali_hash_final, @function
ali_hash_final:
.LFB4:
	.loc 1 190 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 190 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %edx
	.loc 1 193 0
	testl	%ebx, %ebx
	jne	.L52
	.loc 1 194 0
	pushl	%eax
	pushl	$194
	pushl	$__FUNCTION__.4683
	pushl	$.LC13
	jmp	.L66
.L52:
	.loc 1 196 0
	testl	%edx, %edx
	jne	.L54
	.loc 1 197 0
	pushl	%eax
	pushl	$197
	pushl	$__FUNCTION__.4683
	pushl	$.LC14
	call	printf
.LVL33:
	addl	$16, %esp
	movl	$-65529, %eax
	jmp	.L53
.LVL34:
.L54:
	.loc 1 201 0
	cmpl	$305419896, (%ebx)
	je	.L55
	.loc 1 202 0
	pushl	%eax
	pushl	$202
	pushl	$__FUNCTION__.4683
	pushl	$.LC15
.LVL35:
.L66:
	call	printf
.LVL36:
	.loc 1 203 0
	addl	$16, %esp
	movl	$-65532, %eax
	jmp	.L53
.LVL37:
.L55:
	.loc 1 206 0
	movl	4(%ebx), %eax
	leal	-1(%eax), %ecx
	cmpl	$1, %ecx
	jbe	.L56
	.loc 1 208 0
	pushl	%eax
	pushl	$208
	pushl	$__FUNCTION__.4683
	pushl	$.LC16
	call	printf
.LVL38:
	.loc 1 209 0
	addl	$16, %esp
	movl	$-65523, %eax
	jmp	.L53
.LVL39:
.L56:
	.loc 1 212 0
	movl	8(%ebx), %eax
	cmpl	$2, %eax
	je	.L61
	ja	.L59
	cmpl	$1, %eax
	jne	.L57
	.loc 1 215 0
	leal	12(%ebx), %esi
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	%esi
	call	mbedtls_sha1_finish
.LVL40:
	.loc 1 216 0
	movl	%esi, (%esp)
	call	mbedtls_sha1_free
.LVL41:
	jmp	.L65
.LVL42:
.L59:
	.loc 1 212 0
	cmpl	$3, %eax
	je	.L61
	cmpl	$6, %eax
	jne	.L57
	.loc 1 251 0
	leal	12(%ebx), %esi
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	%esi
	call	mbedtls_md5_finish
.LVL43:
	.loc 1 252 0
	movl	%esi, (%esp)
	call	mbedtls_md5_free
.LVL44:
	jmp	.L65
.LVL45:
.L61:
	.loc 1 229 0
	leal	12(%ebx), %esi
	pushl	%ecx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	call	mbedtls_sha256_finish
.LVL46:
	.loc 1 230 0
	movl	%esi, (%esp)
	call	mbedtls_sha256_free
.LVL47:
.L65:
	.loc 1 253 0
	addl	$16, %esp
	.loc 1 262 0
	movl	$0, (%ebx)
	.loc 1 263 0
	movl	$3, 4(%ebx)
	.loc 1 265 0
	xorl	%eax, %eax
	jmp	.L53
.LVL48:
.L57:
	.loc 1 258 0
	pushl	%eax
	pushl	$258
	pushl	$__FUNCTION__.4683
	pushl	$.LC17
	call	printf
.LVL49:
	.loc 1 259 0
	addl	$16, %esp
	movl	$-65533, %eax
.LVL50:
.L53:
	.loc 1 266 0
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
	.size	ali_hash_final, .-ali_hash_final
	.section	.text.unlikely.ali_hash_final
.LCOLDE18:
	.section	.text.ali_hash_final
.LHOTE18:
	.section	.rodata.str1.1
.LC19:
	.string	"E %s %d: ali_hash_digest: bad input args!\n"
.LC20:
	.string	"E %s %d: ali_hash_digest: invalid hash type(%d)\n"
	.section	.text.unlikely.ali_hash_digest,"ax",@progbits
.LCOLDB21:
	.section	.text.ali_hash_digest,"ax",@progbits
.LHOTB21:
	.globl	ali_hash_digest
	.type	ali_hash_digest, @function
ali_hash_digest:
.LFB5:
	.loc 1 270 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$252, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 270 0
	movl	12(%ebp), %edi
	movl	8(%ebp), %eax
	movl	%gs:20, %edx
	movl	%edx, -28(%ebp)
	xorl	%edx, %edx
	movl	20(%ebp), %esi
	.loc 1 273 0
	testl	%edi, %edi
	sete	%cl
	cmpl	$0, 16(%ebp)
	setne	%dl
	testb	%dl, %cl
	jne	.L78
	testl	%esi, %esi
	jne	.L68
.L78:
	.loc 1 274 0
	pushl	%ecx
	pushl	$274
	pushl	$__FUNCTION__.4697
	pushl	$.LC19
	call	printf
.LVL52:
	.loc 1 275 0
	addl	$16, %esp
	movl	$-65529, %eax
	jmp	.L70
.L68:
	.loc 1 278 0
	cmpl	$2, %eax
	je	.L72
	ja	.L73
	cmpl	$1, %eax
	jne	.L71
	.loc 1 281 0
	leal	-240(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_sha1_init
.LVL53:
	.loc 1 282 0
	movl	%ebx, (%esp)
	call	mbedtls_sha1_starts
.LVL54:
	.loc 1 283 0
	addl	$12, %esp
	pushl	16(%ebp)
	pushl	%edi
	pushl	%ebx
	call	mbedtls_sha1_update
.LVL55:
	.loc 1 285 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%ebx
	call	mbedtls_sha1_finish
.LVL56:
	.loc 1 286 0
	movl	%ebx, (%esp)
	call	mbedtls_sha1_free
.LVL57:
	jmp	.L81
.L73:
	.loc 1 278 0
	cmpl	$3, %eax
	je	.L75
	cmpl	$6, %eax
	jne	.L71
	.loc 1 337 0
	leal	-240(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_md5_init
.LVL58:
	.loc 1 338 0
	movl	%ebx, (%esp)
	call	mbedtls_md5_starts
.LVL59:
	.loc 1 339 0
	addl	$12, %esp
	pushl	16(%ebp)
	pushl	%edi
	pushl	%ebx
	call	mbedtls_md5_update
.LVL60:
	.loc 1 341 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%ebx
	call	mbedtls_md5_finish
.LVL61:
	.loc 1 342 0
	movl	%ebx, (%esp)
	call	mbedtls_md5_free
.LVL62:
	jmp	.L81
.L72:
	.loc 1 293 0
	leal	-240(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_sha256_init
.LVL63:
	.loc 1 294 0
	popl	%ecx
	popl	%eax
	pushl	$1
	jmp	.L80
.L75:
	.loc 1 303 0
	leal	-240(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_sha256_init
.LVL64:
	.loc 1 304 0
	popl	%eax
	popl	%edx
	pushl	$0
.L80:
	pushl	%ebx
	call	mbedtls_sha256_starts
.LVL65:
	.loc 1 305 0
	addl	$12, %esp
	pushl	16(%ebp)
	pushl	%edi
	pushl	%ebx
	call	mbedtls_sha256_update
.LVL66:
	.loc 1 307 0
	popl	%ecx
	popl	%edi
	pushl	%esi
	pushl	%ebx
	call	mbedtls_sha256_finish
.LVL67:
	.loc 1 308 0
	movl	%ebx, (%esp)
	call	mbedtls_sha256_free
.LVL68:
.L81:
	.loc 1 309 0
	addl	$16, %esp
	.loc 1 352 0
	xorl	%eax, %eax
	.loc 1 309 0
	jmp	.L70
.L71:
	.loc 1 348 0
	pushl	%eax
	pushl	$348
	pushl	$__FUNCTION__.4697
	pushl	$.LC20
	call	printf
.LVL69:
	.loc 1 349 0
	addl	$16, %esp
	movl	$-65533, %eax
.L70:
	.loc 1 353 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L77
	call	__stack_chk_fail
.LVL70:
.L77:
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
.LFE5:
	.size	ali_hash_digest, .-ali_hash_digest
	.section	.text.unlikely.ali_hash_digest
.LCOLDE21:
	.section	.text.ali_hash_digest
.LHOTE21:
	.section	.rodata.str1.1
.LC22:
	.string	"E %s %d: ali_hash_reset: invalid context!\n"
	.section	.text.unlikely.ali_hash_reset,"ax",@progbits
.LCOLDB23:
	.section	.text.ali_hash_reset,"ax",@progbits
.LHOTB23:
	.globl	ali_hash_reset
	.type	ali_hash_reset, @function
ali_hash_reset:
.LFB6:
	.loc 1 356 0
	.cfi_startproc
.LVL71:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%edx
	.cfi_offset 7, -12
	.loc 1 356 0
	movl	8(%ebp), %edx
	.loc 1 359 0
	testl	%edx, %edx
	jne	.L83
	.loc 1 360 0
	pushl	%eax
	pushl	$360
	pushl	$__FUNCTION__.4708
	pushl	$.LC22
	call	printf
.LVL72:
	addl	$16, %esp
	movl	$-65532, %eax
	jmp	.L84
.L83:
.LVL73:
	.loc 1 370 0
	movl	$56, %ecx
	xorl	%eax, %eax
	movl	%edx, %edi
	rep stosl
.LVL74:
.L84:
	.loc 1 372 0
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	ali_hash_reset, .-ali_hash_reset
	.section	.text.unlikely.ali_hash_reset
.LCOLDE23:
	.section	.text.ali_hash_reset
.LHOTE23:
	.section	.rodata.str1.1
.LC24:
	.string	"E %s %d: ali_hash_copy_context: bad input args!\n"
.LC25:
	.string	"E %s %d: ali_hash_copy_context: bad magic!\n"
.LC26:
	.string	"E %s %d: ali_hash_copy_context: bad status(%d)\n"
	.section	.text.unlikely.ali_hash_copy_context,"ax",@progbits
.LCOLDB27:
	.section	.text.ali_hash_copy_context,"ax",@progbits
.LHOTB27:
	.globl	ali_hash_copy_context
	.type	ali_hash_copy_context, @function
ali_hash_copy_context:
.LFB7:
	.loc 1 375 0
	.cfi_startproc
.LVL75:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 375 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %eax
	.loc 1 378 0
	testl	%esi, %esi
	je	.L92
	testl	%eax, %eax
	jne	.L87
.L92:
	.loc 1 379 0
	pushl	%edx
	pushl	$379
	pushl	$__FUNCTION__.4715
	pushl	$.LC24
	call	printf
.LVL76:
	.loc 1 380 0
	addl	$16, %esp
	movl	$-65529, %eax
	jmp	.L89
.LVL77:
.L87:
	.loc 1 384 0
	cmpl	$305419896, (%esi)
	je	.L90
.LVL78:
	.loc 1 385 0
	pushl	%eax
	pushl	$385
	pushl	$__FUNCTION__.4715
	pushl	$.LC25
	call	printf
.LVL79:
	.loc 1 386 0
	addl	$16, %esp
	movl	$-65532, %eax
	jmp	.L89
.LVL80:
.L90:
	.loc 1 390 0
	cmpl	$305419896, (%eax)
	jne	.L91
	.loc 1 391 0 discriminator 1
	movl	4(%eax), %edx
	.loc 1 390 0 discriminator 1
	leal	-1(%edx), %ecx
	cmpl	$2, %ecx
	ja	.L91
	.loc 1 394 0
	pushl	%edx
	pushl	$395
	pushl	$__FUNCTION__.4715
	pushl	$.LC26
	call	printf
.LVL81:
	.loc 1 396 0
	addl	$16, %esp
	movl	$-65523, %eax
	jmp	.L89
.LVL82:
.L91:
	.loc 1 399 0
	movl	%eax, %edi
	movl	$56, %ecx
	.loc 1 400 0
	xorl	%eax, %eax
.LVL83:
	.loc 1 399 0
	rep movsl
.LVL84:
.L89:
	.loc 1 401 0
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
.LFE7:
	.size	ali_hash_copy_context, .-ali_hash_copy_context
	.section	.text.unlikely.ali_hash_copy_context
.LCOLDE27:
	.section	.text.ali_hash_copy_context
.LHOTE27:
	.section	.rodata.__FUNCTION__.4715,"a",@progbits
	.align 4
	.type	__FUNCTION__.4715, @object
	.size	__FUNCTION__.4715, 22
__FUNCTION__.4715:
	.string	"ali_hash_copy_context"
	.section	.rodata.__FUNCTION__.4708,"a",@progbits
	.align 4
	.type	__FUNCTION__.4708, @object
	.size	__FUNCTION__.4708, 15
__FUNCTION__.4708:
	.string	"ali_hash_reset"
	.section	.rodata.__FUNCTION__.4697,"a",@progbits
	.align 4
	.type	__FUNCTION__.4697, @object
	.size	__FUNCTION__.4697, 16
__FUNCTION__.4697:
	.string	"ali_hash_digest"
	.section	.rodata.__FUNCTION__.4683,"a",@progbits
	.align 4
	.type	__FUNCTION__.4683, @object
	.size	__FUNCTION__.4683, 15
__FUNCTION__.4683:
	.string	"ali_hash_final"
	.section	.rodata.__FUNCTION__.4671,"a",@progbits
	.align 4
	.type	__FUNCTION__.4671, @object
	.size	__FUNCTION__.4671, 16
__FUNCTION__.4671:
	.string	"ali_hash_update"
	.section	.rodata.__FUNCTION__.4658,"a",@progbits
	.align 4
	.type	__FUNCTION__.4658, @object
	.size	__FUNCTION__.4658, 14
__FUNCTION__.4658:
	.string	"ali_hash_init"
	.section	.rodata.__FUNCTION__.4644,"a",@progbits
	.align 4
	.type	__FUNCTION__.4644, @object
	.size	__FUNCTION__.4644, 22
__FUNCTION__.4644:
	.string	"ali_hash_get_ctx_size"
	.text
.Letext0:
	.section	.text.unlikely.ali_hash_get_ctx_size
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "./security/alicrypto/./libalicrypto/inc/ali_crypto.h"
	.file 6 "./security/alicrypto/./mbedtls/include/mbedtls/sha1.h"
	.file 7 "./security/alicrypto/./mbedtls/include/mbedtls/sha256.h"
	.file 8 "./security/alicrypto/./mbedtls/include/mbedtls/sha512.h"
	.file 9 "./security/alicrypto/./mbedtls/include/mbedtls/md5.h"
	.file 10 "./security/alicrypto/./libalicrypto/mbed/inc/mbed_crypto.h"
	.file 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x961
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF98
	.byte	0xc
	.long	.LASF99
	.long	.LASF100
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x1d
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x5b
	.long	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x3c
	.long	0x6c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0xd8
	.long	0x85
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF16
	.uleb128 0x5
	.long	.LASF33
	.byte	0x4
	.long	0x7e
	.byte	0x5
	.byte	0xc
	.long	0x146
	.uleb128 0x6
	.long	.LASF17
	.sleb128 -65536
	.uleb128 0x6
	.long	.LASF18
	.sleb128 -65535
	.uleb128 0x6
	.long	.LASF19
	.sleb128 -65534
	.uleb128 0x6
	.long	.LASF20
	.sleb128 -65533
	.uleb128 0x6
	.long	.LASF21
	.sleb128 -65532
	.uleb128 0x6
	.long	.LASF22
	.sleb128 -65531
	.uleb128 0x6
	.long	.LASF23
	.sleb128 -65530
	.uleb128 0x6
	.long	.LASF24
	.sleb128 -65529
	.uleb128 0x6
	.long	.LASF25
	.sleb128 -65528
	.uleb128 0x6
	.long	.LASF26
	.sleb128 -65527
	.uleb128 0x6
	.long	.LASF27
	.sleb128 -65526
	.uleb128 0x6
	.long	.LASF28
	.sleb128 -65525
	.uleb128 0x6
	.long	.LASF29
	.sleb128 -65524
	.uleb128 0x6
	.long	.LASF30
	.sleb128 -65523
	.uleb128 0x7
	.long	.LASF31
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0x1c
	.long	0xbf
	.uleb128 0x5
	.long	.LASF34
	.byte	0x4
	.long	0x85
	.byte	0x5
	.byte	0x3f
	.long	0x18c
	.uleb128 0x7
	.long	.LASF35
	.byte	0
	.uleb128 0x7
	.long	.LASF36
	.byte	0x1
	.uleb128 0x7
	.long	.LASF37
	.byte	0x2
	.uleb128 0x7
	.long	.LASF38
	.byte	0x3
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.uleb128 0x7
	.long	.LASF40
	.byte	0x5
	.uleb128 0x8
	.string	"MD5"
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x5
	.byte	0x47
	.long	0x151
	.uleb128 0x9
	.byte	0x4
	.long	0x85
	.byte	0x5
	.byte	0xa2
	.long	0x1bc
	.uleb128 0x7
	.long	.LASF42
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x1
	.uleb128 0x7
	.long	.LASF44
	.byte	0x2
	.uleb128 0x7
	.long	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF46
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF47
	.uleb128 0xa
	.byte	0x4
	.uleb128 0xb
	.long	0x1bc
	.uleb128 0xc
	.byte	0x5c
	.byte	0x6
	.byte	0x2e
	.long	0x1fe
	.uleb128 0xd
	.long	.LASF48
	.byte	0x6
	.byte	0x30
	.long	0x1fe
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x6
	.byte	0x31
	.long	0x20e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.byte	0x32
	.long	0x21e
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.long	0x97
	.long	0x20e
	.uleb128 0xf
	.long	0x1c3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	0x97
	.long	0x21e
	.uleb128 0xf
	.long	0x1c3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x37
	.long	0x22e
	.uleb128 0xf
	.long	0x1c3
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.long	.LASF51
	.byte	0x6
	.byte	0x34
	.long	0x1d1
	.uleb128 0xc
	.byte	0x6c
	.byte	0x7
	.byte	0x2e
	.long	0x272
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.byte	0x30
	.long	0x1fe
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.byte	0x31
	.long	0x272
	.byte	0x8
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.byte	0x32
	.long	0x21e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.byte	0x33
	.long	0x7e
	.byte	0x68
	.byte	0
	.uleb128 0xe
	.long	0x97
	.long	0x282
	.uleb128 0xf
	.long	0x1c3
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x7
	.byte	0x35
	.long	0x239
	.uleb128 0xc
	.byte	0xd4
	.byte	0x8
	.byte	0x2e
	.long	0x2c6
	.uleb128 0xd
	.long	.LASF48
	.byte	0x8
	.byte	0x30
	.long	0x2c6
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x8
	.byte	0x31
	.long	0x2d6
	.byte	0x10
	.uleb128 0xd
	.long	.LASF50
	.byte	0x8
	.byte	0x32
	.long	0x2e6
	.byte	0x50
	.uleb128 0xd
	.long	.LASF54
	.byte	0x8
	.byte	0x33
	.long	0x7e
	.byte	0xd0
	.byte	0
	.uleb128 0xe
	.long	0xa2
	.long	0x2d6
	.uleb128 0xf
	.long	0x1c3
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	0xa2
	.long	0x2e6
	.uleb128 0xf
	.long	0x1c3
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x37
	.long	0x2f6
	.uleb128 0xf
	.long	0x1c3
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.long	.LASF55
	.byte	0x8
	.byte	0x35
	.long	0x28d
	.uleb128 0xc
	.byte	0x58
	.byte	0x9
	.byte	0x2e
	.long	0x32e
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x30
	.long	0x1fe
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x31
	.long	0x32e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF50
	.byte	0x9
	.byte	0x32
	.long	0x21e
	.byte	0x18
	.byte	0
	.uleb128 0xe
	.long	0x97
	.long	0x33e
	.uleb128 0xf
	.long	0x1c3
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF56
	.byte	0x9
	.byte	0x34
	.long	0x301
	.uleb128 0x10
	.byte	0xd4
	.byte	0xa
	.byte	0x47
	.long	0x389
	.uleb128 0x11
	.long	.LASF57
	.byte	0xa
	.byte	0x48
	.long	0x389
	.uleb128 0x11
	.long	.LASF58
	.byte	0xa
	.byte	0x49
	.long	0x33e
	.uleb128 0x11
	.long	.LASF59
	.byte	0xa
	.byte	0x4a
	.long	0x22e
	.uleb128 0x11
	.long	.LASF60
	.byte	0xa
	.byte	0x4b
	.long	0x282
	.uleb128 0x11
	.long	.LASF61
	.byte	0xa
	.byte	0x4c
	.long	0x2f6
	.byte	0
	.uleb128 0xe
	.long	0x8c
	.long	0x399
	.uleb128 0xf
	.long	0x1c3
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF101
	.byte	0xe0
	.byte	0xa
	.byte	0x42
	.long	0x3d0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x43
	.long	0x97
	.byte	0
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x44
	.long	0x97
	.byte	0x4
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x45
	.long	0x18c
	.byte	0x8
	.uleb128 0x13
	.long	0x349
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	.LASF65
	.byte	0xa
	.byte	0x4e
	.long	0x399
	.uleb128 0x14
	.long	.LASF67
	.byte	0x1
	.byte	0x8
	.long	0x146
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x432
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x8
	.long	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x8
	.long	0x432
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF70
	.long	0x448
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4644
	.uleb128 0x17
	.long	.LVL1
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL2
	.long	0x8ab
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.long	0xad
	.uleb128 0xe
	.long	0x1cc
	.long	0x448
	.uleb128 0xf
	.long	0x1c3
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.long	0x438
	.uleb128 0x14
	.long	.LASF68
	.byte	0x1
	.byte	0x22
	.long	0x146
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fb
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x22
	.long	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF69
	.byte	0x1
	.byte	0x22
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0x24
	.long	0x4fb
	.long	.LLST0
	.uleb128 0x16
	.long	.LASF70
	.long	0x511
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4658
	.uleb128 0x17
	.long	.LVL4
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL6
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL7
	.long	0x8b6
	.uleb128 0x17
	.long	.LVL8
	.long	0x8c1
	.uleb128 0x17
	.long	.LVL9
	.long	0x8cc
	.uleb128 0x17
	.long	.LVL10
	.long	0x8d7
	.uleb128 0x17
	.long	.LVL11
	.long	0x8e2
	.uleb128 0x17
	.long	.LVL12
	.long	0x8e2
	.uleb128 0x17
	.long	.LVL13
	.long	0x8ed
	.uleb128 0x17
	.long	.LVL14
	.long	0x8ab
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.long	0x3d0
	.uleb128 0xe
	.long	0x1cc
	.long	0x511
	.uleb128 0xf
	.long	0x1c3
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.long	0x501
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0x6c
	.long	0x146
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ba
	.uleb128 0x1a
	.string	"src"
	.byte	0x1
	.byte	0x6c
	.long	0x5ba
	.long	.LLST1
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.byte	0x6c
	.long	0xad
	.long	.LLST2
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.byte	0x6c
	.long	0x1ca
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0x6e
	.long	0x4fb
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF70
	.long	0x5d5
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4671
	.uleb128 0x17
	.long	.LVL17
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL20
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL22
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL24
	.long	0x8f8
	.uleb128 0x17
	.long	.LVL26
	.long	0x903
	.uleb128 0x17
	.long	.LVL28
	.long	0x90e
	.uleb128 0x17
	.long	.LVL30
	.long	0x8ab
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.long	0x5c0
	.uleb128 0xb
	.long	0x8c
	.uleb128 0xe
	.long	0x1cc
	.long	0x5d5
	.uleb128 0xf
	.long	0x1c3
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x5c5
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0xbd
	.long	0x146
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x68a
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.byte	0xbd
	.long	0x68a
	.long	.LLST5
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.byte	0xbd
	.long	0x1ca
	.long	.LLST6
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0xbf
	.long	0x4fb
	.long	.LLST7
	.uleb128 0x16
	.long	.LASF70
	.long	0x6a0
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4683
	.uleb128 0x17
	.long	.LVL33
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL36
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL38
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL40
	.long	0x919
	.uleb128 0x17
	.long	.LVL41
	.long	0x924
	.uleb128 0x17
	.long	.LVL43
	.long	0x92f
	.uleb128 0x17
	.long	.LVL44
	.long	0x93a
	.uleb128 0x17
	.long	.LVL46
	.long	0x945
	.uleb128 0x17
	.long	.LVL47
	.long	0x950
	.uleb128 0x17
	.long	.LVL49
	.long	0x8ab
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.long	0x8c
	.uleb128 0xe
	.long	0x1cc
	.long	0x6a0
	.uleb128 0xf
	.long	0x1c3
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.long	0x690
	.uleb128 0x1c
	.long	.LASF75
	.byte	0x1
	.value	0x10c
	.long	0x146
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c6
	.uleb128 0x1d
	.long	.LASF64
	.byte	0x1
	.value	0x10c
	.long	0x18c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"src"
	.byte	0x1
	.value	0x10d
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.value	0x10d
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x1
	.value	0x10d
	.long	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.value	0x10f
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x16
	.long	.LASF70
	.long	0x7c6
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4697
	.uleb128 0x17
	.long	.LVL52
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL53
	.long	0x8b6
	.uleb128 0x17
	.long	.LVL54
	.long	0x8c1
	.uleb128 0x17
	.long	.LVL55
	.long	0x8f8
	.uleb128 0x17
	.long	.LVL56
	.long	0x919
	.uleb128 0x17
	.long	.LVL57
	.long	0x924
	.uleb128 0x17
	.long	.LVL58
	.long	0x8cc
	.uleb128 0x17
	.long	.LVL59
	.long	0x8d7
	.uleb128 0x17
	.long	.LVL60
	.long	0x903
	.uleb128 0x17
	.long	.LVL61
	.long	0x92f
	.uleb128 0x17
	.long	.LVL62
	.long	0x93a
	.uleb128 0x17
	.long	.LVL63
	.long	0x8e2
	.uleb128 0x17
	.long	.LVL64
	.long	0x8e2
	.uleb128 0x17
	.long	.LVL65
	.long	0x8ed
	.uleb128 0x17
	.long	.LVL66
	.long	0x90e
	.uleb128 0x17
	.long	.LVL67
	.long	0x945
	.uleb128 0x17
	.long	.LVL68
	.long	0x950
	.uleb128 0x17
	.long	.LVL69
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL70
	.long	0x95b
	.byte	0
	.uleb128 0xb
	.long	0x5c5
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x1
	.value	0x163
	.long	0x146
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x81d
	.uleb128 0x1d
	.long	.LASF69
	.byte	0x1
	.value	0x163
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF72
	.byte	0x1
	.value	0x165
	.long	0x4fb
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF70
	.long	0x81d
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4708
	.uleb128 0x17
	.long	.LVL72
	.long	0x8ab
	.byte	0
	.uleb128 0xb
	.long	0x690
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.value	0x176
	.long	0x146
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a6
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.value	0x176
	.long	0x1ca
	.long	.LLST9
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x1
	.value	0x176
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.value	0x178
	.long	0x4fb
	.long	.LLST10
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0x178
	.long	0x4fb
	.long	.LLST11
	.uleb128 0x16
	.long	.LASF70
	.long	0x8a6
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4715
	.uleb128 0x17
	.long	.LVL76
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL79
	.long	0x8ab
	.uleb128 0x17
	.long	.LVL81
	.long	0x8ab
	.byte	0
	.uleb128 0xb
	.long	0x438
	.uleb128 0x22
	.long	.LASF82
	.long	.LASF82
	.byte	0xb
	.byte	0xc8
	.uleb128 0x22
	.long	.LASF83
	.long	.LASF83
	.byte	0x6
	.byte	0x3b
	.uleb128 0x22
	.long	.LASF84
	.long	.LASF84
	.byte	0x6
	.byte	0x52
	.uleb128 0x22
	.long	.LASF85
	.long	.LASF85
	.byte	0x9
	.byte	0x3b
	.uleb128 0x22
	.long	.LASF86
	.long	.LASF86
	.byte	0x9
	.byte	0x52
	.uleb128 0x22
	.long	.LASF87
	.long	.LASF87
	.byte	0x7
	.byte	0x3c
	.uleb128 0x22
	.long	.LASF88
	.long	.LASF88
	.byte	0x7
	.byte	0x54
	.uleb128 0x22
	.long	.LASF89
	.long	.LASF89
	.byte	0x6
	.byte	0x5b
	.uleb128 0x22
	.long	.LASF90
	.long	.LASF90
	.byte	0x9
	.byte	0x5b
	.uleb128 0x22
	.long	.LASF91
	.long	.LASF91
	.byte	0x7
	.byte	0x5d
	.uleb128 0x22
	.long	.LASF92
	.long	.LASF92
	.byte	0x6
	.byte	0x63
	.uleb128 0x22
	.long	.LASF93
	.long	.LASF93
	.byte	0x6
	.byte	0x42
	.uleb128 0x22
	.long	.LASF94
	.long	.LASF94
	.byte	0x9
	.byte	0x63
	.uleb128 0x22
	.long	.LASF95
	.long	.LASF95
	.byte	0x9
	.byte	0x42
	.uleb128 0x22
	.long	.LASF96
	.long	.LASF96
	.byte	0x7
	.byte	0x66
	.uleb128 0x22
	.long	.LASF97
	.long	.LASF97
	.byte	0x7
	.byte	0x43
	.uleb128 0x23
	.long	.LASF102
	.long	.LASF102
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.long	.LVL5
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL16
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL18
	.long	.LVL20-1
	.value	0x1
	.byte	0x52
	.long	.LVL20-1
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	.LVL22-1
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL23
	.long	.LVL24-1
	.value	0x1
	.byte	0x52
	.long	.LVL24-1
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL25
	.long	.LVL26-1
	.value	0x1
	.byte	0x52
	.long	.LVL26-1
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL27
	.long	.LVL28-1
	.value	0x1
	.byte	0x52
	.long	.LVL28-1
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL29
	.long	.LVL30-1
	.value	0x1
	.byte	0x52
	.long	.LVL30-1
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL16
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL18
	.long	.LVL20-1
	.value	0x1
	.byte	0x51
	.long	.LVL20-1
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x51
	.long	.LVL22-1
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL23
	.long	.LVL24-1
	.value	0x1
	.byte	0x51
	.long	.LVL24-1
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL25
	.long	.LVL26-1
	.value	0x1
	.byte	0x51
	.long	.LVL26-1
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL27
	.long	.LVL28-1
	.value	0x1
	.byte	0x51
	.long	.LVL28-1
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL29
	.long	.LVL30-1
	.value	0x1
	.byte	0x51
	.long	.LVL30-1
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL19
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL29
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	.LVL31
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST4:
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL21
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL32
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL34
	.long	.LVL36-1
	.value	0x1
	.byte	0x52
	.long	.LVL36-1
	.long	.LVL37
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x52
	.long	.LVL38-1
	.long	.LVL39
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL39
	.long	.LVL40-1
	.value	0x1
	.byte	0x52
	.long	.LVL40-1
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x52
	.long	.LVL43-1
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL45
	.long	.LVL46-1
	.value	0x1
	.byte	0x52
	.long	.LVL46-1
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL48
	.long	.LVL49-1
	.value	0x1
	.byte	0x52
	.long	.LVL49-1
	.long	.LFE4
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL32
	.long	.LVL35
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL35
	.long	.LVL47
	.value	0x1
	.byte	0x53
	.long	.LVL47
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL48
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	.LVL50
	.long	.LFE4
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL37
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST9:
	.long	.LVL75
	.long	.LVL77
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL77
	.long	.LVL78
	.value	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LVL80
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL80
	.long	.LVL81-1
	.value	0x1
	.byte	0x50
	.long	.LVL81-1
	.long	.LVL82
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LFE7
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL77
	.long	.LVL84
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST11:
	.long	.LVL80
	.long	.LVL81-1
	.value	0x1
	.byte	0x50
	.long	.LVL81-1
	.long	.LVL82
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LVL84
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"hash_ctx_t"
.LASF75:
	.string	"ali_hash_digest"
.LASF76:
	.string	"ali_hash_reset"
.LASF45:
	.string	"CRYPTO_STATUS_FINISHED"
.LASF61:
	.string	"sha512_ctx"
.LASF35:
	.string	"HASH_NONE"
.LASF25:
	.string	"ALI_CRYPTO_INVALID_PACKET"
.LASF49:
	.string	"state"
.LASF14:
	.string	"uint64_t"
.LASF2:
	.string	"short int"
.LASF77:
	.string	"ali_hash_copy_context"
.LASF28:
	.string	"ALI_CRYPTO_SHORT_BUFFER"
.LASF47:
	.string	"sizetype"
.LASF57:
	.string	"sym_ctx"
.LASF33:
	.string	"_ali_crypto_result"
.LASF62:
	.string	"magic"
.LASF24:
	.string	"ALI_CRYPTO_INVALID_ARG"
.LASF85:
	.string	"mbedtls_md5_init"
.LASF6:
	.string	"__uint32_t"
.LASF34:
	.string	"_hash_type_t"
.LASF80:
	.string	"hash_ctx_src"
.LASF90:
	.string	"mbedtls_md5_update"
.LASF93:
	.string	"mbedtls_sha1_free"
.LASF55:
	.string	"mbedtls_sha512_context"
.LASF12:
	.string	"uint8_t"
.LASF86:
	.string	"mbedtls_md5_starts"
.LASF101:
	.string	"_hash_ctx_t"
.LASF81:
	.string	"hash_ctx_dst"
.LASF59:
	.string	"sha1_ctx"
.LASF78:
	.string	"dst_ctx"
.LASF39:
	.string	"SHA384"
.LASF52:
	.string	"is224"
.LASF99:
	.string	"src/hash.c"
.LASF60:
	.string	"sha256_ctx"
.LASF44:
	.string	"CRYPTO_STATUS_PROCESSING"
.LASF73:
	.string	"ali_hash_final"
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"ALI_CRYPTO_INVALID_CONTEXT"
.LASF46:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF82:
	.string	"printf"
.LASF36:
	.string	"SHA1"
.LASF70:
	.string	"__FUNCTION__"
.LASF69:
	.string	"context"
.LASF71:
	.string	"ali_hash_update"
.LASF38:
	.string	"SHA256"
.LASF95:
	.string	"mbedtls_md5_free"
.LASF88:
	.string	"mbedtls_sha256_starts"
.LASF22:
	.string	"ALI_CRYPTO_INVALID_PADDING"
.LASF79:
	.string	"src_ctx"
.LASF27:
	.string	"ALI_CRYPTO_OUTOFMEM"
.LASF16:
	.string	"long double"
.LASF84:
	.string	"mbedtls_sha1_starts"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"ALI_CRYPTO_NULL"
.LASF51:
	.string	"mbedtls_sha1_context"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF91:
	.string	"mbedtls_sha256_update"
.LASF87:
	.string	"mbedtls_sha256_init"
.LASF23:
	.string	"ALI_CRYPTO_INVALID_AUTHENTICATION"
.LASF83:
	.string	"mbedtls_sha1_init"
.LASF19:
	.string	"ALI_CRYPTO_INVALID_KEY"
.LASF67:
	.string	"ali_hash_get_ctx_size"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"SHA224"
.LASF63:
	.string	"status"
.LASF30:
	.string	"ALI_CRYPTO_ERR_STATE"
.LASF96:
	.string	"mbedtls_sha256_finish"
.LASF94:
	.string	"mbedtls_md5_finish"
.LASF26:
	.string	"ALI_CRYPTO_LENGTH_ERR"
.LASF64:
	.string	"type"
.LASF58:
	.string	"md5_ctx"
.LASF31:
	.string	"ALI_CRYPTO_SUCCESS"
.LASF15:
	.string	"size_t"
.LASF17:
	.string	"ALI_CRYPTO_ERROR"
.LASF9:
	.string	"__uint64_t"
.LASF43:
	.string	"CRYPTO_STATUS_INITIALIZED"
.LASF50:
	.string	"buffer"
.LASF89:
	.string	"mbedtls_sha1_update"
.LASF7:
	.string	"long unsigned int"
.LASF53:
	.string	"mbedtls_sha256_context"
.LASF56:
	.string	"mbedtls_md5_context"
.LASF41:
	.string	"hash_type_t"
.LASF92:
	.string	"mbedtls_sha1_finish"
.LASF66:
	.string	"size"
.LASF42:
	.string	"CRYPTO_STATUS_CLEAN"
.LASF97:
	.string	"mbedtls_sha256_free"
.LASF74:
	.string	"dgst"
.LASF98:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF72:
	.string	"hash_ctx"
.LASF18:
	.string	"ALI_CRYPTO_NOSUPPORT"
.LASF20:
	.string	"ALI_CRYPTO_INVALID_TYPE"
.LASF48:
	.string	"total"
.LASF100:
	.string	"/home/stone/Documents/pca"
.LASF54:
	.string	"is384"
.LASF102:
	.string	"__stack_chk_fail"
.LASF32:
	.string	"ali_crypto_result"
.LASF68:
	.string	"ali_hash_init"
.LASF5:
	.string	"__uint8_t"
.LASF40:
	.string	"SHA512"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

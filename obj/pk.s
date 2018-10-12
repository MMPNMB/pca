	.file	"pk.c"
	.text
.Ltext0:
	.section	.text.unlikely.mbedtls_pk_init,"ax",@progbits
.LCOLDB0:
	.section	.text.mbedtls_pk_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.mbedtls_pk_init
.Ltext_cold0:
	.section	.text.mbedtls_pk_init
	.globl	mbedtls_pk_init
	.type	mbedtls_pk_init, @function
mbedtls_pk_init:
.LFB4:
	.file 1 "security/mbedtls/src/pk.c"
	.loc 1 55 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 55 0
	movl	8(%ebp), %eax
	.loc 1 56 0
	testl	%eax, %eax
	je	.L1
	.loc 1 59 0
	movl	$0, (%eax)
	.loc 1 60 0
	movl	$0, 4(%eax)
.L1:
	.loc 1 61 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	mbedtls_pk_init, .-mbedtls_pk_init
	.section	.text.unlikely.mbedtls_pk_init
.LCOLDE0:
	.section	.text.mbedtls_pk_init
.LHOTE0:
	.section	.text.unlikely.mbedtls_pk_free,"ax",@progbits
.LCOLDB1:
	.section	.text.mbedtls_pk_free,"ax",@progbits
.LHOTB1:
	.globl	mbedtls_pk_free
	.type	mbedtls_pk_free, @function
mbedtls_pk_free:
.LFB5:
	.loc 1 67 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 67 0
	movl	8(%ebp), %ebx
	.loc 1 68 0
	testl	%ebx, %ebx
	je	.L8
	.loc 1 68 0 discriminator 1
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L8
	.loc 1 71 0
	subl	$12, %esp
	pushl	4(%ebx)
	call	*40(%eax)
.LVL2:
	leal	8(%ebx), %eax
	addl	$16, %esp
.LVL3:
.L11:
.LBB4:
.LBB5:
	.loc 1 48 0
	cmpl	%eax, %ebx
	je	.L8
.LVL4:
	movb	$0, (%ebx)
	incl	%ebx
.LVL5:
	jmp	.L11
.LVL6:
.L8:
.LBE5:
.LBE4:
	.loc 1 74 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	mbedtls_pk_free, .-mbedtls_pk_free
	.section	.text.unlikely.mbedtls_pk_free
.LCOLDE1:
	.section	.text.mbedtls_pk_free
.LHOTE1:
	.section	.text.unlikely.mbedtls_pk_info_from_type,"ax",@progbits
.LCOLDB2:
	.section	.text.mbedtls_pk_info_from_type,"ax",@progbits
.LHOTB2:
	.globl	mbedtls_pk_info_from_type
	.type	mbedtls_pk_info_from_type, @function
mbedtls_pk_info_from_type:
.LFB6:
	.loc 1 80 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 98 0
	movl	$0, %edx
	movl	$mbedtls_rsa_info, %eax
	.loc 1 80 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 98 0
	cmpl	$1, 8(%ebp)
	.loc 1 100 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 98 0
	cmovne	%edx, %eax
	.loc 1 100 0
	ret
	.cfi_endproc
.LFE6:
	.size	mbedtls_pk_info_from_type, .-mbedtls_pk_info_from_type
	.section	.text.unlikely.mbedtls_pk_info_from_type
.LCOLDE2:
	.section	.text.mbedtls_pk_info_from_type
.LHOTE2:
	.section	.text.unlikely.mbedtls_pk_setup,"ax",@progbits
.LCOLDB3:
	.section	.text.mbedtls_pk_setup,"ax",@progbits
.LHOTB3:
	.globl	mbedtls_pk_setup
	.type	mbedtls_pk_setup, @function
mbedtls_pk_setup:
.LFB7:
	.loc 1 106 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 108 0
	movl	$-16000, %edx
	.loc 1 106 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 106 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 107 0
	testl	%ebx, %ebx
	je	.L23
	testl	%esi, %esi
	je	.L23
	.loc 1 107 0 discriminator 1
	cmpl	$0, (%ebx)
	jne	.L23
	.loc 1 110 0
	call	*36(%esi)
.LVL9:
	testl	%eax, %eax
	movl	%eax, 4(%ebx)
	.loc 1 111 0
	movl	$-16256, %edx
	.loc 1 110 0
	je	.L23
	.loc 1 113 0
	movl	%esi, (%ebx)
	.loc 1 115 0
	xorl	%edx, %edx
.L23:
	.loc 1 116 0
	popl	%ebx
	.cfi_restore 3
	movl	%edx, %eax
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	mbedtls_pk_setup, .-mbedtls_pk_setup
	.section	.text.unlikely.mbedtls_pk_setup
.LCOLDE3:
	.section	.text.mbedtls_pk_setup
.LHOTE3:
	.section	.text.unlikely.mbedtls_pk_can_do,"ax",@progbits
.LCOLDB4:
	.section	.text.mbedtls_pk_can_do,"ax",@progbits
.LHOTB4:
	.globl	mbedtls_pk_can_do
	.type	mbedtls_pk_can_do, @function
mbedtls_pk_can_do:
.LFB8:
	.loc 1 153 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 153 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 155 0
	testl	%eax, %eax
	je	.L29
	.loc 1 155 0 discriminator 1
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L29
	.loc 1 158 0
	movl	%edx, 8(%ebp)
.LVL11:
	movl	12(%eax), %eax
	.loc 1 159 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 158 0
	jmp	*%eax
.LVL12:
.L29:
	.cfi_restore_state
	.loc 1 159 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	mbedtls_pk_can_do, .-mbedtls_pk_can_do
	.section	.text.unlikely.mbedtls_pk_can_do
.LCOLDE4:
	.section	.text.mbedtls_pk_can_do
.LHOTE4:
	.section	.text.unlikely.mbedtls_pk_verify,"ax",@progbits
.LCOLDB5:
	.section	.text.mbedtls_pk_verify,"ax",@progbits
.LHOTB5:
	.globl	mbedtls_pk_verify
	.type	mbedtls_pk_verify, @function
mbedtls_pk_verify:
.LFB10:
	.loc 1 184 0
	.cfi_startproc
.LVL13:
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
	.loc 1 184 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %eax
	movl	24(%ebp), %edx
	movl	12(%ebp), %ebx
	movl	28(%ebp), %edi
	.loc 1 185 0
	testl	%esi, %esi
	.loc 1 184 0
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	movl	%edx, -32(%ebp)
	.loc 1 185 0
	jne	.L36
.L38:
	.loc 1 187 0
	movl	$-16000, %eax
	jmp	.L45
.L36:
	.loc 1 185 0 discriminator 1
	cmpl	$0, (%esi)
	je	.L38
.LVL14:
.LBB10:
.LBB11:
	.loc 1 168 0
	testl	%eax, %eax
	jne	.L39
.LVL15:
.LBB12:
.LBB13:
	.loc 1 171 0
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_md_info_from_type
.LVL16:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L38
	.loc 1 174 0
	subl	$12, %esp
	pushl	%eax
	call	mbedtls_md_get_size
.LVL17:
	addl	$16, %esp
	movzbl	%al, %eax
.LVL18:
.L39:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 189 0
	movl	(%esi), %ecx
	movl	16(%ecx), %ecx
	testl	%ecx, %ecx
	je	.L48
	.loc 1 192 0
	movl	%eax, 20(%ebp)
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
.LVL19:
	movl	%edi, 28(%ebp)
	movl	%ebx, 12(%ebp)
	movl	%edx, 24(%ebp)
	movl	%eax, 16(%ebp)
	movl	4(%esi), %eax
	movl	%eax, 8(%ebp)
	.loc 1 194 0
	leal	-12(%ebp), %esp
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
	.loc 1 192 0
	jmp	*%ecx
.LVL20:
.L48:
	.cfi_restore_state
	.loc 1 190 0
	movl	$-16128, %eax
.LVL21:
.L45:
	.loc 1 194 0
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
.LFE10:
	.size	mbedtls_pk_verify, .-mbedtls_pk_verify
	.section	.text.unlikely.mbedtls_pk_verify
.LCOLDE5:
	.section	.text.mbedtls_pk_verify
.LHOTE5:
	.section	.text.unlikely.mbedtls_pk_verify_ext,"ax",@progbits
.LCOLDB6:
	.section	.text.mbedtls_pk_verify_ext,"ax",@progbits
.LHOTB6:
	.globl	mbedtls_pk_verify_ext
	.type	mbedtls_pk_verify_ext, @function
mbedtls_pk_verify_ext:
.LFB11:
	.loc 1 203 0
	.cfi_startproc
.LVL22:
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
	.loc 1 203 0
	movl	20(%ebp), %eax
	movl	16(%ebp), %ebx
	movl	8(%ebp), %esi
	movl	12(%ebp), %ecx
	movl	32(%ebp), %edi
	movl	36(%ebp), %edx
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	.loc 1 204 0
	testl	%ebx, %ebx
	.loc 1 203 0
	movl	%eax, -32(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 204 0
	jne	.L50
.L52:
	.loc 1 205 0
	movl	$-16000, %eax
	jmp	.L51
.L50:
	.loc 1 204 0 discriminator 1
	cmpl	$0, (%ebx)
	movl	%edx, -44(%ebp)
	movl	%ecx, -40(%ebp)
	je	.L52
	.loc 1 207 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	call	mbedtls_pk_can_do
.LVL23:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L53
	.loc 1 210 0
	cmpl	$6, %esi
	je	.L54
	.loc 1 248 0
	movl	-40(%ebp), %ecx
	testl	%ecx, %ecx
	jne	.L52
	.loc 1 251 0
	movl	-36(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	%edi, 24(%ebp)
	movl	%ebx, 8(%ebp)
	movl	%eax, 20(%ebp)
	movl	-32(%ebp), %eax
	movl	%edx, 28(%ebp)
	movl	%eax, 16(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%ebp)
	.loc 1 252 0
	leal	-12(%ebp), %esp
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
	.loc 1 251 0
	jmp	mbedtls_pk_verify
.LVL24:
.L53:
	.cfi_restore_state
	.loc 1 208 0
	movl	$-16128, %eax
	jmp	.L51
.L54:
	.loc 1 243 0
	movl	$-14720, %eax
.L51:
	.loc 1 252 0
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
.LFE11:
	.size	mbedtls_pk_verify_ext, .-mbedtls_pk_verify_ext
	.section	.text.unlikely.mbedtls_pk_verify_ext
.LCOLDE6:
	.section	.text.mbedtls_pk_verify_ext
.LHOTE6:
	.section	.text.unlikely.mbedtls_pk_sign,"ax",@progbits
.LCOLDB7:
	.section	.text.mbedtls_pk_sign,"ax",@progbits
.LHOTB7:
	.globl	mbedtls_pk_sign
	.type	mbedtls_pk_sign, @function
mbedtls_pk_sign:
.LFB12:
	.loc 1 261 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 261 0
	movl	24(%ebp), %edx
	movl	8(%ebp), %esi
	movl	16(%ebp), %eax
	movl	32(%ebp), %edi
	movl	12(%ebp), %ebx
	movl	%edx, -32(%ebp)
	movl	28(%ebp), %edx
	.loc 1 262 0
	testl	%esi, %esi
	.loc 1 261 0
	movl	%eax, -28(%ebp)
	movl	%edi, -40(%ebp)
	movl	20(%ebp), %eax
	movl	36(%ebp), %edi
	movl	%edx, -36(%ebp)
	.loc 1 262 0
	jne	.L57
.L59:
	.loc 1 264 0
	movl	$-16000, %eax
	jmp	.L66
.L57:
	.loc 1 262 0 discriminator 1
	cmpl	$0, (%esi)
	je	.L59
.LVL26:
.LBB18:
.LBB19:
	.loc 1 168 0
	testl	%eax, %eax
	jne	.L60
.LVL27:
.LBB20:
.LBB21:
	.loc 1 171 0
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_md_info_from_type
.LVL28:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L59
	.loc 1 174 0
	subl	$12, %esp
	pushl	%eax
	call	mbedtls_md_get_size
.LVL29:
	addl	$16, %esp
	movzbl	%al, %eax
.LVL30:
.L60:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
	.loc 1 266 0
	movl	(%esi), %ecx
	movl	20(%ecx), %ecx
	testl	%ecx, %ecx
	je	.L69
	.loc 1 269 0
	movl	-40(%ebp), %edx
	movl	%edi, 36(%ebp)
	movl	%eax, 20(%ebp)
	movl	-36(%ebp), %edi
	movl	-28(%ebp), %eax
.LVL31:
	movl	%ebx, 12(%ebp)
	movl	%edx, 32(%ebp)
	movl	-32(%ebp), %edx
	movl	%edi, 28(%ebp)
	movl	%eax, 16(%ebp)
	movl	%edx, 24(%ebp)
	movl	4(%esi), %eax
	movl	%eax, 8(%ebp)
	.loc 1 271 0
	leal	-12(%ebp), %esp
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
	.loc 1 269 0
	jmp	*%ecx
.LVL32:
.L69:
	.cfi_restore_state
	.loc 1 267 0
	movl	$-16128, %eax
.LVL33:
.L66:
	.loc 1 271 0
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
.LFE12:
	.size	mbedtls_pk_sign, .-mbedtls_pk_sign
	.section	.text.unlikely.mbedtls_pk_sign
.LCOLDE7:
	.section	.text.mbedtls_pk_sign
.LHOTE7:
	.section	.text.unlikely.mbedtls_pk_decrypt,"ax",@progbits
.LCOLDB8:
	.section	.text.mbedtls_pk_decrypt,"ax",@progbits
.LHOTB8:
	.globl	mbedtls_pk_decrypt
	.type	mbedtls_pk_decrypt, @function
mbedtls_pk_decrypt:
.LFB13:
	.loc 1 280 0
	.cfi_startproc
.LVL34:
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
	.loc 1 280 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	20(%ebp), %esi
	.loc 1 281 0
	testl	%eax, %eax
	.loc 1 280 0
	movl	%ecx, -28(%ebp)
	movl	%ebx, -32(%ebp)
	movl	%esi, -36(%ebp)
	.loc 1 281 0
	je	.L73
	.loc 1 281 0 discriminator 1
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L73
	.loc 1 284 0
	movl	24(%edx), %edx
	testl	%edx, %edx
	je	.L74
	.loc 1 287 0
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.LVL35:
	.loc 1 289 0
	addl	$28, %esp
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
	.loc 1 287 0
	jmp	*%edx
.LVL36:
.L73:
	.cfi_restore_state
	.loc 1 282 0
	movl	$-16000, %eax
	jmp	.L71
.L74:
	.loc 1 285 0
	movl	$-16128, %eax
.L71:
	.loc 1 289 0
	addl	$28, %esp
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
.LFE13:
	.size	mbedtls_pk_decrypt, .-mbedtls_pk_decrypt
	.section	.text.unlikely.mbedtls_pk_decrypt
.LCOLDE8:
	.section	.text.mbedtls_pk_decrypt
.LHOTE8:
	.section	.text.unlikely.mbedtls_pk_encrypt,"ax",@progbits
.LCOLDB9:
	.section	.text.mbedtls_pk_encrypt,"ax",@progbits
.LHOTB9:
	.globl	mbedtls_pk_encrypt
	.type	mbedtls_pk_encrypt, @function
mbedtls_pk_encrypt:
.LFB14:
	.loc 1 298 0
	.cfi_startproc
.LVL37:
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
	.loc 1 298 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	20(%ebp), %esi
	.loc 1 299 0
	testl	%eax, %eax
	.loc 1 298 0
	movl	%ecx, -28(%ebp)
	movl	%ebx, -32(%ebp)
	movl	%esi, -36(%ebp)
	.loc 1 299 0
	je	.L79
	.loc 1 299 0 discriminator 1
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L79
	.loc 1 302 0
	movl	28(%edx), %edx
	testl	%edx, %edx
	je	.L80
	.loc 1 305 0
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.LVL38:
	.loc 1 307 0
	addl	$28, %esp
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
	.loc 1 305 0
	jmp	*%edx
.LVL39:
.L79:
	.cfi_restore_state
	.loc 1 300 0
	movl	$-16000, %eax
	jmp	.L77
.L80:
	.loc 1 303 0
	movl	$-16128, %eax
.L77:
	.loc 1 307 0
	addl	$28, %esp
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
.LFE14:
	.size	mbedtls_pk_encrypt, .-mbedtls_pk_encrypt
	.section	.text.unlikely.mbedtls_pk_encrypt
.LCOLDE9:
	.section	.text.mbedtls_pk_encrypt
.LHOTE9:
	.section	.text.unlikely.mbedtls_pk_check_pair,"ax",@progbits
.LCOLDB10:
	.section	.text.mbedtls_pk_check_pair,"ax",@progbits
.LHOTB10:
	.globl	mbedtls_pk_check_pair
	.type	mbedtls_pk_check_pair, @function
mbedtls_pk_check_pair:
.LFB15:
	.loc 1 313 0
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
	.loc 1 313 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	.loc 1 314 0
	testl	%edx, %edx
	je	.L89
	.loc 1 314 0 discriminator 1
	movl	(%edx), %ebx
	.loc 1 314 0 discriminator 1
	testl	%ebx, %ebx
	je	.L89
	testl	%ecx, %ecx
	je	.L89
	.loc 1 315 0
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	.L89
	.loc 1 316 0 discriminator 1
	movl	32(%eax), %esi
	.loc 1 315 0 discriminator 1
	testl	%esi, %esi
	je	.L89
	.loc 1 321 0
	cmpl	$5, (%eax)
	jne	.L84
	.loc 1 323 0
	cmpl	$1, (%ebx)
	jmp	.L94
.L84:
	.loc 1 328 0
	cmpl	%eax, %ebx
.L94:
	jne	.L91
	.loc 1 332 0
	movl	4(%ecx), %eax
	.loc 1 333 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.loc 1 332 0
	movl	%eax, 12(%ebp)
.LVL41:
	movl	4(%edx), %eax
	movl	%eax, 8(%ebp)
.LVL42:
	movl	%esi, %eax
	.loc 1 333 0
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 332 0
	jmp	*%eax
.LVL43:
.L89:
	.cfi_restore_state
	.loc 1 318 0
	movl	$-16000, %eax
	jmp	.L83
.L91:
	.loc 1 324 0
	movl	$-16128, %eax
.L83:
	.loc 1 333 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	mbedtls_pk_check_pair, .-mbedtls_pk_check_pair
	.section	.text.unlikely.mbedtls_pk_check_pair
.LCOLDE10:
	.section	.text.mbedtls_pk_check_pair
.LHOTE10:
	.section	.text.unlikely.mbedtls_pk_get_bitlen,"ax",@progbits
.LCOLDB11:
	.section	.text.mbedtls_pk_get_bitlen,"ax",@progbits
.LHOTB11:
	.globl	mbedtls_pk_get_bitlen
	.type	mbedtls_pk_get_bitlen, @function
mbedtls_pk_get_bitlen:
.LFB16:
	.loc 1 339 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 339 0
	movl	8(%ebp), %eax
	.loc 1 340 0
	testl	%eax, %eax
	je	.L96
	.loc 1 340 0 discriminator 1
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L96
	.loc 1 343 0
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.LVL45:
	movl	8(%edx), %eax
	.loc 1 344 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 343 0
	jmp	*%eax
.LVL46:
.L96:
	.cfi_restore_state
	.loc 1 344 0
	xorl	%eax, %eax
.LVL47:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	mbedtls_pk_get_bitlen, .-mbedtls_pk_get_bitlen
	.section	.text.unlikely.mbedtls_pk_get_bitlen
.LCOLDE11:
	.section	.text.mbedtls_pk_get_bitlen
.LHOTE11:
	.section	.text.unlikely.mbedtls_pk_debug,"ax",@progbits
.LCOLDB12:
	.section	.text.mbedtls_pk_debug,"ax",@progbits
.LHOTB12:
	.globl	mbedtls_pk_debug
	.type	mbedtls_pk_debug, @function
mbedtls_pk_debug:
.LFB17:
	.loc 1 350 0
	.cfi_startproc
.LVL48:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 352 0
	movl	$-16000, %eax
	.loc 1 350 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 350 0
	movl	8(%ebp), %edx
	.loc 1 351 0
	testl	%edx, %edx
	je	.L103
	.loc 1 351 0 discriminator 1
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L103
	.loc 1 354 0
	movl	44(%ecx), %ecx
	.loc 1 355 0
	movl	$-16128, %eax
	.loc 1 354 0
	testl	%ecx, %ecx
	je	.L103
	.loc 1 357 0
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	4(%edx)
	call	*%ecx
.LVL49:
	.loc 1 358 0
	addl	$16, %esp
	xorl	%eax, %eax
.L103:
	.loc 1 359 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	mbedtls_pk_debug, .-mbedtls_pk_debug
	.section	.text.unlikely.mbedtls_pk_debug
.LCOLDE12:
	.section	.text.mbedtls_pk_debug
.LHOTE12:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"invalid PK"
	.section	.text.unlikely.mbedtls_pk_get_name,"ax",@progbits
.LCOLDB14:
	.section	.text.mbedtls_pk_get_name,"ax",@progbits
.LHOTB14:
	.globl	mbedtls_pk_get_name
	.type	mbedtls_pk_get_name, @function
mbedtls_pk_get_name:
.LFB18:
	.loc 1 365 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 367 0
	movl	$.LC13, %eax
	.loc 1 365 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 365 0
	movl	8(%ebp), %edx
	.loc 1 366 0
	testl	%edx, %edx
	je	.L109
	.loc 1 366 0 discriminator 1
	movl	(%edx), %edx
	testl	%edx, %edx
	je	.L109
	.loc 1 369 0
	movl	4(%edx), %eax
.L109:
	.loc 1 370 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	mbedtls_pk_get_name, .-mbedtls_pk_get_name
	.section	.text.unlikely.mbedtls_pk_get_name
.LCOLDE14:
	.section	.text.mbedtls_pk_get_name
.LHOTE14:
	.section	.text.unlikely.mbedtls_pk_get_type,"ax",@progbits
.LCOLDB15:
	.section	.text.mbedtls_pk_get_type,"ax",@progbits
.LHOTB15:
	.globl	mbedtls_pk_get_type
	.type	mbedtls_pk_get_type, @function
mbedtls_pk_get_type:
.LFB19:
	.loc 1 376 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 378 0
	xorl	%eax, %eax
	.loc 1 376 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 376 0
	movl	8(%ebp), %edx
	.loc 1 377 0
	testl	%edx, %edx
	je	.L114
	.loc 1 377 0 discriminator 1
	movl	(%edx), %edx
	testl	%edx, %edx
	je	.L114
	.loc 1 380 0
	movl	(%edx), %eax
.L114:
	.loc 1 381 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	mbedtls_pk_get_type, .-mbedtls_pk_get_type
	.section	.text.unlikely.mbedtls_pk_get_type
.LCOLDE15:
	.section	.text.mbedtls_pk_get_type
.LHOTE15:
	.text
.Letext0:
	.section	.text.unlikely.mbedtls_pk_init
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "./security/mbedtls/include/mbedtls/md.h"
	.file 4 "./security/mbedtls/include/mbedtls/pk.h"
	.file 5 "./security/mbedtls/include/mbedtls/pk_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa35
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF88
	.byte	0xc
	.long	.LASF89
	.long	.LASF90
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
	.long	.LASF20
	.byte	0x2
	.byte	0xd8
	.long	0x64
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x5
	.byte	0x4
	.long	0x64
	.byte	0x3
	.byte	0x27
	.long	0xc6
	.uleb128 0x6
	.long	.LASF10
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.uleb128 0x6
	.long	.LASF16
	.byte	0x6
	.uleb128 0x6
	.long	.LASF17
	.byte	0x7
	.uleb128 0x6
	.long	.LASF18
	.byte	0x8
	.uleb128 0x6
	.long	.LASF19
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x3
	.byte	0x32
	.long	0x7d
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x3d
	.long	0xdc
	.uleb128 0x7
	.long	.LASF22
	.uleb128 0x8
	.byte	0x4
	.long	0xe7
	.uleb128 0x9
	.long	0xd1
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF24
	.uleb128 0x8
	.byte	0x4
	.long	0x2c
	.uleb128 0x8
	.byte	0x4
	.long	0x108
	.uleb128 0x9
	.long	0xee
	.uleb128 0x5
	.byte	0x4
	.long	0x64
	.byte	0x4
	.byte	0x4e
	.long	0x144
	.uleb128 0x6
	.long	.LASF25
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.uleb128 0x6
	.long	.LASF28
	.byte	0x3
	.uleb128 0x6
	.long	.LASF29
	.byte	0x4
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x56
	.long	0x10d
	.uleb128 0x5
	.byte	0x4
	.long	0x64
	.byte	0x4
	.byte	0x67
	.long	0x16e
	.uleb128 0x6
	.long	.LASF33
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x1
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF36
	.byte	0x4
	.byte	0x6b
	.long	0x14f
	.uleb128 0xb
	.byte	0xc
	.byte	0x4
	.byte	0x70
	.long	0x1a6
	.uleb128 0xc
	.long	.LASF37
	.byte	0x4
	.byte	0x72
	.long	0x16e
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x4
	.byte	0x73
	.long	0x102
	.byte	0x4
	.uleb128 0xc
	.long	.LASF39
	.byte	0x4
	.byte	0x74
	.long	0xec
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x4
	.byte	0x75
	.long	0x179
	.uleb128 0x4
	.long	.LASF41
	.byte	0x4
	.byte	0x7d
	.long	0x1bc
	.uleb128 0xd
	.long	.LASF41
	.byte	0x30
	.byte	0x5
	.byte	0x23
	.long	0x259
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x26
	.long	0x144
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x29
	.long	0x102
	.byte	0x4
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0x2c
	.long	0x2a6
	.byte	0x8
	.uleb128 0xc
	.long	.LASF43
	.byte	0x5
	.byte	0x2f
	.long	0x2bb
	.byte	0xc
	.uleb128 0xc
	.long	.LASF44
	.byte	0x5
	.byte	0x32
	.long	0x2f4
	.byte	0x10
	.uleb128 0xc
	.long	.LASF45
	.byte	0x5
	.byte	0x37
	.long	0x351
	.byte	0x14
	.uleb128 0xc
	.long	.LASF46
	.byte	0x5
	.byte	0x3e
	.long	0x389
	.byte	0x18
	.uleb128 0xc
	.long	.LASF47
	.byte	0x5
	.byte	0x44
	.long	0x389
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF48
	.byte	0x5
	.byte	0x4a
	.long	0x3a3
	.byte	0x20
	.uleb128 0xc
	.long	.LASF49
	.byte	0x5
	.byte	0x4d
	.long	0x3ae
	.byte	0x24
	.uleb128 0xc
	.long	.LASF50
	.byte	0x5
	.byte	0x50
	.long	0x3bf
	.byte	0x28
	.uleb128 0xc
	.long	.LASF51
	.byte	0x5
	.byte	0x53
	.long	0x3db
	.byte	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0x82
	.long	0x27a
	.uleb128 0xc
	.long	.LASF52
	.byte	0x4
	.byte	0x84
	.long	0x27a
	.byte	0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x4
	.byte	0x85
	.long	0xec
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x280
	.uleb128 0x9
	.long	0x1b1
	.uleb128 0x4
	.long	.LASF54
	.byte	0x4
	.byte	0x86
	.long	0x259
	.uleb128 0xe
	.long	0x6b
	.long	0x29f
	.uleb128 0xf
	.long	0x29f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2a5
	.uleb128 0x10
	.uleb128 0x8
	.byte	0x4
	.long	0x290
	.uleb128 0xe
	.long	0x5d
	.long	0x2bb
	.uleb128 0xf
	.long	0x144
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2ac
	.uleb128 0xe
	.long	0x5d
	.long	0x2e9
	.uleb128 0xf
	.long	0xec
	.uleb128 0xf
	.long	0xc6
	.uleb128 0xf
	.long	0x2e9
	.uleb128 0xf
	.long	0x6b
	.uleb128 0xf
	.long	0x2e9
	.uleb128 0xf
	.long	0x6b
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2ef
	.uleb128 0x9
	.long	0x2c
	.uleb128 0x8
	.byte	0x4
	.long	0x2c1
	.uleb128 0xe
	.long	0x5d
	.long	0x32c
	.uleb128 0xf
	.long	0xec
	.uleb128 0xf
	.long	0xc6
	.uleb128 0xf
	.long	0x2e9
	.uleb128 0xf
	.long	0x6b
	.uleb128 0xf
	.long	0xfc
	.uleb128 0xf
	.long	0x32c
	.uleb128 0xf
	.long	0x332
	.uleb128 0xf
	.long	0xec
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x6b
	.uleb128 0x8
	.byte	0x4
	.long	0x338
	.uleb128 0xe
	.long	0x5d
	.long	0x351
	.uleb128 0xf
	.long	0xec
	.uleb128 0xf
	.long	0xfc
	.uleb128 0xf
	.long	0x6b
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2fa
	.uleb128 0xe
	.long	0x5d
	.long	0x389
	.uleb128 0xf
	.long	0xec
	.uleb128 0xf
	.long	0x2e9
	.uleb128 0xf
	.long	0x6b
	.uleb128 0xf
	.long	0xfc
	.uleb128 0xf
	.long	0x32c
	.uleb128 0xf
	.long	0x6b
	.uleb128 0xf
	.long	0x332
	.uleb128 0xf
	.long	0xec
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x357
	.uleb128 0xe
	.long	0x5d
	.long	0x3a3
	.uleb128 0xf
	.long	0x29f
	.uleb128 0xf
	.long	0x29f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x38f
	.uleb128 0x11
	.long	0xec
	.uleb128 0x8
	.byte	0x4
	.long	0x3a9
	.uleb128 0x12
	.long	0x3bf
	.uleb128 0xf
	.long	0xec
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3b4
	.uleb128 0x12
	.long	0x3d5
	.uleb128 0xf
	.long	0x29f
	.uleb128 0xf
	.long	0x3d5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x1a6
	.uleb128 0x8
	.byte	0x4
	.long	0x3c5
	.uleb128 0x13
	.long	.LASF91
	.byte	0x1
	.byte	0xa4
	.long	0x5d
	.byte	0x3
	.long	0x413
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.byte	0xa4
	.long	0xc6
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.byte	0xa4
	.long	0x32c
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.byte	0xa6
	.long	0xe1
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x43b
	.uleb128 0x17
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.long	0xec
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x2f
	.long	0x6b
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x30
	.long	0x43b
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x441
	.uleb128 0x19
	.long	0x2c
	.uleb128 0x1a
	.long	.LASF58
	.byte	0x1
	.byte	0x36
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x46a
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0x36
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x285
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.byte	0x42
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c9
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0x42
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	0x413
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x49
	.uleb128 0x1e
	.long	0x428
	.long	.LLST0
	.uleb128 0x1e
	.long	0x41f
	.long	.LLST1
	.uleb128 0x1f
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x20
	.long	0x431
	.long	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF61
	.byte	0x1
	.byte	0x4f
	.long	0x27a
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f1
	.uleb128 0x22
	.long	.LASF60
	.byte	0x1
	.byte	0x4f
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	.LASF62
	.byte	0x1
	.byte	0x69
	.long	0x5d
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x527
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0x69
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0x69
	.long	0x27a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.long	.LASF64
	.byte	0x1
	.byte	0x98
	.long	0x5d
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x56d
	.uleb128 0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x98
	.long	0x56d
	.long	.LLST3
	.uleb128 0x25
	.long	.LASF37
	.byte	0x1
	.byte	0x98
	.long	0x144
	.long	.LLST4
	.uleb128 0x26
	.long	.LVL12
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x573
	.uleb128 0x9
	.long	0x285
	.uleb128 0x28
	.long	.LASF65
	.byte	0x1
	.byte	0xb5
	.long	0x5d
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x659
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0xb5
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.byte	0xb5
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF66
	.byte	0x1
	.byte	0xb6
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.byte	0xb6
	.long	0x6b
	.long	.LLST5
	.uleb128 0x1b
	.string	"sig"
	.byte	0x1
	.byte	0xb7
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	.LASF67
	.byte	0x1
	.byte	0xb7
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1d
	.long	0x3e1
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0xba
	.uleb128 0x1e
	.long	0x3fc
	.long	.LLST6
	.uleb128 0x1e
	.long	0x3f1
	.long	.LLST7
	.uleb128 0x1f
	.long	.LBB11
	.long	.LBE11-.LBB11
	.uleb128 0x29
	.long	0x407
	.uleb128 0x1f
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x1e
	.long	0x3fc
	.long	.LLST8
	.uleb128 0x1e
	.long	0x3f1
	.long	.LLST9
	.uleb128 0x1f
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x20
	.long	0x407
	.long	.LLST10
	.uleb128 0x2a
	.long	.LVL16
	.long	0xa22
	.uleb128 0x2a
	.long	.LVL17
	.long	0xa2d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF68
	.byte	0x1
	.byte	0xc7
	.long	0x5d
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f5
	.uleb128 0x22
	.long	.LASF37
	.byte	0x1
	.byte	0xc7
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF69
	.byte	0x1
	.byte	0xc7
	.long	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0xc8
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.byte	0xc8
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.long	.LASF66
	.byte	0x1
	.byte	0xc9
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	.LASF56
	.byte	0x1
	.byte	0xc9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.string	"sig"
	.byte	0x1
	.byte	0xca
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x22
	.long	.LASF67
	.byte	0x1
	.byte	0xca
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2a
	.long	.LVL23
	.long	0x527
	.uleb128 0x2b
	.long	.LVL24
	.long	0x578
	.byte	0
	.uleb128 0x2c
	.long	.LASF70
	.byte	0x1
	.value	0x101
	.long	0x5d
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fc
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.value	0x101
	.long	0x46a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.value	0x101
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF66
	.byte	0x1
	.value	0x102
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF56
	.byte	0x1
	.value	0x102
	.long	0x6b
	.long	.LLST11
	.uleb128 0x2d
	.string	"sig"
	.byte	0x1
	.value	0x103
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF67
	.byte	0x1
	.value	0x103
	.long	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x1
	.value	0x104
	.long	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x1
	.value	0x104
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x30
	.long	0x3e1
	.long	.LBB18
	.long	.LBE18-.LBB18
	.byte	0x1
	.value	0x107
	.uleb128 0x1e
	.long	0x3fc
	.long	.LLST12
	.uleb128 0x1e
	.long	0x3f1
	.long	.LLST13
	.uleb128 0x1f
	.long	.LBB19
	.long	.LBE19-.LBB19
	.uleb128 0x29
	.long	0x407
	.uleb128 0x1f
	.long	.LBB20
	.long	.LBE20-.LBB20
	.uleb128 0x1e
	.long	0x3fc
	.long	.LLST14
	.uleb128 0x1e
	.long	0x3f1
	.long	.LLST15
	.uleb128 0x1f
	.long	.LBB21
	.long	.LBE21-.LBB21
	.uleb128 0x20
	.long	0x407
	.long	.LLST16
	.uleb128 0x2a
	.long	.LVL28
	.long	0xa22
	.uleb128 0x2a
	.long	.LVL29
	.long	0xa2d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF73
	.byte	0x1
	.value	0x114
	.long	0x5d
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x890
	.uleb128 0x31
	.string	"ctx"
	.byte	0x1
	.value	0x114
	.long	0x46a
	.long	.LLST17
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x1
	.value	0x115
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF75
	.byte	0x1
	.value	0x115
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF76
	.byte	0x1
	.value	0x116
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF77
	.byte	0x1
	.value	0x116
	.long	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF78
	.byte	0x1
	.value	0x116
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x1
	.value	0x117
	.long	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x1
	.value	0x117
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x2c
	.long	.LASF79
	.byte	0x1
	.value	0x126
	.long	0x5d
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x924
	.uleb128 0x31
	.string	"ctx"
	.byte	0x1
	.value	0x126
	.long	0x46a
	.long	.LLST18
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x1
	.value	0x127
	.long	0x2e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	.LASF75
	.byte	0x1
	.value	0x127
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.long	.LASF76
	.byte	0x1
	.value	0x128
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	.LASF77
	.byte	0x1
	.value	0x128
	.long	0x32c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF78
	.byte	0x1
	.value	0x128
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x1
	.value	0x129
	.long	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x1
	.value	0x129
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x2c
	.long	.LASF80
	.byte	0x1
	.value	0x138
	.long	0x5d
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x95f
	.uleb128 0x31
	.string	"pub"
	.byte	0x1
	.value	0x138
	.long	0x56d
	.long	.LLST19
	.uleb128 0x31
	.string	"prv"
	.byte	0x1
	.value	0x138
	.long	0x56d
	.long	.LLST20
	.byte	0
	.uleb128 0x2c
	.long	.LASF81
	.byte	0x1
	.value	0x152
	.long	0x6b
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x98a
	.uleb128 0x31
	.string	"ctx"
	.byte	0x1
	.value	0x152
	.long	0x56d
	.long	.LLST21
	.byte	0
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.value	0x15d
	.long	0x5d
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c3
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.value	0x15d
	.long	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF83
	.byte	0x1
	.value	0x15d
	.long	0x3d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x33
	.long	.LASF84
	.byte	0x1
	.value	0x16c
	.long	0x102
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ed
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.value	0x16c
	.long	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	.LASF85
	.byte	0x1
	.value	0x177
	.long	0x144
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xa17
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.value	0x177
	.long	0x56d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	.LASF93
	.byte	0x5
	.byte	0x62
	.long	0x280
	.uleb128 0x35
	.long	.LASF86
	.long	.LASF86
	.byte	0x3
	.byte	0x69
	.uleb128 0x35
	.long	.LASF87
	.long	.LASF87
	.byte	0x3
	.byte	0xb9
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.byte	0x38
	.byte	0x9f
	.long	.LVL3
	.long	.LVL6
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x53
	.long	.LVL3
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	.LVL4
	.long	.LVL5
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL12
	.long	.LFE8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL12
	.long	.LFE8
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL20-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL18
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1467
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL18
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1467
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL25
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL26
	.long	.LVL30
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1852
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL26
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL27
	.long	.LVL30
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1852
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LVL27
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL28
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL36
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST18:
	.long	.LVL37
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL39
	.long	.LFE14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL40
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x52
	.long	.LVL43
	.long	.LFE15
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST20:
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL41
	.long	.LVL43-1
	.value	0x1
	.byte	0x51
	.long	.LVL43
	.long	.LFE15
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST21:
	.long	.LVL44
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LFE16
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
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
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"mbedtls_pk_check_pair"
.LASF32:
	.string	"mbedtls_pk_type_t"
.LASF20:
	.string	"size_t"
.LASF45:
	.string	"sign_func"
.LASF36:
	.string	"mbedtls_pk_debug_type"
.LASF37:
	.string	"type"
.LASF51:
	.string	"debug_func"
.LASF7:
	.string	"long long unsigned int"
.LASF82:
	.string	"mbedtls_pk_debug"
.LASF85:
	.string	"mbedtls_pk_get_type"
.LASF79:
	.string	"mbedtls_pk_encrypt"
.LASF41:
	.string	"mbedtls_pk_info_t"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"sig_len"
.LASF71:
	.string	"f_rng"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"MBEDTLS_MD_SHA224"
.LASF84:
	.string	"mbedtls_pk_get_name"
.LASF33:
	.string	"MBEDTLS_PK_DEBUG_NONE"
.LASF60:
	.string	"pk_type"
.LASF77:
	.string	"olen"
.LASF58:
	.string	"mbedtls_pk_init"
.LASF90:
	.string	"/home/stone/Documents/pca"
.LASF69:
	.string	"options"
.LASF62:
	.string	"mbedtls_pk_setup"
.LASF64:
	.string	"mbedtls_pk_can_do"
.LASF39:
	.string	"value"
.LASF59:
	.string	"mbedtls_pk_free"
.LASF8:
	.string	"unsigned int"
.LASF68:
	.string	"mbedtls_pk_verify_ext"
.LASF5:
	.string	"long unsigned int"
.LASF91:
	.string	"pk_hashlen_helper"
.LASF38:
	.string	"name"
.LASF19:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF21:
	.string	"mbedtls_md_type_t"
.LASF3:
	.string	"short unsigned int"
.LASF35:
	.string	"MBEDTLS_PK_DEBUG_ECP"
.LASF27:
	.string	"MBEDTLS_PK_ECKEY"
.LASF93:
	.string	"mbedtls_rsa_info"
.LASF46:
	.string	"decrypt_func"
.LASF72:
	.string	"p_rng"
.LASF29:
	.string	"MBEDTLS_PK_ECDSA"
.LASF76:
	.string	"output"
.LASF57:
	.string	"md_info"
.LASF52:
	.string	"pk_info"
.LASF24:
	.string	"sizetype"
.LASF22:
	.string	"mbedtls_md_info_t"
.LASF9:
	.string	"long double"
.LASF18:
	.string	"MBEDTLS_MD_SHA512"
.LASF89:
	.string	"src/pk.c"
.LASF14:
	.string	"MBEDTLS_MD_SHA1"
.LASF87:
	.string	"mbedtls_md_get_size"
.LASF54:
	.string	"mbedtls_pk_context"
.LASF10:
	.string	"MBEDTLS_MD_NONE"
.LASF43:
	.string	"can_do"
.LASF48:
	.string	"check_pair_func"
.LASF81:
	.string	"mbedtls_pk_get_bitlen"
.LASF16:
	.string	"MBEDTLS_MD_SHA256"
.LASF73:
	.string	"mbedtls_pk_decrypt"
.LASF42:
	.string	"get_bitlen"
.LASF61:
	.string	"mbedtls_pk_info_from_type"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"MBEDTLS_PK_DEBUG_MPI"
.LASF2:
	.string	"short int"
.LASF63:
	.string	"info"
.LASF74:
	.string	"input"
.LASF53:
	.string	"pk_ctx"
.LASF44:
	.string	"verify_func"
.LASF88:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF17:
	.string	"MBEDTLS_MD_SHA384"
.LASF50:
	.string	"ctx_free_func"
.LASF28:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF47:
	.string	"encrypt_func"
.LASF23:
	.string	"char"
.LASF56:
	.string	"hash_len"
.LASF31:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF92:
	.string	"mbedtls_zeroize"
.LASF70:
	.string	"mbedtls_pk_sign"
.LASF86:
	.string	"mbedtls_md_info_from_type"
.LASF11:
	.string	"MBEDTLS_MD_MD2"
.LASF12:
	.string	"MBEDTLS_MD_MD4"
.LASF13:
	.string	"MBEDTLS_MD_MD5"
.LASF66:
	.string	"hash"
.LASF78:
	.string	"osize"
.LASF30:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF40:
	.string	"mbedtls_pk_debug_item"
.LASF25:
	.string	"MBEDTLS_PK_NONE"
.LASF75:
	.string	"ilen"
.LASF55:
	.string	"md_alg"
.LASF65:
	.string	"mbedtls_pk_verify"
.LASF26:
	.string	"MBEDTLS_PK_RSA"
.LASF49:
	.string	"ctx_alloc_func"
.LASF83:
	.string	"items"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

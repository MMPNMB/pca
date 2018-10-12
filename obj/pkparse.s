	.file	"pkparse.c"
	.text
.Ltext0:
	.section	.text.unlikely.pk_get_pk_alg,"ax",@progbits
.LCOLDB0:
	.section	.text.pk_get_pk_alg,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.pk_get_pk_alg
.Ltext_cold0:
	.section	.text.pk_get_pk_alg
	.type	pk_get_pk_alg, @function
pk_get_pk_alg:
.LFB11:
	.file 1 "security/mbedtls/src/pkparse.c"
	.loc 1 593 0
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
	movl	%eax, %esi
	subl	$44, %esp
	.loc 1 593 0
	movl	8(%ebp), %ebx
	movl	%ecx, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 597 0
	movl	$3, %ecx
.LVL2:
	movl	%ebx, %edi
	rep stosl
	.loc 1 599 0
	leal	-40(%ebp), %eax
	pushl	%ebx
	pushl	%eax
	pushl	%edx
	pushl	%esi
	call	mbedtls_asn1_get_alg
.LVL3:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 600 0
	subl	$14976, %eax
.LVL4:
	jmp	.L3
.LVL5:
.L2:
	.loc 1 604 0
	cmpl	$9, -36(%ebp)
	.loc 1 607 0
	movl	$-9728, %eax
.LVL6:
	.loc 1 604 0
	jne	.L3
	.loc 1 605 0 discriminator 1
	pushl	%eax
	pushl	$9
	pushl	$CRT_OID_PKCS1_RSA
	pushl	-32(%ebp)
	call	memcmp
.LVL7:
	addl	$16, %esp
	.loc 1 604 0 discriminator 1
	testl	%eax, %eax
	jne	.L7
.LVL8:
.LBB6:
.LBB7:
	.loc 1 620 0
	movl	(%ebx), %edx
	.loc 1 609 0
	movl	-44(%ebp), %esi
.LVL9:
	.loc 1 619 0
	cmpl	$5, %edx
	.loc 1 609 0
	movl	$1, (%esi)
	.loc 1 619 0
	je	.L10
	testl	%edx, %edx
	jne	.L8
.L10:
	.loc 1 623 0
	cmpl	$0, 4(%ebx)
	movl	$-14976, %edx
	cmovne	%edx, %eax
	jmp	.L3
.LVL10:
.L7:
.LBE7:
.LBE6:
	.loc 1 607 0
	movl	$-9728, %eax
	jmp	.L3
.LVL11:
.L8:
.LBB9:
.LBB8:
	.loc 1 623 0
	movl	$-14976, %eax
.LVL12:
.L3:
.LBE8:
.LBE9:
	.loc 1 627 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L5
	call	__stack_chk_fail
.LVL13:
.L5:
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
	.size	pk_get_pk_alg, .-pk_get_pk_alg
	.section	.text.unlikely.pk_get_pk_alg
.LCOLDE0:
	.section	.text.pk_get_pk_alg
.LHOTE0:
	.section	.text.unlikely.pk_parse_key_pkcs8_unencrypted_der,"ax",@progbits
.LCOLDB1:
	.section	.text.pk_parse_key_pkcs8_unencrypted_der,"ax",@progbits
.LHOTB1:
	.type	pk_parse_key_pkcs8_unencrypted_der, @function
pk_parse_key_pkcs8_unencrypted_der:
.LFB13:
	.loc 1 909 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 934 0
	addl	%edx, %ecx
.LVL15:
	.loc 1 909 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 934 0
	leal	-52(%ebp), %edi
	leal	-48(%ebp), %esi
	.loc 1 909 0
	subl	$60, %esp
	.loc 1 909 0
	movl	%eax, -60(%ebp)
	.loc 1 913 0
	movl	%edx, -48(%ebp)
	.loc 1 934 0
	pushl	$48
	pushl	%edi
	pushl	%ecx
	pushl	%esi
	.loc 1 909 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL16:
	.loc 1 915 0
	movl	$0, -44(%ebp)
	.loc 1 934 0
	call	mbedtls_asn1_get_tag
.LVL17:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L32
	.loc 1 940 0
	movl	-52(%ebp), %ebx
	addl	-48(%ebp), %ebx
.LVL18:
	.loc 1 942 0
	leal	-56(%ebp), %eax
.LVL19:
	pushl	%ecx
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	mbedtls_asn1_get_int
.LVL20:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L32
	.loc 1 945 0
	cmpl	$0, -56(%ebp)
	.loc 1 946 0
	movl	$-15744, %eax
.LVL21:
	.loc 1 945 0
	jne	.L18
	.loc 1 948 0
	leal	-40(%ebp), %eax
	subl	$12, %esp
	leal	-44(%ebp), %ecx
	movl	%ebx, %edx
	pushl	%eax
	movl	%esi, %eax
	call	pk_get_pk_alg
.LVL22:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L32
	.loc 1 951 0
	pushl	$4
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	call	mbedtls_asn1_get_tag
.LVL23:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L21
.LVL24:
.L32:
	.loc 1 952 0
	subl	$15616, %eax
.LVL25:
	jmp	.L18
.LVL26:
.L21:
	.loc 1 954 0
	cmpl	$0, -52(%ebp)
	.loc 1 955 0
	movl	$-15712, %eax
.LVL27:
	.loc 1 954 0
	je	.L18
	.loc 1 958 0
	subl	$12, %esp
	pushl	-44(%ebp)
	call	mbedtls_pk_info_from_type
.LVL28:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L22
	.loc 1 961 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	-60(%ebp)
	call	mbedtls_pk_setup
.LVL29:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L18
.LVL30:
.L22:
	.loc 1 987 0
	movl	$-15488, %eax
.LVL31:
.L18:
	.loc 1 990 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L23
	call	__stack_chk_fail
.LVL32:
.L23:
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
.LVL33:
	ret
	.cfi_endproc
.LFE13:
	.size	pk_parse_key_pkcs8_unencrypted_der, .-pk_parse_key_pkcs8_unencrypted_der
	.section	.text.unlikely.pk_parse_key_pkcs8_unencrypted_der
.LCOLDE1:
	.section	.text.pk_parse_key_pkcs8_unencrypted_der
.LHOTE1:
	.section	.text.unlikely.mbedtls_pk_parse_subpubkey,"ax",@progbits
.LCOLDB2:
	.section	.text.mbedtls_pk_parse_subpubkey,"ax",@progbits
.LHOTB2:
	.globl	mbedtls_pk_parse_subpubkey
	.type	mbedtls_pk_parse_subpubkey, @function
mbedtls_pk_parse_subpubkey:
.LFB12:
	.loc 1 636 0
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 643 0
	leal	-52(%ebp), %edi
	.loc 1 636 0
	subl	$60, %esp
	.loc 1 636 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %eax
	.loc 1 643 0
	pushl	$48
	pushl	%edi
	pushl	12(%ebp)
	.loc 1 640 0
	movl	$0, -48(%ebp)
	.loc 1 643 0
	pushl	%ebx
	.loc 1 636 0
	movl	%eax, -64(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 643 0
	call	mbedtls_asn1_get_tag
.LVL35:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L34
	.loc 1 646 0
	subl	$15616, %eax
.LVL36:
	jmp	.L35
.LVL37:
.L34:
	.loc 1 649 0
	movl	-52(%ebp), %esi
	addl	(%ebx), %esi
.LVL38:
	.loc 1 651 0
	leal	-40(%ebp), %eax
.LVL39:
	subl	$12, %esp
	leal	-48(%ebp), %ecx
	pushl	%eax
	movl	%ebx, %eax
	movl	%esi, %edx
	call	pk_get_pk_alg
.LVL40:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L35
	.loc 1 654 0
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	mbedtls_asn1_get_bitstring_null
.LVL41:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L36
	.loc 1 655 0
	subl	$15104, %eax
.LVL42:
	jmp	.L35
.LVL43:
.L36:
	.loc 1 657 0
	movl	-52(%ebp), %edx
	addl	(%ebx), %edx
	.loc 1 658 0
	movl	$-15206, %eax
.LVL44:
	.loc 1 657 0
	cmpl	%edx, %esi
	jne	.L35
	.loc 1 661 0
	subl	$12, %esp
	pushl	-48(%ebp)
	call	mbedtls_pk_info_from_type
.LVL45:
	movl	%eax, %edx
.LVL46:
	addl	$16, %esp
	.loc 1 662 0
	movl	$-15488, %eax
.LVL47:
	.loc 1 661 0
	testl	%edx, %edx
	je	.L35
	.loc 1 664 0
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	-64(%ebp)
	call	mbedtls_pk_setup
.LVL48:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L35
	.loc 1 668 0
	cmpl	$1, -48(%ebp)
	.loc 1 681 0
	movl	$-15488, %eax
.LVL49:
	.loc 1 668 0
	jne	.L37
	movl	-64(%ebp), %eax
.LBB12:
.LBB13:
	.loc 1 528 0
	leal	-44(%ebp), %edx
	movl	%edx, -60(%ebp)
	movl	4(%eax), %edi
.LVL50:
	pushl	$48
	pushl	%edx
	pushl	%esi
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL51:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-60(%ebp), %edx
	je	.L38
.LVL52:
.LBE13:
.LBE12:
	.loc 1 683 0
	subl	$15104, %eax
.LVL53:
	je	.L50
	jmp	.L37
.LVL54:
.L38:
.LBB15:
.LBB14:
	.loc 1 532 0
	movl	-44(%ebp), %eax
.LVL55:
	addl	(%ebx), %eax
	cmpl	%eax, %esi
	jne	.L48
	.loc 1 537 0
	pushl	$2
	pushl	%edx
	pushl	%esi
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL56:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L37
	.loc 1 540 0
	movl	(%ebx), %eax
.LVL57:
	.loc 1 541 0
	movl	-44(%ebp), %edx
.LVL58:
	.loc 1 542 0
	leal	(%eax,%edx), %ecx
	.loc 1 540 0
	movl	%eax, -60(%ebp)
	.loc 1 542 0
	movl	%ecx, (%ebx)
.LVL59:
.L40:
	movl	%edx, %ecx
	subl	-60(%ebp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -68(%ebp)
.LVL60:
	.loc 1 544 0
	movl	-60(%ebp), %ecx
.LVL61:
	cmpb	$0, (%ecx)
	jne	.L53
.LVL62:
	.loc 1 545 0
	incl	-60(%ebp)
.LVL63:
	jmp	.L40
.LVL64:
.L53:
	.loc 1 549 0
	leal	-44(%ebp), %eax
	pushl	$2
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	call	mbedtls_asn1_get_tag
.LVL65:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L37
	.loc 1 552 0
	movl	(%ebx), %eax
.LVL66:
	.loc 1 553 0
	movl	-44(%ebp), %edx
.LVL67:
	.loc 1 554 0
	leal	(%eax,%edx), %ecx
	movl	%ecx, (%ebx)
	.loc 1 556 0
	movl	-68(%ebp), %ecx
	.loc 1 557 0
	movl	%edx, 4(%edi)
	.loc 1 558 0
	movl	-60(%ebp), %edx
.LVL68:
	.loc 1 559 0
	movl	%eax, 12(%edi)
	.loc 1 556 0
	movl	%ecx, (%edi)
	.loc 1 558 0
	movl	%edx, 8(%edi)
	jmp	.L50
.LVL69:
.L48:
	.loc 1 533 0
	movl	$-15206, %eax
	jmp	.L37
.LVL70:
.L50:
.LBE14:
.LBE15:
	.loc 1 683 0 discriminator 1
	cmpl	(%ebx), %esi
	.loc 1 684 0 discriminator 1
	movl	$-15206, %eax
	.loc 1 683 0 discriminator 1
	jne	.L37
	xorl	%eax, %eax
.LVL71:
.L35:
	.loc 1 691 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L42
	call	__stack_chk_fail
.LVL72:
.L37:
	.loc 1 688 0
	subl	$12, %esp
	pushl	-64(%ebp)
	movl	%eax, -60(%ebp)
.LVL73:
	call	mbedtls_pk_free
.LVL74:
	addl	$16, %esp
	movl	-60(%ebp), %eax
	jmp	.L35
.LVL75:
.L42:
	.loc 1 691 0
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
	.size	mbedtls_pk_parse_subpubkey, .-mbedtls_pk_parse_subpubkey
	.section	.text.unlikely.mbedtls_pk_parse_subpubkey
.LCOLDE2:
	.section	.text.mbedtls_pk_parse_subpubkey
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"-----END PRIVATE KEY-----"
.LC4:
	.string	"-----BEGIN PRIVATE KEY-----"
	.section	.text.unlikely.mbedtls_pk_parse_key,"ax",@progbits
.LCOLDB5:
	.section	.text.mbedtls_pk_parse_key,"ax",@progbits
.LHOTB5:
	.globl	mbedtls_pk_parse_key
	.type	mbedtls_pk_parse_key, @function
mbedtls_pk_parse_key:
.LFB14:
	.loc 1 1121 0
	.cfi_startproc
.LVL76:
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
	.loc 1 1129 0
	leal	-40(%ebp), %edi
	.loc 1 1121 0
	subl	$56, %esp
	.loc 1 1121 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 1129 0
	pushl	%edi
	.loc 1 1121 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1129 0
	call	mbedtls_pem_init
.LVL77:
	.loc 1 1203 0
	addl	$16, %esp
	cmpl	$0, 16(%ebp)
	jne	.L55
.L58:
.LVL78:
	.loc 1 1276 0
	movl	16(%ebp), %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	pk_parse_key_pkcs8_unencrypted_der
.LVL79:
	movl	%eax, %edx
.LVL80:
	.loc 1 1277 0
	xorl	%eax, %eax
.LVL81:
	.loc 1 1276 0
	testl	%edx, %edx
	je	.L56
	.loc 1 1279 0
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_pk_free
.LVL82:
	.loc 1 1309 0
	addl	$16, %esp
	movl	$-15616, %eax
	jmp	.L56
.L55:
	.loc 1 1203 0 discriminator 1
	movl	16(%ebp), %eax
	cmpb	$0, -1(%esi,%eax)
	jne	.L58
	.loc 1 1206 0
	pushl	%eax
	leal	-44(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	%esi
	pushl	$.LC3
	pushl	$.LC4
	pushl	%edi
	call	mbedtls_pem_read_buffer
.LVL83:
	.loc 1 1210 0
	addl	$32, %esp
	testl	%eax, %eax
	jne	.L59
	.loc 1 1212 0
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%ebx, %eax
.LVL84:
	call	pk_parse_key_pkcs8_unencrypted_der
.LVL85:
	testl	%eax, %eax
	movl	%eax, %esi
.LVL86:
	je	.L60
	.loc 1 1215 0
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_pk_free
.LVL87:
	addl	$16, %esp
.L60:
	.loc 1 1218 0
	subl	$12, %esp
	pushl	%edi
	call	mbedtls_pem_free
.LVL88:
	.loc 1 1219 0
	addl	$16, %esp
	.loc 1 1212 0
	movl	%esi, %eax
	.loc 1 1219 0
	jmp	.L56
.LVL89:
.L59:
	.loc 1 1221 0
	cmpl	$-4224, %eax
	je	.L58
.LVL90:
.L56:
	.loc 1 1310 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L61
	call	__stack_chk_fail
.LVL91:
.L61:
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
.LFE14:
	.size	mbedtls_pk_parse_key, .-mbedtls_pk_parse_key
	.section	.text.unlikely.mbedtls_pk_parse_key
.LCOLDE5:
	.section	.text.mbedtls_pk_parse_key
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"-----END PUBLIC KEY-----"
.LC7:
	.string	"-----BEGIN PUBLIC KEY-----"
	.section	.text.unlikely.mbedtls_pk_parse_public_key,"ax",@progbits
.LCOLDB8:
	.section	.text.mbedtls_pk_parse_public_key,"ax",@progbits
.LHOTB8:
	.globl	mbedtls_pk_parse_public_key
	.type	mbedtls_pk_parse_public_key, @function
mbedtls_pk_parse_public_key:
.LFB15:
	.loc 1 1317 0
	.cfi_startproc
.LVL92:
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
	.loc 1 1324 0
	leal	-40(%ebp), %esi
	.loc 1 1317 0
	subl	$72, %esp
	.loc 1 1317 0
	movl	8(%ebp), %eax
	movl	16(%ebp), %ebx
	.loc 1 1324 0
	pushl	%esi
	.loc 1 1317 0
	movl	12(%ebp), %edi
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1324 0
	call	mbedtls_pem_init
.LVL93:
	.loc 1 1327 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L73
	.loc 1 1327 0 is_stmt 0 discriminator 1
	cmpb	$0, -1(%edi,%ebx)
	jne	.L73
	.loc 1 1330 0 is_stmt 1
	leal	-44(%ebp), %eax
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	%edi
	pushl	$.LC6
	pushl	$.LC7
	pushl	%esi
	call	mbedtls_pem_read_buffer
.LVL94:
	.loc 1 1335 0
	addl	$32, %esp
	testl	%eax, %eax
	jne	.L72
	.loc 1 1340 0
	movl	-40(%ebp), %edi
.LVL95:
	.loc 1 1341 0
	movl	-36(%ebp), %ebx
.LVL96:
	jmp	.L73
.LVL97:
.L72:
	.loc 1 1343 0
	cmpl	$-4224, %eax
	movl	%eax, -64(%ebp)
	je	.L73
	.loc 1 1345 0
	subl	$12, %esp
	pushl	%esi
	call	mbedtls_pem_free
.LVL98:
	.loc 1 1346 0
	addl	$16, %esp
	movl	-64(%ebp), %eax
	jmp	.L74
.LVL99:
.L73:
	.loc 1 1351 0
	pushl	%eax
	leal	-48(%ebp), %eax
	addl	%edi, %ebx
.LVL100:
	pushl	-60(%ebp)
	pushl	%ebx
	pushl	%eax
	.loc 1 1349 0
	movl	%edi, -48(%ebp)
	.loc 1 1351 0
	call	mbedtls_pk_parse_subpubkey
.LVL101:
	movl	%eax, %ebx
.LVL102:
	.loc 1 1354 0
	movl	%esi, (%esp)
	call	mbedtls_pem_free
.LVL103:
	.loc 1 1357 0
	addl	$16, %esp
	movl	%ebx, %eax
.LVL104:
.L74:
	.loc 1 1358 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L75
	call	__stack_chk_fail
.LVL105:
.L75:
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
.LFE15:
	.size	mbedtls_pk_parse_public_key, .-mbedtls_pk_parse_public_key
	.section	.text.unlikely.mbedtls_pk_parse_public_key
.LCOLDE8:
	.section	.text.mbedtls_pk_parse_public_key
.LHOTE8:
	.section	.data.CRT_OID_PKCS1_RSA,"aw",@progbits
	.align 4
	.type	CRT_OID_PKCS1_RSA, @object
	.size	CRT_OID_PKCS1_RSA, 9
CRT_OID_PKCS1_RSA:
	.byte	42
	.byte	-122
	.byte	72
	.byte	-122
	.byte	-9
	.byte	13
	.byte	1
	.byte	1
	.byte	1
	.text
.Letext0:
	.section	.text.unlikely.pk_get_pk_alg
.Letext_cold0:
	.file 2 "./security/mbedtls/include/mbedtls/rsa_alt.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "./security/mbedtls/include/mbedtls/pk.h"
	.file 5 "./security/mbedtls/include/mbedtls/asn1.h"
	.file 6 "./security/mbedtls/include/mbedtls/pem.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x896
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF61
	.byte	0xc
	.long	.LASF62
	.long	.LASF63
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
	.long	.LASF18
	.byte	0x3
	.byte	0xd8
	.long	0x64
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.uleb128 0x7
	.byte	0x18
	.byte	0x2
	.byte	0x11
	.long	0xe4
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0x13
	.long	0x6b
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x14
	.long	0x6b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0x16
	.long	0x8d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2
	.byte	0x17
	.long	0x8d
	.byte	0xc
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.byte	0x19
	.long	0x5d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x2
	.byte	0x1a
	.long	0x5d
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0x1b
	.long	0x93
	.uleb128 0x9
	.byte	0x4
	.long	0x64
	.byte	0x4
	.byte	0x4e
	.long	0x126
	.uleb128 0xa
	.long	.LASF20
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0x3
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	.LASF27
	.byte	0x4
	.byte	0x56
	.long	0xef
	.uleb128 0x4
	.long	.LASF28
	.byte	0x4
	.byte	0x7d
	.long	0x13c
	.uleb128 0xb
	.long	.LASF28
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0x82
	.long	0x162
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x84
	.long	0x162
	.byte	0
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x85
	.long	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x168
	.uleb128 0xc
	.long	0x131
	.uleb128 0x4
	.long	.LASF31
	.byte	0x4
	.byte	0x86
	.long	0x141
	.uleb128 0xd
	.long	.LASF32
	.byte	0xc
	.byte	0x5
	.byte	0x76
	.long	0x1a7
	.uleb128 0xe
	.string	"tag"
	.byte	0x5
	.byte	0x78
	.long	0x5d
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x5
	.byte	0x79
	.long	0x6b
	.byte	0x4
	.uleb128 0xe
	.string	"p"
	.byte	0x5
	.byte	0x7a
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x5
	.byte	0x7c
	.long	0x178
	.uleb128 0x6
	.byte	0x4
	.long	0x1b8
	.uleb128 0xc
	.long	0x2c
	.uleb128 0x6
	.byte	0x4
	.long	0x8d
	.uleb128 0x7
	.byte	0xc
	.byte	0x6
	.byte	0x35
	.long	0x1f0
	.uleb128 0xe
	.string	"buf"
	.byte	0x6
	.byte	0x37
	.long	0x8d
	.byte	0
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.byte	0x38
	.long	0x6b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.byte	0x39
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF35
	.byte	0x6
	.byte	0x3b
	.long	0x1c3
	.uleb128 0xf
	.long	.LASF36
	.byte	0x4
	.byte	0x8f
	.long	0x216
	.byte	0x3
	.long	0x216
	.uleb128 0x10
	.string	"pk"
	.byte	0x4
	.byte	0x8f
	.long	0x21c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xe4
	.uleb128 0xc
	.long	0x16d
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.value	0x24e
	.long	0x5d
	.byte	0x1
	.long	0x279
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.value	0x24e
	.long	0x1bd
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.value	0x24f
	.long	0x1b2
	.uleb128 0x13
	.long	.LASF38
	.byte	0x1
	.value	0x250
	.long	0x279
	.uleb128 0x13
	.long	.LASF39
	.byte	0x1
	.value	0x250
	.long	0x27f
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.value	0x252
	.long	0x5d
	.uleb128 0x15
	.long	.LASF40
	.byte	0x1
	.value	0x253
	.long	0x1a7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x126
	.uleb128 0x6
	.byte	0x4
	.long	0x1a7
	.uleb128 0x16
	.long	0x221
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x326
	.uleb128 0x17
	.long	0x232
	.long	.LLST0
	.uleb128 0x17
	.long	0x23c
	.long	.LLST1
	.uleb128 0x17
	.long	0x248
	.long	.LLST2
	.uleb128 0x18
	.long	0x254
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x260
	.long	.LLST3
	.uleb128 0x1a
	.long	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.long	0x30a
	.uleb128 0x17
	.long	0x232
	.long	.LLST4
	.uleb128 0x17
	.long	0x23c
	.long	.LLST5
	.uleb128 0x17
	.long	0x254
	.long	.LLST6
	.uleb128 0x17
	.long	0x248
	.long	.LLST7
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	0x260
	.uleb128 0x1d
	.long	0x26c
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL3
	.long	0x816
	.uleb128 0x1e
	.long	.LVL7
	.long	0x822
	.uleb128 0x1e
	.long	.LVL13
	.long	0x82d
	.byte	0
	.uleb128 0x1f
	.long	.LASF64
	.byte	0x1
	.value	0x389
	.long	0x5d
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x43f
	.uleb128 0x20
	.string	"pk"
	.byte	0x1
	.value	0x38a
	.long	0x43f
	.long	.LLST8
	.uleb128 0x20
	.string	"key"
	.byte	0x1
	.value	0x38b
	.long	0x1b2
	.long	.LLST9
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.value	0x38c
	.long	0x6b
	.long	.LLST10
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0x38e
	.long	0x5d
	.long	.LLST11
	.uleb128 0x23
	.long	.LASF42
	.byte	0x1
	.value	0x38e
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x38f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF39
	.byte	0x1
	.value	0x390
	.long	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x391
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"end"
	.byte	0x1
	.value	0x392
	.long	0x8d
	.long	.LLST12
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.value	0x393
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF29
	.byte	0x1
	.value	0x394
	.long	0x162
	.long	.LLST13
	.uleb128 0x1e
	.long	.LVL17
	.long	0x836
	.uleb128 0x1e
	.long	.LVL20
	.long	0x841
	.uleb128 0x26
	.long	.LVL22
	.long	0x221
	.long	0x41a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -44
	.byte	0
	.uleb128 0x1e
	.long	.LVL23
	.long	0x836
	.uleb128 0x1e
	.long	.LVL28
	.long	0x84c
	.uleb128 0x1e
	.long	.LVL29
	.long	0x857
	.uleb128 0x1e
	.long	.LVL32
	.long	0x82d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x16d
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.value	0x203
	.long	0x5d
	.byte	0x1
	.long	0x4c1
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.value	0x203
	.long	0x1bd
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.value	0x204
	.long	0x1b2
	.uleb128 0x12
	.string	"rsa"
	.byte	0x1
	.value	0x205
	.long	0x216
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.value	0x207
	.long	0x5d
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.value	0x208
	.long	0x6b
	.uleb128 0x15
	.long	.LASF12
	.byte	0x1
	.value	0x20a
	.long	0x5d
	.uleb128 0x15
	.long	.LASF13
	.byte	0x1
	.value	0x20b
	.long	0x5d
	.uleb128 0x15
	.long	.LASF14
	.byte	0x1
	.value	0x20c
	.long	0x8d
	.uleb128 0x15
	.long	.LASF15
	.byte	0x1
	.value	0x20d
	.long	0x8d
	.byte	0
	.uleb128 0x28
	.long	.LASF45
	.byte	0x1
	.value	0x27a
	.long	0x5d
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x630
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x27a
	.long	0x1bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"end"
	.byte	0x1
	.value	0x27a
	.long	0x1b2
	.long	.LLST14
	.uleb128 0x29
	.string	"pk"
	.byte	0x1
	.value	0x27b
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0x27d
	.long	0x5d
	.long	.LLST15
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x27e
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF44
	.byte	0x1
	.value	0x27f
	.long	0x1a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.value	0x280
	.long	0x126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF29
	.byte	0x1
	.value	0x281
	.long	0x162
	.long	.LLST16
	.uleb128 0x2a
	.long	0x445
	.long	.LBB12
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x29e
	.long	0x5d9
	.uleb128 0x17
	.long	0x46c
	.long	.LLST17
	.uleb128 0x17
	.long	0x460
	.long	.LLST18
	.uleb128 0x17
	.long	0x456
	.long	.LLST19
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x19
	.long	0x478
	.long	.LLST20
	.uleb128 0x1a
	.long	0x484
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	0x490
	.long	.LLST21
	.uleb128 0x19
	.long	0x49c
	.long	.LLST22
	.uleb128 0x19
	.long	0x4a8
	.long	.LLST23
	.uleb128 0x19
	.long	0x4b4
	.long	.LLST24
	.uleb128 0x1e
	.long	.LVL51
	.long	0x836
	.uleb128 0x1e
	.long	.LVL56
	.long	0x836
	.uleb128 0x1e
	.long	.LVL65
	.long	0x836
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL35
	.long	0x836
	.uleb128 0x26
	.long	.LVL40
	.long	0x221
	.long	0x602
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LVL41
	.long	0x862
	.uleb128 0x1e
	.long	.LVL45
	.long	0x84c
	.uleb128 0x1e
	.long	.LVL48
	.long	0x857
	.uleb128 0x1e
	.long	.LVL72
	.long	0x82d
	.uleb128 0x1e
	.long	.LVL74
	.long	0x86d
	.byte	0
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x45e
	.long	0x5d
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x73a
	.uleb128 0x29
	.string	"pk"
	.byte	0x1
	.value	0x45e
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x45f
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF41
	.byte	0x1
	.value	0x45f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"pwd"
	.byte	0x1
	.value	0x460
	.long	0x1b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.long	.LASF47
	.byte	0x1
	.value	0x460
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0x462
	.long	0x5d
	.long	.LLST25
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.value	0x463
	.long	0x162
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x466
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"pem"
	.byte	0x1
	.value	0x467
	.long	0x1f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LVL77
	.long	0x878
	.uleb128 0x26
	.long	.LVL79
	.long	0x326
	.long	0x6f8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.long	.LVL82
	.long	0x86d
	.uleb128 0x1e
	.long	.LVL83
	.long	0x883
	.uleb128 0x26
	.long	.LVL85
	.long	0x326
	.long	0x71e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL87
	.long	0x86d
	.uleb128 0x1e
	.long	.LVL88
	.long	0x88e
	.uleb128 0x1e
	.long	.LVL91
	.long	0x82d
	.byte	0
	.uleb128 0x28
	.long	.LASF48
	.byte	0x1
	.value	0x523
	.long	0x5d
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f5
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.value	0x523
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"key"
	.byte	0x1
	.value	0x524
	.long	0x1b2
	.long	.LLST26
	.uleb128 0x21
	.long	.LASF41
	.byte	0x1
	.value	0x524
	.long	0x6b
	.long	.LLST27
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0x526
	.long	0x5d
	.long	.LLST28
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x527
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x529
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"pem"
	.byte	0x1
	.value	0x52a
	.long	0x1f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LVL93
	.long	0x878
	.uleb128 0x1e
	.long	.LVL94
	.long	0x883
	.uleb128 0x1e
	.long	.LVL98
	.long	0x88e
	.uleb128 0x1e
	.long	.LVL101
	.long	0x4c1
	.uleb128 0x1e
	.long	.LVL103
	.long	0x88e
	.uleb128 0x1e
	.long	.LVL105
	.long	0x82d
	.byte	0
	.uleb128 0x2c
	.long	0x2c
	.long	0x805
	.uleb128 0x2d
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x2e
	.long	.LASF49
	.byte	0x1
	.byte	0x41
	.long	0x7f5
	.uleb128 0x5
	.byte	0x3
	.long	CRT_OID_PKCS1_RSA
	.uleb128 0x2f
	.long	.LASF50
	.long	.LASF50
	.byte	0x5
	.value	0x122
	.uleb128 0x30
	.long	.LASF51
	.long	.LASF51
	.byte	0x7
	.byte	0x1a
	.uleb128 0x31
	.long	.LASF65
	.long	.LASF65
	.uleb128 0x30
	.long	.LASF52
	.long	.LASF52
	.byte	0x5
	.byte	0xbb
	.uleb128 0x30
	.long	.LASF53
	.long	.LASF53
	.byte	0x5
	.byte	0xd7
	.uleb128 0x30
	.long	.LASF54
	.long	.LASF54
	.byte	0x4
	.byte	0xb7
	.uleb128 0x30
	.long	.LASF55
	.long	.LASF55
	.byte	0x4
	.byte	0xd1
	.uleb128 0x30
	.long	.LASF56
	.long	.LASF56
	.byte	0x5
	.byte	0xf3
	.uleb128 0x30
	.long	.LASF57
	.long	.LASF57
	.byte	0x4
	.byte	0xc1
	.uleb128 0x30
	.long	.LASF58
	.long	.LASF58
	.byte	0x6
	.byte	0x42
	.uleb128 0x30
	.long	.LASF59
	.long	.LASF59
	.byte	0x6
	.byte	0x5a
	.uleb128 0x30
	.long	.LASF60
	.long	.LASF60
	.byte	0x6
	.byte	0x64
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.long	.LVL9
	.value	0x1
	.byte	0x56
	.long	.LVL9
	.long	.LVL10
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x56
	.long	.LVL11
	.long	.LFE11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3-1
	.value	0x1
	.byte	0x52
	.long	.LVL3-1
	.long	.LFE11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x51
	.long	.LVL2
	.long	.LFE11
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5
	.value	0x5
	.byte	0x70
	.sleb128 14976
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x56
	.long	.LVL9
	.long	.LVL10
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL10
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL33
	.value	0x2
	.byte	0x75
	.sleb128 -60
	.long	.LVL33
	.long	.LFE13
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL17-1
	.value	0x1
	.byte	0x52
	.long	.LVL17-1
	.long	.LFE13
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x51
	.long	.LVL15
	.long	.LFE13
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL26
	.value	0x5
	.byte	0x70
	.sleb128 15616
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL18
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL26
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST13:
	.long	.LVL28
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL34
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL38
	.long	.LVL71
	.value	0x1
	.byte	0x56
	.long	.LVL72
	.long	.LVL75
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST15:
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL37
	.value	0x5
	.byte	0x70
	.sleb128 15616
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL41-1
	.value	0x1
	.byte	0x50
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.value	0x5
	.byte	0x70
	.sleb128 15104
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LVL53
	.value	0x5
	.byte	0x70
	.sleb128 -15104
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LVL71
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74-1
	.value	0x1
	.byte	0x50
	.long	.LVL74-1
	.long	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST16:
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LVL48-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST17:
	.long	.LVL50
	.long	.LVL52
	.value	0x1
	.byte	0x57
	.long	.LVL54
	.long	.LVL70
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST18:
	.long	.LVL50
	.long	.LVL52
	.value	0x1
	.byte	0x56
	.long	.LVL54
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST19:
	.long	.LVL50
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	.LVL54
	.long	.LVL70
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x50
	.long	.LVL65
	.long	.LVL66
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x52
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x51
	.long	.LVL61
	.long	.LVL62
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	.LVL62
	.long	.LVL63
	.value	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL64
	.long	.LVL69
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	0
	.long	0
.LLST22:
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x52
	.long	.LVL68
	.long	.LVL69
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST23:
	.long	.LVL57
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LVL63
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL63
	.long	.LVL65-1
	.value	0x1
	.byte	0x51
	.long	.LVL65-1
	.long	.LVL69
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST24:
	.long	.LVL66
	.long	.LVL69
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL78
	.long	.LVL80
	.value	0x4
	.byte	0xb
	.value	0xef80
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LVL82-1
	.value	0x1
	.byte	0x52
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	.LVL86
	.long	.LVL87-1
	.value	0x1
	.byte	0x50
	.long	.LVL87-1
	.long	.LVL89
	.value	0x1
	.byte	0x56
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL92
	.long	.LVL95
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL95
	.long	.LVL97
	.value	0x1
	.byte	0x57
	.long	.LVL97
	.long	.LVL99
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL99
	.long	.LVL104
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST27:
	.long	.LVL92
	.long	.LVL96
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL96
	.long	.LVL97
	.value	0x1
	.byte	0x53
	.long	.LVL97
	.long	.LVL99
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST28:
	.long	.LVL94
	.long	.LVL98-1
	.value	0x1
	.byte	0x50
	.long	.LVL98-1
	.long	.LVL99
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL102
	.long	.LVL103-1
	.value	0x1
	.byte	0x50
	.long	.LVL103-1
	.long	.LVL104
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB6
	.long	.LBE6
	.long	.LBB9
	.long	.LBE9
	.long	0
	.long	0
	.long	.LBB12
	.long	.LBE12
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LFB11
	.long	.LFE11
	.long	.LFB13
	.long	.LFE13
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"pk_get_rsapubkey"
.LASF26:
	.string	"MBEDTLS_PK_RSASSA_PSS"
.LASF33:
	.string	"buflen"
.LASF46:
	.string	"mbedtls_pk_parse_key"
.LASF42:
	.string	"version"
.LASF57:
	.string	"mbedtls_pk_free"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"pwdlen"
.LASF11:
	.string	"sizetype"
.LASF44:
	.string	"alg_params"
.LASF12:
	.string	"n_len"
.LASF17:
	.string	"hash_id"
.LASF55:
	.string	"mbedtls_pk_setup"
.LASF54:
	.string	"mbedtls_pk_info_from_type"
.LASF40:
	.string	"alg_oid"
.LASF64:
	.string	"pk_parse_key_pkcs8_unencrypted_der"
.LASF25:
	.string	"MBEDTLS_PK_RSA_ALT"
.LASF27:
	.string	"mbedtls_pk_type_t"
.LASF41:
	.string	"keylen"
.LASF45:
	.string	"mbedtls_pk_parse_subpubkey"
.LASF51:
	.string	"memcmp"
.LASF6:
	.string	"long long int"
.LASF53:
	.string	"mbedtls_asn1_get_int"
.LASF59:
	.string	"mbedtls_pem_read_buffer"
.LASF58:
	.string	"mbedtls_pem_init"
.LASF4:
	.string	"long int"
.LASF49:
	.string	"CRT_OID_PKCS1_RSA"
.LASF48:
	.string	"mbedtls_pk_parse_public_key"
.LASF39:
	.string	"params"
.LASF22:
	.string	"MBEDTLS_PK_ECKEY"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"long double"
.LASF36:
	.string	"mbedtls_pk_rsa"
.LASF23:
	.string	"MBEDTLS_PK_ECKEY_DH"
.LASF20:
	.string	"MBEDTLS_PK_NONE"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF52:
	.string	"mbedtls_asn1_get_tag"
.LASF8:
	.string	"unsigned int"
.LASF29:
	.string	"pk_info"
.LASF32:
	.string	"mbedtls_asn1_buf"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"MBEDTLS_PK_RSA"
.LASF10:
	.string	"char"
.LASF50:
	.string	"mbedtls_asn1_get_alg"
.LASF18:
	.string	"size_t"
.LASF30:
	.string	"pk_ctx"
.LASF63:
	.string	"/home/stone/Documents/pca"
.LASF62:
	.string	"src/pkparse.c"
.LASF38:
	.string	"pk_alg"
.LASF56:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF16:
	.string	"padding"
.LASF28:
	.string	"mbedtls_pk_info_t"
.LASF5:
	.string	"long unsigned int"
.LASF31:
	.string	"mbedtls_pk_context"
.LASF37:
	.string	"pk_get_pk_alg"
.LASF34:
	.string	"info"
.LASF61:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF15:
	.string	"rsa_e"
.LASF35:
	.string	"mbedtls_pem_context"
.LASF19:
	.string	"mbedtls_rsa_context"
.LASF24:
	.string	"MBEDTLS_PK_ECDSA"
.LASF14:
	.string	"rsa_n"
.LASF65:
	.string	"__stack_chk_fail"
.LASF60:
	.string	"mbedtls_pem_free"
.LASF13:
	.string	"e_len"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

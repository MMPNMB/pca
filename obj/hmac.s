	.file	"hmac.c"
	.text
.Ltext0:
	.section	.text.unlikely.mbedtls_hmac_starts,"ax",@progbits
.LCOLDB0:
	.section	.text.mbedtls_hmac_starts,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.mbedtls_hmac_starts
.Ltext_cold0:
	.section	.text.mbedtls_hmac_starts
	.globl	mbedtls_hmac_starts
	.type	mbedtls_hmac_starts, @function
mbedtls_hmac_starts:
.LFB1:
	.file 1 "security/alicrypto/./mbedtls/library/hmac.c"
	.loc 1 34 0
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
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 34 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 40 0
	movl	$-20736, %eax
	.loc 1 39 0
	testl	%ebx, %ebx
	je	.L2
	.loc 1 39 0 discriminator 1
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	.L2
	.loc 1 39 0 discriminator 2
	cmpl	$0, 8(%ebx)
	je	.L2
	.loc 1 42 0
	movl	16(%ebp), %eax
	cmpl	%eax, 12(%edx)
	jnb	.L3
	.loc 1 44 0
	subl	$12, %esp
	pushl	4(%ebx)
	call	*16(%edx)
.LVL1:
	.loc 1 45 0
	movl	(%ebx), %eax
	addl	$12, %esp
	pushl	16(%ebp)
	pushl	%esi
	pushl	4(%ebx)
	.loc 1 46 0
	leal	-60(%ebp), %esi
	.loc 1 45 0
	call	*20(%eax)
.LVL2:
	.loc 1 46 0
	popl	%eax
	movl	(%ebx), %eax
	popl	%edx
	pushl	%esi
	pushl	4(%ebx)
	call	*24(%eax)
.LVL3:
	.loc 1 48 0
	movl	(%ebx), %eax
	addl	$16, %esp
	movl	8(%eax), %eax
	movl	%eax, 16(%ebp)
.LVL4:
.L3:
	.loc 1 53 0
	movl	(%ebx), %eax
	.loc 1 52 0
	movl	8(%ebx), %edx
.LVL5:
	.loc 1 53 0
	movl	12(%eax), %ecx
	.loc 1 55 0
	movl	%edx, %edi
	.loc 1 53 0
	leal	(%edx,%ecx), %eax
	movl	%eax, -76(%ebp)
.LVL6:
	.loc 1 55 0
	movb	$54, %al
.LVL7:
	rep stosb
	.loc 1 56 0
	movl	(%ebx), %eax
	movl	12(%eax), %ecx
	movb	$92, %al
	rep stosb
.LVL8:
	movl	16(%ebp), %edi
	movl	%edx, %eax
	addl	%edx, %edi
	movl	%edi, -80(%ebp)
.LVL9:
.L4:
	.loc 1 58 0 discriminator 1
	cmpl	-80(%ebp), %eax
	je	.L14
	.loc 1 61 0 discriminator 3
	movl	-76(%ebp), %edi
	.loc 1 60 0 discriminator 3
	movb	(%esi), %cl
	incl	%esi
	xorb	%cl, (%eax)
	incl	-76(%ebp)
	incl	%eax
.LVL10:
	.loc 1 61 0 discriminator 3
	movb	-1(%esi), %cl
	xorb	%cl, (%edi)
.LVL11:
	jmp	.L4
.LVL12:
.L14:
	leal	-60(%ebp), %eax
.LVL13:
.LBB4:
.LBB5:
	.loc 1 30 0
	leal	-28(%ebp), %ecx
.L6:
.LVL14:
	movb	$0, (%eax)
.LVL15:
	incl	%eax
.LVL16:
	cmpl	%ecx, %eax
	jne	.L6
.LBE5:
.LBE4:
	.loc 1 66 0
	movl	(%ebx), %eax
.LVL17:
	subl	$12, %esp
	movl	%edx, -76(%ebp)
	pushl	4(%ebx)
	call	*16(%eax)
.LVL18:
	.loc 1 67 0
	movl	(%ebx), %eax
	movl	-76(%ebp), %edx
	addl	$12, %esp
	pushl	12(%eax)
	pushl	%edx
	pushl	4(%ebx)
	call	*20(%eax)
.LVL19:
	.loc 1 69 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL20:
.L2:
	.loc 1 70 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L7
	call	__stack_chk_fail
.LVL21:
.L7:
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
	.size	mbedtls_hmac_starts, .-mbedtls_hmac_starts
	.section	.text.unlikely.mbedtls_hmac_starts
.LCOLDE0:
	.section	.text.mbedtls_hmac_starts
.LHOTE0:
	.section	.text.unlikely.mbedtls_hmac_update,"ax",@progbits
.LCOLDB1:
	.section	.text.mbedtls_hmac_update,"ax",@progbits
.LHOTB1:
	.globl	mbedtls_hmac_update
	.type	mbedtls_hmac_update, @function
mbedtls_hmac_update:
.LFB2:
	.loc 1 73 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 75 0
	movl	$-20736, %eax
	.loc 1 73 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 73 0
	movl	8(%ebp), %edx
	.loc 1 74 0
	testl	%edx, %edx
	je	.L16
	.loc 1 74 0 discriminator 1
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L16
	.loc 1 74 0 discriminator 2
	cmpl	$0, 8(%edx)
	je	.L16
	.loc 1 77 0
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	4(%edx)
	call	*20(%ecx)
.LVL23:
	.loc 1 79 0
	addl	$16, %esp
	xorl	%eax, %eax
.L16:
	.loc 1 80 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	mbedtls_hmac_update, .-mbedtls_hmac_update
	.section	.text.unlikely.mbedtls_hmac_update
.LCOLDE1:
	.section	.text.mbedtls_hmac_update
.LHOTE1:
	.section	.text.unlikely.mbedtls_hmac_finish,"ax",@progbits
.LCOLDB2:
	.section	.text.mbedtls_hmac_finish,"ax",@progbits
.LHOTB2:
	.globl	mbedtls_hmac_finish
	.type	mbedtls_hmac_finish, @function
mbedtls_hmac_finish:
.LFB3:
	.loc 1 83 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 83 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 88 0
	movl	$-20736, %eax
	.loc 1 87 0
	testl	%ebx, %ebx
	je	.L22
	.loc 1 87 0 discriminator 1
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	.L22
	.loc 1 87 0 discriminator 2
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	.L22
	.loc 1 90 0
	addl	12(%ecx), %edx
	.loc 1 92 0
	leal	-60(%ebp), %edi
	pushl	%eax
	pushl	%eax
	pushl	%edi
	pushl	4(%ebx)
	.loc 1 90 0
	movl	%edx, -76(%ebp)
.LVL25:
	.loc 1 92 0
	call	*24(%ecx)
.LVL26:
	.loc 1 93 0
	movl	(%ebx), %eax
	popl	%edx
	pushl	4(%ebx)
	call	*16(%eax)
.LVL27:
	.loc 1 94 0
	movl	(%ebx), %eax
	movl	-76(%ebp), %edx
	addl	$12, %esp
	pushl	12(%eax)
	pushl	%edx
	pushl	4(%ebx)
	call	*20(%eax)
.LVL28:
	.loc 1 95 0
	movl	(%ebx), %eax
	addl	$12, %esp
	pushl	8(%eax)
	pushl	%edi
	pushl	4(%ebx)
	call	*20(%eax)
.LVL29:
	.loc 1 96 0
	popl	%ecx
	popl	%edi
	movl	(%ebx), %eax
	pushl	%esi
	pushl	4(%ebx)
	call	*24(%eax)
.LVL30:
	.loc 1 98 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL31:
.L22:
	.loc 1 99 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
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
	ret
	.cfi_endproc
.LFE3:
	.size	mbedtls_hmac_finish, .-mbedtls_hmac_finish
	.section	.text.unlikely.mbedtls_hmac_finish
.LCOLDE2:
	.section	.text.mbedtls_hmac_finish
.LHOTE2:
	.section	.text.unlikely.mbedtls_hash_hmac,"ax",@progbits
.LCOLDB3:
	.section	.text.mbedtls_hash_hmac,"ax",@progbits
.LHOTB3:
	.globl	mbedtls_hash_hmac
	.type	mbedtls_hash_hmac, @function
mbedtls_hash_hmac:
.LFB4:
	.loc 1 104 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 109 0
	movl	$-20736, %edx
	.loc 1 104 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 104 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	20(%ebp), %edi
	movl	28(%ebp), %esi
	movl	%ecx, -48(%ebp)
	.loc 1 108 0
	movl	%eax, -44(%ebp)
	.loc 1 104 0
	movl	%gs:20, %ecx
	movl	%ecx, -28(%ebp)
	xorl	%ecx, %ecx
	.loc 1 108 0
	testl	%eax, %eax
	je	.L29
	.loc 1 111 0
	leal	-40(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	mbedtls_hash_init
.LVL34:
	.loc 1 113 0
	movl	-44(%ebp), %eax
	addl	$12, %esp
	pushl	$1
	pushl	%eax
	pushl	%ebx
	call	mbedtls_hash_setup
.LVL35:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %ecx
	jne	.L29
	movl	%eax, -44(%ebp)
.LVL36:
	.loc 1 116 0
	pushl	%eax
	pushl	16(%ebp)
	pushl	%ecx
	pushl	%ebx
	call	mbedtls_hmac_starts
.LVL37:
	.loc 1 117 0
	addl	$12, %esp
	pushl	24(%ebp)
	pushl	%edi
	pushl	%ebx
	call	mbedtls_hmac_update
.LVL38:
	.loc 1 118 0
	popl	%edx
	popl	%ecx
	pushl	%esi
	pushl	%ebx
	call	mbedtls_hmac_finish
.LVL39:
	.loc 1 120 0
	movl	%ebx, (%esp)
	call	mbedtls_hash_free
.LVL40:
	.loc 1 122 0
	movl	-44(%ebp), %edx
	addl	$16, %esp
.LVL41:
.L29:
	.loc 1 123 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	movl	%edx, %eax
	je	.L30
	call	__stack_chk_fail
.LVL42:
.L30:
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
	.size	mbedtls_hash_hmac, .-mbedtls_hash_hmac
	.section	.text.unlikely.mbedtls_hash_hmac
.LCOLDE3:
	.section	.text.mbedtls_hash_hmac
.LHOTE3:
	.section	.text.unlikely.mbedtls_hmac_reset,"ax",@progbits
.LCOLDB4:
	.section	.text.mbedtls_hmac_reset,"ax",@progbits
.LHOTB4:
	.globl	mbedtls_hmac_reset
	.type	mbedtls_hmac_reset, @function
mbedtls_hmac_reset:
.LFB5:
	.loc 1 126 0
	.cfi_startproc
.LVL43:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 130 0
	movl	$-20736, %eax
	.loc 1 126 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 126 0
	movl	8(%ebp), %ebx
	.loc 1 129 0
	testl	%ebx, %ebx
	je	.L35
	.loc 1 129 0 discriminator 1
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	.L35
	.loc 1 129 0 discriminator 2
	movl	8(%ebx), %esi
	testl	%esi, %esi
	je	.L35
.LVL44:
	.loc 1 134 0
	subl	$12, %esp
	pushl	4(%ebx)
	call	*16(%edx)
.LVL45:
	.loc 1 135 0
	movl	(%ebx), %eax
	addl	$12, %esp
	pushl	12(%eax)
	pushl	%esi
	pushl	4(%ebx)
	call	*20(%eax)
.LVL46:
	.loc 1 137 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL47:
.L35:
	.loc 1 138 0
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
	.size	mbedtls_hmac_reset, .-mbedtls_hmac_reset
	.section	.text.unlikely.mbedtls_hmac_reset
.LCOLDE4:
	.section	.text.mbedtls_hmac_reset
.LHOTE4:
	.text
.Letext0:
	.section	.text.unlikely.mbedtls_hmac_starts
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "./security/alicrypto/./mbedtls/include/mbedtls/md.h"
	.file 4 "./security/alicrypto/./mbedtls/include/mbedtls/md_internal.h"
	.file 5 "./security/alicrypto/./mbedtls/include/mbedtls/hash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x569
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF56
	.byte	0xc
	.long	.LASF57
	.long	.LASF58
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
	.byte	0x30
	.byte	0x4
	.byte	0x2e
	.long	0x179
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x31
	.long	0xc6
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x34
	.long	0x1c9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x37
	.long	0x5d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x3a
	.long	0x5d
	.byte	0xc
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x3d
	.long	0x1e6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x40
	.long	0x20c
	.byte	0x14
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x43
	.long	0x228
	.byte	0x18
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x46
	.long	0x243
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x4a
	.long	0x24e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0x4d
	.long	0x1e6
	.byte	0x24
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x50
	.long	0x26b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x53
	.long	0x281
	.byte	0x2c
	.byte	0
	.uleb128 0x9
	.byte	0xc
	.byte	0x3
	.byte	0x42
	.long	0x1a6
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.byte	0x44
	.long	0x1a6
	.byte	0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x3
	.byte	0x47
	.long	0x1b1
	.byte	0x4
	.uleb128 0x8
	.long	.LASF37
	.byte	0x3
	.byte	0x4a
	.long	0x1b1
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1ac
	.uleb128 0xb
	.long	0xd1
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.long	.LASF38
	.byte	0x3
	.byte	0x4b
	.long	0x179
	.uleb128 0x4
	.long	.LASF39
	.byte	0x5
	.byte	0x25
	.long	0xdc
	.uleb128 0xa
	.byte	0x4
	.long	0x1d6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF40
	.uleb128 0xb
	.long	0x1cf
	.uleb128 0xd
	.long	0x1e6
	.uleb128 0xe
	.long	0x1b1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1db
	.uleb128 0xd
	.long	0x201
	.uleb128 0xe
	.long	0x1b1
	.uleb128 0xe
	.long	0x201
	.uleb128 0xe
	.long	0x6b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x207
	.uleb128 0xb
	.long	0x2c
	.uleb128 0xa
	.byte	0x4
	.long	0x1ec
	.uleb128 0xd
	.long	0x222
	.uleb128 0xe
	.long	0x1b1
	.uleb128 0xe
	.long	0x222
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x2c
	.uleb128 0xa
	.byte	0x4
	.long	0x212
	.uleb128 0xd
	.long	0x243
	.uleb128 0xe
	.long	0x201
	.uleb128 0xe
	.long	0x6b
	.uleb128 0xe
	.long	0x222
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x22e
	.uleb128 0xf
	.long	0x1b1
	.uleb128 0xa
	.byte	0x4
	.long	0x249
	.uleb128 0xd
	.long	0x264
	.uleb128 0xe
	.long	0x1b1
	.uleb128 0xe
	.long	0x264
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x26a
	.uleb128 0x10
	.uleb128 0xa
	.byte	0x4
	.long	0x254
	.uleb128 0xd
	.long	0x281
	.uleb128 0xe
	.long	0x1b1
	.uleb128 0xe
	.long	0x201
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x271
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF41
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x2b6
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.byte	0x1d
	.long	0x1b1
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.long	0x6b
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.byte	0x1e
	.long	0x2b6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x2bc
	.uleb128 0x14
	.long	0x2c
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.byte	0x21
	.long	0x5d
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x37f
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x21
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.byte	0x21
	.long	0x201
	.long	.LLST0
	.uleb128 0x18
	.long	.LASF42
	.byte	0x1
	.byte	0x21
	.long	0x6b
	.long	.LLST1
	.uleb128 0x19
	.string	"sum"
	.byte	0x1
	.byte	0x23
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF43
	.byte	0x1
	.byte	0x24
	.long	0x222
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x1
	.byte	0x24
	.long	0x222
	.long	.LLST3
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x25
	.long	0x6b
	.long	.LLST4
	.uleb128 0x1c
	.long	0x28e
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x40
	.long	0x375
	.uleb128 0x1d
	.long	0x2a3
	.long	.LLST5
	.uleb128 0x1e
	.long	0x29a
	.uleb128 0x1f
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x20
	.long	0x2ac
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LVL21
	.long	0x542
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1b3
	.uleb128 0x22
	.long	0x2c
	.long	0x395
	.uleb128 0x23
	.long	0x287
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.long	.LASF46
	.byte	0x1
	.byte	0x48
	.long	0x5d
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d9
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x48
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF47
	.byte	0x1
	.byte	0x48
	.long	0x201
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF48
	.byte	0x1
	.byte	0x48
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.byte	0x52
	.long	0x5d
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x436
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x52
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF50
	.byte	0x1
	.byte	0x52
	.long	0x222
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"tmp"
	.byte	0x1
	.byte	0x54
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x1
	.byte	0x55
	.long	0x222
	.long	.LLST7
	.uleb128 0x21
	.long	.LVL32
	.long	0x542
	.byte	0
	.uleb128 0x25
	.long	.LASF51
	.byte	0x1
	.byte	0x65
	.long	0x5d
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x500
	.uleb128 0x24
	.long	.LASF35
	.byte	0x1
	.byte	0x65
	.long	0x500
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.string	"key"
	.byte	0x1
	.byte	0x65
	.long	0x201
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF42
	.byte	0x1
	.byte	0x65
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF47
	.byte	0x1
	.byte	0x66
	.long	0x201
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.long	.LASF48
	.byte	0x1
	.byte	0x66
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.long	.LASF50
	.byte	0x1
	.byte	0x67
	.long	0x222
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0x69
	.long	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x6a
	.long	0x5d
	.long	.LLST8
	.uleb128 0x21
	.long	.LVL34
	.long	0x54b
	.uleb128 0x21
	.long	.LVL35
	.long	0x556
	.uleb128 0x21
	.long	.LVL37
	.long	0x2c1
	.uleb128 0x21
	.long	.LVL38
	.long	0x395
	.uleb128 0x21
	.long	.LVL39
	.long	0x3d9
	.uleb128 0x21
	.long	.LVL40
	.long	0x561
	.uleb128 0x21
	.long	.LVL42
	.long	0x542
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x506
	.uleb128 0xb
	.long	0x1be
	.uleb128 0x15
	.long	.LASF52
	.byte	0x1
	.byte	0x7d
	.long	0x5d
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x542
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x7d
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF43
	.byte	0x1
	.byte	0x7f
	.long	0x222
	.long	.LLST9
	.byte	0
	.uleb128 0x26
	.long	.LASF60
	.long	.LASF60
	.uleb128 0x27
	.long	.LASF53
	.long	.LASF53
	.byte	0x5
	.byte	0x39
	.uleb128 0x27
	.long	.LASF54
	.long	.LASF54
	.byte	0x5
	.byte	0x68
	.uleb128 0x27
	.long	.LASF55
	.long	.LASF55
	.byte	0x5
	.byte	0x40
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL4
	.long	.LVL9
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL4
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL18-1
	.value	0x1
	.byte	0x52
	.long	.LVL18-1
	.long	.LVL20
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL9
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL14
	.long	.LVL15
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x8
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL16
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL25
	.long	.LVL26-1
	.value	0x1
	.byte	0x52
	.long	.LVL26-1
	.long	.LVL31
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST8:
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x52
	.long	.LVL37-1
	.long	.LVL41
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST9:
	.long	.LVL44
	.long	.LVL47
	.value	0x1
	.byte	0x56
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"update_func"
.LASF54:
	.string	"mbedtls_hash_setup"
.LASF20:
	.string	"size_t"
.LASF27:
	.string	"starts_func"
.LASF23:
	.string	"type"
.LASF7:
	.string	"long long unsigned int"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"MBEDTLS_MD_SHA224"
.LASF30:
	.string	"digest_func"
.LASF38:
	.string	"mbedtls_md_context_t"
.LASF58:
	.string	"/home/stone/Documents/pca"
.LASF39:
	.string	"mbedtls_hash_info_t"
.LASF45:
	.string	"mbedtls_hmac_starts"
.LASF8:
	.string	"unsigned int"
.LASF26:
	.string	"block_size"
.LASF34:
	.string	"process_func"
.LASF33:
	.string	"clone_func"
.LASF5:
	.string	"long unsigned int"
.LASF24:
	.string	"name"
.LASF19:
	.string	"MBEDTLS_MD_RIPEMD160"
.LASF21:
	.string	"mbedtls_md_type_t"
.LASF25:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF50:
	.string	"output"
.LASF35:
	.string	"md_info"
.LASF41:
	.string	"sizetype"
.LASF22:
	.string	"mbedtls_md_info_t"
.LASF9:
	.string	"long double"
.LASF18:
	.string	"MBEDTLS_MD_SHA512"
.LASF57:
	.string	"src/hmac.c"
.LASF14:
	.string	"MBEDTLS_MD_SHA1"
.LASF42:
	.string	"keylen"
.LASF29:
	.string	"finish_func"
.LASF53:
	.string	"mbedtls_hash_init"
.LASF10:
	.string	"MBEDTLS_MD_NONE"
.LASF16:
	.string	"MBEDTLS_MD_SHA256"
.LASF43:
	.string	"ipad"
.LASF55:
	.string	"mbedtls_hash_free"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"md_ctx"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"input"
.LASF37:
	.string	"hmac_ctx"
.LASF60:
	.string	"__stack_chk_fail"
.LASF56:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF17:
	.string	"MBEDTLS_MD_SHA384"
.LASF32:
	.string	"ctx_free_func"
.LASF40:
	.string	"char"
.LASF59:
	.string	"mbedtls_zeroize"
.LASF51:
	.string	"mbedtls_hash_hmac"
.LASF11:
	.string	"MBEDTLS_MD_MD2"
.LASF12:
	.string	"MBEDTLS_MD_MD4"
.LASF13:
	.string	"MBEDTLS_MD_MD5"
.LASF52:
	.string	"mbedtls_hmac_reset"
.LASF49:
	.string	"mbedtls_hmac_finish"
.LASF48:
	.string	"ilen"
.LASF44:
	.string	"opad"
.LASF46:
	.string	"mbedtls_hmac_update"
.LASF31:
	.string	"ctx_alloc_func"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

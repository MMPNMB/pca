	.file	"k_mm_blk.c"
	.text
.Ltext0:
	.section	.text.unlikely.krhino_mblk_pool_init,"ax",@progbits
.LCOLDB0:
	.section	.text.krhino_mblk_pool_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.krhino_mblk_pool_init
.Ltext_cold0:
	.section	.text.krhino_mblk_pool_init
	.globl	krhino_mblk_pool_init
	.type	krhino_mblk_pool_init, @function
krhino_mblk_pool_init:
.LFB12:
	.file 1 "kernel/rhino/core/k_mm_blk.c"
	.loc 1 11 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 22 0
	cmpl	$0, 12(%ebp)
	.loc 1 11 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %ebx
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	.loc 1 22 0
	sete	%cl
	testl	%edx, %edx
	sete	%al
	orb	%al, %cl
	jne	.L6
	testl	%ebx, %ebx
	je	.L6
	.loc 1 25 0
	leal	(%esi,%esi), %ecx
	.loc 1 26 0
	movl	$405, %eax
	.loc 1 25 0
	cmpl	%edi, %ecx
	ja	.L2
.LVL1:
	.loc 1 36 0
	movl	%esi, %ecx
	.loc 1 37 0
	movl	$7, %eax
	.loc 1 36 0
	orl	%edx, %ecx
	andb	$3, %cl
	jne	.L2
	.loc 1 40 0
	testl	$3, %edi
	jne	.L2
	.loc 1 46 0
	leal	(%edx,%edi), %eax
	.loc 1 49 0
	leal	(%edx,%esi), %edi
	.loc 1 51 0
	movl	%edx, -28(%ebp)
	.loc 1 46 0
	movl	%eax, -32(%ebp)
.LVL2:
	.loc 1 47 0
	xorl	%eax, %eax
.LVL3:
.L3:
	.loc 1 51 0
	cmpl	-32(%ebp), %edi
	jnb	.L12
	.loc 1 54 0
	movl	-28(%ebp), %ecx
	.loc 1 52 0
	incl	%eax
.LVL4:
	addl	%esi, -28(%ebp)
.LVL5:
	.loc 1 54 0
	movl	%edi, (%ecx)
.LVL6:
	.loc 1 56 0
	addl	%esi, %edi
.LVL7:
	jmp	.L3
.LVL8:
.L12:
	.loc 1 64 0
	movl	-28(%ebp), %edi
.LVL9:
	.loc 1 60 0
	sete	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %eax
.LVL10:
	.loc 1 64 0
	movl	$0, (%edi)
	.loc 1 66 0
	movl	12(%ebp), %edi
	.loc 1 67 0
	movl	%edx, 8(%ebx)
	.loc 1 72 0
	movl	%edx, 24(%ebx)
	.loc 1 69 0
	movl	%eax, 20(%ebx)
	.loc 1 70 0
	movl	%eax, 16(%ebx)
	.loc 1 66 0
	movl	%edi, (%ebx)
	.loc 1 68 0
	movl	-32(%ebp), %edi
	.loc 1 71 0
	movl	%esi, 12(%ebx)
	.loc 1 68 0
	movl	%edi, 4(%ebx)
	.loc 1 75 0
	call	cpu_intrpt_save
.LVL11:
.LBB4:
.LBB5:
	.file 2 "./kernel/rhino/core/include/k_list.h"
	.loc 2 28 0
	movl	g_kobj_list+20, %ecx
.LBE5:
.LBE4:
	.loc 1 76 0
	leal	32(%ebx), %edx
.LVL12:
	.loc 1 77 0
	subl	$12, %esp
.LBB8:
.LBB6:
	.loc 2 29 0
	movl	$g_kobj_list+16, 32(%ebx)
.LVL13:
	.loc 2 28 0
	movl	%ecx, 36(%ebx)
	.loc 2 31 0
	movl	%edx, (%ecx)
.LVL14:
.LBE6:
.LBE8:
	.loc 1 77 0
	pushl	%eax
.LBB9:
.LBB7:
	.loc 2 32 0
	movl	%edx, g_kobj_list+20
.LVL15:
.LBE7:
.LBE9:
	.loc 1 77 0
	call	cpu_intrpt_restore
.LVL16:
	.loc 1 82 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L2
.LVL17:
.L6:
	.loc 1 22 0
	movl	$6, %eax
.L2:
	.loc 1 83 0
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
	.size	krhino_mblk_pool_init, .-krhino_mblk_pool_init
	.section	.text.unlikely.krhino_mblk_pool_init
.LCOLDE0:
	.section	.text.krhino_mblk_pool_init
.LHOTE0:
	.section	.text.unlikely.krhino_mblk_alloc,"ax",@progbits
.LCOLDB1:
	.section	.text.krhino_mblk_alloc,"ax",@progbits
.LHOTB1:
	.globl	krhino_mblk_alloc
	.type	krhino_mblk_alloc, @function
krhino_mblk_alloc:
.LFB13:
	.loc 1 86 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 86 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 91 0
	testl	%ebx, %ebx
	je	.L17
	testl	%esi, %esi
	je	.L17
.LVL19:
.LBB10:
	.loc 1 93 0
	call	cpu_intrpt_save
.LVL20:
.LBE10:
	.loc 1 95 0
	movl	16(%ebx), %edx
.LBB11:
	.loc 1 93 0
	movl	%eax, 28(%ebx)
.LBE11:
	.loc 1 95 0
	testl	%edx, %edx
	je	.L15
	.loc 1 96 0
	movl	24(%ebx), %ecx
.LVL21:
	.loc 1 100 0
	decl	%edx
	.loc 1 97 0
	movl	%ecx, (%esi)
	.loc 1 99 0
	movl	(%ecx), %ecx
.LVL22:
	.loc 1 100 0
	movl	%edx, 16(%ebx)
.LVL23:
	.loc 1 99 0
	movl	%ecx, 24(%ebx)
.LVL24:
	.loc 1 101 0
	xorl	%ebx, %ebx
	jmp	.L16
.LVL25:
.L15:
	.loc 1 103 0
	movl	$0, (%esi)
.LVL26:
	.loc 1 104 0
	movl	$105, %ebx
.LVL27:
.L16:
.LBB12:
	.loc 1 107 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL28:
.LBE12:
	.loc 1 109 0
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L14
.LVL29:
.L17:
	.loc 1 91 0
	movl	$6, %eax
.LVL30:
.L14:
	.loc 1 110 0
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
.LFE13:
	.size	krhino_mblk_alloc, .-krhino_mblk_alloc
	.section	.text.unlikely.krhino_mblk_alloc
.LCOLDE1:
	.section	.text.krhino_mblk_alloc
.LHOTE1:
	.section	.text.unlikely.krhino_mblk_free,"ax",@progbits
.LCOLDB2:
	.section	.text.krhino_mblk_free,"ax",@progbits
.LHOTB2:
	.globl	krhino_mblk_free
	.type	krhino_mblk_free, @function
krhino_mblk_free:
.LFB14:
	.loc 1 113 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 113 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 115 0
	testl	%ebx, %ebx
	je	.L21
	testl	%esi, %esi
	je	.L21
.LVL32:
.LBB13:
	.loc 1 117 0
	call	cpu_intrpt_save
.LVL33:
.LBE13:
	.loc 1 120 0
	movl	24(%ebx), %edx
.LBB14:
	.loc 1 117 0
	movl	%eax, 28(%ebx)
.LBE14:
.LBB15:
	.loc 1 124 0
	subl	$12, %esp
.LBE15:
	.loc 1 120 0
	movl	%edx, (%esi)
	.loc 1 122 0
	incl	16(%ebx)
.LVL34:
	.loc 1 121 0
	movl	%esi, 24(%ebx)
.LBB16:
	.loc 1 124 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL35:
.LBE16:
	.loc 1 126 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L20
.LVL36:
.L21:
	.loc 1 115 0
	movl	$6, %eax
.L20:
	.loc 1 127 0
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
.LFE14:
	.size	krhino_mblk_free, .-krhino_mblk_free
	.section	.text.unlikely.krhino_mblk_free
.LCOLDE2:
	.section	.text.krhino_mblk_free
.LHOTE2:
	.text
.Letext0:
	.section	.text.unlikely.krhino_mblk_pool_init
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 7 "./kernel/rhino/core/include/k_err.h"
	.file 8 "./kernel/rhino/core/include/k_spin_lock.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_mm_blk.h"
	.file 11 "././platform/arch/arm/armv5/./gcc/port.h"
	.file 12 "./kernel/rhino/core/include/k_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x628
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF122
	.byte	0xc
	.long	.LASF123
	.long	.LASF124
	.long	.Ldebug_ranges0+0x68
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x4
	.byte	0x1d
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
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x41
	.long	0x85
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x30
	.long	0x7a
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x3
	.long	.LASF17
	.byte	0x6
	.byte	0xe
	.long	0xb2
	.uleb128 0x3
	.long	.LASF18
	.byte	0x6
	.byte	0x16
	.long	0x9e
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x7
	.byte	0x8
	.long	0x27b
	.uleb128 0x7
	.long	.LASF19
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.uleb128 0x7
	.long	.LASF22
	.byte	0x3
	.uleb128 0x7
	.long	.LASF23
	.byte	0x4
	.uleb128 0x7
	.long	.LASF24
	.byte	0x5
	.uleb128 0x7
	.long	.LASF25
	.byte	0x6
	.uleb128 0x7
	.long	.LASF26
	.byte	0x7
	.uleb128 0x7
	.long	.LASF27
	.byte	0x8
	.uleb128 0x7
	.long	.LASF28
	.byte	0x9
	.uleb128 0x7
	.long	.LASF29
	.byte	0xa
	.uleb128 0x7
	.long	.LASF30
	.byte	0xb
	.uleb128 0x7
	.long	.LASF31
	.byte	0xc
	.uleb128 0x7
	.long	.LASF32
	.byte	0xd
	.uleb128 0x7
	.long	.LASF33
	.byte	0x64
	.uleb128 0x7
	.long	.LASF34
	.byte	0x65
	.uleb128 0x7
	.long	.LASF35
	.byte	0x66
	.uleb128 0x7
	.long	.LASF36
	.byte	0x67
	.uleb128 0x7
	.long	.LASF37
	.byte	0x68
	.uleb128 0x7
	.long	.LASF38
	.byte	0x69
	.uleb128 0x7
	.long	.LASF39
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF40
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF41
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF42
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF43
	.byte	0xca
	.uleb128 0x7
	.long	.LASF44
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF45
	.value	0x12c
	.uleb128 0x8
	.long	.LASF46
	.value	0x12d
	.uleb128 0x8
	.long	.LASF47
	.value	0x12e
	.uleb128 0x8
	.long	.LASF48
	.value	0x12f
	.uleb128 0x8
	.long	.LASF49
	.value	0x130
	.uleb128 0x8
	.long	.LASF50
	.value	0x131
	.uleb128 0x8
	.long	.LASF51
	.value	0x132
	.uleb128 0x8
	.long	.LASF52
	.value	0x133
	.uleb128 0x8
	.long	.LASF53
	.value	0x134
	.uleb128 0x8
	.long	.LASF54
	.value	0x190
	.uleb128 0x8
	.long	.LASF55
	.value	0x191
	.uleb128 0x8
	.long	.LASF56
	.value	0x192
	.uleb128 0x8
	.long	.LASF57
	.value	0x193
	.uleb128 0x8
	.long	.LASF58
	.value	0x194
	.uleb128 0x8
	.long	.LASF59
	.value	0x195
	.uleb128 0x8
	.long	.LASF60
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF61
	.value	0x258
	.uleb128 0x8
	.long	.LASF62
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF63
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF64
	.value	0x2be
	.uleb128 0x8
	.long	.LASF65
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF66
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF67
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF68
	.value	0x320
	.uleb128 0x8
	.long	.LASF69
	.value	0x321
	.uleb128 0x8
	.long	.LASF70
	.value	0x384
	.uleb128 0x8
	.long	.LASF71
	.value	0x385
	.uleb128 0x8
	.long	.LASF72
	.value	0x386
	.uleb128 0x8
	.long	.LASF73
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF74
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF75
	.value	0x44c
	.uleb128 0x8
	.long	.LASF76
	.value	0x44d
	.uleb128 0x8
	.long	.LASF77
	.value	0x44e
	.uleb128 0x8
	.long	.LASF78
	.value	0x44f
	.uleb128 0x8
	.long	.LASF79
	.value	0x450
	.uleb128 0x8
	.long	.LASF80
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF81
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF82
	.byte	0x7
	.byte	0x54
	.long	0xcf
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.long	0x29b
	.uleb128 0xa
	.long	.LASF84
	.byte	0x8
	.byte	0xc
	.long	0xc4
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF83
	.byte	0x8
	.byte	0xd
	.long	0x286
	.uleb128 0xb
	.long	.LASF125
	.byte	0x8
	.byte	0x2
	.byte	0x8
	.long	0x2cb
	.uleb128 0xa
	.long	.LASF85
	.byte	0x2
	.byte	0x9
	.long	0x2cb
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x2
	.byte	0xa
	.long	0x2cb
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x2a6
	.uleb128 0x3
	.long	.LASF87
	.byte	0x2
	.byte	0xb
	.long	0x2a6
	.uleb128 0xc
	.byte	0x4
	.long	0x2e2
	.uleb128 0xd
	.long	0xb9
	.uleb128 0x9
	.byte	0x38
	.byte	0x9
	.byte	0x27
	.long	0x344
	.uleb128 0xa
	.long	.LASF88
	.byte	0x9
	.byte	0x28
	.long	0x2d1
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x9
	.byte	0x29
	.long	0x2d1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF90
	.byte	0x9
	.byte	0x2c
	.long	0x2d1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF91
	.byte	0x9
	.byte	0x30
	.long	0x2d1
	.byte	0x18
	.uleb128 0xa
	.long	.LASF92
	.byte	0x9
	.byte	0x34
	.long	0x2d1
	.byte	0x20
	.uleb128 0xa
	.long	.LASF93
	.byte	0x9
	.byte	0x38
	.long	0x2d1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF94
	.byte	0x9
	.byte	0x3c
	.long	0x2d1
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0x9
	.byte	0x3e
	.long	0x2e7
	.uleb128 0xc
	.byte	0x4
	.long	0x2d1
	.uleb128 0xc
	.byte	0x4
	.long	0x93
	.uleb128 0xc
	.byte	0x4
	.long	0xb0
	.uleb128 0x9
	.byte	0x28
	.byte	0xa
	.byte	0x8
	.long	0x3d6
	.uleb128 0xa
	.long	.LASF96
	.byte	0xa
	.byte	0x9
	.long	0x2dc
	.byte	0
	.uleb128 0xa
	.long	.LASF97
	.byte	0xa
	.byte	0xa
	.long	0xb0
	.byte	0x4
	.uleb128 0xa
	.long	.LASF98
	.byte	0xa
	.byte	0xb
	.long	0xb0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF99
	.byte	0xa
	.byte	0xc
	.long	0x2c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF100
	.byte	0xa
	.byte	0xd
	.long	0x2c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF101
	.byte	0xa
	.byte	0xe
	.long	0x2c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF102
	.byte	0xa
	.byte	0xf
	.long	0x355
	.byte	0x18
	.uleb128 0xa
	.long	.LASF103
	.byte	0xa
	.byte	0x10
	.long	0x29b
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF104
	.byte	0xa
	.byte	0x12
	.long	0x2d1
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF105
	.byte	0xa
	.byte	0x14
	.long	0x361
	.uleb128 0xe
	.long	.LASF126
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.long	0x404
	.uleb128 0xf
	.long	.LASF106
	.byte	0x2
	.byte	0x1a
	.long	0x34f
	.uleb128 0xf
	.long	.LASF107
	.byte	0x2
	.byte	0x1a
	.long	0x34f
	.byte	0
	.uleb128 0x10
	.long	.LASF115
	.byte	0x1
	.byte	0x8
	.long	0x27b
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f6
	.uleb128 0x11
	.long	.LASF108
	.byte	0x1
	.byte	0x8
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF109
	.byte	0x1
	.byte	0x8
	.long	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.byte	0x9
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF99
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.long	.LASF110
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.byte	0xc
	.long	0x2c
	.long	.LLST0
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1
	.byte	0xe
	.long	0x9e
	.long	.LLST1
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1
	.byte	0xf
	.long	0x355
	.long	.LLST2
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1
	.byte	0x10
	.long	0x355
	.long	.LLST3
	.uleb128 0x12
	.long	.LASF97
	.byte	0x1
	.byte	0x11
	.long	0x355
	.long	.LLST4
	.uleb128 0x12
	.long	.LASF114
	.byte	0x1
	.byte	0x12
	.long	0x93
	.long	.LLST5
	.uleb128 0x13
	.long	0x3e1
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4c
	.long	0x4e3
	.uleb128 0x14
	.long	0x3ed
	.long	.LLST6
	.uleb128 0x14
	.long	0x3f8
	.long	.LLST7
	.byte	0
	.uleb128 0x15
	.long	.LVL11
	.long	0x615
	.uleb128 0x15
	.long	.LVL16
	.long	0x620
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x3d6
	.uleb128 0x10
	.long	.LASF116
	.byte	0x1
	.byte	0x55
	.long	0x27b
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x16
	.long	.LASF108
	.byte	0x1
	.byte	0x55
	.long	0x4f6
	.long	.LLST8
	.uleb128 0x17
	.string	"blk"
	.byte	0x1
	.byte	0x55
	.long	0x35b
	.long	.LLST9
	.uleb128 0x12
	.long	.LASF117
	.byte	0x1
	.byte	0x57
	.long	0x27b
	.long	.LLST10
	.uleb128 0x12
	.long	.LASF118
	.byte	0x1
	.byte	0x58
	.long	0x355
	.long	.LLST11
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x20
	.long	0x571
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x5d
	.long	0x592
	.long	.LLST12
	.uleb128 0x15
	.long	.LVL20
	.long	0x615
	.byte	0
	.uleb128 0x1a
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x6b
	.long	0x592
	.long	.LLST13
	.uleb128 0x15
	.long	.LVL28
	.long	0x620
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x29b
	.uleb128 0x10
	.long	.LASF119
	.byte	0x1
	.byte	0x70
	.long	0x27b
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x60a
	.uleb128 0x11
	.long	.LASF108
	.byte	0x1
	.byte	0x70
	.long	0x4f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"blk"
	.byte	0x1
	.byte	0x70
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.Ldebug_ranges0+0x38
	.long	0x5ed
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x75
	.long	0x592
	.long	.LLST14
	.uleb128 0x15
	.long	.LVL33
	.long	0x615
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x7c
	.long	0x592
	.long	.LLST15
	.uleb128 0x15
	.long	.LVL35
	.long	0x620
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF127
	.byte	0xc
	.byte	0x21
	.long	0x344
	.uleb128 0x1e
	.long	.LASF120
	.long	.LASF120
	.byte	0xb
	.byte	0x8
	.uleb128 0x1e
	.long	.LASF121
	.long	.LASF121
	.byte	0xb
	.byte	0x9
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL11
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x52
	.long	.LVL3
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x51
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	.LVL8
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL9
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL17
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL15
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x56
	.long	.LVL30
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST10:
	.long	.LVL23
	.long	.LVL25
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.value	0x3
	.byte	0x8
	.byte	0x69
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x51
	.long	.LVL22
	.long	.LVL24
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	0
	.long	0
.LLST12:
	.long	.LVL19
	.long	.LVL25
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	.LVL25
	.long	.LVL27
	.value	0x3
	.byte	0x73
	.sleb128 28
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL27
	.long	.LVL29
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL32
	.long	.LVL36
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL34
	.long	.LVL36
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB8
	.long	.LBE8
	.long	.LBB9
	.long	.LBE9
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LBB13
	.long	.LBE13
	.long	.LBB14
	.long	.LBE14
	.long	0
	.long	0
	.long	.LBB15
	.long	.LBE15
	.long	.LBB16
	.long	.LBE16
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"RHINO_NULL_PTR"
.LASF64:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF33:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF120:
	.string	"cpu_intrpt_save"
.LASF35:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF20:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF0:
	.string	"unsigned int"
.LASF85:
	.string	"next"
.LASF112:
	.string	"blk_cur"
.LASF18:
	.string	"cpu_cpsr_t"
.LASF99:
	.string	"blk_size"
.LASF52:
	.string	"RHINO_INV_TASK_STATE"
.LASF37:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF89:
	.string	"mutex_head"
.LASF74:
	.string	"RHINO_TRY_AGAIN"
.LASF43:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF53:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF73:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF67:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF30:
	.string	"RHINO_KOBJ_BLK"
.LASF86:
	.string	"prev"
.LASF58:
	.string	"RHINO_BLK_INV_STATE"
.LASF42:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF126:
	.string	"klist_insert"
.LASF46:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF49:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF14:
	.string	"uint32_t"
.LASF40:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF47:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF12:
	.string	"long long unsigned int"
.LASF65:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF19:
	.string	"RHINO_SUCCESS"
.LASF106:
	.string	"head"
.LASF101:
	.string	"blk_whole"
.LASF100:
	.string	"blk_avail"
.LASF57:
	.string	"RHINO_BLK_DEL"
.LASF119:
	.string	"krhino_mblk_free"
.LASF55:
	.string	"RHINO_BLK_ABORT"
.LASF124:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"size_t"
.LASF79:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF31:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF77:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF23:
	.string	"RHINO_STOPPED"
.LASF59:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF105:
	.string	"mblk_pool_t"
.LASF69:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF68:
	.string	"RHINO_SEM_OVF"
.LASF98:
	.string	"pool_start"
.LASF80:
	.string	"RHINO_TASK_STACK_OVF"
.LASF90:
	.string	"mblkpool_head"
.LASF24:
	.string	"RHINO_INV_PARAM"
.LASF75:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF16:
	.string	"char"
.LASF62:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF22:
	.string	"RHINO_RUNNING"
.LASF13:
	.string	"uint8_t"
.LASF117:
	.string	"status"
.LASF123:
	.string	"src/k_mm_blk.c"
.LASF29:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF114:
	.string	"addr_align_mask"
.LASF1:
	.string	"long long int"
.LASF113:
	.string	"blk_next"
.LASF56:
	.string	"RHINO_BLK_TIMEOUT"
.LASF94:
	.string	"buf_queue_head"
.LASF118:
	.string	"avail_blk"
.LASF51:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF78:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF38:
	.string	"RHINO_NO_MEM"
.LASF70:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF125:
	.string	"klist_s"
.LASF87:
	.string	"klist_t"
.LASF66:
	.string	"RHINO_QUEUE_FULL"
.LASF116:
	.string	"krhino_mblk_alloc"
.LASF108:
	.string	"pool"
.LASF61:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF54:
	.string	"RHINO_NO_PEND_WAIT"
.LASF2:
	.string	"long double"
.LASF82:
	.string	"kstat_t"
.LASF17:
	.string	"name_t"
.LASF34:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF115:
	.string	"krhino_mblk_pool_init"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF93:
	.string	"event_head"
.LASF95:
	.string	"kobj_list_t"
.LASF92:
	.string	"queue_head"
.LASF97:
	.string	"pool_end"
.LASF83:
	.string	"kspinlock_t"
.LASF71:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF5:
	.string	"__uint8_t"
.LASF39:
	.string	"RHINO_RINGBUF_FULL"
.LASF109:
	.string	"name"
.LASF102:
	.string	"avail_list"
.LASF72:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF84:
	.string	"cpsr"
.LASF45:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF60:
	.string	"RHINO_TIMER_STATE_INV"
.LASF15:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF110:
	.string	"pool_size"
.LASF26:
	.string	"RHINO_INV_ALIGN"
.LASF36:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF44:
	.string	"RHINO_INV_SCHED_WAY"
.LASF50:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF111:
	.string	"blks"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF122:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF88:
	.string	"task_head"
.LASF81:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF28:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF104:
	.string	"mblkpool_stats_item"
.LASF96:
	.string	"pool_name"
.LASF107:
	.string	"element"
.LASF91:
	.string	"sem_head"
.LASF127:
	.string	"g_kobj_list"
.LASF48:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF8:
	.string	"short unsigned int"
.LASF103:
	.string	"blk_lock"
.LASF41:
	.string	"RHINO_SCHED_DISABLE"
.LASF63:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF121:
	.string	"cpu_intrpt_restore"
.LASF76:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF27:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF21:
	.string	"RHINO_SYS_SP_ERR"
.LASF32:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

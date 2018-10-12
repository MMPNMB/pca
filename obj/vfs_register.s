	.file	"vfs_register.c"
	.text
.Ltext0:
	.section	.text.unlikely.aos_register_driver,"ax",@progbits
.LCOLDB0:
	.section	.text.aos_register_driver,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.aos_register_driver
.Ltext_cold0:
	.section	.text.aos_register_driver
	.globl	aos_register_driver
	.type	aos_register_driver, @function
aos_register_driver:
.LFB22:
	.file 1 "kernel/vfs/vfs_register.c"
	.loc 1 15 0
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
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 16 0
	movl	$0, -32(%ebp)
	.loc 1 15 0
	movl	8(%ebp), %edi
	.loc 1 19 0
	pushl	$-1
	pushl	$g_vfs_mutex
	.loc 1 15 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	12(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 19 0
	call	aos_mutex_lock
.LVL1:
	.loc 1 20 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L2
.LVL2:
	.loc 1 24 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	%eax
	pushl	%edi
	call	inode_reserve
.LVL3:
	.loc 1 25 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 24 0
	movl	%eax, %edi
.LVL4:
	.loc 1 25 0
	jne	.L3
	.loc 1 27 0
	movl	-32(%ebp), %eax
.LVL5:
	.loc 1 33 0
	subl	$12, %esp
	.loc 1 27 0
	movb	$1, 16(%eax)
	.loc 1 29 0
	movl	%esi, (%eax)
	.loc 1 33 0
	addl	$20, %eax
	.loc 1 30 0
	movl	%ebx, -16(%eax)
	.loc 1 33 0
	pushl	%eax
	call	aos_mutex_new
.LVL6:
	addl	$16, %esp
	movl	%eax, %edi
.LVL7:
.L3:
	.loc 1 37 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL8:
	movl	%eax, %ebx
.LVL9:
	.loc 1 38 0
	addl	$16, %esp
	.loc 1 47 0
	movl	%edi, %eax
.LVL10:
	.loc 1 38 0
	testl	%ebx, %ebx
	je	.L2
.LVL11:
	.loc 1 39 0
	movl	-32(%ebp), %eax
.LVL12:
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L4
	.loc 1 40 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL13:
	addl	$16, %esp
.L4:
	.loc 1 43 0
	movl	-32(%ebp), %edi
.LVL14:
	xorl	%eax, %eax
	movl	$6, %ecx
	rep stosl
	.loc 1 44 0
	movl	%ebx, %eax
.LVL15:
.L2:
	.loc 1 48 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L5
	call	__stack_chk_fail
.LVL16:
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
.LFE22:
	.size	aos_register_driver, .-aos_register_driver
	.section	.text.unlikely.aos_register_driver
.LCOLDE0:
	.section	.text.aos_register_driver
.LHOTE0:
	.section	.text.unlikely.aos_register_fs,"ax",@progbits
.LCOLDB1:
	.section	.text.aos_register_fs,"ax",@progbits
.LHOTB1:
	.globl	aos_register_fs
	.type	aos_register_fs, @function
aos_register_fs:
.LFB24:
	.loc 1 70 0
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
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 71 0
	movl	$0, -32(%ebp)
	.loc 1 70 0
	movl	8(%ebp), %edi
	.loc 1 74 0
	pushl	$-1
	pushl	$g_vfs_mutex
	.loc 1 70 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	12(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 74 0
	call	aos_mutex_lock
.LVL18:
	.loc 1 75 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L15
.LVL19:
	.loc 1 79 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	%eax
	pushl	%edi
	call	inode_reserve
.LVL20:
	.loc 1 80 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 79 0
	movl	%eax, %edi
.LVL21:
	.loc 1 80 0
	jne	.L16
	.loc 1 81 0
	movl	-32(%ebp), %eax
.LVL22:
	movb	$3, 16(%eax)
	.loc 1 83 0
	movl	%esi, (%eax)
	.loc 1 84 0
	movl	%ebx, 4(%eax)
.L16:
	.loc 1 87 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL23:
	movl	%eax, %ebx
.LVL24:
	.loc 1 88 0
	addl	$16, %esp
	.loc 1 79 0
	movl	%edi, %eax
.LVL25:
	.loc 1 88 0
	testl	%ebx, %ebx
	je	.L15
.LVL26:
	.loc 1 89 0
	movl	-32(%ebp), %eax
.LVL27:
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.L17
	.loc 1 90 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL28:
	addl	$16, %esp
.L17:
	.loc 1 93 0
	movl	-32(%ebp), %edi
.LVL29:
	xorl	%eax, %eax
	movl	$6, %ecx
	rep stosl
	.loc 1 94 0
	movl	%ebx, %eax
.LVL30:
.L15:
	.loc 1 98 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L18
	call	__stack_chk_fail
.LVL31:
.L18:
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
.LFE24:
	.size	aos_register_fs, .-aos_register_fs
	.section	.text.unlikely.aos_register_fs
.LCOLDE1:
	.section	.text.aos_register_fs
.LHOTE1:
	.section	.text.unlikely.aos_unregister_fs,"ax",@progbits
.LCOLDB2:
	.section	.text.aos_unregister_fs,"ax",@progbits
.LHOTB2:
	.globl	aos_unregister_fs
	.type	aos_unregister_fs, @function
aos_unregister_fs:
.LFB25:
	.loc 1 101 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 104 0
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL33:
	.loc 1 105 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L27
	.loc 1 109 0
	subl	$12, %esp
	pushl	8(%ebp)
	call	inode_release
.LVL34:
	.loc 1 111 0
	movl	$g_vfs_mutex, (%esp)
	.loc 1 109 0
	movl	%eax, %ebx
.LVL35:
	.loc 1 111 0
	call	aos_mutex_unlock
.LVL36:
	.loc 1 112 0
	addl	$16, %esp
	.loc 1 116 0
	testl	%eax, %eax
	cmove	%ebx, %eax
.LVL37:
.L27:
	.loc 1 117 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	aos_unregister_fs, .-aos_unregister_fs
	.section	.text.unlikely.aos_unregister_fs
.LCOLDE2:
	.section	.text.aos_unregister_fs
.LHOTE2:
	.section	.text.unlikely.aos_unregister_driver,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_unregister_driver,"ax",@progbits
.LHOTB3:
	.globl	aos_unregister_driver
	.type	aos_unregister_driver, @function
aos_unregister_driver:
.LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	aos_unregister_fs
	.cfi_endproc
.LFE27:
	.size	aos_unregister_driver, .-aos_unregister_driver
	.section	.text.unlikely.aos_unregister_driver
.LCOLDE3:
	.section	.text.aos_unregister_driver
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.aos_register_driver
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 9 "./include/aos/types.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./include/aos/vfs.h"
	.file 12 "./kernel/vfs/include/vfs_inode.h"
	.file 13 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9b3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF117
	.byte	0xc
	.long	.LASF118
	.long	.LASF119
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x1c
	.long	0x73
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x20
	.long	0x73
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x2c
	.long	0x73
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x36
	.long	0x65
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x3a
	.long	0x6c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x3d
	.long	0x6c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x49
	.long	0x6c
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x58
	.long	0x7a
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x64
	.long	0xa9
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x91
	.long	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF23
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0xcb
	.long	0x6c
	.uleb128 0x6
	.byte	0x4
	.long	0x11b
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x6
	.byte	0x4
	.long	0x128
	.uleb128 0x7
	.long	0x11b
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF27
	.byte	0x6
	.byte	0x28
	.long	0x73
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x71
	.long	0x93
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x76
	.long	0x9e
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x9b
	.long	0xd5
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0xad
	.long	0xeb
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0xb1
	.long	0xb4
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0xb5
	.long	0xbf
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0xb9
	.long	0xca
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0xc8
	.long	0xf6
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0xcd
	.long	0xe0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0xd2
	.long	0x10a
	.uleb128 0x8
	.long	.LASF55
	.byte	0x3c
	.byte	0x8
	.byte	0x1b
	.long	0x28a
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x1d
	.long	0x16f
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x1e
	.long	0x159
	.byte	0x2
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x1f
	.long	0x19b
	.byte	0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x20
	.long	0x1a6
	.byte	0x8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x21
	.long	0x17a
	.byte	0xa
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x22
	.long	0x185
	.byte	0xc
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x23
	.long	0x16f
	.byte	0xe
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x24
	.long	0x164
	.byte	0x10
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x32
	.long	0x138
	.byte	0x14
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x33
	.long	0x73
	.byte	0x18
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x34
	.long	0x138
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x35
	.long	0x73
	.byte	0x20
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x36
	.long	0x138
	.byte	0x24
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x37
	.long	0x73
	.byte	0x28
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x38
	.long	0x14e
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x39
	.long	0x143
	.byte	0x30
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x3a
	.long	0x28a
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.long	0x73
	.long	0x29a
	.uleb128 0xb
	.long	0x101
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x8
	.byte	0x9
	.byte	0x11
	.long	0x2ca
	.uleb128 0xc
	.string	"fd"
	.byte	0x9
	.byte	0x12
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x9
	.byte	0x13
	.long	0x65
	.byte	0x4
	.uleb128 0x9
	.long	.LASF58
	.byte	0x9
	.byte	0x14
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0x2df
	.uleb128 0xc
	.string	"hdl"
	.byte	0xa
	.byte	0x14
	.long	0x108
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF59
	.byte	0xa
	.byte	0x15
	.long	0x2ca
	.uleb128 0x3
	.long	.LASF60
	.byte	0xa
	.byte	0x18
	.long	0x2df
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.long	0x322
	.uleb128 0x9
	.long	.LASF61
	.byte	0xb
	.byte	0x11
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0xb
	.byte	0x12
	.long	0x12d
	.byte	0x4
	.uleb128 0x9
	.long	.LASF63
	.byte	0xb
	.byte	0x13
	.long	0x322
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x11b
	.long	0x331
	.uleb128 0xe
	.long	0x101
	.byte	0
	.uleb128 0x3
	.long	.LASF64
	.byte	0xb
	.byte	0x14
	.long	0x2f5
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.long	0x35d
	.uleb128 0x9
	.long	.LASF65
	.byte	0xb
	.byte	0x17
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.byte	0x18
	.long	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0xb
	.byte	0x19
	.long	0x33c
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF68
	.uleb128 0xf
	.byte	0x4
	.long	0x37
	.byte	0xc
	.byte	0x11
	.long	0x394
	.uleb128 0x10
	.long	.LASF69
	.byte	0
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.uleb128 0x10
	.long	.LASF71
	.byte	0x2
	.uleb128 0x10
	.long	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0xc
	.byte	0x2b
	.long	0x3f4
	.uleb128 0x8
	.long	.LASF74
	.byte	0x18
	.byte	0xc
	.byte	0x46
	.long	0x3f4
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x47
	.long	0x5d4
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x48
	.long	0x5e9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xc
	.byte	0x49
	.long	0x608
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xc
	.byte	0x4a
	.long	0x62e
	.byte	0xc
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x4b
	.long	0x64d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0xc
	.byte	0x4d
	.long	0x676
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0x39f
	.uleb128 0x3
	.long	.LASF81
	.byte	0xc
	.byte	0x2c
	.long	0x4b9
	.uleb128 0x8
	.long	.LASF82
	.byte	0x38
	.byte	0xc
	.byte	0x51
	.long	0x4b9
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x52
	.long	0x695
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x53
	.long	0x5e9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xc
	.byte	0x54
	.long	0x6b4
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xc
	.byte	0x55
	.long	0x6d3
	.byte	0xc
	.uleb128 0x9
	.long	.LASF83
	.byte	0xc
	.byte	0x56
	.long	0x6f2
	.byte	0x10
	.uleb128 0x9
	.long	.LASF84
	.byte	0xc
	.byte	0x57
	.long	0x5e9
	.byte	0x14
	.uleb128 0x9
	.long	.LASF55
	.byte	0xc
	.byte	0x58
	.long	0x717
	.byte	0x18
	.uleb128 0x9
	.long	.LASF85
	.byte	0xc
	.byte	0x59
	.long	0x731
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF86
	.byte	0xc
	.byte	0x5a
	.long	0x750
	.byte	0x20
	.uleb128 0x9
	.long	.LASF87
	.byte	0xc
	.byte	0x5b
	.long	0x770
	.byte	0x24
	.uleb128 0x9
	.long	.LASF88
	.byte	0xc
	.byte	0x5c
	.long	0x790
	.byte	0x28
	.uleb128 0x9
	.long	.LASF89
	.byte	0xc
	.byte	0x5d
	.long	0x7aa
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF90
	.byte	0xc
	.byte	0x5e
	.long	0x731
	.byte	0x30
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x5f
	.long	0x64d
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x404
	.uleb128 0x11
	.long	.LASF120
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.long	0x4e1
	.uleb128 0x12
	.long	.LASF91
	.byte	0xc
	.byte	0x2f
	.long	0x4e1
	.uleb128 0x12
	.long	.LASF92
	.byte	0xc
	.byte	0x30
	.long	0x4e7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x394
	.uleb128 0x6
	.byte	0x4
	.long	0x3f9
	.uleb128 0xd
	.byte	0x18
	.byte	0xc
	.byte	0x34
	.long	0x54a
	.uleb128 0xc
	.string	"ops"
	.byte	0xc
	.byte	0x35
	.long	0x4be
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0xc
	.byte	0x36
	.long	0x108
	.byte	0x4
	.uleb128 0x9
	.long	.LASF94
	.byte	0xc
	.byte	0x37
	.long	0x115
	.byte	0x8
	.uleb128 0x9
	.long	.LASF95
	.byte	0xc
	.byte	0x38
	.long	0x25
	.byte	0xc
	.uleb128 0x9
	.long	.LASF96
	.byte	0xc
	.byte	0x39
	.long	0x12d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF97
	.byte	0xc
	.byte	0x3a
	.long	0x12d
	.byte	0x11
	.uleb128 0x9
	.long	.LASF98
	.byte	0xc
	.byte	0x3b
	.long	0x2ea
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0xc
	.byte	0x3c
	.long	0x4ed
	.uleb128 0xd
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.long	0x582
	.uleb128 0x9
	.long	.LASF100
	.byte	0xc
	.byte	0x3f
	.long	0x582
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0x40
	.long	0x108
	.byte	0x4
	.uleb128 0x9
	.long	.LASF102
	.byte	0xc
	.byte	0x41
	.long	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54a
	.uleb128 0x3
	.long	.LASF103
	.byte	0xc
	.byte	0x42
	.long	0x555
	.uleb128 0x3
	.long	.LASF104
	.byte	0xc
	.byte	0x45
	.long	0x59e
	.uleb128 0x6
	.byte	0x4
	.long	0x5a4
	.uleb128 0x13
	.long	0x5b4
	.uleb128 0x14
	.long	0x5b4
	.uleb128 0x14
	.long	0x108
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x29a
	.uleb128 0x15
	.long	0x25
	.long	0x5ce
	.uleb128 0x14
	.long	0x582
	.uleb128 0x14
	.long	0x5ce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x588
	.uleb128 0x6
	.byte	0x4
	.long	0x5ba
	.uleb128 0x15
	.long	0x25
	.long	0x5e9
	.uleb128 0x14
	.long	0x5ce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5da
	.uleb128 0x15
	.long	0x190
	.long	0x608
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x108
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ef
	.uleb128 0x15
	.long	0x190
	.long	0x627
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x627
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62d
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x4
	.long	0x60e
	.uleb128 0x15
	.long	0x25
	.long	0x64d
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x25
	.uleb128 0x14
	.long	0x85
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x634
	.uleb128 0x15
	.long	0x25
	.long	0x676
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x368
	.uleb128 0x14
	.long	0x593
	.uleb128 0x14
	.long	0x5b4
	.uleb128 0x14
	.long	0x108
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x653
	.uleb128 0x15
	.long	0x25
	.long	0x695
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x67c
	.uleb128 0x15
	.long	0x190
	.long	0x6b4
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x115
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x69b
	.uleb128 0x15
	.long	0x190
	.long	0x6d3
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6ba
	.uleb128 0x15
	.long	0x164
	.long	0x6f2
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x164
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6d9
	.uleb128 0x15
	.long	0x25
	.long	0x711
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x711
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b1
	.uleb128 0x6
	.byte	0x4
	.long	0x6f8
	.uleb128 0x15
	.long	0x25
	.long	0x731
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x71d
	.uleb128 0x15
	.long	0x25
	.long	0x750
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x737
	.uleb128 0x15
	.long	0x76a
	.long	0x76a
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x35d
	.uleb128 0x6
	.byte	0x4
	.long	0x756
	.uleb128 0x15
	.long	0x78a
	.long	0x78a
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x76a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x331
	.uleb128 0x6
	.byte	0x4
	.long	0x776
	.uleb128 0x15
	.long	0x25
	.long	0x7aa
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x76a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x796
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.byte	0xe
	.long	0x25
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x856
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0xe
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"ops"
	.byte	0x1
	.byte	0xe
	.long	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"arg"
	.byte	0x1
	.byte	0xe
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0x10
	.long	0x582
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x11
	.long	0x25
	.long	.LLST0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x11
	.long	0x25
	.long	.LLST1
	.uleb128 0x1c
	.long	.LVL1
	.long	0x96a
	.uleb128 0x1c
	.long	.LVL3
	.long	0x975
	.uleb128 0x1c
	.long	.LVL6
	.long	0x980
	.uleb128 0x1c
	.long	.LVL8
	.long	0x98b
	.uleb128 0x1c
	.long	.LVL13
	.long	0x996
	.uleb128 0x1c
	.long	.LVL16
	.long	0x9a2
	.byte	0
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.byte	0x45
	.long	0x25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f3
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0x45
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"ops"
	.byte	0x1
	.byte	0x45
	.long	0x4e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"arg"
	.byte	0x1
	.byte	0x45
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0x47
	.long	0x582
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x48
	.long	0x25
	.long	.LLST2
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x48
	.long	0x25
	.long	.LLST3
	.uleb128 0x1c
	.long	.LVL18
	.long	0x96a
	.uleb128 0x1c
	.long	.LVL20
	.long	0x975
	.uleb128 0x1c
	.long	.LVL23
	.long	0x98b
	.uleb128 0x1c
	.long	.LVL28
	.long	0x996
	.uleb128 0x1c
	.long	.LVL31
	.long	0x9a2
	.byte	0
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.byte	0x64
	.long	0x25
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x954
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0x64
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x66
	.long	0x25
	.long	.LLST4
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x66
	.long	0x25
	.long	.LLST5
	.uleb128 0x1c
	.long	.LVL33
	.long	0x96a
	.uleb128 0x1c
	.long	.LVL34
	.long	0x9ab
	.uleb128 0x1c
	.long	.LVL36
	.long	0x98b
	.byte	0
	.uleb128 0x1d
	.long	.LASF109
	.byte	0xd
	.byte	0x17
	.long	0x37
	.uleb128 0x1d
	.long	.LASF110
	.byte	0x1
	.byte	0xc
	.long	0x2ea
	.uleb128 0x1e
	.long	.LASF111
	.long	.LASF111
	.byte	0xa
	.byte	0x9e
	.uleb128 0x1e
	.long	.LASF112
	.long	.LASF112
	.byte	0xc
	.byte	0x6b
	.uleb128 0x1e
	.long	.LASF113
	.long	.LASF113
	.byte	0xa
	.byte	0x8c
	.uleb128 0x1e
	.long	.LASF114
	.long	.LASF114
	.byte	0xa
	.byte	0xa7
	.uleb128 0x1f
	.long	.LASF115
	.long	.LASF115
	.byte	0xa
	.value	0x200
	.uleb128 0x20
	.long	.LASF121
	.long	.LASF121
	.uleb128 0x1e
	.long	.LASF116
	.long	.LASF116
	.byte	0xc
	.byte	0x6c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8-1
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL14
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST2:
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL26
	.value	0x1
	.byte	0x57
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL29
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL33
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL35
	.long	.LVL36-1
	.value	0x1
	.byte	0x50
	.long	.LVL36-1
	.long	.LVL37
	.value	0x1
	.byte	0x53
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB22
	.long	.LFE22
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"aos_dirent_t"
.LASF99:
	.string	"inode_t"
.LASF67:
	.string	"aos_dir_t"
.LASF0:
	.string	"unsigned int"
.LASF52:
	.string	"st_blksize"
.LASF97:
	.string	"refs"
.LASF57:
	.string	"events"
.LASF87:
	.string	"opendir"
.LASF84:
	.string	"sync"
.LASF24:
	.string	"__nlink_t"
.LASF71:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF94:
	.string	"i_name"
.LASF63:
	.string	"d_name"
.LASF19:
	.string	"__ino_t"
.LASF60:
	.string	"aos_mutex_t"
.LASF30:
	.string	"ino_t"
.LASF98:
	.string	"mutex"
.LASF93:
	.string	"i_arg"
.LASF50:
	.string	"st_ctime"
.LASF85:
	.string	"unlink"
.LASF109:
	.string	"aos_log_level"
.LASF12:
	.string	"long long unsigned int"
.LASF53:
	.string	"st_blocks"
.LASF116:
	.string	"inode_release"
.LASF102:
	.string	"offset"
.LASF48:
	.string	"st_mtime"
.LASF101:
	.string	"f_arg"
.LASF92:
	.string	"i_fops"
.LASF119:
	.string	"/home/stone/Documents/pca"
.LASF55:
	.string	"stat"
.LASF38:
	.string	"st_dev"
.LASF4:
	.string	"size_t"
.LASF111:
	.string	"aos_mutex_lock"
.LASF110:
	.string	"g_vfs_mutex"
.LASF20:
	.string	"__mode_t"
.LASF62:
	.string	"d_type"
.LASF68:
	.string	"_Bool"
.LASF43:
	.string	"st_gid"
.LASF40:
	.string	"st_mode"
.LASF90:
	.string	"mkdir"
.LASF103:
	.string	"file_t"
.LASF41:
	.string	"st_nlink"
.LASF105:
	.string	"path"
.LASF79:
	.string	"ioctl"
.LASF72:
	.string	"VFS_TYPE_FS_DEV"
.LASF80:
	.string	"poll"
.LASF59:
	.string	"aos_hdl_t"
.LASF25:
	.string	"char"
.LASF28:
	.string	"blkcnt_t"
.LASF70:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF104:
	.string	"poll_notify_t"
.LASF76:
	.string	"close"
.LASF89:
	.string	"closedir"
.LASF46:
	.string	"st_atime"
.LASF35:
	.string	"ssize_t"
.LASF83:
	.string	"lseek"
.LASF118:
	.string	"src/vfs_register.c"
.LASF26:
	.string	"uint8_t"
.LASF96:
	.string	"type"
.LASF27:
	.string	"time_t"
.LASF82:
	.string	"fs_ops"
.LASF86:
	.string	"rename"
.LASF39:
	.string	"st_ino"
.LASF1:
	.string	"long long int"
.LASF78:
	.string	"write"
.LASF16:
	.string	"__dev_t"
.LASF32:
	.string	"dev_t"
.LASF74:
	.string	"file_ops"
.LASF73:
	.string	"file_ops_t"
.LASF56:
	.string	"pollfd"
.LASF47:
	.string	"st_spare1"
.LASF49:
	.string	"st_spare2"
.LASF51:
	.string	"st_spare3"
.LASF54:
	.string	"st_spare4"
.LASF2:
	.string	"long double"
.LASF18:
	.string	"__gid_t"
.LASF120:
	.string	"inode_ops_t"
.LASF34:
	.string	"gid_t"
.LASF91:
	.string	"i_ops"
.LASF33:
	.string	"uid_t"
.LASF108:
	.string	"aos_unregister_fs"
.LASF58:
	.string	"revents"
.LASF7:
	.string	"short int"
.LASF95:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF121:
	.string	"__stack_chk_fail"
.LASF112:
	.string	"inode_reserve"
.LASF100:
	.string	"node"
.LASF88:
	.string	"readdir"
.LASF107:
	.string	"aos_register_fs"
.LASF14:
	.string	"__blksize_t"
.LASF17:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF77:
	.string	"read"
.LASF65:
	.string	"dd_vfs_fd"
.LASF75:
	.string	"open"
.LASF23:
	.string	"sizetype"
.LASF69:
	.string	"VFS_TYPE_NOT_INIT"
.LASF11:
	.string	"long unsigned int"
.LASF113:
	.string	"aos_mutex_new"
.LASF37:
	.string	"nlink_t"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF117:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF29:
	.string	"blksize_t"
.LASF45:
	.string	"st_size"
.LASF106:
	.string	"aos_register_driver"
.LASF61:
	.string	"d_ino"
.LASF115:
	.string	"aos_free"
.LASF42:
	.string	"st_uid"
.LASF21:
	.string	"__off_t"
.LASF22:
	.string	"_ssize_t"
.LASF66:
	.string	"dd_rsv"
.LASF3:
	.string	"signed char"
.LASF36:
	.string	"mode_t"
.LASF31:
	.string	"off_t"
.LASF8:
	.string	"short unsigned int"
.LASF13:
	.string	"__blkcnt_t"
.LASF15:
	.string	"_off_t"
.LASF44:
	.string	"st_rdev"
.LASF114:
	.string	"aos_mutex_unlock"
.LASF81:
	.string	"fs_ops_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

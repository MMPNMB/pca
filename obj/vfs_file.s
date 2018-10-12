	.file	"vfs_file.c"
	.text
.Ltext0:
	.section	.text.unlikely.new_file,"ax",@progbits
.LCOLDB0:
	.section	.text.new_file,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.new_file
.Ltext_cold0:
	.section	.text.new_file
	.globl	new_file
	.type	new_file, @function
new_file:
.LFB23:
	.file 1 "kernel/vfs/vfs_file.c"
	.loc 1 15 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 15 0
	movl	8(%ebp), %ecx
	.loc 1 19 0
	xorl	%eax, %eax
.LVL1:
.L3:
	.loc 1 22 0
	imull	$12, %eax, %edx
	cmpl	$0, files(%edx)
	je	.L2
	.loc 1 19 0 discriminator 2
	incl	%eax
.LVL2:
	cmpl	$50, %eax
	jne	.L3
	.loc 1 27 0
	xorl	%eax, %eax
.LVL3:
	jmp	.L4
.LVL4:
.L2:
	.loc 1 33 0
	subl	$12, %esp
	.loc 1 20 0
	leal	files(%edx), %ebx
	.loc 1 30 0
	movl	%ecx, files(%edx)
	.loc 1 33 0
	pushl	%ecx
	.loc 1 31 0
	movl	$0, files+4(%edx)
	.loc 1 32 0
	movl	$0, files+8(%edx)
	.loc 1 33 0
	call	inode_ref
.LVL5:
	.loc 1 34 0
	addl	$16, %esp
	.loc 1 20 0
	movl	%ebx, %eax
.L4:
	.loc 1 35 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	new_file, .-new_file
	.section	.text.unlikely.new_file
.LCOLDE0:
	.section	.text.new_file
.LHOTE0:
	.section	.text.unlikely.del_file,"ax",@progbits
.LCOLDB1:
	.section	.text.del_file,"ax",@progbits
.LHOTB1:
	.globl	del_file
	.type	del_file, @function
del_file:
.LFB24:
	.loc 1 38 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 38 0
	movl	8(%ebp), %ebx
	.loc 1 39 0
	pushl	(%ebx)
	call	inode_unref
.LVL7:
	.loc 1 40 0
	movl	$0, (%ebx)
	.loc 1 41 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	del_file, .-del_file
	.section	.text.unlikely.del_file
.LCOLDE1:
	.section	.text.del_file
.LHOTE1:
	.section	.text.unlikely.get_fd,"ax",@progbits
.LCOLDB2:
	.section	.text.get_fd,"ax",@progbits
.LHOTB2:
	.globl	get_fd
	.type	get_fd, @function
get_fd:
.LFB25:
	.loc 1 44 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 45 0
	movl	8(%ebp), %eax
	.loc 1 46 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 45 0
	subl	$files, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	addl	$64, %eax
	.loc 1 46 0
	ret
	.cfi_endproc
.LFE25:
	.size	get_fd, .-get_fd
	.section	.text.unlikely.get_fd
.LCOLDE2:
	.section	.text.get_fd
.LHOTE2:
	.section	.text.unlikely.get_file,"ax",@progbits
.LCOLDB3:
	.section	.text.get_file,"ax",@progbits
.LHOTB3:
	.globl	get_file
	.type	get_file, @function
get_file:
.LFB26:
	.loc 1 49 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 52 0
	movl	8(%ebp), %eax
	leal	-64(%eax), %edx
.LVL10:
	xorl	%eax, %eax
	.loc 1 58 0
	cmpl	$49, %edx
	ja	.L13
	.loc 1 62 0
	imull	$12, %edx, %edx
.LVL11:
	.loc 1 63 0
	cmpl	$0, files(%edx)
	.loc 1 62 0
	leal	files(%edx), %eax
.LVL12:
	.loc 1 63 0
	movl	$0, %edx
	cmove	%edx, %eax
.LVL13:
.L13:
	.loc 1 64 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	get_file, .-get_file
	.section	.text.unlikely.get_file
.LCOLDE3:
	.section	.text.get_file
.LHOTE3:
	.section	.bss.files,"aw",@nobits
	.align 32
	.type	files, @object
	.size	files, 600
files:
	.zero	600
	.text
.Letext0:
	.section	.text.unlikely.new_file
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
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
	.long	0x8ac
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF108
	.byte	0xc
	.long	.LASF109
	.long	.LASF110
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x1c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x20
	.long	0x4c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x2c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x36
	.long	0x3e
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.long	0x45
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x3d
	.long	0x45
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x49
	.long	0x45
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x58
	.long	0x53
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x64
	.long	0xb4
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x91
	.long	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF24
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0xcb
	.long	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF26
	.uleb128 0x3
	.long	.LASF27
	.byte	0x6
	.byte	0x28
	.long	0x4c
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x71
	.long	0x9e
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x76
	.long	0xa9
	.uleb128 0x6
	.byte	0x4
	.long	0x120
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x9b
	.long	0xe0
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0xad
	.long	0xf6
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0xb1
	.long	0xbf
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0xb5
	.long	0xca
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0xb9
	.long	0xd5
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0xc8
	.long	0x101
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0xcd
	.long	0xeb
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0xd2
	.long	0x115
	.uleb128 0x6
	.byte	0x4
	.long	0x1ac
	.uleb128 0x7
	.long	0x120
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
	.long	0x164
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x1e
	.long	0x14e
	.byte	0x2
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x1f
	.long	0x190
	.byte	0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x20
	.long	0x19b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x21
	.long	0x16f
	.byte	0xa
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x22
	.long	0x17a
	.byte	0xc
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x23
	.long	0x164
	.byte	0xe
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x24
	.long	0x159
	.byte	0x10
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x32
	.long	0x127
	.byte	0x14
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x33
	.long	0x4c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x34
	.long	0x127
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x35
	.long	0x4c
	.byte	0x20
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x36
	.long	0x127
	.byte	0x24
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x37
	.long	0x4c
	.byte	0x28
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x38
	.long	0x13d
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x39
	.long	0x132
	.byte	0x30
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x3a
	.long	0x28a
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.long	0x4c
	.long	0x29a
	.uleb128 0xb
	.long	0x10c
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
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x9
	.byte	0x13
	.long	0x3e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF58
	.byte	0x9
	.byte	0x14
	.long	0x3e
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
	.long	0x113
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
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0xb
	.byte	0x12
	.long	0x81
	.byte	0x4
	.uleb128 0x9
	.long	.LASF63
	.byte	0xb
	.byte	0x13
	.long	0x322
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x120
	.long	0x331
	.uleb128 0xe
	.long	0x10c
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
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.byte	0x18
	.long	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0xb
	.byte	0x19
	.long	0x33c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF68
	.uleb128 0x3
	.long	.LASF69
	.byte	0xc
	.byte	0x2b
	.long	0x3cf
	.uleb128 0x8
	.long	.LASF70
	.byte	0x18
	.byte	0xc
	.byte	0x46
	.long	0x3cf
	.uleb128 0x9
	.long	.LASF71
	.byte	0xc
	.byte	0x47
	.long	0x5af
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0xc
	.byte	0x48
	.long	0x5c4
	.byte	0x4
	.uleb128 0x9
	.long	.LASF73
	.byte	0xc
	.byte	0x49
	.long	0x5e3
	.byte	0x8
	.uleb128 0x9
	.long	.LASF74
	.byte	0xc
	.byte	0x4a
	.long	0x609
	.byte	0xc
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x4b
	.long	0x628
	.byte	0x10
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x4d
	.long	0x651
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0x37a
	.uleb128 0x3
	.long	.LASF77
	.byte	0xc
	.byte	0x2c
	.long	0x494
	.uleb128 0x8
	.long	.LASF78
	.byte	0x38
	.byte	0xc
	.byte	0x51
	.long	0x494
	.uleb128 0x9
	.long	.LASF71
	.byte	0xc
	.byte	0x52
	.long	0x670
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0xc
	.byte	0x53
	.long	0x5c4
	.byte	0x4
	.uleb128 0x9
	.long	.LASF73
	.byte	0xc
	.byte	0x54
	.long	0x68f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF74
	.byte	0xc
	.byte	0x55
	.long	0x6ae
	.byte	0xc
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x56
	.long	0x6cd
	.byte	0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0xc
	.byte	0x57
	.long	0x5c4
	.byte	0x14
	.uleb128 0x9
	.long	.LASF55
	.byte	0xc
	.byte	0x58
	.long	0x6f2
	.byte	0x18
	.uleb128 0x9
	.long	.LASF81
	.byte	0xc
	.byte	0x59
	.long	0x70c
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF82
	.byte	0xc
	.byte	0x5a
	.long	0x72b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF83
	.byte	0xc
	.byte	0x5b
	.long	0x74b
	.byte	0x24
	.uleb128 0x9
	.long	.LASF84
	.byte	0xc
	.byte	0x5c
	.long	0x76b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF85
	.byte	0xc
	.byte	0x5d
	.long	0x785
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF86
	.byte	0xc
	.byte	0x5e
	.long	0x70c
	.byte	0x30
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x5f
	.long	0x628
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x3df
	.uleb128 0xf
	.long	.LASF111
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.long	0x4bc
	.uleb128 0x10
	.long	.LASF87
	.byte	0xc
	.byte	0x2f
	.long	0x4bc
	.uleb128 0x10
	.long	.LASF88
	.byte	0xc
	.byte	0x30
	.long	0x4c2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x36f
	.uleb128 0x6
	.byte	0x4
	.long	0x3d4
	.uleb128 0xd
	.byte	0x18
	.byte	0xc
	.byte	0x34
	.long	0x525
	.uleb128 0xc
	.string	"ops"
	.byte	0xc
	.byte	0x35
	.long	0x499
	.byte	0
	.uleb128 0x9
	.long	.LASF89
	.byte	0xc
	.byte	0x36
	.long	0x113
	.byte	0x4
	.uleb128 0x9
	.long	.LASF90
	.byte	0xc
	.byte	0x37
	.long	0x148
	.byte	0x8
	.uleb128 0x9
	.long	.LASF91
	.byte	0xc
	.byte	0x38
	.long	0x73
	.byte	0xc
	.uleb128 0x9
	.long	.LASF92
	.byte	0xc
	.byte	0x39
	.long	0x81
	.byte	0x10
	.uleb128 0x9
	.long	.LASF93
	.byte	0xc
	.byte	0x3a
	.long	0x81
	.byte	0x11
	.uleb128 0x9
	.long	.LASF94
	.byte	0xc
	.byte	0x3b
	.long	0x2ea
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0xc
	.byte	0x3c
	.long	0x4c8
	.uleb128 0xd
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.long	0x55d
	.uleb128 0x9
	.long	.LASF96
	.byte	0xc
	.byte	0x3f
	.long	0x55d
	.byte	0
	.uleb128 0x9
	.long	.LASF97
	.byte	0xc
	.byte	0x40
	.long	0x113
	.byte	0x4
	.uleb128 0x9
	.long	.LASF98
	.byte	0xc
	.byte	0x41
	.long	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x525
	.uleb128 0x3
	.long	.LASF99
	.byte	0xc
	.byte	0x42
	.long	0x530
	.uleb128 0x3
	.long	.LASF100
	.byte	0xc
	.byte	0x45
	.long	0x579
	.uleb128 0x6
	.byte	0x4
	.long	0x57f
	.uleb128 0x11
	.long	0x58f
	.uleb128 0x12
	.long	0x58f
	.uleb128 0x12
	.long	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x29a
	.uleb128 0x13
	.long	0x73
	.long	0x5a9
	.uleb128 0x12
	.long	0x55d
	.uleb128 0x12
	.long	0x5a9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x563
	.uleb128 0x6
	.byte	0x4
	.long	0x595
	.uleb128 0x13
	.long	0x73
	.long	0x5c4
	.uleb128 0x12
	.long	0x5a9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b5
	.uleb128 0x13
	.long	0x185
	.long	0x5e3
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x113
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ca
	.uleb128 0x13
	.long	0x185
	.long	0x602
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x602
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x608
	.uleb128 0x14
	.uleb128 0x6
	.byte	0x4
	.long	0x5e9
	.uleb128 0x13
	.long	0x73
	.long	0x628
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x73
	.uleb128 0x12
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x60f
	.uleb128 0x13
	.long	0x73
	.long	0x651
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x368
	.uleb128 0x12
	.long	0x56e
	.uleb128 0x12
	.long	0x58f
	.uleb128 0x12
	.long	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62e
	.uleb128 0x13
	.long	0x73
	.long	0x670
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x1a6
	.uleb128 0x12
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x657
	.uleb128 0x13
	.long	0x185
	.long	0x68f
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x148
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x676
	.uleb128 0x13
	.long	0x185
	.long	0x6ae
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x1a6
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x695
	.uleb128 0x13
	.long	0x159
	.long	0x6cd
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x159
	.uleb128 0x12
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6b4
	.uleb128 0x13
	.long	0x73
	.long	0x6ec
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x1a6
	.uleb128 0x12
	.long	0x6ec
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b1
	.uleb128 0x6
	.byte	0x4
	.long	0x6d3
	.uleb128 0x13
	.long	0x73
	.long	0x70c
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6f8
	.uleb128 0x13
	.long	0x73
	.long	0x72b
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x1a6
	.uleb128 0x12
	.long	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x712
	.uleb128 0x13
	.long	0x745
	.long	0x745
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x35d
	.uleb128 0x6
	.byte	0x4
	.long	0x731
	.uleb128 0x13
	.long	0x765
	.long	0x765
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x745
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x331
	.uleb128 0x6
	.byte	0x4
	.long	0x751
	.uleb128 0x13
	.long	0x73
	.long	0x785
	.uleb128 0x12
	.long	0x5a9
	.uleb128 0x12
	.long	0x745
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x771
	.uleb128 0x15
	.long	.LASF102
	.byte	0x1
	.byte	0xe
	.long	0x5a9
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e3
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.byte	0xe
	.long	0x55d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x10
	.long	0x5a9
	.long	.LLST0
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.byte	0x11
	.long	0x73
	.long	.LLST1
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.byte	0x1d
	.long	.L2
	.uleb128 0x19
	.long	.LVL5
	.long	0x899
	.byte	0
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.byte	0x25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x810
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.byte	0x25
	.long	0x5a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LVL7
	.long	0x8a4
	.byte	0
	.uleb128 0x15
	.long	.LASF103
	.byte	0x1
	.byte	0x2b
	.long	0x73
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x838
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.byte	0x2b
	.long	0x5a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.byte	0x30
	.long	0x5a9
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x86d
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0x30
	.long	0x73
	.long	.LLST2
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x32
	.long	0x5a9
	.long	.LLST3
	.byte	0
	.uleb128 0xa
	.long	0x563
	.long	0x87d
	.uleb128 0xb
	.long	0x10c
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.long	.LASF105
	.byte	0x1
	.byte	0xc
	.long	0x86d
	.uleb128 0x5
	.byte	0x3
	.long	files
	.uleb128 0x1d
	.long	.LASF114
	.byte	0xd
	.byte	0x17
	.long	0x7a
	.uleb128 0x1e
	.long	.LASF106
	.long	.LASF106
	.byte	0xc
	.byte	0x68
	.uleb128 0x1e
	.long	.LASF107
	.long	.LASF107
	.byte	0xc
	.byte	0x69
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.long	.LVL1
	.long	.LVL2
	.value	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	files
	.byte	0x22
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.value	0xb
	.byte	0x70
	.sleb128 -1
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	files
	.byte	0x22
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5-1
	.value	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	files
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LFE26
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"close"
.LASF84:
	.string	"readdir"
.LASF74:
	.string	"write"
.LASF97:
	.string	"f_arg"
.LASF99:
	.string	"file_t"
.LASF56:
	.string	"pollfd"
.LASF91:
	.string	"i_flags"
.LASF21:
	.string	"__mode_t"
.LASF89:
	.string	"i_arg"
.LASF50:
	.string	"st_ctime"
.LASF24:
	.string	"sizetype"
.LASF111:
	.string	"inode_ops_t"
.LASF6:
	.string	"__uint32_t"
.LASF38:
	.string	"st_dev"
.LASF101:
	.string	"file"
.LASF44:
	.string	"st_rdev"
.LASF90:
	.string	"i_name"
.LASF59:
	.string	"aos_hdl_t"
.LASF81:
	.string	"unlink"
.LASF88:
	.string	"i_fops"
.LASF11:
	.string	"uint8_t"
.LASF82:
	.string	"rename"
.LASF79:
	.string	"lseek"
.LASF65:
	.string	"dd_vfs_fd"
.LASF108:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF2:
	.string	"short int"
.LASF66:
	.string	"dd_rsv"
.LASF83:
	.string	"opendir"
.LASF62:
	.string	"d_type"
.LASF52:
	.string	"st_blksize"
.LASF73:
	.string	"read"
.LASF16:
	.string	"_off_t"
.LASF8:
	.string	"long long int"
.LASF43:
	.string	"st_gid"
.LASF30:
	.string	"ino_t"
.LASF23:
	.string	"_ssize_t"
.LASF64:
	.string	"aos_dirent_t"
.LASF4:
	.string	"long int"
.LASF98:
	.string	"offset"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"__nlink_t"
.LASF107:
	.string	"inode_unref"
.LASF5:
	.string	"__uint8_t"
.LASF67:
	.string	"aos_dir_t"
.LASF114:
	.string	"aos_log_level"
.LASF31:
	.string	"off_t"
.LASF58:
	.string	"revents"
.LASF96:
	.string	"node"
.LASF106:
	.string	"inode_ref"
.LASF32:
	.string	"dev_t"
.LASF13:
	.string	"long double"
.LASF39:
	.string	"st_ino"
.LASF70:
	.string	"file_ops"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF92:
	.string	"type"
.LASF36:
	.string	"mode_t"
.LASF10:
	.string	"unsigned int"
.LASF41:
	.string	"st_nlink"
.LASF33:
	.string	"uid_t"
.LASF75:
	.string	"ioctl"
.LASF7:
	.string	"long unsigned int"
.LASF78:
	.string	"fs_ops"
.LASF85:
	.string	"closedir"
.LASF15:
	.string	"__blksize_t"
.LASF94:
	.string	"mutex"
.LASF29:
	.string	"blksize_t"
.LASF3:
	.string	"short unsigned int"
.LASF48:
	.string	"st_mtime"
.LASF34:
	.string	"gid_t"
.LASF26:
	.string	"char"
.LASF61:
	.string	"d_ino"
.LASF12:
	.string	"size_t"
.LASF42:
	.string	"st_uid"
.LASF68:
	.string	"_Bool"
.LASF53:
	.string	"st_blocks"
.LASF69:
	.string	"file_ops_t"
.LASF95:
	.string	"inode_t"
.LASF37:
	.string	"nlink_t"
.LASF20:
	.string	"__ino_t"
.LASF93:
	.string	"refs"
.LASF103:
	.string	"get_fd"
.LASF63:
	.string	"d_name"
.LASF45:
	.string	"st_size"
.LASF80:
	.string	"sync"
.LASF47:
	.string	"st_spare1"
.LASF49:
	.string	"st_spare2"
.LASF51:
	.string	"st_spare3"
.LASF54:
	.string	"st_spare4"
.LASF60:
	.string	"aos_mutex_t"
.LASF27:
	.string	"time_t"
.LASF76:
	.string	"poll"
.LASF102:
	.string	"new_file"
.LASF22:
	.string	"__off_t"
.LASF17:
	.string	"__dev_t"
.LASF109:
	.string	"src/vfs_file.c"
.LASF112:
	.string	"got_file"
.LASF28:
	.string	"blkcnt_t"
.LASF71:
	.string	"open"
.LASF35:
	.string	"ssize_t"
.LASF57:
	.string	"events"
.LASF18:
	.string	"__uid_t"
.LASF110:
	.string	"/home/stone/Documents/pca"
.LASF104:
	.string	"get_file"
.LASF55:
	.string	"stat"
.LASF40:
	.string	"st_mode"
.LASF113:
	.string	"del_file"
.LASF77:
	.string	"fs_ops_t"
.LASF105:
	.string	"files"
.LASF86:
	.string	"mkdir"
.LASF14:
	.string	"__blkcnt_t"
.LASF100:
	.string	"poll_notify_t"
.LASF19:
	.string	"__gid_t"
.LASF46:
	.string	"st_atime"
.LASF87:
	.string	"i_ops"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"vfs_i2c.c"
	.text
.Ltext0:
	.section	.text.unlikely.vfs_i2c_open,"ax",@progbits
.LCOLDB0:
	.section	.text.vfs_i2c_open,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.vfs_i2c_open
.Ltext_cold0:
	.section	.text.vfs_i2c_open
	.globl	vfs_i2c_open
	.type	vfs_i2c_open, @function
vfs_i2c_open:
.LFB16:
	.file 1 "kernel/vfs/device/vfs_i2c.c"
	.loc 1 19 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 19 0
	movl	12(%ebp), %eax
	.loc 1 24 0
	testl	%eax, %eax
	je	.L4
	.loc 1 24 0 discriminator 1
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L4
	.loc 1 35 0
	xorl	%eax, %eax
	.loc 1 27 0
	cmpb	$1, 17(%edx)
	jne	.L2
.LVL1:
	.loc 1 33 0
	movl	4(%edx), %eax
	movl	%eax, 8(%ebp)
.LVL2:
	.loc 1 42 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 33 0
	jmp	hal_i2c_init
.LVL3:
.L4:
	.cfi_restore_state
	.loc 1 38 0
	movl	$-22, %eax
.LVL4:
.L2:
	.loc 1 42 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	vfs_i2c_open, .-vfs_i2c_open
	.section	.text.unlikely.vfs_i2c_open
.LCOLDE0:
	.section	.text.vfs_i2c_open
.LHOTE0:
	.section	.text.unlikely.vfs_i2c_close,"ax",@progbits
.LCOLDB1:
	.section	.text.vfs_i2c_close,"ax",@progbits
.LHOTB1:
	.globl	vfs_i2c_close
	.type	vfs_i2c_close, @function
vfs_i2c_close:
.LFB17:
	.loc 1 45 0
	.cfi_startproc
.LVL5:
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
	.loc 1 72 0
	movl	$-22, %ebx
	.loc 1 45 0
	subl	$12, %esp
	.loc 1 45 0
	movl	8(%ebp), %esi
	.loc 1 50 0
	testl	%esi, %esi
	je	.L9
	.loc 1 50 0 discriminator 1
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 69 0
	xorl	%ebx, %ebx
	.loc 1 53 0
	cmpb	$1, 17(%eax)
	jne	.L9
	.loc 1 56 0
	movl	4(%eax), %edi
.LVL6:
	.loc 1 59 0
	addl	$20, %eax
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL7:
	.loc 1 60 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 59 0
	movl	%eax, %ebx
.LVL8:
	.loc 1 60 0
	jne	.L10
	.loc 1 63 0
	subl	$12, %esp
	pushl	%edi
	call	hal_i2c_finalize
.LVL9:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL10:
.L10:
	.loc 1 67 0
	movl	(%esi), %eax
.LVL11:
	subl	$12, %esp
	addl	$20, %eax
	pushl	%eax
	call	aos_mutex_unlock
.LVL12:
	addl	$16, %esp
.LVL13:
.L9:
	.loc 1 76 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL14:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	vfs_i2c_close, .-vfs_i2c_close
	.section	.text.unlikely.vfs_i2c_close
.LCOLDE1:
	.section	.text.vfs_i2c_close
.LHOTE1:
	.section	.text.unlikely.vfs_i2c_read,"ax",@progbits
.LCOLDB2:
	.section	.text.vfs_i2c_read,"ax",@progbits
.LHOTB2:
	.globl	vfs_i2c_read
	.type	vfs_i2c_read, @function
vfs_i2c_read:
.LFB18:
	.loc 1 79 0
	.cfi_startproc
.LVL15:
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
	.loc 1 110 0
	movl	$-22, %edi
	.loc 1 79 0
	subl	$28, %esp
	.loc 1 79 0
	movl	8(%ebp), %ebx
	.loc 1 85 0
	testl	%ebx, %ebx
	je	.L16
	.loc 1 85 0 discriminator 1
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L16
	.loc 1 88 0
	movl	4(%eax), %edx
.LVL16:
	.loc 1 94 0
	addl	$20, %eax
	.loc 1 91 0
	movzwl	14(%edx), %esi
	movl	%edx, -28(%ebp)
.LVL17:
.LVL18:
	.loc 1 94 0
	pushl	%edx
.LVL19:
	pushl	%edx
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL20:
	.loc 1 95 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 94 0
	movl	%eax, %edi
.LVL21:
	.loc 1 95 0
	movl	-28(%ebp), %edx
	jne	.L17
	.loc 1 98 0
	movzwl	16(%ebp), %eax
.LVL22:
	subl	$12, %esp
	pushl	$-1
	pushl	%eax
	pushl	12(%ebp)
	pushl	%esi
	pushl	%edx
	call	hal_i2c_master_recv
.LVL23:
	.loc 1 102 0
	addl	$32, %esp
	.loc 1 98 0
	movl	%eax, %edi
.LVL24:
	.loc 1 103 0
	testl	%eax, %eax
	cmove	16(%ebp), %edi
.L17:
.LVL25:
	.loc 1 108 0
	movl	(%ebx), %eax
	subl	$12, %esp
	addl	$20, %eax
	pushl	%eax
	call	aos_mutex_unlock
.LVL26:
	addl	$16, %esp
.LVL27:
.L16:
	.loc 1 114 0
	leal	-12(%ebp), %esp
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL28:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	vfs_i2c_read, .-vfs_i2c_read
	.section	.text.unlikely.vfs_i2c_read
.LCOLDE2:
	.section	.text.vfs_i2c_read
.LHOTE2:
	.section	.text.unlikely.vfs_i2c_write,"ax",@progbits
.LCOLDB3:
	.section	.text.vfs_i2c_write,"ax",@progbits
.LHOTB3:
	.globl	vfs_i2c_write
	.type	vfs_i2c_write, @function
vfs_i2c_write:
.LFB19:
	.loc 1 117 0
	.cfi_startproc
.LVL29:
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
	.loc 1 148 0
	movl	$-22, %edi
	.loc 1 117 0
	subl	$28, %esp
	.loc 1 117 0
	movl	8(%ebp), %ebx
	.loc 1 123 0
	testl	%ebx, %ebx
	je	.L22
	.loc 1 123 0 discriminator 1
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L22
	.loc 1 126 0
	movl	4(%eax), %edx
.LVL30:
	.loc 1 132 0
	addl	$20, %eax
	.loc 1 129 0
	movzwl	14(%edx), %esi
	movl	%edx, -28(%ebp)
.LVL31:
.LVL32:
	.loc 1 132 0
	pushl	%edx
.LVL33:
	pushl	%edx
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL34:
	.loc 1 133 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 132 0
	movl	%eax, %edi
.LVL35:
	.loc 1 133 0
	movl	-28(%ebp), %edx
	jne	.L23
	.loc 1 136 0
	movzwl	16(%ebp), %eax
.LVL36:
	subl	$12, %esp
	pushl	$-1
	pushl	%eax
	pushl	12(%ebp)
	pushl	%esi
	pushl	%edx
	call	hal_i2c_master_send
.LVL37:
	.loc 1 140 0
	addl	$32, %esp
	.loc 1 136 0
	movl	%eax, %edi
.LVL38:
	.loc 1 141 0
	testl	%eax, %eax
	cmove	16(%ebp), %edi
.L23:
.LVL39:
	.loc 1 146 0
	movl	(%ebx), %eax
	subl	$12, %esp
	addl	$20, %eax
	pushl	%eax
	call	aos_mutex_unlock
.LVL40:
	addl	$16, %esp
.LVL41:
.L22:
	.loc 1 152 0
	leal	-12(%ebp), %esp
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL42:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	vfs_i2c_write, .-vfs_i2c_write
	.section	.text.unlikely.vfs_i2c_write
.LCOLDE3:
	.section	.text.vfs_i2c_write
.LHOTE3:
	.globl	i2c_ops
	.section	.rodata.i2c_ops,"a",@progbits
	.align 4
	.type	i2c_ops, @object
	.size	i2c_ops, 20
i2c_ops:
	.long	vfs_i2c_open
	.long	vfs_i2c_close
	.long	vfs_i2c_read
	.long	vfs_i2c_write
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.vfs_i2c_open
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 9 "./include/aos/kernel.h"
	.file 10 "./include/aos/vfs.h"
	.file 11 "././kernel/vfs/device/../include/vfs_inode.h"
	.file 12 "./include/hal/soc/i2c.h"
	.file 13 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9d8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF124
	.byte	0xc
	.long	.LASF125
	.long	.LASF126
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
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
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x2b
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x41
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
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
	.byte	0x24
	.long	0x45
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x30
	.long	0x5e
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0xd8
	.long	0x85
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF16
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x1c
	.long	0x57
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x20
	.long	0x57
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x2c
	.long	0x57
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x36
	.long	0x3e
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x3a
	.long	0x50
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.long	0x50
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x49
	.long	0x50
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x58
	.long	0x5e
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x64
	.long	0xd5
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x91
	.long	0x7e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF27
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF28
	.byte	0x5
	.byte	0xcb
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF29
	.uleb128 0x6
	.byte	0x4
	.long	0x141
	.uleb128 0x6
	.byte	0x4
	.long	0x154
	.uleb128 0x7
	.long	0x141
	.uleb128 0x3
	.long	.LASF30
	.byte	0x6
	.byte	0x28
	.long	0x57
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0x71
	.long	0xbf
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0x76
	.long	0xca
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0x9b
	.long	0x101
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0xad
	.long	0x117
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0xb1
	.long	0xe0
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0xb5
	.long	0xeb
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0xb9
	.long	0xf6
	.uleb128 0x3
	.long	.LASF38
	.byte	0x7
	.byte	0xc8
	.long	0x122
	.uleb128 0x3
	.long	.LASF39
	.byte	0x7
	.byte	0xcd
	.long	0x10c
	.uleb128 0x3
	.long	.LASF40
	.byte	0x7
	.byte	0xd2
	.long	0x136
	.uleb128 0x8
	.long	.LASF69
	.byte	0x3c
	.byte	0x8
	.byte	0x1b
	.long	0x2ab
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x1d
	.long	0x190
	.byte	0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x1e
	.long	0x17a
	.byte	0x2
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x1f
	.long	0x1bc
	.byte	0x4
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x20
	.long	0x1c7
	.byte	0x8
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x21
	.long	0x19b
	.byte	0xa
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x22
	.long	0x1a6
	.byte	0xc
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x23
	.long	0x190
	.byte	0xe
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x24
	.long	0x185
	.byte	0x10
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x32
	.long	0x159
	.byte	0x14
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x33
	.long	0x57
	.byte	0x18
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x34
	.long	0x159
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x35
	.long	0x57
	.byte	0x20
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x36
	.long	0x159
	.byte	0x24
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x37
	.long	0x57
	.byte	0x28
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0x38
	.long	0x16f
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.byte	0x39
	.long	0x164
	.byte	0x30
	.uleb128 0x9
	.long	.LASF57
	.byte	0x8
	.byte	0x3a
	.long	0x2ab
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.long	0x57
	.long	0x2bb
	.uleb128 0xb
	.long	0x12d
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0x2d0
	.uleb128 0xd
	.string	"hdl"
	.byte	0x9
	.byte	0x14
	.long	0x134
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF58
	.byte	0x9
	.byte	0x15
	.long	0x2bb
	.uleb128 0x3
	.long	.LASF59
	.byte	0x9
	.byte	0x18
	.long	0x2d0
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.long	0x313
	.uleb128 0x9
	.long	.LASF60
	.byte	0xa
	.byte	0x11
	.long	0x7e
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0xa
	.byte	0x12
	.long	0x8c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF62
	.byte	0xa
	.byte	0x13
	.long	0x313
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x141
	.long	0x322
	.uleb128 0xe
	.long	0x12d
	.byte	0
	.uleb128 0x3
	.long	.LASF63
	.byte	0xa
	.byte	0x14
	.long	0x2e6
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.long	0x34e
	.uleb128 0x9
	.long	.LASF64
	.byte	0xa
	.byte	0x17
	.long	0x7e
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0xa
	.byte	0x18
	.long	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0xa
	.byte	0x19
	.long	0x32d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF67
	.uleb128 0x3
	.long	.LASF68
	.byte	0xb
	.byte	0x2b
	.long	0x3b4
	.uleb128 0x8
	.long	.LASF70
	.byte	0x14
	.byte	0xb
	.byte	0x46
	.long	0x3b4
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x47
	.long	0x56d
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x48
	.long	0x582
	.byte	0x4
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x49
	.long	0x5a1
	.byte	0x8
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x4a
	.long	0x5c7
	.byte	0xc
	.uleb128 0x9
	.long	.LASF75
	.byte	0xb
	.byte	0x4b
	.long	0x5e6
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x36b
	.uleb128 0x3
	.long	.LASF76
	.byte	0xb
	.byte	0x2c
	.long	0x479
	.uleb128 0x8
	.long	.LASF77
	.byte	0x38
	.byte	0xb
	.byte	0x51
	.long	0x479
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x52
	.long	0x605
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x53
	.long	0x582
	.byte	0x4
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x54
	.long	0x624
	.byte	0x8
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.byte	0x55
	.long	0x643
	.byte	0xc
	.uleb128 0x9
	.long	.LASF78
	.byte	0xb
	.byte	0x56
	.long	0x662
	.byte	0x10
	.uleb128 0x9
	.long	.LASF79
	.byte	0xb
	.byte	0x57
	.long	0x582
	.byte	0x14
	.uleb128 0x9
	.long	.LASF69
	.byte	0xb
	.byte	0x58
	.long	0x687
	.byte	0x18
	.uleb128 0x9
	.long	.LASF80
	.byte	0xb
	.byte	0x59
	.long	0x6a1
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF81
	.byte	0xb
	.byte	0x5a
	.long	0x6c0
	.byte	0x20
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0x5b
	.long	0x6e0
	.byte	0x24
	.uleb128 0x9
	.long	.LASF83
	.byte	0xb
	.byte	0x5c
	.long	0x700
	.byte	0x28
	.uleb128 0x9
	.long	.LASF84
	.byte	0xb
	.byte	0x5d
	.long	0x71a
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF85
	.byte	0xb
	.byte	0x5e
	.long	0x6a1
	.byte	0x30
	.uleb128 0x9
	.long	.LASF75
	.byte	0xb
	.byte	0x5f
	.long	0x5e6
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x3c4
	.uleb128 0xf
	.long	.LASF127
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x4a1
	.uleb128 0x10
	.long	.LASF86
	.byte	0xb
	.byte	0x2f
	.long	0x4a1
	.uleb128 0x10
	.long	.LASF87
	.byte	0xb
	.byte	0x30
	.long	0x4a7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x360
	.uleb128 0x6
	.byte	0x4
	.long	0x3b9
	.uleb128 0xc
	.byte	0x18
	.byte	0xb
	.byte	0x34
	.long	0x50a
	.uleb128 0xd
	.string	"ops"
	.byte	0xb
	.byte	0x35
	.long	0x47e
	.byte	0
	.uleb128 0x9
	.long	.LASF88
	.byte	0xb
	.byte	0x36
	.long	0x134
	.byte	0x4
	.uleb128 0x9
	.long	.LASF89
	.byte	0xb
	.byte	0x37
	.long	0x148
	.byte	0x8
	.uleb128 0x9
	.long	.LASF90
	.byte	0xb
	.byte	0x38
	.long	0x7e
	.byte	0xc
	.uleb128 0x9
	.long	.LASF91
	.byte	0xb
	.byte	0x39
	.long	0x8c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF92
	.byte	0xb
	.byte	0x3a
	.long	0x8c
	.byte	0x11
	.uleb128 0x9
	.long	.LASF93
	.byte	0xb
	.byte	0x3b
	.long	0x2db
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0xb
	.byte	0x3c
	.long	0x4ad
	.uleb128 0xc
	.byte	0xc
	.byte	0xb
	.byte	0x3e
	.long	0x542
	.uleb128 0x9
	.long	.LASF95
	.byte	0xb
	.byte	0x3f
	.long	0x542
	.byte	0
	.uleb128 0x9
	.long	.LASF96
	.byte	0xb
	.byte	0x40
	.long	0x134
	.byte	0x4
	.uleb128 0x9
	.long	.LASF97
	.byte	0xb
	.byte	0x41
	.long	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x50a
	.uleb128 0x3
	.long	.LASF98
	.byte	0xb
	.byte	0x42
	.long	0x515
	.uleb128 0x11
	.long	0x7e
	.long	0x567
	.uleb128 0x12
	.long	0x542
	.uleb128 0x12
	.long	0x567
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x548
	.uleb128 0x6
	.byte	0x4
	.long	0x553
	.uleb128 0x11
	.long	0x7e
	.long	0x582
	.uleb128 0x12
	.long	0x567
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x573
	.uleb128 0x11
	.long	0x1b1
	.long	0x5a1
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x134
	.uleb128 0x12
	.long	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x588
	.uleb128 0x11
	.long	0x1b1
	.long	0x5c0
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x5c0
	.uleb128 0x12
	.long	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5c6
	.uleb128 0x13
	.uleb128 0x6
	.byte	0x4
	.long	0x5a7
	.uleb128 0x11
	.long	0x7e
	.long	0x5e6
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x7e
	.uleb128 0x12
	.long	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5cd
	.uleb128 0x11
	.long	0x7e
	.long	0x605
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x14e
	.uleb128 0x12
	.long	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ec
	.uleb128 0x11
	.long	0x1b1
	.long	0x624
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x148
	.uleb128 0x12
	.long	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x60b
	.uleb128 0x11
	.long	0x1b1
	.long	0x643
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x14e
	.uleb128 0x12
	.long	0xad
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62a
	.uleb128 0x11
	.long	0x185
	.long	0x662
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x185
	.uleb128 0x12
	.long	0x7e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x649
	.uleb128 0x11
	.long	0x7e
	.long	0x681
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x14e
	.uleb128 0x12
	.long	0x681
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d2
	.uleb128 0x6
	.byte	0x4
	.long	0x668
	.uleb128 0x11
	.long	0x7e
	.long	0x6a1
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x14e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x68d
	.uleb128 0x11
	.long	0x7e
	.long	0x6c0
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x14e
	.uleb128 0x12
	.long	0x14e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6a7
	.uleb128 0x11
	.long	0x6da
	.long	0x6da
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x14e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x34e
	.uleb128 0x6
	.byte	0x4
	.long	0x6c6
	.uleb128 0x11
	.long	0x6fa
	.long	0x6fa
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x6da
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x322
	.uleb128 0x6
	.byte	0x4
	.long	0x6e6
	.uleb128 0x11
	.long	0x7e
	.long	0x71a
	.uleb128 0x12
	.long	0x567
	.uleb128 0x12
	.long	0x6da
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x706
	.uleb128 0xc
	.byte	0xc
	.byte	0xc
	.byte	0xf
	.long	0x759
	.uleb128 0x9
	.long	.LASF99
	.byte	0xc
	.byte	0x10
	.long	0xa2
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0xc
	.byte	0x11
	.long	0xa2
	.byte	0x4
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0x12
	.long	0x8c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF102
	.byte	0xc
	.byte	0x13
	.long	0x97
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.long	.LASF103
	.byte	0xc
	.byte	0x14
	.long	0x720
	.uleb128 0xc
	.byte	0x14
	.byte	0xc
	.byte	0x16
	.long	0x791
	.uleb128 0x9
	.long	.LASF104
	.byte	0xc
	.byte	0x17
	.long	0x8c
	.byte	0
	.uleb128 0x9
	.long	.LASF105
	.byte	0xc
	.byte	0x18
	.long	0x759
	.byte	0x4
	.uleb128 0x9
	.long	.LASF106
	.byte	0xc
	.byte	0x19
	.long	0x134
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF107
	.byte	0xc
	.byte	0x1a
	.long	0x764
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF108
	.uleb128 0x14
	.long	.LASF111
	.byte	0x1
	.byte	0x12
	.long	0x7e
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x801
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0x12
	.long	0x542
	.long	.LLST0
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0x12
	.long	0x567
	.long	.LLST1
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x14
	.long	0x7e
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0x15
	.long	0x801
	.long	.LLST3
	.uleb128 0x19
	.long	.LVL3
	.long	0x999
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x791
	.uleb128 0x14
	.long	.LASF112
	.byte	0x1
	.byte	0x2c
	.long	0x7e
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x867
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x2c
	.long	0x567
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x2e
	.long	0x7e
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0x2f
	.long	0x801
	.long	.LLST5
	.uleb128 0x1b
	.long	.LVL7
	.long	0x9a4
	.uleb128 0x1b
	.long	.LVL9
	.long	0x9af
	.uleb128 0x1b
	.long	.LVL12
	.long	0x9ba
	.byte	0
	.uleb128 0x14
	.long	.LASF113
	.byte	0x1
	.byte	0x4e
	.long	0x1b1
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f2
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x4e
	.long	0x567
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x4e
	.long	0x134
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.byte	0x4e
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x50
	.long	0x7e
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0x51
	.long	0x801
	.long	.LLST7
	.uleb128 0x18
	.long	.LASF102
	.byte	0x1
	.byte	0x52
	.long	0x97
	.long	.LLST8
	.uleb128 0x1b
	.long	.LVL20
	.long	0x9a4
	.uleb128 0x1b
	.long	.LVL23
	.long	0x9c5
	.uleb128 0x1b
	.long	.LVL26
	.long	0x9ba
	.byte	0
	.uleb128 0x14
	.long	.LASF115
	.byte	0x1
	.byte	0x74
	.long	0x1b1
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x97d
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x74
	.long	0x567
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x74
	.long	0x5c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.byte	0x74
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x76
	.long	0x7e
	.long	.LLST9
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0x77
	.long	0x801
	.long	.LLST10
	.uleb128 0x18
	.long	.LASF102
	.byte	0x1
	.byte	0x78
	.long	0x97
	.long	.LLST11
	.uleb128 0x1b
	.long	.LVL34
	.long	0x9a4
	.uleb128 0x1b
	.long	.LVL37
	.long	0x9d0
	.uleb128 0x1b
	.long	.LVL40
	.long	0x9ba
	.byte	0
	.uleb128 0x1d
	.long	.LASF116
	.byte	0xd
	.byte	0x17
	.long	0x85
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x1
	.byte	0xa
	.long	0x3b4
	.uleb128 0x5
	.byte	0x3
	.long	i2c_ops
	.uleb128 0x1f
	.long	.LASF118
	.long	.LASF118
	.byte	0xc
	.byte	0x24
	.uleb128 0x1f
	.long	.LASF119
	.long	.LASF119
	.byte	0x9
	.byte	0x9e
	.uleb128 0x1f
	.long	.LASF120
	.long	.LASF120
	.byte	0xc
	.byte	0x89
	.uleb128 0x1f
	.long	.LASF121
	.long	.LASF121
	.byte	0x9
	.byte	0xa7
	.uleb128 0x1f
	.long	.LASF122
	.long	.LASF122
	.byte	0xc
	.byte	0x41
	.uleb128 0x1f
	.long	.LASF123
	.long	.LASF123
	.byte	0xc
	.byte	0x32
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
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
	.long	.LVL3
	.long	.LFE16
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE16
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL4
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL4
	.long	.LFE16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.value	0x2
	.byte	0x72
	.sleb128 4
	.long	.LVL2
	.long	.LVL3-1
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LFE16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL8
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	.LVL9-1
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL14
	.long	.LFE17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL13
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL21
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x57
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL28
	.value	0x1
	.byte	0x57
	.long	.LVL28
	.long	.LFE18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18
	.value	0x1
	.byte	0x52
	.long	.LVL18
	.long	.LVL19
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL19
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL17
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL27
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL29
	.long	.LVL35
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL38
	.value	0x1
	.byte	0x57
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	.LVL42
	.long	.LFE19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL32
	.value	0x1
	.byte	0x52
	.long	.LVL32
	.long	.LVL33
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL33
	.long	.LVL41
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST11:
	.long	.LVL29
	.long	.LVL31
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL41
	.value	0x1
	.byte	0x56
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
.LASF63:
	.string	"aos_dirent_t"
.LASF123:
	.string	"hal_i2c_master_send"
.LASF110:
	.string	"i2c_dev"
.LASF94:
	.string	"inode_t"
.LASF66:
	.string	"aos_dir_t"
.LASF11:
	.string	"unsigned int"
.LASF55:
	.string	"st_blksize"
.LASF92:
	.string	"refs"
.LASF82:
	.string	"opendir"
.LASF79:
	.string	"sync"
.LASF117:
	.string	"i2c_ops"
.LASF28:
	.string	"__nlink_t"
.LASF89:
	.string	"i_name"
.LASF101:
	.string	"mode"
.LASF62:
	.string	"d_name"
.LASF23:
	.string	"__ino_t"
.LASF59:
	.string	"aos_mutex_t"
.LASF33:
	.string	"ino_t"
.LASF14:
	.string	"uint32_t"
.LASF108:
	.string	"float"
.LASF93:
	.string	"mutex"
.LASF88:
	.string	"i_arg"
.LASF53:
	.string	"st_ctime"
.LASF80:
	.string	"unlink"
.LASF116:
	.string	"aos_log_level"
.LASF10:
	.string	"long long unsigned int"
.LASF56:
	.string	"st_blocks"
.LASF97:
	.string	"offset"
.LASF51:
	.string	"st_mtime"
.LASF96:
	.string	"f_arg"
.LASF4:
	.string	"__uint16_t"
.LASF87:
	.string	"i_fops"
.LASF126:
	.string	"/home/stone/Documents/pca"
.LASF69:
	.string	"stat"
.LASF41:
	.string	"st_dev"
.LASF15:
	.string	"size_t"
.LASF119:
	.string	"aos_mutex_lock"
.LASF24:
	.string	"__mode_t"
.LASF61:
	.string	"d_type"
.LASF67:
	.string	"_Bool"
.LASF46:
	.string	"st_gid"
.LASF43:
	.string	"st_mode"
.LASF85:
	.string	"mkdir"
.LASF98:
	.string	"file_t"
.LASF44:
	.string	"st_nlink"
.LASF100:
	.string	"freq"
.LASF75:
	.string	"ioctl"
.LASF58:
	.string	"aos_hdl_t"
.LASF106:
	.string	"priv"
.LASF29:
	.string	"char"
.LASF31:
	.string	"blkcnt_t"
.LASF111:
	.string	"vfs_i2c_open"
.LASF118:
	.string	"hal_i2c_init"
.LASF125:
	.string	"src/vfs_i2c.c"
.LASF72:
	.string	"close"
.LASF49:
	.string	"st_atime"
.LASF38:
	.string	"ssize_t"
.LASF78:
	.string	"lseek"
.LASF12:
	.string	"uint8_t"
.LASF91:
	.string	"type"
.LASF30:
	.string	"time_t"
.LASF77:
	.string	"fs_ops"
.LASF81:
	.string	"rename"
.LASF42:
	.string	"st_ino"
.LASF120:
	.string	"hal_i2c_finalize"
.LASF9:
	.string	"long long int"
.LASF74:
	.string	"write"
.LASF112:
	.string	"vfs_i2c_close"
.LASF20:
	.string	"__dev_t"
.LASF113:
	.string	"vfs_i2c_read"
.LASF35:
	.string	"dev_t"
.LASF70:
	.string	"file_ops"
.LASF68:
	.string	"file_ops_t"
.LASF114:
	.string	"nbytes"
.LASF50:
	.string	"st_spare1"
.LASF52:
	.string	"st_spare2"
.LASF54:
	.string	"st_spare3"
.LASF57:
	.string	"st_spare4"
.LASF16:
	.string	"long double"
.LASF22:
	.string	"__gid_t"
.LASF13:
	.string	"uint16_t"
.LASF127:
	.string	"inode_ops_t"
.LASF37:
	.string	"gid_t"
.LASF86:
	.string	"i_ops"
.LASF36:
	.string	"uid_t"
.LASF105:
	.string	"config"
.LASF84:
	.string	"closedir"
.LASF2:
	.string	"short int"
.LASF115:
	.string	"vfs_i2c_write"
.LASF107:
	.string	"i2c_dev_t"
.LASF90:
	.string	"i_flags"
.LASF6:
	.string	"long int"
.LASF102:
	.string	"dev_addr"
.LASF95:
	.string	"node"
.LASF83:
	.string	"readdir"
.LASF18:
	.string	"__blksize_t"
.LASF21:
	.string	"__uid_t"
.LASF3:
	.string	"__uint8_t"
.LASF122:
	.string	"hal_i2c_master_recv"
.LASF73:
	.string	"read"
.LASF64:
	.string	"dd_vfs_fd"
.LASF71:
	.string	"open"
.LASF27:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF103:
	.string	"i2c_config_t"
.LASF104:
	.string	"port"
.LASF40:
	.string	"nlink_t"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF124:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF32:
	.string	"blksize_t"
.LASF48:
	.string	"st_size"
.LASF60:
	.string	"d_ino"
.LASF45:
	.string	"st_uid"
.LASF25:
	.string	"__off_t"
.LASF26:
	.string	"_ssize_t"
.LASF65:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"mode_t"
.LASF34:
	.string	"off_t"
.LASF5:
	.string	"short unsigned int"
.LASF99:
	.string	"address_width"
.LASF17:
	.string	"__blkcnt_t"
.LASF19:
	.string	"_off_t"
.LASF47:
	.string	"st_rdev"
.LASF121:
	.string	"aos_mutex_unlock"
.LASF76:
	.string	"fs_ops_t"
.LASF109:
	.string	"inode"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

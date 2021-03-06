	.file	"vfs_pwm.c"
	.text
.Ltext0:
	.section	.text.unlikely.vfs_pwm_open,"ax",@progbits
.LCOLDB0:
	.section	.text.vfs_pwm_open,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.vfs_pwm_open
.Ltext_cold0:
	.section	.text.vfs_pwm_open
	.globl	vfs_pwm_open
	.type	vfs_pwm_open, @function
vfs_pwm_open:
.LFB22:
	.file 1 "kernel/vfs/device/vfs_pwm.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 18 0
	movl	12(%ebp), %eax
	.loc 1 23 0
	testl	%eax, %eax
	je	.L4
	.loc 1 23 0 discriminator 1
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L4
	.loc 1 34 0
	xorl	%eax, %eax
	.loc 1 26 0
	cmpb	$1, 17(%edx)
	jne	.L2
.LVL1:
	.loc 1 32 0
	movl	4(%edx), %eax
	movl	%eax, 8(%ebp)
.LVL2:
	.loc 1 41 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 32 0
	jmp	hal_pwm_init
.LVL3:
.L4:
	.cfi_restore_state
	.loc 1 37 0
	movl	$-22, %eax
.LVL4:
.L2:
	.loc 1 41 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	vfs_pwm_open, .-vfs_pwm_open
	.section	.text.unlikely.vfs_pwm_open
.LCOLDE0:
	.section	.text.vfs_pwm_open
.LHOTE0:
	.section	.text.unlikely.vfs_pwm_close,"ax",@progbits
.LCOLDB1:
	.section	.text.vfs_pwm_close,"ax",@progbits
.LHOTB1:
	.globl	vfs_pwm_close
	.type	vfs_pwm_close, @function
vfs_pwm_close:
.LFB23:
	.loc 1 44 0
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
	.loc 1 71 0
	movl	$-22, %ebx
	.loc 1 44 0
	subl	$12, %esp
	.loc 1 44 0
	movl	8(%ebp), %esi
	.loc 1 49 0
	testl	%esi, %esi
	je	.L9
	.loc 1 49 0 discriminator 1
	movl	(%esi), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 68 0
	xorl	%ebx, %ebx
	.loc 1 52 0
	cmpb	$1, 17(%eax)
	jne	.L9
	.loc 1 55 0
	movl	4(%eax), %edi
.LVL6:
	.loc 1 58 0
	addl	$20, %eax
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL7:
	.loc 1 59 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 58 0
	movl	%eax, %ebx
.LVL8:
	.loc 1 59 0
	jne	.L10
	.loc 1 62 0
	subl	$12, %esp
	pushl	%edi
	call	hal_pwm_finalize
.LVL9:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL10:
.L10:
	.loc 1 66 0
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
	.loc 1 75 0
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
.LFE23:
	.size	vfs_pwm_close, .-vfs_pwm_close
	.section	.text.unlikely.vfs_pwm_close
.LCOLDE1:
	.section	.text.vfs_pwm_close
.LHOTE1:
	.section	.text.unlikely.vfs_pwm_ioctl,"ax",@progbits
.LCOLDB2:
	.section	.text.vfs_pwm_ioctl,"ax",@progbits
.LHOTB2:
	.globl	vfs_pwm_ioctl
	.type	vfs_pwm_ioctl, @function
vfs_pwm_ioctl:
.LFB24:
	.loc 1 78 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 84 0
	movl	$-22, %eax
	.loc 1 78 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 78 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 83 0
	testl	%esi, %esi
	je	.L16
	.loc 1 83 0 discriminator 1
	movl	(%esi), %edx
	testl	%edx, %edx
	je	.L16
	.loc 1 88 0
	movl	4(%edx), %edi
.LVL16:
	.loc 1 91 0
	addl	$20, %edx
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	%edx
	call	aos_mutex_lock
.LVL17:
	.loc 1 92 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L16
	.loc 1 96 0
	cmpl	$1, %ebx
	je	.L18
	cmpl	$2, %ebx
	jne	.L27
	.loc 1 101 0
	subl	$12, %esp
	pushl	%edi
	call	hal_pwm_stop
.LVL18:
	jmp	.L26
.LVL19:
.L18:
	.loc 1 98 0
	subl	$12, %esp
	pushl	%edi
	call	hal_pwm_start
.LVL20:
.L26:
	.loc 1 101 0
	movl	%eax, %ebx
.LVL21:
	.loc 1 102 0
	addl	$16, %esp
	jmp	.L17
.L27:
	.loc 1 104 0
	movl	$-22, %ebx
.L17:
.LVL22:
	.loc 1 109 0
	movl	(%esi), %eax
	subl	$12, %esp
	addl	$20, %eax
	pushl	%eax
	call	aos_mutex_unlock
.LVL23:
	.loc 1 111 0
	addl	$16, %esp
	movl	%ebx, %eax
.LVL24:
.L16:
	.loc 1 112 0
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
	.size	vfs_pwm_ioctl, .-vfs_pwm_ioctl
	.section	.text.unlikely.vfs_pwm_ioctl
.LCOLDE2:
	.section	.text.vfs_pwm_ioctl
.LHOTE2:
	.globl	pwm_ops
	.section	.rodata.pwm_ops,"a",@progbits
	.align 4
	.type	pwm_ops, @object
	.size	pwm_ops, 20
pwm_ops:
	.long	vfs_pwm_open
	.long	vfs_pwm_close
	.zero	8
	.long	vfs_pwm_ioctl
	.text
.Letext0:
	.section	.text.unlikely.vfs_pwm_open
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
	.file 12 "./include/hal/soc/pwm.h"
	.file 13 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x919
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF118
	.byte	0xc
	.long	.LASF119
	.long	.LASF120
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
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x1c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x20
	.long	0x4c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x2c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x36
	.long	0x3e
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.long	0x45
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x3d
	.long	0x45
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x49
	.long	0x45
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x58
	.long	0x53
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x64
	.long	0xbf
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x91
	.long	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF25
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0xcb
	.long	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF27
	.uleb128 0x6
	.byte	0x4
	.long	0x12b
	.uleb128 0x6
	.byte	0x4
	.long	0x13e
	.uleb128 0x7
	.long	0x12b
	.uleb128 0x3
	.long	.LASF28
	.byte	0x6
	.byte	0x28
	.long	0x4c
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x71
	.long	0xa9
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x76
	.long	0xb4
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0x9b
	.long	0xeb
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0xad
	.long	0x101
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0xb1
	.long	0xca
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0xb5
	.long	0xd5
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0xb9
	.long	0xe0
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0xc8
	.long	0x10c
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0xcd
	.long	0xf6
	.uleb128 0x3
	.long	.LASF38
	.byte	0x7
	.byte	0xd2
	.long	0x120
	.uleb128 0x8
	.long	.LASF67
	.byte	0x3c
	.byte	0x8
	.byte	0x1b
	.long	0x295
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x1d
	.long	0x17a
	.byte	0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x1e
	.long	0x164
	.byte	0x2
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x1f
	.long	0x1a6
	.byte	0x4
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x20
	.long	0x1b1
	.byte	0x8
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x21
	.long	0x185
	.byte	0xa
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x22
	.long	0x190
	.byte	0xc
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x23
	.long	0x17a
	.byte	0xe
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x24
	.long	0x16f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x32
	.long	0x143
	.byte	0x14
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x33
	.long	0x4c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x34
	.long	0x143
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x35
	.long	0x4c
	.byte	0x20
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x36
	.long	0x143
	.byte	0x24
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x37
	.long	0x4c
	.byte	0x28
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x38
	.long	0x159
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x39
	.long	0x14e
	.byte	0x30
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0x3a
	.long	0x295
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.long	0x4c
	.long	0x2a5
	.uleb128 0xb
	.long	0x117
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0x2ba
	.uleb128 0xd
	.string	"hdl"
	.byte	0x9
	.byte	0x14
	.long	0x11e
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF56
	.byte	0x9
	.byte	0x15
	.long	0x2a5
	.uleb128 0x3
	.long	.LASF57
	.byte	0x9
	.byte	0x18
	.long	0x2ba
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.long	0x2fd
	.uleb128 0x9
	.long	.LASF58
	.byte	0xa
	.byte	0x11
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF59
	.byte	0xa
	.byte	0x12
	.long	0x81
	.byte	0x4
	.uleb128 0x9
	.long	.LASF60
	.byte	0xa
	.byte	0x13
	.long	0x2fd
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x12b
	.long	0x30c
	.uleb128 0xe
	.long	0x117
	.byte	0
	.uleb128 0x3
	.long	.LASF61
	.byte	0xa
	.byte	0x14
	.long	0x2d0
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.long	0x338
	.uleb128 0x9
	.long	.LASF62
	.byte	0xa
	.byte	0x17
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0xa
	.byte	0x18
	.long	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF64
	.byte	0xa
	.byte	0x19
	.long	0x317
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF65
	.uleb128 0x3
	.long	.LASF66
	.byte	0xb
	.byte	0x2b
	.long	0x39e
	.uleb128 0x8
	.long	.LASF68
	.byte	0x14
	.byte	0xb
	.byte	0x46
	.long	0x39e
	.uleb128 0x9
	.long	.LASF69
	.byte	0xb
	.byte	0x47
	.long	0x557
	.byte	0
	.uleb128 0x9
	.long	.LASF70
	.byte	0xb
	.byte	0x48
	.long	0x56c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x49
	.long	0x58b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x4a
	.long	0x5b1
	.byte	0xc
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x4b
	.long	0x5d0
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x355
	.uleb128 0x3
	.long	.LASF74
	.byte	0xb
	.byte	0x2c
	.long	0x463
	.uleb128 0x8
	.long	.LASF75
	.byte	0x38
	.byte	0xb
	.byte	0x51
	.long	0x463
	.uleb128 0x9
	.long	.LASF69
	.byte	0xb
	.byte	0x52
	.long	0x5ef
	.byte	0
	.uleb128 0x9
	.long	.LASF70
	.byte	0xb
	.byte	0x53
	.long	0x56c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x54
	.long	0x60e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x55
	.long	0x62d
	.byte	0xc
	.uleb128 0x9
	.long	.LASF76
	.byte	0xb
	.byte	0x56
	.long	0x64c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF77
	.byte	0xb
	.byte	0x57
	.long	0x56c
	.byte	0x14
	.uleb128 0x9
	.long	.LASF67
	.byte	0xb
	.byte	0x58
	.long	0x671
	.byte	0x18
	.uleb128 0x9
	.long	.LASF78
	.byte	0xb
	.byte	0x59
	.long	0x68b
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF79
	.byte	0xb
	.byte	0x5a
	.long	0x6aa
	.byte	0x20
	.uleb128 0x9
	.long	.LASF80
	.byte	0xb
	.byte	0x5b
	.long	0x6ca
	.byte	0x24
	.uleb128 0x9
	.long	.LASF81
	.byte	0xb
	.byte	0x5c
	.long	0x6ea
	.byte	0x28
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0x5d
	.long	0x704
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF83
	.byte	0xb
	.byte	0x5e
	.long	0x68b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF73
	.byte	0xb
	.byte	0x5f
	.long	0x5d0
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x3ae
	.uleb128 0xf
	.long	.LASF121
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x48b
	.uleb128 0x10
	.long	.LASF84
	.byte	0xb
	.byte	0x2f
	.long	0x48b
	.uleb128 0x10
	.long	.LASF85
	.byte	0xb
	.byte	0x30
	.long	0x491
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x34a
	.uleb128 0x6
	.byte	0x4
	.long	0x3a3
	.uleb128 0xc
	.byte	0x18
	.byte	0xb
	.byte	0x34
	.long	0x4f4
	.uleb128 0xd
	.string	"ops"
	.byte	0xb
	.byte	0x35
	.long	0x468
	.byte	0
	.uleb128 0x9
	.long	.LASF86
	.byte	0xb
	.byte	0x36
	.long	0x11e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF87
	.byte	0xb
	.byte	0x37
	.long	0x132
	.byte	0x8
	.uleb128 0x9
	.long	.LASF88
	.byte	0xb
	.byte	0x38
	.long	0x73
	.byte	0xc
	.uleb128 0x9
	.long	.LASF89
	.byte	0xb
	.byte	0x39
	.long	0x81
	.byte	0x10
	.uleb128 0x9
	.long	.LASF90
	.byte	0xb
	.byte	0x3a
	.long	0x81
	.byte	0x11
	.uleb128 0x9
	.long	.LASF91
	.byte	0xb
	.byte	0x3b
	.long	0x2c5
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF92
	.byte	0xb
	.byte	0x3c
	.long	0x497
	.uleb128 0xc
	.byte	0xc
	.byte	0xb
	.byte	0x3e
	.long	0x52c
	.uleb128 0x9
	.long	.LASF93
	.byte	0xb
	.byte	0x3f
	.long	0x52c
	.byte	0
	.uleb128 0x9
	.long	.LASF94
	.byte	0xb
	.byte	0x40
	.long	0x11e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF95
	.byte	0xb
	.byte	0x41
	.long	0x97
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4f4
	.uleb128 0x3
	.long	.LASF96
	.byte	0xb
	.byte	0x42
	.long	0x4ff
	.uleb128 0x11
	.long	0x73
	.long	0x551
	.uleb128 0x12
	.long	0x52c
	.uleb128 0x12
	.long	0x551
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x532
	.uleb128 0x6
	.byte	0x4
	.long	0x53d
	.uleb128 0x11
	.long	0x73
	.long	0x56c
	.uleb128 0x12
	.long	0x551
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x55d
	.uleb128 0x11
	.long	0x19b
	.long	0x58b
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x11e
	.uleb128 0x12
	.long	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x572
	.uleb128 0x11
	.long	0x19b
	.long	0x5aa
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x5aa
	.uleb128 0x12
	.long	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b0
	.uleb128 0x13
	.uleb128 0x6
	.byte	0x4
	.long	0x591
	.uleb128 0x11
	.long	0x73
	.long	0x5d0
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x73
	.uleb128 0x12
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5b7
	.uleb128 0x11
	.long	0x73
	.long	0x5ef
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x138
	.uleb128 0x12
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d6
	.uleb128 0x11
	.long	0x19b
	.long	0x60e
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x132
	.uleb128 0x12
	.long	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f5
	.uleb128 0x11
	.long	0x19b
	.long	0x62d
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x138
	.uleb128 0x12
	.long	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x614
	.uleb128 0x11
	.long	0x16f
	.long	0x64c
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x16f
	.uleb128 0x12
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x633
	.uleb128 0x11
	.long	0x73
	.long	0x66b
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x138
	.uleb128 0x12
	.long	0x66b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1bc
	.uleb128 0x6
	.byte	0x4
	.long	0x652
	.uleb128 0x11
	.long	0x73
	.long	0x68b
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x138
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x677
	.uleb128 0x11
	.long	0x73
	.long	0x6aa
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x138
	.uleb128 0x12
	.long	0x138
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x691
	.uleb128 0x11
	.long	0x6c4
	.long	0x6c4
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x138
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x338
	.uleb128 0x6
	.byte	0x4
	.long	0x6b0
	.uleb128 0x11
	.long	0x6e4
	.long	0x6e4
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x6c4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x30c
	.uleb128 0x6
	.byte	0x4
	.long	0x6d0
	.uleb128 0x11
	.long	0x73
	.long	0x704
	.uleb128 0x12
	.long	0x551
	.uleb128 0x12
	.long	0x6c4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6f0
	.uleb128 0xc
	.byte	0x8
	.byte	0xc
	.byte	0x8
	.long	0x72b
	.uleb128 0x9
	.long	.LASF97
	.byte	0xc
	.byte	0x9
	.long	0x72b
	.byte	0
	.uleb128 0x9
	.long	.LASF98
	.byte	0xc
	.byte	0xa
	.long	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF99
	.uleb128 0x3
	.long	.LASF100
	.byte	0xc
	.byte	0xb
	.long	0x70a
	.uleb128 0xc
	.byte	0x10
	.byte	0xc
	.byte	0xd
	.long	0x76a
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0xe
	.long	0x81
	.byte	0
	.uleb128 0x9
	.long	.LASF102
	.byte	0xc
	.byte	0xf
	.long	0x732
	.byte	0x4
	.uleb128 0x9
	.long	.LASF103
	.byte	0xc
	.byte	0x10
	.long	0x11e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	.LASF104
	.byte	0xc
	.byte	0x11
	.long	0x73d
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.byte	0x11
	.long	0x73
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d3
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0x11
	.long	0x52c
	.long	.LLST0
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0x11
	.long	0x551
	.long	.LLST1
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x13
	.long	0x73
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0x14
	.long	0x7d3
	.long	.LLST3
	.uleb128 0x19
	.long	.LVL3
	.long	0x8da
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x76a
	.uleb128 0x14
	.long	.LASF108
	.byte	0x1
	.byte	0x2b
	.long	0x73
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x839
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x2b
	.long	0x551
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x2d
	.long	0x73
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0x2e
	.long	0x7d3
	.long	.LLST5
	.uleb128 0x1b
	.long	.LVL7
	.long	0x8e5
	.uleb128 0x1b
	.long	.LVL9
	.long	0x8f0
	.uleb128 0x1b
	.long	.LVL12
	.long	0x8fb
	.byte	0
	.uleb128 0x14
	.long	.LASF109
	.byte	0x1
	.byte	0x4d
	.long	0x73
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x8be
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x4d
	.long	0x551
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x4d
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.byte	0x4d
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.long	0x73
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.byte	0x50
	.long	0x7d3
	.long	.LLST7
	.uleb128 0x1b
	.long	.LVL17
	.long	0x8e5
	.uleb128 0x1b
	.long	.LVL18
	.long	0x906
	.uleb128 0x1b
	.long	.LVL20
	.long	0x911
	.uleb128 0x1b
	.long	.LVL23
	.long	0x8fb
	.byte	0
	.uleb128 0x1c
	.long	.LASF110
	.byte	0xd
	.byte	0x17
	.long	0x7a
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.byte	0xa
	.long	0x39e
	.uleb128 0x5
	.byte	0x3
	.long	pwm_ops
	.uleb128 0x1e
	.long	.LASF112
	.long	.LASF112
	.byte	0xc
	.byte	0x1b
	.uleb128 0x1e
	.long	.LASF113
	.long	.LASF113
	.byte	0x9
	.byte	0x9e
	.uleb128 0x1e
	.long	.LASF114
	.long	.LASF114
	.byte	0xc
	.byte	0x36
	.uleb128 0x1e
	.long	.LASF115
	.long	.LASF115
	.byte	0x9
	.byte	0xa7
	.uleb128 0x1e
	.long	.LASF116
	.long	.LASF116
	.byte	0xc
	.byte	0x2d
	.uleb128 0x1e
	.long	.LASF117
	.long	.LASF117
	.byte	0xc
	.byte	0x24
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
	.uleb128 0x2
	.uleb128 0x18
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
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL3
	.long	.LFE22
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
	.long	.LFE22
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
	.long	.LFE22
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
	.long	.LFE22
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
	.long	.LFE23
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
	.long	.LVL17
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL20-1
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL24
	.value	0x1
	.byte	0x57
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"aos_dirent_t"
.LASF92:
	.string	"inode_t"
.LASF64:
	.string	"aos_dir_t"
.LASF10:
	.string	"unsigned int"
.LASF53:
	.string	"st_blksize"
.LASF90:
	.string	"refs"
.LASF114:
	.string	"hal_pwm_finalize"
.LASF80:
	.string	"opendir"
.LASF77:
	.string	"sync"
.LASF26:
	.string	"__nlink_t"
.LASF87:
	.string	"i_name"
.LASF109:
	.string	"vfs_pwm_ioctl"
.LASF60:
	.string	"d_name"
.LASF21:
	.string	"__ino_t"
.LASF117:
	.string	"hal_pwm_start"
.LASF57:
	.string	"aos_mutex_t"
.LASF31:
	.string	"ino_t"
.LASF12:
	.string	"uint32_t"
.LASF99:
	.string	"float"
.LASF91:
	.string	"mutex"
.LASF86:
	.string	"i_arg"
.LASF51:
	.string	"st_ctime"
.LASF106:
	.string	"pwm_dev"
.LASF78:
	.string	"unlink"
.LASF110:
	.string	"aos_log_level"
.LASF9:
	.string	"long long unsigned int"
.LASF54:
	.string	"st_blocks"
.LASF95:
	.string	"offset"
.LASF49:
	.string	"st_mtime"
.LASF104:
	.string	"pwm_dev_t"
.LASF94:
	.string	"f_arg"
.LASF85:
	.string	"i_fops"
.LASF120:
	.string	"/home/stone/Documents/pca"
.LASF67:
	.string	"stat"
.LASF108:
	.string	"vfs_pwm_close"
.LASF39:
	.string	"st_dev"
.LASF111:
	.string	"pwm_ops"
.LASF13:
	.string	"size_t"
.LASF113:
	.string	"aos_mutex_lock"
.LASF22:
	.string	"__mode_t"
.LASF59:
	.string	"d_type"
.LASF65:
	.string	"_Bool"
.LASF44:
	.string	"st_gid"
.LASF41:
	.string	"st_mode"
.LASF83:
	.string	"mkdir"
.LASF116:
	.string	"hal_pwm_stop"
.LASF97:
	.string	"duty_cycle"
.LASF96:
	.string	"file_t"
.LASF42:
	.string	"st_nlink"
.LASF98:
	.string	"freq"
.LASF73:
	.string	"ioctl"
.LASF56:
	.string	"aos_hdl_t"
.LASF103:
	.string	"priv"
.LASF27:
	.string	"char"
.LASF29:
	.string	"blkcnt_t"
.LASF70:
	.string	"close"
.LASF47:
	.string	"st_atime"
.LASF36:
	.string	"ssize_t"
.LASF76:
	.string	"lseek"
.LASF11:
	.string	"uint8_t"
.LASF89:
	.string	"type"
.LASF28:
	.string	"time_t"
.LASF75:
	.string	"fs_ops"
.LASF79:
	.string	"rename"
.LASF40:
	.string	"st_ino"
.LASF8:
	.string	"long long int"
.LASF72:
	.string	"write"
.LASF18:
	.string	"__dev_t"
.LASF107:
	.string	"vfs_pwm_open"
.LASF33:
	.string	"dev_t"
.LASF68:
	.string	"file_ops"
.LASF66:
	.string	"file_ops_t"
.LASF48:
	.string	"st_spare1"
.LASF50:
	.string	"st_spare2"
.LASF52:
	.string	"st_spare3"
.LASF55:
	.string	"st_spare4"
.LASF14:
	.string	"long double"
.LASF20:
	.string	"__gid_t"
.LASF121:
	.string	"inode_ops_t"
.LASF100:
	.string	"pwm_config_t"
.LASF35:
	.string	"gid_t"
.LASF84:
	.string	"i_ops"
.LASF34:
	.string	"uid_t"
.LASF102:
	.string	"config"
.LASF82:
	.string	"closedir"
.LASF2:
	.string	"short int"
.LASF88:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF93:
	.string	"node"
.LASF81:
	.string	"readdir"
.LASF16:
	.string	"__blksize_t"
.LASF19:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF71:
	.string	"read"
.LASF119:
	.string	"src/vfs_pwm.c"
.LASF62:
	.string	"dd_vfs_fd"
.LASF69:
	.string	"open"
.LASF25:
	.string	"sizetype"
.LASF7:
	.string	"long unsigned int"
.LASF101:
	.string	"port"
.LASF112:
	.string	"hal_pwm_init"
.LASF38:
	.string	"nlink_t"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF118:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF30:
	.string	"blksize_t"
.LASF46:
	.string	"st_size"
.LASF58:
	.string	"d_ino"
.LASF43:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF24:
	.string	"_ssize_t"
.LASF63:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF37:
	.string	"mode_t"
.LASF32:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF45:
	.string	"st_rdev"
.LASF115:
	.string	"aos_mutex_unlock"
.LASF74:
	.string	"fs_ops_t"
.LASF105:
	.string	"inode"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

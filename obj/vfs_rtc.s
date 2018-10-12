	.file	"vfs_rtc.c"
	.text
.Ltext0:
	.section	.text.unlikely.vfs_rtc_open,"ax",@progbits
.LCOLDB0:
	.section	.text.vfs_rtc_open,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.vfs_rtc_open
.Ltext_cold0:
	.section	.text.vfs_rtc_open
	.globl	vfs_rtc_open
	.type	vfs_rtc_open, @function
vfs_rtc_open:
.LFB22:
	.file 1 "kernel/vfs/device/vfs_rtc.c"
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
	jmp	hal_rtc_init
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
.LFE22:
	.size	vfs_rtc_open, .-vfs_rtc_open
	.section	.text.unlikely.vfs_rtc_open
.LCOLDE0:
	.section	.text.vfs_rtc_open
.LHOTE0:
	.section	.text.unlikely.vfs_rtc_close,"ax",@progbits
.LCOLDB1:
	.section	.text.vfs_rtc_close,"ax",@progbits
.LHOTB1:
	.globl	vfs_rtc_close
	.type	vfs_rtc_close, @function
vfs_rtc_close:
.LFB23:
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
	call	hal_rtc_finalize
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
.LFE23:
	.size	vfs_rtc_close, .-vfs_rtc_close
	.section	.text.unlikely.vfs_rtc_close
.LCOLDE1:
	.section	.text.vfs_rtc_close
.LHOTE1:
	.section	.text.unlikely.vfs_rtc_read,"ax",@progbits
.LCOLDB2:
	.section	.text.vfs_rtc_read,"ax",@progbits
.LHOTB2:
	.globl	vfs_rtc_read
	.type	vfs_rtc_read, @function
vfs_rtc_read:
.LFB24:
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
	.loc 1 105 0
	movl	$-22, %ebx
	.loc 1 79 0
	subl	$12, %esp
	.loc 1 79 0
	movl	8(%ebp), %esi
.LVL16:
	.loc 1 84 0
	testl	%esi, %esi
	je	.L16
	.loc 1 84 0 discriminator 1
	cmpl	$6, 16(%ebp)
	.loc 1 84 0 discriminator 1
	movl	(%esi), %eax
	.loc 1 84 0 discriminator 1
	jbe	.L19
	testl	%eax, %eax
	je	.L19
	.loc 1 87 0
	movl	4(%eax), %edi
.LVL17:
	.loc 1 90 0
	addl	$20, %eax
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL18:
	.loc 1 91 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 90 0
	movl	%eax, %ebx
.LVL19:
	.loc 1 91 0
	jne	.L17
.LVL20:
	.loc 1 94 0
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	%edi
	call	hal_rtc_get_time
.LVL21:
	.loc 1 97 0
	addl	$16, %esp
	.loc 1 94 0
	movl	%eax, %ebx
.LVL22:
	.loc 1 98 0
	testl	%eax, %eax
	cmove	16(%ebp), %ebx
.L17:
.LVL23:
	.loc 1 103 0
	movl	(%esi), %eax
	subl	$12, %esp
	addl	$20, %eax
	pushl	%eax
	call	aos_mutex_unlock
.LVL24:
	addl	$16, %esp
	jmp	.L16
.LVL25:
.L19:
	.loc 1 105 0
	movl	$-22, %ebx
.LVL26:
.L16:
	.loc 1 109 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL27:
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
	.size	vfs_rtc_read, .-vfs_rtc_read
	.section	.text.unlikely.vfs_rtc_read
.LCOLDE2:
	.section	.text.vfs_rtc_read
.LHOTE2:
	.section	.text.unlikely.vfs_rtc_write,"ax",@progbits
.LCOLDB3:
	.section	.text.vfs_rtc_write,"ax",@progbits
.LHOTB3:
	.globl	vfs_rtc_write
	.type	vfs_rtc_write, @function
vfs_rtc_write:
.LFB25:
	.loc 1 112 0
	.cfi_startproc
.LVL28:
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
	.loc 1 139 0
	movl	$-22, %ebx
	.loc 1 112 0
	subl	$12, %esp
	.loc 1 112 0
	movl	8(%ebp), %esi
.LVL29:
	.loc 1 117 0
	testl	%esi, %esi
	je	.L28
	.loc 1 117 0 discriminator 1
	cmpl	$6, 16(%ebp)
	.loc 1 117 0 discriminator 1
	movl	(%esi), %eax
	.loc 1 117 0 discriminator 1
	jbe	.L31
	testl	%eax, %eax
	je	.L31
	.loc 1 120 0
	movl	4(%eax), %edi
.LVL30:
	.loc 1 123 0
	addl	$20, %eax
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL31:
	.loc 1 124 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 123 0
	movl	%eax, %ebx
.LVL32:
	.loc 1 124 0
	jne	.L29
.LVL33:
	.loc 1 127 0
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	%edi
	call	hal_rtc_set_time
.LVL34:
	.loc 1 131 0
	addl	$16, %esp
	.loc 1 127 0
	movl	%eax, %ebx
.LVL35:
	.loc 1 132 0
	testl	%eax, %eax
	cmove	16(%ebp), %ebx
.L29:
.LVL36:
	.loc 1 137 0
	movl	(%esi), %eax
	subl	$12, %esp
	addl	$20, %eax
	pushl	%eax
	call	aos_mutex_unlock
.LVL37:
	addl	$16, %esp
	jmp	.L28
.LVL38:
.L31:
	.loc 1 139 0
	movl	$-22, %ebx
.LVL39:
.L28:
	.loc 1 143 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL40:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	vfs_rtc_write, .-vfs_rtc_write
	.section	.text.unlikely.vfs_rtc_write
.LCOLDE3:
	.section	.text.vfs_rtc_write
.LHOTE3:
	.globl	rtc_ops
	.section	.rodata.rtc_ops,"a",@progbits
	.align 4
	.type	rtc_ops, @object
	.size	rtc_ops, 20
rtc_ops:
	.long	vfs_rtc_open
	.long	vfs_rtc_close
	.long	vfs_rtc_read
	.long	vfs_rtc_write
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.vfs_rtc_open
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
	.file 12 "./include/hal/soc/rtc.h"
	.file 13 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9dc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF123
	.byte	0xc
	.long	.LASF124
	.long	.LASF125
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
	.uleb128 0x6
	.byte	0x4
	.long	0x120
	.uleb128 0x6
	.byte	0x4
	.long	0x133
	.uleb128 0x7
	.long	0x120
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
	.uleb128 0x8
	.long	.LASF66
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
	.long	0x4c
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
	.long	0x4c
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
	.long	0x4c
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
	.long	0x4c
	.long	0x29a
	.uleb128 0xb
	.long	0x10c
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0x2af
	.uleb128 0xd
	.string	"hdl"
	.byte	0x9
	.byte	0x14
	.long	0x113
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF55
	.byte	0x9
	.byte	0x15
	.long	0x29a
	.uleb128 0x3
	.long	.LASF56
	.byte	0x9
	.byte	0x18
	.long	0x2af
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.long	0x2f2
	.uleb128 0x9
	.long	.LASF57
	.byte	0xa
	.byte	0x11
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0xa
	.byte	0x12
	.long	0x81
	.byte	0x4
	.uleb128 0x9
	.long	.LASF59
	.byte	0xa
	.byte	0x13
	.long	0x2f2
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x120
	.long	0x301
	.uleb128 0xe
	.long	0x10c
	.byte	0
	.uleb128 0x3
	.long	.LASF60
	.byte	0xa
	.byte	0x14
	.long	0x2c5
	.uleb128 0xc
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.long	0x32d
	.uleb128 0x9
	.long	.LASF61
	.byte	0xa
	.byte	0x17
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0xa
	.byte	0x18
	.long	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF63
	.byte	0xa
	.byte	0x19
	.long	0x30c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF64
	.uleb128 0x3
	.long	.LASF65
	.byte	0xb
	.byte	0x2b
	.long	0x393
	.uleb128 0x8
	.long	.LASF67
	.byte	0x14
	.byte	0xb
	.byte	0x46
	.long	0x393
	.uleb128 0x9
	.long	.LASF68
	.byte	0xb
	.byte	0x47
	.long	0x54c
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0xb
	.byte	0x48
	.long	0x561
	.byte	0x4
	.uleb128 0x9
	.long	.LASF70
	.byte	0xb
	.byte	0x49
	.long	0x580
	.byte	0x8
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x4a
	.long	0x5a6
	.byte	0xc
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x4b
	.long	0x5c5
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x34a
	.uleb128 0x3
	.long	.LASF73
	.byte	0xb
	.byte	0x2c
	.long	0x458
	.uleb128 0x8
	.long	.LASF74
	.byte	0x38
	.byte	0xb
	.byte	0x51
	.long	0x458
	.uleb128 0x9
	.long	.LASF68
	.byte	0xb
	.byte	0x52
	.long	0x5e4
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0xb
	.byte	0x53
	.long	0x561
	.byte	0x4
	.uleb128 0x9
	.long	.LASF70
	.byte	0xb
	.byte	0x54
	.long	0x603
	.byte	0x8
	.uleb128 0x9
	.long	.LASF71
	.byte	0xb
	.byte	0x55
	.long	0x622
	.byte	0xc
	.uleb128 0x9
	.long	.LASF75
	.byte	0xb
	.byte	0x56
	.long	0x641
	.byte	0x10
	.uleb128 0x9
	.long	.LASF76
	.byte	0xb
	.byte	0x57
	.long	0x561
	.byte	0x14
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.byte	0x58
	.long	0x666
	.byte	0x18
	.uleb128 0x9
	.long	.LASF77
	.byte	0xb
	.byte	0x59
	.long	0x680
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF78
	.byte	0xb
	.byte	0x5a
	.long	0x69f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF79
	.byte	0xb
	.byte	0x5b
	.long	0x6bf
	.byte	0x24
	.uleb128 0x9
	.long	.LASF80
	.byte	0xb
	.byte	0x5c
	.long	0x6df
	.byte	0x28
	.uleb128 0x9
	.long	.LASF81
	.byte	0xb
	.byte	0x5d
	.long	0x6f9
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0x5e
	.long	0x680
	.byte	0x30
	.uleb128 0x9
	.long	.LASF72
	.byte	0xb
	.byte	0x5f
	.long	0x5c5
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x3a3
	.uleb128 0xf
	.long	.LASF126
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.long	0x480
	.uleb128 0x10
	.long	.LASF83
	.byte	0xb
	.byte	0x2f
	.long	0x480
	.uleb128 0x10
	.long	.LASF84
	.byte	0xb
	.byte	0x30
	.long	0x486
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x33f
	.uleb128 0x6
	.byte	0x4
	.long	0x398
	.uleb128 0xc
	.byte	0x18
	.byte	0xb
	.byte	0x34
	.long	0x4e9
	.uleb128 0xd
	.string	"ops"
	.byte	0xb
	.byte	0x35
	.long	0x45d
	.byte	0
	.uleb128 0x9
	.long	.LASF85
	.byte	0xb
	.byte	0x36
	.long	0x113
	.byte	0x4
	.uleb128 0x9
	.long	.LASF86
	.byte	0xb
	.byte	0x37
	.long	0x127
	.byte	0x8
	.uleb128 0x9
	.long	.LASF87
	.byte	0xb
	.byte	0x38
	.long	0x73
	.byte	0xc
	.uleb128 0x9
	.long	.LASF88
	.byte	0xb
	.byte	0x39
	.long	0x81
	.byte	0x10
	.uleb128 0x9
	.long	.LASF89
	.byte	0xb
	.byte	0x3a
	.long	0x81
	.byte	0x11
	.uleb128 0x9
	.long	.LASF90
	.byte	0xb
	.byte	0x3b
	.long	0x2ba
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF91
	.byte	0xb
	.byte	0x3c
	.long	0x48c
	.uleb128 0xc
	.byte	0xc
	.byte	0xb
	.byte	0x3e
	.long	0x521
	.uleb128 0x9
	.long	.LASF92
	.byte	0xb
	.byte	0x3f
	.long	0x521
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0xb
	.byte	0x40
	.long	0x113
	.byte	0x4
	.uleb128 0x9
	.long	.LASF94
	.byte	0xb
	.byte	0x41
	.long	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4e9
	.uleb128 0x3
	.long	.LASF95
	.byte	0xb
	.byte	0x42
	.long	0x4f4
	.uleb128 0x11
	.long	0x73
	.long	0x546
	.uleb128 0x12
	.long	0x521
	.uleb128 0x12
	.long	0x546
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x527
	.uleb128 0x6
	.byte	0x4
	.long	0x532
	.uleb128 0x11
	.long	0x73
	.long	0x561
	.uleb128 0x12
	.long	0x546
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x552
	.uleb128 0x11
	.long	0x190
	.long	0x580
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x113
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x567
	.uleb128 0x11
	.long	0x190
	.long	0x59f
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x59f
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a5
	.uleb128 0x13
	.uleb128 0x6
	.byte	0x4
	.long	0x586
	.uleb128 0x11
	.long	0x73
	.long	0x5c5
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x73
	.uleb128 0x12
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ac
	.uleb128 0x11
	.long	0x73
	.long	0x5e4
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x12d
	.uleb128 0x12
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5cb
	.uleb128 0x11
	.long	0x190
	.long	0x603
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x127
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ea
	.uleb128 0x11
	.long	0x190
	.long	0x622
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x12d
	.uleb128 0x12
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x609
	.uleb128 0x11
	.long	0x164
	.long	0x641
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x164
	.uleb128 0x12
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x628
	.uleb128 0x11
	.long	0x73
	.long	0x660
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x12d
	.uleb128 0x12
	.long	0x660
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b1
	.uleb128 0x6
	.byte	0x4
	.long	0x647
	.uleb128 0x11
	.long	0x73
	.long	0x680
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x12d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x66c
	.uleb128 0x11
	.long	0x73
	.long	0x69f
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x12d
	.uleb128 0x12
	.long	0x12d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x686
	.uleb128 0x11
	.long	0x6b9
	.long	0x6b9
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x12d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x32d
	.uleb128 0x6
	.byte	0x4
	.long	0x6a5
	.uleb128 0x11
	.long	0x6d9
	.long	0x6d9
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x6b9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x301
	.uleb128 0x6
	.byte	0x4
	.long	0x6c5
	.uleb128 0x11
	.long	0x73
	.long	0x6f9
	.uleb128 0x12
	.long	0x546
	.uleb128 0x12
	.long	0x6b9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF96
	.uleb128 0xc
	.byte	0x1
	.byte	0xc
	.byte	0xb
	.long	0x71b
	.uleb128 0x9
	.long	.LASF97
	.byte	0xc
	.byte	0xc
	.long	0x81
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF98
	.byte	0xc
	.byte	0xd
	.long	0x706
	.uleb128 0xc
	.byte	0x8
	.byte	0xc
	.byte	0xf
	.long	0x753
	.uleb128 0x9
	.long	.LASF99
	.byte	0xc
	.byte	0x10
	.long	0x81
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0xc
	.byte	0x11
	.long	0x71b
	.byte	0x1
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0x12
	.long	0x113
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF102
	.byte	0xc
	.byte	0x13
	.long	0x726
	.uleb128 0xc
	.byte	0x7
	.byte	0xc
	.byte	0x18
	.long	0x7ba
	.uleb128 0xd
	.string	"sec"
	.byte	0xc
	.byte	0x19
	.long	0x81
	.byte	0
	.uleb128 0xd
	.string	"min"
	.byte	0xc
	.byte	0x1a
	.long	0x81
	.byte	0x1
	.uleb128 0xd
	.string	"hr"
	.byte	0xc
	.byte	0x1b
	.long	0x81
	.byte	0x2
	.uleb128 0x9
	.long	.LASF103
	.byte	0xc
	.byte	0x1c
	.long	0x81
	.byte	0x3
	.uleb128 0x9
	.long	.LASF104
	.byte	0xc
	.byte	0x1d
	.long	0x81
	.byte	0x4
	.uleb128 0x9
	.long	.LASF105
	.byte	0xc
	.byte	0x1e
	.long	0x81
	.byte	0x5
	.uleb128 0x9
	.long	.LASF106
	.byte	0xc
	.byte	0x1f
	.long	0x81
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF107
	.byte	0xc
	.byte	0x20
	.long	0x75e
	.uleb128 0x14
	.long	.LASF110
	.byte	0x1
	.byte	0x12
	.long	0x73
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x823
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0x12
	.long	0x521
	.long	.LLST0
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0x12
	.long	0x546
	.long	.LLST1
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x14
	.long	0x73
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x15
	.long	0x823
	.long	.LLST3
	.uleb128 0x19
	.long	.LVL3
	.long	0x99d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x753
	.uleb128 0x14
	.long	.LASF111
	.byte	0x1
	.byte	0x2c
	.long	0x73
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x889
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x2c
	.long	0x546
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x2e
	.long	0x73
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x2f
	.long	0x823
	.long	.LLST5
	.uleb128 0x1b
	.long	.LVL7
	.long	0x9a8
	.uleb128 0x1b
	.long	.LVL9
	.long	0x9b3
	.uleb128 0x1b
	.long	.LVL12
	.long	0x9be
	.byte	0
	.uleb128 0x14
	.long	.LASF112
	.byte	0x1
	.byte	0x4e
	.long	0x190
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x905
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x4e
	.long	0x546
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x4e
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x1
	.byte	0x4e
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x50
	.long	0x73
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x51
	.long	0x823
	.long	.LLST7
	.uleb128 0x1b
	.long	.LVL18
	.long	0x9a8
	.uleb128 0x1b
	.long	.LVL21
	.long	0x9c9
	.uleb128 0x1b
	.long	.LVL24
	.long	0x9be
	.byte	0
	.uleb128 0x14
	.long	.LASF114
	.byte	0x1
	.byte	0x6f
	.long	0x190
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x981
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x6f
	.long	0x546
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x6f
	.long	0x59f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x1
	.byte	0x6f
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x71
	.long	0x73
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x72
	.long	0x823
	.long	.LLST9
	.uleb128 0x1b
	.long	.LVL31
	.long	0x9a8
	.uleb128 0x1b
	.long	.LVL34
	.long	0x9d4
	.uleb128 0x1b
	.long	.LVL37
	.long	0x9be
	.byte	0
	.uleb128 0x1d
	.long	.LASF115
	.byte	0xd
	.byte	0x17
	.long	0x7a
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.byte	0xa
	.long	0x393
	.uleb128 0x5
	.byte	0x3
	.long	rtc_ops
	.uleb128 0x1f
	.long	.LASF117
	.long	.LASF117
	.byte	0xc
	.byte	0x2a
	.uleb128 0x1f
	.long	.LASF118
	.long	.LASF118
	.byte	0x9
	.byte	0x9e
	.uleb128 0x1f
	.long	.LASF119
	.long	.LASF119
	.byte	0xc
	.byte	0x47
	.uleb128 0x1f
	.long	.LASF120
	.long	.LASF120
	.byte	0x9
	.byte	0xa7
	.uleb128 0x1f
	.long	.LASF121
	.long	.LASF121
	.byte	0xc
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF122
	.long	.LASF122
	.byte	0xc
	.byte	0x3e
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
	.long	.LVL16
	.long	.LVL19
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x53
	.long	.LVL25
	.long	.LVL26
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	.LVL27
	.long	.LFE24
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL25
	.value	0x1
	.byte	0x57
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL29
	.long	.LVL32
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL38
	.value	0x1
	.byte	0x53
	.long	.LVL38
	.long	.LVL39
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL40
	.long	.LFE25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL38
	.value	0x1
	.byte	0x57
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x30
	.byte	0x9f
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
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
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF60:
	.string	"aos_dirent_t"
.LASF109:
	.string	"rtc_dev"
.LASF97:
	.string	"format"
.LASF91:
	.string	"inode_t"
.LASF63:
	.string	"aos_dir_t"
.LASF10:
	.string	"unsigned int"
.LASF52:
	.string	"st_blksize"
.LASF89:
	.string	"refs"
.LASF111:
	.string	"vfs_rtc_close"
.LASF79:
	.string	"opendir"
.LASF76:
	.string	"sync"
.LASF25:
	.string	"__nlink_t"
.LASF86:
	.string	"i_name"
.LASF119:
	.string	"hal_rtc_finalize"
.LASF59:
	.string	"d_name"
.LASF114:
	.string	"vfs_rtc_write"
.LASF102:
	.string	"rtc_dev_t"
.LASF20:
	.string	"__ino_t"
.LASF56:
	.string	"aos_mutex_t"
.LASF30:
	.string	"ino_t"
.LASF96:
	.string	"float"
.LASF90:
	.string	"mutex"
.LASF85:
	.string	"i_arg"
.LASF50:
	.string	"st_ctime"
.LASF77:
	.string	"unlink"
.LASF115:
	.string	"aos_log_level"
.LASF9:
	.string	"long long unsigned int"
.LASF53:
	.string	"st_blocks"
.LASF94:
	.string	"offset"
.LASF48:
	.string	"st_mtime"
.LASF93:
	.string	"f_arg"
.LASF84:
	.string	"i_fops"
.LASF125:
	.string	"/home/stone/Documents/pca"
.LASF66:
	.string	"stat"
.LASF38:
	.string	"st_dev"
.LASF12:
	.string	"size_t"
.LASF116:
	.string	"rtc_ops"
.LASF118:
	.string	"aos_mutex_lock"
.LASF21:
	.string	"__mode_t"
.LASF58:
	.string	"d_type"
.LASF64:
	.string	"_Bool"
.LASF43:
	.string	"st_gid"
.LASF105:
	.string	"month"
.LASF98:
	.string	"rtc_config_t"
.LASF107:
	.string	"rtc_time_t"
.LASF40:
	.string	"st_mode"
.LASF82:
	.string	"mkdir"
.LASF124:
	.string	"src/vfs_rtc.c"
.LASF95:
	.string	"file_t"
.LASF41:
	.string	"st_nlink"
.LASF72:
	.string	"ioctl"
.LASF55:
	.string	"aos_hdl_t"
.LASF101:
	.string	"priv"
.LASF26:
	.string	"char"
.LASF28:
	.string	"blkcnt_t"
.LASF69:
	.string	"close"
.LASF121:
	.string	"hal_rtc_get_time"
.LASF46:
	.string	"st_atime"
.LASF35:
	.string	"ssize_t"
.LASF75:
	.string	"lseek"
.LASF11:
	.string	"uint8_t"
.LASF88:
	.string	"type"
.LASF27:
	.string	"time_t"
.LASF74:
	.string	"fs_ops"
.LASF78:
	.string	"rename"
.LASF39:
	.string	"st_ino"
.LASF8:
	.string	"long long int"
.LASF71:
	.string	"write"
.LASF110:
	.string	"vfs_rtc_open"
.LASF17:
	.string	"__dev_t"
.LASF32:
	.string	"dev_t"
.LASF67:
	.string	"file_ops"
.LASF65:
	.string	"file_ops_t"
.LASF113:
	.string	"nbytes"
.LASF47:
	.string	"st_spare1"
.LASF49:
	.string	"st_spare2"
.LASF51:
	.string	"st_spare3"
.LASF54:
	.string	"st_spare4"
.LASF104:
	.string	"date"
.LASF13:
	.string	"long double"
.LASF19:
	.string	"__gid_t"
.LASF126:
	.string	"inode_ops_t"
.LASF34:
	.string	"gid_t"
.LASF83:
	.string	"i_ops"
.LASF33:
	.string	"uid_t"
.LASF100:
	.string	"config"
.LASF81:
	.string	"closedir"
.LASF103:
	.string	"weekday"
.LASF2:
	.string	"short int"
.LASF87:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF92:
	.string	"node"
.LASF80:
	.string	"readdir"
.LASF122:
	.string	"hal_rtc_set_time"
.LASF15:
	.string	"__blksize_t"
.LASF18:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF70:
	.string	"read"
.LASF61:
	.string	"dd_vfs_fd"
.LASF68:
	.string	"open"
.LASF24:
	.string	"sizetype"
.LASF7:
	.string	"long unsigned int"
.LASF99:
	.string	"port"
.LASF106:
	.string	"year"
.LASF117:
	.string	"hal_rtc_init"
.LASF37:
	.string	"nlink_t"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF123:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF29:
	.string	"blksize_t"
.LASF45:
	.string	"st_size"
.LASF112:
	.string	"vfs_rtc_read"
.LASF57:
	.string	"d_ino"
.LASF42:
	.string	"st_uid"
.LASF22:
	.string	"__off_t"
.LASF23:
	.string	"_ssize_t"
.LASF62:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF36:
	.string	"mode_t"
.LASF31:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"__blkcnt_t"
.LASF16:
	.string	"_off_t"
.LASF44:
	.string	"st_rdev"
.LASF120:
	.string	"aos_mutex_unlock"
.LASF73:
	.string	"fs_ops_t"
.LASF108:
	.string	"inode"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

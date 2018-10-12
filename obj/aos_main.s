	.file	"aos_main.c"
	.text
.Ltext0:
	.section	.text.unlikely.sys_init,"ax",@progbits
.LCOLDB0:
	.section	.text.sys_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sys_init
.Ltext_cold0:
	.section	.text.sys_init
	.type	sys_init, @function
sys_init:
.LFB12:
	.file 1 "platform/mcu/moc108/aos/aos_main.c"
	.loc 1 23 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 26 0
	call	soc_system_init
.LVL1:
	.loc 1 32 0
	call	board_init
.LVL2:
	.loc 1 34 0
	subl	$12, %esp
	pushl	$kinit
	call	aos_kernel_init
.LVL3:
	.loc 1 37 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	sys_init, .-sys_init
	.section	.text.unlikely.sys_init
.LCOLDE0:
	.section	.text.sys_init
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"aos-init"
	.section	.text.unlikely.sys_start,"ax",@progbits
.LCOLDB2:
	.section	.text.sys_start,"ax",@progbits
.LHOTB2:
	.globl	sys_start
	.type	sys_start, @function
sys_start:
.LFB13:
	.loc 1 40 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 41 0
	call	aos_init
.LVL4:
	.loc 1 43 0
	call	soc_driver_init
.LVL5:
	.loc 1 45 0
	subl	$12, %esp
	pushl	$1
	pushl	$sys_init
	pushl	$2048
	pushl	$0
	pushl	$0
	pushl	$32
	pushl	$0
	pushl	$.LC1
	pushl	$g_aos_init
	call	krhino_task_dyn_create
.LVL6:
	.loc 1 47 0
	addl	$48, %esp
	.loc 1 48 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 47 0
	jmp	aos_start
.LVL7:
	.cfi_endproc
.LFE13:
	.size	sys_start, .-sys_start
	.section	.text.unlikely.sys_start
.LCOLDE2:
	.section	.text.sys_start
.LHOTE2:
	.section	.data.kinit,"aw",@progbits
	.align 4
	.type	kinit, @object
	.size	kinit, 12
kinit:
	.long	0
	.long	0
	.byte	1
	.zero	3
	.globl	g_aos_init
	.section	.bss.g_aos_init,"aw",@nobits
	.align 4
	.type	g_aos_init, @object
	.size	g_aos_init, 4
g_aos_init:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.sys_init
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 6 "./kernel/rhino/core/include/k_sys.h"
	.file 7 "./kernel/rhino/core/include/k_list.h"
	.file 8 "./kernel/rhino/core/include/k_obj.h"
	.file 9 "./kernel/rhino/core/include/k_task.h"
	.file 10 "./kernel/rhino/core/include/k_mutex.h"
	.file 11 "./kernel/rhino/core/include/k_sem.h"
	.file 12 "./include/aos/init.h"
	.file 13 "././platform/mcu/moc108/aos/aos_main.h"
	.file 14 "./include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5f4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF111
	.byte	0xc
	.long	.LASF112
	.long	.LASF113
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
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x5b
	.long	0x97
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0x7a
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x3c
	.long	0x8c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xce
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0xe
	.long	0xce
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0xf
	.long	0xa9
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x10
	.long	0xa9
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x13
	.long	0xa9
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x14
	.long	0x9e
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x15
	.long	0xb4
	.uleb128 0x7
	.long	.LASF46
	.byte	0x8
	.byte	0x7
	.byte	0x8
	.long	0x13c
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.byte	0x9
	.long	0x13c
	.byte	0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.byte	0xa
	.long	0x13c
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x117
	.uleb128 0x3
	.long	.LASF27
	.byte	0x7
	.byte	0xb
	.long	0x117
	.uleb128 0x9
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x8
	.long	0x166
	.uleb128 0xa
	.long	.LASF28
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x8
	.byte	0xb
	.long	0x14d
	.uleb128 0x9
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0xd
	.long	0x19c
	.uleb128 0xa
	.long	.LASF31
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.uleb128 0xa
	.long	.LASF33
	.byte	0x2
	.uleb128 0xa
	.long	.LASF34
	.byte	0x3
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF36
	.byte	0x8
	.byte	0x13
	.long	0x171
	.uleb128 0x9
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x15
	.long	0x1e4
	.uleb128 0xa
	.long	.LASF37
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.uleb128 0xa
	.long	.LASF39
	.byte	0x2
	.uleb128 0xa
	.long	.LASF40
	.byte	0x3
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF45
	.byte	0x8
	.byte	0x1e
	.long	0x1a7
	.uleb128 0x7
	.long	.LASF47
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.long	0x22c
	.uleb128 0x8
	.long	.LASF48
	.byte	0x8
	.byte	0x21
	.long	0x142
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x8
	.byte	0x22
	.long	0x22c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x8
	.byte	0x23
	.long	0x166
	.byte	0xc
	.uleb128 0x8
	.long	.LASF51
	.byte	0x8
	.byte	0x24
	.long	0x1e4
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x232
	.uleb128 0xb
	.long	0xd5
	.uleb128 0x3
	.long	.LASF52
	.byte	0x8
	.byte	0x25
	.long	0x1ef
	.uleb128 0x6
	.byte	0x4
	.long	0x142
	.uleb128 0x9
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x8
	.long	0x285
	.uleb128 0xa
	.long	.LASF53
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x1
	.uleb128 0xa
	.long	.LASF55
	.byte	0x2
	.uleb128 0xa
	.long	.LASF56
	.byte	0x3
	.uleb128 0xa
	.long	.LASF57
	.byte	0x4
	.uleb128 0xa
	.long	.LASF58
	.byte	0x5
	.uleb128 0xa
	.long	.LASF59
	.byte	0x6
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF61
	.byte	0x9
	.byte	0x11
	.long	0x248
	.uleb128 0xc
	.byte	0x7c
	.byte	0x9
	.byte	0x15
	.long	0x3f5
	.uleb128 0x8
	.long	.LASF62
	.byte	0x9
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x9
	.byte	0x1a
	.long	0x22c
	.byte	0x4
	.uleb128 0x8
	.long	.LASF64
	.byte	0x9
	.byte	0x1d
	.long	0x3f5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.byte	0x20
	.long	0x405
	.byte	0x10
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x22
	.long	0x142
	.byte	0x18
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x25
	.long	0x101
	.byte	0x20
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x28
	.long	0x460
	.byte	0x24
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x2b
	.long	0x142
	.byte	0x28
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x2e
	.long	0x142
	.byte	0x30
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x2f
	.long	0x10c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x30
	.long	0x10c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x31
	.long	0x242
	.byte	0x48
	.uleb128 0xd
	.string	"msg"
	.byte	0x9
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x39
	.long	0x285
	.byte	0x54
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x3a
	.long	0x19c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF47
	.byte	0x9
	.byte	0x3d
	.long	0x466
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x40
	.long	0x4b5
	.byte	0x60
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xe
	.long	0xc6
	.long	0x405
	.uleb128 0xf
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xeb
	.uleb128 0x7
	.long	.LASF89
	.byte	0x2c
	.byte	0xa
	.byte	0x8
	.long	0x460
	.uleb128 0x8
	.long	.LASF47
	.byte	0xa
	.byte	0x9
	.long	0x237
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xa
	.byte	0xa
	.long	0x4c6
	.byte	0x14
	.uleb128 0x8
	.long	.LASF69
	.byte	0xa
	.byte	0xb
	.long	0x460
	.byte	0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0xa
	.byte	0xc
	.long	0xf6
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF92
	.byte	0xa
	.byte	0xf
	.long	0x142
	.byte	0x20
	.uleb128 0x8
	.long	.LASF88
	.byte	0xa
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x40b
	.uleb128 0x6
	.byte	0x4
	.long	0x237
	.uleb128 0x7
	.long	.LASF93
	.byte	0x28
	.byte	0xb
	.byte	0xb
	.long	0x4b5
	.uleb128 0x8
	.long	.LASF47
	.byte	0xb
	.byte	0xc
	.long	0x237
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0xb
	.byte	0xd
	.long	0xe0
	.byte	0x14
	.uleb128 0x8
	.long	.LASF95
	.byte	0xb
	.byte	0xe
	.long	0xe0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF96
	.byte	0xb
	.byte	0x10
	.long	0x142
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x46c
	.uleb128 0x3
	.long	.LASF97
	.byte	0x9
	.byte	0x70
	.long	0x290
	.uleb128 0x6
	.byte	0x4
	.long	0x4bb
	.uleb128 0xc
	.byte	0xc
	.byte	0xc
	.byte	0xb
	.long	0x4f9
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0xc
	.long	0x25
	.byte	0
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0xd
	.long	0x4f9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0xf
	.long	0x4ff
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc8
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF101
	.uleb128 0x3
	.long	.LASF102
	.byte	0xc
	.byte	0x10
	.long	0x4cc
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1
	.byte	0x16
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x54c
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x18
	.long	0x25
	.byte	0
	.uleb128 0x12
	.long	.LVL1
	.long	0x5a8
	.uleb128 0x12
	.long	.LVL2
	.long	0x5b3
	.uleb128 0x12
	.long	.LVL3
	.long	0x5be
	.byte	0
	.uleb128 0x13
	.long	.LASF115
	.byte	0x1
	.byte	0x27
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x586
	.uleb128 0x12
	.long	.LVL4
	.long	0x5c9
	.uleb128 0x12
	.long	.LVL5
	.long	0x5d5
	.uleb128 0x12
	.long	.LVL6
	.long	0x5e0
	.uleb128 0x14
	.long	.LVL7
	.long	0x5eb
	.byte	0
	.uleb128 0x15
	.long	.LASF103
	.byte	0x1
	.byte	0x10
	.long	0x506
	.uleb128 0x5
	.byte	0x3
	.long	kinit
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0xc
	.long	0x4c6
	.uleb128 0x5
	.byte	0x3
	.long	g_aos_init
	.uleb128 0x17
	.long	.LASF104
	.long	.LASF104
	.byte	0xd
	.byte	0xa
	.uleb128 0x17
	.long	.LASF105
	.long	.LASF105
	.byte	0x1
	.byte	0xe
	.uleb128 0x17
	.long	.LASF106
	.long	.LASF106
	.byte	0xc
	.byte	0x12
	.uleb128 0x18
	.long	.LASF107
	.long	.LASF107
	.byte	0xe
	.value	0x21a
	.uleb128 0x17
	.long	.LASF108
	.long	.LASF108
	.byte	0xd
	.byte	0x8
	.uleb128 0x17
	.long	.LASF109
	.long	.LASF109
	.byte	0x9
	.byte	0x9d
	.uleb128 0x18
	.long	.LASF110
	.long	.LASF110
	.byte	0xe
	.value	0x21f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF39:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF57:
	.string	"K_PEND_SUSPENDED"
.LASF97:
	.string	"ktask_t"
.LASF102:
	.string	"kinit_t"
.LASF80:
	.string	"time_total"
.LASF44:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF52:
	.string	"blk_obj_t"
.LASF34:
	.string	"BLK_DEL"
.LASF16:
	.string	"uint64_t"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"size_t"
.LASF110:
	.string	"aos_start"
.LASF90:
	.string	"mutex_task"
.LASF65:
	.string	"task_stack_base"
.LASF31:
	.string	"BLK_FINISH"
.LASF21:
	.string	"cpu_stack_t"
.LASF115:
	.string	"sys_start"
.LASF32:
	.string	"BLK_ABORT"
.LASF42:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF10:
	.string	"__uint32_t"
.LASF22:
	.string	"mutex_nested_t"
.LASF54:
	.string	"K_RDY"
.LASF45:
	.string	"kobj_type_t"
.LASF77:
	.string	"blk_state"
.LASF58:
	.string	"K_SLEEP"
.LASF50:
	.string	"blk_policy"
.LASF74:
	.string	"tick_head"
.LASF107:
	.string	"aos_init"
.LASF62:
	.string	"task_stack"
.LASF23:
	.string	"suspend_nested_t"
.LASF96:
	.string	"sem_item"
.LASF93:
	.string	"sem_s"
.LASF87:
	.string	"b_prio"
.LASF49:
	.string	"name"
.LASF3:
	.string	"signed char"
.LASF72:
	.string	"tick_match"
.LASF63:
	.string	"task_name"
.LASF47:
	.string	"blk_obj"
.LASF1:
	.string	"long long int"
.LASF19:
	.string	"name_t"
.LASF78:
	.string	"task_sem_obj"
.LASF114:
	.string	"sys_init"
.LASF36:
	.string	"blk_state_t"
.LASF9:
	.string	"long int"
.LASF84:
	.string	"sched_policy"
.LASF29:
	.string	"BLK_POLICY_FIFO"
.LASF40:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF41:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF38:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF100:
	.string	"cli_enable"
.LASF6:
	.string	"unsigned char"
.LASF55:
	.string	"K_PEND"
.LASF2:
	.string	"long double"
.LASF33:
	.string	"BLK_TIMEOUT"
.LASF64:
	.string	"user_info"
.LASF69:
	.string	"mutex_list"
.LASF98:
	.string	"argc"
.LASF91:
	.string	"owner_nested"
.LASF48:
	.string	"blk_list"
.LASF13:
	.string	"long long unsigned int"
.LASF68:
	.string	"suspend_count"
.LASF15:
	.string	"uint32_t"
.LASF92:
	.string	"mutex_item"
.LASF112:
	.string	"src/aos_main.c"
.LASF0:
	.string	"unsigned int"
.LASF75:
	.string	"bq_msg_size"
.LASF20:
	.string	"sem_count_t"
.LASF99:
	.string	"argv"
.LASF104:
	.string	"soc_system_init"
.LASF86:
	.string	"prio"
.LASF8:
	.string	"short unsigned int"
.LASF71:
	.string	"tick_list"
.LASF83:
	.string	"pend_option"
.LASF85:
	.string	"cpu_num"
.LASF18:
	.string	"char"
.LASF89:
	.string	"mutex_s"
.LASF28:
	.string	"BLK_POLICY_PRI"
.LASF59:
	.string	"K_SLEEP_SUSPENDED"
.LASF37:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF67:
	.string	"task_list"
.LASF35:
	.string	"BLK_INVALID"
.LASF101:
	.string	"_Bool"
.LASF79:
	.string	"time_slice"
.LASF12:
	.string	"__uint64_t"
.LASF103:
	.string	"kinit"
.LASF70:
	.string	"task_stats_item"
.LASF81:
	.string	"pend_flags"
.LASF116:
	.string	"g_aos_init"
.LASF11:
	.string	"long unsigned int"
.LASF106:
	.string	"aos_kernel_init"
.LASF76:
	.string	"task_state"
.LASF61:
	.string	"task_stat_t"
.LASF73:
	.string	"tick_remain"
.LASF94:
	.string	"count"
.LASF82:
	.string	"pend_info"
.LASF88:
	.string	"mm_alloc_flag"
.LASF53:
	.string	"K_SEED"
.LASF111:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF66:
	.string	"stack_size"
.LASF14:
	.string	"uint8_t"
.LASF46:
	.string	"klist_s"
.LASF27:
	.string	"klist_t"
.LASF95:
	.string	"peak_count"
.LASF108:
	.string	"soc_driver_init"
.LASF17:
	.string	"sizetype"
.LASF105:
	.string	"board_init"
.LASF30:
	.string	"blk_policy_t"
.LASF60:
	.string	"K_DELETED"
.LASF113:
	.string	"/home/stone/Documents/pca"
.LASF109:
	.string	"krhino_task_dyn_create"
.LASF26:
	.string	"prev"
.LASF24:
	.string	"tick_t"
.LASF51:
	.string	"obj_type"
.LASF56:
	.string	"K_SUSPENDED"
.LASF25:
	.string	"next"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

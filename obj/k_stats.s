	.file	"k_stats.c"
	.text
.Ltext0:
	.section	.text.unlikely.kobj_list_init,"ax",@progbits
.LCOLDB0:
	.section	.text.kobj_list_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.kobj_list_init
.Ltext_cold0:
	.section	.text.kobj_list_init
	.globl	kobj_list_init
	.type	kobj_list_init, @function
kobj_list_init:
.LFB12:
	.file 1 "kernel/rhino/core/k_stats.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB20:
.LBB21:
	.file 2 "./kernel/rhino/core/include/k_list.h"
	.loc 2 17 0
	movl	$g_kobj_list, g_kobj_list
	.loc 2 18 0
	movl	$g_kobj_list, g_kobj_list+4
.LVL1:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 2 17 0
	movl	$g_kobj_list+8, g_kobj_list+8
.LBE23:
.LBE22:
	.loc 1 9 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB25:
.LBB24:
	.loc 2 18 0
	movl	$g_kobj_list+8, g_kobj_list+12
.LVL2:
.LBE24:
.LBE25:
.LBB26:
.LBB27:
	.loc 2 17 0
	movl	$g_kobj_list+16, g_kobj_list+16
	.loc 2 18 0
	movl	$g_kobj_list+16, g_kobj_list+20
.LVL3:
.LBE27:
.LBE26:
.LBB28:
.LBB29:
	.loc 2 17 0
	movl	$g_kobj_list+24, g_kobj_list+24
	.loc 2 18 0
	movl	$g_kobj_list+24, g_kobj_list+28
.LVL4:
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 2 17 0
	movl	$g_kobj_list+32, g_kobj_list+32
	.loc 2 18 0
	movl	$g_kobj_list+32, g_kobj_list+36
.LVL5:
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 2 17 0
	movl	$g_kobj_list+48, g_kobj_list+48
	.loc 2 18 0
	movl	$g_kobj_list+48, g_kobj_list+52
.LVL6:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 17 0
	movl	$g_kobj_list+40, g_kobj_list+40
	.loc 2 18 0
	movl	$g_kobj_list+40, g_kobj_list+44
.LVL7:
.LBE35:
.LBE34:
	.loc 1 32 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	kobj_list_init, .-kobj_list_init
	.section	.text.unlikely.kobj_list_init
.LCOLDE0:
	.section	.text.kobj_list_init
.LHOTE0:
	.section	.text.unlikely.krhino_stack_ovf_check,"ax",@progbits
.LCOLDB1:
	.section	.text.krhino_stack_ovf_check,"ax",@progbits
.LHOTB1:
	.globl	krhino_stack_ovf_check
	.type	krhino_stack_ovf_check, @function
krhino_stack_ovf_check:
.LFB13:
	.loc 1 38 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 42 0
	movl	g_active_task, %eax
	movl	16(%eax), %eax
.LVL8:
	.loc 1 45 0
	cmpl	$-559038801, (%eax)
	leal	4(%eax), %ebx
.LVL9:
	je	.L4
	.loc 1 46 0
	subl	$12, %esp
	pushl	$1200
	call	k_err_proc
.LVL10:
	addl	$16, %esp
.L4:
.LVL11:
	.loc 1 50 0 discriminator 2
	movl	g_active_task, %eax
	cmpl	(%eax), %ebx
	jbe	.L3
	.loc 1 51 0
	subl	$12, %esp
	pushl	$1200
	call	k_err_proc
.LVL12:
	addl	$16, %esp
.L3:
	.loc 1 53 0
	movl	-4(%ebp), %ebx
.LVL13:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	krhino_stack_ovf_check, .-krhino_stack_ovf_check
	.section	.text.unlikely.krhino_stack_ovf_check
.LCOLDE1:
	.section	.text.krhino_stack_ovf_check
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.kobj_list_init
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 7 "./kernel/rhino/core/include/k_sys.h"
	.file 8 "./kernel/rhino/core/include/k_err.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_task.h"
	.file 11 "./kernel/rhino/core/include/k_mutex.h"
	.file 12 "./kernel/rhino/core/include/k_sem.h"
	.file 13 "./kernel/rhino/core/include/k_internal.h"
	.file 14 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x831
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF174
	.byte	0xc
	.long	.LASF175
	.long	.LASF176
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x5b
	.long	0x97
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x30
	.long	0x7a
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x3c
	.long	0x8c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x6
	.byte	0xe
	.long	0xc8
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0xf
	.long	0xa9
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0x10
	.long	0xa9
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0x13
	.long	0xa9
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x14
	.long	0x9e
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x8
	.long	0x2b2
	.uleb128 0x7
	.long	.LASF24
	.byte	0
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.uleb128 0x7
	.long	.LASF27
	.byte	0x3
	.uleb128 0x7
	.long	.LASF28
	.byte	0x4
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.uleb128 0x7
	.long	.LASF30
	.byte	0x6
	.uleb128 0x7
	.long	.LASF31
	.byte	0x7
	.uleb128 0x7
	.long	.LASF32
	.byte	0x8
	.uleb128 0x7
	.long	.LASF33
	.byte	0x9
	.uleb128 0x7
	.long	.LASF34
	.byte	0xa
	.uleb128 0x7
	.long	.LASF35
	.byte	0xb
	.uleb128 0x7
	.long	.LASF36
	.byte	0xc
	.uleb128 0x7
	.long	.LASF37
	.byte	0xd
	.uleb128 0x7
	.long	.LASF38
	.byte	0x64
	.uleb128 0x7
	.long	.LASF39
	.byte	0x65
	.uleb128 0x7
	.long	.LASF40
	.byte	0x66
	.uleb128 0x7
	.long	.LASF41
	.byte	0x67
	.uleb128 0x7
	.long	.LASF42
	.byte	0x68
	.uleb128 0x7
	.long	.LASF43
	.byte	0x69
	.uleb128 0x7
	.long	.LASF44
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF45
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF46
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF47
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF48
	.byte	0xca
	.uleb128 0x7
	.long	.LASF49
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF50
	.value	0x12c
	.uleb128 0x8
	.long	.LASF51
	.value	0x12d
	.uleb128 0x8
	.long	.LASF52
	.value	0x12e
	.uleb128 0x8
	.long	.LASF53
	.value	0x12f
	.uleb128 0x8
	.long	.LASF54
	.value	0x130
	.uleb128 0x8
	.long	.LASF55
	.value	0x131
	.uleb128 0x8
	.long	.LASF56
	.value	0x132
	.uleb128 0x8
	.long	.LASF57
	.value	0x133
	.uleb128 0x8
	.long	.LASF58
	.value	0x134
	.uleb128 0x8
	.long	.LASF59
	.value	0x190
	.uleb128 0x8
	.long	.LASF60
	.value	0x191
	.uleb128 0x8
	.long	.LASF61
	.value	0x192
	.uleb128 0x8
	.long	.LASF62
	.value	0x193
	.uleb128 0x8
	.long	.LASF63
	.value	0x194
	.uleb128 0x8
	.long	.LASF64
	.value	0x195
	.uleb128 0x8
	.long	.LASF65
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF66
	.value	0x258
	.uleb128 0x8
	.long	.LASF67
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF68
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF69
	.value	0x2be
	.uleb128 0x8
	.long	.LASF70
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF71
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF72
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF73
	.value	0x320
	.uleb128 0x8
	.long	.LASF74
	.value	0x321
	.uleb128 0x8
	.long	.LASF75
	.value	0x384
	.uleb128 0x8
	.long	.LASF76
	.value	0x385
	.uleb128 0x8
	.long	.LASF77
	.value	0x386
	.uleb128 0x8
	.long	.LASF78
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF79
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF80
	.value	0x44c
	.uleb128 0x8
	.long	.LASF81
	.value	0x44d
	.uleb128 0x8
	.long	.LASF82
	.value	0x44e
	.uleb128 0x8
	.long	.LASF83
	.value	0x44f
	.uleb128 0x8
	.long	.LASF84
	.value	0x450
	.uleb128 0x8
	.long	.LASF85
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF86
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF87
	.byte	0x7
	.byte	0x15
	.long	0xb4
	.uleb128 0x9
	.long	.LASF109
	.byte	0x8
	.byte	0x2
	.byte	0x8
	.long	0x2e2
	.uleb128 0xa
	.long	.LASF88
	.byte	0x2
	.byte	0x9
	.long	0x2e2
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x2
	.byte	0xa
	.long	0x2e2
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2bd
	.uleb128 0x3
	.long	.LASF90
	.byte	0x2
	.byte	0xb
	.long	0x2bd
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x8
	.long	0x30c
	.uleb128 0x7
	.long	.LASF91
	.byte	0
	.uleb128 0x7
	.long	.LASF92
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF93
	.byte	0x9
	.byte	0xb
	.long	0x2f3
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0xd
	.long	0x342
	.uleb128 0x7
	.long	.LASF94
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0x1
	.uleb128 0x7
	.long	.LASF96
	.byte	0x2
	.uleb128 0x7
	.long	.LASF97
	.byte	0x3
	.uleb128 0x7
	.long	.LASF98
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0x9
	.byte	0x13
	.long	0x317
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x15
	.long	0x38a
	.uleb128 0x7
	.long	.LASF100
	.byte	0
	.uleb128 0x7
	.long	.LASF101
	.byte	0x1
	.uleb128 0x7
	.long	.LASF102
	.byte	0x2
	.uleb128 0x7
	.long	.LASF103
	.byte	0x3
	.uleb128 0x7
	.long	.LASF104
	.byte	0x4
	.uleb128 0x7
	.long	.LASF105
	.byte	0x5
	.uleb128 0x7
	.long	.LASF106
	.byte	0x6
	.uleb128 0x7
	.long	.LASF107
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF108
	.byte	0x9
	.byte	0x1e
	.long	0x34d
	.uleb128 0x9
	.long	.LASF110
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x3d2
	.uleb128 0xa
	.long	.LASF111
	.byte	0x9
	.byte	0x21
	.long	0x2e8
	.byte	0
	.uleb128 0xa
	.long	.LASF112
	.byte	0x9
	.byte	0x22
	.long	0x3d2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF113
	.byte	0x9
	.byte	0x23
	.long	0x30c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF114
	.byte	0x9
	.byte	0x24
	.long	0x38a
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x3d8
	.uleb128 0xc
	.long	0xcf
	.uleb128 0x3
	.long	.LASF115
	.byte	0x9
	.byte	0x25
	.long	0x395
	.uleb128 0xd
	.byte	0x38
	.byte	0x9
	.byte	0x27
	.long	0x445
	.uleb128 0xa
	.long	.LASF116
	.byte	0x9
	.byte	0x28
	.long	0x2e8
	.byte	0
	.uleb128 0xa
	.long	.LASF117
	.byte	0x9
	.byte	0x29
	.long	0x2e8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF118
	.byte	0x9
	.byte	0x2c
	.long	0x2e8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF119
	.byte	0x9
	.byte	0x30
	.long	0x2e8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF120
	.byte	0x9
	.byte	0x34
	.long	0x2e8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF121
	.byte	0x9
	.byte	0x38
	.long	0x2e8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF122
	.byte	0x9
	.byte	0x3c
	.long	0x2e8
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF123
	.byte	0x9
	.byte	0x3e
	.long	0x3e8
	.uleb128 0xb
	.byte	0x4
	.long	0x2e8
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x8
	.long	0x493
	.uleb128 0x7
	.long	.LASF124
	.byte	0
	.uleb128 0x7
	.long	.LASF125
	.byte	0x1
	.uleb128 0x7
	.long	.LASF126
	.byte	0x2
	.uleb128 0x7
	.long	.LASF127
	.byte	0x3
	.uleb128 0x7
	.long	.LASF128
	.byte	0x4
	.uleb128 0x7
	.long	.LASF129
	.byte	0x5
	.uleb128 0x7
	.long	.LASF130
	.byte	0x6
	.uleb128 0x7
	.long	.LASF131
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF132
	.byte	0xa
	.byte	0x11
	.long	0x456
	.uleb128 0xd
	.byte	0x7c
	.byte	0xa
	.byte	0x15
	.long	0x603
	.uleb128 0xa
	.long	.LASF133
	.byte	0xa
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0x1a
	.long	0x3d2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0x1d
	.long	0x603
	.byte	0x8
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0x20
	.long	0x613
	.byte	0x10
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0x22
	.long	0x2e8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0x25
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0x28
	.long	0x66e
	.byte	0x24
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0x2b
	.long	0x2e8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF142
	.byte	0xa
	.byte	0x2e
	.long	0x2e8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0x2f
	.long	0x2b2
	.byte	0x38
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0x30
	.long	0x2b2
	.byte	0x40
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0x31
	.long	0x450
	.byte	0x48
	.uleb128 0xe
	.string	"msg"
	.byte	0xa
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0x39
	.long	0x493
	.byte	0x54
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0x3a
	.long	0x342
	.byte	0x58
	.uleb128 0xa
	.long	.LASF110
	.byte	0xa
	.byte	0x3d
	.long	0x674
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0x40
	.long	0x6c3
	.byte	0x60
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF153
	.byte	0xa
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF154
	.byte	0xa
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF155
	.byte	0xa
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xc6
	.long	0x613
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xe5
	.uleb128 0x9
	.long	.LASF160
	.byte	0x2c
	.byte	0xb
	.byte	0x8
	.long	0x66e
	.uleb128 0xa
	.long	.LASF110
	.byte	0xb
	.byte	0x9
	.long	0x3dd
	.byte	0
	.uleb128 0xa
	.long	.LASF161
	.byte	0xb
	.byte	0xa
	.long	0x6d4
	.byte	0x14
	.uleb128 0xa
	.long	.LASF140
	.byte	0xb
	.byte	0xb
	.long	0x66e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF162
	.byte	0xb
	.byte	0xc
	.long	0xf0
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF163
	.byte	0xb
	.byte	0xf
	.long	0x2e8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF159
	.byte	0xb
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x619
	.uleb128 0xb
	.byte	0x4
	.long	0x3dd
	.uleb128 0x9
	.long	.LASF164
	.byte	0x28
	.byte	0xc
	.byte	0xb
	.long	0x6c3
	.uleb128 0xa
	.long	.LASF110
	.byte	0xc
	.byte	0xc
	.long	0x3dd
	.byte	0
	.uleb128 0xa
	.long	.LASF165
	.byte	0xc
	.byte	0xd
	.long	0xda
	.byte	0x14
	.uleb128 0xa
	.long	.LASF166
	.byte	0xc
	.byte	0xe
	.long	0xda
	.byte	0x18
	.uleb128 0xa
	.long	.LASF167
	.byte	0xc
	.byte	0x10
	.long	0x2e8
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF159
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x67a
	.uleb128 0x3
	.long	.LASF168
	.byte	0xa
	.byte	0x70
	.long	0x49e
	.uleb128 0xb
	.byte	0x4
	.long	0x6c9
	.uleb128 0x11
	.long	.LASF177
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.long	0x6f2
	.uleb128 0x12
	.long	.LASF178
	.byte	0x2
	.byte	0xf
	.long	0x450
	.byte	0
	.uleb128 0x13
	.long	.LASF179
	.byte	0xe
	.byte	0xf
	.long	0x9e
	.byte	0x3
	.uleb128 0x14
	.long	.LASF169
	.byte	0x1
	.byte	0x8
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bf
	.uleb128 0x15
	.long	0x6da
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.byte	0xa
	.long	0x72c
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.uleb128 0x17
	.long	0x6da
	.long	.LBB22
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb
	.long	0x745
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.uleb128 0x15
	.long	0x6da
	.long	.LBB26
	.long	.LBE26-.LBB26
	.byte	0x1
	.byte	0xe
	.long	0x75e
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.uleb128 0x15
	.long	0x6da
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.byte	0x12
	.long	0x777
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.uleb128 0x15
	.long	0x6da
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.byte	0x16
	.long	0x790
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.uleb128 0x15
	.long	0x6da
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.byte	0x1a
	.long	0x7a9
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.uleb128 0x18
	.long	0x6da
	.long	.LBB34
	.long	.LBE34-.LBB34
	.byte	0x1
	.byte	0x1e
	.uleb128 0x16
	.long	0x6e6
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF170
	.byte	0x1
	.byte	0x25
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x803
	.uleb128 0x19
	.long	.LASF171
	.byte	0x1
	.byte	0x27
	.long	0x613
	.long	.LLST0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x28
	.long	0x9e
	.long	.LLST1
	.uleb128 0x1b
	.long	.LVL10
	.long	0x829
	.uleb128 0x1b
	.long	.LVL12
	.long	0x829
	.byte	0
	.uleb128 0xf
	.long	0x6d4
	.long	0x813
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF172
	.byte	0xd
	.byte	0x15
	.long	0x803
	.uleb128 0x1c
	.long	.LASF173
	.byte	0xd
	.byte	0x21
	.long	0x445
	.uleb128 0x1d
	.long	.LASF180
	.long	.LASF180
	.byte	0xd
	.byte	0x9e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL13
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL8
	.long	.LVL11
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LFE13
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
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
	.long	.LBB22
	.long	.LBE22
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"RHINO_NULL_PTR"
.LASF69:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF20:
	.string	"sem_count_t"
.LASF132:
	.string	"task_stat_t"
.LASF23:
	.string	"suspend_nested_t"
.LASF179:
	.string	"cpu_cur_get"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF152:
	.string	"pend_flags"
.LASF142:
	.string	"tick_list"
.LASF87:
	.string	"tick_t"
.LASF0:
	.string	"unsigned int"
.LASF88:
	.string	"next"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF117:
	.string	"mutex_head"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF103:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF159:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF89:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF95:
	.string	"BLK_ABORT"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF149:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF177:
	.string	"klist_init"
.LASF15:
	.string	"uint32_t"
.LASF140:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF165:
	.string	"count"
.LASF180:
	.string	"k_err_proc"
.LASF108:
	.string	"kobj_type_t"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF93:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF151:
	.string	"time_total"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF127:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF176:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"size_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF139:
	.string	"suspend_count"
.LASF144:
	.string	"tick_remain"
.LASF154:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF147:
	.string	"task_state"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF107:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF118:
	.string	"mblkpool_head"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF94:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF166:
	.string	"peak_count"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF14:
	.string	"uint8_t"
.LASF133:
	.string	"task_stack"
.LASF169:
	.string	"kobj_list_init"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF148:
	.string	"blk_state"
.LASF170:
	.string	"krhino_stack_ovf_check"
.LASF162:
	.string	"owner_nested"
.LASF1:
	.string	"long long int"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF134:
	.string	"task_name"
.LASF158:
	.string	"b_prio"
.LASF122:
	.string	"buf_queue_head"
.LASF143:
	.string	"tick_match"
.LASF97:
	.string	"BLK_DEL"
.LASF96:
	.string	"BLK_TIMEOUT"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF126:
	.string	"K_PEND"
.LASF99:
	.string	"blk_state_t"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF138:
	.string	"task_list"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF110:
	.string	"blk_obj"
.LASF109:
	.string	"klist_s"
.LASF90:
	.string	"klist_t"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF153:
	.string	"pend_info"
.LASF111:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF172:
	.string	"g_active_task"
.LASF106:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF157:
	.string	"prio"
.LASF164:
	.string	"sem_s"
.LASF19:
	.string	"name_t"
.LASF59:
	.string	"RHINO_NO_PEND_WAIT"
.LASF135:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF175:
	.string	"src/k_stats.c"
.LASF141:
	.string	"task_stats_item"
.LASF39:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF161:
	.string	"mutex_task"
.LASF91:
	.string	"BLK_POLICY_PRI"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF136:
	.string	"task_stack_base"
.LASF121:
	.string	"event_head"
.LASF124:
	.string	"K_SEED"
.LASF167:
	.string	"sem_item"
.LASF125:
	.string	"K_RDY"
.LASF123:
	.string	"kobj_list_t"
.LASF168:
	.string	"ktask_t"
.LASF120:
	.string	"queue_head"
.LASF171:
	.string	"stack_start"
.LASF16:
	.string	"uint64_t"
.LASF130:
	.string	"K_SLEEP_SUSPENDED"
.LASF76:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF102:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"RHINO_RINGBUF_FULL"
.LASF112:
	.string	"name"
.LASF129:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF115:
	.string	"blk_obj_t"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF150:
	.string	"time_slice"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF92:
	.string	"BLK_POLICY_FIFO"
.LASF100:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF145:
	.string	"tick_head"
.LASF160:
	.string	"mutex_s"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF174:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF116:
	.string	"task_head"
.LASF114:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF178:
	.string	"list_head"
.LASF22:
	.string	"mutex_nested_t"
.LASF137:
	.string	"stack_size"
.LASF105:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF119:
	.string	"sem_head"
.LASF173:
	.string	"g_kobj_list"
.LASF128:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF163:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF101:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF155:
	.string	"sched_policy"
.LASF113:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF131:
	.string	"K_DELETED"
.LASF104:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF156:
	.string	"cpu_num"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF146:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF98:
	.string	"BLK_INVALID"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

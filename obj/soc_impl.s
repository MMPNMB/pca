	.file	"soc_impl.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"panic %d!\r\n"
.LC1:
	.string	"\r\n%08x:"
.LC2:
	.string	"%08x "
.LC3:
	.string	"\r"
.LC4:
	.string	"0"
.LC5:
	.string	"platform/mcu/moc108/aos/soc_impl.c"
	.section	.text.unlikely.soc_err_proc,"ax",@progbits
.LCOLDB6:
	.section	.text.soc_err_proc,"ax",@progbits
.LHOTB6:
	.section	.text.unlikely.soc_err_proc
.Ltext_cold0:
	.section	.text.soc_err_proc
	.globl	soc_err_proc
	.type	soc_err_proc, @function
soc_err_proc:
.LFB15:
	.file 1 "platform/mcu/moc108/aos/soc_impl.c"
	.loc 1 100 0
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
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 102 0
	pushl	8(%ebp)
	pushl	$.LC0
	call	printf
.LVL1:
.LBB12:
.LBB13:
	.loc 1 85 0
	call	krhino_cur_task_get
.LVL2:
	movl	16(%eax), %ebx
	call	krhino_cur_task_get
.LVL3:
	movl	20(%eax), %eax
	leal	(%ebx,%eax,4), %esi
.LVL4:
.LBB14:
.LBB15:
	.loc 1 68 0
#APP
# 68 "platform/mcu/moc108/aos/soc_impl.c" 1
	mov %ebx,sp

# 0 "" 2
.LVL5:
#NO_APP
.LBE15:
.LBE14:
	.loc 1 82 0
	xorl	%edi, %edi
	.loc 1 86 0
	addl	$16, %esp
.LVL6:
.L2:
	.loc 1 88 0
	cmpl	%ebx, %esi
	jbe	.L7
.LBB16:
	.loc 1 89 0
	testl	$3, %edi
	jne	.L3
.LBB17:
	.loc 1 90 0
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	$.LC1
	call	printf
.LVL7:
	addl	$16, %esp
.L3:
.LBE17:
	.loc 1 92 0
	pushl	%eax
	pushl	%eax
	.loc 1 93 0
	incl	%edi
.LVL8:
	.loc 1 92 0
	pushl	(%ebx)
	pushl	$.LC2
	.loc 1 94 0
	addl	$4, %ebx
.LVL9:
	.loc 1 92 0
	call	printf
.LVL10:
	.loc 1 94 0
	addl	$16, %esp
	jmp	.L2
.L7:
.LBE16:
	.loc 1 96 0
	subl	$12, %esp
	pushl	$.LC3
	call	puts
.LVL11:
.LBE13:
.LBE12:
	.loc 1 104 0
	pushl	$.LC4
	pushl	$__func__.2825
	pushl	$104
	pushl	$.LC5
	call	__assert_func
.LVL12:
	.cfi_endproc
.LFE15:
	.size	soc_err_proc, .-soc_err_proc
	.section	.text.unlikely.soc_err_proc
.LCOLDE6:
	.section	.text.soc_err_proc
.LHOTE6:
	.section	.text.unlikely.aos_mm_leak_region_init,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_mm_leak_region_init,"ax",@progbits
.LHOTB7:
	.globl	aos_mm_leak_region_init
	.type	aos_mm_leak_region_init, @function
aos_mm_leak_region_init:
.LFB12:
	.loc 1 56 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 57 0
	pushl	$_bss_end
	pushl	$_bss_start
	call	krhino_mm_leak_region_init
.LVL13:
	.loc 1 58 0
	popl	%eax
	popl	%edx
	pushl	$_data_ram_end
	pushl	$_data_ram_begin
	call	krhino_mm_leak_region_init
.LVL14:
	.loc 1 59 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	aos_mm_leak_region_init, .-aos_mm_leak_region_init
	.section	.text.unlikely.aos_mm_leak_region_init
.LCOLDE7:
	.section	.text.aos_mm_leak_region_init
.LHOTE7:
	.section	.text.unlikely.soc_get_cur_sp,"ax",@progbits
.LCOLDB8:
	.section	.text.soc_get_cur_sp,"ax",@progbits
.LHOTB8:
	.globl	soc_get_cur_sp
	.type	soc_get_cur_sp, @function
soc_get_cur_sp:
.LFB13:
	.loc 1 65 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 68 0
#APP
# 68 "platform/mcu/moc108/aos/soc_impl.c" 1
	mov %eax,sp

# 0 "" 2
.LVL16:
	.loc 1 73 0
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	soc_get_cur_sp, .-soc_get_cur_sp
	.section	.text.unlikely.soc_get_cur_sp
.LCOLDE8:
	.section	.text.soc_get_cur_sp
.LHOTE8:
	.section	.rodata.__func__.2825,"a",@progbits
	.align 4
	.type	__func__.2825, @object
	.size	__func__.2825, 13
__func__.2825:
	.string	"soc_err_proc"
	.globl	g_err_proc
	.section	.data.g_err_proc,"aw",@progbits
	.align 4
	.type	g_err_proc, @object
	.size	g_err_proc, 4
g_err_proc:
	.long	soc_err_proc
	.globl	g_region_num
	.section	.data.g_region_num,"aw",@progbits
	.align 4
	.type	g_region_num, @object
	.size	g_region_num, 4
g_region_num:
	.long	1
	.globl	g_mm_region
	.section	.data.g_mm_region,"aw",@progbits
	.align 4
	.type	g_mm_region, @object
	.size	g_mm_region, 8
g_mm_region:
	.long	heap_start
	.long	heap_len
	.text
.Letext0:
	.section	.text.unlikely.soc_err_proc
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./kernel/rhino/core/include/k_err.h"
	.file 6 "./kernel/rhino/core/include/k_mm_region.h"
	.file 7 "<built-in>"
	.file 8 "./kernel/rhino/core/include/k_task.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/assert.h"
	.file 10 "./kernel/rhino/core/include/k_mm_debug.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x59e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF100
	.byte	0xc
	.long	.LASF101
	.long	.LASF102
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
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.long	0xbf
	.uleb128 0x7
	.long	0xb2
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0x5
	.byte	0x8
	.long	0x270
	.uleb128 0x9
	.long	.LASF17
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x9
	.uleb128 0x9
	.long	.LASF27
	.byte	0xa
	.uleb128 0x9
	.long	.LASF28
	.byte	0xb
	.uleb128 0x9
	.long	.LASF29
	.byte	0xc
	.uleb128 0x9
	.long	.LASF30
	.byte	0xd
	.uleb128 0x9
	.long	.LASF31
	.byte	0x64
	.uleb128 0x9
	.long	.LASF32
	.byte	0x65
	.uleb128 0x9
	.long	.LASF33
	.byte	0x66
	.uleb128 0x9
	.long	.LASF34
	.byte	0x67
	.uleb128 0x9
	.long	.LASF35
	.byte	0x68
	.uleb128 0x9
	.long	.LASF36
	.byte	0x69
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF39
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF40
	.byte	0xc9
	.uleb128 0x9
	.long	.LASF41
	.byte	0xca
	.uleb128 0x9
	.long	.LASF42
	.byte	0xcb
	.uleb128 0xa
	.long	.LASF43
	.value	0x12c
	.uleb128 0xa
	.long	.LASF44
	.value	0x12d
	.uleb128 0xa
	.long	.LASF45
	.value	0x12e
	.uleb128 0xa
	.long	.LASF46
	.value	0x12f
	.uleb128 0xa
	.long	.LASF47
	.value	0x130
	.uleb128 0xa
	.long	.LASF48
	.value	0x131
	.uleb128 0xa
	.long	.LASF49
	.value	0x132
	.uleb128 0xa
	.long	.LASF50
	.value	0x133
	.uleb128 0xa
	.long	.LASF51
	.value	0x134
	.uleb128 0xa
	.long	.LASF52
	.value	0x190
	.uleb128 0xa
	.long	.LASF53
	.value	0x191
	.uleb128 0xa
	.long	.LASF54
	.value	0x192
	.uleb128 0xa
	.long	.LASF55
	.value	0x193
	.uleb128 0xa
	.long	.LASF56
	.value	0x194
	.uleb128 0xa
	.long	.LASF57
	.value	0x195
	.uleb128 0xa
	.long	.LASF58
	.value	0x1f4
	.uleb128 0xa
	.long	.LASF59
	.value	0x258
	.uleb128 0xa
	.long	.LASF60
	.value	0x2bc
	.uleb128 0xa
	.long	.LASF61
	.value	0x2bd
	.uleb128 0xa
	.long	.LASF62
	.value	0x2be
	.uleb128 0xa
	.long	.LASF63
	.value	0x2bf
	.uleb128 0xa
	.long	.LASF64
	.value	0x2c0
	.uleb128 0xa
	.long	.LASF65
	.value	0x2c1
	.uleb128 0xa
	.long	.LASF66
	.value	0x320
	.uleb128 0xa
	.long	.LASF67
	.value	0x321
	.uleb128 0xa
	.long	.LASF68
	.value	0x384
	.uleb128 0xa
	.long	.LASF69
	.value	0x385
	.uleb128 0xa
	.long	.LASF70
	.value	0x386
	.uleb128 0xa
	.long	.LASF71
	.value	0x3e8
	.uleb128 0xa
	.long	.LASF72
	.value	0x3e9
	.uleb128 0xa
	.long	.LASF73
	.value	0x44c
	.uleb128 0xa
	.long	.LASF74
	.value	0x44d
	.uleb128 0xa
	.long	.LASF75
	.value	0x44e
	.uleb128 0xa
	.long	.LASF76
	.value	0x44f
	.uleb128 0xa
	.long	.LASF77
	.value	0x450
	.uleb128 0xa
	.long	.LASF78
	.value	0x4b0
	.uleb128 0xa
	.long	.LASF79
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF80
	.byte	0x5
	.byte	0x54
	.long	0xc4
	.uleb128 0x3
	.long	.LASF81
	.byte	0x5
	.byte	0x56
	.long	0x286
	.uleb128 0x6
	.byte	0x4
	.long	0x28c
	.uleb128 0xb
	.long	0x297
	.uleb128 0xc
	.long	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x93
	.uleb128 0xd
	.byte	0x8
	.byte	0x6
	.byte	0x8
	.long	0x2be
	.uleb128 0xe
	.long	.LASF82
	.byte	0x6
	.byte	0x9
	.long	0x297
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0xa
	.long	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF83
	.byte	0x6
	.byte	0xb
	.long	0x29d
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1
	.byte	0x40
	.long	0x2c
	.byte	0x1
	.long	0x2e4
	.uleb128 0x11
	.string	"sp"
	.byte	0x1
	.byte	0x42
	.long	0x2c
	.byte	0
	.uleb128 0x12
	.long	.LASF103
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	0x368
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x4f
	.long	0x9e
	.uleb128 0x11
	.string	"rst"
	.byte	0x1
	.byte	0x50
	.long	0x270
	.uleb128 0x11
	.string	"cur"
	.byte	0x1
	.byte	0x51
	.long	0xb0
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x51
	.long	0xb0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x52
	.long	0x25
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0x53
	.long	0x368
	.uleb128 0x10
	.long	.LASF86
	.byte	0x7
	.byte	0
	.long	0x25
	.byte	0
	.long	0x341
	.uleb128 0x14
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.uleb128 0x10
	.long	.LASF86
	.byte	0x7
	.byte	0
	.long	0x25
	.byte	0
	.long	0x355
	.uleb128 0x14
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.long	.LASF86
	.byte	0x7
	.byte	0
	.long	0x25
	.byte	0
	.uleb128 0x14
	.uleb128 0x14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x25
	.uleb128 0x17
	.long	.LASF104
	.byte	0x1
	.byte	0x63
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x487
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.byte	0x63
	.long	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF86
	.byte	0x7
	.byte	0
	.long	0x25
	.long	0x3a7
	.uleb128 0xc
	.long	0xb9
	.uleb128 0x14
	.byte	0
	.uleb128 0x1a
	.long	.LASF87
	.long	0x497
	.uleb128 0x5
	.byte	0x3
	.long	__func__.2825
	.uleb128 0x1b
	.long	0x2e4
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0x67
	.long	0x474
	.uleb128 0x1c
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x1d
	.long	0x2f0
	.byte	0
	.uleb128 0x1d
	.long	0x2fb
	.byte	0
	.uleb128 0x1e
	.long	0x306
	.long	.LLST0
	.uleb128 0x1e
	.long	0x311
	.long	.LLST1
	.uleb128 0x1e
	.long	0x31c
	.long	.LLST2
	.uleb128 0x1e
	.long	0x325
	.long	.LLST3
	.uleb128 0x1b
	.long	0x2c9
	.long	.LBB14
	.long	.LBE14-.LBB14
	.byte	0x1
	.byte	0x56
	.long	0x429
	.uleb128 0x1c
	.long	.LBB15
	.long	.LBE15-.LBB15
	.uleb128 0x1e
	.long	0x2d9
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LBB16
	.long	.LBE16-.LBB16
	.long	0x457
	.uleb128 0x1f
	.long	.LBB17
	.long	.LBE17-.LBB17
	.long	0x44d
	.uleb128 0x20
	.long	.LVL7
	.long	0x566
	.byte	0
	.uleb128 0x20
	.long	.LVL10
	.long	0x566
	.byte	0
	.uleb128 0x20
	.long	.LVL2
	.long	0x571
	.uleb128 0x20
	.long	.LVL3
	.long	0x571
	.uleb128 0x20
	.long	.LVL11
	.long	0x57c
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL1
	.long	0x566
	.uleb128 0x20
	.long	.LVL12
	.long	0x58b
	.byte	0
	.uleb128 0x21
	.long	0xbf
	.long	0x497
	.uleb128 0x22
	.long	0xa9
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x487
	.uleb128 0x23
	.long	.LASF105
	.byte	0x1
	.byte	0x37
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c4
	.uleb128 0x20
	.long	.LVL13
	.long	0x596
	.uleb128 0x20
	.long	.LVL14
	.long	0x596
	.byte	0
	.uleb128 0x24
	.long	0x2c9
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e1
	.uleb128 0x1e
	.long	0x2d9
	.long	.LLST5
	.byte	0
	.uleb128 0x25
	.long	.LASF88
	.byte	0x1
	.byte	0x6b
	.long	0x27b
	.uleb128 0x5
	.byte	0x3
	.long	g_err_proc
	.uleb128 0x26
	.long	.LASF89
	.byte	0x1
	.byte	0x2b
	.long	0xb0
	.uleb128 0x26
	.long	.LASF90
	.byte	0x1
	.byte	0x2d
	.long	0xb0
	.uleb128 0x21
	.long	0x2be
	.long	0x518
	.uleb128 0x22
	.long	0xa9
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF91
	.byte	0x1
	.byte	0x2f
	.long	0x508
	.uleb128 0x5
	.byte	0x3
	.long	g_mm_region
	.uleb128 0x25
	.long	.LASF92
	.byte	0x1
	.byte	0x30
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	g_region_num
	.uleb128 0x26
	.long	.LASF93
	.byte	0x1
	.byte	0x35
	.long	0x25
	.uleb128 0x26
	.long	.LASF94
	.byte	0x1
	.byte	0x35
	.long	0x25
	.uleb128 0x26
	.long	.LASF95
	.byte	0x1
	.byte	0x35
	.long	0x25
	.uleb128 0x26
	.long	.LASF96
	.byte	0x1
	.byte	0x35
	.long	0x25
	.uleb128 0x27
	.long	.LASF86
	.long	.LASF86
	.byte	0x7
	.byte	0
	.uleb128 0x27
	.long	.LASF97
	.long	.LASF97
	.byte	0x8
	.byte	0xcc
	.uleb128 0x28
	.long	.LASF106
	.long	.LASF107
	.byte	0x7
	.byte	0
	.long	.LASF106
	.uleb128 0x27
	.long	.LASF98
	.long	.LASF98
	.byte	0x9
	.byte	0x29
	.uleb128 0x27
	.long	.LASF99
	.long	.LASF99
	.byte	0xa
	.byte	0x1a
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x87
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL11
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x57
	.long	.LVL8
	.long	.LVL10
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LVL10
	.value	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LFE13
	.value	0x1
	.byte	0x50
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB15
	.long	.LFE15
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF74:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF42:
	.string	"RHINO_INV_SCHED_WAY"
.LASF60:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF81:
	.string	"krhino_err_proc_t"
.LASF91:
	.string	"g_mm_region"
.LASF101:
	.string	"src/soc_impl.c"
.LASF83:
	.string	"k_mm_region_t"
.LASF34:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF57:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF95:
	.string	"_data_ram_begin"
.LASF48:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF20:
	.string	"RHINO_RUNNING"
.LASF73:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF68:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"size_t"
.LASF15:
	.string	"sizetype"
.LASF85:
	.string	"soc_get_cur_sp"
.LASF18:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF104:
	.string	"soc_err_proc"
.LASF89:
	.string	"heap_start"
.LASF54:
	.string	"RHINO_BLK_TIMEOUT"
.LASF23:
	.string	"RHINO_NULL_PTR"
.LASF105:
	.string	"aos_mm_leak_region_init"
.LASF67:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF32:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF33:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF13:
	.string	"uint8_t"
.LASF39:
	.string	"RHINO_SCHED_DISABLE"
.LASF78:
	.string	"RHINO_TASK_STACK_OVF"
.LASF70:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF38:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF44:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF99:
	.string	"krhino_mm_leak_region_init"
.LASF92:
	.string	"g_region_num"
.LASF1:
	.string	"long long int"
.LASF12:
	.string	"long long unsigned int"
.LASF45:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF26:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF90:
	.string	"heap_len"
.LASF96:
	.string	"_data_ram_end"
.LASF9:
	.string	"long int"
.LASF84:
	.string	"offset"
.LASF22:
	.string	"RHINO_INV_PARAM"
.LASF29:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF5:
	.string	"__uint8_t"
.LASF65:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF10:
	.string	"__uint32_t"
.LASF56:
	.string	"RHINO_BLK_INV_STATE"
.LASF69:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF6:
	.string	"unsigned char"
.LASF103:
	.string	"soc_print_stack"
.LASF2:
	.string	"long double"
.LASF80:
	.string	"kstat_t"
.LASF46:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF66:
	.string	"RHINO_SEM_OVF"
.LASF14:
	.string	"uint32_t"
.LASF35:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"RHINO_NO_MEM"
.LASF30:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
.LASF41:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF17:
	.string	"RHINO_SUCCESS"
.LASF106:
	.string	"puts"
.LASF21:
	.string	"RHINO_STOPPED"
.LASF63:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF87:
	.string	"__func__"
.LASF82:
	.string	"start"
.LASF8:
	.string	"short unsigned int"
.LASF77:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF49:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF16:
	.string	"char"
.LASF86:
	.string	"printf"
.LASF62:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF24:
	.string	"RHINO_INV_ALIGN"
.LASF27:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF28:
	.string	"RHINO_KOBJ_BLK"
.LASF72:
	.string	"RHINO_TRY_AGAIN"
.LASF37:
	.string	"RHINO_RINGBUF_FULL"
.LASF79:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF64:
	.string	"RHINO_QUEUE_FULL"
.LASF76:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF94:
	.string	"_bss_end"
.LASF93:
	.string	"_bss_start"
.LASF11:
	.string	"long unsigned int"
.LASF71:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF51:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF43:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF31:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF75:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF61:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF97:
	.string	"krhino_cur_task_get"
.LASF55:
	.string	"RHINO_BLK_DEL"
.LASF100:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF50:
	.string	"RHINO_INV_TASK_STATE"
.LASF40:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF47:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF53:
	.string	"RHINO_BLK_ABORT"
.LASF102:
	.string	"/home/stone/Documents/pca"
.LASF107:
	.string	"__builtin_puts"
.LASF59:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF98:
	.string	"__assert_func"
.LASF58:
	.string	"RHINO_TIMER_STATE_INV"
.LASF88:
	.string	"g_err_proc"
.LASF52:
	.string	"RHINO_NO_PEND_WAIT"
.LASF19:
	.string	"RHINO_SYS_SP_ERR"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

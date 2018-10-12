	.file	"k_tick.c"
	.text
.Ltext0:
	.section	.text.unlikely.tick_list_init,"ax",@progbits
.LCOLDB0:
	.section	.text.tick_list_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.tick_list_init
.Ltext_cold0:
	.section	.text.tick_list_init
	.globl	tick_list_init
	.type	tick_list_init, @function
tick_list_init:
.LFB12:
	.file 1 "kernel/rhino/core/k_tick.c"
	.loc 1 8 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB4:
.LBB5:
	.file 2 "./kernel/rhino/core/include/k_list.h"
	.loc 2 17 0
	movl	$g_tick_head, g_tick_head
	.loc 2 18 0
	movl	$g_tick_head, g_tick_head+4
.LVL1:
.LBE5:
.LBE4:
	.loc 1 8 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 10 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	tick_list_init, .-tick_list_init
	.section	.text.unlikely.tick_list_init
.LCOLDE0:
	.section	.text.tick_list_init
.LHOTE0:
	.section	.text.unlikely.tick_list_insert,"ax",@progbits
.LCOLDB1:
	.section	.text.tick_list_insert,"ax",@progbits
.LHOTB1:
	.globl	tick_list_insert
	.type	tick_list_insert, @function
tick_list_insert:
.LFB14:
	.loc 1 34 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 34 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 37 0
	movl	-20(%ebp), %eax
	orl	-24(%ebp), %eax
	je	.L3
	.loc 1 38 0
	movl	g_tick_count, %esi
	movl	-24(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	g_tick_count+4, %edi
	movl	-20(%ebp), %ebx
	.loc 1 39 0
	movl	-24(%ebp), %edx
	.loc 1 38 0
	addl	%esi, %ecx
	movl	%ecx, 56(%eax)
	.loc 1 39 0
	movl	-20(%ebp), %ecx
	.loc 1 38 0
	adcl	%edi, %ebx
	.loc 1 39 0
	movl	%edx, 64(%eax)
	.loc 1 38 0
	movl	%ebx, 60(%eax)
	.loc 1 39 0
	movl	%ecx, 68(%eax)
.LVL3:
.LBB10:
.LBB11:
	.loc 1 23 0
	movl	g_tick_head, %ecx
.LVL4:
.L5:
	cmpl	$g_tick_head, %ecx
	je	.L6
.LVL5:
	.loc 1 25 0
	movl	8(%ecx), %eax
	movl	12(%ecx), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	cmpl	%edx, -20(%ebp)
	jb	.L6
	ja	.L9
	cmpl	%eax, -24(%ebp)
	jb	.L6
.L9:
	.loc 1 23 0
	movl	(%ecx), %ecx
.LVL6:
	jmp	.L5
.L6:
.LBB12:
.LBB13:
	.loc 2 28 0
	movl	4(%ecx), %edx
	movl	8(%ebp), %edi
.LBE13:
.LBE12:
	.loc 1 30 0
	movl	8(%ebp), %eax
.LBB16:
.LBB14:
	.loc 2 28 0
	movl	%edx, 52(%edi)
	.loc 2 31 0
	movl	4(%ecx), %edx
.LBE14:
.LBE16:
	.loc 1 30 0
	addl	$48, %eax
.LVL7:
.LBB17:
.LBB15:
	.loc 2 29 0
	movl	%ecx, 48(%edi)
	.loc 2 31 0
	movl	%eax, (%edx)
	.loc 2 32 0
	movl	%eax, 4(%ecx)
.LVL8:
.LBE15:
.LBE17:
.LBE11:
.LBE10:
	.loc 1 43 0
	movl	$g_tick_head, 72(%edi)
.LVL9:
.L3:
	.loc 1 45 0
	addl	$12, %esp
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
.LFE14:
	.size	tick_list_insert, .-tick_list_insert
	.section	.text.unlikely.tick_list_insert
.LCOLDE1:
	.section	.text.tick_list_insert
.LHOTE1:
	.section	.text.unlikely.tick_list_rm,"ax",@progbits
.LCOLDB2:
	.section	.text.tick_list_rm,"ax",@progbits
.LHOTB2:
	.globl	tick_list_rm
	.type	tick_list_rm, @function
tick_list_rm:
.LFB15:
	.loc 1 48 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 48 0
	movl	8(%ebp), %eax
.LVL11:
	.loc 1 51 0
	cmpl	$0, 72(%eax)
	je	.L15
.LVL12:
.LBB20:
.LBB21:
	.loc 2 46 0
	movl	48(%eax), %ecx
	movl	52(%eax), %edx
	movl	%ecx, (%edx)
.LVL13:
	.loc 2 47 0
	movl	48(%eax), %ecx
	movl	%edx, 4(%ecx)
.LVL14:
.LBE21:
.LBE20:
	.loc 1 53 0
	movl	$0, 72(%eax)
.L15:
	.loc 1 55 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	tick_list_rm, .-tick_list_rm
	.section	.text.unlikely.tick_list_rm
.LCOLDE2:
	.section	.text.tick_list_rm
.LHOTE2:
	.section	.text.unlikely.tick_list_update,"ax",@progbits
.LCOLDB3:
	.section	.text.tick_list_update,"ax",@progbits
.LHOTB3:
	.globl	tick_list_update
	.type	tick_list_update, @function
tick_list_update:
.LFB16:
	.loc 1 58 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 58 0
	movl	12(%ebp), %edi
	movl	8(%ebp), %esi
	.loc 1 67 0
	call	cpu_intrpt_save
.LVL16:
	.loc 1 69 0
	addl	%esi, g_tick_count
	.loc 1 67 0
	movl	%eax, %ebx
.LVL17:
	.loc 1 69 0
	adcl	%edi, g_tick_count+4
.LVL18:
	.loc 1 72 0
	movl	g_tick_head, %edi
.LVL19:
.L19:
	.loc 1 76 0
	cmpl	$g_tick_head, %edi
	je	.L20
	.loc 1 78 0
	leal	-48(%edi), %esi
	.loc 1 77 0
	movl	(%edi), %eax
	.loc 1 81 0
	movl	12(%edi), %edx
	.loc 1 77 0
	movl	%eax, -28(%ebp)
.LVL20:
	.loc 1 81 0
	movl	8(%edi), %eax
.LVL21:
	subl	g_tick_count, %eax
	sbbl	g_tick_count+4, %edx
	cmpl	$0, %edx
	jg	.L20
	jl	.L29
	cmpl	$0, %eax
	ja	.L20
.L29:
	.loc 1 82 0
	movl	36(%edi), %eax
	cmpl	$4, %eax
	je	.L23
	ja	.L24
	cmpl	$2, %eax
	jne	.L22
	.loc 1 90 0
	subl	$12, %esp
	pushl	%esi
.LVL22:
	call	tick_list_rm
.LVL23:
.LBB26:
.LBB27:
	.loc 2 46 0
	movl	-20(%edi), %eax
	movl	-24(%edi), %edx
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	-24(%edi), %edx
	movl	%eax, 4(%edx)
.LVL24:
.LBE27:
.LBE26:
	.loc 1 93 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	$g_ready_queue
	call	ready_list_add
.LVL25:
	.loc 1 94 0
	movl	$2, 40(%edi)
	.loc 1 95 0
	movl	$1, 36(%edi)
	jmp	.L35
.LVL26:
.L24:
	.loc 1 82 0
	cmpl	$5, %eax
	je	.L26
	cmpl	$6, %eax
	jne	.L22
	.loc 1 111 0
	subl	$12, %esp
	.loc 1 109 0
	movl	$3, 36(%edi)
	.loc 1 110 0
	movl	$0, 40(%edi)
	.loc 1 111 0
	pushl	%esi
.LVL27:
	call	tick_list_rm
.LVL28:
	jmp	.L34
.LVL29:
.L26:
	.loc 1 86 0
	subl	$12, %esp
	.loc 1 84 0
	movl	$0, 40(%edi)
	.loc 1 85 0
	movl	$1, 36(%edi)
	.loc 1 86 0
	pushl	%esi
.LVL30:
	call	tick_list_rm
.LVL31:
	.loc 1 87 0
	popl	%ecx
	popl	%edi
.LVL32:
	pushl	%esi
	pushl	$g_ready_queue
	call	ready_list_add
.LVL33:
	jmp	.L34
.LVL34:
.L23:
	.loc 1 100 0
	subl	$12, %esp
	pushl	%esi
.LVL35:
	call	tick_list_rm
.LVL36:
.LBB28:
.LBB29:
	.loc 2 46 0
	movl	-24(%edi), %edx
	movl	-20(%edi), %eax
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	-24(%edi), %edx
	movl	%eax, 4(%edx)
.LVL37:
.LBE29:
.LBE28:
	.loc 1 103 0
	movl	$2, 40(%edi)
	.loc 1 104 0
	movl	$3, 36(%edi)
.L35:
	.loc 1 105 0
	movl	%esi, (%esp)
.LVL38:
	call	mutex_task_pri_reset
.LVL39:
	.loc 1 106 0
	movl	$0, 44(%edi)
	jmp	.L34
.LVL40:
.L22:
	.loc 1 114 0
	subl	$12, %esp
	pushl	$1
.LVL41:
	call	k_err_proc
.LVL42:
.L34:
	.loc 1 112 0
	addl	$16, %esp
	.loc 1 58 0
	movl	-28(%ebp), %edi
	jmp	.L19
.LVL43:
.L20:
	.loc 1 127 0
	movl	%ebx, 8(%ebp)
	.loc 1 128 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL44:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL45:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 127 0
	jmp	cpu_intrpt_restore
.LVL46:
	.cfi_endproc
.LFE16:
	.size	tick_list_update, .-tick_list_update
	.section	.text.unlikely.tick_list_update
.LCOLDE3:
	.section	.text.tick_list_update
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.tick_list_init
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 7 "./kernel/rhino/core/include/k_sys.h"
	.file 8 "./kernel/rhino/core/include/k_err.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_sched.h"
	.file 11 "./kernel/rhino/core/include/k_task.h"
	.file 12 "./kernel/rhino/core/include/k_mutex.h"
	.file 13 "./kernel/rhino/core/include/k_sem.h"
	.file 14 "./kernel/rhino/core/include/k_internal.h"
	.file 15 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa1a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF199
	.byte	0xc
	.long	.LASF200
	.long	.LASF201
	.long	.Ldebug_ranges0+0x20
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
	.byte	0x59
	.long	0x3e
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x5b
	.long	0xa2
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x30
	.long	0x7a
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.long	0x8c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x3c
	.long	0x97
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0xe
	.long	0xde
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0xf
	.long	0xb4
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x10
	.long	0xb4
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x13
	.long	0xb4
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x14
	.long	0xa9
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x8
	.long	0x2c8
	.uleb128 0x7
	.long	.LASF26
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.uleb128 0x7
	.long	.LASF28
	.byte	0x2
	.uleb128 0x7
	.long	.LASF29
	.byte	0x3
	.uleb128 0x7
	.long	.LASF30
	.byte	0x4
	.uleb128 0x7
	.long	.LASF31
	.byte	0x5
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.uleb128 0x7
	.long	.LASF33
	.byte	0x7
	.uleb128 0x7
	.long	.LASF34
	.byte	0x8
	.uleb128 0x7
	.long	.LASF35
	.byte	0x9
	.uleb128 0x7
	.long	.LASF36
	.byte	0xa
	.uleb128 0x7
	.long	.LASF37
	.byte	0xb
	.uleb128 0x7
	.long	.LASF38
	.byte	0xc
	.uleb128 0x7
	.long	.LASF39
	.byte	0xd
	.uleb128 0x7
	.long	.LASF40
	.byte	0x64
	.uleb128 0x7
	.long	.LASF41
	.byte	0x65
	.uleb128 0x7
	.long	.LASF42
	.byte	0x66
	.uleb128 0x7
	.long	.LASF43
	.byte	0x67
	.uleb128 0x7
	.long	.LASF44
	.byte	0x68
	.uleb128 0x7
	.long	.LASF45
	.byte	0x69
	.uleb128 0x7
	.long	.LASF46
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF47
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF48
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF49
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF50
	.byte	0xca
	.uleb128 0x7
	.long	.LASF51
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF52
	.value	0x12c
	.uleb128 0x8
	.long	.LASF53
	.value	0x12d
	.uleb128 0x8
	.long	.LASF54
	.value	0x12e
	.uleb128 0x8
	.long	.LASF55
	.value	0x12f
	.uleb128 0x8
	.long	.LASF56
	.value	0x130
	.uleb128 0x8
	.long	.LASF57
	.value	0x131
	.uleb128 0x8
	.long	.LASF58
	.value	0x132
	.uleb128 0x8
	.long	.LASF59
	.value	0x133
	.uleb128 0x8
	.long	.LASF60
	.value	0x134
	.uleb128 0x8
	.long	.LASF61
	.value	0x190
	.uleb128 0x8
	.long	.LASF62
	.value	0x191
	.uleb128 0x8
	.long	.LASF63
	.value	0x192
	.uleb128 0x8
	.long	.LASF64
	.value	0x193
	.uleb128 0x8
	.long	.LASF65
	.value	0x194
	.uleb128 0x8
	.long	.LASF66
	.value	0x195
	.uleb128 0x8
	.long	.LASF67
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF68
	.value	0x258
	.uleb128 0x8
	.long	.LASF69
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF70
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF71
	.value	0x2be
	.uleb128 0x8
	.long	.LASF72
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF73
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF74
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF75
	.value	0x320
	.uleb128 0x8
	.long	.LASF76
	.value	0x321
	.uleb128 0x8
	.long	.LASF77
	.value	0x384
	.uleb128 0x8
	.long	.LASF78
	.value	0x385
	.uleb128 0x8
	.long	.LASF79
	.value	0x386
	.uleb128 0x8
	.long	.LASF80
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF81
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF82
	.value	0x44c
	.uleb128 0x8
	.long	.LASF83
	.value	0x44d
	.uleb128 0x8
	.long	.LASF84
	.value	0x44e
	.uleb128 0x8
	.long	.LASF85
	.value	0x44f
	.uleb128 0x8
	.long	.LASF86
	.value	0x450
	.uleb128 0x8
	.long	.LASF87
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF88
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF89
	.byte	0x7
	.byte	0x15
	.long	0xca
	.uleb128 0x3
	.long	.LASF90
	.byte	0x7
	.byte	0x16
	.long	0xbf
	.uleb128 0x9
	.long	.LASF112
	.byte	0x8
	.byte	0x2
	.byte	0x8
	.long	0x303
	.uleb128 0xa
	.long	.LASF91
	.byte	0x2
	.byte	0x9
	.long	0x303
	.byte	0
	.uleb128 0xa
	.long	.LASF92
	.byte	0x2
	.byte	0xa
	.long	0x303
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2de
	.uleb128 0x3
	.long	.LASF93
	.byte	0x2
	.byte	0xb
	.long	0x2de
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x8
	.long	0x32d
	.uleb128 0x7
	.long	.LASF94
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF96
	.byte	0x9
	.byte	0xb
	.long	0x314
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0xd
	.long	0x363
	.uleb128 0x7
	.long	.LASF97
	.byte	0
	.uleb128 0x7
	.long	.LASF98
	.byte	0x1
	.uleb128 0x7
	.long	.LASF99
	.byte	0x2
	.uleb128 0x7
	.long	.LASF100
	.byte	0x3
	.uleb128 0x7
	.long	.LASF101
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.byte	0x13
	.long	0x338
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x15
	.long	0x3ab
	.uleb128 0x7
	.long	.LASF103
	.byte	0
	.uleb128 0x7
	.long	.LASF104
	.byte	0x1
	.uleb128 0x7
	.long	.LASF105
	.byte	0x2
	.uleb128 0x7
	.long	.LASF106
	.byte	0x3
	.uleb128 0x7
	.long	.LASF107
	.byte	0x4
	.uleb128 0x7
	.long	.LASF108
	.byte	0x5
	.uleb128 0x7
	.long	.LASF109
	.byte	0x6
	.uleb128 0x7
	.long	.LASF110
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF111
	.byte	0x9
	.byte	0x1e
	.long	0x36e
	.uleb128 0x9
	.long	.LASF113
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x3f3
	.uleb128 0xa
	.long	.LASF114
	.byte	0x9
	.byte	0x21
	.long	0x309
	.byte	0
	.uleb128 0xa
	.long	.LASF115
	.byte	0x9
	.byte	0x22
	.long	0x3f3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF116
	.byte	0x9
	.byte	0x23
	.long	0x32d
	.byte	0xc
	.uleb128 0xa
	.long	.LASF117
	.byte	0x9
	.byte	0x24
	.long	0x3ab
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x3f9
	.uleb128 0xc
	.long	0xe5
	.uleb128 0x3
	.long	.LASF118
	.byte	0x9
	.byte	0x25
	.long	0x3b6
	.uleb128 0xd
	.value	0x104
	.byte	0xa
	.byte	0xd
	.long	0x438
	.uleb128 0xa
	.long	.LASF119
	.byte	0xa
	.byte	0xe
	.long	0x438
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0xa
	.byte	0xf
	.long	0x44e
	.byte	0xf8
	.uleb128 0xe
	.long	.LASF121
	.byte	0xa
	.byte	0x10
	.long	0xa9
	.value	0x100
	.byte	0
	.uleb128 0xf
	.long	0x448
	.long	0x448
	.uleb128 0x10
	.long	0xd5
	.byte	0x3d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x309
	.uleb128 0xf
	.long	0xb4
	.long	0x45e
	.uleb128 0x10
	.long	0xd5
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF122
	.byte	0xa
	.byte	0x11
	.long	0x409
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x8
	.long	0x4a6
	.uleb128 0x7
	.long	.LASF123
	.byte	0
	.uleb128 0x7
	.long	.LASF124
	.byte	0x1
	.uleb128 0x7
	.long	.LASF125
	.byte	0x2
	.uleb128 0x7
	.long	.LASF126
	.byte	0x3
	.uleb128 0x7
	.long	.LASF127
	.byte	0x4
	.uleb128 0x7
	.long	.LASF128
	.byte	0x5
	.uleb128 0x7
	.long	.LASF129
	.byte	0x6
	.uleb128 0x7
	.long	.LASF130
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF131
	.byte	0xb
	.byte	0x11
	.long	0x469
	.uleb128 0x11
	.byte	0x7c
	.byte	0xb
	.byte	0x15
	.long	0x616
	.uleb128 0xa
	.long	.LASF132
	.byte	0xb
	.byte	0x18
	.long	0xdc
	.byte	0
	.uleb128 0xa
	.long	.LASF133
	.byte	0xb
	.byte	0x1a
	.long	0x3f3
	.byte	0x4
	.uleb128 0xa
	.long	.LASF134
	.byte	0xb
	.byte	0x1d
	.long	0x616
	.byte	0x8
	.uleb128 0xa
	.long	.LASF135
	.byte	0xb
	.byte	0x20
	.long	0x626
	.byte	0x10
	.uleb128 0xa
	.long	.LASF136
	.byte	0xb
	.byte	0x21
	.long	0xb4
	.byte	0x14
	.uleb128 0xa
	.long	.LASF137
	.byte	0xb
	.byte	0x22
	.long	0x309
	.byte	0x18
	.uleb128 0xa
	.long	.LASF138
	.byte	0xb
	.byte	0x25
	.long	0x111
	.byte	0x20
	.uleb128 0xa
	.long	.LASF139
	.byte	0xb
	.byte	0x28
	.long	0x681
	.byte	0x24
	.uleb128 0xa
	.long	.LASF140
	.byte	0xb
	.byte	0x2b
	.long	0x309
	.byte	0x28
	.uleb128 0xa
	.long	.LASF141
	.byte	0xb
	.byte	0x2e
	.long	0x309
	.byte	0x30
	.uleb128 0xa
	.long	.LASF142
	.byte	0xb
	.byte	0x2f
	.long	0x2c8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF143
	.byte	0xb
	.byte	0x30
	.long	0x2c8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF144
	.byte	0xb
	.byte	0x31
	.long	0x448
	.byte	0x48
	.uleb128 0x12
	.string	"msg"
	.byte	0xb
	.byte	0x33
	.long	0xdc
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF145
	.byte	0xb
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF146
	.byte	0xb
	.byte	0x39
	.long	0x4a6
	.byte	0x54
	.uleb128 0xa
	.long	.LASF147
	.byte	0xb
	.byte	0x3a
	.long	0x363
	.byte	0x58
	.uleb128 0xa
	.long	.LASF113
	.byte	0xb
	.byte	0x3d
	.long	0x687
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF148
	.byte	0xb
	.byte	0x40
	.long	0x6d6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF149
	.byte	0xb
	.byte	0x56
	.long	0xb4
	.byte	0x64
	.uleb128 0xa
	.long	.LASF150
	.byte	0xb
	.byte	0x57
	.long	0xb4
	.byte	0x68
	.uleb128 0xa
	.long	.LASF151
	.byte	0xb
	.byte	0x5b
	.long	0xb4
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF152
	.byte	0xb
	.byte	0x5c
	.long	0xdc
	.byte	0x70
	.uleb128 0xa
	.long	.LASF153
	.byte	0xb
	.byte	0x5d
	.long	0xa9
	.byte	0x74
	.uleb128 0xa
	.long	.LASF154
	.byte	0xb
	.byte	0x61
	.long	0xa9
	.byte	0x75
	.uleb128 0xa
	.long	.LASF155
	.byte	0xb
	.byte	0x64
	.long	0xa9
	.byte	0x76
	.uleb128 0xa
	.long	.LASF156
	.byte	0xb
	.byte	0x6c
	.long	0xa9
	.byte	0x77
	.uleb128 0xa
	.long	.LASF157
	.byte	0xb
	.byte	0x6e
	.long	0xa9
	.byte	0x78
	.uleb128 0xa
	.long	.LASF158
	.byte	0xb
	.byte	0x6f
	.long	0xa9
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xdc
	.long	0x626
	.uleb128 0x10
	.long	0xd5
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xfb
	.uleb128 0x9
	.long	.LASF159
	.byte	0x2c
	.byte	0xc
	.byte	0x8
	.long	0x681
	.uleb128 0xa
	.long	.LASF113
	.byte	0xc
	.byte	0x9
	.long	0x3fe
	.byte	0
	.uleb128 0xa
	.long	.LASF160
	.byte	0xc
	.byte	0xa
	.long	0x6e7
	.byte	0x14
	.uleb128 0xa
	.long	.LASF139
	.byte	0xc
	.byte	0xb
	.long	0x681
	.byte	0x18
	.uleb128 0xa
	.long	.LASF161
	.byte	0xc
	.byte	0xc
	.long	0x106
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF162
	.byte	0xc
	.byte	0xf
	.long	0x309
	.byte	0x20
	.uleb128 0xa
	.long	.LASF158
	.byte	0xc
	.byte	0x12
	.long	0xa9
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x62c
	.uleb128 0xb
	.byte	0x4
	.long	0x3fe
	.uleb128 0x9
	.long	.LASF163
	.byte	0x28
	.byte	0xd
	.byte	0xb
	.long	0x6d6
	.uleb128 0xa
	.long	.LASF113
	.byte	0xd
	.byte	0xc
	.long	0x3fe
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0xd
	.byte	0xd
	.long	0xf0
	.byte	0x14
	.uleb128 0xa
	.long	.LASF165
	.byte	0xd
	.byte	0xe
	.long	0xf0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF166
	.byte	0xd
	.byte	0x10
	.long	0x309
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF158
	.byte	0xd
	.byte	0x12
	.long	0xa9
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x68d
	.uleb128 0x3
	.long	.LASF167
	.byte	0xb
	.byte	0x70
	.long	0x4b1
	.uleb128 0xb
	.byte	0x4
	.long	0x6dc
	.uleb128 0x13
	.long	.LASF168
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.long	0x705
	.uleb128 0x14
	.long	.LASF170
	.byte	0x2
	.byte	0xf
	.long	0x448
	.byte	0
	.uleb128 0x13
	.long	.LASF169
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.long	0x75d
	.uleb128 0x14
	.long	.LASF171
	.byte	0x1
	.byte	0xc
	.long	0x448
	.uleb128 0x14
	.long	.LASF172
	.byte	0x1
	.byte	0xc
	.long	0x6e7
	.uleb128 0x15
	.string	"val"
	.byte	0x1
	.byte	0xe
	.long	0x2c8
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0xf
	.long	0x448
	.uleb128 0x16
	.long	.LASF173
	.byte	0x1
	.byte	0x10
	.long	0x448
	.uleb128 0x16
	.long	.LASF174
	.byte	0x1
	.byte	0x11
	.long	0x448
	.uleb128 0x16
	.long	.LASF175
	.byte	0x1
	.byte	0x12
	.long	0x6e7
	.byte	0
	.uleb128 0x17
	.long	.LASF178
	.byte	0x1
	.byte	0x7
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x788
	.uleb128 0x18
	.long	0x6ed
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x9
	.uleb128 0x19
	.long	0x6f9
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF176
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.long	0x7ab
	.uleb128 0x14
	.long	.LASF171
	.byte	0x2
	.byte	0x1a
	.long	0x448
	.uleb128 0x14
	.long	.LASF177
	.byte	0x2
	.byte	0x1a
	.long	0x448
	.byte	0
	.uleb128 0x17
	.long	.LASF179
	.byte	0x1
	.byte	0x21
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x857
	.uleb128 0x1a
	.long	.LASF172
	.byte	0x1
	.byte	0x21
	.long	0x6e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.byte	0x21
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF181
	.byte	0x1
	.byte	0x23
	.long	0x448
	.uleb128 0x18
	.long	0x705
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0x2a
	.uleb128 0x19
	.long	0x711
	.uleb128 0x1b
	.long	0x71c
	.long	.LLST0
	.uleb128 0x1c
	.long	.LBB11
	.long	.LBE11-.LBB11
	.uleb128 0x1d
	.long	0x727
	.long	.LLST1
	.uleb128 0x1d
	.long	0x732
	.long	.LLST2
	.uleb128 0x1e
	.long	0x73b
	.uleb128 0x1e
	.long	0x746
	.uleb128 0x1d
	.long	0x751
	.long	.LLST3
	.uleb128 0x1f
	.long	0x788
	.long	.LBB12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1e
	.uleb128 0x1b
	.long	0x79f
	.long	.LLST4
	.uleb128 0x1b
	.long	0x794
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF182
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.long	0x86f
	.uleb128 0x14
	.long	.LASF177
	.byte	0x2
	.byte	0x2c
	.long	0x448
	.byte	0
	.uleb128 0x17
	.long	.LASF183
	.byte	0x1
	.byte	0x2f
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8bb
	.uleb128 0x1a
	.long	.LASF172
	.byte	0x1
	.byte	0x2f
	.long	0x6e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF181
	.byte	0x1
	.byte	0x31
	.long	0x448
	.long	.LLST6
	.uleb128 0x18
	.long	0x857
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.byte	0x34
	.uleb128 0x1b
	.long	0x863
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF184
	.byte	0x1
	.byte	0x39
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c5
	.uleb128 0x1a
	.long	.LASF185
	.byte	0x1
	.byte	0x39
	.long	0x2d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x3b
	.long	0x2c
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF181
	.byte	0x1
	.byte	0x3d
	.long	0x448
	.uleb128 0x20
	.long	.LASF187
	.byte	0x1
	.byte	0x3e
	.long	0x6e7
	.long	.LLST9
	.uleb128 0x20
	.long	.LASF188
	.byte	0x1
	.byte	0x3f
	.long	0x448
	.long	.LLST10
	.uleb128 0x20
	.long	.LASF189
	.byte	0x1
	.byte	0x40
	.long	0x448
	.long	.LLST11
	.uleb128 0x16
	.long	.LASF190
	.byte	0x1
	.byte	0x41
	.long	0x2d3
	.uleb128 0x21
	.long	0x857
	.long	.LBB26
	.long	.LBE26-.LBB26
	.byte	0x1
	.byte	0x5c
	.long	0x94d
	.uleb128 0x1b
	.long	0x863
	.long	.LLST12
	.byte	0
	.uleb128 0x21
	.long	0x857
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.byte	0x66
	.long	0x96a
	.uleb128 0x1b
	.long	0x863
	.long	.LLST13
	.byte	0
	.uleb128 0x22
	.long	.LVL16
	.long	0x9e6
	.uleb128 0x22
	.long	.LVL23
	.long	0x86f
	.uleb128 0x22
	.long	.LVL25
	.long	0x9f1
	.uleb128 0x22
	.long	.LVL28
	.long	0x86f
	.uleb128 0x22
	.long	.LVL31
	.long	0x86f
	.uleb128 0x22
	.long	.LVL33
	.long	0x9f1
	.uleb128 0x22
	.long	.LVL36
	.long	0x86f
	.uleb128 0x22
	.long	.LVL39
	.long	0x9fc
	.uleb128 0x22
	.long	.LVL42
	.long	0xa07
	.uleb128 0x23
	.long	.LVL46
	.long	0xa12
	.byte	0
	.uleb128 0x24
	.long	.LASF191
	.byte	0xe
	.byte	0xb
	.long	0x45e
	.uleb128 0x24
	.long	.LASF192
	.byte	0xe
	.byte	0x1d
	.long	0x2c8
	.uleb128 0x24
	.long	.LASF193
	.byte	0xe
	.byte	0x1e
	.long	0x309
	.uleb128 0x25
	.long	.LASF194
	.long	.LASF194
	.byte	0xf
	.byte	0x8
	.uleb128 0x25
	.long	.LASF195
	.long	.LASF195
	.byte	0xe
	.byte	0x7e
	.uleb128 0x25
	.long	.LASF196
	.long	.LASF196
	.byte	0xe
	.byte	0x99
	.uleb128 0x25
	.long	.LASF197
	.long	.LASF197
	.byte	0xe
	.byte	0x9e
	.uleb128 0x25
	.long	.LASF198
	.long	.LASF198
	.byte	0xf
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL8
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.value	0x3
	.byte	0x71
	.sleb128 -48
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL11
	.long	.LVL13
	.value	0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x48
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL14
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL44
	.value	0x1
	.byte	0x53
	.long	.LVL44
	.long	.LVL46-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL43
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST10:
	.long	.LVL19
	.long	.LVL32
	.value	0x1
	.byte	0x57
	.long	.LVL32
	.long	.LVL34
	.value	0x3
	.byte	0x76
	.sleb128 48
	.byte	0x9f
	.long	.LVL34
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	.LVL42
	.long	.LVL43
	.value	0x3
	.byte	0x76
	.sleb128 48
	.byte	0x9f
	.long	.LVL43
	.long	.LVL45
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST11:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL22
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL22
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL26
	.long	.LVL27
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL27
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL30
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL35
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST12:
	.long	.LVL23
	.long	.LVL24
	.value	0x3
	.byte	0x77
	.sleb128 -24
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL36
	.long	.LVL37
	.value	0x3
	.byte	0x77
	.sleb128 -24
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
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB12
	.long	.LBE12
	.long	.LBB16
	.long	.LBE16
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"RHINO_NULL_PTR"
.LASF71:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF22:
	.string	"sem_count_t"
.LASF131:
	.string	"task_stat_t"
.LASF183:
	.string	"tick_list_rm"
.LASF25:
	.string	"suspend_nested_t"
.LASF194:
	.string	"cpu_intrpt_save"
.LASF42:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF27:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF151:
	.string	"pend_flags"
.LASF141:
	.string	"tick_list"
.LASF89:
	.string	"tick_t"
.LASF0:
	.string	"unsigned int"
.LASF91:
	.string	"next"
.LASF59:
	.string	"RHINO_INV_TASK_STATE"
.LASF44:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF81:
	.string	"RHINO_TRY_AGAIN"
.LASF50:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF60:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF80:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF106:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF74:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF158:
	.string	"mm_alloc_flag"
.LASF37:
	.string	"RHINO_KOBJ_BLK"
.LASF92:
	.string	"prev"
.LASF65:
	.string	"RHINO_BLK_INV_STATE"
.LASF49:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF98:
	.string	"BLK_ABORT"
.LASF176:
	.string	"klist_insert"
.LASF53:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF148:
	.string	"task_sem_obj"
.LASF56:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF168:
	.string	"klist_init"
.LASF16:
	.string	"uint32_t"
.LASF182:
	.string	"klist_rm"
.LASF139:
	.string	"mutex_list"
.LASF47:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF40:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF164:
	.string	"count"
.LASF197:
	.string	"k_err_proc"
.LASF180:
	.string	"time"
.LASF111:
	.string	"kobj_type_t"
.LASF54:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF14:
	.string	"long long unsigned int"
.LASF96:
	.string	"blk_policy_t"
.LASF72:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF61:
	.string	"RHINO_NO_PEND_WAIT"
.LASF26:
	.string	"RHINO_SUCCESS"
.LASF171:
	.string	"head"
.LASF150:
	.string	"time_total"
.LASF64:
	.string	"RHINO_BLK_DEL"
.LASF126:
	.string	"K_SUSPENDED"
.LASF62:
	.string	"RHINO_BLK_ABORT"
.LASF201:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"size_t"
.LASF17:
	.string	"int64_t"
.LASF187:
	.string	"p_tcb"
.LASF86:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF138:
	.string	"suspend_count"
.LASF143:
	.string	"tick_remain"
.LASF153:
	.string	"pend_option"
.LASF38:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF193:
	.string	"g_tick_head"
.LASF175:
	.string	"task_iter_temp"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF122:
	.string	"runqueue_t"
.LASF13:
	.string	"__uint64_t"
.LASF30:
	.string	"RHINO_STOPPED"
.LASF146:
	.string	"task_state"
.LASF121:
	.string	"highest_pri"
.LASF66:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF76:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF75:
	.string	"RHINO_SEM_OVF"
.LASF185:
	.string	"ticks"
.LASF87:
	.string	"RHINO_TASK_STACK_OVF"
.LASF110:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF31:
	.string	"RHINO_INV_PARAM"
.LASF97:
	.string	"BLK_FINISH"
.LASF82:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF20:
	.string	"char"
.LASF165:
	.string	"peak_count"
.LASF179:
	.string	"tick_list_insert"
.LASF69:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF169:
	.string	"tick_list_pri_insert"
.LASF29:
	.string	"RHINO_RUNNING"
.LASF15:
	.string	"uint8_t"
.LASF178:
	.string	"tick_list_init"
.LASF132:
	.string	"task_stack"
.LASF36:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF147:
	.string	"blk_state"
.LASF196:
	.string	"mutex_task_pri_reset"
.LASF161:
	.string	"owner_nested"
.LASF1:
	.string	"long long int"
.LASF63:
	.string	"RHINO_BLK_TIMEOUT"
.LASF133:
	.string	"task_name"
.LASF172:
	.string	"task"
.LASF157:
	.string	"b_prio"
.LASF142:
	.string	"tick_match"
.LASF100:
	.string	"BLK_DEL"
.LASF99:
	.string	"BLK_TIMEOUT"
.LASF58:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF125:
	.string	"K_PEND"
.LASF102:
	.string	"blk_state_t"
.LASF90:
	.string	"tick_i_t"
.LASF85:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF45:
	.string	"RHINO_NO_MEM"
.LASF137:
	.string	"task_list"
.LASF77:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF113:
	.string	"blk_obj"
.LASF112:
	.string	"klist_s"
.LASF93:
	.string	"klist_t"
.LASF174:
	.string	"list_end"
.LASF73:
	.string	"RHINO_QUEUE_FULL"
.LASF152:
	.string	"pend_info"
.LASF114:
	.string	"blk_list"
.LASF68:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF109:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF156:
	.string	"prio"
.LASF163:
	.string	"sem_s"
.LASF12:
	.string	"__int64_t"
.LASF134:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF21:
	.string	"name_t"
.LASF140:
	.string	"task_stats_item"
.LASF41:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF160:
	.string	"mutex_task"
.LASF94:
	.string	"BLK_POLICY_PRI"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF135:
	.string	"task_stack_base"
.LASF198:
	.string	"cpu_intrpt_restore"
.LASF123:
	.string	"K_SEED"
.LASF166:
	.string	"sem_item"
.LASF124:
	.string	"K_RDY"
.LASF167:
	.string	"ktask_t"
.LASF18:
	.string	"uint64_t"
.LASF129:
	.string	"K_SLEEP_SUSPENDED"
.LASF78:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF105:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF46:
	.string	"RHINO_RINGBUF_FULL"
.LASF115:
	.string	"name"
.LASF119:
	.string	"cur_list_item"
.LASF128:
	.string	"K_SLEEP"
.LASF79:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF186:
	.string	"cpsr"
.LASF23:
	.string	"cpu_stack_t"
.LASF52:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF118:
	.string	"blk_obj_t"
.LASF67:
	.string	"RHINO_TIMER_STATE_INV"
.LASF149:
	.string	"time_slice"
.LASF19:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF95:
	.string	"BLK_POLICY_FIFO"
.LASF103:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF173:
	.string	"list_start"
.LASF33:
	.string	"RHINO_INV_ALIGN"
.LASF43:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF51:
	.string	"RHINO_INV_SCHED_WAY"
.LASF57:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF195:
	.string	"ready_list_add"
.LASF144:
	.string	"tick_head"
.LASF159:
	.string	"mutex_s"
.LASF200:
	.string	"src/k_tick.c"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF199:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF117:
	.string	"obj_type"
.LASF88:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF35:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF120:
	.string	"task_bit_map"
.LASF170:
	.string	"list_head"
.LASF24:
	.string	"mutex_nested_t"
.LASF136:
	.string	"stack_size"
.LASF184:
	.string	"tick_list_update"
.LASF108:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF177:
	.string	"element"
.LASF192:
	.string	"g_tick_count"
.LASF191:
	.string	"g_ready_queue"
.LASF188:
	.string	"iter"
.LASF127:
	.string	"K_PEND_SUSPENDED"
.LASF55:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF162:
	.string	"mutex_item"
.LASF190:
	.string	"delta"
.LASF189:
	.string	"iter_temp"
.LASF8:
	.string	"short unsigned int"
.LASF48:
	.string	"RHINO_SCHED_DISABLE"
.LASF104:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF181:
	.string	"tick_head_ptr"
.LASF154:
	.string	"sched_policy"
.LASF116:
	.string	"blk_policy"
.LASF70:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF130:
	.string	"K_DELETED"
.LASF107:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF155:
	.string	"cpu_num"
.LASF83:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF145:
	.string	"bq_msg_size"
.LASF34:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF101:
	.string	"BLK_INVALID"
.LASF28:
	.string	"RHINO_SYS_SP_ERR"
.LASF39:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

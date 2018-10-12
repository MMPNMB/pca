	.file	"k_pend.c"
	.text
.Ltext0:
	.section	.text.unlikely.klist_rm,"ax",@progbits
.LCOLDB0:
	.section	.text.klist_rm,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.klist_rm
.Ltext_cold0:
	.section	.text.klist_rm
	.type	klist_rm, @function
klist_rm:
.LFB9:
	.file 1 "./kernel/rhino/core/include/k_list.h"
	.loc 1 45 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 46 0
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	.loc 1 45 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 46 0
	movl	%ecx, (%edx)
	.loc 1 47 0
	movl	(%eax), %eax
.LVL1:
	movl	%edx, 4(%eax)
	.loc 1 48 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	klist_rm, .-klist_rm
	.section	.text.unlikely.klist_rm
.LCOLDE0:
	.section	.text.klist_rm
.LHOTE0:
	.section	.text.unlikely.pend_list_add,"ax",@progbits
.LCOLDB1:
	.section	.text.pend_list_add,"ax",@progbits
.LHOTB1:
	.type	pend_list_add, @function
pend_list_add:
.LFB12:
	.file 2 "kernel/rhino/core/k_pend.c"
	.loc 2 8 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 2 13 0
	movl	(%eax), %ecx
.LVL3:
.L4:
	.loc 2 13 0 is_stmt 0 discriminator 1
	cmpl	%eax, %ecx
	je	.L7
	.loc 2 14 0 is_stmt 1
	movb	119(%edx), %bl
	cmpb	%bl, 95(%ecx)
	jbe	.L5
	movl	%ecx, %eax
.LVL4:
.L7:
.LBB4:
.LBB5:
	.loc 1 28 0
	movl	4(%eax), %ebx
.LBE5:
.LBE4:
	.loc 2 19 0
	leal	24(%edx), %ecx
.LVL5:
.LBB7:
.LBB6:
	.loc 1 29 0
	movl	%eax, 24(%edx)
	.loc 1 28 0
	movl	%ebx, 28(%edx)
	.loc 1 31 0
	movl	4(%eax), %edx
.LVL6:
	movl	%ecx, (%edx)
	.loc 1 32 0
	movl	%ecx, 4(%eax)
.LVL7:
.LBE6:
.LBE7:
	.loc 2 20 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL8:
.L5:
	.cfi_restore_state
	.loc 2 13 0 discriminator 2
	movl	(%ecx), %ecx
.LVL9:
	jmp	.L4
	.cfi_endproc
.LFE12:
	.size	pend_list_add, .-pend_list_add
	.section	.text.unlikely.pend_list_add
.LCOLDE1:
	.section	.text.pend_list_add
.LHOTE1:
	.section	.text.unlikely.pend_task_wakeup,"ax",@progbits
.LCOLDB2:
	.section	.text.pend_task_wakeup,"ax",@progbits
.LHOTB2:
	.globl	pend_task_wakeup
	.type	pend_task_wakeup, @function
pend_task_wakeup:
.LFB13:
	.loc 2 23 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 2 23 0
	movl	8(%ebp), %ebx
	.loc 2 25 0
	movl	84(%ebx), %eax
	cmpl	$2, %eax
	je	.L13
	cmpl	$4, %eax
	jne	.L19
	.loc 2 35 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL11:
	.loc 2 36 0
	movl	$3, 84(%ebx)
	.loc 2 37 0
	jmp	.L15
.L13:
	.loc 2 28 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL12:
	.loc 2 30 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add
.LVL13:
	.loc 2 31 0
	movl	$1, 84(%ebx)
	jmp	.L18
.L19:
	.loc 2 39 0
	subl	$12, %esp
	pushl	$1
	call	k_err_proc
.LVL14:
.L18:
	.loc 2 40 0
	addl	$16, %esp
.L15:
	.loc 2 44 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL15:
	.loc 2 46 0
	movl	$0, 88(%ebx)
	.loc 2 47 0
	movl	$0, 92(%ebx)
	.loc 2 48 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	pend_task_wakeup, .-pend_task_wakeup
	.section	.text.unlikely.pend_task_wakeup
.LCOLDE2:
	.section	.text.pend_task_wakeup
.LHOTE2:
	.section	.text.unlikely.pend_to_blk_obj,"ax",@progbits
.LCOLDB3:
	.section	.text.pend_to_blk_obj,"ax",@progbits
.LHOTB3:
	.globl	pend_to_blk_obj
	.type	pend_to_blk_obj, @function
pend_to_blk_obj:
.LFB14:
	.loc 2 51 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 51 0
	movl	20(%ebp), %edx
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	movl	16(%ebp), %eax
	.loc 2 55 0
	cmpl	$-1, %edx
	.loc 2 53 0
	movl	%esi, 92(%ebx)
	.loc 2 55 0
	jne	.L25
	cmpl	$-1, %eax
	je	.L21
.L25:
	.loc 2 56 0
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	%ebx
	call	tick_list_insert
.LVL17:
	addl	$16, %esp
.L21:
	.loc 2 59 0
	movl	$2, 84(%ebx)
	.loc 2 62 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_rm
.LVL18:
	.loc 2 64 0
	addl	$16, %esp
	cmpl	$1, 12(%esi)
	jne	.L23
.LBB10:
.LBB11:
	.loc 1 28 0
	movl	4(%esi), %edx
.LBE11:
.LBE10:
	.loc 2 66 0
	leal	24(%ebx), %eax
.LVL19:
.LBB13:
.LBB12:
	.loc 1 29 0
	movl	%esi, 24(%ebx)
	.loc 1 28 0
	movl	%edx, 28(%ebx)
	.loc 1 31 0
	movl	4(%esi), %edx
	movl	%eax, (%edx)
	.loc 1 32 0
	movl	%eax, 4(%esi)
.LBE12:
.LBE13:
	.loc 2 71 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL20:
.L23:
	.cfi_restore_state
	leal	-8(%ebp), %esp
	.loc 2 69 0
	movl	%ebx, %edx
	movl	%esi, %eax
	.loc 2 71 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 2 69 0
	jmp	pend_list_add
.LVL21:
	.cfi_endproc
.LFE14:
	.size	pend_to_blk_obj, .-pend_to_blk_obj
	.section	.text.unlikely.pend_to_blk_obj
.LCOLDE3:
	.section	.text.pend_to_blk_obj
.LHOTE3:
	.section	.text.unlikely.pend_task_rm,"ax",@progbits
.LCOLDB4:
	.section	.text.pend_task_rm,"ax",@progbits
.LHOTB4:
	.globl	pend_task_rm
	.type	pend_task_rm, @function
pend_task_rm:
.LFB15:
	.loc 2 74 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 2 74 0
	movl	8(%ebp), %ebx
	.loc 2 75 0
	movl	84(%ebx), %eax
	cmpl	$2, %eax
	je	.L30
	cmpl	$4, %eax
	jne	.L36
	.loc 2 85 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL23:
	.loc 2 86 0
	movl	$3, 84(%ebx)
	.loc 2 87 0
	jmp	.L32
.L30:
	.loc 2 78 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL24:
	.loc 2 80 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add
.LVL25:
	.loc 2 81 0
	movl	$1, 84(%ebx)
	jmp	.L35
.L36:
	.loc 2 89 0
	subl	$12, %esp
	pushl	$1
	call	k_err_proc
.LVL26:
.L35:
	.loc 2 90 0
	addl	$16, %esp
.L32:
	.loc 2 94 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL27:
	.loc 2 95 0
	movl	$3, 88(%ebx)
	.loc 2 98 0
	movl	$0, 92(%ebx)
	.loc 2 99 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	pend_task_rm, .-pend_task_rm
	.section	.text.unlikely.pend_task_rm
.LCOLDE4:
	.section	.text.pend_task_rm
.LHOTE4:
	.section	.text.unlikely.pend_list_reorder,"ax",@progbits
.LCOLDB5:
	.section	.text.pend_list_reorder,"ax",@progbits
.LHOTB5:
	.globl	pend_list_reorder
	.type	pend_list_reorder, @function
pend_list_reorder:
.LFB16:
	.loc 2 102 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 2 102 0
	movl	8(%ebp), %ebx
	.loc 2 103 0
	movl	92(%ebx), %eax
	cmpl	$0, 12(%eax)
	jne	.L37
	.loc 2 105 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL29:
	.loc 2 106 0
	movl	92(%ebx), %eax
	movl	%ebx, %edx
	.loc 2 108 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 2 106 0
	jmp	pend_list_add
.LVL30:
.L37:
	.cfi_restore_state
	.loc 2 108 0
	popl	%ebx
	.cfi_restore 3
.LVL31:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	pend_list_reorder, .-pend_list_reorder
	.section	.text.unlikely.pend_list_reorder
.LCOLDE5:
	.section	.text.pend_list_reorder
.LHOTE5:
	.section	.text.unlikely.pend_state_end_proc,"ax",@progbits
.LCOLDB6:
	.section	.text.pend_state_end_proc,"ax",@progbits
.LHOTB6:
	.globl	pend_state_end_proc
	.type	pend_state_end_proc, @function
pend_state_end_proc:
.LFB17:
	.loc 2 111 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 2 114 0
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	.loc 2 119 0
	movl	$401, %eax
	.loc 2 114 0
	cmpl	$1, %edx
	je	.L43
	.loc 2 116 0
	movl	$0, %eax
	.loc 2 114 0
	jb	.L43
	cmpl	$2, %edx
	.loc 2 122 0
	movl	$402, %eax
	.loc 2 114 0
	je	.L43
	cmpl	$3, %edx
	.loc 2 125 0
	movl	$403, %eax
	.loc 2 114 0
	je	.L43
	.loc 2 128 0
	subl	$12, %esp
	pushl	$404
	call	k_err_proc
.LVL33:
	.loc 2 130 0
	addl	$16, %esp
	.loc 2 129 0
	movl	$404, %eax
.LVL34:
.L43:
	.loc 2 134 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	pend_state_end_proc, .-pend_state_end_proc
	.section	.text.unlikely.pend_state_end_proc
.LCOLDE6:
	.section	.text.pend_state_end_proc
.LHOTE6:
	.text
.Letext0:
	.section	.text.unlikely.klist_rm
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 7 "./kernel/rhino/core/include/k_err.h"
	.file 8 "./kernel/rhino/core/include/k_sys.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_sched.h"
	.file 11 "./kernel/rhino/core/include/k_task.h"
	.file 12 "./kernel/rhino/core/include/k_mutex.h"
	.file 13 "./kernel/rhino/core/include/k_sem.h"
	.file 14 "./kernel/rhino/core/include/k_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9cc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF184
	.byte	0xc
	.long	.LASF185
	.long	.LASF186
	.long	.Ldebug_ranges0+0x30
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
	.byte	0x7
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
	.byte	0x54
	.long	0x106
	.uleb128 0x3
	.long	.LASF88
	.byte	0x8
	.byte	0x15
	.long	0xb4
	.uleb128 0x9
	.long	.LASF110
	.byte	0x8
	.byte	0x1
	.byte	0x8
	.long	0x2ed
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1
	.byte	0x9
	.long	0x2ed
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.byte	0xa
	.long	0x2ed
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2c8
	.uleb128 0x3
	.long	.LASF91
	.byte	0x1
	.byte	0xb
	.long	0x2c8
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x8
	.long	0x317
	.uleb128 0x7
	.long	.LASF92
	.byte	0
	.uleb128 0x7
	.long	.LASF93
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0x9
	.byte	0xb
	.long	0x2fe
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0xd
	.long	0x34d
	.uleb128 0x7
	.long	.LASF95
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x1
	.uleb128 0x7
	.long	.LASF97
	.byte	0x2
	.uleb128 0x7
	.long	.LASF98
	.byte	0x3
	.uleb128 0x7
	.long	.LASF99
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.byte	0x13
	.long	0x322
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x15
	.long	0x395
	.uleb128 0x7
	.long	.LASF101
	.byte	0
	.uleb128 0x7
	.long	.LASF102
	.byte	0x1
	.uleb128 0x7
	.long	.LASF103
	.byte	0x2
	.uleb128 0x7
	.long	.LASF104
	.byte	0x3
	.uleb128 0x7
	.long	.LASF105
	.byte	0x4
	.uleb128 0x7
	.long	.LASF106
	.byte	0x5
	.uleb128 0x7
	.long	.LASF107
	.byte	0x6
	.uleb128 0x7
	.long	.LASF108
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF109
	.byte	0x9
	.byte	0x1e
	.long	0x358
	.uleb128 0x9
	.long	.LASF111
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x3dd
	.uleb128 0xa
	.long	.LASF112
	.byte	0x9
	.byte	0x21
	.long	0x2f3
	.byte	0
	.uleb128 0xa
	.long	.LASF113
	.byte	0x9
	.byte	0x22
	.long	0x3dd
	.byte	0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x9
	.byte	0x23
	.long	0x317
	.byte	0xc
	.uleb128 0xa
	.long	.LASF115
	.byte	0x9
	.byte	0x24
	.long	0x395
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x3e3
	.uleb128 0xc
	.long	0xcf
	.uleb128 0x3
	.long	.LASF116
	.byte	0x9
	.byte	0x25
	.long	0x3a0
	.uleb128 0xd
	.value	0x104
	.byte	0xa
	.byte	0xd
	.long	0x422
	.uleb128 0xa
	.long	.LASF117
	.byte	0xa
	.byte	0xe
	.long	0x422
	.byte	0
	.uleb128 0xa
	.long	.LASF118
	.byte	0xa
	.byte	0xf
	.long	0x438
	.byte	0xf8
	.uleb128 0xe
	.long	.LASF119
	.byte	0xa
	.byte	0x10
	.long	0x9e
	.value	0x100
	.byte	0
	.uleb128 0xf
	.long	0x432
	.long	0x432
	.uleb128 0x10
	.long	0xbf
	.byte	0x3d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2f3
	.uleb128 0xf
	.long	0xa9
	.long	0x448
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF120
	.byte	0xa
	.byte	0x11
	.long	0x3f3
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x8
	.long	0x490
	.uleb128 0x7
	.long	.LASF121
	.byte	0
	.uleb128 0x7
	.long	.LASF122
	.byte	0x1
	.uleb128 0x7
	.long	.LASF123
	.byte	0x2
	.uleb128 0x7
	.long	.LASF124
	.byte	0x3
	.uleb128 0x7
	.long	.LASF125
	.byte	0x4
	.uleb128 0x7
	.long	.LASF126
	.byte	0x5
	.uleb128 0x7
	.long	.LASF127
	.byte	0x6
	.uleb128 0x7
	.long	.LASF128
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF129
	.byte	0xb
	.byte	0x11
	.long	0x453
	.uleb128 0x11
	.byte	0x7c
	.byte	0xb
	.byte	0x15
	.long	0x600
	.uleb128 0xa
	.long	.LASF130
	.byte	0xb
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xa
	.long	.LASF131
	.byte	0xb
	.byte	0x1a
	.long	0x3dd
	.byte	0x4
	.uleb128 0xa
	.long	.LASF132
	.byte	0xb
	.byte	0x1d
	.long	0x600
	.byte	0x8
	.uleb128 0xa
	.long	.LASF133
	.byte	0xb
	.byte	0x20
	.long	0x610
	.byte	0x10
	.uleb128 0xa
	.long	.LASF134
	.byte	0xb
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF135
	.byte	0xb
	.byte	0x22
	.long	0x2f3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF136
	.byte	0xb
	.byte	0x25
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF137
	.byte	0xb
	.byte	0x28
	.long	0x66b
	.byte	0x24
	.uleb128 0xa
	.long	.LASF138
	.byte	0xb
	.byte	0x2b
	.long	0x2f3
	.byte	0x28
	.uleb128 0xa
	.long	.LASF139
	.byte	0xb
	.byte	0x2e
	.long	0x2f3
	.byte	0x30
	.uleb128 0xa
	.long	.LASF140
	.byte	0xb
	.byte	0x2f
	.long	0x2bd
	.byte	0x38
	.uleb128 0xa
	.long	.LASF141
	.byte	0xb
	.byte	0x30
	.long	0x2bd
	.byte	0x40
	.uleb128 0xa
	.long	.LASF142
	.byte	0xb
	.byte	0x31
	.long	0x432
	.byte	0x48
	.uleb128 0x12
	.string	"msg"
	.byte	0xb
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF143
	.byte	0xb
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF144
	.byte	0xb
	.byte	0x39
	.long	0x490
	.byte	0x54
	.uleb128 0xa
	.long	.LASF145
	.byte	0xb
	.byte	0x3a
	.long	0x34d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF111
	.byte	0xb
	.byte	0x3d
	.long	0x671
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF146
	.byte	0xb
	.byte	0x40
	.long	0x6c0
	.byte	0x60
	.uleb128 0xa
	.long	.LASF147
	.byte	0xb
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xa
	.long	.LASF148
	.byte	0xb
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF149
	.byte	0xb
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF150
	.byte	0xb
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF151
	.byte	0xb
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF152
	.byte	0xb
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xa
	.long	.LASF153
	.byte	0xb
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xa
	.long	.LASF154
	.byte	0xb
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xa
	.long	.LASF155
	.byte	0xb
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF156
	.byte	0xb
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xc6
	.long	0x610
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xe5
	.uleb128 0x9
	.long	.LASF157
	.byte	0x2c
	.byte	0xc
	.byte	0x8
	.long	0x66b
	.uleb128 0xa
	.long	.LASF111
	.byte	0xc
	.byte	0x9
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF158
	.byte	0xc
	.byte	0xa
	.long	0x6d1
	.byte	0x14
	.uleb128 0xa
	.long	.LASF137
	.byte	0xc
	.byte	0xb
	.long	0x66b
	.byte	0x18
	.uleb128 0xa
	.long	.LASF159
	.byte	0xc
	.byte	0xc
	.long	0xf0
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF160
	.byte	0xc
	.byte	0xf
	.long	0x2f3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF156
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x616
	.uleb128 0xb
	.byte	0x4
	.long	0x3e8
	.uleb128 0x9
	.long	.LASF161
	.byte	0x28
	.byte	0xd
	.byte	0xb
	.long	0x6c0
	.uleb128 0xa
	.long	.LASF111
	.byte	0xd
	.byte	0xc
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF162
	.byte	0xd
	.byte	0xd
	.long	0xda
	.byte	0x14
	.uleb128 0xa
	.long	.LASF163
	.byte	0xd
	.byte	0xe
	.long	0xda
	.byte	0x18
	.uleb128 0xa
	.long	.LASF164
	.byte	0xd
	.byte	0x10
	.long	0x2f3
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF156
	.byte	0xd
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x677
	.uleb128 0x3
	.long	.LASF165
	.byte	0xb
	.byte	0x70
	.long	0x49b
	.uleb128 0xb
	.byte	0x4
	.long	0x6c6
	.uleb128 0x13
	.long	.LASF168
	.byte	0x1
	.byte	0x2c
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fc
	.uleb128 0x14
	.long	.LASF167
	.byte	0x1
	.byte	0x2c
	.long	0x432
	.long	.LLST0
	.byte	0
	.uleb128 0x15
	.long	.LASF187
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.long	0x71f
	.uleb128 0x16
	.long	.LASF166
	.byte	0x1
	.byte	0x1a
	.long	0x432
	.uleb128 0x16
	.long	.LASF167
	.byte	0x1
	.byte	0x1a
	.long	0x432
	.byte	0
	.uleb128 0x13
	.long	.LASF169
	.byte	0x2
	.byte	0x7
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a2
	.uleb128 0x14
	.long	.LASF166
	.byte	0x2
	.byte	0x7
	.long	0x432
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF170
	.byte	0x2
	.byte	0x7
	.long	0x6d1
	.long	.LLST2
	.uleb128 0x17
	.string	"tmp"
	.byte	0x2
	.byte	0x9
	.long	0x432
	.long	.LLST3
	.uleb128 0x18
	.long	.LASF171
	.byte	0x2
	.byte	0xa
	.long	0x432
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF172
	.byte	0x2
	.byte	0xb
	.long	0x432
	.long	.LLST5
	.uleb128 0x19
	.long	0x6fc
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x13
	.uleb128 0x1a
	.long	0x713
	.long	.LLST6
	.uleb128 0x1a
	.long	0x708
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF173
	.byte	0x2
	.byte	0x16
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x809
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x2
	.byte	0x16
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL11
	.long	0x6d7
	.long	0x7d9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x1d
	.long	.LVL12
	.long	0x6d7
	.long	0x7ed
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x1f
	.long	.LVL13
	.long	0x998
	.uleb128 0x1f
	.long	.LVL14
	.long	0x9a3
	.uleb128 0x1f
	.long	.LVL15
	.long	0x9ae
	.byte	0
	.uleb128 0x1b
	.long	.LASF174
	.byte	0x2
	.byte	0x32
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x899
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x2
	.byte	0x32
	.long	0x671
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x2
	.byte	0x32
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2
	.byte	0x32
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	0x6fc
	.long	.LBB10
	.long	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x42
	.long	0x86e
	.uleb128 0x1a
	.long	0x713
	.long	.LLST8
	.uleb128 0x1a
	.long	0x708
	.long	.LLST9
	.byte	0
	.uleb128 0x1f
	.long	.LVL17
	.long	0x9b9
	.uleb128 0x1f
	.long	.LVL18
	.long	0x9c4
	.uleb128 0x21
	.long	.LVL21
	.long	0x71f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF176
	.byte	0x2
	.byte	0x49
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x900
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x2
	.byte	0x49
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL23
	.long	0x6d7
	.long	0x8d0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x1d
	.long	.LVL24
	.long	0x6d7
	.long	0x8e4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x1f
	.long	.LVL25
	.long	0x998
	.uleb128 0x1f
	.long	.LVL26
	.long	0x9a3
	.uleb128 0x1f
	.long	.LVL27
	.long	0x9ae
	.byte	0
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x2
	.byte	0x65
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x94d
	.uleb128 0x14
	.long	.LASF170
	.byte	0x2
	.byte	0x65
	.long	0x6d1
	.long	.LLST10
	.uleb128 0x1d
	.long	.LVL29
	.long	0x6d7
	.long	0x93b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x21
	.long	.LVL30
	.long	0x71f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF188
	.byte	0x2
	.byte	0x6e
	.long	0x2b2
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x98d
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x2
	.byte	0x6e
	.long	0x6d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF178
	.byte	0x2
	.byte	0x70
	.long	0x2b2
	.long	.LLST11
	.uleb128 0x1f
	.long	.LVL33
	.long	0x9a3
	.byte	0
	.uleb128 0x23
	.long	.LASF189
	.byte	0xe
	.byte	0xb
	.long	0x448
	.uleb128 0x24
	.long	.LASF179
	.long	.LASF179
	.byte	0xe
	.byte	0x7e
	.uleb128 0x24
	.long	.LASF180
	.long	.LASF180
	.byte	0xe
	.byte	0x9e
	.uleb128 0x24
	.long	.LASF181
	.long	.LASF181
	.byte	0xe
	.byte	0x94
	.uleb128 0x24
	.long	.LASF182
	.long	.LASF182
	.byte	0xe
	.byte	0x95
	.uleb128 0x24
	.long	.LASF183
	.long	.LASF183
	.byte	0xe
	.byte	0x81
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
	.uleb128 0x15
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LFE9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL8
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL8
	.long	.LFE12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL6
	.value	0x1
	.byte	0x52
	.long	.LVL6
	.long	.LVL8
	.value	0x3
	.byte	0x71
	.sleb128 -24
	.byte	0x9f
	.long	.LVL8
	.long	.LFE12
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x51
	.long	.LVL8
	.long	.LFE12
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL8
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL8
	.long	.LFE12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL8
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL8
	.long	.LFE12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST7:
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	.LVL31
	.long	.LFE16
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL34
	.value	0x4
	.byte	0xa
	.value	0x194
	.byte	0x9f
	.long	.LVL34
	.long	.LFE17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB7
	.long	.LBE7
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LFB9
	.long	.LFE9
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
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
.LASF129:
	.string	"task_stat_t"
.LASF181:
	.string	"tick_list_rm"
.LASF23:
	.string	"suspend_nested_t"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF149:
	.string	"pend_flags"
.LASF139:
	.string	"tick_list"
.LASF88:
	.string	"tick_t"
.LASF0:
	.string	"unsigned int"
.LASF89:
	.string	"next"
.LASF188:
	.string	"pend_state_end_proc"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF104:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF156:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF90:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF173:
	.string	"pend_task_wakeup"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF96:
	.string	"BLK_ABORT"
.LASF187:
	.string	"klist_insert"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF146:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF183:
	.string	"ready_list_rm"
.LASF15:
	.string	"uint32_t"
.LASF168:
	.string	"klist_rm"
.LASF137:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF162:
	.string	"count"
.LASF180:
	.string	"k_err_proc"
.LASF109:
	.string	"kobj_type_t"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF169:
	.string	"pend_list_add"
.LASF94:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF166:
	.string	"head"
.LASF148:
	.string	"time_total"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF124:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF186:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"size_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF136:
	.string	"suspend_count"
.LASF141:
	.string	"tick_remain"
.LASF151:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF120:
	.string	"runqueue_t"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF144:
	.string	"task_state"
.LASF119:
	.string	"highest_pri"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF108:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF95:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF163:
	.string	"peak_count"
.LASF182:
	.string	"tick_list_insert"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF185:
	.string	"src/k_pend.c"
.LASF14:
	.string	"uint8_t"
.LASF178:
	.string	"status"
.LASF130:
	.string	"task_stack"
.LASF177:
	.string	"pend_list_reorder"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF145:
	.string	"blk_state"
.LASF159:
	.string	"owner_nested"
.LASF1:
	.string	"long long int"
.LASF174:
	.string	"pend_to_blk_obj"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF131:
	.string	"task_name"
.LASF170:
	.string	"task"
.LASF155:
	.string	"b_prio"
.LASF140:
	.string	"tick_match"
.LASF98:
	.string	"BLK_DEL"
.LASF97:
	.string	"BLK_TIMEOUT"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF123:
	.string	"K_PEND"
.LASF100:
	.string	"blk_state_t"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF135:
	.string	"task_list"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF111:
	.string	"blk_obj"
.LASF110:
	.string	"klist_s"
.LASF91:
	.string	"klist_t"
.LASF172:
	.string	"list_end"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF150:
	.string	"pend_info"
.LASF176:
	.string	"pend_task_rm"
.LASF112:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF107:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF154:
	.string	"prio"
.LASF161:
	.string	"sem_s"
.LASF59:
	.string	"RHINO_NO_PEND_WAIT"
.LASF132:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF87:
	.string	"kstat_t"
.LASF19:
	.string	"name_t"
.LASF138:
	.string	"task_stats_item"
.LASF39:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF158:
	.string	"mutex_task"
.LASF92:
	.string	"BLK_POLICY_PRI"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF133:
	.string	"task_stack_base"
.LASF121:
	.string	"K_SEED"
.LASF164:
	.string	"sem_item"
.LASF122:
	.string	"K_RDY"
.LASF165:
	.string	"ktask_t"
.LASF16:
	.string	"uint64_t"
.LASF127:
	.string	"K_SLEEP_SUSPENDED"
.LASF76:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF103:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"RHINO_RINGBUF_FULL"
.LASF113:
	.string	"name"
.LASF117:
	.string	"cur_list_item"
.LASF126:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF116:
	.string	"blk_obj_t"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF147:
	.string	"time_slice"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF93:
	.string	"BLK_POLICY_FIFO"
.LASF101:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF171:
	.string	"list_start"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF179:
	.string	"ready_list_add"
.LASF142:
	.string	"tick_head"
.LASF157:
	.string	"mutex_s"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF184:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF115:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF175:
	.string	"timeout"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF118:
	.string	"task_bit_map"
.LASF22:
	.string	"mutex_nested_t"
.LASF134:
	.string	"stack_size"
.LASF106:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF167:
	.string	"element"
.LASF189:
	.string	"g_ready_queue"
.LASF125:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF160:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF102:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF152:
	.string	"sched_policy"
.LASF114:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF128:
	.string	"K_DELETED"
.LASF105:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF153:
	.string	"cpu_num"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF143:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF99:
	.string	"BLK_INVALID"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

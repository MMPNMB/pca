	.file	"k_sys.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"res_sem"
.LC1:
	.string	"idle_task"
	.section	.text.unlikely.krhino_init,"ax",@progbits
.LCOLDB2:
	.section	.text.krhino_init,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.krhino_init
.Ltext_cold0:
	.section	.text.krhino_init
	.globl	krhino_init
	.type	krhino_init, @function
krhino_init:
.LFB13:
	.file 1 "kernel/rhino/core/k_sys.c"
	.loc 1 23 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 24 0
	movl	$4, g_sys_stat
	.loc 1 34 0
	pushl	$g_ready_queue
	call	runqueue_init
.LVL0:
	.loc 1 36 0
	call	tick_list_init
.LVL1:
	.loc 1 39 0
	call	kobj_list_init
.LVL2:
	.loc 1 43 0
	call	k_mm_init
.LVL3:
	.loc 1 48 0
	addl	$12, %esp
.LBB10:
.LBB11:
	.file 2 "./kernel/rhino/core/include/k_list.h"
	.loc 2 17 0
	movl	$g_res_list, g_res_list
	.loc 2 18 0
	movl	$g_res_list, g_res_list+4
.LVL4:
.LBE11:
.LBE10:
	.loc 1 48 0
	pushl	$0
	pushl	$.LC0
	pushl	$g_res_sem
	call	krhino_sem_create
.LVL5:
	.loc 1 49 0
	call	dyn_mem_proc_task_start
.LVL6:
	.loc 1 59 0
	popl	%eax
	popl	%edx
	pushl	$1
	pushl	$idle_task
	pushl	$200
	pushl	$g_idle_task_stack
	pushl	$0
	pushl	$0
	pushl	$61
	pushl	$0
	pushl	$.LC1
	pushl	$g_idle_task
	call	krhino_task_create
.LVL7:
	.loc 1 65 0
	addl	$48, %esp
	call	workqueue_init
.LVL8:
	.loc 1 69 0
	call	ktimer_init
.LVL9:
	.loc 1 79 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	krhino_init, .-krhino_init
	.section	.text.unlikely.krhino_init
.LCOLDE2:
	.section	.text.krhino_init
.LHOTE2:
	.section	.text.unlikely.krhino_start,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_start,"ax",@progbits
.LHOTB3:
	.globl	krhino_start
	.type	krhino_start, @function
krhino_start:
.LFB14:
	.loc 1 82 0
	.cfi_startproc
	.loc 1 85 0
	cmpl	$4, g_sys_stat
	jne	.L6
	.loc 1 82 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 96 0
	pushl	$0
	pushl	$g_ready_queue
	call	preferred_cpu_ready_task_get
.LVL10:
	.loc 1 105 0
	movl	$3, g_sys_stat
	.loc 1 97 0
	movl	%eax, g_preferred_ready_task
	.loc 1 98 0
	movl	%eax, g_active_task
	.loc 1 106 0
	call	cpu_first_task_start
.LVL11:
	.loc 1 109 0
	addl	$16, %esp
	movl	$1, %eax
	.loc 1 113 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L6:
	movl	$3, %eax
	ret
	.cfi_endproc
.LFE14:
	.size	krhino_start, .-krhino_start
	.section	.text.unlikely.krhino_start
.LCOLDE3:
	.section	.text.krhino_start
.LHOTE3:
	.section	.text.unlikely.krhino_intrpt_enter,"ax",@progbits
.LCOLDB4:
	.section	.text.krhino_intrpt_enter,"ax",@progbits
.LHOTB4:
	.globl	krhino_intrpt_enter
	.type	krhino_intrpt_enter, @function
krhino_intrpt_enter:
.LFB15:
	.loc 1 135 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 142 0
	call	cpu_intrpt_save
.LVL12:
	.loc 1 144 0
	subl	$12, %esp
	.loc 1 143 0
	incb	g_intrpt_nested_level
	.loc 1 144 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL13:
	.loc 1 151 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	krhino_intrpt_enter, .-krhino_intrpt_enter
	.section	.text.unlikely.krhino_intrpt_enter
.LCOLDE4:
	.section	.text.krhino_intrpt_enter
.LHOTE4:
	.section	.text.unlikely.krhino_intrpt_exit,"ax",@progbits
.LCOLDB5:
	.section	.text.krhino_intrpt_exit,"ax",@progbits
.LHOTB5:
	.globl	krhino_intrpt_exit
	.type	krhino_intrpt_exit, @function
krhino_intrpt_exit:
.LFB16:
	.loc 1 154 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 163 0
	call	cpu_intrpt_save
.LVL14:
	.loc 1 169 0
	decb	g_intrpt_nested_level
	.loc 1 163 0
	movl	%eax, %ebx
.LVL15:
	.loc 1 169 0
	jne	.L18
	.loc 1 174 0
	cmpb	$0, g_sched_lock
	jne	.L18
.LVL16:
	.loc 1 179 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$g_ready_queue
	call	preferred_cpu_ready_task_get
.LVL17:
	.loc 1 181 0
	addl	$16, %esp
	cmpl	g_active_task, %eax
	je	.L18
	.loc 1 196 0
	movl	%eax, g_preferred_ready_task
	.loc 1 197 0
	call	cpu_intrpt_switch
.LVL18:
.L18:
	.loc 1 201 0
	subl	$12, %esp
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL19:
	addl	$16, %esp
	.loc 1 202 0
	movl	-4(%ebp), %ebx
.LVL20:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	krhino_intrpt_exit, .-krhino_intrpt_exit
	.section	.text.unlikely.krhino_intrpt_exit
.LCOLDE5:
	.section	.text.krhino_intrpt_exit
.LHOTE5:
	.section	.text.unlikely.krhino_next_sleep_ticks_get,"ax",@progbits
.LCOLDB6:
	.section	.text.krhino_next_sleep_ticks_get,"ax",@progbits
.LHOTB6:
	.globl	krhino_next_sleep_ticks_get
	.type	krhino_next_sleep_ticks_get, @function
krhino_next_sleep_ticks_get:
.LFB17:
	.loc 1 205 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 215 0
	call	cpu_intrpt_save
.LVL22:
	movl	%eax, %edx
.LVL23:
	.loc 1 216 0
	movl	g_tick_head, %eax
.LVL24:
	cmpl	$g_tick_head, %eax
	jne	.L20
	.loc 1 217 0
	subl	$12, %esp
	pushl	%edx
	call	cpu_intrpt_restore
.LVL25:
	.loc 1 218 0
	orl	$-1, %eax
	addl	$16, %esp
	movl	%eax, %edx
	jmp	.L21
.LVL26:
.L20:
	.loc 1 223 0
	movl	8(%eax), %esi
	subl	g_tick_count, %esi
	movl	12(%eax), %edi
	sbbl	g_tick_count+4, %edi
.LVL27:
	.loc 1 224 0
	subl	$12, %esp
	pushl	%edx
	call	cpu_intrpt_restore
.LVL28:
	.loc 1 226 0
	addl	$16, %esp
	movl	%esi, %eax
	movl	%edi, %edx
.LVL29:
.L21:
	.loc 1 227 0
	leal	-8(%ebp), %esp
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
	.size	krhino_next_sleep_ticks_get, .-krhino_next_sleep_ticks_get
	.section	.text.unlikely.krhino_next_sleep_ticks_get
.LCOLDE6:
	.section	.text.krhino_next_sleep_ticks_get
.LHOTE6:
	.section	.text.unlikely.krhino_global_space_get,"ax",@progbits
.LCOLDB7:
	.section	.text.krhino_global_space_get,"ax",@progbits
.LHOTB7:
	.globl	krhino_global_space_get
	.type	krhino_global_space_get, @function
krhino_global_space_get:
.LFB18:
	.loc 1 231 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 250 0
	movl	$3179, %eax
	.loc 1 231 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 250 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	krhino_global_space_get, .-krhino_global_space_get
	.section	.text.unlikely.krhino_global_space_get
.LCOLDE7:
	.section	.text.krhino_global_space_get
.LHOTE7:
	.section	.text.unlikely.krhino_version_get,"ax",@progbits
.LCOLDB8:
	.section	.text.krhino_version_get,"ax",@progbits
.LHOTB8:
	.globl	krhino_version_get
	.type	krhino_version_get, @function
krhino_version_get:
.LFB19:
	.loc 1 253 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 255 0
	movl	$12000, %eax
	.loc 1 253 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 255 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	krhino_version_get, .-krhino_version_get
	.section	.text.unlikely.krhino_version_get
.LCOLDE8:
	.section	.text.krhino_version_get
.LHOTE8:
	.text
.Letext0:
	.section	.text.unlikely.krhino_init
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
	.file 14 "./kernel/rhino/core/include/k_ringbuf.h"
	.file 15 "./kernel/rhino/core/include/k_buf_queue.h"
	.file 16 "./kernel/rhino/core/include/k_timer.h"
	.file 17 "./kernel/rhino/core/include/k_internal.h"
	.file 18 "./kernel/rhino/core/include/k_stats.h"
	.file 19 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdbb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF251
	.byte	0xc
	.long	.LASF252
	.long	.LASF253
	.long	.Ldebug_ranges0+0
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
	.byte	0x12
	.long	0xb4
	.uleb128 0x3
	.long	.LASF89
	.byte	0x8
	.byte	0x14
	.long	0xb4
	.uleb128 0x3
	.long	.LASF90
	.byte	0x8
	.byte	0x15
	.long	0xb4
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
	.long	0xcf
	.uleb128 0x3
	.long	.LASF118
	.byte	0x9
	.byte	0x25
	.long	0x3b6
	.uleb128 0xd
	.byte	0x38
	.byte	0x9
	.byte	0x27
	.long	0x466
	.uleb128 0xa
	.long	.LASF119
	.byte	0x9
	.byte	0x28
	.long	0x309
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0x9
	.byte	0x29
	.long	0x309
	.byte	0x8
	.uleb128 0xa
	.long	.LASF121
	.byte	0x9
	.byte	0x2c
	.long	0x309
	.byte	0x10
	.uleb128 0xa
	.long	.LASF122
	.byte	0x9
	.byte	0x30
	.long	0x309
	.byte	0x18
	.uleb128 0xa
	.long	.LASF123
	.byte	0x9
	.byte	0x34
	.long	0x309
	.byte	0x20
	.uleb128 0xa
	.long	.LASF124
	.byte	0x9
	.byte	0x38
	.long	0x309
	.byte	0x28
	.uleb128 0xa
	.long	.LASF125
	.byte	0x9
	.byte	0x3c
	.long	0x309
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF126
	.byte	0x9
	.byte	0x3e
	.long	0x409
	.uleb128 0xe
	.value	0x104
	.byte	0xa
	.byte	0xd
	.long	0x4a0
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0xe
	.long	0x4a0
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0xf
	.long	0x4b6
	.byte	0xf8
	.uleb128 0xf
	.long	.LASF129
	.byte	0xa
	.byte	0x10
	.long	0x9e
	.value	0x100
	.byte	0
	.uleb128 0x10
	.long	0x4b0
	.long	0x4b0
	.uleb128 0x11
	.long	0xbf
	.byte	0x3d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x309
	.uleb128 0x10
	.long	0xa9
	.long	0x4c6
	.uleb128 0x11
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF130
	.byte	0xa
	.byte	0x11
	.long	0x471
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x8
	.long	0x50e
	.uleb128 0x7
	.long	.LASF131
	.byte	0
	.uleb128 0x7
	.long	.LASF132
	.byte	0x1
	.uleb128 0x7
	.long	.LASF133
	.byte	0x2
	.uleb128 0x7
	.long	.LASF134
	.byte	0x3
	.uleb128 0x7
	.long	.LASF135
	.byte	0x4
	.uleb128 0x7
	.long	.LASF136
	.byte	0x5
	.uleb128 0x7
	.long	.LASF137
	.byte	0x6
	.uleb128 0x7
	.long	.LASF138
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF139
	.byte	0xb
	.byte	0x11
	.long	0x4d1
	.uleb128 0xd
	.byte	0x7c
	.byte	0xb
	.byte	0x15
	.long	0x67e
	.uleb128 0xa
	.long	.LASF140
	.byte	0xb
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xa
	.long	.LASF141
	.byte	0xb
	.byte	0x1a
	.long	0x3f3
	.byte	0x4
	.uleb128 0xa
	.long	.LASF142
	.byte	0xb
	.byte	0x1d
	.long	0x67e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF143
	.byte	0xb
	.byte	0x20
	.long	0x68e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF144
	.byte	0xb
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF145
	.byte	0xb
	.byte	0x22
	.long	0x309
	.byte	0x18
	.uleb128 0xa
	.long	.LASF146
	.byte	0xb
	.byte	0x25
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF147
	.byte	0xb
	.byte	0x28
	.long	0x6e9
	.byte	0x24
	.uleb128 0xa
	.long	.LASF148
	.byte	0xb
	.byte	0x2b
	.long	0x309
	.byte	0x28
	.uleb128 0xa
	.long	.LASF149
	.byte	0xb
	.byte	0x2e
	.long	0x309
	.byte	0x30
	.uleb128 0xa
	.long	.LASF150
	.byte	0xb
	.byte	0x2f
	.long	0x2d3
	.byte	0x38
	.uleb128 0xa
	.long	.LASF151
	.byte	0xb
	.byte	0x30
	.long	0x2d3
	.byte	0x40
	.uleb128 0xa
	.long	.LASF152
	.byte	0xb
	.byte	0x31
	.long	0x4b0
	.byte	0x48
	.uleb128 0x12
	.string	"msg"
	.byte	0xb
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF153
	.byte	0xb
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF154
	.byte	0xb
	.byte	0x39
	.long	0x50e
	.byte	0x54
	.uleb128 0xa
	.long	.LASF155
	.byte	0xb
	.byte	0x3a
	.long	0x363
	.byte	0x58
	.uleb128 0xa
	.long	.LASF113
	.byte	0xb
	.byte	0x3d
	.long	0x6ef
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF156
	.byte	0xb
	.byte	0x40
	.long	0x73e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF157
	.byte	0xb
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xa
	.long	.LASF158
	.byte	0xb
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF159
	.byte	0xb
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF160
	.byte	0xb
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF161
	.byte	0xb
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF162
	.byte	0xb
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xa
	.long	.LASF163
	.byte	0xb
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xa
	.long	.LASF164
	.byte	0xb
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xa
	.long	.LASF165
	.byte	0xb
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF166
	.byte	0xb
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0x10
	.long	0xc6
	.long	0x68e
	.uleb128 0x11
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xe5
	.uleb128 0x9
	.long	.LASF167
	.byte	0x2c
	.byte	0xc
	.byte	0x8
	.long	0x6e9
	.uleb128 0xa
	.long	.LASF113
	.byte	0xc
	.byte	0x9
	.long	0x3fe
	.byte	0
	.uleb128 0xa
	.long	.LASF168
	.byte	0xc
	.byte	0xa
	.long	0x848
	.byte	0x14
	.uleb128 0xa
	.long	.LASF147
	.byte	0xc
	.byte	0xb
	.long	0x6e9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF169
	.byte	0xc
	.byte	0xc
	.long	0xf0
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF170
	.byte	0xc
	.byte	0xf
	.long	0x309
	.byte	0x20
	.uleb128 0xa
	.long	.LASF166
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x694
	.uleb128 0xb
	.byte	0x4
	.long	0x3fe
	.uleb128 0x9
	.long	.LASF171
	.byte	0x28
	.byte	0xd
	.byte	0xb
	.long	0x73e
	.uleb128 0xa
	.long	.LASF113
	.byte	0xd
	.byte	0xc
	.long	0x3fe
	.byte	0
	.uleb128 0xa
	.long	.LASF172
	.byte	0xd
	.byte	0xd
	.long	0xda
	.byte	0x14
	.uleb128 0xa
	.long	.LASF173
	.byte	0xd
	.byte	0xe
	.long	0xda
	.byte	0x18
	.uleb128 0xa
	.long	.LASF174
	.byte	0xd
	.byte	0x10
	.long	0x309
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF166
	.byte	0xd
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x6f5
	.uleb128 0x3
	.long	.LASF175
	.byte	0xb
	.byte	0x70
	.long	0x519
	.uleb128 0xd
	.byte	0x1c
	.byte	0xe
	.byte	0x21
	.long	0x7ac
	.uleb128 0x12
	.string	"buf"
	.byte	0xe
	.byte	0x22
	.long	0x7ac
	.byte	0
	.uleb128 0x12
	.string	"end"
	.byte	0xe
	.byte	0x23
	.long	0x7ac
	.byte	0x4
	.uleb128 0xa
	.long	.LASF176
	.byte	0xe
	.byte	0x24
	.long	0x7ac
	.byte	0x8
	.uleb128 0xa
	.long	.LASF177
	.byte	0xe
	.byte	0x25
	.long	0x7ac
	.byte	0xc
	.uleb128 0xa
	.long	.LASF178
	.byte	0xe
	.byte	0x26
	.long	0x2c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF179
	.byte	0xe
	.byte	0x27
	.long	0x2c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF180
	.byte	0xe
	.byte	0x28
	.long	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x9e
	.uleb128 0x3
	.long	.LASF181
	.byte	0xe
	.byte	0x29
	.long	0x74f
	.uleb128 0xd
	.byte	0x50
	.byte	0xf
	.byte	0x8
	.long	0x832
	.uleb128 0xa
	.long	.LASF113
	.byte	0xf
	.byte	0x9
	.long	0x3fe
	.byte	0
	.uleb128 0x12
	.string	"buf"
	.byte	0xf
	.byte	0xa
	.long	0xc6
	.byte	0x14
	.uleb128 0xa
	.long	.LASF182
	.byte	0xf
	.byte	0xb
	.long	0x7b2
	.byte	0x18
	.uleb128 0xa
	.long	.LASF183
	.byte	0xf
	.byte	0xc
	.long	0x2c
	.byte	0x34
	.uleb128 0xa
	.long	.LASF184
	.byte	0xf
	.byte	0xd
	.long	0x2c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF185
	.byte	0xf
	.byte	0xe
	.long	0x2c
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF186
	.byte	0xf
	.byte	0xf
	.long	0x2c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF187
	.byte	0xf
	.byte	0x11
	.long	0x309
	.byte	0x44
	.uleb128 0xa
	.long	.LASF166
	.byte	0xf
	.byte	0x13
	.long	0x9e
	.byte	0x4c
	.byte	0
	.uleb128 0x3
	.long	.LASF188
	.byte	0xf
	.byte	0x14
	.long	0x7bd
	.uleb128 0x3
	.long	.LASF189
	.byte	0xd
	.byte	0x13
	.long	0x6f5
	.uleb128 0xb
	.byte	0x4
	.long	0x744
	.uleb128 0x3
	.long	.LASF190
	.byte	0x10
	.byte	0x13
	.long	0x859
	.uleb128 0xb
	.byte	0x4
	.long	0x85f
	.uleb128 0x13
	.long	0x86f
	.uleb128 0x14
	.long	0xc6
	.uleb128 0x14
	.long	0xc6
	.byte	0
	.uleb128 0xd
	.byte	0x44
	.byte	0x10
	.byte	0x15
	.long	0x913
	.uleb128 0xa
	.long	.LASF191
	.byte	0x10
	.byte	0x16
	.long	0x309
	.byte	0
	.uleb128 0xa
	.long	.LASF192
	.byte	0x10
	.byte	0x17
	.long	0x4b0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x10
	.byte	0x18
	.long	0x3f3
	.byte	0xc
	.uleb128 0x12
	.string	"cb"
	.byte	0x10
	.byte	0x19
	.long	0x84e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF193
	.byte	0x10
	.byte	0x1a
	.long	0xc6
	.byte	0x14
	.uleb128 0xa
	.long	.LASF194
	.byte	0x10
	.byte	0x1b
	.long	0x2bd
	.byte	0x18
	.uleb128 0xa
	.long	.LASF195
	.byte	0x10
	.byte	0x1c
	.long	0x2bd
	.byte	0x20
	.uleb128 0xa
	.long	.LASF196
	.byte	0x10
	.byte	0x1d
	.long	0x2bd
	.byte	0x28
	.uleb128 0xa
	.long	.LASF197
	.byte	0x10
	.byte	0x1e
	.long	0x2bd
	.byte	0x30
	.uleb128 0xa
	.long	.LASF198
	.byte	0x10
	.byte	0x1f
	.long	0xc6
	.byte	0x38
	.uleb128 0xa
	.long	.LASF117
	.byte	0x10
	.byte	0x20
	.long	0x3ab
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF199
	.byte	0x10
	.byte	0x21
	.long	0x9e
	.byte	0x40
	.uleb128 0xa
	.long	.LASF166
	.byte	0x10
	.byte	0x22
	.long	0x9e
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.long	.LASF200
	.byte	0x10
	.byte	0x23
	.long	0x86f
	.uleb128 0x15
	.byte	0x8
	.byte	0x10
	.byte	0x29
	.long	0x93d
	.uleb128 0x16
	.long	.LASF201
	.byte	0x10
	.byte	0x2a
	.long	0x2bd
	.uleb128 0x17
	.string	"arg"
	.byte	0x10
	.byte	0x2b
	.long	0xc6
	.byte	0
	.uleb128 0xd
	.byte	0x18
	.byte	0x10
	.byte	0x25
	.long	0x974
	.uleb128 0xa
	.long	.LASF202
	.byte	0x10
	.byte	0x26
	.long	0x974
	.byte	0
	.uleb128 0xa
	.long	.LASF203
	.byte	0x10
	.byte	0x27
	.long	0x9e
	.byte	0x4
	.uleb128 0xa
	.long	.LASF204
	.byte	0x10
	.byte	0x28
	.long	0x2bd
	.byte	0x8
	.uleb128 0x12
	.string	"u"
	.byte	0x10
	.byte	0x2c
	.long	0x91e
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x913
	.uleb128 0x3
	.long	.LASF205
	.byte	0x10
	.byte	0x2d
	.long	0x93d
	.uleb128 0x10
	.long	0x9e
	.long	0x995
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF254
	.byte	0x1
	.byte	0x7
	.byte	0x3
	.uleb128 0x19
	.long	.LASF255
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.long	0x9b5
	.uleb128 0x1a
	.long	.LASF256
	.byte	0x2
	.byte	0xf
	.long	0x4b0
	.byte	0
	.uleb128 0x1b
	.long	.LASF257
	.byte	0x13
	.byte	0xf
	.long	0x9e
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF206
	.byte	0x1
	.byte	0x16
	.long	0x2b2
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa45
	.uleb128 0x1d
	.long	0x99d
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0x2f
	.long	0x9f3
	.uleb128 0x1e
	.long	0x9a9
	.byte	0
	.uleb128 0x1f
	.long	.LVL0
	.long	0xd24
	.uleb128 0x1f
	.long	.LVL1
	.long	0xd2f
	.uleb128 0x1f
	.long	.LVL2
	.long	0xd3a
	.uleb128 0x1f
	.long	.LVL3
	.long	0xd45
	.uleb128 0x1f
	.long	.LVL5
	.long	0xd50
	.uleb128 0x1f
	.long	.LVL6
	.long	0xd5b
	.uleb128 0x1f
	.long	.LVL7
	.long	0xd66
	.uleb128 0x1f
	.long	.LVL8
	.long	0xd71
	.uleb128 0x1f
	.long	.LVL9
	.long	0xd7c
	.byte	0
	.uleb128 0x1c
	.long	.LASF207
	.byte	0x1
	.byte	0x51
	.long	0x2b2
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa80
	.uleb128 0x20
	.long	.LASF209
	.byte	0x1
	.byte	0x53
	.long	0x848
	.long	.LLST0
	.uleb128 0x1f
	.long	.LVL10
	.long	0xd87
	.uleb128 0x1f
	.long	.LVL11
	.long	0xd92
	.byte	0
	.uleb128 0x1c
	.long	.LASF208
	.byte	0x1
	.byte	0x86
	.long	0x2b2
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xabb
	.uleb128 0x20
	.long	.LASF210
	.byte	0x1
	.byte	0x88
	.long	0x2c
	.long	.LLST1
	.uleb128 0x1f
	.long	.LVL12
	.long	0xd9d
	.uleb128 0x1f
	.long	.LVL13
	.long	0xda8
	.byte	0
	.uleb128 0x21
	.long	.LASF258
	.byte	0x1
	.byte	0x99
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1e
	.uleb128 0x20
	.long	.LASF210
	.byte	0x1
	.byte	0x9b
	.long	0x2c
	.long	.LLST2
	.uleb128 0x22
	.long	.LASF212
	.byte	0x1
	.byte	0x9c
	.long	0x9e
	.uleb128 0x20
	.long	.LASF209
	.byte	0x1
	.byte	0x9d
	.long	0x848
	.long	.LLST3
	.uleb128 0x1f
	.long	.LVL14
	.long	0xd9d
	.uleb128 0x1f
	.long	.LVL17
	.long	0xd87
	.uleb128 0x1f
	.long	.LVL18
	.long	0xdb3
	.uleb128 0x1f
	.long	.LVL19
	.long	0xda8
	.byte	0
	.uleb128 0x1c
	.long	.LASF211
	.byte	0x1
	.byte	0xcc
	.long	0x2d3
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9a
	.uleb128 0x20
	.long	.LASF210
	.byte	0x1
	.byte	0xce
	.long	0x2c
	.long	.LLST4
	.uleb128 0x22
	.long	.LASF152
	.byte	0x1
	.byte	0xd0
	.long	0x4b0
	.uleb128 0x23
	.string	"tcb"
	.byte	0x1
	.byte	0xd1
	.long	0x848
	.long	.LLST5
	.uleb128 0x20
	.long	.LASF213
	.byte	0x1
	.byte	0xd2
	.long	0x4b0
	.long	.LLST6
	.uleb128 0x20
	.long	.LASF214
	.byte	0x1
	.byte	0xd3
	.long	0x2d3
	.long	.LLST7
	.uleb128 0x1f
	.long	.LVL22
	.long	0xd9d
	.uleb128 0x1f
	.long	.LVL25
	.long	0xda8
	.uleb128 0x1f
	.long	.LVL28
	.long	0xda8
	.byte	0
	.uleb128 0x1c
	.long	.LASF215
	.byte	0x1
	.byte	0xe6
	.long	0x2c
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc1
	.uleb128 0x24
	.string	"mem"
	.byte	0x1
	.byte	0xe8
	.long	0x2c
	.value	0xc6b
	.byte	0
	.uleb128 0x25
	.long	.LASF259
	.byte	0x1
	.byte	0xfc
	.long	0xa9
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF216
	.byte	0x11
	.byte	0x8
	.long	0x2b2
	.uleb128 0x26
	.long	.LASF217
	.byte	0x11
	.byte	0x9
	.long	0x985
	.uleb128 0x26
	.long	.LASF218
	.byte	0x11
	.byte	0xb
	.long	0x4c6
	.uleb128 0x26
	.long	.LASF219
	.byte	0x11
	.byte	0xe
	.long	0x985
	.uleb128 0x26
	.long	.LASF220
	.byte	0x11
	.byte	0xf
	.long	0x985
	.uleb128 0x10
	.long	0x848
	.long	0xc1d
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF221
	.byte	0x11
	.byte	0x12
	.long	0xc0d
	.uleb128 0x26
	.long	.LASF222
	.byte	0x11
	.byte	0x15
	.long	0xc0d
	.uleb128 0x10
	.long	0x744
	.long	0xc43
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF223
	.byte	0x11
	.byte	0x18
	.long	0xc33
	.uleb128 0x10
	.long	0x2c8
	.long	0xc5e
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF224
	.byte	0x11
	.byte	0x19
	.long	0xc4e
	.uleb128 0x10
	.long	0xe5
	.long	0xc7f
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	0xbf
	.byte	0xc7
	.byte	0
	.uleb128 0x26
	.long	.LASF225
	.byte	0x11
	.byte	0x1a
	.long	0xc69
	.uleb128 0x26
	.long	.LASF226
	.byte	0x11
	.byte	0x1d
	.long	0x2d3
	.uleb128 0x26
	.long	.LASF227
	.byte	0x11
	.byte	0x1e
	.long	0x309
	.uleb128 0x26
	.long	.LASF228
	.byte	0x11
	.byte	0x21
	.long	0x466
	.uleb128 0x26
	.long	.LASF229
	.byte	0x11
	.byte	0x25
	.long	0x309
	.uleb128 0x26
	.long	.LASF230
	.byte	0x11
	.byte	0x26
	.long	0x2bd
	.uleb128 0x26
	.long	.LASF231
	.byte	0x11
	.byte	0x27
	.long	0x744
	.uleb128 0x10
	.long	0xe5
	.long	0xcdd
	.uleb128 0x27
	.long	0xbf
	.value	0x12b
	.byte	0
	.uleb128 0x26
	.long	.LASF232
	.byte	0x11
	.byte	0x28
	.long	0xccc
	.uleb128 0x26
	.long	.LASF233
	.byte	0x11
	.byte	0x29
	.long	0x832
	.uleb128 0x10
	.long	0x97a
	.long	0xd03
	.uleb128 0x11
	.long	0xbf
	.byte	0x13
	.byte	0
	.uleb128 0x26
	.long	.LASF234
	.byte	0x11
	.byte	0x2a
	.long	0xcf3
	.uleb128 0x26
	.long	.LASF235
	.byte	0x11
	.byte	0x4a
	.long	0x83d
	.uleb128 0x26
	.long	.LASF236
	.byte	0x11
	.byte	0x4b
	.long	0x309
	.uleb128 0x28
	.long	.LASF237
	.long	.LASF237
	.byte	0x11
	.byte	0x7c
	.uleb128 0x28
	.long	.LASF238
	.long	.LASF238
	.byte	0x11
	.byte	0x92
	.uleb128 0x28
	.long	.LASF239
	.long	.LASF239
	.byte	0x12
	.byte	0x9
	.uleb128 0x28
	.long	.LASF240
	.long	.LASF240
	.byte	0x11
	.byte	0xb0
	.uleb128 0x28
	.long	.LASF241
	.long	.LASF241
	.byte	0xd
	.byte	0x1c
	.uleb128 0x28
	.long	.LASF242
	.long	.LASF242
	.byte	0x11
	.byte	0xa4
	.uleb128 0x28
	.long	.LASF243
	.long	.LASF243
	.byte	0xb
	.byte	0x81
	.uleb128 0x28
	.long	.LASF244
	.long	.LASF244
	.byte	0x11
	.byte	0xaf
	.uleb128 0x28
	.long	.LASF245
	.long	.LASF245
	.byte	0x11
	.byte	0xa0
	.uleb128 0x28
	.long	.LASF246
	.long	.LASF246
	.byte	0x11
	.byte	0x79
	.uleb128 0x28
	.long	.LASF247
	.long	.LASF247
	.byte	0x13
	.byte	0xc
	.uleb128 0x28
	.long	.LASF248
	.long	.LASF248
	.byte	0x13
	.byte	0x8
	.uleb128 0x28
	.long	.LASF249
	.long	.LASF249
	.byte	0x13
	.byte	0x9
	.uleb128 0x28
	.long	.LASF250
	.long	.LASF250
	.byte	0x13
	.byte	0xa
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL12
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL20
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25-1
	.value	0x1
	.byte	0x52
	.long	.LVL26
	.long	.LVL28-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL26
	.long	.LVL28-1
	.value	0x3
	.byte	0x70
	.sleb128 -48
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL26
	.long	.LVL28-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL27
	.long	.LVL29
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
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
.LASF139:
	.string	"task_stat_t"
.LASF212:
	.string	"cur_cpu_num"
.LASF259:
	.string	"krhino_version_get"
.LASF190:
	.string	"timer_cb_t"
.LASF23:
	.string	"suspend_nested_t"
.LASF185:
	.string	"peak_num"
.LASF257:
	.string	"cpu_cur_get"
.LASF248:
	.string	"cpu_intrpt_save"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF159:
	.string	"pend_flags"
.LASF149:
	.string	"tick_list"
.LASF90:
	.string	"tick_t"
.LASF252:
	.string	"src/k_sys.c"
.LASF0:
	.string	"unsigned int"
.LASF91:
	.string	"next"
.LASF180:
	.string	"blk_size"
.LASF240:
	.string	"k_mm_init"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF120:
	.string	"mutex_head"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF106:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF166:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF92:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF98:
	.string	"BLK_ABORT"
.LASF178:
	.string	"freesize"
.LASF250:
	.string	"cpu_intrpt_switch"
.LASF234:
	.string	"timer_queue_cb"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF156:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF255:
	.string	"klist_init"
.LASF254:
	.string	"rhino_stack_check_init"
.LASF15:
	.string	"uint32_t"
.LASF237:
	.string	"runqueue_init"
.LASF147:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF89:
	.string	"idle_count_t"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF172:
	.string	"count"
.LASF247:
	.string	"cpu_first_task_start"
.LASF111:
	.string	"kobj_type_t"
.LASF211:
	.string	"krhino_next_sleep_ticks_get"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF249:
	.string	"cpu_intrpt_restore"
.LASF96:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF176:
	.string	"head"
.LASF258:
	.string	"krhino_intrpt_exit"
.LASF158:
	.string	"time_total"
.LASF196:
	.string	"init_count"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF134:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF253:
	.string	"/home/stone/Documents/pca"
.LASF242:
	.string	"dyn_mem_proc_task_start"
.LASF225:
	.string	"g_idle_task_stack"
.LASF223:
	.string	"g_idle_task"
.LASF235:
	.string	"g_res_sem"
.LASF231:
	.string	"g_timer_task"
.LASF191:
	.string	"timer_list"
.LASF187:
	.string	"buf_queue_item"
.LASF4:
	.string	"size_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF146:
	.string	"suspend_count"
.LASF151:
	.string	"tick_remain"
.LASF161:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF201:
	.string	"round"
.LASF227:
	.string	"g_tick_head"
.LASF209:
	.string	"preferred_task"
.LASF182:
	.string	"ringbuf"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF130:
	.string	"runqueue_t"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF154:
	.string	"task_state"
.LASF129:
	.string	"highest_pri"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF195:
	.string	"remain"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF233:
	.string	"g_timer_queue"
.LASF214:
	.string	"ticks"
.LASF183:
	.string	"max_msg_size"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF110:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF121:
	.string	"mblkpool_head"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF198:
	.string	"priv"
.LASF97:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF173:
	.string	"peak_count"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF244:
	.string	"workqueue_init"
.LASF200:
	.string	"ktimer_t"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF14:
	.string	"uint8_t"
.LASF238:
	.string	"tick_list_init"
.LASF140:
	.string	"task_stack"
.LASF216:
	.string	"g_sys_stat"
.LASF239:
	.string	"kobj_list_init"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF155:
	.string	"blk_state"
.LASF169:
	.string	"owner_nested"
.LASF181:
	.string	"k_ringbuf_t"
.LASF1:
	.string	"long long int"
.LASF226:
	.string	"g_tick_count"
.LASF217:
	.string	"g_idle_task_spawned"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF141:
	.string	"task_name"
.LASF165:
	.string	"b_prio"
.LASF125:
	.string	"buf_queue_head"
.LASF150:
	.string	"tick_match"
.LASF194:
	.string	"match"
.LASF100:
	.string	"BLK_DEL"
.LASF246:
	.string	"preferred_cpu_ready_task_get"
.LASF99:
	.string	"BLK_TIMEOUT"
.LASF186:
	.string	"min_free_buf_size"
.LASF193:
	.string	"timer_cb_arg"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF133:
	.string	"K_PEND"
.LASF102:
	.string	"blk_state_t"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF145:
	.string	"task_list"
.LASF215:
	.string	"krhino_global_space_get"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF113:
	.string	"blk_obj"
.LASF112:
	.string	"klist_s"
.LASF93:
	.string	"klist_t"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF160:
	.string	"pend_info"
.LASF114:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF222:
	.string	"g_active_task"
.LASF109:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF164:
	.string	"prio"
.LASF171:
	.string	"sem_s"
.LASF59:
	.string	"RHINO_NO_PEND_WAIT"
.LASF142:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF87:
	.string	"kstat_t"
.LASF19:
	.string	"name_t"
.LASF148:
	.string	"task_stats_item"
.LASF39:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF168:
	.string	"mutex_task"
.LASF208:
	.string	"krhino_intrpt_enter"
.LASF94:
	.string	"BLK_POLICY_PRI"
.LASF221:
	.string	"g_preferred_ready_task"
.LASF232:
	.string	"g_timer_task_stack"
.LASF7:
	.string	"short int"
.LASF243:
	.string	"krhino_task_create"
.LASF9:
	.string	"long int"
.LASF199:
	.string	"timer_state"
.LASF143:
	.string	"task_stack_base"
.LASF124:
	.string	"event_head"
.LASF131:
	.string	"K_SEED"
.LASF174:
	.string	"sem_item"
.LASF132:
	.string	"K_RDY"
.LASF126:
	.string	"kobj_list_t"
.LASF175:
	.string	"ktask_t"
.LASF123:
	.string	"queue_head"
.LASF230:
	.string	"g_timer_count"
.LASF205:
	.string	"k_timer_queue_cb"
.LASF16:
	.string	"uint64_t"
.LASF137:
	.string	"K_SLEEP_SUSPENDED"
.LASF76:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF197:
	.string	"round_ticks"
.LASF224:
	.string	"g_idle_count"
.LASF105:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"RHINO_RINGBUF_FULL"
.LASF115:
	.string	"name"
.LASF127:
	.string	"cur_list_item"
.LASF136:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF210:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF118:
	.string	"blk_obj_t"
.LASF188:
	.string	"kbuf_queue_t"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF157:
	.string	"time_slice"
.LASF192:
	.string	"to_head"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF95:
	.string	"BLK_POLICY_FIFO"
.LASF229:
	.string	"g_timer_head"
.LASF103:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF152:
	.string	"tick_head"
.LASF167:
	.string	"mutex_s"
.LASF179:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF251:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF119:
	.string	"task_head"
.LASF117:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF177:
	.string	"tail"
.LASF128:
	.string	"task_bit_map"
.LASF204:
	.string	"first"
.LASF203:
	.string	"cb_num"
.LASF256:
	.string	"list_head"
.LASF22:
	.string	"mutex_nested_t"
.LASF144:
	.string	"stack_size"
.LASF108:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF206:
	.string	"krhino_init"
.LASF218:
	.string	"g_ready_queue"
.LASF213:
	.string	"iter"
.LASF122:
	.string	"sem_head"
.LASF228:
	.string	"g_kobj_list"
.LASF135:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF241:
	.string	"krhino_sem_create"
.LASF3:
	.string	"signed char"
.LASF88:
	.string	"sys_time_t"
.LASF170:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF236:
	.string	"g_res_list"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF104:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF162:
	.string	"sched_policy"
.LASF116:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF138:
	.string	"K_DELETED"
.LASF107:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF220:
	.string	"g_intrpt_nested_level"
.LASF163:
	.string	"cpu_num"
.LASF202:
	.string	"timer"
.LASF219:
	.string	"g_sched_lock"
.LASF245:
	.string	"ktimer_init"
.LASF207:
	.string	"krhino_start"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF153:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF101:
	.string	"BLK_INVALID"
.LASF184:
	.string	"cur_num"
.LASF189:
	.string	"ksem_t"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

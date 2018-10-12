	.file	"k_obj.c"
	.text
.Ltext0:
	.globl	g_kmm_head
	.section	.bss.g_kmm_head,"aw",@nobits
	.align 4
	.type	g_kmm_head, @object
	.size	g_kmm_head, 4
g_kmm_head:
	.zero	4
	.globl	g_workqueue_stack
	.section	.bss.g_workqueue_stack,"aw",@nobits
	.align 32
	.type	g_workqueue_stack, @object
	.size	g_workqueue_stack, 3072
g_workqueue_stack:
	.zero	3072
	.globl	g_workqueue_default
	.section	.bss.g_workqueue_default,"aw",@nobits
	.align 32
	.type	g_workqueue_default, @object
	.size	g_workqueue_default, 188
g_workqueue_default:
	.zero	188
	.globl	g_workqueue_mutex
	.section	.bss.g_workqueue_mutex,"aw",@nobits
	.align 32
	.type	g_workqueue_mutex, @object
	.size	g_workqueue_mutex, 44
g_workqueue_mutex:
	.zero	44
	.globl	g_workqueue_list_head
	.section	.bss.g_workqueue_list_head,"aw",@nobits
	.align 4
	.type	g_workqueue_list_head, @object
	.size	g_workqueue_list_head, 8
g_workqueue_list_head:
	.zero	8
	.globl	g_dyn_task_stack
	.section	.bss.g_dyn_task_stack,"aw",@nobits
	.align 32
	.type	g_dyn_task_stack, @object
	.size	g_dyn_task_stack, 1024
g_dyn_task_stack:
	.zero	1024
	.globl	g_dyn_task
	.section	.bss.g_dyn_task,"aw",@nobits
	.align 32
	.type	g_dyn_task, @object
	.size	g_dyn_task, 124
g_dyn_task:
	.zero	124
	.globl	g_res_list
	.section	.bss.g_res_list,"aw",@nobits
	.align 4
	.type	g_res_list, @object
	.size	g_res_list, 8
g_res_list:
	.zero	8
	.globl	g_res_sem
	.section	.bss.g_res_sem,"aw",@nobits
	.align 32
	.type	g_res_sem, @object
	.size	g_res_sem, 40
g_res_sem:
	.zero	40
	.globl	timer_queue_cb
	.section	.bss.timer_queue_cb,"aw",@nobits
	.align 32
	.type	timer_queue_cb, @object
	.size	timer_queue_cb, 480
timer_queue_cb:
	.zero	480
	.globl	g_timer_queue
	.section	.bss.g_timer_queue,"aw",@nobits
	.align 32
	.type	g_timer_queue, @object
	.size	g_timer_queue, 80
g_timer_queue:
	.zero	80
	.globl	g_timer_task_stack
	.section	.bss.g_timer_task_stack,"aw",@nobits
	.align 32
	.type	g_timer_task_stack, @object
	.size	g_timer_task_stack, 1200
g_timer_task_stack:
	.zero	1200
	.globl	g_timer_task
	.section	.bss.g_timer_task,"aw",@nobits
	.align 32
	.type	g_timer_task, @object
	.size	g_timer_task, 124
g_timer_task:
	.zero	124
	.globl	g_timer_count
	.section	.bss.g_timer_count,"aw",@nobits
	.align 8
	.type	g_timer_count, @object
	.size	g_timer_count, 8
g_timer_count:
	.zero	8
	.globl	g_timer_head
	.section	.bss.g_timer_head,"aw",@nobits
	.align 4
	.type	g_timer_head, @object
	.size	g_timer_head, 8
g_timer_head:
	.zero	8
	.globl	g_kobj_list
	.section	.bss.g_kobj_list,"aw",@nobits
	.align 32
	.type	g_kobj_list, @object
	.size	g_kobj_list, 56
g_kobj_list:
	.zero	56
	.globl	g_tick_head
	.section	.bss.g_tick_head,"aw",@nobits
	.align 4
	.type	g_tick_head, @object
	.size	g_tick_head, 8
g_tick_head:
	.zero	8
	.globl	g_tick_count
	.section	.bss.g_tick_count,"aw",@nobits
	.align 8
	.type	g_tick_count, @object
	.size	g_tick_count, 8
g_tick_count:
	.zero	8
	.globl	g_idle_task_stack
	.section	.bss.g_idle_task_stack,"aw",@nobits
	.align 32
	.type	g_idle_task_stack, @object
	.size	g_idle_task_stack, 800
g_idle_task_stack:
	.zero	800
	.globl	g_idle_count
	.section	.bss.g_idle_count,"aw",@nobits
	.align 8
	.type	g_idle_count, @object
	.size	g_idle_count, 8
g_idle_count:
	.zero	8
	.globl	g_idle_task
	.section	.bss.g_idle_task,"aw",@nobits
	.align 32
	.type	g_idle_task, @object
	.size	g_idle_task, 124
g_idle_task:
	.zero	124
	.globl	g_active_task
	.section	.bss.g_active_task,"aw",@nobits
	.align 4
	.type	g_active_task, @object
	.size	g_active_task, 4
g_active_task:
	.zero	4
	.globl	g_preferred_ready_task
	.section	.bss.g_preferred_ready_task,"aw",@nobits
	.align 4
	.type	g_preferred_ready_task, @object
	.size	g_preferred_ready_task, 4
g_preferred_ready_task:
	.zero	4
	.globl	g_intrpt_nested_level
	.section	.bss.g_intrpt_nested_level,"aw",@nobits
	.type	g_intrpt_nested_level, @object
	.size	g_intrpt_nested_level, 1
g_intrpt_nested_level:
	.zero	1
	.globl	g_sched_lock
	.section	.bss.g_sched_lock,"aw",@nobits
	.type	g_sched_lock, @object
	.size	g_sched_lock, 1
g_sched_lock:
	.zero	1
	.globl	g_ready_queue
	.section	.bss.g_ready_queue,"aw",@nobits
	.align 32
	.type	g_ready_queue, @object
	.size	g_ready_queue, 260
g_ready_queue:
	.zero	260
	.globl	g_idle_task_spawned
	.section	.bss.g_idle_task_spawned,"aw",@nobits
	.type	g_idle_task_spawned, @object
	.size	g_idle_task_spawned, 1
g_idle_task_spawned:
	.zero	1
	.globl	g_sys_stat
	.section	.bss.g_sys_stat,"aw",@nobits
	.align 4
	.type	g_sys_stat, @object
	.size	g_sys_stat, 4
g_sys_stat:
	.zero	4
	.text
.Letext0:
	.file 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 5 "./kernel/rhino/core/include/k_err.h"
	.file 6 "./kernel/rhino/core/include/k_spin_lock.h"
	.file 7 "./kernel/rhino/core/include/k_sys.h"
	.file 8 "./kernel/rhino/core/include/k_list.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_sched.h"
	.file 11 "./kernel/rhino/core/include/k_task.h"
	.file 12 "./kernel/rhino/core/include/k_mutex.h"
	.file 13 "./kernel/rhino/core/include/k_sem.h"
	.file 14 "./kernel/rhino/core/include/k_ringbuf.h"
	.file 15 "./kernel/rhino/core/include/k_buf_queue.h"
	.file 16 "./kernel/rhino/core/include/k_timer.h"
	.file 17 "./kernel/rhino/core/include/k_mm.h"
	.file 18 "./kernel/rhino/core/include/k_workqueue.h"
	.file 19 "kernel/rhino/core/k_obj.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe8f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF268
	.byte	0xc
	.long	.LASF269
	.long	.LASF270
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0xd8
	.long	0x2f
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
	.byte	0x2
	.byte	0x1d
	.long	0x56
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
	.byte	0x2
	.byte	0x41
	.long	0x7d
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x5b
	.long	0x8f
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x18
	.long	0x4b
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x30
	.long	0x72
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x3c
	.long	0x84
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
	.byte	0x4
	.byte	0xe
	.long	0xc0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0xf
	.long	0xa1
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x10
	.long	0xa1
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x13
	.long	0xa1
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x14
	.long	0x96
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x16
	.long	0xa1
	.uleb128 0x6
	.byte	0x4
	.long	0x2f
	.byte	0x5
	.byte	0x8
	.long	0x2b5
	.uleb128 0x7
	.long	.LASF25
	.byte	0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.uleb128 0x7
	.long	.LASF27
	.byte	0x2
	.uleb128 0x7
	.long	.LASF28
	.byte	0x3
	.uleb128 0x7
	.long	.LASF29
	.byte	0x4
	.uleb128 0x7
	.long	.LASF30
	.byte	0x5
	.uleb128 0x7
	.long	.LASF31
	.byte	0x6
	.uleb128 0x7
	.long	.LASF32
	.byte	0x7
	.uleb128 0x7
	.long	.LASF33
	.byte	0x8
	.uleb128 0x7
	.long	.LASF34
	.byte	0x9
	.uleb128 0x7
	.long	.LASF35
	.byte	0xa
	.uleb128 0x7
	.long	.LASF36
	.byte	0xb
	.uleb128 0x7
	.long	.LASF37
	.byte	0xc
	.uleb128 0x7
	.long	.LASF38
	.byte	0xd
	.uleb128 0x7
	.long	.LASF39
	.byte	0x64
	.uleb128 0x7
	.long	.LASF40
	.byte	0x65
	.uleb128 0x7
	.long	.LASF41
	.byte	0x66
	.uleb128 0x7
	.long	.LASF42
	.byte	0x67
	.uleb128 0x7
	.long	.LASF43
	.byte	0x68
	.uleb128 0x7
	.long	.LASF44
	.byte	0x69
	.uleb128 0x7
	.long	.LASF45
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF46
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF47
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF48
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF49
	.byte	0xca
	.uleb128 0x7
	.long	.LASF50
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF51
	.value	0x12c
	.uleb128 0x8
	.long	.LASF52
	.value	0x12d
	.uleb128 0x8
	.long	.LASF53
	.value	0x12e
	.uleb128 0x8
	.long	.LASF54
	.value	0x12f
	.uleb128 0x8
	.long	.LASF55
	.value	0x130
	.uleb128 0x8
	.long	.LASF56
	.value	0x131
	.uleb128 0x8
	.long	.LASF57
	.value	0x132
	.uleb128 0x8
	.long	.LASF58
	.value	0x133
	.uleb128 0x8
	.long	.LASF59
	.value	0x134
	.uleb128 0x8
	.long	.LASF60
	.value	0x190
	.uleb128 0x8
	.long	.LASF61
	.value	0x191
	.uleb128 0x8
	.long	.LASF62
	.value	0x192
	.uleb128 0x8
	.long	.LASF63
	.value	0x193
	.uleb128 0x8
	.long	.LASF64
	.value	0x194
	.uleb128 0x8
	.long	.LASF65
	.value	0x195
	.uleb128 0x8
	.long	.LASF66
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF67
	.value	0x258
	.uleb128 0x8
	.long	.LASF68
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF69
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF70
	.value	0x2be
	.uleb128 0x8
	.long	.LASF71
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF72
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF73
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF74
	.value	0x320
	.uleb128 0x8
	.long	.LASF75
	.value	0x321
	.uleb128 0x8
	.long	.LASF76
	.value	0x384
	.uleb128 0x8
	.long	.LASF77
	.value	0x385
	.uleb128 0x8
	.long	.LASF78
	.value	0x386
	.uleb128 0x8
	.long	.LASF79
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF80
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF81
	.value	0x44c
	.uleb128 0x8
	.long	.LASF82
	.value	0x44d
	.uleb128 0x8
	.long	.LASF83
	.value	0x44e
	.uleb128 0x8
	.long	.LASF84
	.value	0x44f
	.uleb128 0x8
	.long	.LASF85
	.value	0x450
	.uleb128 0x8
	.long	.LASF86
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF87
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF88
	.byte	0x5
	.byte	0x54
	.long	0x109
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.long	0x2d5
	.uleb128 0xa
	.long	.LASF93
	.byte	0x6
	.byte	0xc
	.long	0xfe
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF89
	.byte	0x6
	.byte	0xd
	.long	0x2c0
	.uleb128 0x3
	.long	.LASF90
	.byte	0x7
	.byte	0x12
	.long	0xac
	.uleb128 0x3
	.long	.LASF91
	.byte	0x7
	.byte	0x14
	.long	0xac
	.uleb128 0x3
	.long	.LASF92
	.byte	0x7
	.byte	0x15
	.long	0xac
	.uleb128 0xb
	.long	.LASF115
	.byte	0x8
	.byte	0x8
	.byte	0x8
	.long	0x326
	.uleb128 0xa
	.long	.LASF94
	.byte	0x8
	.byte	0x9
	.long	0x326
	.byte	0
	.uleb128 0xa
	.long	.LASF95
	.byte	0x8
	.byte	0xa
	.long	0x326
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x301
	.uleb128 0x3
	.long	.LASF96
	.byte	0x8
	.byte	0xb
	.long	0x301
	.uleb128 0x6
	.byte	0x4
	.long	0x2f
	.byte	0x9
	.byte	0x8
	.long	0x350
	.uleb128 0x7
	.long	.LASF97
	.byte	0
	.uleb128 0x7
	.long	.LASF98
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0x9
	.byte	0xb
	.long	0x337
	.uleb128 0x6
	.byte	0x4
	.long	0x2f
	.byte	0x9
	.byte	0xd
	.long	0x386
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
	.byte	0
	.uleb128 0x3
	.long	.LASF105
	.byte	0x9
	.byte	0x13
	.long	0x35b
	.uleb128 0x6
	.byte	0x4
	.long	0x2f
	.byte	0x9
	.byte	0x15
	.long	0x3ce
	.uleb128 0x7
	.long	.LASF106
	.byte	0
	.uleb128 0x7
	.long	.LASF107
	.byte	0x1
	.uleb128 0x7
	.long	.LASF108
	.byte	0x2
	.uleb128 0x7
	.long	.LASF109
	.byte	0x3
	.uleb128 0x7
	.long	.LASF110
	.byte	0x4
	.uleb128 0x7
	.long	.LASF111
	.byte	0x5
	.uleb128 0x7
	.long	.LASF112
	.byte	0x6
	.uleb128 0x7
	.long	.LASF113
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF114
	.byte	0x9
	.byte	0x1e
	.long	0x391
	.uleb128 0xb
	.long	.LASF116
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x416
	.uleb128 0xa
	.long	.LASF117
	.byte	0x9
	.byte	0x21
	.long	0x32c
	.byte	0
	.uleb128 0xa
	.long	.LASF118
	.byte	0x9
	.byte	0x22
	.long	0x416
	.byte	0x8
	.uleb128 0xa
	.long	.LASF119
	.byte	0x9
	.byte	0x23
	.long	0x350
	.byte	0xc
	.uleb128 0xa
	.long	.LASF120
	.byte	0x9
	.byte	0x24
	.long	0x3ce
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x41c
	.uleb128 0xd
	.long	0xc7
	.uleb128 0x3
	.long	.LASF121
	.byte	0x9
	.byte	0x25
	.long	0x3d9
	.uleb128 0x9
	.byte	0x38
	.byte	0x9
	.byte	0x27
	.long	0x489
	.uleb128 0xa
	.long	.LASF122
	.byte	0x9
	.byte	0x28
	.long	0x32c
	.byte	0
	.uleb128 0xa
	.long	.LASF123
	.byte	0x9
	.byte	0x29
	.long	0x32c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF124
	.byte	0x9
	.byte	0x2c
	.long	0x32c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF125
	.byte	0x9
	.byte	0x30
	.long	0x32c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF126
	.byte	0x9
	.byte	0x34
	.long	0x32c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF127
	.byte	0x9
	.byte	0x38
	.long	0x32c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF128
	.byte	0x9
	.byte	0x3c
	.long	0x32c
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF129
	.byte	0x9
	.byte	0x3e
	.long	0x42c
	.uleb128 0xe
	.value	0x104
	.byte	0xa
	.byte	0xd
	.long	0x4c3
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0xe
	.long	0x4c3
	.byte	0
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0xf
	.long	0x4d9
	.byte	0xf8
	.uleb128 0xf
	.long	.LASF132
	.byte	0xa
	.byte	0x10
	.long	0x96
	.value	0x100
	.byte	0
	.uleb128 0x10
	.long	0x4d3
	.long	0x4d3
	.uleb128 0x11
	.long	0xb7
	.byte	0x3d
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x32c
	.uleb128 0x10
	.long	0xa1
	.long	0x4e9
	.uleb128 0x11
	.long	0xb7
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF133
	.byte	0xa
	.byte	0x11
	.long	0x494
	.uleb128 0x6
	.byte	0x4
	.long	0x2f
	.byte	0xb
	.byte	0x8
	.long	0x531
	.uleb128 0x7
	.long	.LASF134
	.byte	0
	.uleb128 0x7
	.long	.LASF135
	.byte	0x1
	.uleb128 0x7
	.long	.LASF136
	.byte	0x2
	.uleb128 0x7
	.long	.LASF137
	.byte	0x3
	.uleb128 0x7
	.long	.LASF138
	.byte	0x4
	.uleb128 0x7
	.long	.LASF139
	.byte	0x5
	.uleb128 0x7
	.long	.LASF140
	.byte	0x6
	.uleb128 0x7
	.long	.LASF141
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF142
	.byte	0xb
	.byte	0x11
	.long	0x4f4
	.uleb128 0x9
	.byte	0x7c
	.byte	0xb
	.byte	0x15
	.long	0x6a1
	.uleb128 0xa
	.long	.LASF143
	.byte	0xb
	.byte	0x18
	.long	0xbe
	.byte	0
	.uleb128 0xa
	.long	.LASF144
	.byte	0xb
	.byte	0x1a
	.long	0x416
	.byte	0x4
	.uleb128 0xa
	.long	.LASF145
	.byte	0xb
	.byte	0x1d
	.long	0x6a1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF146
	.byte	0xb
	.byte	0x20
	.long	0x6b1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF147
	.byte	0xb
	.byte	0x21
	.long	0xa1
	.byte	0x14
	.uleb128 0xa
	.long	.LASF148
	.byte	0xb
	.byte	0x22
	.long	0x32c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF149
	.byte	0xb
	.byte	0x25
	.long	0xf3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF150
	.byte	0xb
	.byte	0x28
	.long	0x70c
	.byte	0x24
	.uleb128 0xa
	.long	.LASF151
	.byte	0xb
	.byte	0x2b
	.long	0x32c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF152
	.byte	0xb
	.byte	0x2e
	.long	0x32c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF153
	.byte	0xb
	.byte	0x2f
	.long	0x2f6
	.byte	0x38
	.uleb128 0xa
	.long	.LASF154
	.byte	0xb
	.byte	0x30
	.long	0x2f6
	.byte	0x40
	.uleb128 0xa
	.long	.LASF155
	.byte	0xb
	.byte	0x31
	.long	0x4d3
	.byte	0x48
	.uleb128 0x12
	.string	"msg"
	.byte	0xb
	.byte	0x33
	.long	0xbe
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF156
	.byte	0xb
	.byte	0x36
	.long	0x24
	.byte	0x50
	.uleb128 0xa
	.long	.LASF157
	.byte	0xb
	.byte	0x39
	.long	0x531
	.byte	0x54
	.uleb128 0xa
	.long	.LASF158
	.byte	0xb
	.byte	0x3a
	.long	0x386
	.byte	0x58
	.uleb128 0xa
	.long	.LASF116
	.byte	0xb
	.byte	0x3d
	.long	0x712
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF159
	.byte	0xb
	.byte	0x40
	.long	0x761
	.byte	0x60
	.uleb128 0xa
	.long	.LASF160
	.byte	0xb
	.byte	0x56
	.long	0xa1
	.byte	0x64
	.uleb128 0xa
	.long	.LASF161
	.byte	0xb
	.byte	0x57
	.long	0xa1
	.byte	0x68
	.uleb128 0xa
	.long	.LASF162
	.byte	0xb
	.byte	0x5b
	.long	0xa1
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF163
	.byte	0xb
	.byte	0x5c
	.long	0xbe
	.byte	0x70
	.uleb128 0xa
	.long	.LASF164
	.byte	0xb
	.byte	0x5d
	.long	0x96
	.byte	0x74
	.uleb128 0xa
	.long	.LASF165
	.byte	0xb
	.byte	0x61
	.long	0x96
	.byte	0x75
	.uleb128 0xa
	.long	.LASF166
	.byte	0xb
	.byte	0x64
	.long	0x96
	.byte	0x76
	.uleb128 0xa
	.long	.LASF167
	.byte	0xb
	.byte	0x6c
	.long	0x96
	.byte	0x77
	.uleb128 0xa
	.long	.LASF168
	.byte	0xb
	.byte	0x6e
	.long	0x96
	.byte	0x78
	.uleb128 0xa
	.long	.LASF169
	.byte	0xb
	.byte	0x6f
	.long	0x96
	.byte	0x79
	.byte	0
	.uleb128 0x10
	.long	0xbe
	.long	0x6b1
	.uleb128 0x11
	.long	0xb7
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0xdd
	.uleb128 0xb
	.long	.LASF170
	.byte	0x2c
	.byte	0xc
	.byte	0x8
	.long	0x70c
	.uleb128 0xa
	.long	.LASF116
	.byte	0xc
	.byte	0x9
	.long	0x421
	.byte	0
	.uleb128 0xa
	.long	.LASF171
	.byte	0xc
	.byte	0xa
	.long	0x87c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF150
	.byte	0xc
	.byte	0xb
	.long	0x70c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF172
	.byte	0xc
	.byte	0xc
	.long	0xe8
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF173
	.byte	0xc
	.byte	0xf
	.long	0x32c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF169
	.byte	0xc
	.byte	0x12
	.long	0x96
	.byte	0x28
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x6b7
	.uleb128 0xc
	.byte	0x4
	.long	0x421
	.uleb128 0xb
	.long	.LASF174
	.byte	0x28
	.byte	0xd
	.byte	0xb
	.long	0x761
	.uleb128 0xa
	.long	.LASF116
	.byte	0xd
	.byte	0xc
	.long	0x421
	.byte	0
	.uleb128 0xa
	.long	.LASF175
	.byte	0xd
	.byte	0xd
	.long	0xd2
	.byte	0x14
	.uleb128 0xa
	.long	.LASF176
	.byte	0xd
	.byte	0xe
	.long	0xd2
	.byte	0x18
	.uleb128 0xa
	.long	.LASF177
	.byte	0xd
	.byte	0x10
	.long	0x32c
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF169
	.byte	0xd
	.byte	0x12
	.long	0x96
	.byte	0x24
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x718
	.uleb128 0x3
	.long	.LASF178
	.byte	0xb
	.byte	0x70
	.long	0x53c
	.uleb128 0xc
	.byte	0x4
	.long	0x778
	.uleb128 0x13
	.long	0x783
	.uleb128 0x14
	.long	0xbe
	.byte	0
	.uleb128 0x9
	.byte	0x1c
	.byte	0xe
	.byte	0x21
	.long	0x7e0
	.uleb128 0x12
	.string	"buf"
	.byte	0xe
	.byte	0x22
	.long	0x7e0
	.byte	0
	.uleb128 0x12
	.string	"end"
	.byte	0xe
	.byte	0x23
	.long	0x7e0
	.byte	0x4
	.uleb128 0xa
	.long	.LASF179
	.byte	0xe
	.byte	0x24
	.long	0x7e0
	.byte	0x8
	.uleb128 0xa
	.long	.LASF180
	.byte	0xe
	.byte	0x25
	.long	0x7e0
	.byte	0xc
	.uleb128 0xa
	.long	.LASF181
	.byte	0xe
	.byte	0x26
	.long	0x24
	.byte	0x10
	.uleb128 0xa
	.long	.LASF182
	.byte	0xe
	.byte	0x27
	.long	0x24
	.byte	0x14
	.uleb128 0xa
	.long	.LASF183
	.byte	0xe
	.byte	0x28
	.long	0x24
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x96
	.uleb128 0x3
	.long	.LASF184
	.byte	0xe
	.byte	0x29
	.long	0x783
	.uleb128 0x9
	.byte	0x50
	.byte	0xf
	.byte	0x8
	.long	0x866
	.uleb128 0xa
	.long	.LASF116
	.byte	0xf
	.byte	0x9
	.long	0x421
	.byte	0
	.uleb128 0x12
	.string	"buf"
	.byte	0xf
	.byte	0xa
	.long	0xbe
	.byte	0x14
	.uleb128 0xa
	.long	.LASF185
	.byte	0xf
	.byte	0xb
	.long	0x7e6
	.byte	0x18
	.uleb128 0xa
	.long	.LASF186
	.byte	0xf
	.byte	0xc
	.long	0x24
	.byte	0x34
	.uleb128 0xa
	.long	.LASF187
	.byte	0xf
	.byte	0xd
	.long	0x24
	.byte	0x38
	.uleb128 0xa
	.long	.LASF188
	.byte	0xf
	.byte	0xe
	.long	0x24
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF189
	.byte	0xf
	.byte	0xf
	.long	0x24
	.byte	0x40
	.uleb128 0xa
	.long	.LASF190
	.byte	0xf
	.byte	0x11
	.long	0x32c
	.byte	0x44
	.uleb128 0xa
	.long	.LASF169
	.byte	0xf
	.byte	0x13
	.long	0x96
	.byte	0x4c
	.byte	0
	.uleb128 0x3
	.long	.LASF191
	.byte	0xf
	.byte	0x14
	.long	0x7f1
	.uleb128 0x3
	.long	.LASF192
	.byte	0xd
	.byte	0x13
	.long	0x718
	.uleb128 0xc
	.byte	0x4
	.long	0x767
	.uleb128 0x3
	.long	.LASF193
	.byte	0xc
	.byte	0x13
	.long	0x6b7
	.uleb128 0x3
	.long	.LASF194
	.byte	0x10
	.byte	0x13
	.long	0x898
	.uleb128 0xc
	.byte	0x4
	.long	0x89e
	.uleb128 0x13
	.long	0x8ae
	.uleb128 0x14
	.long	0xbe
	.uleb128 0x14
	.long	0xbe
	.byte	0
	.uleb128 0x9
	.byte	0x44
	.byte	0x10
	.byte	0x15
	.long	0x952
	.uleb128 0xa
	.long	.LASF195
	.byte	0x10
	.byte	0x16
	.long	0x32c
	.byte	0
	.uleb128 0xa
	.long	.LASF196
	.byte	0x10
	.byte	0x17
	.long	0x4d3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF118
	.byte	0x10
	.byte	0x18
	.long	0x416
	.byte	0xc
	.uleb128 0x12
	.string	"cb"
	.byte	0x10
	.byte	0x19
	.long	0x88d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF197
	.byte	0x10
	.byte	0x1a
	.long	0xbe
	.byte	0x14
	.uleb128 0xa
	.long	.LASF198
	.byte	0x10
	.byte	0x1b
	.long	0x2e0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF199
	.byte	0x10
	.byte	0x1c
	.long	0x2e0
	.byte	0x20
	.uleb128 0xa
	.long	.LASF200
	.byte	0x10
	.byte	0x1d
	.long	0x2e0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF201
	.byte	0x10
	.byte	0x1e
	.long	0x2e0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF202
	.byte	0x10
	.byte	0x1f
	.long	0xbe
	.byte	0x38
	.uleb128 0xa
	.long	.LASF120
	.byte	0x10
	.byte	0x20
	.long	0x3ce
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF203
	.byte	0x10
	.byte	0x21
	.long	0x96
	.byte	0x40
	.uleb128 0xa
	.long	.LASF169
	.byte	0x10
	.byte	0x22
	.long	0x96
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.long	.LASF204
	.byte	0x10
	.byte	0x23
	.long	0x8ae
	.uleb128 0x15
	.byte	0x8
	.byte	0x10
	.byte	0x29
	.long	0x97c
	.uleb128 0x16
	.long	.LASF205
	.byte	0x10
	.byte	0x2a
	.long	0x2e0
	.uleb128 0x17
	.string	"arg"
	.byte	0x10
	.byte	0x2b
	.long	0xbe
	.byte	0
	.uleb128 0x9
	.byte	0x18
	.byte	0x10
	.byte	0x25
	.long	0x9b3
	.uleb128 0xa
	.long	.LASF206
	.byte	0x10
	.byte	0x26
	.long	0x9b3
	.byte	0
	.uleb128 0xa
	.long	.LASF207
	.byte	0x10
	.byte	0x27
	.long	0x96
	.byte	0x4
	.uleb128 0xa
	.long	.LASF208
	.byte	0x10
	.byte	0x28
	.long	0x2e0
	.byte	0x8
	.uleb128 0x12
	.string	"u"
	.byte	0x10
	.byte	0x2c
	.long	0x95d
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x952
	.uleb128 0x3
	.long	.LASF209
	.byte	0x10
	.byte	0x2d
	.long	0x97c
	.uleb128 0xb
	.long	.LASF210
	.byte	0x8
	.byte	0x11
	.byte	0x4e
	.long	0x9e9
	.uleb128 0xa
	.long	.LASF95
	.byte	0x11
	.byte	0x4f
	.long	0xa32
	.byte	0
	.uleb128 0xa
	.long	.LASF94
	.byte	0x11
	.byte	0x50
	.long	0xa32
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF211
	.byte	0x18
	.byte	0x11
	.byte	0x53
	.long	0xa32
	.uleb128 0x12
	.string	"dye"
	.byte	0x11
	.byte	0x55
	.long	0x24
	.byte	0
	.uleb128 0xa
	.long	.LASF212
	.byte	0x11
	.byte	0x56
	.long	0x24
	.byte	0x4
	.uleb128 0xa
	.long	.LASF95
	.byte	0x11
	.byte	0x58
	.long	0xa32
	.byte	0x8
	.uleb128 0xa
	.long	.LASF213
	.byte	0x11
	.byte	0x5b
	.long	0x24
	.byte	0xc
	.uleb128 0xa
	.long	.LASF214
	.byte	0x11
	.byte	0x5f
	.long	0xa38
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x9e9
	.uleb128 0x15
	.byte	0x8
	.byte	0x11
	.byte	0x5c
	.long	0xa57
	.uleb128 0x16
	.long	.LASF215
	.byte	0x11
	.byte	0x5d
	.long	0x9c4
	.uleb128 0x16
	.long	.LASF216
	.byte	0x11
	.byte	0x5e
	.long	0xa57
	.byte	0
	.uleb128 0x10
	.long	0x96
	.long	0xa67
	.uleb128 0x11
	.long	0xb7
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF217
	.byte	0x11
	.byte	0x60
	.long	0x9e9
	.uleb128 0xb
	.long	.LASF218
	.byte	0x8
	.byte	0x11
	.byte	0x62
	.long	0xa97
	.uleb128 0x12
	.string	"end"
	.byte	0x11
	.byte	0x63
	.long	0xa97
	.byte	0
	.uleb128 0xa
	.long	.LASF94
	.byte	0x11
	.byte	0x64
	.long	0xa9d
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0xa67
	.uleb128 0xc
	.byte	0x4
	.long	0xa72
	.uleb128 0x3
	.long	.LASF219
	.byte	0x11
	.byte	0x65
	.long	0xa72
	.uleb128 0x9
	.byte	0x94
	.byte	0x11
	.byte	0x68
	.long	0xb23
	.uleb128 0xa
	.long	.LASF220
	.byte	0x11
	.byte	0x6c
	.long	0x2d5
	.byte	0
	.uleb128 0xa
	.long	.LASF221
	.byte	0x11
	.byte	0x6e
	.long	0xb23
	.byte	0x4
	.uleb128 0xa
	.long	.LASF222
	.byte	0x11
	.byte	0x70
	.long	0xbe
	.byte	0x8
	.uleb128 0xa
	.long	.LASF223
	.byte	0x11
	.byte	0x73
	.long	0x24
	.byte	0xc
	.uleb128 0xa
	.long	.LASF224
	.byte	0x11
	.byte	0x74
	.long	0x24
	.byte	0x10
	.uleb128 0xa
	.long	.LASF225
	.byte	0x11
	.byte	0x75
	.long	0x24
	.byte	0x14
	.uleb128 0xa
	.long	.LASF226
	.byte	0x11
	.byte	0x77
	.long	0xb29
	.byte	0x18
	.uleb128 0xa
	.long	.LASF227
	.byte	0x11
	.byte	0x7a
	.long	0xa1
	.byte	0x54
	.uleb128 0xa
	.long	.LASF228
	.byte	0x11
	.byte	0x7d
	.long	0xb39
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0xaa3
	.uleb128 0x10
	.long	0x24
	.long	0xb39
	.uleb128 0x11
	.long	0xb7
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.long	0xa97
	.long	0xb49
	.uleb128 0x11
	.long	0xb7
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF229
	.byte	0x11
	.byte	0x7e
	.long	0xaae
	.uleb128 0x3
	.long	.LASF230
	.byte	0x12
	.byte	0xb
	.long	0x772
	.uleb128 0x9
	.byte	0x24
	.byte	0x12
	.byte	0xd
	.long	0xbbb
	.uleb128 0xa
	.long	.LASF231
	.byte	0x12
	.byte	0xe
	.long	0x32c
	.byte	0
	.uleb128 0xa
	.long	.LASF232
	.byte	0x12
	.byte	0xf
	.long	0xb54
	.byte	0x8
	.uleb128 0x12
	.string	"arg"
	.byte	0x12
	.byte	0x10
	.long	0xbe
	.byte	0xc
	.uleb128 0x12
	.string	"dly"
	.byte	0x12
	.byte	0x11
	.long	0x2f6
	.byte	0x10
	.uleb128 0xa
	.long	.LASF206
	.byte	0x12
	.byte	0x12
	.long	0x9b3
	.byte	0x18
	.uleb128 0x12
	.string	"wq"
	.byte	0x12
	.byte	0x13
	.long	0xbe
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF233
	.byte	0x12
	.byte	0x14
	.long	0x96
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF234
	.byte	0x12
	.byte	0x15
	.long	0xb5f
	.uleb128 0x9
	.byte	0xbc
	.byte	0x12
	.byte	0x17
	.long	0xc17
	.uleb128 0xa
	.long	.LASF235
	.byte	0x12
	.byte	0x18
	.long	0x32c
	.byte	0
	.uleb128 0xa
	.long	.LASF236
	.byte	0x12
	.byte	0x19
	.long	0x32c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF237
	.byte	0x12
	.byte	0x1a
	.long	0xc17
	.byte	0x10
	.uleb128 0xa
	.long	.LASF118
	.byte	0x12
	.byte	0x1b
	.long	0x416
	.byte	0x14
	.uleb128 0xa
	.long	.LASF238
	.byte	0x12
	.byte	0x1c
	.long	0x767
	.byte	0x18
	.uleb128 0x12
	.string	"sem"
	.byte	0x12
	.byte	0x1d
	.long	0x871
	.byte	0x94
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0xbbb
	.uleb128 0x3
	.long	.LASF239
	.byte	0x12
	.byte	0x1e
	.long	0xbc6
	.uleb128 0x18
	.long	.LASF240
	.byte	0x13
	.byte	0x7
	.long	0x2b5
	.uleb128 0x5
	.byte	0x3
	.long	g_sys_stat
	.uleb128 0x18
	.long	.LASF241
	.byte	0x13
	.byte	0x8
	.long	0xa57
	.uleb128 0x5
	.byte	0x3
	.long	g_idle_task_spawned
	.uleb128 0x18
	.long	.LASF242
	.byte	0x13
	.byte	0xa
	.long	0x4e9
	.uleb128 0x5
	.byte	0x3
	.long	g_ready_queue
	.uleb128 0x18
	.long	.LASF243
	.byte	0x13
	.byte	0xd
	.long	0xa57
	.uleb128 0x5
	.byte	0x3
	.long	g_sched_lock
	.uleb128 0x18
	.long	.LASF244
	.byte	0x13
	.byte	0xe
	.long	0xa57
	.uleb128 0x5
	.byte	0x3
	.long	g_intrpt_nested_level
	.uleb128 0x10
	.long	0x87c
	.long	0xc8d
	.uleb128 0x11
	.long	0xb7
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF245
	.byte	0x13
	.byte	0x11
	.long	0xc7d
	.uleb128 0x5
	.byte	0x3
	.long	g_preferred_ready_task
	.uleb128 0x18
	.long	.LASF246
	.byte	0x13
	.byte	0x14
	.long	0xc7d
	.uleb128 0x5
	.byte	0x3
	.long	g_active_task
	.uleb128 0x10
	.long	0x767
	.long	0xcbf
	.uleb128 0x11
	.long	0xb7
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF247
	.byte	0x13
	.byte	0x17
	.long	0xcaf
	.uleb128 0x5
	.byte	0x3
	.long	g_idle_task
	.uleb128 0x10
	.long	0x2eb
	.long	0xce0
	.uleb128 0x11
	.long	0xb7
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF248
	.byte	0x13
	.byte	0x18
	.long	0xcd0
	.uleb128 0x5
	.byte	0x3
	.long	g_idle_count
	.uleb128 0x10
	.long	0xdd
	.long	0xd07
	.uleb128 0x11
	.long	0xb7
	.byte	0
	.uleb128 0x11
	.long	0xb7
	.byte	0xc7
	.byte	0
	.uleb128 0x18
	.long	.LASF249
	.byte	0x13
	.byte	0x19
	.long	0xcf1
	.uleb128 0x5
	.byte	0x3
	.long	g_idle_task_stack
	.uleb128 0x18
	.long	.LASF250
	.byte	0x13
	.byte	0x1c
	.long	0x2f6
	.uleb128 0x5
	.byte	0x3
	.long	g_tick_count
	.uleb128 0x18
	.long	.LASF251
	.byte	0x13
	.byte	0x1d
	.long	0x32c
	.uleb128 0x5
	.byte	0x3
	.long	g_tick_head
	.uleb128 0x18
	.long	.LASF252
	.byte	0x13
	.byte	0x20
	.long	0x489
	.uleb128 0x5
	.byte	0x3
	.long	g_kobj_list
	.uleb128 0x18
	.long	.LASF253
	.byte	0x13
	.byte	0x24
	.long	0x32c
	.uleb128 0x5
	.byte	0x3
	.long	g_timer_head
	.uleb128 0x18
	.long	.LASF254
	.byte	0x13
	.byte	0x25
	.long	0x2e0
	.uleb128 0x5
	.byte	0x3
	.long	g_timer_count
	.uleb128 0x18
	.long	.LASF255
	.byte	0x13
	.byte	0x26
	.long	0x767
	.uleb128 0x5
	.byte	0x3
	.long	g_timer_task
	.uleb128 0x10
	.long	0xdd
	.long	0xd8f
	.uleb128 0x19
	.long	0xb7
	.value	0x12b
	.byte	0
	.uleb128 0x18
	.long	.LASF256
	.byte	0x13
	.byte	0x27
	.long	0xd7e
	.uleb128 0x5
	.byte	0x3
	.long	g_timer_task_stack
	.uleb128 0x18
	.long	.LASF257
	.byte	0x13
	.byte	0x28
	.long	0x866
	.uleb128 0x5
	.byte	0x3
	.long	g_timer_queue
	.uleb128 0x10
	.long	0x9b9
	.long	0xdc1
	.uleb128 0x11
	.long	0xb7
	.byte	0x13
	.byte	0
	.uleb128 0x18
	.long	.LASF258
	.byte	0x13
	.byte	0x29
	.long	0xdb1
	.uleb128 0x5
	.byte	0x3
	.long	timer_queue_cb
	.uleb128 0x18
	.long	.LASF259
	.byte	0x13
	.byte	0x49
	.long	0x871
	.uleb128 0x5
	.byte	0x3
	.long	g_res_sem
	.uleb128 0x18
	.long	.LASF260
	.byte	0x13
	.byte	0x4a
	.long	0x32c
	.uleb128 0x5
	.byte	0x3
	.long	g_res_list
	.uleb128 0x18
	.long	.LASF261
	.byte	0x13
	.byte	0x4b
	.long	0x767
	.uleb128 0x5
	.byte	0x3
	.long	g_dyn_task
	.uleb128 0x10
	.long	0xdd
	.long	0xe15
	.uleb128 0x11
	.long	0xb7
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.long	.LASF262
	.byte	0x13
	.byte	0x4c
	.long	0xe05
	.uleb128 0x5
	.byte	0x3
	.long	g_dyn_task_stack
	.uleb128 0x18
	.long	.LASF263
	.byte	0x13
	.byte	0x50
	.long	0x32c
	.uleb128 0x5
	.byte	0x3
	.long	g_workqueue_list_head
	.uleb128 0x18
	.long	.LASF264
	.byte	0x13
	.byte	0x51
	.long	0x882
	.uleb128 0x5
	.byte	0x3
	.long	g_workqueue_mutex
	.uleb128 0x18
	.long	.LASF265
	.byte	0x13
	.byte	0x52
	.long	0xc1d
	.uleb128 0x5
	.byte	0x3
	.long	g_workqueue_default
	.uleb128 0x10
	.long	0xdd
	.long	0xe6a
	.uleb128 0x19
	.long	0xb7
	.value	0x2ff
	.byte	0
	.uleb128 0x18
	.long	.LASF266
	.byte	0x13
	.byte	0x53
	.long	0xe59
	.uleb128 0x5
	.byte	0x3
	.long	g_workqueue_stack
	.uleb128 0x18
	.long	.LASF267
	.byte	0x13
	.byte	0x57
	.long	0xe8c
	.uleb128 0x5
	.byte	0x3
	.long	g_kmm_head
	.uleb128 0xc
	.byte	0x4
	.long	0xb49
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"RHINO_NULL_PTR"
.LASF70:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF215:
	.string	"free_ptr"
.LASF20:
	.string	"sem_count_t"
.LASF142:
	.string	"task_stat_t"
.LASF194:
	.string	"timer_cb_t"
.LASF23:
	.string	"suspend_nested_t"
.LASF188:
	.string	"peak_num"
.LASF234:
	.string	"kwork_t"
.LASF41:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF26:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF162:
	.string	"pend_flags"
.LASF152:
	.string	"tick_list"
.LASF92:
	.string	"tick_t"
.LASF220:
	.string	"mm_lock"
.LASF0:
	.string	"unsigned int"
.LASF221:
	.string	"regioninfo"
.LASF94:
	.string	"next"
.LASF24:
	.string	"cpu_cpsr_t"
.LASF183:
	.string	"blk_size"
.LASF264:
	.string	"g_workqueue_mutex"
.LASF58:
	.string	"RHINO_INV_TASK_STATE"
.LASF43:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF123:
	.string	"mutex_head"
.LASF80:
	.string	"RHINO_TRY_AGAIN"
.LASF49:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF59:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF79:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF109:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF73:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF217:
	.string	"k_mm_list_t"
.LASF169:
	.string	"mm_alloc_flag"
.LASF36:
	.string	"RHINO_KOBJ_BLK"
.LASF95:
	.string	"prev"
.LASF64:
	.string	"RHINO_BLK_INV_STATE"
.LASF227:
	.string	"free_bitmap"
.LASF48:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF101:
	.string	"BLK_ABORT"
.LASF225:
	.string	"free_size"
.LASF181:
	.string	"freesize"
.LASF229:
	.string	"k_mm_head"
.LASF52:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF214:
	.string	"mbinfo"
.LASF159:
	.string	"task_sem_obj"
.LASF55:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF223:
	.string	"used_size"
.LASF15:
	.string	"uint32_t"
.LASF213:
	.string	"buf_size"
.LASF150:
	.string	"mutex_list"
.LASF46:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF91:
	.string	"idle_count_t"
.LASF262:
	.string	"g_dyn_task_stack"
.LASF39:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF175:
	.string	"count"
.LASF114:
	.string	"kobj_type_t"
.LASF53:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF224:
	.string	"maxused_size"
.LASF99:
	.string	"blk_policy_t"
.LASF71:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF25:
	.string	"RHINO_SUCCESS"
.LASF179:
	.string	"head"
.LASF161:
	.string	"time_total"
.LASF200:
	.string	"init_count"
.LASF63:
	.string	"RHINO_BLK_DEL"
.LASF137:
	.string	"K_SUSPENDED"
.LASF261:
	.string	"g_dyn_task"
.LASF61:
	.string	"RHINO_BLK_ABORT"
.LASF270:
	.string	"/home/stone/Documents/pca"
.LASF212:
	.string	"owner"
.LASF247:
	.string	"g_idle_task"
.LASF259:
	.string	"g_res_sem"
.LASF255:
	.string	"g_timer_task"
.LASF195:
	.string	"timer_list"
.LASF190:
	.string	"buf_queue_item"
.LASF4:
	.string	"size_t"
.LASF85:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF149:
	.string	"suspend_count"
.LASF154:
	.string	"tick_remain"
.LASF164:
	.string	"pend_option"
.LASF37:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF230:
	.string	"work_handle_t"
.LASF205:
	.string	"round"
.LASF251:
	.string	"g_tick_head"
.LASF258:
	.string	"timer_queue_cb"
.LASF185:
	.string	"ringbuf"
.LASF233:
	.string	"work_exit"
.LASF83:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF133:
	.string	"runqueue_t"
.LASF12:
	.string	"__uint64_t"
.LASF29:
	.string	"RHINO_STOPPED"
.LASF157:
	.string	"task_state"
.LASF132:
	.string	"highest_pri"
.LASF65:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF236:
	.string	"work_list"
.LASF199:
	.string	"remain"
.LASF75:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF74:
	.string	"RHINO_SEM_OVF"
.LASF257:
	.string	"g_timer_queue"
.LASF186:
	.string	"max_msg_size"
.LASF86:
	.string	"RHINO_TASK_STACK_OVF"
.LASF113:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF124:
	.string	"mblkpool_head"
.LASF30:
	.string	"RHINO_INV_PARAM"
.LASF202:
	.string	"priv"
.LASF100:
	.string	"BLK_FINISH"
.LASF81:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF176:
	.string	"peak_count"
.LASF266:
	.string	"g_workqueue_stack"
.LASF68:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF204:
	.string	"ktimer_t"
.LASF28:
	.string	"RHINO_RUNNING"
.LASF211:
	.string	"k_mm_list_struct"
.LASF14:
	.string	"uint8_t"
.LASF143:
	.string	"task_stack"
.LASF240:
	.string	"g_sys_stat"
.LASF35:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF158:
	.string	"blk_state"
.LASF210:
	.string	"free_ptr_struct"
.LASF172:
	.string	"owner_nested"
.LASF184:
	.string	"k_ringbuf_t"
.LASF1:
	.string	"long long int"
.LASF241:
	.string	"g_idle_task_spawned"
.LASF62:
	.string	"RHINO_BLK_TIMEOUT"
.LASF144:
	.string	"task_name"
.LASF249:
	.string	"g_idle_task_stack"
.LASF168:
	.string	"b_prio"
.LASF128:
	.string	"buf_queue_head"
.LASF153:
	.string	"tick_match"
.LASF198:
	.string	"match"
.LASF103:
	.string	"BLK_DEL"
.LASF102:
	.string	"BLK_TIMEOUT"
.LASF189:
	.string	"min_free_buf_size"
.LASF197:
	.string	"timer_cb_arg"
.LASF239:
	.string	"kworkqueue_t"
.LASF57:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF136:
	.string	"K_PEND"
.LASF105:
	.string	"blk_state_t"
.LASF216:
	.string	"buffer"
.LASF84:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF235:
	.string	"workqueue_node"
.LASF44:
	.string	"RHINO_NO_MEM"
.LASF148:
	.string	"task_list"
.LASF76:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF116:
	.string	"blk_obj"
.LASF115:
	.string	"klist_s"
.LASF96:
	.string	"klist_t"
.LASF72:
	.string	"RHINO_QUEUE_FULL"
.LASF163:
	.string	"pend_info"
.LASF222:
	.string	"fix_pool"
.LASF117:
	.string	"blk_list"
.LASF67:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF246:
	.string	"g_active_task"
.LASF112:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF167:
	.string	"prio"
.LASF174:
	.string	"sem_s"
.LASF60:
	.string	"RHINO_NO_PEND_WAIT"
.LASF145:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF269:
	.string	"src/k_obj.c"
.LASF19:
	.string	"name_t"
.LASF151:
	.string	"task_stats_item"
.LASF40:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF171:
	.string	"mutex_task"
.LASF97:
	.string	"BLK_POLICY_PRI"
.LASF245:
	.string	"g_preferred_ready_task"
.LASF256:
	.string	"g_timer_task_stack"
.LASF228:
	.string	"freelist"
.LASF7:
	.string	"short int"
.LASF193:
	.string	"kmutex_t"
.LASF9:
	.string	"long int"
.LASF203:
	.string	"timer_state"
.LASF146:
	.string	"task_stack_base"
.LASF127:
	.string	"event_head"
.LASF134:
	.string	"K_SEED"
.LASF237:
	.string	"work_current"
.LASF177:
	.string	"sem_item"
.LASF135:
	.string	"K_RDY"
.LASF129:
	.string	"kobj_list_t"
.LASF178:
	.string	"ktask_t"
.LASF126:
	.string	"queue_head"
.LASF263:
	.string	"g_workqueue_list_head"
.LASF254:
	.string	"g_timer_count"
.LASF226:
	.string	"alloc_times"
.LASF209:
	.string	"k_timer_queue_cb"
.LASF89:
	.string	"kspinlock_t"
.LASF16:
	.string	"uint64_t"
.LASF140:
	.string	"K_SLEEP_SUSPENDED"
.LASF77:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF201:
	.string	"round_ticks"
.LASF248:
	.string	"g_idle_count"
.LASF108:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF218:
	.string	"k_mm_region_info_struct"
.LASF45:
	.string	"RHINO_RINGBUF_FULL"
.LASF118:
	.string	"name"
.LASF130:
	.string	"cur_list_item"
.LASF139:
	.string	"K_SLEEP"
.LASF78:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF93:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF51:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF121:
	.string	"blk_obj_t"
.LASF191:
	.string	"kbuf_queue_t"
.LASF66:
	.string	"RHINO_TIMER_STATE_INV"
.LASF160:
	.string	"time_slice"
.LASF196:
	.string	"to_head"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF98:
	.string	"BLK_POLICY_FIFO"
.LASF253:
	.string	"g_timer_head"
.LASF106:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF32:
	.string	"RHINO_INV_ALIGN"
.LASF42:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF50:
	.string	"RHINO_INV_SCHED_WAY"
.LASF56:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF155:
	.string	"tick_head"
.LASF170:
	.string	"mutex_s"
.LASF182:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF238:
	.string	"worker"
.LASF10:
	.string	"__uint32_t"
.LASF268:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF122:
	.string	"task_head"
.LASF120:
	.string	"obj_type"
.LASF87:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF34:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF180:
	.string	"tail"
.LASF131:
	.string	"task_bit_map"
.LASF208:
	.string	"first"
.LASF207:
	.string	"cb_num"
.LASF265:
	.string	"g_workqueue_default"
.LASF22:
	.string	"mutex_nested_t"
.LASF147:
	.string	"stack_size"
.LASF111:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF88:
	.string	"kstat_t"
.LASF250:
	.string	"g_tick_count"
.LASF242:
	.string	"g_ready_queue"
.LASF125:
	.string	"sem_head"
.LASF252:
	.string	"g_kobj_list"
.LASF138:
	.string	"K_PEND_SUSPENDED"
.LASF54:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF231:
	.string	"work_node"
.LASF3:
	.string	"signed char"
.LASF90:
	.string	"sys_time_t"
.LASF173:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF232:
	.string	"handle"
.LASF260:
	.string	"g_res_list"
.LASF47:
	.string	"RHINO_SCHED_DISABLE"
.LASF107:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF219:
	.string	"k_mm_region_info_t"
.LASF165:
	.string	"sched_policy"
.LASF119:
	.string	"blk_policy"
.LASF69:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF141:
	.string	"K_DELETED"
.LASF110:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF244:
	.string	"g_intrpt_nested_level"
.LASF166:
	.string	"cpu_num"
.LASF206:
	.string	"timer"
.LASF243:
	.string	"g_sched_lock"
.LASF267:
	.string	"g_kmm_head"
.LASF82:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF156:
	.string	"bq_msg_size"
.LASF33:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF104:
	.string	"BLK_INVALID"
.LASF187:
	.string	"cur_num"
.LASF192:
	.string	"ksem_t"
.LASF27:
	.string	"RHINO_SYS_SP_ERR"
.LASF38:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"k_err.c"
	.text
.Ltext0:
	.section	.text.unlikely.k_err_proc,"ax",@progbits
.LCOLDB0:
	.section	.text.k_err_proc,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.k_err_proc
.Ltext_cold0:
	.section	.text.k_err_proc
	.globl	k_err_proc
	.type	k_err_proc, @function
k_err_proc:
.LFB12:
	.file 1 "kernel/rhino/core/k_err.c"
	.loc 1 8 0
	.cfi_startproc
.LVL0:
	.loc 1 9 0
	movl	g_err_proc, %eax
	.loc 1 8 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 9 0
	testl	%eax, %eax
	je	.L1
	.loc 1 12 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 10 0
	jmp	*%eax
.LVL1:
.L1:
	.cfi_restore_state
	.loc 1 12 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	k_err_proc, .-k_err_proc
	.section	.text.unlikely.k_err_proc
.LCOLDE0:
	.section	.text.k_err_proc
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.k_err_proc
.Letext_cold0:
	.file 2 "./kernel/rhino/core/include/k_err.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x28d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0xc
	.long	.LASF78
	.long	.LASF79
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.long	0x2c
	.byte	0x2
	.byte	0x8
	.long	0x22c
	.uleb128 0x5
	.long	.LASF12
	.byte	0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.uleb128 0x5
	.long	.LASF16
	.byte	0x4
	.uleb128 0x5
	.long	.LASF17
	.byte	0x5
	.uleb128 0x5
	.long	.LASF18
	.byte	0x6
	.uleb128 0x5
	.long	.LASF19
	.byte	0x7
	.uleb128 0x5
	.long	.LASF20
	.byte	0x8
	.uleb128 0x5
	.long	.LASF21
	.byte	0x9
	.uleb128 0x5
	.long	.LASF22
	.byte	0xa
	.uleb128 0x5
	.long	.LASF23
	.byte	0xb
	.uleb128 0x5
	.long	.LASF24
	.byte	0xc
	.uleb128 0x5
	.long	.LASF25
	.byte	0xd
	.uleb128 0x5
	.long	.LASF26
	.byte	0x64
	.uleb128 0x5
	.long	.LASF27
	.byte	0x65
	.uleb128 0x5
	.long	.LASF28
	.byte	0x66
	.uleb128 0x5
	.long	.LASF29
	.byte	0x67
	.uleb128 0x5
	.long	.LASF30
	.byte	0x68
	.uleb128 0x5
	.long	.LASF31
	.byte	0x69
	.uleb128 0x5
	.long	.LASF32
	.byte	0x6a
	.uleb128 0x5
	.long	.LASF33
	.byte	0x6b
	.uleb128 0x5
	.long	.LASF34
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF35
	.byte	0xc9
	.uleb128 0x5
	.long	.LASF36
	.byte	0xca
	.uleb128 0x5
	.long	.LASF37
	.byte	0xcb
	.uleb128 0x6
	.long	.LASF38
	.value	0x12c
	.uleb128 0x6
	.long	.LASF39
	.value	0x12d
	.uleb128 0x6
	.long	.LASF40
	.value	0x12e
	.uleb128 0x6
	.long	.LASF41
	.value	0x12f
	.uleb128 0x6
	.long	.LASF42
	.value	0x130
	.uleb128 0x6
	.long	.LASF43
	.value	0x131
	.uleb128 0x6
	.long	.LASF44
	.value	0x132
	.uleb128 0x6
	.long	.LASF45
	.value	0x133
	.uleb128 0x6
	.long	.LASF46
	.value	0x134
	.uleb128 0x6
	.long	.LASF47
	.value	0x190
	.uleb128 0x6
	.long	.LASF48
	.value	0x191
	.uleb128 0x6
	.long	.LASF49
	.value	0x192
	.uleb128 0x6
	.long	.LASF50
	.value	0x193
	.uleb128 0x6
	.long	.LASF51
	.value	0x194
	.uleb128 0x6
	.long	.LASF52
	.value	0x195
	.uleb128 0x6
	.long	.LASF53
	.value	0x1f4
	.uleb128 0x6
	.long	.LASF54
	.value	0x258
	.uleb128 0x6
	.long	.LASF55
	.value	0x2bc
	.uleb128 0x6
	.long	.LASF56
	.value	0x2bd
	.uleb128 0x6
	.long	.LASF57
	.value	0x2be
	.uleb128 0x6
	.long	.LASF58
	.value	0x2bf
	.uleb128 0x6
	.long	.LASF59
	.value	0x2c0
	.uleb128 0x6
	.long	.LASF60
	.value	0x2c1
	.uleb128 0x6
	.long	.LASF61
	.value	0x320
	.uleb128 0x6
	.long	.LASF62
	.value	0x321
	.uleb128 0x6
	.long	.LASF63
	.value	0x384
	.uleb128 0x6
	.long	.LASF64
	.value	0x385
	.uleb128 0x6
	.long	.LASF65
	.value	0x386
	.uleb128 0x6
	.long	.LASF66
	.value	0x3e8
	.uleb128 0x6
	.long	.LASF67
	.value	0x3e9
	.uleb128 0x6
	.long	.LASF68
	.value	0x44c
	.uleb128 0x6
	.long	.LASF69
	.value	0x44d
	.uleb128 0x6
	.long	.LASF70
	.value	0x44e
	.uleb128 0x6
	.long	.LASF71
	.value	0x44f
	.uleb128 0x6
	.long	.LASF72
	.value	0x450
	.uleb128 0x6
	.long	.LASF73
	.value	0x4b0
	.uleb128 0x6
	.long	.LASF74
	.value	0x4b1
	.byte	0
	.uleb128 0x7
	.long	.LASF75
	.byte	0x2
	.byte	0x54
	.long	0x80
	.uleb128 0x7
	.long	.LASF76
	.byte	0x2
	.byte	0x56
	.long	0x242
	.uleb128 0x8
	.byte	0x4
	.long	0x248
	.uleb128 0x9
	.long	0x253
	.uleb128 0xa
	.long	0x22c
	.byte	0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x1
	.byte	0x7
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x285
	.uleb128 0xc
	.string	"err"
	.byte	0x1
	.byte	0x7
	.long	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LVL1
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0x2
	.byte	0x58
	.long	0x237
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB12
	.long	.LFE12
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF37:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF76:
	.string	"krhino_err_proc_t"
.LASF78:
	.string	"src/k_err.c"
.LASF41:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF29:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF52:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF80:
	.string	"k_err_proc"
.LASF43:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF15:
	.string	"RHINO_RUNNING"
.LASF68:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF63:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF5:
	.string	"short int"
.LASF10:
	.string	"sizetype"
.LASF13:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF49:
	.string	"RHINO_BLK_TIMEOUT"
.LASF18:
	.string	"RHINO_NULL_PTR"
.LASF62:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF27:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF28:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF34:
	.string	"RHINO_SCHED_DISABLE"
.LASF73:
	.string	"RHINO_TASK_STACK_OVF"
.LASF65:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF33:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF39:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF2:
	.string	"long double"
.LASF1:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF40:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF21:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"RHINO_INV_PARAM"
.LASF24:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF60:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF51:
	.string	"RHINO_BLK_INV_STATE"
.LASF64:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF20:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF81:
	.string	"g_err_proc"
.LASF4:
	.string	"unsigned char"
.LASF75:
	.string	"kstat_t"
.LASF3:
	.string	"signed char"
.LASF66:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF61:
	.string	"RHINO_SEM_OVF"
.LASF30:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"RHINO_NO_MEM"
.LASF25:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
.LASF36:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF12:
	.string	"RHINO_SUCCESS"
.LASF16:
	.string	"RHINO_STOPPED"
.LASF58:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF6:
	.string	"short unsigned int"
.LASF72:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF44:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF11:
	.string	"char"
.LASF19:
	.string	"RHINO_INV_ALIGN"
.LASF57:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF22:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF23:
	.string	"RHINO_KOBJ_BLK"
.LASF67:
	.string	"RHINO_TRY_AGAIN"
.LASF32:
	.string	"RHINO_RINGBUF_FULL"
.LASF74:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF59:
	.string	"RHINO_QUEUE_FULL"
.LASF71:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF8:
	.string	"long unsigned int"
.LASF46:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF38:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF26:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF70:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF56:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF50:
	.string	"RHINO_BLK_DEL"
.LASF77:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF45:
	.string	"RHINO_INV_TASK_STATE"
.LASF35:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF42:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF48:
	.string	"RHINO_BLK_ABORT"
.LASF79:
	.string	"/home/stone/Documents/pca"
.LASF54:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF53:
	.string	"RHINO_TIMER_STATE_INV"
.LASF47:
	.string	"RHINO_NO_PEND_WAIT"
.LASF14:
	.string	"RHINO_SYS_SP_ERR"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

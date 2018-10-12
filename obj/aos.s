	.file	"aos.c"
	.text
.Ltext0:
	.section	.text.unlikely.SysTick_Handler,"ax",@progbits
.LCOLDB0:
	.section	.text.SysTick_Handler,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.SysTick_Handler
.Ltext_cold0:
	.section	.text.SysTick_Handler
	.globl	SysTick_Handler
	.type	SysTick_Handler, @function
SysTick_Handler:
.LFB248:
	.file 1 "src/aos.c"
	.loc 1 6095 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6096 0
	call	krhino_intrpt_enter
.LVL0:
	.loc 1 6097 0
	call	krhino_tick_proc
.LVL1:
	.loc 1 6099 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6098 0
	jmp	krhino_intrpt_exit
.LVL2:
	.cfi_endproc
.LFE248:
	.size	SysTick_Handler, .-SysTick_Handler
	.section	.text.unlikely.SysTick_Handler
.LCOLDE0:
	.section	.text.SysTick_Handler
.LHOTE0:
	.section	.text.unlikely.soc_init,"ax",@progbits
.LCOLDB1:
	.section	.text.soc_init,"ax",@progbits
.LHOTB1:
	.globl	soc_init
	.type	soc_init, @function
soc_init:
.LFB249:
	.loc 1 6101 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 6103 0
	pushl	$0
	call	hal_uart_init
.LVL3:
	.loc 1 6106 0
	call	nrf_drv_clock_init
.LVL4:
.LBB2:
	.loc 1 6107 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L4
	.loc 1 6107 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	app_error_handler_bare
.LVL5:
	addl	$16, %esp
.L4:
.LBE2:
	.loc 1 6108 0 is_stmt 1
	subl	$12, %esp
	pushl	$0
	call	nrf_drv_clock_lfclk_request
.LVL6:
	.loc 1 6111 0
	call	bsp_board_leds_init
.LVL7:
	.loc 1 6112 0
	addl	$16, %esp
	.loc 1 6113 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6112 0
	jmp	nrf_drv_systick_init
.LVL8:
	.cfi_endproc
.LFE249:
	.size	soc_init, .-soc_init
	.section	.text.unlikely.soc_init
.LCOLDE1:
	.section	.text.soc_init
.LHOTE1:
	.section	.text.unlikely.sys_init,"ax",@progbits
.LCOLDB2:
	.section	.text.sys_init,"ax",@progbits
.LHOTB2:
	.type	sys_init, @function
sys_init:
.LFB250:
	.loc 1 6115 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6117 0
	call	soc_init
.LVL10:
	.loc 1 6118 0
	call	vfs_init
.LVL11:
	.loc 1 6119 0
	call	vfs_device_init
.LVL12:
	.loc 1 6120 0
	call	aos_cli_init
.LVL13:
	.loc 1 6121 0
	call	aos_loop_init
.LVL14:
	.loc 1 6122 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	$0
	call	application_start
.LVL15:
	.loc 1 6125 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE250:
	.size	sys_init, .-sys_init
	.section	.text.unlikely.sys_init
.LCOLDE2:
	.section	.text.sys_init
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"aos-init"
	.section	.text.unlikely.main,"ax",@progbits
.LCOLDB4:
	.section	.text.startup.main,"ax",@progbits
.LHOTB4:
	.globl	main
	.type	main, @function
main:
.LFB251:
	.loc 1 6128 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%eax
	.loc 1 6129 0
	movl	$__isr_vector, -536810232
	.loc 1 6130 0
	call	aos_init
.LVL16:
	.loc 1 6131 0
	subl	$12, %esp
	pushl	$1
	pushl	$sys_init
	pushl	$2000
	pushl	$0
	pushl	$0
	pushl	$32
	pushl	$0
	pushl	$.LC3
	pushl	$g_aos_app
	call	krhino_task_dyn_create
.LVL17:
	.loc 1 6132 0
	addl	$48, %esp
	call	aos_start
.LVL18:
	.loc 1 6134 0
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE251:
	.size	main, .-main
	.section	.text.unlikely.main
.LCOLDE4:
	.section	.text.startup.main
.LHOTE4:
	.globl	g_aos_app
	.section	.bss.g_aos_app,"aw",@nobits
	.align 4
	.type	g_aos_app, @object
	.size	g_aos_app, 4
g_aos_app:
	.zero	4
	.globl	g_aos_init
	.section	.bss.g_aos_init,"aw",@nobits
	.align 4
	.type	g_aos_init, @object
	.size	g_aos_init, 4
g_aos_init:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.SysTick_Handler
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x997
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF148
	.byte	0xc
	.long	.LASF149
	.long	.LASF150
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x2
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x8
	.long	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x17
	.long	0x4c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x1a
	.long	0x77
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x30
	.long	0x90
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x6
	.byte	0x4
	.long	0xeb
	.uleb128 0x7
	.long	0xf6
	.uleb128 0x8
	.long	0xdc
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF21
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.value	0x370
	.long	0xde
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.value	0x371
	.long	0xad
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.value	0x372
	.long	0xad
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.value	0x375
	.long	0xad
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.value	0x376
	.long	0x97
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.value	0x3c2
	.long	0xb8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x8
	.byte	0x1
	.value	0x428
	.long	0x16d
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.value	0x429
	.long	0x16d
	.byte	0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.value	0x42a
	.long	0x16d
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x145
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.value	0x42b
	.long	0x145
	.uleb128 0xc
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x44e
	.long	0x199
	.uleb128 0xd
	.long	.LASF31
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.value	0x451
	.long	0x17f
	.uleb128 0xc
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x452
	.long	0x1d1
	.uleb128 0xd
	.long	.LASF34
	.byte	0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.uleb128 0xd
	.long	.LASF36
	.byte	0x2
	.uleb128 0xd
	.long	.LASF37
	.byte	0x3
	.uleb128 0xd
	.long	.LASF38
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x1
	.value	0x458
	.long	0x1a5
	.uleb128 0xc
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x459
	.long	0x21b
	.uleb128 0xd
	.long	.LASF40
	.byte	0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.uleb128 0xd
	.long	.LASF42
	.byte	0x2
	.uleb128 0xd
	.long	.LASF43
	.byte	0x3
	.uleb128 0xd
	.long	.LASF44
	.byte	0x4
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.uleb128 0xd
	.long	.LASF46
	.byte	0x6
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.value	0x462
	.long	0x1dd
	.uleb128 0xa
	.long	.LASF50
	.byte	0x14
	.byte	0x1
	.value	0x463
	.long	0x269
	.uleb128 0xb
	.long	.LASF51
	.byte	0x1
	.value	0x464
	.long	0x173
	.byte	0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x1
	.value	0x465
	.long	0x269
	.byte	0x8
	.uleb128 0xb
	.long	.LASF53
	.byte	0x1
	.value	0x466
	.long	0x199
	.byte	0xc
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.value	0x467
	.long	0x21b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x26f
	.uleb128 0xe
	.long	0xfd
	.uleb128 0x9
	.long	.LASF55
	.byte	0x1
	.value	0x468
	.long	0x227
	.uleb128 0x6
	.byte	0x4
	.long	0x173
	.uleb128 0xc
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x479
	.long	0x2c4
	.uleb128 0xd
	.long	.LASF56
	.byte	0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.uleb128 0xd
	.long	.LASF58
	.byte	0x2
	.uleb128 0xd
	.long	.LASF59
	.byte	0x3
	.uleb128 0xd
	.long	.LASF60
	.byte	0x4
	.uleb128 0xd
	.long	.LASF61
	.byte	0x5
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.uleb128 0xd
	.long	.LASF63
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x1
	.value	0x482
	.long	0x286
	.uleb128 0xf
	.byte	0x7c
	.byte	0x1
	.value	0x483
	.long	0x453
	.uleb128 0xb
	.long	.LASF65
	.byte	0x1
	.value	0x484
	.long	0xdc
	.byte	0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x1
	.value	0x485
	.long	0x269
	.byte	0x4
	.uleb128 0xb
	.long	.LASF67
	.byte	0x1
	.value	0x486
	.long	0x453
	.byte	0x8
	.uleb128 0xb
	.long	.LASF68
	.byte	0x1
	.value	0x487
	.long	0x463
	.byte	0x10
	.uleb128 0xb
	.long	.LASF69
	.byte	0x1
	.value	0x488
	.long	0xad
	.byte	0x14
	.uleb128 0xb
	.long	.LASF70
	.byte	0x1
	.value	0x489
	.long	0x173
	.byte	0x18
	.uleb128 0xb
	.long	.LASF71
	.byte	0x1
	.value	0x48a
	.long	0x12d
	.byte	0x20
	.uleb128 0xb
	.long	.LASF72
	.byte	0x1
	.value	0x48b
	.long	0x4c5
	.byte	0x24
	.uleb128 0xb
	.long	.LASF73
	.byte	0x1
	.value	0x48c
	.long	0x173
	.byte	0x28
	.uleb128 0xb
	.long	.LASF74
	.byte	0x1
	.value	0x48d
	.long	0x173
	.byte	0x30
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.value	0x48e
	.long	0x139
	.byte	0x38
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.value	0x48f
	.long	0x139
	.byte	0x40
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.value	0x490
	.long	0x280
	.byte	0x48
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.value	0x491
	.long	0xdc
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.value	0x492
	.long	0xc3
	.byte	0x50
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.value	0x493
	.long	0x2c4
	.byte	0x54
	.uleb128 0xb
	.long	.LASF80
	.byte	0x1
	.value	0x494
	.long	0x1d1
	.byte	0x58
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.value	0x495
	.long	0x4cb
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF81
	.byte	0x1
	.value	0x496
	.long	0x520
	.byte	0x60
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.value	0x497
	.long	0xad
	.byte	0x64
	.uleb128 0xb
	.long	.LASF83
	.byte	0x1
	.value	0x498
	.long	0xad
	.byte	0x68
	.uleb128 0xb
	.long	.LASF84
	.byte	0x1
	.value	0x499
	.long	0xad
	.byte	0x6c
	.uleb128 0xb
	.long	.LASF85
	.byte	0x1
	.value	0x49a
	.long	0xdc
	.byte	0x70
	.uleb128 0xb
	.long	.LASF86
	.byte	0x1
	.value	0x49b
	.long	0x97
	.byte	0x74
	.uleb128 0xb
	.long	.LASF87
	.byte	0x1
	.value	0x49c
	.long	0x97
	.byte	0x75
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.value	0x49d
	.long	0x97
	.byte	0x76
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1
	.value	0x49e
	.long	0x97
	.byte	0x77
	.uleb128 0xb
	.long	.LASF90
	.byte	0x1
	.value	0x49f
	.long	0x97
	.byte	0x78
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.value	0x4a0
	.long	0x97
	.byte	0x79
	.byte	0
	.uleb128 0x11
	.long	0xdc
	.long	0x463
	.uleb128 0x12
	.long	0xd5
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x115
	.uleb128 0xa
	.long	.LASF92
	.byte	0x2c
	.byte	0x1
	.value	0x51a
	.long	0x4c5
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.value	0x51b
	.long	0x274
	.byte	0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x1
	.value	0x51c
	.long	0x53e
	.byte	0x14
	.uleb128 0xb
	.long	.LASF72
	.byte	0x1
	.value	0x51d
	.long	0x4c5
	.byte	0x18
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1
	.value	0x51e
	.long	0x121
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1
	.value	0x51f
	.long	0x173
	.byte	0x20
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.value	0x520
	.long	0x97
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x469
	.uleb128 0x6
	.byte	0x4
	.long	0x274
	.uleb128 0xa
	.long	.LASF96
	.byte	0x28
	.byte	0x1
	.value	0x502
	.long	0x520
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.value	0x503
	.long	0x274
	.byte	0
	.uleb128 0xb
	.long	.LASF97
	.byte	0x1
	.value	0x504
	.long	0x109
	.byte	0x14
	.uleb128 0xb
	.long	.LASF98
	.byte	0x1
	.value	0x505
	.long	0x109
	.byte	0x18
	.uleb128 0xb
	.long	.LASF99
	.byte	0x1
	.value	0x506
	.long	0x173
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.value	0x507
	.long	0x97
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4d1
	.uleb128 0x9
	.long	.LASF100
	.byte	0x1
	.value	0x4a1
	.long	0x2d0
	.uleb128 0x9
	.long	.LASF101
	.byte	0x1
	.value	0x4a2
	.long	0xe5
	.uleb128 0x6
	.byte	0x4
	.long	0x526
	.uleb128 0x13
	.long	0xad
	.uleb128 0x9
	.long	.LASF102
	.byte	0x1
	.value	0x8bc
	.long	0xad
	.uleb128 0x13
	.long	0x97
	.uleb128 0xf
	.byte	0x8c
	.byte	0x1
	.value	0xb8e
	.long	0x675
	.uleb128 0xb
	.long	.LASF103
	.byte	0x1
	.value	0xb90
	.long	0x675
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x1
	.value	0xb91
	.long	0x544
	.byte	0x4
	.uleb128 0xb
	.long	.LASF105
	.byte	0x1
	.value	0xb92
	.long	0x544
	.byte	0x8
	.uleb128 0xb
	.long	.LASF106
	.byte	0x1
	.value	0xb93
	.long	0x544
	.byte	0xc
	.uleb128 0x10
	.string	"SCR"
	.byte	0x1
	.value	0xb94
	.long	0x544
	.byte	0x10
	.uleb128 0x10
	.string	"CCR"
	.byte	0x1
	.value	0xb95
	.long	0x544
	.byte	0x14
	.uleb128 0x10
	.string	"SHP"
	.byte	0x1
	.value	0xb96
	.long	0x68a
	.byte	0x18
	.uleb128 0xb
	.long	.LASF107
	.byte	0x1
	.value	0xb97
	.long	0x544
	.byte	0x24
	.uleb128 0xb
	.long	.LASF108
	.byte	0x1
	.value	0xb98
	.long	0x544
	.byte	0x28
	.uleb128 0xb
	.long	.LASF109
	.byte	0x1
	.value	0xb99
	.long	0x544
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF110
	.byte	0x1
	.value	0xb9a
	.long	0x544
	.byte	0x30
	.uleb128 0xb
	.long	.LASF111
	.byte	0x1
	.value	0xb9b
	.long	0x544
	.byte	0x34
	.uleb128 0xb
	.long	.LASF112
	.byte	0x1
	.value	0xb9c
	.long	0x544
	.byte	0x38
	.uleb128 0xb
	.long	.LASF113
	.byte	0x1
	.value	0xb9d
	.long	0x544
	.byte	0x3c
	.uleb128 0x10
	.string	"PFR"
	.byte	0x1
	.value	0xb9e
	.long	0x6a4
	.byte	0x40
	.uleb128 0x10
	.string	"DFR"
	.byte	0x1
	.value	0xb9f
	.long	0x675
	.byte	0x48
	.uleb128 0x10
	.string	"ADR"
	.byte	0x1
	.value	0xba0
	.long	0x675
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF114
	.byte	0x1
	.value	0xba1
	.long	0x6be
	.byte	0x50
	.uleb128 0xb
	.long	.LASF115
	.byte	0x1
	.value	0xba2
	.long	0x6d8
	.byte	0x60
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1
	.value	0xba3
	.long	0x6dd
	.byte	0x74
	.uleb128 0xb
	.long	.LASF117
	.byte	0x1
	.value	0xba4
	.long	0x544
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.long	0x544
	.uleb128 0x11
	.long	0x555
	.long	0x68a
	.uleb128 0x12
	.long	0xd5
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.long	0x67a
	.uleb128 0x11
	.long	0x675
	.long	0x69f
	.uleb128 0x12
	.long	0xd5
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x68f
	.uleb128 0xe
	.long	0x69f
	.uleb128 0x11
	.long	0x675
	.long	0x6b9
	.uleb128 0x12
	.long	0xd5
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	0x6a9
	.uleb128 0xe
	.long	0x6b9
	.uleb128 0x11
	.long	0x675
	.long	0x6d3
	.uleb128 0x12
	.long	0xd5
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	0x6c3
	.uleb128 0xe
	.long	0x6d3
	.uleb128 0x11
	.long	0xad
	.long	0x6ed
	.uleb128 0x12
	.long	0xd5
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF118
	.byte	0x1
	.value	0xba5
	.long	0x55a
	.uleb128 0x13
	.long	0xa2
	.uleb128 0x14
	.long	.LASF119
	.byte	0x1
	.value	0x17ce
	.long	.LFB248
	.long	.LFE248-.LFB248
	.uleb128 0x1
	.byte	0x9c
	.long	0x730
	.uleb128 0x15
	.long	.LVL0
	.long	0x8ce
	.uleb128 0x15
	.long	.LVL1
	.long	0x8da
	.uleb128 0x16
	.long	.LVL2
	.long	0x8e6
	.byte	0
	.uleb128 0x14
	.long	.LASF120
	.byte	0x1
	.value	0x17d4
	.long	.LFB249
	.long	.LFE249-.LFB249
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ab
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.value	0x17d6
	.long	0x549
	.long	.LLST0
	.uleb128 0x18
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x77d
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.value	0x17db
	.long	0x7ab
	.long	.LLST0
	.uleb128 0x15
	.long	.LVL5
	.long	0x8f2
	.byte	0
	.uleb128 0x15
	.long	.LVL3
	.long	0x8fe
	.uleb128 0x15
	.long	.LVL4
	.long	0x90a
	.uleb128 0x15
	.long	.LVL6
	.long	0x916
	.uleb128 0x15
	.long	.LVL7
	.long	0x922
	.uleb128 0x16
	.long	.LVL8
	.long	0x92e
	.byte	0
	.uleb128 0xe
	.long	0xad
	.uleb128 0x19
	.long	.LASF151
	.byte	0x1
	.value	0x17e2
	.long	.LFB250
	.long	.LFE250-.LFB250
	.uleb128 0x1
	.byte	0x9c
	.long	0x82c
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.value	0x17e4
	.long	0x89
	.byte	0
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x1
	.value	0x17e6
	.long	0x89
	.long	0x7e3
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x1
	.value	0x17e7
	.long	0x89
	.long	0x7f5
	.uleb128 0x1c
	.byte	0
	.uleb128 0x15
	.long	.LVL10
	.long	0x730
	.uleb128 0x15
	.long	.LVL11
	.long	0x93a
	.uleb128 0x15
	.long	.LVL12
	.long	0x946
	.uleb128 0x15
	.long	.LVL13
	.long	0x952
	.uleb128 0x15
	.long	.LVL14
	.long	0x95e
	.uleb128 0x15
	.long	.LVL15
	.long	0x96a
	.byte	0
	.uleb128 0x1d
	.long	.LASF152
	.byte	0x1
	.value	0x17ef
	.long	0x89
	.long	.LFB251
	.long	.LFE251-.LFB251
	.uleb128 0x1
	.byte	0x9c
	.long	0x862
	.uleb128 0x15
	.long	.LVL16
	.long	0x976
	.uleb128 0x15
	.long	.LVL17
	.long	0x982
	.uleb128 0x15
	.long	.LVL18
	.long	0x98e
	.byte	0
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x2f0
	.long	0x90
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0xc96
	.long	0x6f9
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0xcb9
	.long	0xad
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x1350
	.long	0xad
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x1351
	.long	0xad
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x1
	.value	0x17c6
	.long	0x53e
	.uleb128 0x5
	.byte	0x3
	.long	g_aos_init
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x17c7
	.long	0x53e
	.uleb128 0x5
	.byte	0x3
	.long	g_aos_app
	.uleb128 0x1e
	.long	.LASF132
	.byte	0x1
	.value	0x17ee
	.long	0xdc
	.uleb128 0x20
	.long	.LASF133
	.long	.LASF133
	.byte	0x1
	.value	0x3c6
	.uleb128 0x20
	.long	.LASF134
	.long	.LASF134
	.byte	0x1
	.value	0x55b
	.uleb128 0x20
	.long	.LASF135
	.long	.LASF135
	.byte	0x1
	.value	0x3c7
	.uleb128 0x20
	.long	.LASF136
	.long	.LASF136
	.byte	0x1
	.value	0x126a
	.uleb128 0x20
	.long	.LASF137
	.long	.LASF137
	.byte	0x1
	.value	0x17cc
	.uleb128 0x20
	.long	.LASF138
	.long	.LASF138
	.byte	0x1
	.value	0x143a
	.uleb128 0x20
	.long	.LASF139
	.long	.LASF139
	.byte	0x1
	.value	0x143c
	.uleb128 0x20
	.long	.LASF140
	.long	.LASF140
	.byte	0x1
	.value	0x1786
	.uleb128 0x20
	.long	.LASF141
	.long	.LASF141
	.byte	0x1
	.value	0x17bf
	.uleb128 0x20
	.long	.LASF123
	.long	.LASF123
	.byte	0x1
	.value	0x17e6
	.uleb128 0x20
	.long	.LASF124
	.long	.LASF124
	.byte	0x1
	.value	0x17e7
	.uleb128 0x20
	.long	.LASF142
	.long	.LASF142
	.byte	0x1
	.value	0x21c
	.uleb128 0x20
	.long	.LASF143
	.long	.LASF143
	.byte	0x1
	.value	0x328
	.uleb128 0x20
	.long	.LASF144
	.long	.LASF144
	.byte	0x1
	.value	0x17ca
	.uleb128 0x20
	.long	.LASF145
	.long	.LASF145
	.byte	0x1
	.value	0x27b
	.uleb128 0x20
	.long	.LASF146
	.long	.LASF146
	.byte	0x1
	.value	0x4a6
	.uleb128 0x20
	.long	.LASF147
	.long	.LASF147
	.byte	0x1
	.value	0x27c
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
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
	.long	.LFB248
	.long	.LFE248-.LFB248
	.long	.LFB249
	.long	.LFE249-.LFB249
	.long	.LFB250
	.long	.LFE250-.LFB250
	.long	.LFB251
	.long	.LFE251-.LFB251
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB248
	.long	.LFE248
	.long	.LFB249
	.long	.LFE249
	.long	.LFB250
	.long	.LFE250
	.long	.LFB251
	.long	.LFE251
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"prev"
.LASF97:
	.string	"count"
.LASF58:
	.string	"K_PEND"
.LASF59:
	.string	"K_SUSPENDED"
.LASF90:
	.string	"b_prio"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"uint64_t"
.LASF149:
	.string	"src/aos.c"
.LASF4:
	.string	"__uint8_t"
.LASF43:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF80:
	.string	"blk_state"
.LASF6:
	.string	"long int"
.LASF88:
	.string	"cpu_num"
.LASF130:
	.string	"g_aos_init"
.LASF133:
	.string	"krhino_intrpt_enter"
.LASF11:
	.string	"long long unsigned int"
.LASF126:
	.string	"ITM_RxBuffer"
.LASF151:
	.string	"sys_init"
.LASF37:
	.string	"BLK_DEL"
.LASF28:
	.string	"next"
.LASF123:
	.string	"vfs_init"
.LASF150:
	.string	"/home/stone/Documents/pca"
.LASF115:
	.string	"ISAR"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF142:
	.string	"aos_cli_init"
.LASF41:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF55:
	.string	"blk_obj_t"
.LASF85:
	.string	"pend_info"
.LASF147:
	.string	"aos_start"
.LASF47:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF120:
	.string	"soc_init"
.LASF22:
	.string	"name_t"
.LASF53:
	.string	"blk_policy"
.LASF31:
	.string	"BLK_POLICY_PRI"
.LASF138:
	.string	"nrf_drv_clock_init"
.LASF141:
	.string	"nrf_drv_systick_init"
.LASF152:
	.string	"main"
.LASF131:
	.string	"g_aos_app"
.LASF112:
	.string	"BFAR"
.LASF81:
	.string	"task_sem_obj"
.LASF71:
	.string	"suspend_count"
.LASF113:
	.string	"AFSR"
.LASF7:
	.string	"__uint32_t"
.LASF67:
	.string	"user_info"
.LASF118:
	.string	"SCB_Type"
.LASF148:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF92:
	.string	"mutex_s"
.LASF94:
	.string	"owner_nested"
.LASF125:
	.string	"aos_log_level"
.LASF48:
	.string	"kobj_type_t"
.LASF84:
	.string	"pend_flags"
.LASF70:
	.string	"task_list"
.LASF127:
	.string	"SystemCoreClock"
.LASF42:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF50:
	.string	"blk_obj"
.LASF34:
	.string	"BLK_FINISH"
.LASF137:
	.string	"hal_uart_init"
.LASF8:
	.string	"long unsigned int"
.LASF52:
	.string	"name"
.LASF105:
	.string	"VTOR"
.LASF129:
	.string	"__StackLimit"
.LASF95:
	.string	"mutex_item"
.LASF73:
	.string	"task_stats_item"
.LASF104:
	.string	"ICSR"
.LASF106:
	.string	"AIRCR"
.LASF110:
	.string	"DFSR"
.LASF64:
	.string	"task_stat_t"
.LASF111:
	.string	"MMFAR"
.LASF57:
	.string	"K_RDY"
.LASF77:
	.string	"tick_head"
.LASF134:
	.string	"krhino_tick_proc"
.LASF114:
	.string	"MMFR"
.LASF93:
	.string	"mutex_task"
.LASF62:
	.string	"K_SLEEP_SUSPENDED"
.LASF124:
	.string	"vfs_device_init"
.LASF35:
	.string	"BLK_ABORT"
.LASF68:
	.string	"task_stack_base"
.LASF102:
	.string	"ret_code_t"
.LASF45:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF19:
	.string	"sizetype"
.LASF145:
	.string	"aos_init"
.LASF121:
	.string	"err_code"
.LASF108:
	.string	"CFSR"
.LASF49:
	.string	"klist_s"
.LASF30:
	.string	"klist_t"
.LASF24:
	.string	"cpu_stack_t"
.LASF135:
	.string	"krhino_intrpt_exit"
.LASF132:
	.string	"__isr_vector"
.LASF99:
	.string	"sem_item"
.LASF89:
	.string	"prio"
.LASF54:
	.string	"obj_type"
.LASF23:
	.string	"sem_count_t"
.LASF65:
	.string	"task_stack"
.LASF10:
	.string	"__uint64_t"
.LASF103:
	.string	"CPUID"
.LASF40:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF27:
	.string	"tick_t"
.LASF139:
	.string	"nrf_drv_clock_lfclk_request"
.LASF116:
	.string	"RESERVED0"
.LASF36:
	.string	"BLK_TIMEOUT"
.LASF60:
	.string	"K_PEND_SUSPENDED"
.LASF25:
	.string	"mutex_nested_t"
.LASF76:
	.string	"tick_remain"
.LASF82:
	.string	"time_slice"
.LASF140:
	.string	"bsp_board_leds_init"
.LASF128:
	.string	"__StackTop"
.LASF21:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF98:
	.string	"peak_count"
.LASF107:
	.string	"SHCSR"
.LASF63:
	.string	"K_DELETED"
.LASF2:
	.string	"short int"
.LASF74:
	.string	"tick_list"
.LASF83:
	.string	"time_total"
.LASF32:
	.string	"BLK_POLICY_FIFO"
.LASF143:
	.string	"aos_loop_init"
.LASF100:
	.string	"ktask_t"
.LASF56:
	.string	"K_SEED"
.LASF66:
	.string	"task_name"
.LASF15:
	.string	"uint32_t"
.LASF51:
	.string	"blk_list"
.LASF119:
	.string	"SysTick_Handler"
.LASF18:
	.string	"long double"
.LASF20:
	.string	"char"
.LASF46:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF12:
	.string	"unsigned int"
.LASF86:
	.string	"pend_option"
.LASF5:
	.string	"__int32_t"
.LASF91:
	.string	"mm_alloc_flag"
.LASF39:
	.string	"blk_state_t"
.LASF79:
	.string	"task_state"
.LASF3:
	.string	"short unsigned int"
.LASF61:
	.string	"K_SLEEP"
.LASF144:
	.string	"application_start"
.LASF122:
	.string	"LOCAL_ERR_CODE"
.LASF136:
	.string	"app_error_handler_bare"
.LASF101:
	.string	"task_entry_t"
.LASF38:
	.string	"BLK_INVALID"
.LASF13:
	.string	"uint8_t"
.LASF72:
	.string	"mutex_list"
.LASF44:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF69:
	.string	"stack_size"
.LASF146:
	.string	"krhino_task_dyn_create"
.LASF33:
	.string	"blk_policy_t"
.LASF96:
	.string	"sem_s"
.LASF78:
	.string	"bq_msg_size"
.LASF117:
	.string	"CPACR"
.LASF109:
	.string	"HFSR"
.LASF87:
	.string	"sched_policy"
.LASF26:
	.string	"suspend_nested_t"
.LASF75:
	.string	"tick_match"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

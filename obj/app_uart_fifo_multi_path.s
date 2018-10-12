	.file	"app_uart_fifo_multi_path.c"
	.text
.Ltext0:
	.section	.text.unlikely.app_uart_putall,"ax",@progbits
.LCOLDB0:
	.section	.text.app_uart_putall,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.app_uart_putall
.Ltext_cold0:
	.section	.text.app_uart_putall
	.globl	app_uart_putall
	.type	app_uart_putall, @function
app_uart_putall:
.LFB0:
	.file 1 "src/app_uart_fifo_multi_path.c"
	.loc 1 35 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 37 0
	xorl	%ebx, %ebx
	.loc 1 35 0
	subl	$16, %esp
.LBB2:
	.loc 1 39 0
	pushl	$app_uart_inst
	call	nrf_drv_uart_tx_in_progress
.LVL0:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L2
.LBB3:
	.loc 1 41 0
	pushl	%edx
	pushl	%edx
	pushl	$tx_buffer
	pushl	$m_tx_fifo
	call	app_fifo_get
.LVL1:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L2
.LBB4:
	.loc 1 43 0
	pushl	%eax
	pushl	$1
	pushl	$tx_buffer
	pushl	$app_uart_inst
	call	nrf_drv_uart_tx
.LVL2:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL3:
.L2:
.LBE4:
.LBE3:
.LBE2:
	.loc 1 48 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL4:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	app_uart_putall, .-app_uart_putall
	.section	.text.unlikely.app_uart_putall
.LCOLDE0:
	.section	.text.app_uart_putall
.LHOTE0:
	.section	.bss.tx_buffer,"aw",@nobits
	.type	tx_buffer, @object
	.size	tx_buffer, 1
tx_buffer:
	.zero	1
	.section	.bss.m_tx_fifo,"aw",@nobits
	.align 4
	.type	m_tx_fifo, @object
	.size	m_tx_fifo, 8
m_tx_fifo:
	.zero	8
	.section	.data.app_uart_inst,"aw",@progbits
	.align 4
	.type	app_uart_inst, @object
	.size	app_uart_inst, 8
app_uart_inst:
	.long	1073750016
	.byte	0
	.zero	3
	.text
.Letext0:
	.section	.text.unlikely.app_uart_putall
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0xc
	.long	.LASF25
	.long	.LASF26
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x1
	.byte	0x3
	.long	0x42
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x4
	.long	0x54
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF6
	.byte	0x1
	.byte	0x8
	.long	0x5b
	.uleb128 0x4
	.byte	0
	.byte	0x1
	.byte	0x9
	.uleb128 0x2
	.long	.LASF7
	.byte	0x1
	.byte	0xb
	.long	0x6a
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.long	0xa3
	.uleb128 0x6
	.long	.LASF8
	.byte	0x1
	.byte	0x11
	.long	0xa3
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x12
	.long	0xa9
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x13
	.long	0xaf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5f
	.uleb128 0x7
	.byte	0x4
	.long	0x6e
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.byte	0xd
	.long	0xd2
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x14
	.long	0x79
	.byte	0
	.uleb128 0xb
	.long	.LASF11
	.byte	0x1
	.byte	0x16
	.long	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF12
	.byte	0x1
	.byte	0x17
	.long	0xb1
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.byte	0x19
	.long	0xfe
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0x1b
	.long	0xfe
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x1c
	.long	0x37
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x25
	.uleb128 0x2
	.long	.LASF15
	.byte	0x1
	.byte	0x1d
	.long	0xdd
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x22
	.long	0x49
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x24
	.long	0x49
	.long	.LLST0
	.uleb128 0xe
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0xf
	.long	.LASF16
	.byte	0x1
	.byte	0x27
	.long	0x1ac
	.long	0x151
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0x1a1
	.uleb128 0xf
	.long	.LASF17
	.byte	0x1
	.byte	0x29
	.long	0x1ac
	.long	0x16f
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x197
	.uleb128 0xf
	.long	.LASF18
	.byte	0x1
	.byte	0x2b
	.long	0x1ac
	.long	0x18d
	.uleb128 0x10
	.byte	0
	.uleb128 0x12
	.long	.LVL2
	.long	0x1fd
	.byte	0
	.uleb128 0x12
	.long	.LVL1
	.long	0x208
	.byte	0
	.uleb128 0x12
	.long	.LVL0
	.long	0x213
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x14
	.long	.LASF20
	.byte	0x1
	.byte	0x1f
	.long	0xd2
	.uleb128 0x5
	.byte	0x3
	.long	app_uart_inst
	.uleb128 0x14
	.long	.LASF21
	.byte	0x1
	.byte	0x20
	.long	0x104
	.uleb128 0x5
	.byte	0x3
	.long	m_tx_fifo
	.uleb128 0x15
	.long	0x25
	.long	0x1e5
	.uleb128 0x16
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF22
	.uleb128 0x14
	.long	.LASF23
	.byte	0x1
	.byte	0x21
	.long	0x1d5
	.uleb128 0x5
	.byte	0x3
	.long	tx_buffer
	.uleb128 0x17
	.long	.LASF18
	.long	.LASF18
	.byte	0x1
	.byte	0x2b
	.uleb128 0x17
	.long	.LASF17
	.long	.LASF17
	.byte	0x1
	.byte	0x29
	.uleb128 0x17
	.long	.LASF16
	.long	.LASF16
	.byte	0x1
	.byte	0x27
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
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	.LVL4
	.long	.LFE0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF4:
	.string	"uint32_t"
.LASF22:
	.string	"sizetype"
.LASF10:
	.string	"p_reg"
.LASF5:
	.string	"long unsigned int"
.LASF20:
	.string	"app_uart_inst"
.LASF12:
	.string	"nrf_drv_uart_t"
.LASF23:
	.string	"tx_buffer"
.LASF11:
	.string	"drv_inst_idx"
.LASF17:
	.string	"app_fifo_get"
.LASF6:
	.string	"NRF_UARTE_Type"
.LASF0:
	.string	"uint8_t"
.LASF2:
	.string	"unsigned char"
.LASF25:
	.string	"src/app_uart_fifo_multi_path.c"
.LASF26:
	.string	"/home/stone/Documents/pca"
.LASF14:
	.string	"buf_size_mask"
.LASF27:
	.string	"app_uart_putall"
.LASF13:
	.string	"p_buf"
.LASF18:
	.string	"nrf_drv_uart_tx"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"uint16_t"
.LASF19:
	.string	"err_code"
.LASF8:
	.string	"p_uarte"
.LASF21:
	.string	"m_tx_fifo"
.LASF7:
	.string	"NRF_UART_Type"
.LASF9:
	.string	"p_uart"
.LASF15:
	.string	"app_fifo_t"
.LASF16:
	.string	"nrf_drv_uart_tx_in_progress"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

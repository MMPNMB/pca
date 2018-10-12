	.file	"nrf_dfu_flash.c"
	.text
.Ltext0:
	.section	.text.unlikely.dfu_fstorage_evt_handler,"ax",@progbits
.LCOLDB0:
	.section	.text.dfu_fstorage_evt_handler,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.dfu_fstorage_evt_handler
.Ltext_cold0:
	.section	.text.dfu_fstorage_evt_handler
	.globl	dfu_fstorage_evt_handler
	.type	dfu_fstorage_evt_handler, @function
dfu_fstorage_evt_handler:
.LFB142:
	.file 1 "src/nrf_dfu_flash.c"
	.loc 1 3573 0
	.cfi_startproc
.LVL0:
	.loc 1 3574 0
	movl	m_flash_operations_pending, %eax
	.loc 1 3573 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3574 0
	testl	%eax, %eax
	.loc 1 3573 0
	movl	8(%ebp), %edx
	.loc 1 3574 0
	je	.L2
	.loc 1 3576 0
	movl	m_flash_operations_pending, %eax
	decl	%eax
	movl	%eax, m_flash_operations_pending
.L2:
	.loc 1 3588 0
	movl	16(%edx), %eax
	testl	%eax, %eax
	je	.L1
	.loc 1 3591 0
	movl	%edx, 8(%ebp)
.LVL1:
	.loc 1 3593 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3591 0
	jmp	*%eax
.LVL2:
.L1:
	.cfi_restore_state
	.loc 1 3593 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE142:
	.size	dfu_fstorage_evt_handler, .-dfu_fstorage_evt_handler
	.section	.text.unlikely.dfu_fstorage_evt_handler
.LCOLDE0:
	.section	.text.dfu_fstorage_evt_handler
.LHOTE0:
	.section	.text.unlikely.nrf_dfu_flash_init,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_dfu_flash_init,"ax",@progbits
.LHOTB1:
	.globl	nrf_dfu_flash_init
	.type	nrf_dfu_flash_init, @function
nrf_dfu_flash_init:
.LFB143:
	.loc 1 3597 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 3605 0
	pushl	$0
	pushl	$nrf_fstorage_nvmc
	pushl	$m_fs
	call	nrf_fstorage_init
.LVL4:
	.loc 1 3608 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE143:
	.size	nrf_dfu_flash_init, .-nrf_dfu_flash_init
	.section	.text.unlikely.nrf_dfu_flash_init
.LCOLDE1:
	.section	.text.nrf_dfu_flash_init
.LHOTE1:
	.section	.text.unlikely.nrf_dfu_flash_store,"ax",@progbits
.LCOLDB2:
	.section	.text.nrf_dfu_flash_store,"ax",@progbits
.LHOTB2:
	.globl	nrf_dfu_flash_store
	.type	nrf_dfu_flash_store, @function
nrf_dfu_flash_store:
.LFB144:
	.loc 1 3613 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 3615 0
	movl	m_flash_operations_pending, %eax
	.loc 1 3618 0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$m_fs
	.loc 1 3615 0
	incl	%eax
	movl	%eax, m_flash_operations_pending
	.loc 1 3618 0
	call	nrf_fstorage_write
.LVL6:
	.loc 1 3624 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE144:
	.size	nrf_dfu_flash_store, .-nrf_dfu_flash_store
	.section	.text.unlikely.nrf_dfu_flash_store
.LCOLDE2:
	.section	.text.nrf_dfu_flash_store
.LHOTE2:
	.section	.text.unlikely.nrf_dfu_flash_erase,"ax",@progbits
.LCOLDB3:
	.section	.text.nrf_dfu_flash_erase,"ax",@progbits
.LHOTB3:
	.globl	nrf_dfu_flash_erase
	.type	nrf_dfu_flash_erase, @function
nrf_dfu_flash_erase:
.LFB145:
	.loc 1 3628 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 3630 0
	movl	m_flash_operations_pending, %eax
	.loc 1 3633 0
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$m_fs
	.loc 1 3630 0
	incl	%eax
	movl	%eax, m_flash_operations_pending
	.loc 1 3633 0
	call	nrf_fstorage_erase
.LVL8:
	.loc 1 3639 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	nrf_dfu_flash_erase, .-nrf_dfu_flash_erase
	.section	.text.unlikely.nrf_dfu_flash_erase
.LCOLDE3:
	.section	.text.nrf_dfu_flash_erase
.LHOTE3:
	.section	.bss.m_flash_operations_pending,"aw",@nobits
	.align 4
	.type	m_flash_operations_pending, @object
	.size	m_flash_operations_pending, 4
m_flash_operations_pending:
	.zero	4
	.globl	m_fs
	.section	.fs_data,"aw",@progbits
	.align 4
	.type	m_fs, @object
	.size	m_fs, 20
m_fs:
	.zero	8
	.long	dfu_fstorage_evt_handler
	.long	0
	.long	1048576
	.text
.Letext0:
	.section	.text.unlikely.dfu_fstorage_evt_handler
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x54e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF67
	.byte	0xc
	.long	.LASF68
	.long	.LASF69
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x17
	.long	0x4c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x2f
	.long	0xa2
	.uleb128 0x5
	.byte	0x4
	.long	0x85
	.byte	0x1
	.byte	0x31
	.long	0xd7
	.uleb128 0x6
	.long	.LASF16
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x35
	.long	0xb8
	.uleb128 0x7
	.byte	0x14
	.byte	0x1
	.byte	0x36
	.long	0x126
	.uleb128 0x8
	.string	"id"
	.byte	0x1
	.byte	0x38
	.long	0xd7
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x39
	.long	0xad
	.byte	0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x3a
	.long	0xa2
	.byte	0x8
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0x3b
	.long	0xa2
	.byte	0xc
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x3c
	.long	0x126
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x3
	.long	.LASF23
	.byte	0x1
	.byte	0x3d
	.long	0xe2
	.uleb128 0x3
	.long	.LASF24
	.byte	0x1
	.byte	0x3e
	.long	0x13e
	.uleb128 0xb
	.byte	0x4
	.long	0x144
	.uleb128 0xc
	.long	0x14f
	.uleb128 0xd
	.long	0x14f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x128
	.uleb128 0x7
	.byte	0xc
	.byte	0x1
	.byte	0x3f
	.long	0x18e
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x41
	.long	0xa2
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x42
	.long	0xa2
	.byte	0x4
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x44
	.long	0x18e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x46
	.long	0x18e
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF29
	.uleb128 0x3
	.long	.LASF30
	.byte	0x1
	.byte	0x47
	.long	0x1a0
	.uleb128 0xe
	.long	0x155
	.uleb128 0x7
	.byte	0x14
	.byte	0x1
	.byte	0x49
	.long	0x1ea
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x4b
	.long	0x257
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x4c
	.long	0x262
	.byte	0x4
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x4d
	.long	0x133
	.byte	0x8
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x4e
	.long	0xa2
	.byte	0xc
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x4f
	.long	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x20
	.byte	0x1
	.byte	0x51
	.long	0x257
	.uleb128 0x9
	.long	.LASF36
	.byte	0x1
	.byte	0x53
	.long	0x28d
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0x54
	.long	0x28d
	.byte	0x4
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0x55
	.long	0x2bc
	.byte	0x8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x1
	.byte	0x56
	.long	0x2ec
	.byte	0xc
	.uleb128 0x9
	.long	.LASF40
	.byte	0x1
	.byte	0x57
	.long	0x310
	.byte	0x10
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x58
	.long	0x335
	.byte	0x14
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x59
	.long	0x355
	.byte	0x18
	.uleb128 0x9
	.long	.LASF41
	.byte	0x1
	.byte	0x5b
	.long	0x36a
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x25d
	.uleb128 0xe
	.long	0x1ea
	.uleb128 0xb
	.byte	0x4
	.long	0x195
	.uleb128 0x3
	.long	.LASF42
	.byte	0x1
	.byte	0x50
	.long	0x1a5
	.uleb128 0x10
	.long	0xad
	.long	0x287
	.uleb128 0xd
	.long	0x287
	.uleb128 0xd
	.long	0x126
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x268
	.uleb128 0xb
	.byte	0x4
	.long	0x273
	.uleb128 0x10
	.long	0xad
	.long	0x2b1
	.uleb128 0xd
	.long	0x2b1
	.uleb128 0xd
	.long	0xa2
	.uleb128 0xd
	.long	0x126
	.uleb128 0xd
	.long	0xa2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2b7
	.uleb128 0xe
	.long	0x268
	.uleb128 0xb
	.byte	0x4
	.long	0x293
	.uleb128 0x10
	.long	0xad
	.long	0x2e5
	.uleb128 0xd
	.long	0x2b1
	.uleb128 0xd
	.long	0xa2
	.uleb128 0xd
	.long	0x2e5
	.uleb128 0xd
	.long	0xa2
	.uleb128 0xd
	.long	0x126
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2eb
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x4
	.long	0x2c2
	.uleb128 0x10
	.long	0xad
	.long	0x310
	.uleb128 0xd
	.long	0x2b1
	.uleb128 0xd
	.long	0xa2
	.uleb128 0xd
	.long	0xa2
	.uleb128 0xd
	.long	0x126
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2f2
	.uleb128 0x10
	.long	0x32a
	.long	0x32a
	.uleb128 0xd
	.long	0x2b1
	.uleb128 0xd
	.long	0xa2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x330
	.uleb128 0xe
	.long	0x8c
	.uleb128 0xb
	.byte	0x4
	.long	0x316
	.uleb128 0x10
	.long	0x34f
	.long	0x34f
	.uleb128 0xd
	.long	0x2b1
	.uleb128 0xd
	.long	0xa2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x8c
	.uleb128 0xb
	.byte	0x4
	.long	0x33b
	.uleb128 0x10
	.long	0x18e
	.long	0x36a
	.uleb128 0xd
	.long	0x2b1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x35b
	.uleb128 0x3
	.long	.LASF43
	.byte	0x1
	.byte	0x5c
	.long	0x25d
	.uleb128 0x3
	.long	.LASF44
	.byte	0x1
	.byte	0x72
	.long	0x133
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF45
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF46
	.uleb128 0x12
	.long	0xa2
	.uleb128 0x12
	.long	0x97
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF47
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.value	0xdf4
	.long	.LFB142
	.long	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cc
	.uleb128 0x14
	.long	.LASF48
	.byte	0x1
	.value	0xdf4
	.long	0x14f
	.long	.LLST0
	.byte	0
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.value	0xe0a
	.long	0xad
	.long	.LFB143
	.long	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x40b
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.value	0xe0c
	.long	0x18e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0xe0e
	.long	0x40b
	.uleb128 0x18
	.long	.LVL4
	.long	0x530
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x370
	.uleb128 0x15
	.long	.LASF51
	.byte	0x1
	.value	0xe19
	.long	0xad
	.long	.LFB144
	.long	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x47e
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.value	0xe19
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF53
	.byte	0x1
	.value	0xe1a
	.long	0x2e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0xe1b
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.value	0xe1c
	.long	0x37b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.string	"rc"
	.byte	0x1
	.value	0xe1e
	.long	0xad
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x18
	.long	.LVL6
	.long	0x53b
	.byte	0
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0xe29
	.long	0xad
	.long	.LFB145
	.long	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dc
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.value	0xe29
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0xe2a
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.value	0xe2b
	.long	0x37b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"rc"
	.byte	0x1
	.value	0xe2d
	.long	0xad
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x18
	.long	.LVL8
	.long	0x546
	.byte	0
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x1
	.value	0xdf3
	.long	0x394
	.uleb128 0x5
	.byte	0x3
	.long	m_flash_operations_pending
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.value	0x45b
	.long	0x399
	.uleb128 0x1c
	.long	.LASF60
	.byte	0x1
	.value	0xcb6
	.long	0x370
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.value	0xcf0
	.long	0xa2
	.uleb128 0x1c
	.long	.LASF62
	.byte	0x1
	.value	0xcf1
	.long	0xa2
	.uleb128 0x1d
	.long	.LASF63
	.byte	0x1
	.value	0xded
	.long	0x268
	.uleb128 0x5
	.byte	0x3
	.long	m_fs
	.uleb128 0x1e
	.long	.LASF64
	.long	.LASF64
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1e
	.long	.LASF65
	.long	.LASF65
	.byte	0x1
	.byte	0x65
	.uleb128 0x1e
	.long	.LASF66
	.long	.LASF66
	.byte	0x1
	.byte	0x6a
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL1
	.long	.LVL2-1
	.value	0x1
	.byte	0x52
	.long	.LVL2
	.long	.LFE142
	.value	0x1
	.byte	0x52
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
	.long	.LFB142
	.long	.LFE142-.LFB142
	.long	.LFB143
	.long	.LFE143-.LFB143
	.long	.LFB144
	.long	.LFE144-.LFB144
	.long	.LFB145
	.long	.LFE145-.LFB145
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB142
	.long	.LFE142
	.long	.LFB143
	.long	.LFE143
	.long	.LFB144
	.long	.LFE144
	.long	.LFB145
	.long	.LFE145
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"nrf_dfu_flash_erase"
.LASF34:
	.string	"start_addr"
.LASF20:
	.string	"result"
.LASF31:
	.string	"p_api"
.LASF24:
	.string	"nrf_fstorage_evt_handler_t"
.LASF39:
	.string	"write"
.LASF18:
	.string	"NRF_FSTORAGE_EVT_ERASE_RESULT"
.LASF42:
	.string	"nrf_fstorage_t"
.LASF65:
	.string	"nrf_fstorage_write"
.LASF51:
	.string	"nrf_dfu_flash_store"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"nrf_fstorage_evt_id_t"
.LASF46:
	.string	"sizetype"
.LASF16:
	.string	"NRF_FSTORAGE_EVT_READ_RESULT"
.LASF7:
	.string	"__uint32_t"
.LASF50:
	.string	"nrf_dfu_flash_init"
.LASF56:
	.string	"page_addr"
.LASF60:
	.string	"nrf_fstorage_nvmc"
.LASF12:
	.string	"uint8_t"
.LASF72:
	.string	"p_api_impl"
.LASF32:
	.string	"p_flash_info"
.LASF33:
	.string	"evt_handler"
.LASF70:
	.string	"nrf_fstorage_api_s"
.LASF43:
	.string	"nrf_fstorage_api_t"
.LASF71:
	.string	"dfu_fstorage_evt_handler"
.LASF38:
	.string	"read"
.LASF25:
	.string	"erase_unit"
.LASF9:
	.string	"long long int"
.LASF26:
	.string	"program_unit"
.LASF6:
	.string	"long int"
.LASF21:
	.string	"addr"
.LASF61:
	.string	"__StackTop"
.LASF4:
	.string	"__uint8_t"
.LASF35:
	.string	"end_addr"
.LASF44:
	.string	"dfu_flash_callback_t"
.LASF66:
	.string	"nrf_fstorage_erase"
.LASF27:
	.string	"rmap"
.LASF53:
	.string	"p_src"
.LASF45:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"src/nrf_dfu_flash.c"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF41:
	.string	"is_busy"
.LASF37:
	.string	"uninit"
.LASF63:
	.string	"m_fs"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"wmap"
.LASF47:
	.string	"char"
.LASF36:
	.string	"init"
.LASF13:
	.string	"int32_t"
.LASF57:
	.string	"num_pages"
.LASF29:
	.string	"_Bool"
.LASF17:
	.string	"NRF_FSTORAGE_EVT_WRITE_RESULT"
.LASF22:
	.string	"p_param"
.LASF58:
	.string	"m_flash_operations_pending"
.LASF23:
	.string	"nrf_fstorage_evt_t"
.LASF8:
	.string	"long unsigned int"
.LASF48:
	.string	"p_evt"
.LASF52:
	.string	"dest"
.LASF5:
	.string	"__int32_t"
.LASF67:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF30:
	.string	"nrf_fstorage_info_t"
.LASF64:
	.string	"nrf_fstorage_init"
.LASF49:
	.string	"sd_irq_initialized"
.LASF40:
	.string	"erase"
.LASF69:
	.string	"/home/stone/Documents/pca"
.LASF62:
	.string	"__StackLimit"
.LASF59:
	.string	"ITM_RxBuffer"
.LASF54:
	.string	"callback"
.LASF15:
	.string	"ret_code_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

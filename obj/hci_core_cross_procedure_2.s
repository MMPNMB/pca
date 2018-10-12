	.file	"hci_core_cross_procedure_2.c"
	.text
.Ltext0:
	.section	.text.unlikely.hci_tx_thread,"ax",@progbits
.LCOLDB0:
	.section	.text.hci_tx_thread,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.hci_tx_thread
.Ltext_cold0:
	.section	.text.hci_tx_thread
	.type	hci_tx_thread, @function
hci_tx_thread:
.LFB3:
	.file 1 "src/hci_core_cross_procedure_2.c"
	.loc 1 96 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.L2:
	jmp	.L2
	.cfi_endproc
.LFE3:
	.size	hci_tx_thread, .-hci_tx_thread
	.section	.text.unlikely.hci_tx_thread
.LCOLDE0:
	.section	.text.hci_tx_thread
.LHOTE0:
	.section	.text.unlikely.bt_enable,"ax",@progbits
.LCOLDB1:
	.section	.text.bt_enable,"ax",@progbits
.LHOTB1:
	.globl	bt_enable
	.type	bt_enable, @function
bt_enable:
.LFB4:
	.loc 1 116 0
	.cfi_startproc
.LVL1:
	.loc 1 116 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 117 0
	pushl	$0
	pushl	$0
	pushl	$20
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$hci_tx_thread
	pushl	$800
	pushl	$tx_thread_stack
	pushl	$tx_thread_data
	call	k_thread_create
.LVL2:
	.loc 1 121 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	bt_enable, .-bt_enable
	.section	.text.unlikely.bt_enable
.LCOLDE1:
	.section	.text.bt_enable
.LHOTE1:
	.section	.bss.tx_thread_stack,"aw",@nobits
	.align 32
	.type	tx_thread_stack, @object
	.size	tx_thread_stack, 800
tx_thread_stack:
	.zero	800
	.section	.bss.tx_thread_data,"aw",@nobits
	.type	tx_thread_data, @object
	.size	tx_thread_data, 0
tx_thread_data:
	.text
.Letext0:
	.section	.text.unlikely.hci_tx_thread
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x28c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0xc
	.long	.LASF32
	.long	.LASF33
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x1
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x1
	.byte	0x2
	.long	0x25
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x5b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.long	0x5b
	.byte	0x1
	.byte	0x6
	.long	0x7f
	.uleb128 0x5
	.long	.LASF7
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.long	0x5b
	.byte	0x1
	.byte	0xc
	.long	0x9c
	.uleb128 0x5
	.long	.LASF11
	.byte	0
	.uleb128 0x5
	.long	.LASF12
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.long	0x5b
	.byte	0x1
	.byte	0x10
	.long	0xb9
	.uleb128 0x5
	.long	.LASF14
	.byte	0
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.long	0xcd
	.uleb128 0x7
	.string	"obj"
	.byte	0x1
	.byte	0x1b
	.long	0xcd
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0x14
	.long	0x12d
	.uleb128 0xa
	.string	"tag"
	.byte	0x1
	.byte	0x15
	.long	0x50
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x16
	.long	0x50
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x17
	.long	0x50
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x18
	.long	0x50
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x19
	.long	0x50
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0xb9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x1
	.byte	0x1e
	.long	0x37
	.uleb128 0xd
	.long	.LASF26
	.byte	0
	.byte	0x1
	.byte	0x20
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x1
	.byte	0x2d
	.long	0x152
	.uleb128 0xe
	.byte	0x4
	.long	0x158
	.uleb128 0xf
	.long	0x163
	.uleb128 0x10
	.long	0x163
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.byte	0x4
	.long	0x5b
	.byte	0x1
	.byte	0x2e
	.long	0x17d
	.uleb128 0x5
	.long	.LASF23
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0
	.byte	0x1
	.byte	0x31
	.long	0x196
	.uleb128 0x13
	.long	.LASF34
	.byte	0x1
	.byte	0x32
	.long	0x138
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF27
	.byte	0
	.byte	0x1
	.byte	0x34
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.byte	0x5f
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e6
	.uleb128 0x15
	.string	"p1"
	.byte	0x1
	.byte	0x5f
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"p2"
	.byte	0x1
	.byte	0x5f
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"p3"
	.byte	0x1
	.byte	0x5f
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x61
	.long	0x1e6
	.byte	0
	.uleb128 0x17
	.long	0xcf
	.long	0x1f6
	.uleb128 0x18
	.long	0x140
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF37
	.byte	0x1
	.byte	0x73
	.long	0x163
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x237
	.uleb128 0x15
	.string	"cb"
	.byte	0x1
	.byte	0x73
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF38
	.byte	0x1
	.byte	0x75
	.long	0x163
	.long	0x22d
	.uleb128 0x1b
	.byte	0
	.uleb128 0x1c
	.long	.LVL2
	.long	0x284
	.byte	0
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x1
	.byte	0x38
	.long	0x196
	.uleb128 0x5
	.byte	0x3
	.long	tx_thread_data
	.uleb128 0x17
	.long	0x12d
	.long	0x258
	.uleb128 0x18
	.long	0x140
	.byte	0xc7
	.byte	0
	.uleb128 0x1d
	.long	.LASF29
	.byte	0x1
	.byte	0x39
	.long	0x248
	.uleb128 0x5
	.byte	0x3
	.long	tx_thread_stack
	.uleb128 0x1e
	.long	.LASF39
	.uleb128 0x1f
	.long	.LASF25
	.byte	0x1
	.byte	0x37
	.long	0x17d
	.uleb128 0x1f
	.long	.LASF30
	.byte	0x1
	.byte	0x42
	.long	0x269
	.uleb128 0x20
	.long	.LASF38
	.long	.LASF38
	.byte	0x1
	.byte	0x75
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"hci_cmd_pool"
.LASF11:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF14:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF17:
	.string	"state"
.LASF34:
	.string	"cmd_tx_queue"
.LASF32:
	.string	"src/hci_core_cross_procedure_2.c"
.LASF35:
	.string	"hci_tx_thread"
.LASF22:
	.string	"bt_ready_cb_t"
.LASF7:
	.string	"K_POLL_MODE_NOTIFY_ONLY"
.LASF29:
	.string	"tx_thread_stack"
.LASF3:
	.string	"unsigned char"
.LASF2:
	.string	"long unsigned int"
.LASF31:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF4:
	.string	"short unsigned int"
.LASF39:
	.string	"net_buf_pool"
.LASF25:
	.string	"bt_dev"
.LASF13:
	.string	"_poll_types_bits"
.LASF36:
	.string	"events"
.LASF0:
	.string	"__uint32_t"
.LASF5:
	.string	"u32_t"
.LASF24:
	.string	"k_poll_event"
.LASF15:
	.string	"_POLL_NUM_TYPES"
.LASF6:
	.string	"unsigned int"
.LASF12:
	.string	"_POLL_NUM_STATES"
.LASF8:
	.string	"K_POLL_NUM_MODES"
.LASF19:
	.string	"unused"
.LASF21:
	.string	"sizetype"
.LASF18:
	.string	"mode"
.LASF38:
	.string	"k_thread_create"
.LASF20:
	.string	"_stack_element_t"
.LASF28:
	.string	"tx_thread_data"
.LASF16:
	.string	"type"
.LASF33:
	.string	"/home/stone/Documents/pca"
.LASF26:
	.string	"k_fifo"
.LASF23:
	.string	"BT_EVENT_CMD_TX"
.LASF27:
	.string	"k_thread"
.LASF10:
	.string	"_poll_states_bits"
.LASF1:
	.string	"uint32_t"
.LASF9:
	.string	"k_poll_modes"
.LASF37:
	.string	"bt_enable"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"nrf_dfu_settings.c"
	.text
.Ltext0:
	.section	.text.unlikely.nrf_dfu_settings_crc_get,"ax",@progbits
.LCOLDB0:
	.section	.text.nrf_dfu_settings_crc_get,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.nrf_dfu_settings_crc_get
.Ltext_cold0:
	.section	.text.nrf_dfu_settings_crc_get
	.globl	nrf_dfu_settings_crc_get
	.type	nrf_dfu_settings_crc_get, @function
nrf_dfu_settings_crc_get:
.LFB142:
	.file 1 "src/nrf_dfu_settings.c"
	.loc 1 3594 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 3595 0
	pushl	$0
	pushl	$124
	pushl	$s_dfu_settings+4
	call	crc32_compute
.LVL0:
	.loc 1 3604 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE142:
	.size	nrf_dfu_settings_crc_get, .-nrf_dfu_settings_crc_get
	.section	.text.unlikely.nrf_dfu_settings_crc_get
.LCOLDE0:
	.section	.text.nrf_dfu_settings_crc_get
.LHOTE0:
	.section	.text.unlikely.nrf_dfu_settings_write,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_dfu_settings_write,"ax",@progbits
.LHOTB1:
	.globl	nrf_dfu_settings_write
	.type	nrf_dfu_settings_write, @function
nrf_dfu_settings_write:
.LFB144:
	.loc 1 3639 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$432, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3639 0
	movl	8(%ebp), %ebx
	.loc 1 3643 0
	pushl	$0
	pushl	$1
	pushl	$m_dfu_settings_buffer
	.loc 1 3639 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 3643 0
	call	nrf_dfu_flash_erase
.LVL2:
	.loc 1 3646 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L4
.L6:
	.loc 1 3649 0
	movl	$3, %eax
.LVL3:
	jmp	.L5
.LVL4:
.L4:
	.loc 1 3651 0
	call	nrf_dfu_settings_crc_get
.LVL5:
	movl	$s_dfu_settings, %esi
	movl	%eax, s_dfu_settings
	.loc 1 3653 0
	leal	-428(%ebp), %edi
	movl	$100, %ecx
	.loc 1 3654 0
	leal	-428(%ebp), %eax
	.loc 1 3653 0
	rep movsl
	.loc 1 3654 0
	pushl	%ebx
	pushl	$400
	pushl	%eax
	pushl	$m_dfu_settings_buffer
	call	nrf_dfu_flash_store
.LVL6:
	.loc 1 3658 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L6
.LVL7:
.L5:
	.loc 1 3664 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L7
	call	__stack_chk_fail
.LVL8:
.L7:
	leal	-12(%ebp), %esp
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
.LFE144:
	.size	nrf_dfu_settings_write, .-nrf_dfu_settings_write
	.section	.text.unlikely.nrf_dfu_settings_write
.LCOLDE1:
	.section	.text.nrf_dfu_settings_write
.LHOTE1:
	.section	.text.unlikely.nrf_dfu_settings_init,"ax",@progbits
.LCOLDB2:
	.section	.text.nrf_dfu_settings_init,"ax",@progbits
.LHOTB2:
	.globl	nrf_dfu_settings_init
	.type	nrf_dfu_settings_init, @function
nrf_dfu_settings_init:
.LFB143:
	.loc 1 3608 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 3611 0
	movzbl	8(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	nrf_dfu_flash_init
.LVL10:
	.loc 1 3612 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L11
	.loc 1 3615 0
	subl	$12, %esp
	pushl	%eax
	call	app_error_handler_bare
.LVL11:
	addl	$16, %esp
.L11:
	.loc 1 3617 0
	movl	$s_dfu_settings, %eax
	movl	$m_dfu_settings_buffer, %esi
	movl	$100, %ecx
	movl	%eax, %edi
	rep movsl
	.loc 1 3618 0
	cmpl	$-1, s_dfu_settings
	jne	.L12
.L15:
	.loc 1 3627 0
	movl	$s_dfu_settings, %edx
	xorl	%eax, %eax
	movl	$100, %ecx
	movl	%edx, %edi
	.loc 1 3629 0
	subl	$12, %esp
	.loc 1 3627 0
	rep stosl
	.loc 1 3629 0
	pushl	$0
	call	nrf_dfu_settings_write
.LVL12:
	.loc 1 3632 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L10
	.loc 1 3635 0
	movl	%eax, 8(%ebp)
	.loc 1 3637 0
	leal	-8(%ebp), %esp
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3635 0
	jmp	app_error_handler_bare
.LVL13:
.L12:
	.cfi_restore_state
.LBB2:
	.loc 1 3620 0
	call	nrf_dfu_settings_crc_get
.LVL14:
	.loc 1 3621 0
	cmpl	s_dfu_settings, %eax
	jne	.L15
.LVL15:
.L10:
.LBE2:
	.loc 1 3637 0
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
.LFE143:
	.size	nrf_dfu_settings_init, .-nrf_dfu_settings_init
	.section	.text.unlikely.nrf_dfu_settings_init
.LCOLDE2:
	.section	.text.nrf_dfu_settings_init
.LHOTE2:
	.section	.text.unlikely.nrf_dfu_settings_additional_erase,"ax",@progbits
.LCOLDB3:
	.section	.text.nrf_dfu_settings_additional_erase,"ax",@progbits
.LHOTB3:
	.weak	nrf_dfu_settings_additional_erase
	.type	nrf_dfu_settings_additional_erase, @function
nrf_dfu_settings_additional_erase:
.LFB145:
	.loc 1 3666 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3669 0
	xorl	%eax, %eax
	.loc 1 3666 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3669 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	nrf_dfu_settings_additional_erase, .-nrf_dfu_settings_additional_erase
	.section	.text.unlikely.nrf_dfu_settings_additional_erase
.LCOLDE3:
	.section	.text.nrf_dfu_settings_additional_erase
.LHOTE3:
	.globl	s_dfu_settings
	.section	.bss.s_dfu_settings,"aw",@nobits
	.align 32
	.type	s_dfu_settings, @object
	.size	s_dfu_settings, 400
s_dfu_settings:
	.zero	400
	.globl	m_uicr_mbr_params_page_address
	.section	.uicr_mbr_params_page,"a",@progbits
	.align 4
	.type	m_uicr_mbr_params_page_address, @object
	.size	m_uicr_mbr_params_page_address, 4
m_uicr_mbr_params_page_address:
	.long	1040384
	.globl	m_mbr_params_page
	.section	.mbr_params_page,"aw",@progbits
	.align 32
	.type	m_mbr_params_page, @object
	.size	m_mbr_params_page, 4096
m_mbr_params_page:
	.zero	4096
	.globl	m_dfu_settings_buffer
	.section	.bootloader_settings_page,"aw",@progbits
	.align 32
	.type	m_dfu_settings_buffer, @object
	.size	m_dfu_settings_buffer, 4096
m_dfu_settings_buffer:
	.zero	4096
	.text
.Letext0:
	.section	.text.unlikely.nrf_dfu_settings_crc_get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x600
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF84
	.byte	0xc
	.long	.LASF85
	.long	.LASF86
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
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0x5
	.long	0x97
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.value	0xc0c
	.long	0xa2
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.value	0xc2f
	.long	0xec
	.uleb128 0x9
	.string	"crc"
	.byte	0x1
	.value	0xc31
	.long	0xa2
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.value	0xc32
	.long	0xd5
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.value	0xc33
	.long	0x10f
	.uleb128 0x9
	.string	"crc"
	.byte	0x1
	.value	0xc35
	.long	0xa2
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.value	0xc36
	.long	0xf8
	.uleb128 0x8
	.byte	0xc
	.byte	0x1
	.value	0xc37
	.long	0x14c
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.value	0xc39
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.value	0xc3a
	.long	0xa2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.value	0xc3b
	.long	0xa2
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.value	0xc3c
	.long	0x11b
	.uleb128 0x8
	.byte	0x10
	.byte	0x1
	.value	0xc45
	.long	0x196
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.value	0xc47
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.value	0xc48
	.long	0xa2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.value	0xc49
	.long	0xa2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.value	0xc4a
	.long	0xa2
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.value	0xc4c
	.long	0x1ad
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.value	0xc4e
	.long	0xa2
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0x1
	.value	0xc43
	.long	0x1c1
	.uleb128 0xc
	.long	0x158
	.uleb128 0xc
	.long	0x196
	.byte	0
	.uleb128 0x8
	.byte	0x20
	.byte	0x1
	.value	0xc3d
	.long	0x205
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.value	0xc3f
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.value	0xc40
	.long	0xa2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.value	0xc41
	.long	0xa2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.value	0xc42
	.long	0xa2
	.byte	0xc
	.uleb128 0xd
	.long	0x1ad
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF34
	.byte	0x1
	.value	0xc51
	.long	0x1c1
	.uleb128 0xe
	.value	0x190
	.byte	0x1
	.value	0xc52
	.long	0x330
	.uleb128 0x9
	.string	"crc"
	.byte	0x1
	.value	0xc54
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.value	0xc55
	.long	0xa2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.value	0xc56
	.long	0xa2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.value	0xc57
	.long	0xa2
	.byte	0xc
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.value	0xc58
	.long	0xa2
	.byte	0x10
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.value	0xc59
	.long	0xa2
	.byte	0x14
	.uleb128 0xa
	.long	.LASF40
	.byte	0x1
	.value	0xc5a
	.long	0xa2
	.byte	0x18
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.value	0xc5b
	.long	0xa2
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF42
	.byte	0x1
	.value	0xc5c
	.long	0xa2
	.byte	0x20
	.uleb128 0xa
	.long	.LASF43
	.byte	0x1
	.value	0xc5d
	.long	0x14c
	.byte	0x24
	.uleb128 0xa
	.long	.LASF44
	.byte	0x1
	.value	0xc5e
	.long	0x14c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.value	0xc5f
	.long	0x14c
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.value	0xc60
	.long	0x14c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF47
	.byte	0x1
	.value	0xc61
	.long	0xa2
	.byte	0x54
	.uleb128 0xa
	.long	.LASF48
	.byte	0x1
	.value	0xc62
	.long	0xa2
	.byte	0x58
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.value	0xc63
	.long	0x205
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF50
	.byte	0x1
	.value	0xc64
	.long	0xa2
	.byte	0x7c
	.uleb128 0xa
	.long	.LASF51
	.byte	0x1
	.value	0xc65
	.long	0x330
	.byte	0x80
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.value	0xc66
	.long	0xec
	.value	0x180
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.value	0xc67
	.long	0x10f
	.value	0x184
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.value	0xc68
	.long	0x340
	.value	0x188
	.byte	0
	.uleb128 0x11
	.long	0x8c
	.long	0x340
	.uleb128 0x12
	.long	0xb4
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.long	0x8c
	.long	0x350
	.uleb128 0x12
	.long	0xb4
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF54
	.byte	0x1
	.value	0xc69
	.long	0x211
	.uleb128 0x13
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc6b
	.long	0x37c
	.uleb128 0x14
	.long	.LASF55
	.byte	0
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.uleb128 0x14
	.long	.LASF57
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF58
	.byte	0x1
	.value	0xc6f
	.long	0x35c
	.uleb128 0x8
	.byte	0x14
	.byte	0x1
	.value	0xc70
	.long	0x3d2
	.uleb128 0x9
	.string	"id"
	.byte	0x1
	.value	0xc72
	.long	0x37c
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x1
	.value	0xc73
	.long	0xc9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1
	.value	0xc74
	.long	0xa2
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.value	0xc75
	.long	0xa2
	.byte	0xc
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1
	.value	0xc76
	.long	0xc7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF62
	.byte	0x1
	.value	0xc77
	.long	0x388
	.uleb128 0x7
	.long	.LASF63
	.byte	0x1
	.value	0xc78
	.long	0x3ea
	.uleb128 0x15
	.byte	0x4
	.long	0x3f0
	.uleb128 0x16
	.long	0x3fb
	.uleb128 0x17
	.long	0x3fb
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.long	0x3d2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF64
	.uleb128 0x7
	.long	.LASF65
	.byte	0x1
	.value	0xcac
	.long	0x3de
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0xe09
	.long	0xa2
	.long	.LFB142
	.long	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x438
	.uleb128 0x19
	.long	.LVL0
	.long	0x5be
	.byte	0
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0xe36
	.long	0xc9
	.long	.LFB144
	.long	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a6
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.value	0xe36
	.long	0x408
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.value	0xe38
	.long	0xc9
	.long	.LLST0
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0xe44
	.long	0x350
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x19
	.long	.LVL2
	.long	0x5ca
	.uleb128 0x19
	.long	.LVL5
	.long	0x414
	.uleb128 0x19
	.long	.LVL6
	.long	0x5d6
	.uleb128 0x19
	.long	.LVL8
	.long	0x5e2
	.byte	0
	.uleb128 0x1d
	.long	.LASF87
	.byte	0x1
	.value	0xe15
	.long	.LFB143
	.long	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x526
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x1
	.value	0xe17
	.long	0x401
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"rc"
	.byte	0x1
	.value	0xe1b
	.long	0xc9
	.long	.LLST1
	.uleb128 0x1f
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x501
	.uleb128 0x1e
	.string	"crc"
	.byte	0x1
	.value	0xe24
	.long	0xa2
	.long	.LLST2
	.uleb128 0x19
	.long	.LVL14
	.long	0x414
	.byte	0
	.uleb128 0x19
	.long	.LVL10
	.long	0x5eb
	.uleb128 0x19
	.long	.LVL11
	.long	0x5f7
	.uleb128 0x19
	.long	.LVL12
	.long	0x438
	.uleb128 0x20
	.long	.LVL13
	.long	0x5f7
	.byte	0
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.value	0xe51
	.long	0xc9
	.long	.LFB145
	.long	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF72
	.byte	0x1
	.value	0x40f
	.long	0xbb
	.uleb128 0x23
	.long	.LASF73
	.byte	0x1
	.value	0xe08
	.long	0x350
	.uleb128 0x5
	.byte	0x3
	.long	s_dfu_settings
	.uleb128 0x22
	.long	.LASF74
	.byte	0x1
	.value	0xd04
	.long	0xa2
	.uleb128 0x22
	.long	.LASF75
	.byte	0x1
	.value	0xd05
	.long	0xa2
	.uleb128 0x11
	.long	0x8c
	.long	0x583
	.uleb128 0x24
	.long	0xb4
	.value	0xfff
	.byte	0
	.uleb128 0x23
	.long	.LASF76
	.byte	0x1
	.value	0xe00
	.long	0x572
	.uleb128 0x5
	.byte	0x3
	.long	m_dfu_settings_buffer
	.uleb128 0x23
	.long	.LASF77
	.byte	0x1
	.value	0xe03
	.long	0x572
	.uleb128 0x5
	.byte	0x3
	.long	m_mbr_params_page
	.uleb128 0x23
	.long	.LASF78
	.byte	0x1
	.value	0xe05
	.long	0x5b9
	.uleb128 0x5
	.byte	0x3
	.long	m_uicr_mbr_params_page_address
	.uleb128 0x25
	.long	0xa2
	.uleb128 0x26
	.long	.LASF79
	.long	.LASF79
	.byte	0x1
	.value	0xcfe
	.uleb128 0x26
	.long	.LASF80
	.long	.LASF80
	.byte	0x1
	.value	0xcb4
	.uleb128 0x26
	.long	.LASF81
	.long	.LASF81
	.byte	0x1
	.value	0xcb0
	.uleb128 0x27
	.long	.LASF89
	.long	.LASF89
	.uleb128 0x26
	.long	.LASF82
	.long	.LASF82
	.byte	0x1
	.value	0xcad
	.uleb128 0x26
	.long	.LASF83
	.long	.LASF83
	.byte	0x1
	.value	0xc1a
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x17
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x8
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
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL14
	.long	.LVL15
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
	.long	.LFB142
	.long	.LFE142-.LFB142
	.long	.LFB144
	.long	.LFE144-.LFB144
	.long	.LFB143
	.long	.LFE143-.LFB143
	.long	.LFB145
	.long	.LFE145-.LFB145
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB142
	.long	.LFE142
	.long	.LFB144
	.long	.LFE144
	.long	.LFB143
	.long	.LFE143
	.long	.LFB145
	.long	.LFE145
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"nrf_dfu_flash_erase"
.LASF41:
	.string	"bank_current"
.LASF59:
	.string	"result"
.LASF29:
	.string	"sd_start_address"
.LASF63:
	.string	"nrf_fstorage_evt_handler_t"
.LASF57:
	.string	"NRF_FSTORAGE_EVT_ERASE_RESULT"
.LASF81:
	.string	"nrf_dfu_flash_store"
.LASF78:
	.string	"m_uicr_mbr_params_page_address"
.LASF58:
	.string	"nrf_fstorage_evt_id_t"
.LASF33:
	.string	"data_object_size"
.LASF88:
	.string	"nrf_dfu_settings_additional_erase"
.LASF16:
	.string	"sizetype"
.LASF85:
	.string	"src/nrf_dfu_settings.c"
.LASF55:
	.string	"NRF_FSTORAGE_EVT_READ_RESULT"
.LASF31:
	.string	"command_offset"
.LASF9:
	.string	"long long int"
.LASF7:
	.string	"__uint32_t"
.LASF82:
	.string	"nrf_dfu_flash_init"
.LASF22:
	.string	"image_crc"
.LASF51:
	.string	"init_command"
.LASF38:
	.string	"bootloader_version"
.LASF12:
	.string	"uint8_t"
.LASF26:
	.string	"firmware_image_crc_last"
.LASF69:
	.string	"temp_dfu_settings"
.LASF21:
	.string	"image_size"
.LASF25:
	.string	"firmware_image_crc"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"long double"
.LASF19:
	.string	"nrf_dfu_peer_data_t"
.LASF43:
	.string	"bank_0"
.LASF45:
	.string	"bank_1"
.LASF39:
	.string	"kernel_version"
.LASF79:
	.string	"crc32_compute"
.LASF6:
	.string	"long int"
.LASF60:
	.string	"addr"
.LASF49:
	.string	"progress"
.LASF74:
	.string	"__StackTop"
.LASF4:
	.string	"__uint8_t"
.LASF36:
	.string	"settings_version"
.LASF44:
	.string	"bank_app_0"
.LASF46:
	.string	"bank_app_1"
.LASF65:
	.string	"dfu_flash_callback_t"
.LASF37:
	.string	"app_version"
.LASF76:
	.string	"m_dfu_settings_buffer"
.LASF62:
	.string	"nrf_fstorage_evt_t"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"firmware_image_offset"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF53:
	.string	"adv_name"
.LASF66:
	.string	"nrf_dfu_settings_crc_get"
.LASF77:
	.string	"m_mbr_params_page"
.LASF34:
	.string	"dfu_progress_t"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"char"
.LASF23:
	.string	"bank_code"
.LASF48:
	.string	"sd_size"
.LASF24:
	.string	"nrf_dfu_bank_t"
.LASF13:
	.string	"int32_t"
.LASF83:
	.string	"app_error_handler_bare"
.LASF35:
	.string	"bins_flag"
.LASF68:
	.string	"err_code"
.LASF61:
	.string	"p_param"
.LASF64:
	.string	"_Bool"
.LASF28:
	.string	"firmware_image_offset_last"
.LASF56:
	.string	"NRF_FSTORAGE_EVT_WRITE_RESULT"
.LASF67:
	.string	"nrf_dfu_settings_write"
.LASF52:
	.string	"peer_data"
.LASF8:
	.string	"long unsigned int"
.LASF42:
	.string	"bank_app_current"
.LASF73:
	.string	"s_dfu_settings"
.LASF5:
	.string	"__int32_t"
.LASF84:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF54:
	.string	"nrf_dfu_settings_t"
.LASF71:
	.string	"sd_irq_initialized"
.LASF40:
	.string	"bank_layout"
.LASF86:
	.string	"/home/stone/Documents/pca"
.LASF30:
	.string	"command_size"
.LASF50:
	.string	"enter_buttonless_dfu"
.LASF75:
	.string	"__StackLimit"
.LASF89:
	.string	"__stack_chk_fail"
.LASF72:
	.string	"ITM_RxBuffer"
.LASF11:
	.string	"unsigned int"
.LASF87:
	.string	"nrf_dfu_settings_init"
.LASF20:
	.string	"nrf_dfu_adv_name_t"
.LASF32:
	.string	"command_crc"
.LASF70:
	.string	"callback"
.LASF47:
	.string	"write_offset"
.LASF18:
	.string	"ret_code_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

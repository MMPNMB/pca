	.file	"nrf_fstorage_nvmc.c"
	.text
.Ltext0:
	.section	.text.unlikely.init,"ax",@progbits
.LCOLDB0:
	.section	.text.init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.init
.Ltext_cold0:
	.section	.text.init
	.type	init, @function
init:
.LFB157:
	.file 1 "src/nrf_fstorage_nvmc.c"
	.loc 1 3138 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3140 0
	movl	8(%ebp), %eax
	movl	$m_flash_info, 4(%eax)
	.loc 1 3142 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE157:
	.size	init, .-init
	.section	.text.unlikely.init
.LCOLDE0:
	.section	.text.init
.LHOTE0:
	.section	.text.unlikely.rmap,"ax",@progbits
.LCOLDB1:
	.section	.text.rmap,"ax",@progbits
.LHOTB1:
	.type	rmap, @function
rmap:
.LFB162:
	.loc 1 3191 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3194 0
	movl	12(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE162:
	.size	rmap, .-rmap
	.section	.text.unlikely.rmap
.LCOLDE1:
	.section	.text.rmap
.LHOTE1:
	.section	.text.unlikely.wmap,"ax",@progbits
.LCOLDB2:
	.section	.text.wmap,"ax",@progbits
.LHOTB2:
	.type	wmap, @function
wmap:
.LFB163:
	.loc 1 3196 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3202 0
	xorl	%eax, %eax
	.loc 1 3196 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3202 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE163:
	.size	wmap, .-wmap
	.section	.text.unlikely.wmap
.LCOLDE2:
	.section	.text.wmap
.LHOTE2:
	.section	.text.unlikely.is_busy,"ax",@progbits
.LCOLDB3:
	.section	.text.is_busy,"ax",@progbits
.LHOTB3:
	.type	is_busy, @function
is_busy:
.LFB164:
	.loc 1 3206 0
	.cfi_startproc
.LVL3:
	.loc 1 3208 0
	movl	m_flash_operation_ongoing, %eax
	.loc 1 3206 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3208 0
	testl	%eax, %eax
	setne	%al
	.loc 1 3209 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE164:
	.size	is_busy, .-is_busy
	.section	.text.unlikely.is_busy
.LCOLDE3:
	.section	.text.is_busy
.LHOTE3:
	.section	.text.unlikely.read,"ax",@progbits
.LCOLDB4:
	.section	.text.read,"ax",@progbits
.LHOTB4:
	.type	read, @function
read:
.LFB159:
	.loc 1 3151 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3155 0
	xorl	%eax, %eax
	.loc 1 3151 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 3151 0
	movl	20(%ebp), %ecx
	movl	12(%ebp), %esi
	.loc 1 3153 0
	movl	16(%ebp), %edi
	rep movsb
	.loc 1 3155 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE159:
	.size	read, .-read
	.section	.text.unlikely.read
.LCOLDE4:
	.section	.text.read
.LHOTE4:
	.section	.text.unlikely.nrf_atomic_flag_clear.constprop.5,"ax",@progbits
.LCOLDB5:
	.section	.text.nrf_atomic_flag_clear.constprop.5,"ax",@progbits
.LHOTB5:
	.type	nrf_atomic_flag_clear.constprop.5, @function
nrf_atomic_flag_clear.constprop.5:
.LFB169:
	.loc 1 3099 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB7:
.LBB8:
.LBB9:
	.loc 1 3028 0
	xorl	%ecx, %ecx
	movl	$m_flash_operation_ongoing, %edx
.LBE9:
.LBE8:
.LBE7:
	.loc 1 3099 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LBB12:
.LBB11:
.LBB10:
	.loc 1 3028 0
#APP
# 3028 "src/nrf_fstorage_nvmc.c" 1
	1:     ldrex   %ebx, [%edx]
and %eax, %ebx, %ecx
       strex   %esi, %eax, [%edx]
       teq     %esi, #0
       bne.n     1b
# 0 "" 2
.LVL6:
#NO_APP
.LBE10:
.LBE11:
.LBE12:
	.loc 1 3102 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE169:
	.size	nrf_atomic_flag_clear.constprop.5, .-nrf_atomic_flag_clear.constprop.5
	.section	.text.unlikely.nrf_atomic_flag_clear.constprop.5
.LCOLDE5:
	.section	.text.nrf_atomic_flag_clear.constprop.5
.LHOTE5:
	.section	.text.unlikely.uninit,"ax",@progbits
.LCOLDB6:
	.section	.text.uninit,"ax",@progbits
.LHOTB6:
	.type	uninit, @function
uninit:
.LFB158:
	.loc 1 3144 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3147 0
	call	nrf_atomic_flag_clear.constprop.5
.LVL8:
	.loc 1 3149 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE158:
	.size	uninit, .-uninit
	.section	.text.unlikely.uninit
.LCOLDE6:
	.section	.text.uninit
.LHOTE6:
	.section	.text.unlikely.erase,"ax",@progbits
.LCOLDB7:
	.section	.text.erase,"ax",@progbits
.LHOTB7:
	.type	erase, @function
erase:
.LFB161:
	.loc 1 3175 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.loc 1 3001 0
	movl	$1, %edx
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 3175 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3175 0
	movl	20(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL10:
.LBB29:
.LBB28:
.LBB27:
.LBB26:
	.loc 1 3001 0
	movl	$m_flash_operation_ongoing, %eax
#APP
# 3001 "src/nrf_fstorage_nvmc.c" 1
	1:     ldrex   %ecx, [%eax]
orr %esi, %ecx, %edx
       strex   %edi, %esi, [%eax]
       teq     %edi, #0
       bne.n     1b
# 0 "" 2
.LVL11:
#NO_APP
.LBE26:
.LBE27:
.LBE28:
.LBE29:
	.loc 1 3177 0
	testl	%ecx, %ecx
	.loc 1 3179 0
	movl	$17, %esi
	.loc 1 3177 0
	jne	.L16
	movl	12(%ebp), %edi
	xorl	%esi, %esi
.L17:
.LVL12:
.LBB30:
.LBB31:
	.loc 1 3181 0
	cmpl	%esi, 16(%ebp)
	je	.L25
	.loc 1 3183 0
	subl	$12, %esp
	.loc 1 3184 0
	incl	%esi
.LVL13:
	.loc 1 3183 0
	pushl	%edi
	addl	$4096, %edi
	call	nrf_nvmc_page_erase
.LVL14:
	addl	$16, %esp
	jmp	.L17
.L25:
	.loc 1 3186 0
	call	nrf_atomic_flag_clear.constprop.5
.LVL15:
	movl	8(%ebx), %eax
.LVL16:
.LBB32:
.LBB33:
	.loc 1 3125 0
	xorl	%esi, %esi
.LVL17:
	.loc 1 3121 0
	testl	%eax, %eax
	je	.L16
	.loc 1 3127 0
	movl	-60(%ebp), %edx
	.loc 1 3135 0
	subl	$12, %esp
	.loc 1 3127 0
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	$2, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	%edx, -32(%ebp)
	.loc 1 3135 0
	leal	-48(%ebp), %edx
	.loc 1 3127 0
	movl	%ecx, -40(%ebp)
	movl	%ebx, -36(%ebp)
	.loc 1 3135 0
	pushl	%edx
	call	*%eax
.LVL18:
	addl	$16, %esp
.LVL19:
.L16:
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 3189 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%esi, %eax
	je	.L20
	call	__stack_chk_fail
.LVL20:
.L20:
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
.LFE161:
	.size	erase, .-erase
	.section	.text.unlikely.erase
.LCOLDE7:
	.section	.text.erase
.LHOTE7:
	.section	.text.unlikely.write,"ax",@progbits
.LCOLDB8:
	.section	.text.write,"ax",@progbits
.LHOTB8:
	.type	write, @function
write:
.LFB160:
	.loc 1 3161 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB43:
.LBB44:
.LBB45:
.LBB46:
	.loc 1 3001 0
	movl	$1, %edx
.LBE46:
.LBE45:
.LBE44:
.LBE43:
	.loc 1 3161 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3161 0
	movl	8(%ebp), %eax
	movl	24(%ebp), %edi
	movl	%eax, -60(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL22:
.LBB50:
.LBB49:
.LBB48:
.LBB47:
	.loc 1 3001 0
	movl	$m_flash_operation_ongoing, %eax
#APP
# 3001 "src/nrf_fstorage_nvmc.c" 1
	1:     ldrex   %ebx, [%eax]
orr %esi, %ebx, %edx
       strex   %ecx, %esi, [%eax]
       teq     %ecx, #0
       bne.n     1b
# 0 "" 2
.LVL23:
#NO_APP
.LBE47:
.LBE48:
.LBE49:
.LBE50:
	.loc 1 3162 0
	testl	%ebx, %ebx
	.loc 1 3164 0
	movl	$17, %esi
	.loc 1 3162 0
	jne	.L27
.LVL24:
.LBB51:
.LBB52:
	.loc 1 3166 0
	pushl	%eax
	movl	20(%ebp), %eax
.LBB53:
.LBB54:
	.loc 1 3125 0
	xorl	%esi, %esi
.LBE54:
.LBE53:
	.loc 1 3166 0
	shrl	$2, %eax
	pushl	%eax
	pushl	-64(%ebp)
	pushl	12(%ebp)
	call	nrf_nvmc_write_words
.LVL25:
	.loc 1 3167 0
	call	nrf_atomic_flag_clear.constprop.5
.LVL26:
	movl	-60(%ebp), %eax
.LBB56:
.LBB55:
	.loc 1 3121 0
	addl	$16, %esp
	movl	8(%eax), %eax
.LVL27:
	testl	%eax, %eax
	je	.L27
	.loc 1 3135 0
	leal	-48(%ebp), %edx
	subl	$12, %esp
	.loc 1 3127 0
	movl	12(%ebp), %ecx
	movl	20(%ebp), %ebx
	movl	$1, -48(%ebp)
	.loc 1 3135 0
	pushl	%edx
	.loc 1 3127 0
	movl	$0, -44(%ebp)
	movl	%ecx, -40(%ebp)
	movl	%edi, -32(%ebp)
	movl	%ebx, -36(%ebp)
	.loc 1 3135 0
	call	*%eax
.LVL28:
	addl	$16, %esp
.LVL29:
.L27:
.LBE55:
.LBE56:
.LBE52:
.LBE51:
	.loc 1 3170 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%esi, %eax
	je	.L29
	call	__stack_chk_fail
.LVL30:
.L29:
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
.LFE160:
	.size	write, .-write
	.section	.text.unlikely.write
.LCOLDE8:
	.section	.text.write
.LHOTE8:
	.globl	nrf_fstorage_nvmc
	.section	.rodata.nrf_fstorage_nvmc,"a",@progbits
	.align 32
	.type	nrf_fstorage_nvmc, @object
	.size	nrf_fstorage_nvmc, 32
nrf_fstorage_nvmc:
	.long	init
	.long	uninit
	.long	read
	.long	write
	.long	erase
	.long	rmap
	.long	wmap
	.long	is_busy
	.section	.bss.m_flash_operation_ongoing,"aw",@nobits
	.align 4
	.type	m_flash_operation_ongoing, @object
	.size	m_flash_operation_ongoing, 4
m_flash_operation_ongoing:
	.zero	4
	.section	.rodata.m_flash_info,"a",@progbits
	.align 4
	.type	m_flash_info, @object
	.size	m_flash_info, 12
m_flash_info:
	.long	4096
	.long	4
	.byte	1
	.byte	0
	.zero	2
	.text
.Letext0:
	.section	.text.unlikely.init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa6a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF73
	.byte	0xc
	.long	.LASF74
	.long	.LASF75
	.long	.Ldebug_ranges0+0x60
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
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.value	0x124
	.long	0xa2
	.uleb128 0x7
	.long	0xa2
	.uleb128 0x7
	.long	0x97
	.uleb128 0x8
	.byte	0x4
	.long	0x8c
	.uleb128 0x9
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xb5a
	.long	0x100
	.uleb128 0xa
	.long	.LASF19
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.value	0xb5e
	.long	0xe0
	.uleb128 0xb
	.byte	0x14
	.byte	0x1
	.value	0xb5f
	.long	0x156
	.uleb128 0xc
	.string	"id"
	.byte	0x1
	.value	0xb61
	.long	0x100
	.byte	0
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0xb62
	.long	0xc4
	.byte	0x4
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.value	0xb63
	.long	0xa2
	.byte	0x8
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.value	0xb64
	.long	0xa2
	.byte	0xc
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.value	0xb65
	.long	0xbb
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.value	0xb66
	.long	0x10c
	.uleb128 0x6
	.long	.LASF27
	.byte	0x1
	.value	0xb67
	.long	0x16e
	.uleb128 0x8
	.byte	0x4
	.long	0x174
	.uleb128 0xe
	.long	0x17f
	.uleb128 0xf
	.long	0x17f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x156
	.uleb128 0xb
	.byte	0xc
	.byte	0x1
	.value	0xb68
	.long	0x1c3
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0xb6a
	.long	0xa2
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.value	0xb6b
	.long	0xa2
	.byte	0x4
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.value	0xb6d
	.long	0x1c3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.value	0xb6f
	.long	0x1c3
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF32
	.uleb128 0x6
	.long	.LASF33
	.byte	0x1
	.value	0xb70
	.long	0x1d6
	.uleb128 0x10
	.long	0x185
	.uleb128 0xb
	.byte	0x14
	.byte	0x1
	.value	0xb72
	.long	0x226
	.uleb128 0xd
	.long	.LASF34
	.byte	0x1
	.value	0xb74
	.long	0x29c
	.byte	0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.value	0xb75
	.long	0x2a7
	.byte	0x4
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.value	0xb76
	.long	0x162
	.byte	0x8
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.value	0xb77
	.long	0xa2
	.byte	0xc
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0xb78
	.long	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x20
	.byte	0x1
	.value	0xb7a
	.long	0x29c
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.value	0xb7c
	.long	0x2d3
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x1
	.value	0xb7d
	.long	0x2d3
	.byte	0x4
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.value	0xb7e
	.long	0x302
	.byte	0x8
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.value	0xb7f
	.long	0x332
	.byte	0xc
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.value	0xb80
	.long	0x356
	.byte	0x10
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.value	0xb81
	.long	0x37b
	.byte	0x14
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.value	0xb82
	.long	0x395
	.byte	0x18
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.value	0xb84
	.long	0x3aa
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2a2
	.uleb128 0x10
	.long	0x226
	.uleb128 0x8
	.byte	0x4
	.long	0x1ca
	.uleb128 0x6
	.long	.LASF45
	.byte	0x1
	.value	0xb79
	.long	0x1db
	.uleb128 0x12
	.long	0xc4
	.long	0x2cd
	.uleb128 0xf
	.long	0x2cd
	.uleb128 0xf
	.long	0xbb
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2ad
	.uleb128 0x8
	.byte	0x4
	.long	0x2b9
	.uleb128 0x12
	.long	0xc4
	.long	0x2f7
	.uleb128 0xf
	.long	0x2f7
	.uleb128 0xf
	.long	0xa2
	.uleb128 0xf
	.long	0xbb
	.uleb128 0xf
	.long	0xa2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2fd
	.uleb128 0x10
	.long	0x2ad
	.uleb128 0x8
	.byte	0x4
	.long	0x2d9
	.uleb128 0x12
	.long	0xc4
	.long	0x32b
	.uleb128 0xf
	.long	0x2f7
	.uleb128 0xf
	.long	0xa2
	.uleb128 0xf
	.long	0x32b
	.uleb128 0xf
	.long	0xa2
	.uleb128 0xf
	.long	0xbb
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x331
	.uleb128 0x13
	.uleb128 0x8
	.byte	0x4
	.long	0x308
	.uleb128 0x12
	.long	0xc4
	.long	0x356
	.uleb128 0xf
	.long	0x2f7
	.uleb128 0xf
	.long	0xa2
	.uleb128 0xf
	.long	0xa2
	.uleb128 0xf
	.long	0xbb
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x338
	.uleb128 0x12
	.long	0x370
	.long	0x370
	.uleb128 0xf
	.long	0x2f7
	.uleb128 0xf
	.long	0xa2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x376
	.uleb128 0x10
	.long	0x8c
	.uleb128 0x8
	.byte	0x4
	.long	0x35c
	.uleb128 0x12
	.long	0xda
	.long	0x395
	.uleb128 0xf
	.long	0x2f7
	.uleb128 0xf
	.long	0xa2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x381
	.uleb128 0x12
	.long	0x1c3
	.long	0x3aa
	.uleb128 0xf
	.long	0x2f7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x39b
	.uleb128 0x6
	.long	.LASF46
	.byte	0x1
	.value	0xb85
	.long	0x2a2
	.uleb128 0x6
	.long	.LASF47
	.byte	0x1
	.value	0xba1
	.long	0xd0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x1
	.value	0xba2
	.long	0xd0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.value	0xc2b
	.byte	0x1
	.long	0x42a
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0xc2b
	.long	0x2f7
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.value	0xc2c
	.long	0x100
	.uleb128 0x15
	.long	.LASF24
	.byte	0x1
	.value	0xc2d
	.long	0xa2
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0xc2e
	.long	0xa2
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.value	0xc2f
	.long	0xbb
	.uleb128 0x17
	.string	"evt"
	.byte	0x1
	.value	0xc37
	.long	0x156
	.byte	0
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.value	0xc63
	.long	0xc4
	.byte	0x1
	.long	0x478
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0xc63
	.long	0x2f7
	.uleb128 0x15
	.long	.LASF51
	.byte	0x1
	.value	0xc64
	.long	0xa2
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0xc65
	.long	0xa2
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.value	0xc66
	.long	0xbb
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.value	0xc68
	.long	0xa2
	.byte	0
	.uleb128 0x18
	.long	.LASF42
	.byte	0x1
	.value	0xc54
	.long	0xc4
	.byte	0x1
	.long	0x4c6
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0xc54
	.long	0x2f7
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.value	0xc55
	.long	0xa2
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.value	0xc56
	.long	0x32b
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0xc57
	.long	0xa2
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.value	0xc58
	.long	0xbb
	.byte	0
	.uleb128 0x18
	.long	.LASF55
	.byte	0x1
	.value	0xbd0
	.long	0xa2
	.byte	0x3
	.long	0x516
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0xbd0
	.long	0x516
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0xbd0
	.long	0xa2
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.value	0xbd2
	.long	0xa2
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.value	0xbd3
	.long	0xa2
	.uleb128 0x1a
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0xbd4
	.long	0xa2
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3bc
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.value	0xc1b
	.long	0xa2
	.byte	0x3
	.long	0x53a
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0xc1b
	.long	0x53a
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x3c8
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.value	0xbb5
	.long	0xa2
	.byte	0x3
	.long	0x590
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0xbb5
	.long	0x516
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0xbb5
	.long	0xa2
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.value	0xbb7
	.long	0xa2
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.value	0xbb8
	.long	0xa2
	.uleb128 0x1a
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0xbb9
	.long	0xa2
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.value	0xc0f
	.long	0xa2
	.byte	0x3
	.long	0x5ae
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0xc0f
	.long	0x53a
	.byte	0
	.uleb128 0x1b
	.long	.LASF39
	.byte	0x1
	.value	0xc41
	.long	0xc4
	.long	.LFB157
	.long	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e7
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.value	0xc41
	.long	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x1
	.value	0xc41
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.long	.LASF30
	.byte	0x1
	.value	0xc76
	.long	0x370
	.long	.LFB162
	.long	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x620
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.value	0xc76
	.long	0x2f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x1
	.value	0xc76
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.long	.LASF31
	.byte	0x1
	.value	0xc7b
	.long	0xda
	.long	.LFB163
	.long	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x659
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.value	0xc7b
	.long	0x2f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x1
	.value	0xc7b
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.long	.LASF44
	.byte	0x1
	.value	0xc85
	.long	0x1c3
	.long	.LFB164
	.long	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x683
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.value	0xc85
	.long	0x2f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x1
	.value	0xc4e
	.long	0xc4
	.long	.LFB159
	.long	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x6da
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.value	0xc4e
	.long	0x2f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.value	0xc4e
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.value	0xc4e
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0xc4e
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x1e
	.long	0x51c
	.long	.LFB169
	.long	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.long	0x738
	.uleb128 0x1f
	.long	0x52d
	.uleb128 0x6
	.byte	0x3
	.long	m_flash_operation_ongoing
	.byte	0x9f
	.uleb128 0x20
	.long	0x4c6
	.long	.LBB7
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xc1d
	.uleb128 0x21
	.long	0x4d7
	.long	.LLST0
	.uleb128 0x21
	.long	0x4e3
	.long	.LLST1
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x23
	.long	0x4ef
	.uleb128 0x23
	.long	0x4fb
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x23
	.long	0x508
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x1
	.value	0xc47
	.long	0xc4
	.long	.LFB158
	.long	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.long	0x77a
	.uleb128 0x1c
	.long	.LASF49
	.byte	0x1
	.value	0xc47
	.long	0x2cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x1
	.value	0xc47
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LVL8
	.long	0x6da
	.byte	0
	.uleb128 0x25
	.long	0x42a
	.long	.LFB161
	.long	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b4
	.uleb128 0x1f
	.long	0x43b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	0x447
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	0x453
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.long	0x45f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.long	0x46b
	.byte	0
	.uleb128 0x27
	.long	0x590
	.long	.LBB22
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xc69
	.long	0x80f
	.uleb128 0x21
	.long	0x5a1
	.long	.LLST2
	.uleb128 0x20
	.long	0x540
	.long	.LBB23
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xc11
	.uleb128 0x21
	.long	0x551
	.long	.LLST2
	.uleb128 0x21
	.long	0x55d
	.long	.LLST4
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.long	0x569
	.uleb128 0x23
	.long	0x575
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.long	0x582
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LBB30
	.long	.LBE30-.LBB30
	.long	0x8aa
	.uleb128 0x29
	.long	0x45f
	.uleb128 0x29
	.long	0x453
	.uleb128 0x29
	.long	0x447
	.uleb128 0x29
	.long	0x43b
	.uleb128 0x2a
	.long	.LBB31
	.long	.LBE31-.LBB31
	.uleb128 0x2b
	.long	0x46b
	.long	.LLST5
	.uleb128 0x2c
	.long	0x3d4
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.value	0xc73
	.long	0x896
	.uleb128 0x21
	.long	0x3e1
	.long	.LLST6
	.uleb128 0x21
	.long	0x411
	.long	.LLST7
	.uleb128 0x21
	.long	0x405
	.long	.LLST8
	.uleb128 0x21
	.long	0x3f9
	.long	.LLST9
	.uleb128 0x21
	.long	0x3ed
	.long	.LLST10
	.uleb128 0x2a
	.long	.LBB33
	.long	.LBE33-.LBB33
	.uleb128 0x2d
	.long	0x41d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LVL14
	.long	0xa4c
	.uleb128 0x24
	.long	.LVL15
	.long	0x6da
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LVL20
	.long	0xa58
	.byte	0
	.uleb128 0x25
	.long	0x478
	.long	.LFB160
	.long	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f2
	.uleb128 0x1f
	.long	0x489
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.long	0x4b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.long	0x590
	.long	.LBB43
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0xc5a
	.long	0x94b
	.uleb128 0x21
	.long	0x5a1
	.long	.LLST11
	.uleb128 0x20
	.long	0x540
	.long	.LBB44
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0xc11
	.uleb128 0x21
	.long	0x551
	.long	.LLST11
	.uleb128 0x21
	.long	0x55d
	.long	.LLST13
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.long	0x569
	.uleb128 0x23
	.long	0x575
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.long	0x582
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LBB51
	.long	.LBE51-.LBB51
	.long	0x9e8
	.uleb128 0x21
	.long	0x4b9
	.long	.LLST14
	.uleb128 0x21
	.long	0x4ad
	.long	.LLST15
	.uleb128 0x21
	.long	0x4a1
	.long	.LLST16
	.uleb128 0x21
	.long	0x495
	.long	.LLST17
	.uleb128 0x21
	.long	0x489
	.long	.LLST18
	.uleb128 0x27
	.long	0x3d4
	.long	.LBB53
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0xc60
	.long	0x9d5
	.uleb128 0x21
	.long	0x3e1
	.long	.LLST19
	.uleb128 0x21
	.long	0x411
	.long	.LLST20
	.uleb128 0x21
	.long	0x405
	.long	.LLST21
	.uleb128 0x21
	.long	0x3f9
	.long	.LLST22
	.uleb128 0x21
	.long	0x3ed
	.long	.LLST23
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x2d
	.long	0x41d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LVL25
	.long	0xa61
	.uleb128 0x24
	.long	.LVL26
	.long	0x6da
	.byte	0
	.uleb128 0x24
	.long	.LVL30
	.long	0xa58
	.byte	0
	.uleb128 0x2e
	.long	.LASF65
	.byte	0x1
	.value	0xc1f
	.long	0x1ca
	.uleb128 0x5
	.byte	0x3
	.long	m_flash_info
	.uleb128 0x2e
	.long	.LASF66
	.byte	0x1
	.value	0xc2a
	.long	0x3c8
	.uleb128 0x5
	.byte	0x3
	.long	m_flash_operation_ongoing
	.uleb128 0x2f
	.long	.LASF67
	.byte	0x1
	.value	0x4fe
	.long	0xd5
	.uleb128 0x2f
	.long	.LASF68
	.byte	0x1
	.value	0xac0
	.long	0xa2
	.uleb128 0x2f
	.long	.LASF69
	.byte	0x1
	.value	0xac1
	.long	0xa2
	.uleb128 0x30
	.long	.LASF70
	.byte	0x1
	.value	0xc8a
	.long	0x3b0
	.uleb128 0x5
	.byte	0x3
	.long	nrf_fstorage_nvmc
	.uleb128 0x31
	.long	.LASF71
	.long	.LASF71
	.byte	0x1
	.value	0xb9c
	.uleb128 0x32
	.long	.LASF78
	.long	.LASF78
	.uleb128 0x31
	.long	.LASF72
	.long	.LASF72
	.byte	0x1
	.value	0xba0
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.long	.LVL5
	.long	.LVL6
	.value	0x6
	.byte	0x3
	.long	m_flash_operation_ongoing
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL11
	.value	0x6
	.byte	0x3
	.long	m_flash_operation_ongoing
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x56
	.long	.LVL13
	.long	.LVL14
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL14
	.long	.LVL17
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL19
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL19
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL22
	.long	.LVL23
	.value	0x6
	.byte	0x3
	.long	m_flash_operation_ongoing
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL24
	.long	.LVL29
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST15:
	.long	.LVL24
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST16:
	.long	.LVL24
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST17:
	.long	.LVL24
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST18:
	.long	.LVL24
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL27
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL27
	.long	.LVL29
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST21:
	.long	.LVL27
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST22:
	.long	.LVL27
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST23:
	.long	.LVL27
	.long	.LVL29
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB157
	.long	.LFE157-.LFB157
	.long	.LFB162
	.long	.LFE162-.LFB162
	.long	.LFB163
	.long	.LFE163-.LFB163
	.long	.LFB164
	.long	.LFE164-.LFB164
	.long	.LFB159
	.long	.LFE159-.LFB159
	.long	.LFB169
	.long	.LFE169-.LFB169
	.long	.LFB158
	.long	.LFE158-.LFB158
	.long	.LFB161
	.long	.LFE161-.LFB161
	.long	.LFB160
	.long	.LFE160-.LFB160
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB12
	.long	.LBE12
	.long	0
	.long	0
	.long	.LBB22
	.long	.LBE22
	.long	.LBB29
	.long	.LBE29
	.long	0
	.long	0
	.long	.LBB43
	.long	.LBE43
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LBB53
	.long	.LBE53
	.long	.LBB56
	.long	.LBE56
	.long	0
	.long	0
	.long	.LFB157
	.long	.LFE157
	.long	.LFB162
	.long	.LFE162
	.long	.LFB163
	.long	.LFE163
	.long	.LFB164
	.long	.LFE164
	.long	.LFB159
	.long	.LFE159
	.long	.LFB169
	.long	.LFE169
	.long	.LFB158
	.long	.LFE158
	.long	.LFB161
	.long	.LFE161
	.long	.LFB160
	.long	.LFE160
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"start_addr"
.LASF61:
	.string	"nrf_atomic_flag_clear"
.LASF23:
	.string	"result"
.LASF34:
	.string	"p_api"
.LASF27:
	.string	"nrf_fstorage_evt_handler_t"
.LASF42:
	.string	"write"
.LASF21:
	.string	"NRF_FSTORAGE_EVT_ERASE_RESULT"
.LASF45:
	.string	"nrf_fstorage_t"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"nrf_fstorage_evt_id_t"
.LASF16:
	.string	"sizetype"
.LASF19:
	.string	"NRF_FSTORAGE_EVT_READ_RESULT"
.LASF7:
	.string	"__uint32_t"
.LASF74:
	.string	"src/nrf_fstorage_nvmc.c"
.LASF51:
	.string	"page_addr"
.LASF57:
	.string	"value"
.LASF70:
	.string	"nrf_fstorage_nvmc"
.LASF12:
	.string	"uint8_t"
.LASF64:
	.string	"p_dest"
.LASF35:
	.string	"p_flash_info"
.LASF36:
	.string	"evt_handler"
.LASF76:
	.string	"nrf_fstorage_api_s"
.LASF46:
	.string	"nrf_fstorage_api_t"
.LASF41:
	.string	"read"
.LASF28:
	.string	"erase_unit"
.LASF9:
	.string	"long long int"
.LASF29:
	.string	"program_unit"
.LASF58:
	.string	"old_val"
.LASF48:
	.string	"nrf_atomic_flag_t"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"nrf_atomic_u32_fetch_or"
.LASF49:
	.string	"p_fs"
.LASF52:
	.string	"progress"
.LASF68:
	.string	"__StackTop"
.LASF4:
	.string	"__uint8_t"
.LASF38:
	.string	"end_addr"
.LASF53:
	.string	"dest"
.LASF60:
	.string	"str_res"
.LASF30:
	.string	"rmap"
.LASF54:
	.string	"p_src"
.LASF15:
	.string	"long double"
.LASF63:
	.string	"nrf_atomic_flag_set_fetch"
.LASF1:
	.string	"unsigned char"
.LASF55:
	.string	"nrf_atomic_u32_and"
.LASF50:
	.string	"evt_id"
.LASF5:
	.string	"__int32_t"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF44:
	.string	"is_busy"
.LASF40:
	.string	"uninit"
.LASF3:
	.string	"short unsigned int"
.LASF47:
	.string	"nrf_atomic_u32_t"
.LASF17:
	.string	"char"
.LASF39:
	.string	"init"
.LASF13:
	.string	"int32_t"
.LASF65:
	.string	"m_flash_info"
.LASF24:
	.string	"addr"
.LASF25:
	.string	"p_param"
.LASF32:
	.string	"_Bool"
.LASF20:
	.string	"NRF_FSTORAGE_EVT_WRITE_RESULT"
.LASF31:
	.string	"wmap"
.LASF8:
	.string	"long unsigned int"
.LASF71:
	.string	"nrf_nvmc_page_erase"
.LASF72:
	.string	"nrf_nvmc_write_words"
.LASF59:
	.string	"new_val"
.LASF77:
	.string	"event_send"
.LASF73:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF33:
	.string	"nrf_fstorage_info_t"
.LASF43:
	.string	"erase"
.LASF66:
	.string	"m_flash_operation_ongoing"
.LASF75:
	.string	"/home/stone/Documents/pca"
.LASF56:
	.string	"p_data"
.LASF69:
	.string	"__StackLimit"
.LASF78:
	.string	"__stack_chk_fail"
.LASF67:
	.string	"ITM_RxBuffer"
.LASF26:
	.string	"nrf_fstorage_evt_t"
.LASF18:
	.string	"ret_code_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

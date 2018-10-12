	.file	"nrf_nvic.c"
	.text
.Ltext0:
	.section	.text.unlikely.sd_nvic_EnableIRQ,"ax",@progbits
.LCOLDB0:
	.section	.text.sd_nvic_EnableIRQ,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sd_nvic_EnableIRQ
.Ltext_cold0:
	.section	.text.sd_nvic_EnableIRQ
	.globl	sd_nvic_EnableIRQ
	.type	sd_nvic_EnableIRQ, @function
sd_nvic_EnableIRQ:
.LFB124:
	.file 1 "src/nrf_nvic.c"
	.loc 1 2844 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB14:
.LBB15:
	.loc 1 1270 0
	movl	$1, %eax
.LBE15:
.LBE14:
	.loc 1 2844 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2844 0
	movl	8(%ebp), %ecx
.LVL1:
.LBB17:
.LBB16:
	.loc 1 1270 0
	movl	%ecx, %edx
	sall	%cl, %eax
	shrl	$5, %edx
	movl	%eax, -536813312(,%edx,4)
.LVL2:
.LBE16:
.LBE17:
	.loc 1 2847 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE124:
	.size	sd_nvic_EnableIRQ, .-sd_nvic_EnableIRQ
	.section	.text.unlikely.sd_nvic_EnableIRQ
.LCOLDE0:
	.section	.text.sd_nvic_EnableIRQ
.LHOTE0:
	.section	.text.unlikely.sd_nvic_DisableIRQ,"ax",@progbits
.LCOLDB1:
	.section	.text.sd_nvic_DisableIRQ,"ax",@progbits
.LHOTB1:
	.globl	sd_nvic_DisableIRQ
	.type	sd_nvic_DisableIRQ, @function
sd_nvic_DisableIRQ:
.LFB125:
	.loc 1 2849 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB20:
.LBB21:
	.loc 1 1274 0
	movl	$1, %edx
.LBE21:
.LBE20:
	.loc 1 2849 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2849 0
	movl	8(%ebp), %ecx
.LVL4:
.LBB23:
.LBB22:
	.loc 1 1274 0
	movl	%ecx, %eax
	sall	%cl, %edx
	shrl	$5, %eax
	addl	$32, %eax
	movl	%edx, -536813312(,%eax,4)
.LVL5:
.LBE22:
.LBE23:
	.loc 1 2852 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE125:
	.size	sd_nvic_DisableIRQ, .-sd_nvic_DisableIRQ
	.section	.text.unlikely.sd_nvic_DisableIRQ
.LCOLDE1:
	.section	.text.sd_nvic_DisableIRQ
.LHOTE1:
	.section	.text.unlikely.sd_nvic_GetPendingIRQ,"ax",@progbits
.LCOLDB2:
	.section	.text.sd_nvic_GetPendingIRQ,"ax",@progbits
.LHOTB2:
	.globl	sd_nvic_GetPendingIRQ
	.type	sd_nvic_GetPendingIRQ, @function
sd_nvic_GetPendingIRQ:
.LFB126:
	.loc 1 2854 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$14, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2854 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	.loc 1 2855 0
	testl	%edx, %edx
	je	.L6
.LVL7:
.LBB26:
.LBB27:
	.loc 1 1278 0
	movl	%ecx, %eax
	shrl	$5, %eax
	addl	$64, %eax
	movl	-536813312(,%eax,4), %eax
.LVL8:
.LBE27:
.LBE26:
	.loc 1 2859 0
	shrl	%cl, %eax
	andl	$1, %eax
	movl	%eax, (%edx)
	.loc 1 2860 0
	xorl	%eax, %eax
.L6:
	.loc 1 2863 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE126:
	.size	sd_nvic_GetPendingIRQ, .-sd_nvic_GetPendingIRQ
	.section	.text.unlikely.sd_nvic_GetPendingIRQ
.LCOLDE2:
	.section	.text.sd_nvic_GetPendingIRQ
.LHOTE2:
	.section	.text.unlikely.sd_nvic_SetPendingIRQ,"ax",@progbits
.LCOLDB3:
	.section	.text.sd_nvic_SetPendingIRQ,"ax",@progbits
.LHOTB3:
	.globl	sd_nvic_SetPendingIRQ
	.type	sd_nvic_SetPendingIRQ, @function
sd_nvic_SetPendingIRQ:
.LFB127:
	.loc 1 2865 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB30:
.LBB31:
	.loc 1 1282 0
	movl	$1, %edx
.LBE31:
.LBE30:
	.loc 1 2865 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2865 0
	movl	8(%ebp), %ecx
.LVL10:
.LBB33:
.LBB32:
	.loc 1 1282 0
	movl	%ecx, %eax
	sall	%cl, %edx
	shrl	$5, %eax
	addl	$64, %eax
	movl	%edx, -536813312(,%eax,4)
.LVL11:
.LBE32:
.LBE33:
	.loc 1 2868 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE127:
	.size	sd_nvic_SetPendingIRQ, .-sd_nvic_SetPendingIRQ
	.section	.text.unlikely.sd_nvic_SetPendingIRQ
.LCOLDE3:
	.section	.text.sd_nvic_SetPendingIRQ
.LHOTE3:
	.section	.text.unlikely.sd_nvic_ClearPendingIRQ,"ax",@progbits
.LCOLDB4:
	.section	.text.sd_nvic_ClearPendingIRQ,"ax",@progbits
.LHOTB4:
	.globl	sd_nvic_ClearPendingIRQ
	.type	sd_nvic_ClearPendingIRQ, @function
sd_nvic_ClearPendingIRQ:
.LFB128:
	.loc 1 2870 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB36:
.LBB37:
	.loc 1 1286 0
	movl	$1, %edx
.LBE37:
.LBE36:
	.loc 1 2870 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2870 0
	movl	8(%ebp), %ecx
.LVL13:
.LBB39:
.LBB38:
	.loc 1 1286 0
	movl	%ecx, %eax
	sall	%cl, %edx
	shrl	$5, %eax
	addl	$96, %eax
	movl	%edx, -536813312(,%eax,4)
.LVL14:
.LBE38:
.LBE39:
	.loc 1 2873 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE128:
	.size	sd_nvic_ClearPendingIRQ, .-sd_nvic_ClearPendingIRQ
	.section	.text.unlikely.sd_nvic_ClearPendingIRQ
.LCOLDE4:
	.section	.text.sd_nvic_ClearPendingIRQ
.LHOTE4:
	.section	.text.unlikely.sd_nvic_SetPriority,"ax",@progbits
.LCOLDB5:
	.section	.text.sd_nvic_SetPriority,"ax",@progbits
.LHOTB5:
	.globl	sd_nvic_SetPriority
	.type	sd_nvic_SetPriority, @function
sd_nvic_SetPriority:
.LFB129:
	.loc 1 2875 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2875 0
	movl	8(%ebp), %eax
.LVL16:
	movl	12(%ebp), %edx
.LVL17:
.LBB42:
.LBB43:
	.loc 1 1294 0
	testl	%eax, %eax
	jns	.L17
	.loc 1 1296 0
	andl	$15, %eax
	sall	$5, %edx
	movb	%dl, -536810220(%eax)
.LVL18:
	jmp	.L18
.LVL19:
.L17:
	.loc 1 1300 0
	sall	$5, %edx
.LVL20:
	movb	%dl, -536812544(%eax)
.LVL21:
.L18:
.LBE43:
.LBE42:
	.loc 1 2878 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE129:
	.size	sd_nvic_SetPriority, .-sd_nvic_SetPriority
	.section	.text.unlikely.sd_nvic_SetPriority
.LCOLDE5:
	.section	.text.sd_nvic_SetPriority
.LHOTE5:
	.section	.text.unlikely.sd_nvic_GetPriority,"ax",@progbits
.LCOLDB6:
	.section	.text.sd_nvic_GetPriority,"ax",@progbits
.LHOTB6:
	.globl	sd_nvic_GetPriority
	.type	sd_nvic_GetPriority, @function
sd_nvic_GetPriority:
.LFB130:
	.loc 1 2880 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$14, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2880 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	.loc 1 2881 0
	testl	%edx, %edx
	je	.L21
.LVL23:
.LBB46:
.LBB47:
	.loc 1 1305 0
	testl	%ecx, %ecx
	jns	.L22
	.loc 1 1307 0
	andl	$15, %ecx
	movb	-536810220(%ecx), %al
	jmp	.L28
.LVL24:
.L22:
	.loc 1 1311 0
	movb	-536812544(%ecx), %al
.LVL25:
.L28:
	shrb	$5, %al
	movzbl	%al, %eax
.LVL26:
.LBE47:
.LBE46:
	.loc 1 2885 0
	movl	%eax, (%edx)
	.loc 1 2886 0
	xorl	%eax, %eax
.LVL27:
.L21:
	.loc 1 2889 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE130:
	.size	sd_nvic_GetPriority, .-sd_nvic_GetPriority
	.section	.text.unlikely.sd_nvic_GetPriority
.LCOLDE6:
	.section	.text.sd_nvic_GetPriority
.LHOTE6:
	.section	.text.unlikely.sd_nvic_SystemReset,"ax",@progbits
.LCOLDB7:
	.section	.text.sd_nvic_SystemReset,"ax",@progbits
.LHOTB7:
	.globl	sd_nvic_SystemReset
	.type	sd_nvic_SystemReset, @function
sd_nvic_SystemReset:
.LFB131:
	.loc 1 2891 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 559 0
#APP
# 559 "src/nrf_nvic.c" 1
	dsb 0xF
# 0 "" 2
#NO_APP
.LBE59:
.LBE58:
	.loc 1 1340 0
	movl	-536810228, %eax
	.loc 1 1339 0
	andl	$1792, %eax
	orl	$100270084, %eax
	movl	%eax, -536810228
.LBB60:
.LBB61:
	.loc 1 559 0
#APP
# 559 "src/nrf_nvic.c" 1
	dsb 0xF
# 0 "" 2
#NO_APP
.L30:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	.loc 1 539 0
#APP
# 539 "src/nrf_nvic.c" 1
	nop
# 0 "" 2
#NO_APP
	jmp	.L30
.LBE63:
.LBE62:
.LBE57:
.LBE56:
	.cfi_endproc
.LFE131:
	.size	sd_nvic_SystemReset, .-sd_nvic_SystemReset
	.section	.text.unlikely.sd_nvic_SystemReset
.LCOLDE7:
	.section	.text.sd_nvic_SystemReset
.LHOTE7:
	.section	.text.unlikely.sd_nvic_critical_region_enter,"ax",@progbits
.LCOLDB8:
	.section	.text.sd_nvic_critical_region_enter,"ax",@progbits
.LHOTB8:
	.globl	sd_nvic_critical_region_enter
	.type	sd_nvic_critical_region_enter, @function
sd_nvic_critical_region_enter:
.LFB132:
	.loc 1 2896 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB64:
.LBB65:
	.loc 1 438 0
#APP
# 438 "src/nrf_nvic.c" 1
	cpsid i
# 0 "" 2
#NO_APP
.LBE65:
.LBE64:
	.loc 1 2898 0
	movb	m_in_critical_region, %al
	movl	8(%ebp), %edx
	testb	%al, %al
	setne	(%edx)
	.loc 1 2899 0
	incl	%eax
	movb	%al, m_in_critical_region
	.loc 1 2901 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE132:
	.size	sd_nvic_critical_region_enter, .-sd_nvic_critical_region_enter
	.section	.text.unlikely.sd_nvic_critical_region_enter
.LCOLDE8:
	.section	.text.sd_nvic_critical_region_enter
.LHOTE8:
	.section	.text.unlikely.sd_nvic_critical_region_exit,"ax",@progbits
.LCOLDB9:
	.section	.text.sd_nvic_critical_region_exit,"ax",@progbits
.LHOTB9:
	.globl	sd_nvic_critical_region_exit
	.type	sd_nvic_critical_region_exit, @function
sd_nvic_critical_region_exit:
.LFB133:
	.loc 1 2903 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2905 0
	cmpb	$0, 8(%ebp)
	je	.L35
	.loc 1 2904 0
	decb	m_in_critical_region
	jmp	.L36
.L35:
	.loc 1 2907 0
	movb	$0, m_in_critical_region
.LBB66:
.LBB67:
	.loc 1 434 0
#APP
# 434 "src/nrf_nvic.c" 1
	cpsie i
# 0 "" 2
#NO_APP
.L36:
.LBE67:
.LBE66:
	.loc 1 2911 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE133:
	.size	sd_nvic_critical_region_exit, .-sd_nvic_critical_region_exit
	.section	.text.unlikely.sd_nvic_critical_region_exit
.LCOLDE9:
	.section	.text.sd_nvic_critical_region_exit
.LHOTE9:
	.section	.bss.m_in_critical_region,"aw",@nobits
	.type	m_in_critical_region, @object
	.size	m_in_critical_region, 1
m_in_critical_region:
	.zero	1
	.text
.Letext0:
	.section	.text.unlikely.sd_nvic_EnableIRQ
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x906
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF126
	.byte	0xc
	.long	.LASF127
	.long	.LASF128
	.long	.Ldebug_ranges0+0x60
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0x9
	.long	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0xc
	.long	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0xd
	.long	0x85
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.value	0x15e
	.long	0x48
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.value	0x161
	.long	0x68
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.value	0x162
	.long	0x7a
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x179
	.long	0x211
	.uleb128 0x7
	.long	.LASF18
	.sleb128 -15
	.uleb128 0x7
	.long	.LASF19
	.sleb128 -14
	.uleb128 0x7
	.long	.LASF20
	.sleb128 -13
	.uleb128 0x7
	.long	.LASF21
	.sleb128 -12
	.uleb128 0x7
	.long	.LASF22
	.sleb128 -11
	.uleb128 0x7
	.long	.LASF23
	.sleb128 -10
	.uleb128 0x7
	.long	.LASF24
	.sleb128 -5
	.uleb128 0x7
	.long	.LASF25
	.sleb128 -4
	.uleb128 0x7
	.long	.LASF26
	.sleb128 -2
	.uleb128 0x7
	.long	.LASF27
	.sleb128 -1
	.uleb128 0x8
	.long	.LASF28
	.byte	0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.uleb128 0x8
	.long	.LASF30
	.byte	0x2
	.uleb128 0x8
	.long	.LASF31
	.byte	0x3
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.uleb128 0x8
	.long	.LASF36
	.byte	0x8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x9
	.uleb128 0x8
	.long	.LASF38
	.byte	0xa
	.uleb128 0x8
	.long	.LASF39
	.byte	0xb
	.uleb128 0x8
	.long	.LASF40
	.byte	0xc
	.uleb128 0x8
	.long	.LASF41
	.byte	0xd
	.uleb128 0x8
	.long	.LASF42
	.byte	0xe
	.uleb128 0x8
	.long	.LASF43
	.byte	0xf
	.uleb128 0x8
	.long	.LASF44
	.byte	0x10
	.uleb128 0x8
	.long	.LASF45
	.byte	0x11
	.uleb128 0x8
	.long	.LASF46
	.byte	0x12
	.uleb128 0x8
	.long	.LASF47
	.byte	0x13
	.uleb128 0x8
	.long	.LASF48
	.byte	0x14
	.uleb128 0x8
	.long	.LASF49
	.byte	0x15
	.uleb128 0x8
	.long	.LASF50
	.byte	0x16
	.uleb128 0x8
	.long	.LASF51
	.byte	0x17
	.uleb128 0x8
	.long	.LASF52
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0x19
	.uleb128 0x8
	.long	.LASF54
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1b
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF57
	.byte	0x1d
	.uleb128 0x8
	.long	.LASF58
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0x21
	.uleb128 0x8
	.long	.LASF60
	.byte	0x22
	.uleb128 0x8
	.long	.LASF61
	.byte	0x23
	.uleb128 0x8
	.long	.LASF62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF63
	.byte	0x25
	.uleb128 0x8
	.long	.LASF64
	.byte	0x26
	.uleb128 0x8
	.long	.LASF65
	.byte	0x27
	.uleb128 0x8
	.long	.LASF66
	.byte	0x28
	.uleb128 0x8
	.long	.LASF67
	.byte	0x29
	.uleb128 0x8
	.long	.LASF68
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF69
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF70
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.long	.LASF71
	.byte	0x1
	.value	0x1af
	.long	0xc5
	.uleb128 0x9
	.value	0xe04
	.byte	0x1
	.value	0x43a
	.long	0x2d9
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.value	0x43c
	.long	0x2ee
	.byte	0
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.value	0x43d
	.long	0x2f3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.value	0x43e
	.long	0x303
	.byte	0x80
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.value	0x43f
	.long	0x2f3
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.value	0x440
	.long	0x308
	.value	0x100
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.value	0x441
	.long	0x2f3
	.value	0x120
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.value	0x442
	.long	0x30d
	.value	0x180
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.value	0x443
	.long	0x2f3
	.value	0x1a0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x1
	.value	0x444
	.long	0x312
	.value	0x200
	.uleb128 0xb
	.long	.LASF81
	.byte	0x1
	.value	0x445
	.long	0x317
	.value	0x220
	.uleb128 0xc
	.string	"IP"
	.byte	0x1
	.value	0x446
	.long	0x33c
	.value	0x300
	.uleb128 0xb
	.long	.LASF82
	.byte	0x1
	.value	0x447
	.long	0x341
	.value	0x3f0
	.uleb128 0xb
	.long	.LASF83
	.byte	0x1
	.value	0x448
	.long	0x2e9
	.value	0xe00
	.byte	0
	.uleb128 0xd
	.long	0x2e9
	.long	0x2e9
	.uleb128 0xe
	.long	0x93
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.long	0xb9
	.uleb128 0xf
	.long	0x2d9
	.uleb128 0xd
	.long	0xb9
	.long	0x303
	.uleb128 0xe
	.long	0x93
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.long	0x2d9
	.uleb128 0xf
	.long	0x2d9
	.uleb128 0xf
	.long	0x2d9
	.uleb128 0xf
	.long	0x2d9
	.uleb128 0xd
	.long	0xb9
	.long	0x327
	.uleb128 0xe
	.long	0x93
	.byte	0x37
	.byte	0
	.uleb128 0xd
	.long	0x337
	.long	0x337
	.uleb128 0xe
	.long	0x93
	.byte	0xef
	.byte	0
	.uleb128 0xf
	.long	0xa1
	.uleb128 0xf
	.long	0x327
	.uleb128 0xd
	.long	0xb9
	.long	0x352
	.uleb128 0x10
	.long	0x93
	.value	0x283
	.byte	0
	.uleb128 0x5
	.long	.LASF84
	.byte	0x1
	.value	0x449
	.long	0x21d
	.uleb128 0x11
	.byte	0x8c
	.byte	0x1
	.value	0x44a
	.long	0x479
	.uleb128 0xa
	.long	.LASF85
	.byte	0x1
	.value	0x44c
	.long	0x479
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x1
	.value	0x44d
	.long	0x2e9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF87
	.byte	0x1
	.value	0x44e
	.long	0x2e9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF88
	.byte	0x1
	.value	0x44f
	.long	0x2e9
	.byte	0xc
	.uleb128 0x12
	.string	"SCR"
	.byte	0x1
	.value	0x450
	.long	0x2e9
	.byte	0x10
	.uleb128 0x12
	.string	"CCR"
	.byte	0x1
	.value	0x451
	.long	0x2e9
	.byte	0x14
	.uleb128 0x12
	.string	"SHP"
	.byte	0x1
	.value	0x452
	.long	0x48e
	.byte	0x18
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1
	.value	0x453
	.long	0x2e9
	.byte	0x24
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.value	0x454
	.long	0x2e9
	.byte	0x28
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1
	.value	0x455
	.long	0x2e9
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF92
	.byte	0x1
	.value	0x456
	.long	0x2e9
	.byte	0x30
	.uleb128 0xa
	.long	.LASF93
	.byte	0x1
	.value	0x457
	.long	0x2e9
	.byte	0x34
	.uleb128 0xa
	.long	.LASF94
	.byte	0x1
	.value	0x458
	.long	0x2e9
	.byte	0x38
	.uleb128 0xa
	.long	.LASF95
	.byte	0x1
	.value	0x459
	.long	0x2e9
	.byte	0x3c
	.uleb128 0x12
	.string	"PFR"
	.byte	0x1
	.value	0x45a
	.long	0x4a8
	.byte	0x40
	.uleb128 0x12
	.string	"DFR"
	.byte	0x1
	.value	0x45b
	.long	0x479
	.byte	0x48
	.uleb128 0x12
	.string	"ADR"
	.byte	0x1
	.value	0x45c
	.long	0x479
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF96
	.byte	0x1
	.value	0x45d
	.long	0x4c2
	.byte	0x50
	.uleb128 0xa
	.long	.LASF97
	.byte	0x1
	.value	0x45e
	.long	0x4dc
	.byte	0x60
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.value	0x45f
	.long	0x4e1
	.byte	0x74
	.uleb128 0xa
	.long	.LASF98
	.byte	0x1
	.value	0x460
	.long	0x2e9
	.byte	0x88
	.byte	0
	.uleb128 0x13
	.long	0x2e9
	.uleb128 0xd
	.long	0x337
	.long	0x48e
	.uleb128 0xe
	.long	0x93
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.long	0x47e
	.uleb128 0xd
	.long	0x479
	.long	0x4a3
	.uleb128 0xe
	.long	0x93
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	0x493
	.uleb128 0x13
	.long	0x4a3
	.uleb128 0xd
	.long	0x479
	.long	0x4bd
	.uleb128 0xe
	.long	0x93
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	0x4ad
	.uleb128 0x13
	.long	0x4bd
	.uleb128 0xd
	.long	0x479
	.long	0x4d7
	.uleb128 0xe
	.long	0x93
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x4c7
	.uleb128 0x13
	.long	0x4d7
	.uleb128 0xd
	.long	0xb9
	.long	0x4f1
	.uleb128 0xe
	.long	0x93
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF99
	.byte	0x1
	.value	0x461
	.long	0x35e
	.uleb128 0xf
	.long	0xad
	.uleb128 0x14
	.long	.LASF100
	.byte	0x1
	.value	0x22d
	.byte	0x3
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.value	0x219
	.byte	0x3
	.uleb128 0x14
	.long	.LASF102
	.byte	0x1
	.value	0x1b4
	.byte	0x3
	.uleb128 0x14
	.long	.LASF103
	.byte	0x1
	.value	0x1b0
	.byte	0x3
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x4f4
	.byte	0x3
	.long	0x540
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x4f4
	.long	0x211
	.byte	0
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.value	0xb1b
	.long	0xb9
	.long	.LFB124
	.long	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x584
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0xb1b
	.long	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x526
	.long	.LBB14
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xb1d
	.uleb128 0x1a
	.long	0x533
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.value	0x4f8
	.byte	0x3
	.long	0x59e
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x4f8
	.long	0x211
	.byte	0
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.value	0xb20
	.long	0xb9
	.long	.LFB125
	.long	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e2
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0xb20
	.long	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x584
	.long	.LBB20
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xb22
	.uleb128 0x1a
	.long	0x591
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.value	0x4fc
	.long	0xb9
	.byte	0x3
	.long	0x600
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x4fc
	.long	0x211
	.byte	0
	.uleb128 0x17
	.long	.LASF109
	.byte	0x1
	.value	0xb25
	.long	0xb9
	.long	.LFB126
	.long	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x653
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0xb25
	.long	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.value	0xb25
	.long	0x653
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	0x5e2
	.long	.LBB26
	.long	.LBE26-.LBB26
	.byte	0x1
	.value	0xb2b
	.uleb128 0x1a
	.long	0x5f3
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0xb9
	.uleb128 0x15
	.long	.LASF111
	.byte	0x1
	.value	0x500
	.byte	0x3
	.long	0x673
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x500
	.long	0x211
	.byte	0
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.value	0xb30
	.long	0xb9
	.long	.LFB127
	.long	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b7
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0xb30
	.long	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x659
	.long	.LBB30
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0xb32
	.uleb128 0x1a
	.long	0x666
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF113
	.byte	0x1
	.value	0x504
	.byte	0x3
	.long	0x6d1
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x504
	.long	0x211
	.byte	0
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.value	0xb35
	.long	0xb9
	.long	.LFB128
	.long	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x715
	.uleb128 0x18
	.long	.LASF106
	.byte	0x1
	.value	0xb35
	.long	0x211
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x6b7
	.long	.LBB36
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0xb37
	.uleb128 0x1a
	.long	0x6c4
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.value	0x50c
	.byte	0x3
	.long	0x73b
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x50c
	.long	0x211
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.value	0x50c
	.long	0xb9
	.byte	0
	.uleb128 0x17
	.long	.LASF117
	.byte	0x1
	.value	0xb3a
	.long	0xb9
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x799
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.value	0xb3a
	.long	0x211
	.long	.LLST5
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.value	0xb3a
	.long	0xb9
	.long	.LLST6
	.uleb128 0x1c
	.long	0x715
	.long	.LBB42
	.long	.LBE42-.LBB42
	.byte	0x1
	.value	0xb3c
	.uleb128 0x1a
	.long	0x72e
	.long	.LLST7
	.uleb128 0x1a
	.long	0x722
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x1
	.value	0x517
	.long	0xb9
	.byte	0x3
	.long	0x7b7
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x517
	.long	0x211
	.byte	0
	.uleb128 0x17
	.long	.LASF120
	.byte	0x1
	.value	0xb3f
	.long	0xb9
	.long	.LFB130
	.long	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x80c
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.value	0xb3f
	.long	0x211
	.long	.LLST9
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.value	0xb3f
	.long	0x653
	.long	.LLST10
	.uleb128 0x1c
	.long	0x799
	.long	.LBB46
	.long	.LBE46-.LBB46
	.byte	0x1
	.value	0xb45
	.uleb128 0x1a
	.long	0x7aa
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF129
	.byte	0x1
	.value	0x538
	.byte	0x3
	.uleb128 0x20
	.long	.LASF130
	.byte	0x1
	.value	0xb4a
	.long	0xb9
	.long	.LFB131
	.long	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x871
	.uleb128 0x1c
	.long	0x80c
	.long	.LBB56
	.long	.LBE56-.LBB56
	.byte	0x1
	.value	0xb4c
	.uleb128 0x21
	.long	0x502
	.long	.LBB58
	.long	.LBE58-.LBB58
	.byte	0x1
	.value	0x53a
	.uleb128 0x21
	.long	0x502
	.long	.LBB60
	.long	.LBE60-.LBB60
	.byte	0x1
	.value	0x53e
	.uleb128 0x21
	.long	0x50b
	.long	.LBB62
	.long	.LBE62-.LBB62
	.byte	0x1
	.value	0x541
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.value	0xb4f
	.long	0xb9
	.long	.LFB132
	.long	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ab
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.value	0xb4f
	.long	0x8ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	0x514
	.long	.LBB64
	.long	.LBE64-.LBB64
	.byte	0x1
	.value	0xb51
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0xa1
	.uleb128 0x17
	.long	.LASF124
	.byte	0x1
	.value	0xb56
	.long	0xb9
	.long	.LFB133
	.long	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x8eb
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.value	0xb56
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	0x51d
	.long	.LBB66
	.long	.LBE66-.LBB66
	.byte	0x1
	.value	0xb5c
	.byte	0
	.uleb128 0x22
	.long	.LASF131
	.byte	0x1
	.value	0xb1a
	.long	0xa1
	.uleb128 0x5
	.byte	0x3
	.long	m_in_critical_region
	.uleb128 0x23
	.long	.LASF132
	.byte	0x1
	.value	0x552
	.long	0x4fd
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL15
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL19
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x52
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x52
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL19
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL22
	.long	.LVL24
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x51
	.long	.LVL25
	.long	.LFE130
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL22
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL27
	.long	.LFE130
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL23
	.long	.LVL24
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x51
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB124
	.long	.LFE124-.LFB124
	.long	.LFB125
	.long	.LFE125-.LFB125
	.long	.LFB126
	.long	.LFE126-.LFB126
	.long	.LFB127
	.long	.LFE127-.LFB127
	.long	.LFB128
	.long	.LFE128-.LFB128
	.long	.LFB129
	.long	.LFE129-.LFB129
	.long	.LFB130
	.long	.LFE130-.LFB130
	.long	.LFB131
	.long	.LFE131-.LFB131
	.long	.LFB132
	.long	.LFE132-.LFB132
	.long	.LFB133
	.long	.LFE133-.LFB133
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB14
	.long	.LBE14
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LBB20
	.long	.LBE20
	.long	.LBB23
	.long	.LBE23
	.long	0
	.long	0
	.long	.LBB30
	.long	.LBE30
	.long	.LBB33
	.long	.LBE33
	.long	0
	.long	0
	.long	.LBB36
	.long	.LBE36
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LFB124
	.long	.LFE124
	.long	.LFB125
	.long	.LFE125
	.long	.LFB126
	.long	.LFE126
	.long	.LFB127
	.long	.LFE127
	.long	.LFB128
	.long	.LFE128
	.long	.LFB129
	.long	.LFE129
	.long	.LFB130
	.long	.LFE130
	.long	.LFB131
	.long	.LFE131
	.long	.LFB132
	.long	.LFE132
	.long	.LFB133
	.long	.LFE133
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"ICPR"
.LASF68:
	.string	"CRYPTOCELL_IRQn"
.LASF58:
	.string	"MWU_IRQn"
.LASF18:
	.string	"Reset_IRQn"
.LASF7:
	.string	"__uint8_t"
.LASF47:
	.string	"COMP_LPCOMP_IRQn"
.LASF66:
	.string	"UARTE1_IRQn"
.LASF107:
	.string	"sd_nvic_EnableIRQ"
.LASF12:
	.string	"long long unsigned int"
.LASF62:
	.string	"RTC2_IRQn"
.LASF46:
	.string	"QDEC_IRQn"
.LASF36:
	.string	"TIMER0_IRQn"
.LASF118:
	.string	"NVIC_GetPendingIRQ"
.LASF130:
	.string	"sd_nvic_SystemReset"
.LASF52:
	.string	"SWI4_EGU4_IRQn"
.LASF85:
	.string	"CPUID"
.LASF30:
	.string	"UARTE0_UART0_IRQn"
.LASF32:
	.string	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn"
.LASF76:
	.string	"ISPR"
.LASF97:
	.string	"ISAR"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF101:
	.string	"__NOP"
.LASF57:
	.string	"PDM_IRQn"
.LASF67:
	.string	"QSPI_IRQn"
.LASF70:
	.string	"SPIM3_IRQn"
.LASF55:
	.string	"TIMER4_IRQn"
.LASF9:
	.string	"long int"
.LASF59:
	.string	"PWM1_IRQn"
.LASF29:
	.string	"RADIO_IRQn"
.LASF5:
	.string	"short int"
.LASF48:
	.string	"SWI0_EGU0_IRQn"
.LASF124:
	.string	"sd_nvic_critical_region_exit"
.LASF94:
	.string	"BFAR"
.LASF128:
	.string	"/home/stone/Documents/pca"
.LASF20:
	.string	"HardFault_IRQn"
.LASF39:
	.string	"RTC0_IRQn"
.LASF95:
	.string	"AFSR"
.LASF10:
	.string	"__uint32_t"
.LASF22:
	.string	"BusFault_IRQn"
.LASF120:
	.string	"sd_nvic_GetPriority"
.LASF99:
	.string	"SCB_Type"
.LASF126:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF0:
	.string	"unsigned int"
.LASF129:
	.string	"NVIC_SystemReset"
.LASF65:
	.string	"USBD_IRQn"
.LASF21:
	.string	"MemoryManagement_IRQn"
.LASF112:
	.string	"sd_nvic_SetPendingIRQ"
.LASF87:
	.string	"VTOR"
.LASF24:
	.string	"SVCall_IRQn"
.LASF108:
	.string	"sd_nvic_DisableIRQ"
.LASF86:
	.string	"ICSR"
.LASF88:
	.string	"AIRCR"
.LASF92:
	.string	"DFSR"
.LASF119:
	.string	"NVIC_GetPriority"
.LASF93:
	.string	"MMFAR"
.LASF42:
	.string	"ECB_IRQn"
.LASF116:
	.string	"priority"
.LASF96:
	.string	"MMFR"
.LASF122:
	.string	"sd_nvic_critical_region_enter"
.LASF127:
	.string	"src/nrf_nvic.c"
.LASF111:
	.string	"NVIC_SetPendingIRQ"
.LASF100:
	.string	"__DSB"
.LASF40:
	.string	"TEMP_IRQn"
.LASF27:
	.string	"SysTick_IRQn"
.LASF23:
	.string	"UsageFault_IRQn"
.LASF34:
	.string	"GPIOTE_IRQn"
.LASF106:
	.string	"IRQn"
.LASF13:
	.string	"sizetype"
.LASF49:
	.string	"SWI1_EGU1_IRQn"
.LASF2:
	.string	"long double"
.LASF90:
	.string	"CFSR"
.LASF37:
	.string	"TIMER1_IRQn"
.LASF80:
	.string	"IABR"
.LASF51:
	.string	"SWI3_EGU3_IRQn"
.LASF74:
	.string	"ICER"
.LASF103:
	.string	"__enable_irq"
.LASF131:
	.string	"m_in_critical_region"
.LASF35:
	.string	"SAADC_IRQn"
.LASF33:
	.string	"NFCT_IRQn"
.LASF102:
	.string	"__disable_irq"
.LASF73:
	.string	"RESERVED0"
.LASF77:
	.string	"RESERVED2"
.LASF79:
	.string	"RESERVED3"
.LASF81:
	.string	"RESERVED4"
.LASF82:
	.string	"RESERVED5"
.LASF16:
	.string	"int32_t"
.LASF38:
	.string	"TIMER2_IRQn"
.LASF28:
	.string	"POWER_CLOCK_IRQn"
.LASF89:
	.string	"SHCSR"
.LASF132:
	.string	"ITM_RxBuffer"
.LASF41:
	.string	"RNG_IRQn"
.LASF72:
	.string	"ISER"
.LASF84:
	.string	"NVIC_Type"
.LASF50:
	.string	"SWI2_EGU2_IRQn"
.LASF104:
	.string	"NVIC_EnableIRQ"
.LASF43:
	.string	"CCM_AAR_IRQn"
.LASF71:
	.string	"IRQn_Type"
.LASF113:
	.string	"NVIC_ClearPendingIRQ"
.LASF121:
	.string	"p_priority"
.LASF17:
	.string	"uint32_t"
.LASF26:
	.string	"PendSV_IRQn"
.LASF63:
	.string	"I2S_IRQn"
.LASF11:
	.string	"long unsigned int"
.LASF60:
	.string	"PWM2_IRQn"
.LASF61:
	.string	"SPIM2_SPIS2_SPI2_IRQn"
.LASF14:
	.string	"char"
.LASF69:
	.string	"PWM3_IRQn"
.LASF54:
	.string	"TIMER3_IRQn"
.LASF19:
	.string	"NonMaskableInt_IRQn"
.LASF8:
	.string	"__int32_t"
.LASF44:
	.string	"WDT_IRQn"
.LASF6:
	.string	"short unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF105:
	.string	"NVIC_DisableIRQ"
.LASF25:
	.string	"DebugMonitor_IRQn"
.LASF125:
	.string	"is_nested_critical_region"
.LASF109:
	.string	"sd_nvic_GetPendingIRQ"
.LASF31:
	.string	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn"
.LASF15:
	.string	"uint8_t"
.LASF75:
	.string	"RSERVED1"
.LASF83:
	.string	"STIR"
.LASF56:
	.string	"PWM0_IRQn"
.LASF64:
	.string	"FPU_IRQn"
.LASF123:
	.string	"p_is_nested_critical_region"
.LASF110:
	.string	"p_pending_irq"
.LASF117:
	.string	"sd_nvic_SetPriority"
.LASF114:
	.string	"sd_nvic_ClearPendingIRQ"
.LASF98:
	.string	"CPACR"
.LASF91:
	.string	"HFSR"
.LASF45:
	.string	"RTC1_IRQn"
.LASF53:
	.string	"SWI5_EGU5_IRQn"
.LASF115:
	.string	"NVIC_SetPriority"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

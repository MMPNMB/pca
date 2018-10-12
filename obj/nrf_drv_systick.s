	.file	"nrf_drv_systick.c"
	.text
.Ltext0:
	.section	.text.unlikely.nrf_drv_systick_init,"ax",@progbits
.LCOLDB0:
	.section	.text.nrf_drv_systick_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.nrf_drv_systick_init
.Ltext_cold0:
	.section	.text.nrf_drv_systick_init
	.globl	nrf_drv_systick_init
	.type	nrf_drv_systick_init, @function
nrf_drv_systick_init:
.LFB162:
	.file 1 "src/nrf_drv_systick.c"
	.loc 1 4012 0
	.cfi_startproc
	.loc 1 4013 0
	movl	SystemCoreClock, %eax
	movl	$100, %ecx
	xorl	%edx, %edx
	.loc 1 4012 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4013 0
	divl	%ecx
.LVL0:
	.loc 1 4012 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB22:
.LBB23:
	.loc 1 2948 0
	movl	%eax, -536813548
.LVL1:
.LBE23:
.LBE22:
.LBB24:
.LBB25:
	.loc 1 2940 0
	movl	$7, -536813552
.LVL2:
.LBE25:
.LBE24:
	.loc 1 4018 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE162:
	.size	nrf_drv_systick_init, .-nrf_drv_systick_init
	.section	.text.unlikely.nrf_drv_systick_init
.LCOLDE0:
	.section	.text.nrf_drv_systick_init
.LHOTE0:
	.section	.text.unlikely.nrf_drv_systick_get,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_drv_systick_get,"ax",@progbits
.LHOTB1:
	.globl	nrf_drv_systick_get
	.type	nrf_drv_systick_get, @function
nrf_drv_systick_get:
.LFB163:
	.loc 1 4020 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB26:
.LBB27:
	.loc 1 2952 0
	movl	-536813544, %edx
.LBE27:
.LBE26:
	.loc 1 4020 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4021 0
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 4022 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE163:
	.size	nrf_drv_systick_get, .-nrf_drv_systick_get
	.section	.text.unlikely.nrf_drv_systick_get
.LCOLDE1:
	.section	.text.nrf_drv_systick_get
.LHOTE1:
	.section	.text.unlikely.nrf_drv_systick_test,"ax",@progbits
.LCOLDB2:
	.section	.text.nrf_drv_systick_test,"ax",@progbits
.LHOTB2:
	.globl	nrf_drv_systick_test
	.type	nrf_drv_systick_test, @function
nrf_drv_systick_test:
.LFB164:
	.loc 1 4025 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.LBB28:
.LBB29:
	.loc 1 2952 0
	movl	-536813544, %eax
.LVL5:
.LBE29:
.LBE28:
	.loc 1 4028 0
	movl	8(%ebp), %edx
	movl	$1000000, %ebx
	movl	(%edx), %ecx
	xorl	%edx, %edx
	subl	%eax, %ecx
	movl	SystemCoreClock, %eax
.LVL6:
	andl	$16777215, %ecx
.LVL7:
	divl	%ebx
	.loc 1 4029 0
	popl	%ebx
	.cfi_restore 3
	.loc 1 4028 0
	imull	12(%ebp), %eax
	.loc 1 4029 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4028 0
	cmpl	%eax, %ecx
	setnb	%al
	.loc 1 4029 0
	ret
	.cfi_endproc
.LFE164:
	.size	nrf_drv_systick_test, .-nrf_drv_systick_test
	.section	.text.unlikely.nrf_drv_systick_test
.LCOLDE2:
	.section	.text.nrf_drv_systick_test
.LHOTE2:
	.section	.text.unlikely.nrf_drv_systick_delay_ticks,"ax",@progbits
.LCOLDB3:
	.section	.text.nrf_drv_systick_delay_ticks,"ax",@progbits
.LHOTB3:
	.globl	nrf_drv_systick_delay_ticks
	.type	nrf_drv_systick_delay_ticks, @function
nrf_drv_systick_delay_ticks:
.LFB165:
	.loc 1 4031 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB30:
.LBB31:
	.loc 1 2952 0
	movl	-536813544, %edx
.LBE31:
.LBE30:
	.loc 1 4031 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.L8:
.LBB32:
.LBB33:
	.loc 1 2952 0 discriminator 1
	movl	-536813544, %eax
.LBE33:
.LBE32:
	.loc 1 4034 0 discriminator 1
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	andl	$16777215, %eax
	cmpl	8(%ebp), %eax
	jb	.L8
	.loc 1 4037 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE165:
	.size	nrf_drv_systick_delay_ticks, .-nrf_drv_systick_delay_ticks
	.section	.text.unlikely.nrf_drv_systick_delay_ticks
.LCOLDE3:
	.section	.text.nrf_drv_systick_delay_ticks
.LHOTE3:
	.section	.text.unlikely.nrf_drv_systick_delay_us,"ax",@progbits
.LCOLDB4:
	.section	.text.nrf_drv_systick_delay_us,"ax",@progbits
.LHOTB4:
	.globl	nrf_drv_systick_delay_us
	.type	nrf_drv_systick_delay_us, @function
nrf_drv_systick_delay_us:
.LFB166:
	.loc 1 4039 0
	.cfi_startproc
.LVL9:
	.loc 1 4041 0
	movl	SystemCoreClock, %eax
	movl	$1000000, %ecx
	xorl	%edx, %edx
	.loc 1 4039 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4041 0
	divl	%ecx
	.loc 1 4039 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4041 0
	imull	8(%ebp), %eax
	movl	%eax, 8(%ebp)
.LVL10:
	.loc 1 4042 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4041 0
	jmp	nrf_drv_systick_delay_ticks
.LVL11:
	.cfi_endproc
.LFE166:
	.size	nrf_drv_systick_delay_us, .-nrf_drv_systick_delay_us
	.section	.text.unlikely.nrf_drv_systick_delay_us
.LCOLDE4:
	.section	.text.nrf_drv_systick_delay_us
.LHOTE4:
	.section	.text.unlikely.nrf_drv_systick_delay_ms,"ax",@progbits
.LCOLDB5:
	.section	.text.nrf_drv_systick_delay_ms,"ax",@progbits
.LHOTB5:
	.globl	nrf_drv_systick_delay_ms
	.type	nrf_drv_systick_delay_ms, @function
nrf_drv_systick_delay_ms:
.LFB167:
	.loc 1 4044 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4044 0
	movl	8(%ebp), %ebx
	.loc 1 4045 0
	movl	%ebx, %esi
	.loc 1 4046 0
	andl	$63, %ebx
	.loc 1 4045 0
	shrl	$6, %esi
.LVL13:
.L15:
	.loc 1 4047 0
	decl	%esi
.LVL14:
	movl	SystemCoreClock, %eax
	.loc 1 4049 0
	movl	$1000, %ecx
	.loc 1 4047 0
	cmpl	$-1, %esi
	.loc 1 4049 0
	movl	$0, %edx
	.loc 1 4047 0
	je	.L18
	.loc 1 4049 0
	divl	%ecx
	sall	$6, %eax
	pushl	%eax
	call	nrf_drv_systick_delay_ticks
.LVL15:
	popl	%eax
	jmp	.L15
.L18:
	.loc 1 4051 0
	divl	%ecx
	imull	%ebx, %eax
	movl	%eax, 8(%ebp)
	.loc 1 4052 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL16:
	popl	%esi
	.cfi_restore 6
.LVL17:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4051 0
	jmp	nrf_drv_systick_delay_ticks
.LVL18:
	.cfi_endproc
.LFE167:
	.size	nrf_drv_systick_delay_ms, .-nrf_drv_systick_delay_ms
	.section	.text.unlikely.nrf_drv_systick_delay_ms
.LCOLDE5:
	.section	.text.nrf_drv_systick_delay_ms
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.nrf_drv_systick_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x417
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF53
	.byte	0xc
	.long	.LASF54
	.long	.LASF55
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
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
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x4
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x5
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x6
	.long	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
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
	.byte	0x16
	.long	0x45
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x18
	.long	0x69
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x5
	.long	0xb8
	.uleb128 0x6
	.long	0xd8
	.uleb128 0x7
	.byte	0x10
	.byte	0x1
	.value	0x414
	.long	0x120
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.value	0x416
	.long	0xd8
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.value	0x417
	.long	0xd8
	.byte	0x4
	.uleb128 0x9
	.string	"VAL"
	.byte	0x1
	.value	0x418
	.long	0xd8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.value	0x419
	.long	0xdd
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.value	0x41a
	.long	0xe2
	.uleb128 0x5
	.long	0xad
	.uleb128 0x7
	.byte	0x4
	.byte	0x1
	.value	0xb59
	.long	0x148
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.value	0xb5a
	.long	0xb8
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.value	0xb5b
	.long	0x131
	.uleb128 0xb
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xb63
	.long	0x1a1
	.uleb128 0xc
	.long	.LASF26
	.long	0x10000
	.uleb128 0xd
	.long	.LASF27
	.byte	0x4
	.uleb128 0xd
	.long	.LASF28
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x4
	.uleb128 0xd
	.long	.LASF30
	.byte	0x2
	.uleb128 0xd
	.long	.LASF31
	.byte	0x2
	.uleb128 0xd
	.long	.LASF32
	.byte	0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.uleb128 0xd
	.long	.LASF34
	.byte	0x1
	.uleb128 0xd
	.long	.LASF35
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.value	0xb7a
	.byte	0x3
	.long	0x1bb
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.value	0xb7a
	.long	0xb8
	.byte	0
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.value	0xb82
	.byte	0x3
	.long	0x1d5
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.value	0xb82
	.long	0xb8
	.byte	0
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.value	0xb86
	.long	0xb8
	.byte	0x3
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.value	0xfa3
	.long	0xb8
	.byte	0x3
	.long	0x1ff
	.uleb128 0xf
	.string	"us"
	.byte	0x1
	.value	0xfa3
	.long	0xb8
	.byte	0
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.value	0xfa7
	.long	0xb8
	.byte	0x3
	.long	0x21c
	.uleb128 0xf
	.string	"ms"
	.byte	0x1
	.value	0xfa7
	.long	0xb8
	.byte	0
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.value	0xfab
	.long	.LFB162
	.long	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b
	.uleb128 0x13
	.long	0x1bb
	.long	.LBB22
	.long	.LBE22-.LBB22
	.byte	0x1
	.value	0xfad
	.long	0x250
	.uleb128 0x14
	.long	0x1c8
	.long	.LLST0
	.byte	0
	.uleb128 0x15
	.long	0x1a1
	.long	.LBB24
	.long	.LBE24-.LBB24
	.byte	0x1
	.value	0xfae
	.uleb128 0x14
	.long	0x1ae
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.value	0xfb3
	.long	.LFB163
	.long	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a1
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.value	0xfb3
	.long	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	0x1d5
	.long	.LBB26
	.long	.LBE26-.LBB26
	.byte	0x1
	.value	0xfb5
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.long	0x148
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.value	0xfb8
	.long	0x2ff
	.long	.LFB164
	.long	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ff
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.value	0xfb8
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"us"
	.byte	0x1
	.value	0xfb8
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF48
	.byte	0x1
	.value	0xfbb
	.long	0x311
	.long	.LLST2
	.uleb128 0x17
	.long	0x1d5
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.value	0xfbb
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF43
	.uleb128 0x18
	.byte	0x4
	.long	0x30c
	.uleb128 0x6
	.long	0x148
	.uleb128 0x6
	.long	0xb8
	.uleb128 0x12
	.long	.LASF44
	.byte	0x1
	.value	0xfbe
	.long	.LFB165
	.long	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x368
	.uleb128 0x16
	.long	.LASF45
	.byte	0x1
	.value	0xfbe
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x1
	.value	0xfc1
	.long	0x311
	.uleb128 0x17
	.long	0x1d5
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.value	0xfc1
	.uleb128 0x17
	.long	0x1d5
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.value	0xfc2
	.byte	0
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.value	0xfc6
	.long	.LFB166
	.long	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.long	0x397
	.uleb128 0x1d
	.string	"us"
	.byte	0x1
	.value	0xfc6
	.long	0xb8
	.long	.LLST3
	.uleb128 0x1e
	.long	.LVL11
	.long	0x316
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.value	0xfcb
	.long	.LFB167
	.long	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ea
	.uleb128 0x1a
	.string	"ms"
	.byte	0x1
	.value	0xfcb
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"n"
	.byte	0x1
	.value	0xfcd
	.long	0xb8
	.long	.LLST4
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.value	0xfce
	.long	0xb8
	.long	.LLST5
	.uleb128 0x20
	.long	.LVL15
	.long	0x316
	.uleb128 0x1e
	.long	.LVL18
	.long	0x316
	.byte	0
	.uleb128 0x21
	.long	.LASF49
	.byte	0x1
	.value	0x4fe
	.long	0x12c
	.uleb128 0x21
	.long	.LASF50
	.byte	0x1
	.value	0x521
	.long	0xb8
	.uleb128 0x21
	.long	.LASF51
	.byte	0x1
	.value	0xac0
	.long	0xb8
	.uleb128 0x21
	.long	.LASF52
	.byte	0x1
	.value	0xac1
	.long	0xb8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.value	0xe
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0xc
	.long	0xffffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL7
	.long	.LFE164
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL17
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL16
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB162
	.long	.LFE162-.LFB162
	.long	.LFB163
	.long	.LFE163-.LFB163
	.long	.LFB164
	.long	.LFE164-.LFB164
	.long	.LFB165
	.long	.LFE165-.LFB165
	.long	.LFB166
	.long	.LFE166-.LFB166
	.long	.LFB167
	.long	.LFE167-.LFB167
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB162
	.long	.LFE162
	.long	.LFB163
	.long	.LFE163
	.long	.LFB164
	.long	.LFE164
	.long	.LFB165
	.long	.LFE165
	.long	.LFB166
	.long	.LFE166
	.long	.LFB167
	.long	.LFE167
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"nrf_systick_load_set"
.LASF31:
	.string	"NRF_SYSTICK_CSR_TICKINT_ENABLE"
.LASF44:
	.string	"nrf_drv_systick_delay_ticks"
.LASF48:
	.string	"diff"
.LASF26:
	.string	"NRF_SYSTICK_CSR_COUNTFLAG_MASK"
.LASF2:
	.string	"short int"
.LASF56:
	.string	"nrf_systick_val_get"
.LASF18:
	.string	"sizetype"
.LASF27:
	.string	"NRF_SYSTICK_CSR_CLKSOURCE_MASK"
.LASF8:
	.string	"__uint32_t"
.LASF40:
	.string	"nrf_drv_systick_init"
.LASF4:
	.string	"__uint16_t"
.LASF13:
	.string	"uint8_t"
.LASF35:
	.string	"NRF_SYSTICK_CSR_DISABLE"
.LASF25:
	.string	"nrf_drv_systick_state_t"
.LASF33:
	.string	"NRF_SYSTICK_CSR_ENABLE_MASK"
.LASF32:
	.string	"NRF_SYSTICK_CSR_TICKINT_DISABLE"
.LASF17:
	.string	"long double"
.LASF10:
	.string	"long long int"
.LASF41:
	.string	"nrf_drv_systick_get"
.LASF22:
	.string	"CALIB"
.LASF7:
	.string	"long int"
.LASF39:
	.string	"nrf_drv_systick_ms_tick"
.LASF51:
	.string	"__StackTop"
.LASF3:
	.string	"__uint8_t"
.LASF34:
	.string	"NRF_SYSTICK_CSR_ENABLE"
.LASF57:
	.string	"nrf_drv_systick_test"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"nrf_drv_systick_delay_ms"
.LASF20:
	.string	"CTRL"
.LASF0:
	.string	"signed char"
.LASF45:
	.string	"ticks"
.LASF11:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF12:
	.string	"unsigned int"
.LASF30:
	.string	"NRF_SYSTICK_CSR_TICKINT_MASK"
.LASF14:
	.string	"uint16_t"
.LASF29:
	.string	"NRF_SYSTICK_CSR_CLKSOURCE_CPU"
.LASF24:
	.string	"time"
.LASF58:
	.string	"start"
.LASF5:
	.string	"short unsigned int"
.LASF46:
	.string	"nrf_drv_systick_delay_us"
.LASF19:
	.string	"char"
.LASF15:
	.string	"int32_t"
.LASF42:
	.string	"p_state"
.LASF43:
	.string	"_Bool"
.LASF50:
	.string	"SystemCoreClock"
.LASF38:
	.string	"nrf_drv_systick_us_tick"
.LASF9:
	.string	"long unsigned int"
.LASF23:
	.string	"SysTick_Type"
.LASF6:
	.string	"__int32_t"
.LASF53:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF21:
	.string	"LOAD"
.LASF28:
	.string	"NRF_SYSTICK_CSR_CLKSOURCE_REF"
.LASF36:
	.string	"nrf_systick_csr_set"
.LASF55:
	.string	"/home/stone/Documents/pca"
.LASF52:
	.string	"__StackLimit"
.LASF49:
	.string	"ITM_RxBuffer"
.LASF54:
	.string	"src/nrf_drv_systick.c"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

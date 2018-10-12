	.file	"tftp_ota.c"
	.text
.Ltext0:
	.section	.text.unlikely.tftp_fclose,"ax",@progbits
.LCOLDB0:
	.section	.text.tftp_fclose,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.tftp_fclose
.Ltext_cold0:
	.section	.text.tftp_fclose
	.type	tftp_fclose, @function
tftp_fclose:
.LFB18:
	.file 1 "kernel/protocols/net/apps/tftp/tftp_ota.c"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 30 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	tftp_fclose, .-tftp_fclose
	.section	.text.unlikely.tftp_fclose
.LCOLDE0:
	.section	.text.tftp_fclose
.LHOTE0:
	.section	.text.unlikely.tftp_fread,"ax",@progbits
.LCOLDB1:
	.section	.text.tftp_fread,"ax",@progbits
.LHOTB1:
	.type	tftp_fread, @function
tftp_fread:
.LFB19:
	.loc 1 33 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 35 0
	xorl	%eax, %eax
	.loc 1 33 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 35 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	tftp_fread, .-tftp_fread
	.section	.text.unlikely.tftp_fread
.LCOLDE1:
	.section	.text.tftp_fread
.LHOTE1:
	.section	.text.unlikely.tftp_fwrite,"ax",@progbits
.LCOLDB2:
	.section	.text.tftp_fwrite,"ax",@progbits
.LHOTB2:
	.type	tftp_fwrite, @function
tftp_fwrite:
.LFB20:
	.loc 1 38 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 41 0
	leal	-540(%ebp), %esi
	.loc 1 38 0
	subl	$540, %esp
	.loc 1 38 0
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL3:
	.loc 1 41 0
	pushl	$0
	movzwl	8(%ebx), %eax
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	call	pbuf_copy_partial
.LVL4:
	.loc 1 42 0
	movzwl	8(%ebx), %edi
	call	hal_ota_get_default_module
.LVL5:
	pushl	%edi
	pushl	%esi
	pushl	$0
	pushl	%eax
	call	hal_ota_write
.LVL6:
	.loc 1 43 0
	addl	$32, %esp
	testl	%eax, %eax
	jne	.L6
	.loc 1 43 0 is_stmt 0 discriminator 1
	movzwl	8(%ebx), %eax
.LVL7:
.L6:
	.loc 1 45 0 is_stmt 1
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
.LFE20:
	.size	tftp_fwrite, .-tftp_fwrite
	.section	.text.unlikely.tftp_fwrite
.LCOLDE2:
	.section	.text.tftp_fwrite
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"netascii"
.LC4:
	.string	"octet"
	.section	.text.unlikely.tftp_fopen,"ax",@progbits
.LCOLDB5:
	.section	.text.tftp_fopen,"ax",@progbits
.LHOTB5:
	.type	tftp_fopen, @function
tftp_fopen:
.LFB17:
	.loc 1 14 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 18 0
	xorl	%edx, %edx
	.loc 1 14 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 14 0
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL10:
	.loc 1 17 0
	cmpb	$0, 16(%ebp)
	je	.L11
	.loc 1 20 0
	pushl	%edx
	pushl	$8
	pushl	$.LC3
	pushl	%ebx
	call	strncmp
.LVL11:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L12
	.loc 1 20 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	$5
	pushl	$.LC4
	pushl	%ebx
	call	strncmp
.LVL12:
	addl	$16, %esp
	.loc 1 18 0 is_stmt 1 discriminator 1
	xorl	%edx, %edx
	.loc 1 20 0 discriminator 1
	testl	%eax, %eax
	jne	.L11
.L12:
.LBB2:
	.loc 1 22 0
	leal	-16(%ebp), %eax
	subl	$12, %esp
	.loc 1 21 0
	movl	$0, -16(%ebp)
	.loc 1 22 0
	pushl	%eax
	call	hal_ota_init
.LVL13:
	addl	$16, %esp
	.loc 1 23 0
	movl	$1, %edx
.LVL14:
.L11:
.LBE2:
	.loc 1 26 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L13
	call	__stack_chk_fail
.LVL15:
.L13:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	tftp_fopen, .-tftp_fopen
	.section	.text.unlikely.tftp_fopen
.LCOLDE5:
	.section	.text.tftp_fopen
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"ota get done, %d bytes reveived\n"
.LC7:
	.string	"ota get failed\n"
	.section	.text.unlikely.ota_get_done,"ax",@progbits
.LCOLDB8:
	.section	.text.ota_get_done,"ax",@progbits
.LHOTB8:
	.globl	ota_get_done
	.type	ota_get_done, @function
ota_get_done:
.LFB21:
	.loc 1 48 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 48 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 49 0
	cmpl	$0, 8(%ebp)
	jne	.L21
.LBB3:
	.loc 1 50 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	$.LC6
	call	bk_printf
.LVL17:
	.loc 1 52 0 discriminator 1
	movl	$2, -32(%ebp)
	.loc 1 53 0 discriminator 1
	movl	$0, -28(%ebp)
	.loc 1 54 0 discriminator 1
	call	hal_ota_get_default_module
.LVL18:
	popl	%edx
	leal	-32(%ebp), %edx
	popl	%ecx
	pushl	%edx
	pushl	%eax
	call	hal_ota_set_boot
.LVL19:
	jmp	.L25
.L21:
.LBE3:
	.loc 1 56 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC7
	call	bk_printf
.LVL20:
.L25:
	addl	$16, %esp
	.loc 1 58 0 discriminator 1
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L23
	.loc 1 58 0 is_stmt 0
	call	__stack_chk_fail
.LVL21:
.L23:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	ota_get_done, .-ota_get_done
	.section	.text.unlikely.ota_get_done
.LCOLDE8:
	.section	.text.ota_get_done
.LHOTE8:
	.globl	ota_ctx
	.section	.rodata.ota_ctx,"a",@progbits
	.align 4
	.type	ota_ctx, @object
	.size	ota_ctx, 16
ota_ctx:
	.long	tftp_fopen
	.long	tftp_fclose
	.long	tftp_fread
	.long	tftp_fwrite
	.text
.Letext0:
	.section	.text.unlikely.tftp_fclose
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/hal/ota.h"
	.file 5 "./include/hal/sensor.h"
	.file 6 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 7 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 8 "./kernel/protocols/net/include/lwip/apps/tftp.h"
	.file 9 "./include/aos/log.h"
	.file 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 11 "././platform/mcu/moc108/include/driver/uart_pub.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x595
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x1d
	.long	0x53
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
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x41
	.long	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x6
	.byte	0x4
	.long	0x9e
	.uleb128 0x7
	.long	0x91
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x18
	.long	0x48
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x30
	.long	0x6f
	.uleb128 0x6
	.byte	0x4
	.long	0xbf
	.uleb128 0x8
	.long	0xca
	.uleb128 0x9
	.long	0x8f
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF16
	.uleb128 0xa
	.byte	0x4
	.long	0x2c
	.byte	0x4
	.byte	0x13
	.long	0xf0
	.uleb128 0xb
	.long	.LASF17
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x17
	.long	0xd1
	.uleb128 0xa
	.byte	0x4
	.long	0x2c
	.byte	0x4
	.byte	0x1a
	.long	0x114
	.uleb128 0xb
	.long	.LASF21
	.byte	0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF23
	.byte	0x4
	.byte	0x1d
	.long	0xfb
	.uleb128 0xa
	.byte	0x4
	.long	0x2c
	.byte	0x4
	.byte	0x27
	.long	0x138
	.uleb128 0xb
	.long	.LASF24
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x4
	.byte	0x2a
	.long	0x11f
	.uleb128 0xc
	.byte	0x14
	.byte	0x4
	.byte	0x2c
	.long	0x188
	.uleb128 0xd
	.long	.LASF27
	.byte	0x4
	.byte	0x2e
	.long	0xf0
	.byte	0
	.uleb128 0xd
	.long	.LASF28
	.byte	0x4
	.byte	0x2f
	.long	0x114
	.byte	0x4
	.uleb128 0xd
	.long	.LASF29
	.byte	0x4
	.byte	0x30
	.long	0x138
	.byte	0x8
	.uleb128 0xd
	.long	.LASF30
	.byte	0x4
	.byte	0x31
	.long	0xae
	.byte	0xc
	.uleb128 0xd
	.long	.LASF31
	.byte	0x4
	.byte	0x32
	.long	0xa3
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x33
	.long	0x143
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF33
	.uleb128 0xa
	.byte	0x4
	.long	0x2c
	.byte	0x5
	.byte	0x48
	.long	0x1f5
	.uleb128 0xb
	.long	.LASF34
	.byte	0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.uleb128 0xb
	.long	.LASF36
	.byte	0x2
	.uleb128 0xb
	.long	.LASF37
	.byte	0x3
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.uleb128 0xb
	.long	.LASF42
	.byte	0x8
	.uleb128 0xb
	.long	.LASF43
	.byte	0x9
	.uleb128 0xb
	.long	.LASF44
	.byte	0xa
	.uleb128 0xb
	.long	.LASF45
	.byte	0xb
	.uleb128 0xb
	.long	.LASF46
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF47
	.uleb128 0x4
	.long	.LASF48
	.byte	0x6
	.byte	0x31
	.long	0x53
	.uleb128 0x4
	.long	.LASF49
	.byte	0x6
	.byte	0x33
	.long	0x61
	.uleb128 0x4
	.long	.LASF50
	.byte	0x6
	.byte	0x34
	.long	0x5a
	.uleb128 0xe
	.long	.LASF56
	.byte	0x10
	.byte	0x7
	.byte	0x9d
	.long	0x27e
	.uleb128 0xd
	.long	.LASF51
	.byte	0x7
	.byte	0x9f
	.long	0x27e
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.byte	0xa2
	.long	0x8f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF53
	.byte	0x7
	.byte	0xab
	.long	0x207
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x7
	.byte	0xae
	.long	0x207
	.byte	0xa
	.uleb128 0xd
	.long	.LASF54
	.byte	0x7
	.byte	0xb1
	.long	0x1fc
	.byte	0xc
	.uleb128 0xd
	.long	.LASF55
	.byte	0x7
	.byte	0xb4
	.long	0x1fc
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x7
	.byte	0xc2
	.long	0x207
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x21d
	.uleb128 0xe
	.long	.LASF57
	.byte	0x10
	.byte	0x8
	.byte	0x4b
	.long	0x2c1
	.uleb128 0xd
	.long	.LASF58
	.byte	0x8
	.byte	0x53
	.long	0x2da
	.byte	0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x8
	.byte	0x58
	.long	0xb9
	.byte	0x4
	.uleb128 0xd
	.long	.LASF60
	.byte	0x8
	.byte	0x60
	.long	0x2f9
	.byte	0x8
	.uleb128 0xd
	.long	.LASF61
	.byte	0x8
	.byte	0x69
	.long	0x313
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	0x8f
	.long	0x2da
	.uleb128 0x9
	.long	0x98
	.uleb128 0x9
	.long	0x98
	.uleb128 0x9
	.long	0x1fc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2c1
	.uleb128 0x10
	.long	0x25
	.long	0x2f9
	.uleb128 0x9
	.long	0x8f
	.uleb128 0x9
	.long	0x8f
	.uleb128 0x9
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2e0
	.uleb128 0x10
	.long	0x25
	.long	0x313
	.uleb128 0x9
	.long	0x8f
	.uleb128 0x9
	.long	0x27e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2ff
	.uleb128 0x4
	.long	.LASF62
	.byte	0x8
	.byte	0x6a
	.long	0x284
	.uleb128 0x11
	.long	.LASF87
	.byte	0x1
	.byte	0x1c
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x348
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.byte	0x1c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x20
	.long	0x25
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x38c
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.byte	0x20
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.byte	0x20
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x25
	.long	0x25
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x402
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.byte	0x25
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x25
	.long	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x27
	.long	0x402
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.byte	0x28
	.long	0x25
	.long	.LLST0
	.uleb128 0x17
	.long	.LVL4
	.long	0x541
	.uleb128 0x17
	.long	.LVL5
	.long	0x54d
	.uleb128 0x17
	.long	.LVL6
	.long	0x558
	.uleb128 0x17
	.long	.LVL8
	.long	0x563
	.byte	0
	.uleb128 0x18
	.long	0xa3
	.long	0x413
	.uleb128 0x19
	.long	0x88
	.value	0x1ff
	.byte	0
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0xd
	.long	0x8f
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a5
	.uleb128 0x12
	.long	.LASF70
	.byte	0x1
	.byte	0xd
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x1
	.byte	0xd
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0xd
	.long	0x1fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.byte	0xf
	.long	0x8f
	.long	.LLST1
	.uleb128 0x1b
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x489
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0x15
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LVL13
	.long	0x56c
	.byte	0
	.uleb128 0x17
	.long	.LVL11
	.long	0x577
	.uleb128 0x17
	.long	.LVL12
	.long	0x577
	.uleb128 0x17
	.long	.LVL15
	.long	0x563
	.byte	0
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x1
	.byte	0x2f
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x520
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.byte	0x2f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x2f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0x50d
	.uleb128 0x15
	.long	.LASF74
	.byte	0x1
	.byte	0x33
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LVL17
	.long	0x582
	.uleb128 0x17
	.long	.LVL18
	.long	0x54d
	.uleb128 0x17
	.long	.LVL19
	.long	0x58d
	.byte	0
	.uleb128 0x17
	.long	.LVL20
	.long	0x582
	.uleb128 0x17
	.long	.LVL21
	.long	0x563
	.byte	0
	.uleb128 0x1d
	.long	.LASF75
	.byte	0x9
	.byte	0x17
	.long	0x2c
	.uleb128 0x1e
	.long	.LASF76
	.byte	0x1
	.byte	0x3b
	.long	0x53c
	.uleb128 0x5
	.byte	0x3
	.long	ota_ctx
	.uleb128 0x7
	.long	0x319
	.uleb128 0x1f
	.long	.LASF77
	.long	.LASF77
	.byte	0x7
	.value	0x10f
	.uleb128 0x20
	.long	.LASF78
	.long	.LASF78
	.byte	0x4
	.byte	0x99
	.uleb128 0x20
	.long	.LASF79
	.long	.LASF79
	.byte	0x4
	.byte	0x72
	.uleb128 0x21
	.long	.LASF89
	.long	.LASF89
	.uleb128 0x20
	.long	.LASF80
	.long	.LASF80
	.byte	0x4
	.byte	0x61
	.uleb128 0x20
	.long	.LASF81
	.long	.LASF81
	.byte	0xa
	.byte	0x27
	.uleb128 0x20
	.long	.LASF82
	.long	.LASF82
	.byte	0xb
	.byte	0x3d
	.uleb128 0x20
	.long	.LASF83
	.long	.LASF83
	.byte	0x4
	.byte	0x91
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.long	.LVL3
	.long	.LVL6
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL6
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LFE20
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL10
	.long	.LVL13
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB17
	.long	.LFE17
	.long	.LFB21
	.long	.LFE21
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"uint32_t"
.LASF82:
	.string	"bk_printf"
.LASF46:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF48:
	.string	"u8_t"
.LASF61:
	.string	"write"
.LASF5:
	.string	"short int"
.LASF12:
	.string	"sizetype"
.LASF37:
	.string	"TAG_DEV_ALS"
.LASF80:
	.string	"hal_ota_init"
.LASF36:
	.string	"TAG_DEV_GYRO"
.LASF2:
	.string	"long double"
.LASF9:
	.string	"__uint32_t"
.LASF67:
	.string	"buff"
.LASF71:
	.string	"mode"
.LASF78:
	.string	"hal_ota_get_default_module"
.LASF21:
	.string	"OTA_FINISH"
.LASF22:
	.string	"OTA_BREAKPOINT"
.LASF14:
	.string	"uint8_t"
.LASF79:
	.string	"hal_ota_write"
.LASF85:
	.string	"src/tftp_ota.c"
.LASF19:
	.string	"OTA_ALL"
.LASF88:
	.string	"ota_get_done"
.LASF33:
	.string	"float"
.LASF41:
	.string	"TAG_DEV_UV"
.LASF20:
	.string	"OTA_ENUM_UPDATE_TYPE"
.LASF1:
	.string	"long long int"
.LASF30:
	.string	"splict_size"
.LASF32:
	.string	"ota_finish_param_t"
.LASF18:
	.string	"OTA_APP"
.LASF7:
	.string	"long int"
.LASF72:
	.string	"offset"
.LASF8:
	.string	"__uint8_t"
.LASF66:
	.string	"tftp_fwrite"
.LASF75:
	.string	"aos_log_level"
.LASF24:
	.string	"OTA_RAW"
.LASF45:
	.string	"TAG_DEV_GPS"
.LASF4:
	.string	"unsigned char"
.LASF87:
	.string	"tftp_fclose"
.LASF17:
	.string	"OTA_KERNEL"
.LASF40:
	.string	"TAG_DEV_TEMP"
.LASF50:
	.string	"s16_t"
.LASF42:
	.string	"TAG_DEV_HUMI"
.LASF3:
	.string	"signed char"
.LASF55:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF54:
	.string	"type"
.LASF76:
	.string	"ota_ctx"
.LASF43:
	.string	"TAG_DEV_HALL"
.LASF70:
	.string	"fname"
.LASF74:
	.string	"param"
.LASF49:
	.string	"u16_t"
.LASF6:
	.string	"short unsigned int"
.LASF39:
	.string	"TAG_DEV_BARO"
.LASF13:
	.string	"char"
.LASF29:
	.string	"firmware_type"
.LASF28:
	.string	"result_type"
.LASF23:
	.string	"OTA_ENUM_RESULT_TYPE"
.LASF68:
	.string	"writebytes"
.LASF77:
	.string	"pbuf_copy_partial"
.LASF27:
	.string	"update_type"
.LASF16:
	.string	"_Bool"
.LASF60:
	.string	"read"
.LASF57:
	.string	"tftp_context_s"
.LASF62:
	.string	"tftp_context_t"
.LASF10:
	.string	"long unsigned int"
.LASF64:
	.string	"bytes"
.LASF47:
	.string	"double"
.LASF35:
	.string	"TAG_DEV_MAG"
.LASF83:
	.string	"hal_ota_set_boot"
.LASF63:
	.string	"handle"
.LASF59:
	.string	"close"
.LASF44:
	.string	"TAG_DEV_HR"
.LASF84:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF26:
	.string	"OTA_ENUM_FIRMWARE_TYPE"
.LASF31:
	.string	"diff_version"
.LASF58:
	.string	"open"
.LASF34:
	.string	"TAG_DEV_ACC"
.LASF65:
	.string	"tftp_fread"
.LASF53:
	.string	"tot_len"
.LASF73:
	.string	"error"
.LASF86:
	.string	"/home/stone/Documents/pca"
.LASF25:
	.string	"OTA_DIFF"
.LASF89:
	.string	"__stack_chk_fail"
.LASF81:
	.string	"strncmp"
.LASF0:
	.string	"unsigned int"
.LASF69:
	.string	"tftp_fopen"
.LASF38:
	.string	"TAG_DEV_PS"
.LASF52:
	.string	"payload"
.LASF51:
	.string	"next"
.LASF56:
	.string	"pbuf"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"tftp_common.c"
	.text
.Ltext0:
	.section	.text.unlikely.tftp_send_error,"ax",@progbits
.LCOLDB0:
	.section	.text.tftp_send_error,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.tftp_send_error
.Ltext_cold0:
	.section	.text.tftp_send_error
	.globl	tftp_send_error
	.type	tftp_send_error, @function
tftp_send_error:
.LFB23:
	.file 1 "kernel/protocols/net/apps/tftp/tftp_common.c"
	.loc 1 61 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 62 0
	orl	$-1, %ecx
	.loc 1 61 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL1:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 61 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %esi
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 62 0
	movl	-28(%ebp), %edi
	xorl	%eax, %eax
	repnz scasb
.LVL2:
	.loc 1 66 0
	pushl	$0
	.loc 1 62 0
	notl	%ecx
	movl	%ecx, -32(%ebp)
.LVL3:
	.loc 1 66 0
	movl	-32(%ebp), %eax
	addl	$4, %eax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$0
	call	pbuf_alloc
.LVL4:
	.loc 1 67 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L1
	.loc 1 71 0
	movl	4(%eax), %edi
.LVL5:
	.loc 1 73 0
	subl	$12, %esp
	movzwl	%si, %esi
	movl	%eax, %ebx
	.loc 1 72 0
	movw	$1280, (%edi)
	.loc 1 73 0
	pushl	%esi
	call	lwip_htons
.LVL6:
	.loc 1 74 0
	leal	4(%edi), %edx
	.loc 1 73 0
	movw	%ax, 2(%edi)
	.loc 1 74 0
	movl	-28(%ebp), %esi
	movl	-32(%ebp), %ecx
	.loc 1 76 0
	movzwl	-44(%ebp), %eax
	.loc 1 74 0
	movl	%edx, %edi
.LVL7:
	rep movsb
	.loc 1 76 0
	pushl	%eax
	pushl	-40(%ebp)
	pushl	%ebx
	pushl	-36(%ebp)
	call	udp_sendto
.LVL8:
	.loc 1 77 0
	movl	%ebx, 8(%ebp)
	addl	$32, %esp
	.loc 1 78 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL9:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 77 0
	jmp	pbuf_free
.LVL10:
.L1:
	.cfi_restore_state
	.loc 1 78 0
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
.LFE23:
	.size	tftp_send_error, .-tftp_send_error
	.section	.text.unlikely.tftp_send_error
.LCOLDE0:
	.section	.text.tftp_send_error
.LHOTE0:
	.section	.text.unlikely.tftp_send_ack,"ax",@progbits
.LCOLDB1:
	.section	.text.tftp_send_ack,"ax",@progbits
.LHOTB1:
	.globl	tftp_send_ack
	.type	tftp_send_ack, @function
tftp_send_ack:
.LFB24:
	.loc 1 82 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 82 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	.loc 1 86 0
	pushl	$0
	pushl	$4
	pushl	$0
	.loc 1 82 0
	movl	20(%ebp), %ebx
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 86 0
	call	pbuf_alloc
.LVL12:
	.loc 1 87 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L5
	.loc 1 90 0
	movl	4(%eax), %ecx
.LVL13:
	.loc 1 93 0
	subl	$12, %esp
	movzwl	%bx, %ebx
	movl	%eax, %esi
	.loc 1 92 0
	movw	$1024, (%ecx)
	.loc 1 93 0
	pushl	%ebx
	.loc 1 92 0
	movl	%ecx, -36(%ebp)
	.loc 1 93 0
	call	lwip_htons
.LVL14:
	movl	-36(%ebp), %ecx
	movw	%ax, 2(%ecx)
	.loc 1 94 0
	movzwl	-32(%ebp), %eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	pushl	-28(%ebp)
	call	udp_sendto
.LVL15:
	.loc 1 95 0
	movl	%esi, 8(%ebp)
	addl	$32, %esp
	.loc 1 96 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL16:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 95 0
	jmp	pbuf_free
.LVL17:
.L5:
	.cfi_restore_state
	.loc 1 96 0
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
.LFE24:
	.size	tftp_send_ack, .-tftp_send_ack
	.section	.text.unlikely.tftp_send_ack
.LCOLDE1:
	.section	.text.tftp_send_ack
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.tftp_send_error
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 4 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 5 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 6 "./kernel/protocols/net/include/lwip/udp.h"
	.file 7 "./kernel/protocols/net/include/lwip/apps/tftp.h"
	.file 8 "./kernel/protocols/net/include/lwip/def.h"
	.file 9 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x44e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF66
	.byte	0xc
	.long	.LASF67
	.long	.LASF68
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.long	0x7b
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x31
	.long	0x48
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x33
	.long	0x56
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x35
	.long	0x64
	.uleb128 0x8
	.byte	0x4
	.long	0x2c
	.byte	0x3
	.byte	0x48
	.long	0xe7
	.uleb128 0x9
	.long	.LASF17
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2c
	.byte	0x3
	.byte	0x69
	.long	0x10c
	.uleb128 0x9
	.long	.LASF22
	.byte	0
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.uleb128 0x9
	.long	.LASF24
	.byte	0x2
	.uleb128 0x9
	.long	.LASF25
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x10
	.byte	0x3
	.byte	0x9d
	.long	0x16d
	.uleb128 0xb
	.long	.LASF26
	.byte	0x3
	.byte	0x9f
	.long	0x16d
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x3
	.byte	0xa2
	.long	0x79
	.byte	0x4
	.uleb128 0xb
	.long	.LASF28
	.byte	0x3
	.byte	0xab
	.long	0xa6
	.byte	0x8
	.uleb128 0xc
	.string	"len"
	.byte	0x3
	.byte	0xae
	.long	0xa6
	.byte	0xa
	.uleb128 0xb
	.long	.LASF29
	.byte	0x3
	.byte	0xb1
	.long	0x9b
	.byte	0xc
	.uleb128 0xb
	.long	.LASF30
	.byte	0x3
	.byte	0xb4
	.long	0x9b
	.byte	0xd
	.uleb128 0xc
	.string	"ref"
	.byte	0x3
	.byte	0xc2
	.long	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x10c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF31
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x4
	.byte	0x35
	.long	0x193
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.byte	0x36
	.long	0xb1
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF35
	.byte	0x4
	.byte	0x49
	.long	0x17a
	.uleb128 0x7
	.long	.LASF36
	.byte	0x5
	.byte	0xe1
	.long	0x193
	.uleb128 0x7
	.long	.LASF37
	.byte	0x6
	.byte	0x4d
	.long	0x1b4
	.uleb128 0x5
	.byte	0x4
	.long	0x1ba
	.uleb128 0xd
	.long	0x1d9
	.uleb128 0xe
	.long	0x79
	.uleb128 0xe
	.long	0x1d9
	.uleb128 0xe
	.long	0x16d
	.uleb128 0xe
	.long	0x288
	.uleb128 0xe
	.long	0xa6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1df
	.uleb128 0xa
	.long	.LASF38
	.byte	0x28
	.byte	0x6
	.byte	0x51
	.long	0x288
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.byte	0x53
	.long	0x19e
	.byte	0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.byte	0x53
	.long	0x19e
	.byte	0x4
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.byte	0x53
	.long	0x9b
	.byte	0x8
	.uleb128 0xc
	.string	"tos"
	.byte	0x6
	.byte	0x53
	.long	0x9b
	.byte	0x9
	.uleb128 0xc
	.string	"ttl"
	.byte	0x6
	.byte	0x53
	.long	0x9b
	.byte	0xa
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0x57
	.long	0x1d9
	.byte	0xc
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.byte	0x59
	.long	0x9b
	.byte	0x10
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0x5b
	.long	0xa6
	.byte	0x12
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.byte	0x5b
	.long	0xa6
	.byte	0x14
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.byte	0x5f
	.long	0x19e
	.byte	0x18
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0x61
	.long	0x9b
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0x6a
	.long	0x1a9
	.byte	0x20
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0x6c
	.long	0x79
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x28e
	.uleb128 0x6
	.long	0x19e
	.uleb128 0xf
	.long	.LASF69
	.byte	0x4
	.long	0x2c
	.byte	0x7
	.byte	0x41
	.long	0x2ce
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.uleb128 0x9
	.long	.LASF49
	.byte	0x2
	.uleb128 0x9
	.long	.LASF50
	.byte	0x3
	.uleb128 0x9
	.long	.LASF51
	.byte	0x4
	.uleb128 0x9
	.long	.LASF52
	.byte	0x5
	.uleb128 0x9
	.long	.LASF53
	.byte	0x6
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x7
	.byte	0x49
	.long	0x293
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x3b
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x385
	.uleb128 0x11
	.string	"pcb"
	.byte	0x1
	.byte	0x3b
	.long	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x3b
	.long	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x3b
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x3c
	.long	0x2ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x13
	.string	"str"
	.byte	0x1
	.byte	0x3c
	.long	0x82
	.long	.LLST0
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x3e
	.long	0x25
	.long	.LLST1
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x3f
	.long	0x16d
	.long	.LLST2
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.byte	0x40
	.long	0x385
	.long	.LLST3
	.uleb128 0x16
	.long	.LVL4
	.long	0x424
	.uleb128 0x16
	.long	.LVL6
	.long	0x42f
	.uleb128 0x16
	.long	.LVL8
	.long	0x43a
	.uleb128 0x17
	.long	.LVL10
	.long	0x445
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xa6
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1
	.byte	0x51
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x419
	.uleb128 0x11
	.string	"pcb"
	.byte	0x1
	.byte	0x51
	.long	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x51
	.long	0x288
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x51
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x51
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x53
	.long	0x16d
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.byte	0x54
	.long	0x385
	.long	.LLST5
	.uleb128 0x16
	.long	.LVL12
	.long	0x424
	.uleb128 0x16
	.long	.LVL14
	.long	0x42f
	.uleb128 0x16
	.long	.LVL15
	.long	0x43a
	.uleb128 0x17
	.long	.LVL17
	.long	0x445
	.byte	0
	.uleb128 0x18
	.long	.LASF70
	.byte	0x9
	.byte	0x17
	.long	0x2c
	.uleb128 0x19
	.long	.LASF62
	.long	.LASF62
	.byte	0x3
	.byte	0xfa
	.uleb128 0x19
	.long	.LASF63
	.long	.LASF63
	.byte	0x8
	.byte	0x56
	.uleb128 0x19
	.long	.LASF64
	.long	.LASF64
	.byte	0x6
	.byte	0x83
	.uleb128 0x1a
	.long	.LASF65
	.long	.LASF65
	.byte	0x3
	.value	0x109
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.value	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL6-1
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LVL10-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LFE23
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LVL8-1
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL12
	.long	.LVL14-1
	.value	0x1
	.byte	0x50
	.long	.LVL14-1
	.long	.LVL16
	.value	0x1
	.byte	0x56
	.long	.LVL16
	.long	.LVL17-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL17
	.long	.LFE24
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL14-1
	.value	0x1
	.byte	0x51
	.long	.LVL14-1
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"pbuf_free"
.LASF38:
	.string	"udp_pcb"
.LASF5:
	.string	"short int"
.LASF55:
	.string	"tftp_error_t"
.LASF10:
	.string	"sizetype"
.LASF40:
	.string	"remote_ip"
.LASF61:
	.string	"blknum"
.LASF54:
	.string	"TFTP_ERROR_NO_SUCH_USER"
.LASF22:
	.string	"PBUF_RAM"
.LASF44:
	.string	"multicast_ip"
.LASF21:
	.string	"PBUF_RAW"
.LASF37:
	.string	"udp_recv_fn"
.LASF12:
	.string	"float"
.LASF39:
	.string	"local_ip"
.LASF1:
	.string	"long long int"
.LASF49:
	.string	"TFTP_ERROR_ACCESS_VIOLATION"
.LASF7:
	.string	"long int"
.LASF36:
	.string	"ip_addr_t"
.LASF34:
	.string	"addr"
.LASF43:
	.string	"remote_port"
.LASF67:
	.string	"src/tftp_common.c"
.LASF70:
	.string	"aos_log_level"
.LASF51:
	.string	"TFTP_ERROR_ILLEGAL_OPERATION"
.LASF4:
	.string	"unsigned char"
.LASF52:
	.string	"TFTP_ERROR_UNKNOWN_TRFR_ID"
.LASF58:
	.string	"str_length"
.LASF2:
	.string	"long double"
.LASF68:
	.string	"/home/stone/Documents/pca"
.LASF3:
	.string	"signed char"
.LASF30:
	.string	"flags"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"type"
.LASF69:
	.string	"tftp_error_s"
.LASF0:
	.string	"unsigned int"
.LASF66:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF57:
	.string	"code"
.LASF63:
	.string	"lwip_htons"
.LASF47:
	.string	"recv_arg"
.LASF25:
	.string	"PBUF_POOL"
.LASF11:
	.string	"char"
.LASF31:
	.string	"_Bool"
.LASF60:
	.string	"tftp_send_ack"
.LASF45:
	.string	"mcast_ttl"
.LASF6:
	.string	"short unsigned int"
.LASF62:
	.string	"pbuf_alloc"
.LASF59:
	.string	"tftp_send_error"
.LASF33:
	.string	"ip4_addr"
.LASF48:
	.string	"TFTP_ERROR_FILE_NOT_FOUND"
.LASF56:
	.string	"port"
.LASF17:
	.string	"PBUF_TRANSPORT"
.LASF18:
	.string	"PBUF_IP"
.LASF64:
	.string	"udp_sendto"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF35:
	.string	"ip4_addr_t"
.LASF53:
	.string	"TFTP_ERROR_FILE_EXISTS"
.LASF50:
	.string	"TFTP_ERROR_DISK_FULL"
.LASF14:
	.string	"u8_t"
.LASF16:
	.string	"u32_t"
.LASF15:
	.string	"u16_t"
.LASF41:
	.string	"so_options"
.LASF28:
	.string	"tot_len"
.LASF42:
	.string	"local_port"
.LASF46:
	.string	"recv"
.LASF24:
	.string	"PBUF_REF"
.LASF20:
	.string	"PBUF_RAW_TX"
.LASF23:
	.string	"PBUF_ROM"
.LASF27:
	.string	"payload"
.LASF26:
	.string	"next"
.LASF32:
	.string	"pbuf"
.LASF19:
	.string	"PBUF_LINK"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

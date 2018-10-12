	.file	"MQTTDeserializePublish.c"
	.text
.Ltext0:
	.section	.text.unlikely.MQTTDeserialize_publish,"ax",@progbits
.LCOLDB0:
	.section	.text.MQTTDeserialize_publish,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.MQTTDeserialize_publish
.Ltext_cold0:
	.section	.text.MQTTDeserialize_publish
	.globl	MQTTDeserialize_publish
	.type	MQTTDeserialize_publish, @function
MQTTDeserialize_publish:
.LFB0:
	.file 1 "framework/connectivity/mqtt/MQTTPacket/MQTTDeserializePublish.c"
	.loc 1 37 0
	.cfi_startproc
.LVL0:
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
	.loc 1 44 0
	leal	-36(%ebp), %esi
	.loc 1 41 0
	xorl	%edi, %edi
	.loc 1 37 0
	subl	$72, %esp
	.loc 1 37 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	.loc 1 44 0
	pushl	%esi
	.loc 1 37 0
	movl	16(%ebp), %ebx
	.loc 1 42 0
	movl	$0, -32(%ebp)
	.loc 1 37 0
	movl	%eax, -44(%ebp)
	movl	20(%ebp), %eax
	movl	%ecx, -64(%ebp)
	movl	%eax, -48(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 39 0
	movl	36(%ebp), %eax
	movl	%eax, -36(%ebp)
.LVL1:
	.loc 1 44 0
	call	readChar
.LVL2:
	xorl	%edx, %edx
.LVL3:
	.loc 1 45 0
	addl	$16, %esp
	movl	-64(%ebp), %ecx
	.loc 1 44 0
	movb	%al, %dl
	.loc 1 45 0
	andl	$-16, %eax
	cmpb	$48, %al
	jne	.L2
.LVL4:
	.loc 1 47 0
	movl	%edx, %eax
	shrl	$3, %eax
	andl	$1, %eax
	movb	%al, (%ecx)
	.loc 1 48 0
	movl	-44(%ebp), %ecx
	movl	%edx, %eax
	shrl	%eax
	.loc 1 49 0
	andl	$1, %edx
.LVL5:
	.loc 1 48 0
	andl	$3, %eax
	movl	%eax, (%ecx)
	.loc 1 49 0
	movb	%dl, (%ebx)
	.loc 1 51 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	%eax
	pushl	-36(%ebp)
	call	MQTTPacket_decodeBuf
.LVL6:
	movl	-36(%ebp), %ebx
	.loc 1 54 0
	addl	$12, %esp
	.loc 1 51 0
	movl	%eax, %edi
.LVL7:
	addl	%eax, %ebx
	movl	%ebx, -36(%ebp)
	.loc 1 52 0
	addl	-32(%ebp), %ebx
.LVL8:
	.loc 1 54 0
	pushl	%ebx
	pushl	%esi
	pushl	-52(%ebp)
	call	readMQTTLenString
.LVL9:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 54 0 is_stmt 0 discriminator 1
	cmpl	-36(%ebp), %ebx
	js	.L2
	.loc 1 58 0 is_stmt 1
	movl	-44(%ebp), %eax
	cmpl	$0, (%eax)
	jle	.L3
	.loc 1 59 0
	subl	$12, %esp
	pushl	%esi
	call	readInt
.LVL10:
	movl	-48(%ebp), %esi
	addl	$16, %esp
	movw	%ax, (%esi)
.L3:
	.loc 1 61 0
	movl	-36(%ebp), %eax
	movl	-60(%ebp), %edi
.LVL11:
	.loc 1 62 0
	movl	-56(%ebp), %ecx
	.loc 1 61 0
	subl	%eax, %ebx
.LVL12:
	movl	%ebx, (%edi)
	.loc 1 62 0
	movl	%eax, (%ecx)
.LVL13:
	.loc 1 63 0
	movl	$1, %edi
.LVL14:
.L2:
	.loc 1 66 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	movl	%edi, %eax
	je	.L4
	call	__stack_chk_fail
.LVL15:
.L4:
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
.LFE0:
	.size	MQTTDeserialize_publish, .-MQTTDeserialize_publish
	.section	.text.unlikely.MQTTDeserialize_publish
.LCOLDE0:
	.section	.text.MQTTDeserialize_publish
.LHOTE0:
	.section	.text.unlikely.MQTTDeserialize_ack,"ax",@progbits
.LCOLDB1:
	.section	.text.MQTTDeserialize_ack,"ax",@progbits
.LHOTB1:
	.globl	MQTTDeserialize_ack
	.type	MQTTDeserialize_ack, @function
MQTTDeserialize_ack:
.LFB1:
	.loc 1 80 0
	.cfi_startproc
.LVL16:
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
	.loc 1 87 0
	leal	-36(%ebp), %esi
	.loc 1 80 0
	subl	$56, %esp
	.loc 1 80 0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 82 0
	movl	20(%ebp), %eax
	.loc 1 87 0
	pushl	%esi
	.loc 1 80 0
	movl	%ecx, -44(%ebp)
	movl	16(%ebp), %ebx
	.loc 1 82 0
	movl	%eax, -36(%ebp)
.LVL17:
	.loc 1 87 0
	call	readChar
.LVL18:
	xorl	%edx, %edx
.LVL19:
	.loc 1 88 0
	movl	-44(%ebp), %ecx
	.loc 1 87 0
	movb	%al, %dl
.LVL20:
	.loc 1 88 0
	movl	%edx, %eax
	.loc 1 89 0
	shrl	$4, %edx
.LVL21:
	.loc 1 88 0
	shrl	$3, %eax
	andl	$1, %eax
	movb	%al, (%ecx)
	.loc 1 89 0
	movb	%dl, (%edi)
	.loc 1 91 0
	popl	%eax
	leal	-32(%ebp), %eax
	popl	%edx
	pushl	%eax
	pushl	-36(%ebp)
	call	MQTTPacket_decodeBuf
.LVL22:
	.loc 1 94 0
	addl	$16, %esp
	.loc 1 91 0
	addl	%eax, -36(%ebp)
.LVL23:
	.loc 1 94 0
	cmpl	$1, -32(%ebp)
	jle	.L12
	.loc 1 96 0
	subl	$12, %esp
	pushl	%esi
	call	readInt
.LVL24:
	addl	$16, %esp
	movw	%ax, (%ebx)
.LVL25:
	.loc 1 98 0
	movl	$1, %eax
.LVL26:
.L12:
	.loc 1 101 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
	je	.L13
	call	__stack_chk_fail
.LVL27:
.L13:
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
.LFE1:
	.size	MQTTDeserialize_ack, .-MQTTDeserialize_ack
	.section	.text.unlikely.MQTTDeserialize_ack
.LCOLDE1:
	.section	.text.MQTTDeserialize_ack
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.MQTTDeserialize_publish
.Letext_cold0:
	.file 2 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3f7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF55
	.byte	0xc
	.long	.LASF56
	.long	.LASF57
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF58
	.byte	0x4
	.long	0x97
	.byte	0x2
	.byte	0x2d
	.long	0x97
	.uleb128 0x4
	.long	.LASF0
	.byte	0
	.uleb128 0x4
	.long	.LASF1
	.byte	0x1
	.uleb128 0x4
	.long	.LASF2
	.byte	0x2
	.uleb128 0x4
	.long	.LASF3
	.byte	0x3
	.uleb128 0x4
	.long	.LASF4
	.byte	0x4
	.uleb128 0x4
	.long	.LASF5
	.byte	0x5
	.uleb128 0x4
	.long	.LASF6
	.byte	0x6
	.uleb128 0x4
	.long	.LASF7
	.byte	0x7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x9
	.uleb128 0x4
	.long	.LASF10
	.byte	0xa
	.uleb128 0x4
	.long	.LASF11
	.byte	0xb
	.uleb128 0x4
	.long	.LASF12
	.byte	0xc
	.uleb128 0x4
	.long	.LASF13
	.byte	0xd
	.uleb128 0x4
	.long	.LASF14
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0x43
	.long	0xe3
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x45
	.long	0x97
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.string	"qos"
	.byte	0x2
	.byte	0x46
	.long	0x97
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.string	"dup"
	.byte	0x2
	.byte	0x47
	.long	0x97
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0x48
	.long	0x97
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x2
	.byte	0x37
	.long	0x102
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.byte	0x39
	.long	0x102
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.byte	0x49
	.long	0x9e
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.byte	0x4b
	.long	0xe3
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0x4d
	.long	0x135
	.uleb128 0xc
	.string	"len"
	.byte	0x2
	.byte	0x4f
	.long	0x25
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x2
	.byte	0x50
	.long	0x135
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.long	0x13b
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0x51
	.long	0x114
	.uleb128 0x6
	.byte	0xc
	.byte	0x2
	.byte	0x53
	.long	0x16e
	.uleb128 0xd
	.long	.LASF25
	.byte	0x2
	.byte	0x55
	.long	0x135
	.byte	0
	.uleb128 0xd
	.long	.LASF26
	.byte	0x2
	.byte	0x56
	.long	0x142
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.byte	0x57
	.long	0x14d
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF28
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF29
	.uleb128 0xe
	.byte	0x4
	.long	0x102
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF30
	.uleb128 0x5
	.byte	0xc
	.byte	0x4
	.long	.LASF31
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF32
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF33
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.long	.LASF34
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF35
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF36
	.uleb128 0xf
	.long	.LASF47
	.byte	0x1
	.byte	0x23
	.long	0x25
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d6
	.uleb128 0x10
	.string	"dup"
	.byte	0x1
	.byte	0x23
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"qos"
	.byte	0x1
	.byte	0x23
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.byte	0x23
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.byte	0x23
	.long	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.byte	0x23
	.long	0x2e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.byte	0x24
	.long	0x2e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.byte	0x24
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x24
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x24
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x26
	.long	0x109
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF44
	.byte	0x1
	.byte	0x27
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF45
	.byte	0x1
	.byte	0x28
	.long	0x187
	.long	.LLST1
	.uleb128 0x14
	.string	"rc"
	.byte	0x1
	.byte	0x29
	.long	0x25
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0x2a
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x40
	.long	.L2
	.uleb128 0x16
	.long	.LVL2
	.long	0x3c5
	.uleb128 0x16
	.long	.LVL6
	.long	0x3d0
	.uleb128 0x16
	.long	.LVL9
	.long	0x3db
	.uleb128 0x16
	.long	.LVL10
	.long	0x3e6
	.uleb128 0x16
	.long	.LVL15
	.long	0x3f1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.long	0x25
	.uleb128 0xe
	.byte	0x4
	.long	0x180
	.uleb128 0xe
	.byte	0x4
	.long	0x16e
	.uleb128 0xe
	.byte	0x4
	.long	0x187
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0x4f
	.long	0x25
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c5
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0x4f
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"dup"
	.byte	0x1
	.byte	0x4f
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.byte	0x4f
	.long	0x2dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x4f
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x4f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x51
	.long	0x109
	.long	.LLST3
	.uleb128 0x13
	.long	.LASF44
	.byte	0x1
	.byte	0x52
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF45
	.byte	0x1
	.byte	0x53
	.long	0x187
	.long	.LLST4
	.uleb128 0x14
	.string	"rc"
	.byte	0x1
	.byte	0x54
	.long	0x25
	.long	.LLST5
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0x55
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x63
	.long	.L12
	.uleb128 0x16
	.long	.LVL18
	.long	0x3c5
	.uleb128 0x16
	.long	.LVL22
	.long	0x3d0
	.uleb128 0x16
	.long	.LVL24
	.long	0x3e6
	.uleb128 0x16
	.long	.LVL27
	.long	0x3f1
	.byte	0
	.uleb128 0x17
	.long	.LASF51
	.long	.LASF51
	.byte	0x2
	.byte	0x6d
	.uleb128 0x17
	.long	.LASF52
	.long	.LASF52
	.byte	0x2
	.byte	0x6a
	.uleb128 0x17
	.long	.LASF53
	.long	.LASF53
	.byte	0x2
	.byte	0x70
	.uleb128 0x17
	.long	.LASF54
	.long	.LASF54
	.byte	0x2
	.byte	0x6c
	.uleb128 0x18
	.long	.LASF59
	.long	.LASF59
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x18
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
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	.LVL9-1
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x57
	.long	.LVL15
	.long	.LFE0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL17
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24-1
	.value	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL17
	.long	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24-1
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27-1
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LFE1
	.value	0x1
	.byte	0x50
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
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"MQTTDeserialize_publish"
.LASF39:
	.string	"topicName"
.LASF54:
	.string	"readInt"
.LASF41:
	.string	"payloadlen"
.LASF17:
	.string	"type"
.LASF53:
	.string	"readMQTTLenString"
.LASF11:
	.string	"UNSUBACK"
.LASF16:
	.string	"retain"
.LASF26:
	.string	"lenstring"
.LASF36:
	.string	"long long unsigned int"
.LASF30:
	.string	"long long int"
.LASF32:
	.string	"signed char"
.LASF51:
	.string	"readChar"
.LASF19:
	.string	"bits"
.LASF34:
	.string	"long int"
.LASF10:
	.string	"UNSUBSCRIBE"
.LASF57:
	.string	"/home/stone/Documents/pca"
.LASF18:
	.string	"byte"
.LASF58:
	.string	"msgTypes"
.LASF15:
	.string	"unsigned int"
.LASF2:
	.string	"CONNACK"
.LASF35:
	.string	"long unsigned int"
.LASF45:
	.string	"enddata"
.LASF21:
	.string	"data"
.LASF29:
	.string	"short unsigned int"
.LASF49:
	.string	"packettype"
.LASF9:
	.string	"SUBACK"
.LASF48:
	.string	"MQTTDeserialize_ack"
.LASF27:
	.string	"MQTTString"
.LASF38:
	.string	"packetid"
.LASF28:
	.string	"sizetype"
.LASF0:
	.string	"MQTT_CPT_RESERVED"
.LASF31:
	.string	"long double"
.LASF40:
	.string	"payload"
.LASF25:
	.string	"cstring"
.LASF14:
	.string	"DISCONNECT"
.LASF52:
	.string	"MQTTPacket_decodeBuf"
.LASF44:
	.string	"curdata"
.LASF46:
	.string	"mylen"
.LASF13:
	.string	"PINGRESP"
.LASF1:
	.string	"CONNECT"
.LASF20:
	.string	"unsigned char"
.LASF37:
	.string	"retained"
.LASF33:
	.string	"short int"
.LASF3:
	.string	"PUBLISH"
.LASF42:
	.string	"buflen"
.LASF50:
	.string	"exit"
.LASF59:
	.string	"__stack_chk_fail"
.LASF55:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF23:
	.string	"MQTTHeader"
.LASF24:
	.string	"MQTTLenString"
.LASF8:
	.string	"SUBSCRIBE"
.LASF22:
	.string	"char"
.LASF4:
	.string	"PUBACK"
.LASF56:
	.string	"src/MQTTDeserializePublish.c"
.LASF7:
	.string	"PUBCOMP"
.LASF5:
	.string	"PUBREC"
.LASF6:
	.string	"PUBREL"
.LASF12:
	.string	"PINGREQ"
.LASF43:
	.string	"header"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

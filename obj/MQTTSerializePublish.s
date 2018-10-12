	.file	"MQTTSerializePublish.c"
	.text
.Ltext0:
	.section	.text.unlikely.MQTTSerialize_publishLength,"ax",@progbits
.LCOLDB0:
	.section	.text.MQTTSerialize_publishLength,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.MQTTSerialize_publishLength
.Ltext_cold0:
	.section	.text.MQTTSerialize_publishLength
	.globl	MQTTSerialize_publishLength
	.type	MQTTSerialize_publishLength, @function
MQTTSerialize_publishLength:
.LFB0:
	.file 1 "framework/connectivity/mqtt/MQTTPacket/MQTTSerializePublish.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 34 0
	movl	$3, %ecx
	.loc 1 31 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 34 0
	leal	12(%ebp), %esi
	subl	$16, %esp
	movl	%esp, %edi
	rep movsl
	call	MQTTstrlen
.LVL1:
	movl	24(%ebp), %edx
	.loc 1 35 0
	addl	$16, %esp
	.loc 1 36 0
	cmpl	$0, 8(%ebp)
	.loc 1 34 0
	leal	2(%eax,%edx), %eax
.LVL2:
	.loc 1 36 0
	leal	2(%eax), %edx
	cmovg	%edx, %eax
.LVL3:
	.loc 1 38 0
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
.LFE0:
	.size	MQTTSerialize_publishLength, .-MQTTSerialize_publishLength
	.section	.text.unlikely.MQTTSerialize_publishLength
.LCOLDE0:
	.section	.text.MQTTSerialize_publishLength
.LHOTE0:
	.section	.text.unlikely.MQTTSerialize_publish,"ax",@progbits
.LCOLDB1:
	.section	.text.MQTTSerialize_publish,"ax",@progbits
.LHOTB1:
	.globl	MQTTSerialize_publish
	.type	MQTTSerialize_publish, @function
MQTTSerialize_publish:
.LFB1:
	.loc 1 56 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 62 0
	movl	$3, %ecx
	.loc 1 56 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 62 0
	leal	32(%ebp), %esi
	.loc 1 56 0
	subl	$56, %esp
	.loc 1 56 0
	movl	8(%ebp), %eax
	.loc 1 62 0
	pushl	48(%ebp)
	.loc 1 56 0
	movl	16(%ebp), %ebx
	.loc 1 62 0
	subl	$12, %esp
	.loc 1 56 0
	movl	%eax, -44(%ebp)
	movl	24(%ebp), %eax
	.loc 1 62 0
	movl	%esp, %edi
	.loc 1 56 0
	movl	%eax, -48(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 57 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.LVL5:
	.loc 1 62 0
	rep movsl
	pushl	20(%ebp)
	call	MQTTSerialize_publishLength
.LVL6:
	addl	$20, %esp
	movl	%eax, %esi
.LVL7:
	pushl	%eax
	call	MQTTPacket_len
.LVL8:
	addl	$16, %esp
	cmpl	12(%ebp), %eax
	movl	$-2, %edx
	jg	.L5
	.loc 1 69 0
	andl	$1, %ebx
	.loc 1 72 0
	pushl	%edx
	pushl	%edx
	.loc 1 69 0
	leal	0(,%ebx,8), %eax
	orl	$48, %eax
	movl	%eax, %ebx
	.loc 1 70 0
	movl	20(%ebp), %eax
	andl	$3, %eax
	addl	%eax, %eax
	orl	%ebx, %eax
	.loc 1 71 0
	movl	-48(%ebp), %ebx
	andl	$-2, %eax
	andl	$1, %ebx
	.loc 1 72 0
	orl	%ebx, %eax
	leal	-32(%ebp), %ebx
	pushl	%eax
	pushl	%ebx
	call	writeChar
.LVL9:
	.loc 1 74 0
	popl	%ecx
	popl	%edi
	pushl	%esi
	pushl	-32(%ebp)
	.loc 1 76 0
	leal	32(%ebp), %esi
.LVL10:
	.loc 1 74 0
	call	MQTTPacket_encode
.LVL11:
	.loc 1 76 0
	subl	$12, %esp
	.loc 1 74 0
	addl	%eax, -32(%ebp)
	.loc 1 76 0
	movl	$3, %ecx
	movl	%esp, %edi
	rep movsl
	pushl	%ebx
	call	writeMQTTString
.LVL12:
	.loc 1 78 0
	addl	$32, %esp
	cmpl	$0, 20(%ebp)
	jle	.L6
	.loc 1 79 0
	pushl	%eax
	pushl	%eax
	movzwl	-52(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	call	writeInt
.LVL13:
	addl	$16, %esp
.L6:
	.loc 1 81 0
	movl	-32(%ebp), %edi
	movl	-56(%ebp), %esi
	movl	48(%ebp), %ecx
	rep movsb
.LVL14:
	.loc 1 84 0
	movl	-32(%ebp), %edx
	addl	48(%ebp), %edx
.LVL15:
	subl	-44(%ebp), %edx
.LVL16:
.L5:
	.loc 1 88 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L7
	call	__stack_chk_fail
.LVL17:
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
.LFE1:
	.size	MQTTSerialize_publish, .-MQTTSerialize_publish
	.section	.text.unlikely.MQTTSerialize_publish
.LCOLDE1:
	.section	.text.MQTTSerialize_publish
.LHOTE1:
	.section	.text.unlikely.MQTTSerialize_ack,"ax",@progbits
.LCOLDB2:
	.section	.text.MQTTSerialize_ack,"ax",@progbits
.LHOTB2:
	.globl	MQTTSerialize_ack
	.type	MQTTSerialize_ack, @function
MQTTSerialize_ack:
.LFB2:
	.loc 1 102 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 102 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL19:
	.loc 1 107 0
	cmpl	$3, 12(%ebp)
	.loc 1 102 0
	movl	20(%ebp), %ecx
	movl	$-2, %eax
	movl	24(%ebp), %ebx
	.loc 1 105 0
	movl	%esi, -32(%ebp)
	.loc 1 107 0
	jle	.L13
	.loc 1 112 0
	movl	%edx, %eax
	.loc 1 113 0
	andl	$1, %ecx
	.loc 1 118 0
	movzwl	%bx, %ebx
	.loc 1 112 0
	andl	$15, %eax
	.loc 1 113 0
	sall	$3, %ecx
	sall	$4, %eax
	movl	%eax, %edi
	.loc 1 114 0
	xorl	%eax, %eax
	cmpb	$6, %dl
	sete	%al
	leal	(%eax,%eax), %edx
	movl	%edi, %eax
	.loc 1 115 0
	leal	-32(%ebp), %edi
	.loc 1 114 0
	orl	%ecx, %eax
	orl	%edx, %eax
	.loc 1 115 0
	pushl	%edx
	pushl	%edx
	movsbl	%al, %eax
	pushl	%eax
	pushl	%edi
	call	writeChar
.LVL20:
	.loc 1 117 0
	popl	%ecx
	popl	%eax
	pushl	$2
	pushl	-32(%ebp)
	call	MQTTPacket_encode
.LVL21:
	addl	%eax, -32(%ebp)
	.loc 1 118 0
	popl	%eax
	popl	%edx
	pushl	%ebx
	pushl	%edi
	call	writeInt
.LVL22:
	.loc 1 119 0
	movl	-32(%ebp), %eax
	addl	$16, %esp
	subl	%esi, %eax
.LVL23:
.L13:
	.loc 1 122 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L14
	call	__stack_chk_fail
.LVL24:
.L14:
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
.LFE2:
	.size	MQTTSerialize_ack, .-MQTTSerialize_ack
	.section	.text.unlikely.MQTTSerialize_ack
.LCOLDE2:
	.section	.text.MQTTSerialize_ack
.LHOTE2:
	.section	.text.unlikely.MQTTSerialize_puback,"ax",@progbits
.LCOLDB3:
	.section	.text.MQTTSerialize_puback,"ax",@progbits
.LHOTB3:
	.globl	MQTTSerialize_puback
	.type	MQTTSerialize_puback, @function
MQTTSerialize_puback:
.LFB3:
	.loc 1 133 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 134 0
	movzwl	16(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$4
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MQTTSerialize_ack
.LVL26:
	.loc 1 135 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	MQTTSerialize_puback, .-MQTTSerialize_puback
	.section	.text.unlikely.MQTTSerialize_puback
.LCOLDE3:
	.section	.text.MQTTSerialize_puback
.LHOTE3:
	.section	.text.unlikely.MQTTSerialize_pubrel,"ax",@progbits
.LCOLDB4:
	.section	.text.MQTTSerialize_pubrel,"ax",@progbits
.LHOTB4:
	.globl	MQTTSerialize_pubrel
	.type	MQTTSerialize_pubrel, @function
MQTTSerialize_pubrel:
.LFB4:
	.loc 1 147 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 148 0
	movzwl	20(%ebp), %eax
	pushl	%eax
	movzbl	16(%ebp), %eax
	pushl	%eax
	pushl	$6
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MQTTSerialize_ack
.LVL28:
	.loc 1 149 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	MQTTSerialize_pubrel, .-MQTTSerialize_pubrel
	.section	.text.unlikely.MQTTSerialize_pubrel
.LCOLDE4:
	.section	.text.MQTTSerialize_pubrel
.LHOTE4:
	.section	.text.unlikely.MQTTSerialize_pubcomp,"ax",@progbits
.LCOLDB5:
	.section	.text.MQTTSerialize_pubcomp,"ax",@progbits
.LHOTB5:
	.globl	MQTTSerialize_pubcomp
	.type	MQTTSerialize_pubcomp, @function
MQTTSerialize_pubcomp:
.LFB5:
	.loc 1 160 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 161 0
	movzwl	16(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$7
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MQTTSerialize_ack
.LVL30:
	.loc 1 162 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	MQTTSerialize_pubcomp, .-MQTTSerialize_pubcomp
	.section	.text.unlikely.MQTTSerialize_pubcomp
.LCOLDE5:
	.section	.text.MQTTSerialize_pubcomp
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.MQTTSerialize_publishLength
.Letext_cold0:
	.file 2 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x549
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF64
	.byte	0xc
	.long	.LASF65
	.long	.LASF66
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF3
	.byte	0x4
	.long	0x48
	.byte	0x2
	.byte	0x24
	.long	0x48
	.uleb128 0x3
	.long	.LASF0
	.sleb128 -2
	.uleb128 0x3
	.long	.LASF1
	.sleb128 -1
	.uleb128 0x4
	.long	.LASF2
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.long	0xba
	.byte	0x2
	.byte	0x2d
	.long	0xba
	.uleb128 0x4
	.long	.LASF5
	.byte	0
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.uleb128 0x4
	.long	.LASF8
	.byte	0x3
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.uleb128 0x4
	.long	.LASF10
	.byte	0x5
	.uleb128 0x4
	.long	.LASF11
	.byte	0x6
	.uleb128 0x4
	.long	.LASF12
	.byte	0x7
	.uleb128 0x4
	.long	.LASF13
	.byte	0x8
	.uleb128 0x4
	.long	.LASF14
	.byte	0x9
	.uleb128 0x4
	.long	.LASF15
	.byte	0xa
	.uleb128 0x4
	.long	.LASF16
	.byte	0xb
	.uleb128 0x4
	.long	.LASF17
	.byte	0xc
	.uleb128 0x4
	.long	.LASF18
	.byte	0xd
	.uleb128 0x4
	.long	.LASF19
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF20
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x43
	.long	0x106
	.uleb128 0x8
	.long	.LASF21
	.byte	0x2
	.byte	0x45
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"qos"
	.byte	0x2
	.byte	0x46
	.long	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"dup"
	.byte	0x2
	.byte	0x47
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x2
	.byte	0x48
	.long	0xba
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0x37
	.long	0x125
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.byte	0x39
	.long	0x125
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0x49
	.long	0xc1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF25
	.uleb128 0xc
	.long	.LASF28
	.byte	0x2
	.byte	0x4b
	.long	0x106
	.uleb128 0x7
	.byte	0x8
	.byte	0x2
	.byte	0x4d
	.long	0x158
	.uleb128 0xd
	.string	"len"
	.byte	0x2
	.byte	0x4f
	.long	0x48
	.byte	0
	.uleb128 0xe
	.long	.LASF26
	.byte	0x2
	.byte	0x50
	.long	0x158
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x15e
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF27
	.uleb128 0xc
	.long	.LASF29
	.byte	0x2
	.byte	0x51
	.long	0x137
	.uleb128 0x7
	.byte	0xc
	.byte	0x2
	.byte	0x53
	.long	0x191
	.uleb128 0xe
	.long	.LASF30
	.byte	0x2
	.byte	0x55
	.long	0x158
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x2
	.byte	0x56
	.long	0x165
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0x2
	.byte	0x57
	.long	0x170
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF33
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF34
	.uleb128 0xf
	.byte	0x4
	.long	0x125
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF35
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.long	.LASF36
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF37
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF38
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.long	.LASF39
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF40
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF41
	.uleb128 0x10
	.long	.LASF44
	.byte	0x1
	.byte	0x1e
	.long	0x48
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x23d
	.uleb128 0x11
	.string	"qos"
	.byte	0x1
	.byte	0x1e
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0x1e
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x1e
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x20
	.long	0x48
	.long	.LLST0
	.uleb128 0x14
	.long	.LVL1
	.long	0x501
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x36
	.long	0x48
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x356
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x36
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x36
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"dup"
	.byte	0x1
	.byte	0x36
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"qos"
	.byte	0x1
	.byte	0x36
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.byte	0x36
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x36
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0x37
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x12
	.long	.LASF49
	.byte	0x1
	.byte	0x37
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x37
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x39
	.long	0x1aa
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0x3a
	.long	0x12c
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.byte	0x3b
	.long	0x48
	.long	.LLST2
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x3c
	.long	0x48
	.long	.LLST3
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0x56
	.long	.L5
	.uleb128 0x14
	.long	.LVL6
	.long	0x1e1
	.uleb128 0x14
	.long	.LVL8
	.long	0x50c
	.uleb128 0x14
	.long	.LVL9
	.long	0x517
	.uleb128 0x14
	.long	.LVL11
	.long	0x522
	.uleb128 0x14
	.long	.LVL12
	.long	0x52d
	.uleb128 0x14
	.long	.LVL13
	.long	0x538
	.uleb128 0x14
	.long	.LVL17
	.long	0x543
	.byte	0
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x65
	.long	0x48
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x65
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x65
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.byte	0x65
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.string	"dup"
	.byte	0x1
	.byte	0x65
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x65
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0x67
	.long	0x12c
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.byte	0x68
	.long	0x48
	.long	.LLST4
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.byte	0x69
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0x78
	.long	.L13
	.uleb128 0x14
	.long	.LVL20
	.long	0x517
	.uleb128 0x14
	.long	.LVL21
	.long	0x522
	.uleb128 0x14
	.long	.LVL22
	.long	0x538
	.uleb128 0x14
	.long	.LVL24
	.long	0x543
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x84
	.long	0x48
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x459
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x84
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x84
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x84
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.long	.LVL26
	.long	0x356
	.byte	0
	.uleb128 0x10
	.long	.LASF56
	.byte	0x1
	.byte	0x92
	.long	0x48
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b4
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x92
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x92
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"dup"
	.byte	0x1
	.byte	0x92
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x92
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.long	.LVL28
	.long	0x356
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x9f
	.long	0x48
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x501
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x9f
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x9f
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x9f
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.long	.LVL30
	.long	0x356
	.byte	0
	.uleb128 0x19
	.long	.LASF58
	.long	.LASF58
	.byte	0x2
	.byte	0x5b
	.uleb128 0x19
	.long	.LASF59
	.long	.LASF59
	.byte	0x2
	.byte	0x65
	.uleb128 0x19
	.long	.LASF60
	.long	.LASF60
	.byte	0x2
	.byte	0x6e
	.uleb128 0x19
	.long	.LASF61
	.long	.LASF61
	.byte	0x2
	.byte	0x68
	.uleb128 0x19
	.long	.LASF62
	.long	.LASF62
	.byte	0x2
	.byte	0x72
	.uleb128 0x19
	.long	.LASF63
	.long	.LASF63
	.byte	0x2
	.byte	0x6f
	.uleb128 0x1a
	.long	.LASF67
	.long	.LASF67
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LFE0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL14
	.long	.LVL15
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 40
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8-1
	.long	.LVL10
	.value	0x1
	.byte	0x56
	.long	.LVL10
	.long	.LVL11-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x52
	.long	.LVL17
	.long	.LFE1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL19
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24-1
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LFE2
	.value	0x1
	.byte	0x50
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
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"MQTTPACKET_BUFFER_TOO_SHORT"
.LASF65:
	.string	"src/MQTTSerializePublish.c"
.LASF59:
	.string	"MQTTPacket_len"
.LASF42:
	.string	"topicName"
.LASF43:
	.string	"payloadlen"
.LASF22:
	.string	"type"
.LASF45:
	.string	"MQTTSerialize_publish"
.LASF16:
	.string	"UNSUBACK"
.LASF21:
	.string	"retain"
.LASF31:
	.string	"lenstring"
.LASF41:
	.string	"long long unsigned int"
.LASF1:
	.string	"MQTTPACKET_READ_ERROR"
.LASF35:
	.string	"long long int"
.LASF37:
	.string	"signed char"
.LASF63:
	.string	"writeInt"
.LASF62:
	.string	"writeMQTTString"
.LASF24:
	.string	"bits"
.LASF39:
	.string	"long int"
.LASF57:
	.string	"MQTTSerialize_pubcomp"
.LASF51:
	.string	"MQTTSerialize_ack"
.LASF15:
	.string	"UNSUBSCRIBE"
.LASF66:
	.string	"/home/stone/Documents/pca"
.LASF23:
	.string	"byte"
.LASF61:
	.string	"MQTTPacket_encode"
.LASF4:
	.string	"msgTypes"
.LASF20:
	.string	"unsigned int"
.LASF7:
	.string	"CONNACK"
.LASF3:
	.string	"errors"
.LASF40:
	.string	"long unsigned int"
.LASF26:
	.string	"data"
.LASF34:
	.string	"short unsigned int"
.LASF2:
	.string	"MQTTPACKET_READ_COMPLETE"
.LASF52:
	.string	"packettype"
.LASF14:
	.string	"SUBACK"
.LASF32:
	.string	"MQTTString"
.LASF48:
	.string	"packetid"
.LASF33:
	.string	"sizetype"
.LASF5:
	.string	"MQTT_CPT_RESERVED"
.LASF36:
	.string	"long double"
.LASF58:
	.string	"MQTTstrlen"
.LASF49:
	.string	"payload"
.LASF30:
	.string	"cstring"
.LASF19:
	.string	"DISCONNECT"
.LASF50:
	.string	"rem_len"
.LASF18:
	.string	"PINGRESP"
.LASF6:
	.string	"CONNECT"
.LASF25:
	.string	"unsigned char"
.LASF47:
	.string	"retained"
.LASF55:
	.string	"MQTTSerialize_puback"
.LASF38:
	.string	"short int"
.LASF8:
	.string	"PUBLISH"
.LASF46:
	.string	"buflen"
.LASF54:
	.string	"exit"
.LASF67:
	.string	"__stack_chk_fail"
.LASF64:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF28:
	.string	"MQTTHeader"
.LASF29:
	.string	"MQTTLenString"
.LASF13:
	.string	"SUBSCRIBE"
.LASF27:
	.string	"char"
.LASF9:
	.string	"PUBACK"
.LASF12:
	.string	"PUBCOMP"
.LASF56:
	.string	"MQTTSerialize_pubrel"
.LASF60:
	.string	"writeChar"
.LASF44:
	.string	"MQTTSerialize_publishLength"
.LASF10:
	.string	"PUBREC"
.LASF11:
	.string	"PUBREL"
.LASF17:
	.string	"PINGREQ"
.LASF53:
	.string	"header"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

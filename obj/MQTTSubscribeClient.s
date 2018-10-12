	.file	"MQTTSubscribeClient.c"
	.text
.Ltext0:
	.section	.text.unlikely.MQTTSerialize_subscribeLength,"ax",@progbits
.LCOLDB0:
	.section	.text.MQTTSerialize_subscribeLength,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.MQTTSerialize_subscribeLength
.Ltext_cold0:
	.section	.text.MQTTSerialize_subscribeLength
	.globl	MQTTSerialize_subscribeLength
	.type	MQTTSerialize_subscribeLength, @function
MQTTSerialize_subscribeLength:
.LFB0:
	.file 1 "framework/connectivity/mqtt/MQTTPacket/MQTTSubscribeClient.c"
	.loc 1 28 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 32 0
	xorl	%edx, %edx
	.loc 1 28 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 30 0
	movl	$2, %ebx
	.loc 1 28 0
	subl	$28, %esp
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
.LVL1:
.L2:
	.loc 1 32 0 discriminator 1
	cmpl	8(%ebp), %edx
	jge	.L6
	.loc 1 33 0 discriminator 3
	subl	$16, %esp
	movl	%edx, -32(%ebp)
	movl	-28(%ebp), %esi
	movl	%esp, %edi
	movl	$3, %ecx
	rep movsl
	call	MQTTstrlen
.LVL2:
	.loc 1 32 0 discriminator 3
	movl	-32(%ebp), %edx
	.loc 1 33 0 discriminator 3
	leal	3(%ebx,%eax), %ebx
.LVL3:
	addl	$12, -28(%ebp)
	addl	$16, %esp
	.loc 1 32 0 discriminator 3
	incl	%edx
.LVL4:
	jmp	.L2
.L6:
	.loc 1 35 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL5:
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
	.size	MQTTSerialize_subscribeLength, .-MQTTSerialize_subscribeLength
	.section	.text.unlikely.MQTTSerialize_subscribeLength
.LCOLDE0:
	.section	.text.MQTTSerialize_subscribeLength
.LHOTE0:
	.section	.text.unlikely.MQTTSerialize_subscribe,"ax",@progbits
.LCOLDB1:
	.section	.text.MQTTSerialize_subscribe,"ax",@progbits
.LHOTB1:
	.globl	MQTTSerialize_subscribe
	.type	MQTTSerialize_subscribe, @function
MQTTSerialize_subscribe:
.LFB1:
	.loc 1 51 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 51 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	%eax, -44(%ebp)
	movl	20(%ebp), %eax
	.loc 1 58 0
	pushl	%ebx
	pushl	24(%ebp)
	.loc 1 51 0
	movl	%eax, -48(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 52 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.LVL7:
	.loc 1 58 0
	call	MQTTSerialize_subscribeLength
.LVL8:
	movl	%eax, (%esp)
	movl	%eax, %edi
.LVL9:
	call	MQTTPacket_len
.LVL10:
	addl	$16, %esp
	cmpl	12(%ebp), %eax
	movl	$-2, %edx
	jg	.L8
	.loc 1 66 0
	andl	$1, %esi
	.loc 1 68 0
	pushl	%ecx
	pushl	%ecx
	.loc 1 66 0
	leal	0(,%esi,8), %eax
	.loc 1 68 0
	leal	-32(%ebp), %esi
	.loc 1 66 0
	orb	$-128, %al
	.loc 1 67 0
	orl	$2, %eax
	.loc 1 68 0
	movsbl	%al, %eax
	pushl	%eax
	pushl	%esi
	call	writeChar
.LVL11:
	.loc 1 70 0
	popl	%eax
	popl	%edx
	pushl	%edi
	pushl	-32(%ebp)
	call	MQTTPacket_encode
.LVL12:
	addl	%eax, -32(%ebp)
	.loc 1 72 0
	movzwl	-48(%ebp), %eax
	popl	%ecx
	popl	%edi
.LVL13:
	pushl	%eax
	pushl	%esi
	call	writeInt
.LVL14:
	movl	%ebx, %eax
	.loc 1 74 0
	addl	$16, %esp
	xorl	%ebx, %ebx
	.loc 1 76 0
	movl	%esi, -48(%ebp)
.LVL15:
.L9:
	.loc 1 74 0 discriminator 1
	cmpl	24(%ebp), %ebx
	jge	.L15
	.loc 1 76 0 discriminator 3
	subl	$12, %esp
	movl	%eax, %esi
	movl	%eax, -56(%ebp)
	movl	%esp, %edi
	movl	$3, %ecx
	rep movsl
	pushl	-48(%ebp)
	call	writeMQTTString
.LVL16:
	.loc 1 77 0 discriminator 3
	popl	%eax
	movl	-52(%ebp), %eax
	popl	%edx
	movsbl	(%eax,%ebx,4), %edx
	.loc 1 74 0 discriminator 3
	incl	%ebx
.LVL17:
	.loc 1 77 0 discriminator 3
	pushl	%edx
	pushl	-48(%ebp)
	call	writeChar
.LVL18:
	movl	-56(%ebp), %eax
	addl	$16, %esp
	addl	$12, %eax
	jmp	.L9
.L15:
	.loc 1 80 0
	movl	-32(%ebp), %edx
	subl	-44(%ebp), %edx
.LVL19:
.L8:
	.loc 1 83 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L11
	call	__stack_chk_fail
.LVL20:
.L11:
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
	.size	MQTTSerialize_subscribe, .-MQTTSerialize_subscribe
	.section	.text.unlikely.MQTTSerialize_subscribe
.LCOLDE1:
	.section	.text.MQTTSerialize_subscribe
.LHOTE1:
	.section	.text.unlikely.MQTTDeserialize_suback,"ax",@progbits
.LCOLDB2:
	.section	.text.MQTTDeserialize_suback,"ax",@progbits
.LHOTB2:
	.globl	MQTTDeserialize_suback
	.type	MQTTDeserialize_suback, @function
MQTTDeserialize_suback:
.LFB2:
	.loc 1 98 0
	.cfi_startproc
.LVL21:
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
	.loc 1 105 0
	leal	-36(%ebp), %ebx
	.loc 1 98 0
	subl	$56, %esp
	.loc 1 98 0
	movl	20(%ebp), %eax
	movl	8(%ebp), %esi
	.loc 1 105 0
	pushl	%ebx
	.loc 1 98 0
	movl	16(%ebp), %edi
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL22:
	.loc 1 100 0
	movl	24(%ebp), %eax
	movl	%eax, -36(%ebp)
.LVL23:
	.loc 1 105 0
	call	readChar
.LVL24:
	.loc 1 106 0
	andl	$-16, %eax
.LVL25:
	addl	$16, %esp
	movb	%al, %dl
	.loc 1 102 0
	xorl	%eax, %eax
	.loc 1 106 0
	cmpb	$-112, %dl
	jne	.L17
	.loc 1 109 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	%eax
	pushl	-36(%ebp)
	call	MQTTPacket_decodeBuf
.LVL26:
	movl	-36(%ebp), %ecx
	.loc 1 110 0
	movl	-32(%ebp), %edx
.LVL27:
	.loc 1 111 0
	addl	$16, %esp
	.loc 1 109 0
	addl	%eax, %ecx
	.loc 1 111 0
	cmpl	$1, %edx
	movl	%edx, -48(%ebp)
	.loc 1 109 0
	movl	%ecx, -36(%ebp)
	movl	%ecx, -52(%ebp)
.LVL28:
	.loc 1 111 0
	jle	.L17
	.loc 1 114 0
	subl	$12, %esp
	pushl	%ebx
	call	readInt
.LVL29:
	.loc 1 117 0
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %ecx
	addl	$16, %esp
	.loc 1 114 0
	movw	%ax, (%esi)
	.loc 1 116 0
	movl	$0, (%edi)
	.loc 1 117 0
	leal	(%ecx,%edx), %eax
	movl	%eax, -48(%ebp)
.L18:
	movl	-48(%ebp), %eax
	cmpl	%eax, -36(%ebp)
	jnb	.L24
	.loc 1 119 0
	movl	(%edi), %eax
	cmpl	12(%ebp), %eax
	jg	.L22
	.loc 1 124 0
	leal	1(%eax), %edx
	movl	-44(%ebp), %esi
	subl	$12, %esp
	movl	%edx, (%edi)
	pushl	%ebx
	leal	(%esi,%eax,4), %esi
	call	readChar
.LVL30:
	movsbl	%al, %eax
	addl	$16, %esp
	movl	%eax, (%esi)
	jmp	.L18
.L24:
	.loc 1 127 0
	movl	$1, %eax
	jmp	.L17
.L22:
	.loc 1 121 0
	orl	$-1, %eax
.L17:
.LVL31:
	.loc 1 130 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L20
	call	__stack_chk_fail
.LVL32:
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
.LFE2:
	.size	MQTTDeserialize_suback, .-MQTTDeserialize_suback
	.section	.text.unlikely.MQTTDeserialize_suback
.LCOLDE2:
	.section	.text.MQTTDeserialize_suback
.LHOTE2:
	.text
.Letext0:
	.section	.text.unlikely.MQTTSerialize_subscribeLength
.Letext_cold0:
	.file 2 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b7
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
	.byte	0x1b
	.long	0x48
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x23c
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x1b
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.byte	0x1b
	.long	0x23c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0x48
	.long	.LLST0
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.long	0x48
	.long	.LLST1
	.uleb128 0x13
	.long	.LVL2
	.long	0x44e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x191
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x31
	.long	0x48
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x354
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x31
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.byte	0x31
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"dup"
	.byte	0x1
	.byte	0x31
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.byte	0x31
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x31
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.byte	0x32
	.long	0x23c
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.byte	0x32
	.long	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x34
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF53
	.byte	0x1
	.byte	0x35
	.long	0x12c
	.uleb128 0x17
	.long	.LASF49
	.byte	0x1
	.byte	0x36
	.long	0x48
	.long	.LLST2
	.uleb128 0x12
	.string	"rc"
	.byte	0x1
	.byte	0x37
	.long	0x48
	.long	.LLST3
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x38
	.long	0x48
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x51
	.long	.L8
	.uleb128 0x13
	.long	.LVL8
	.long	0x1e1
	.uleb128 0x13
	.long	.LVL10
	.long	0x459
	.uleb128 0x13
	.long	.LVL11
	.long	0x464
	.uleb128 0x13
	.long	.LVL12
	.long	0x46f
	.uleb128 0x13
	.long	.LVL14
	.long	0x47a
	.uleb128 0x13
	.long	.LVL16
	.long	0x485
	.uleb128 0x13
	.long	.LVL18
	.long	0x464
	.uleb128 0x13
	.long	.LVL20
	.long	0x490
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x48
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0x61
	.long	0x48
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x448
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.byte	0x61
	.long	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.byte	0x61
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x61
	.long	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0x61
	.long	0x354
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x61
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.byte	0x61
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x63
	.long	0x12c
	.long	.LLST5
	.uleb128 0x19
	.long	.LASF54
	.byte	0x1
	.byte	0x64
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.byte	0x65
	.long	0x1aa
	.long	.LLST6
	.uleb128 0x12
	.string	"rc"
	.byte	0x1
	.byte	0x66
	.long	0x48
	.long	.LLST7
	.uleb128 0x19
	.long	.LASF56
	.byte	0x1
	.byte	0x67
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x80
	.long	.L17
	.uleb128 0x13
	.long	.LVL24
	.long	0x499
	.uleb128 0x13
	.long	.LVL26
	.long	0x4a4
	.uleb128 0x13
	.long	.LVL29
	.long	0x4af
	.uleb128 0x13
	.long	.LVL30
	.long	0x499
	.uleb128 0x13
	.long	.LVL32
	.long	0x490
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x1a3
	.uleb128 0x1a
	.long	.LASF58
	.long	.LASF58
	.byte	0x2
	.byte	0x5b
	.uleb128 0x1a
	.long	.LASF59
	.long	.LASF59
	.byte	0x2
	.byte	0x65
	.uleb128 0x1a
	.long	.LASF60
	.long	.LASF60
	.byte	0x2
	.byte	0x6e
	.uleb128 0x1a
	.long	.LASF61
	.long	.LASF61
	.byte	0x2
	.byte	0x68
	.uleb128 0x1a
	.long	.LASF62
	.long	.LASF62
	.byte	0x2
	.byte	0x6f
	.uleb128 0x1a
	.long	.LASF63
	.long	.LASF63
	.byte	0x2
	.byte	0x72
	.uleb128 0x1b
	.long	.LASF70
	.long	.LASF70
	.uleb128 0x1a
	.long	.LASF64
	.long	.LASF64
	.byte	0x2
	.byte	0x6d
	.uleb128 0x1a
	.long	.LASF65
	.long	.LASF65
	.byte	0x2
	.byte	0x6a
	.uleb128 0x1a
	.long	.LASF66
	.long	.LASF66
	.byte	0x2
	.byte	0x6c
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2-1
	.value	0x1
	.byte	0x52
	.long	.LVL2-1
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL4
	.long	.LFE0
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL1
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LFE0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10-1
	.long	.LVL13
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL19
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20-1
	.value	0x1
	.byte	0x52
	.long	.LVL20
	.long	.LFE1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL17
	.value	0x1
	.byte	0x53
	.long	.LVL17
	.long	.LVL18
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL22
	.long	.LVL24
	.value	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	.LVL24
	.long	.LVL25
	.value	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	0
	.long	0
.LLST6:
	.long	.LVL23
	.long	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.value	0x7
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL23
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32-1
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LFE2
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"MQTTPACKET_BUFFER_TOO_SHORT"
.LASF42:
	.string	"count"
.LASF48:
	.string	"requestedQoSs"
.LASF59:
	.string	"MQTTPacket_len"
.LASF66:
	.string	"readInt"
.LASF22:
	.string	"type"
.LASF16:
	.string	"UNSUBACK"
.LASF21:
	.string	"retain"
.LASF31:
	.string	"lenstring"
.LASF41:
	.string	"long long unsigned int"
.LASF51:
	.string	"maxcount"
.LASF1:
	.string	"MQTTPACKET_READ_ERROR"
.LASF35:
	.string	"long long int"
.LASF37:
	.string	"signed char"
.LASF68:
	.string	"src/MQTTSubscribeClient.c"
.LASF62:
	.string	"writeInt"
.LASF63:
	.string	"writeMQTTString"
.LASF24:
	.string	"bits"
.LASF39:
	.string	"long int"
.LASF15:
	.string	"UNSUBSCRIBE"
.LASF69:
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
.LASF55:
	.string	"enddata"
.LASF26:
	.string	"data"
.LASF34:
	.string	"short unsigned int"
.LASF2:
	.string	"MQTTPACKET_READ_COMPLETE"
.LASF14:
	.string	"SUBACK"
.LASF32:
	.string	"MQTTString"
.LASF52:
	.string	"grantedQoSs"
.LASF47:
	.string	"packetid"
.LASF45:
	.string	"MQTTSerialize_subscribe"
.LASF64:
	.string	"readChar"
.LASF33:
	.string	"sizetype"
.LASF5:
	.string	"MQTT_CPT_RESERVED"
.LASF36:
	.string	"long double"
.LASF43:
	.string	"topicFilters"
.LASF30:
	.string	"cstring"
.LASF19:
	.string	"DISCONNECT"
.LASF65:
	.string	"MQTTPacket_decodeBuf"
.LASF44:
	.string	"MQTTSerialize_subscribeLength"
.LASF50:
	.string	"MQTTDeserialize_suback"
.LASF56:
	.string	"mylen"
.LASF49:
	.string	"rem_len"
.LASF18:
	.string	"PINGRESP"
.LASF6:
	.string	"CONNECT"
.LASF25:
	.string	"unsigned char"
.LASF58:
	.string	"MQTTstrlen"
.LASF38:
	.string	"short int"
.LASF8:
	.string	"PUBLISH"
.LASF46:
	.string	"buflen"
.LASF57:
	.string	"exit"
.LASF70:
	.string	"__stack_chk_fail"
.LASF67:
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
.LASF60:
	.string	"writeChar"
.LASF10:
	.string	"PUBREC"
.LASF11:
	.string	"PUBREL"
.LASF17:
	.string	"PINGREQ"
.LASF54:
	.string	"curdata"
.LASF53:
	.string	"header"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

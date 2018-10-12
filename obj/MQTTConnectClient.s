	.file	"MQTTConnectClient.c"
	.text
.Ltext0:
	.section	.text.unlikely.MQTTSerialize_connectLength,"ax",@progbits
.LCOLDB0:
	.section	.text.MQTTSerialize_connectLength,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.MQTTSerialize_connectLength
.Ltext_cold0:
	.section	.text.MQTTSerialize_connectLength
	.globl	MQTTSerialize_connectLength
	.type	MQTTSerialize_connectLength, @function
MQTTSerialize_connectLength:
.LFB0:
	.file 1 "framework/connectivity/mqtt/MQTTPacket/MQTTConnectClient.c"
	.loc 1 27 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$12, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 27 0
	movl	8(%ebp), %ebx
	.loc 1 31 0
	movb	8(%ebx), %al
	cmpb	$3, %al
	je	.L2
	.loc 1 34 0
	cmpb	$4, %al
	movl	$0, %edx
	movl	$10, %eax
	cmove	%eax, %edx
.L2:
	.loc 1 36 0
	subl	$16, %esp
	movl	%edx, -28(%ebp)
.LVL1:
	leal	12(%ebx), %esi
	movl	%esp, %edi
	movl	$3, %ecx
	rep movsl
	call	MQTTstrlen
.LVL2:
	.loc 1 37 0
	addl	$16, %esp
	cmpb	$0, 27(%ebx)
	.loc 1 36 0
	movl	-28(%ebp), %edx
	leal	2(%edx,%eax), %edx
.LVL3:
	.loc 1 37 0
	je	.L3
	.loc 1 38 0
	subl	$16, %esp
	movl	%edx, -32(%ebp)
	leal	36(%ebx), %esi
	movl	%esp, %edi
	movl	$3, %ecx
	rep movsl
	call	MQTTstrlen
.LVL4:
	movl	%esp, %edi
	movl	%eax, -28(%ebp)
	leal	48(%ebx), %esi
	movl	$3, %ecx
	rep movsl
	call	MQTTstrlen
.LVL5:
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	addl	$16, %esp
	leal	4(%ecx,%eax), %eax
	addl	%eax, %edx
.LVL6:
.L3:
	.loc 1 39 0
	cmpl	$0, 64(%ebx)
	jne	.L4
	.loc 1 39 0 is_stmt 0 discriminator 1
	cmpl	$0, 72(%ebx)
	je	.L5
.L4:
	.loc 1 40 0 is_stmt 1
	subl	$16, %esp
	movl	%edx, -28(%ebp)
	leal	64(%ebx), %esi
	movl	%esp, %edi
	movl	$3, %ecx
	rep movsl
	call	MQTTstrlen
.LVL7:
	movl	-28(%ebp), %edx
	addl	$16, %esp
	leal	2(%edx,%eax), %edx
.LVL8:
.L5:
	.loc 1 41 0
	cmpl	$0, 76(%ebx)
	jne	.L6
	.loc 1 41 0 is_stmt 0 discriminator 1
	cmpl	$0, 84(%ebx)
	je	.L7
.L6:
	.loc 1 42 0 is_stmt 1
	subl	$16, %esp
	movl	%edx, -28(%ebp)
	leal	76(%ebx), %esi
	movl	%esp, %edi
	movl	$3, %ecx
	rep movsl
	call	MQTTstrlen
.LVL9:
	movl	-28(%ebp), %edx
	addl	$16, %esp
	leal	2(%edx,%eax), %edx
.LVL10:
.L7:
	.loc 1 45 0
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
	.size	MQTTSerialize_connectLength, .-MQTTSerialize_connectLength
	.section	.text.unlikely.MQTTSerialize_connectLength
.LCOLDE0:
	.section	.text.MQTTSerialize_connectLength
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"MQTT"
.LC2:
	.string	"MQIsdp"
	.section	.text.unlikely.MQTTSerialize_connect,"ax",@progbits
.LCOLDB3:
	.section	.text.MQTTSerialize_connect,"ax",@progbits
.LHOTB3:
	.globl	MQTTSerialize_connect
	.type	MQTTSerialize_connect, @function
MQTTSerialize_connect:
.LFB1:
	.loc 1 56 0
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
	subl	$56, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 56 0
	movl	8(%ebp), %eax
	movl	16(%ebp), %ebx
	movl	%eax, -44(%ebp)
	.loc 1 63 0
	pushl	%ebx
	.loc 1 56 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 57 0
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
.LVL12:
	.loc 1 63 0
	call	MQTTSerialize_connectLength
.LVL13:
	movl	%eax, (%esp)
	movl	%eax, %esi
.LVL14:
	call	MQTTPacket_len
.LVL15:
	addl	$16, %esp
	cmpl	12(%ebp), %eax
	movl	$-2, %edx
	jg	.L14
	.loc 1 71 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	$16
	pushl	%eax
	call	writeChar
.LVL16:
	.loc 1 73 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	-32(%ebp)
	call	MQTTPacket_encode
.LVL17:
	.loc 1 75 0
	addl	$16, %esp
	.loc 1 73 0
	addl	%eax, -32(%ebp)
	.loc 1 75 0
	cmpb	$4, 8(%ebx)
	jne	.L15
	.loc 1 77 0
	leal	-32(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC1
	pushl	%eax
	call	writeCString
.LVL18:
	.loc 1 78 0
	popl	%esi
.LVL19:
	popl	%edi
	pushl	$4
	jmp	.L38
.LVL20:
.L15:
	.loc 1 82 0
	leal	-32(%ebp), %eax
	pushl	%edi
	pushl	%edi
	pushl	$.LC2
	pushl	%eax
	call	writeCString
.LVL21:
	.loc 1 83 0
	popl	%eax
	popl	%edx
	pushl	$3
.LVL22:
.L38:
	leal	-32(%ebp), %eax
	pushl	%eax
	call	writeChar
.LVL23:
	.loc 1 87 0
	movzbl	26(%ebx), %eax
	.loc 1 88 0
	xorl	%edx, %edx
	.loc 1 83 0
	addl	$16, %esp
	.loc 1 87 0
	andl	$1, %eax
	addl	%eax, %eax
	.loc 1 88 0
	cmpb	$0, 27(%ebx)
	setne	%dl
	sall	$2, %edx
	.loc 1 89 0
	orl	%edx, %eax
.LVL24:
	testl	%edx, %edx
	je	.L17
	.loc 1 91 0
	movzbl	61(%ebx), %edx
	.loc 1 92 0
	movzbl	60(%ebx), %ecx
	.loc 1 91 0
	andl	$3, %edx
	.loc 1 92 0
	andl	$1, %ecx
	.loc 1 91 0
	sall	$3, %edx
	.loc 1 92 0
	sall	$5, %ecx
.LVL25:
	orl	%edx, %eax
.LVL26:
	orl	%ecx, %eax
.L17:
	.loc 1 95 0
	cmpl	$0, 64(%ebx)
	jne	.L18
	.loc 1 95 0 is_stmt 0 discriminator 1
	cmpl	$0, 72(%ebx)
	je	.L19
.L18:
	.loc 1 96 0 is_stmt 1
	orb	$-128, %al
.L19:
	.loc 1 97 0
	cmpl	$0, 76(%ebx)
	jne	.L20
	.loc 1 97 0 is_stmt 0 discriminator 1
	cmpl	$0, 84(%ebx)
	je	.L21
.L20:
.LVL27:
	.loc 1 98 0 is_stmt 1
	orl	$64, %eax
.LVL28:
.L21:
.LVL29:
	.loc 1 100 0
	movl	%eax, -48(%ebp)
	pushl	%edx
	pushl	%edx
	movsbl	%al, %edx
	leal	-32(%ebp), %eax
.LVL30:
	pushl	%edx
	pushl	%eax
	call	writeChar
.LVL31:
	.loc 1 101 0
	movzwl	24(%ebx), %edx
	leal	-32(%ebp), %eax
	popl	%ecx
	popl	%esi
	.loc 1 102 0
	leal	12(%ebx), %esi
	.loc 1 101 0
	pushl	%edx
	pushl	%eax
	call	writeInt
.LVL32:
	.loc 1 102 0
	subl	$12, %esp
	movl	$3, %ecx
	leal	-32(%ebp), %eax
	movl	%esp, %edi
	rep movsl
	pushl	%eax
	call	writeMQTTString
.LVL33:
	.loc 1 103 0
	addl	$32, %esp
	cmpb	$0, 27(%ebx)
	movl	-48(%ebp), %eax
	je	.L22
	.loc 1 105 0
	subl	$12, %esp
	leal	36(%ebx), %esi
	movl	$3, %ecx
	movl	%esp, %edi
	leal	-32(%ebp), %eax
	rep movsl
	pushl	%eax
	.loc 1 106 0
	leal	48(%ebx), %esi
	.loc 1 105 0
	call	writeMQTTString
.LVL34:
	.loc 1 106 0
	subl	$12, %esp
	movl	$3, %ecx
	leal	-32(%ebp), %eax
	movl	%esp, %edi
	rep movsl
	pushl	%eax
	call	writeMQTTString
.LVL35:
	movl	-48(%ebp), %eax
	addl	$32, %esp
.L22:
	.loc 1 108 0
	testb	%al, %al
	movb	%al, -48(%ebp)
	jns	.L23
	.loc 1 109 0
	subl	$12, %esp
	leal	64(%ebx), %esi
	movl	$3, %ecx
	movl	%esp, %edi
	leal	-32(%ebp), %eax
	rep movsl
	pushl	%eax
	call	writeMQTTString
.LVL36:
	addl	$16, %esp
.L23:
	.loc 1 110 0
	testb	$64, -48(%ebp)
	je	.L24
	.loc 1 111 0
	subl	$12, %esp
	leal	76(%ebx), %esi
	movl	$3, %ecx
	movl	%esp, %edi
	leal	-32(%ebp), %eax
	rep movsl
	pushl	%eax
	call	writeMQTTString
.LVL37:
	addl	$16, %esp
.L24:
	.loc 1 113 0
	movl	-32(%ebp), %edx
	subl	-44(%ebp), %edx
.LVL38:
.L14:
	.loc 1 117 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%edx, %eax
	je	.L25
	call	__stack_chk_fail
.LVL39:
.L25:
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
	.size	MQTTSerialize_connect, .-MQTTSerialize_connect
	.section	.text.unlikely.MQTTSerialize_connect
.LCOLDE3:
	.section	.text.MQTTSerialize_connect
.LHOTE3:
	.section	.text.unlikely.MQTTDeserialize_connack,"ax",@progbits
.LCOLDB4:
	.section	.text.MQTTDeserialize_connack,"ax",@progbits
.LHOTB4:
	.globl	MQTTDeserialize_connack
	.type	MQTTDeserialize_connack, @function
MQTTDeserialize_connack:
.LFB2:
	.loc 1 129 0
	.cfi_startproc
.LVL40:
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
	.loc 1 137 0
	leal	-36(%ebp), %ebx
	.loc 1 129 0
	subl	$40, %esp
	.loc 1 129 0
	movl	8(%ebp), %edi
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL41:
	.loc 1 131 0
	movl	16(%ebp), %eax
	.loc 1 137 0
	pushl	%ebx
	.loc 1 131 0
	movl	%eax, -36(%ebp)
.LVL42:
	.loc 1 137 0
	call	readChar
.LVL43:
	.loc 1 138 0
	andl	$-16, %eax
.LVL44:
	addl	$16, %esp
	movb	%al, %dl
	.loc 1 133 0
	xorl	%eax, %eax
	.loc 1 138 0
	cmpb	$32, %dl
	jne	.L40
	.loc 1 141 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	%eax
	pushl	-36(%ebp)
	call	MQTTPacket_decodeBuf
.LVL45:
	.loc 1 143 0
	addl	$16, %esp
	.loc 1 141 0
	addl	%eax, -36(%ebp)
.LVL46:
	.loc 1 143 0
	cmpl	$1, -32(%ebp)
	jle	.L40
	.loc 1 146 0
	subl	$12, %esp
	pushl	%ebx
	call	readChar
.LVL47:
	shrl	$7, %eax
.LVL48:
	.loc 1 147 0
	andl	$1, %eax
.LVL49:
	movb	%al, (%edi)
	.loc 1 148 0
	movl	%ebx, (%esp)
	call	readChar
.LVL50:
	addl	$16, %esp
	movb	%al, (%esi)
.LVL51:
	.loc 1 150 0
	movl	$1, %eax
.LVL52:
.L40:
	.loc 1 153 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L41
	call	__stack_chk_fail
.LVL53:
.L41:
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
	.size	MQTTDeserialize_connack, .-MQTTDeserialize_connack
	.section	.text.unlikely.MQTTDeserialize_connack
.LCOLDE4:
	.section	.text.MQTTDeserialize_connack
.LHOTE4:
	.section	.text.unlikely.MQTTSerialize_zero,"ax",@progbits
.LCOLDB5:
	.section	.text.MQTTSerialize_zero,"ax",@progbits
.LHOTB5:
	.globl	MQTTSerialize_zero
	.type	MQTTSerialize_zero, @function
MQTTSerialize_zero:
.LFB3:
	.loc 1 164 0
	.cfi_startproc
.LVL54:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-2, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 164 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %eax
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
.LVL55:
	.loc 1 169 0
	cmpl	$1, 12(%ebp)
	.loc 1 167 0
	movl	%ebx, -16(%ebp)
	.loc 1 169 0
	jle	.L45
	.loc 1 175 0
	andl	$15, %eax
	.loc 1 176 0
	pushl	%edx
	pushl	%edx
	.loc 1 175 0
	sall	$4, %eax
	.loc 1 176 0
	movsbl	%al, %eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	%eax
	call	writeChar
.LVL56:
	.loc 1 178 0
	popl	%ecx
	popl	%eax
	pushl	$0
	pushl	-16(%ebp)
	call	MQTTPacket_encode
.LVL57:
	.loc 1 179 0
	addl	-16(%ebp), %eax
.LVL58:
	addl	$16, %esp
	movl	%eax, %edx
	subl	%ebx, %edx
.LVL59:
.L45:
	.loc 1 182 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L46
	call	__stack_chk_fail
.LVL60:
.L46:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	MQTTSerialize_zero, .-MQTTSerialize_zero
	.section	.text.unlikely.MQTTSerialize_zero
.LCOLDE5:
	.section	.text.MQTTSerialize_zero
.LHOTE5:
	.section	.text.unlikely.MQTTSerialize_disconnect,"ax",@progbits
.LCOLDB6:
	.section	.text.MQTTSerialize_disconnect,"ax",@progbits
.LHOTB6:
	.globl	MQTTSerialize_disconnect
	.type	MQTTSerialize_disconnect, @function
MQTTSerialize_disconnect:
.LFB4:
	.loc 1 192 0
	.cfi_startproc
.LVL61:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 193 0
	pushl	$14
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MQTTSerialize_zero
.LVL62:
	.loc 1 194 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	MQTTSerialize_disconnect, .-MQTTSerialize_disconnect
	.section	.text.unlikely.MQTTSerialize_disconnect
.LCOLDE6:
	.section	.text.MQTTSerialize_disconnect
.LHOTE6:
	.section	.text.unlikely.MQTTSerialize_pingreq,"ax",@progbits
.LCOLDB7:
	.section	.text.MQTTSerialize_pingreq,"ax",@progbits
.LHOTB7:
	.globl	MQTTSerialize_pingreq
	.type	MQTTSerialize_pingreq, @function
MQTTSerialize_pingreq:
.LFB5:
	.loc 1 204 0
	.cfi_startproc
.LVL63:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 205 0
	pushl	$12
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	MQTTSerialize_zero
.LVL64:
	.loc 1 206 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	MQTTSerialize_pingreq, .-MQTTSerialize_pingreq
	.section	.text.unlikely.MQTTSerialize_pingreq
.LCOLDE7:
	.section	.text.MQTTSerialize_pingreq
.LHOTE7:
	.text
.Letext0:
	.section	.text.unlikely.MQTTSerialize_connectLength
.Letext_cold0:
	.file 2 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
	.file 3 "framework/connectivity/mqtt/MQTTPacket/MQTTConnect.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x787
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF88
	.byte	0xc
	.long	.LASF89
	.long	.LASF90
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
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.byte	0x2c
	.long	0x1ff
	.uleb128 0x8
	.long	.LASF33
	.byte	0x3
	.byte	0x2f
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.long	.LASF34
	.byte	0x3
	.byte	0x30
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.byte	0x31
	.long	0xba
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x3
	.byte	0x32
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x3
	.byte	0x33
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x3
	.byte	0x34
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.long	0x21e
	.uleb128 0x10
	.string	"all"
	.byte	0x3
	.byte	0x1f
	.long	0x125
	.uleb128 0xb
	.long	.LASF24
	.byte	0x3
	.byte	0x35
	.long	0x19c
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x3
	.byte	0x37
	.long	0x1ff
	.uleb128 0x7
	.byte	0x24
	.byte	0x3
	.byte	0x3f
	.long	0x27a
	.uleb128 0xe
	.long	.LASF40
	.byte	0x3
	.byte	0x42
	.long	0x27a
	.byte	0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x3
	.byte	0x44
	.long	0x48
	.byte	0x4
	.uleb128 0xe
	.long	.LASF42
	.byte	0x3
	.byte	0x46
	.long	0x191
	.byte	0x8
	.uleb128 0xe
	.long	.LASF43
	.byte	0x3
	.byte	0x48
	.long	0x191
	.byte	0x14
	.uleb128 0xe
	.long	.LASF44
	.byte	0x3
	.byte	0x4c
	.long	0x125
	.byte	0x20
	.uleb128 0xd
	.string	"qos"
	.byte	0x3
	.byte	0x51
	.long	0x15e
	.byte	0x21
	.byte	0
	.uleb128 0x11
	.long	0x15e
	.long	0x28a
	.uleb128 0x12
	.long	0x28a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF45
	.uleb128 0xc
	.long	.LASF46
	.byte	0x3
	.byte	0x52
	.long	0x229
	.uleb128 0x7
	.byte	0x58
	.byte	0x3
	.byte	0x58
	.long	0x31d
	.uleb128 0xe
	.long	.LASF40
	.byte	0x3
	.byte	0x5b
	.long	0x27a
	.byte	0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x3
	.byte	0x5d
	.long	0x48
	.byte	0x4
	.uleb128 0xe
	.long	.LASF47
	.byte	0x3
	.byte	0x60
	.long	0x125
	.byte	0x8
	.uleb128 0xe
	.long	.LASF48
	.byte	0x3
	.byte	0x61
	.long	0x191
	.byte	0xc
	.uleb128 0xe
	.long	.LASF49
	.byte	0x3
	.byte	0x62
	.long	0x31d
	.byte	0x18
	.uleb128 0xe
	.long	.LASF33
	.byte	0x3
	.byte	0x63
	.long	0x125
	.byte	0x1a
	.uleb128 0xe
	.long	.LASF50
	.byte	0x3
	.byte	0x64
	.long	0x125
	.byte	0x1b
	.uleb128 0xe
	.long	.LASF34
	.byte	0x3
	.byte	0x65
	.long	0x291
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF38
	.byte	0x3
	.byte	0x66
	.long	0x191
	.byte	0x40
	.uleb128 0xe
	.long	.LASF37
	.byte	0x3
	.byte	0x67
	.long	0x191
	.byte	0x4c
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF51
	.uleb128 0xc
	.long	.LASF52
	.byte	0x3
	.byte	0x68
	.long	0x29c
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.byte	0x74
	.long	0x347
	.uleb128 0x8
	.long	.LASF53
	.byte	0x3
	.byte	0x77
	.long	0xba
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.byte	0x6a
	.long	0x366
	.uleb128 0x10
	.string	"all"
	.byte	0x3
	.byte	0x6c
	.long	0x125
	.uleb128 0xb
	.long	.LASF24
	.byte	0x3
	.byte	0x78
	.long	0x32f
	.byte	0
	.uleb128 0xc
	.long	.LASF54
	.byte	0x3
	.byte	0x7a
	.long	0x347
	.uleb128 0xf
	.byte	0x4
	.long	0x125
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.long	.LASF56
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF57
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF58
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.long	.LASF59
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF60
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x1a
	.long	0x48
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x1a
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x1c
	.long	0x48
	.long	.LLST0
	.uleb128 0x16
	.long	.LVL2
	.long	0x71e
	.uleb128 0x16
	.long	.LVL4
	.long	0x71e
	.uleb128 0x16
	.long	.LVL5
	.long	0x71e
	.uleb128 0x16
	.long	.LVL7
	.long	0x71e
	.uleb128 0x16
	.long	.LVL9
	.long	0x71e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x324
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x37
	.long	0x48
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x52d
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x37
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x37
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x37
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"ptr"
	.byte	0x1
	.byte	0x39
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0x3a
	.long	0x12c
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x1
	.byte	0x3b
	.long	0x21e
	.long	.LLST1
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x3c
	.long	0x48
	.long	.LLST2
	.uleb128 0x15
	.string	"rc"
	.byte	0x1
	.byte	0x3d
	.long	0x48
	.long	.LLST3
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.byte	0x73
	.long	.L14
	.uleb128 0x16
	.long	.LVL13
	.long	0x3a8
	.uleb128 0x16
	.long	.LVL15
	.long	0x729
	.uleb128 0x16
	.long	.LVL16
	.long	0x734
	.uleb128 0x16
	.long	.LVL17
	.long	0x73f
	.uleb128 0x16
	.long	.LVL18
	.long	0x74a
	.uleb128 0x16
	.long	.LVL21
	.long	0x74a
	.uleb128 0x16
	.long	.LVL23
	.long	0x734
	.uleb128 0x16
	.long	.LVL31
	.long	0x734
	.uleb128 0x16
	.long	.LVL32
	.long	0x755
	.uleb128 0x16
	.long	.LVL33
	.long	0x760
	.uleb128 0x16
	.long	.LVL34
	.long	0x760
	.uleb128 0x16
	.long	.LVL35
	.long	0x760
	.uleb128 0x16
	.long	.LVL36
	.long	0x760
	.uleb128 0x16
	.long	.LVL37
	.long	0x760
	.uleb128 0x16
	.long	.LVL39
	.long	0x76b
	.byte	0
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x80
	.long	0x48
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x60e
	.uleb128 0x14
	.long	.LASF68
	.byte	0x1
	.byte	0x80
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF69
	.byte	0x1
	.byte	0x80
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x80
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.byte	0x82
	.long	0x12c
	.long	.LLST4
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x1
	.byte	0x83
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.byte	0x84
	.long	0x371
	.long	.LLST5
	.uleb128 0x15
	.string	"rc"
	.byte	0x1
	.byte	0x85
	.long	0x48
	.long	.LLST6
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.byte	0x86
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x1
	.byte	0x87
	.long	0x366
	.long	.LLST7
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.byte	0x97
	.long	.L40
	.uleb128 0x16
	.long	.LVL43
	.long	0x774
	.uleb128 0x16
	.long	.LVL45
	.long	0x77f
	.uleb128 0x16
	.long	.LVL47
	.long	0x774
	.uleb128 0x16
	.long	.LVL50
	.long	0x774
	.uleb128 0x16
	.long	.LVL53
	.long	0x76b
	.byte	0
	.uleb128 0x13
	.long	.LASF75
	.byte	0x1
	.byte	0xa3
	.long	0x48
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a0
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xa3
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0xa3
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.byte	0xa3
	.long	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0xa5
	.long	0x12c
	.uleb128 0x15
	.string	"rc"
	.byte	0x1
	.byte	0xa6
	.long	0x48
	.long	.LLST8
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0xa7
	.long	0x371
	.long	.LLST9
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.byte	0xb4
	.long	.L45
	.uleb128 0x16
	.long	.LVL56
	.long	0x734
	.uleb128 0x16
	.long	.LVL57
	.long	0x73f
	.uleb128 0x16
	.long	.LVL60
	.long	0x76b
	.byte	0
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0xbf
	.long	0x48
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6df
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xbf
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0xbf
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LVL62
	.long	0x60e
	.byte	0
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0xcb
	.long	0x48
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x71e
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xcb
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0xcb
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LVL64
	.long	0x60e
	.byte	0
	.uleb128 0x1d
	.long	.LASF79
	.long	.LASF79
	.byte	0x2
	.byte	0x5b
	.uleb128 0x1d
	.long	.LASF80
	.long	.LASF80
	.byte	0x2
	.byte	0x65
	.uleb128 0x1d
	.long	.LASF81
	.long	.LASF81
	.byte	0x2
	.byte	0x6e
	.uleb128 0x1d
	.long	.LASF82
	.long	.LASF82
	.byte	0x2
	.byte	0x68
	.uleb128 0x1d
	.long	.LASF83
	.long	.LASF83
	.byte	0x2
	.byte	0x71
	.uleb128 0x1d
	.long	.LASF84
	.long	.LASF84
	.byte	0x2
	.byte	0x6f
	.uleb128 0x1d
	.long	.LASF85
	.long	.LASF85
	.byte	0x2
	.byte	0x72
	.uleb128 0x1e
	.long	.LASF91
	.long	.LASF91
	.uleb128 0x1d
	.long	.LASF86
	.long	.LASF86
	.byte	0x2
	.byte	0x6d
	.uleb128 0x1d
	.long	.LASF87
	.long	.LASF87
	.byte	0x2
	.byte	0x6a
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
	.uleb128 0x14
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x52
	.long	.LVL4-1
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL6
	.long	.LVL7-1
	.value	0x1
	.byte	0x52
	.long	.LVL7-1
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL8
	.long	.LVL9-1
	.value	0x1
	.byte	0x52
	.long	.LVL9-1
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL10
	.long	.LFE0
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15-1
	.value	0x1
	.byte	0x50
	.long	.LVL15-1
	.long	.LVL19
	.value	0x1
	.byte	0x56
	.long	.LVL20
	.long	.LVL22
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL38
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x52
	.long	.LVL39
	.long	.LFE1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL41
	.long	.LVL43
	.value	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	.LVL43
	.long	.LVL44
	.value	0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.long	0
	.long	0
.LLST5:
	.long	.LVL42
	.long	.LVL46
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47-1
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL42
	.long	.LVL45
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL45
	.long	.LVL47-1
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LFE2
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL55
	.long	.LVL59
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60-1
	.value	0x1
	.byte	0x52
	.long	.LVL60
	.long	.LFE3
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL57
	.long	.LVL58
	.value	0x7
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
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
.LASF62:
	.string	"MQTTSerialize_connectLength"
.LASF80:
	.string	"MQTTPacket_len"
.LASF78:
	.string	"MQTTSerialize_pingreq"
.LASF42:
	.string	"topicName"
.LASF48:
	.string	"clientID"
.LASF22:
	.string	"type"
.LASF37:
	.string	"password"
.LASF16:
	.string	"UNSUBACK"
.LASF21:
	.string	"retain"
.LASF31:
	.string	"lenstring"
.LASF61:
	.string	"long long unsigned int"
.LASF34:
	.string	"will"
.LASF35:
	.string	"willQoS"
.LASF68:
	.string	"sessionPresent"
.LASF1:
	.string	"MQTTPACKET_READ_ERROR"
.LASF54:
	.string	"MQTTConnackFlags"
.LASF57:
	.string	"signed char"
.LASF84:
	.string	"writeInt"
.LASF85:
	.string	"writeMQTTString"
.LASF24:
	.string	"bits"
.LASF59:
	.string	"long int"
.LASF50:
	.string	"willFlag"
.LASF41:
	.string	"struct_version"
.LASF55:
	.string	"long long int"
.LASF15:
	.string	"UNSUBSCRIBE"
.LASF90:
	.string	"/home/stone/Documents/pca"
.LASF56:
	.string	"long double"
.LASF23:
	.string	"byte"
.LASF64:
	.string	"options"
.LASF82:
	.string	"MQTTPacket_encode"
.LASF33:
	.string	"cleansession"
.LASF4:
	.string	"msgTypes"
.LASF36:
	.string	"willRetain"
.LASF20:
	.string	"unsigned int"
.LASF46:
	.string	"MQTTPacket_willOptions"
.LASF7:
	.string	"CONNACK"
.LASF53:
	.string	"sessionpresent"
.LASF3:
	.string	"errors"
.LASF60:
	.string	"long unsigned int"
.LASF67:
	.string	"MQTTDeserialize_connack"
.LASF72:
	.string	"enddata"
.LASF26:
	.string	"data"
.LASF51:
	.string	"short unsigned int"
.LASF2:
	.string	"MQTTPACKET_READ_COMPLETE"
.LASF75:
	.string	"MQTTSerialize_zero"
.LASF76:
	.string	"packettype"
.LASF14:
	.string	"SUBACK"
.LASF38:
	.string	"username"
.LASF32:
	.string	"MQTTString"
.LASF52:
	.string	"MQTTPacket_connectData"
.LASF86:
	.string	"readChar"
.LASF45:
	.string	"sizetype"
.LASF5:
	.string	"MQTT_CPT_RESERVED"
.LASF89:
	.string	"src/MQTTConnectClient.c"
.LASF49:
	.string	"keepAliveInterval"
.LASF30:
	.string	"cstring"
.LASF43:
	.string	"message"
.LASF19:
	.string	"DISCONNECT"
.LASF87:
	.string	"MQTTPacket_decodeBuf"
.LASF71:
	.string	"curdata"
.LASF73:
	.string	"mylen"
.LASF18:
	.string	"PINGRESP"
.LASF6:
	.string	"CONNECT"
.LASF25:
	.string	"unsigned char"
.LASF44:
	.string	"retained"
.LASF79:
	.string	"MQTTstrlen"
.LASF58:
	.string	"short int"
.LASF77:
	.string	"MQTTSerialize_disconnect"
.LASF8:
	.string	"PUBLISH"
.LASF65:
	.string	"buflen"
.LASF63:
	.string	"MQTTSerialize_connect"
.LASF91:
	.string	"__stack_chk_fail"
.LASF88:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF28:
	.string	"MQTTHeader"
.LASF40:
	.string	"struct_id"
.LASF29:
	.string	"MQTTLenString"
.LASF13:
	.string	"SUBSCRIBE"
.LASF27:
	.string	"char"
.LASF69:
	.string	"connack_rc"
.LASF9:
	.string	"PUBACK"
.LASF12:
	.string	"PUBCOMP"
.LASF74:
	.string	"exit"
.LASF81:
	.string	"writeChar"
.LASF66:
	.string	"flags"
.LASF83:
	.string	"writeCString"
.LASF39:
	.string	"MQTTConnectFlags"
.LASF10:
	.string	"PUBREC"
.LASF11:
	.string	"PUBREL"
.LASF17:
	.string	"PINGREQ"
.LASF47:
	.string	"MQTTVersion"
.LASF70:
	.string	"header"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

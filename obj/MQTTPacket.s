	.file	"MQTTPacket.c"
	.text
.Ltext0:
	.section	.text.unlikely.bufchar,"ax",@progbits
.LCOLDB0:
	.section	.text.bufchar,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.bufchar
.Ltext_cold0:
	.section	.text.bufchar
	.globl	bufchar
	.type	bufchar, @function
bufchar:
.LFB3:
	.file 1 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.c"
	.loc 1 99 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 102 0
	xorl	%ecx, %ecx
	.loc 1 99 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	bufptr, %esi
	movl	12(%ebp), %eax
	pushl	%ebx
	.cfi_offset 3, -16
	.loc 1 102 0
	xorl	%ebx, %ebx
.LVL1:
.L2:
	.loc 1 102 0 is_stmt 0 discriminator 1
	cmpl	%eax, %ecx
	jge	.L10
	.loc 1 103 0 is_stmt 1 discriminator 3
	movb	(%esi,%ecx), %dl
	movl	8(%ebp), %ebx
	.loc 1 102 0 discriminator 3
	incl	%ecx
.LVL2:
	.loc 1 103 0 discriminator 3
	movb	%dl, (%ebx)
	movb	$1, %bl
	jmp	.L2
.L10:
	testl	%eax, %eax
	movl	$0, %edx
	cmovns	%eax, %edx
	addl	%esi, %edx
	testb	%bl, %bl
	je	.L4
	movl	%edx, bufptr
.L4:
	.loc 1 105 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	bufchar, .-bufchar
	.section	.text.unlikely.bufchar
.LCOLDE0:
	.section	.text.bufchar
.LHOTE0:
	.section	.text.unlikely.MQTTPacket_encode,"ax",@progbits
.LCOLDB1:
	.section	.text.MQTTPacket_encode,"ax",@progbits
.LHOTB1:
	.globl	MQTTPacket_encode
	.type	MQTTPacket_encode, @function
MQTTPacket_encode:
.LFB0:
	.loc 1 29 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 30 0
	xorl	%ecx, %ecx
	.loc 1 29 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 29 0
	movl	12(%ebp), %eax
.LBB2:
	.loc 1 34 0
	movl	$128, %ebx
.LVL4:
.L13:
	cltd
	idivl	%ebx
.LVL5:
	.loc 1 38 0
	movl	%edx, %esi
	orl	$-128, %esi
	testl	%eax, %eax
	cmovg	%esi, %edx
.LVL6:
	.loc 1 39 0
	movl	8(%ebp), %esi
	incl	%ecx
.LVL7:
.LBE2:
	.loc 1 40 0
	testl	%eax, %eax
.LBB3:
	.loc 1 39 0
	movb	%dl, -1(%esi,%ecx)
.LBE3:
	.loc 1 40 0
	jg	.L13
	.loc 1 42 0
	popl	%ebx
	.cfi_restore 3
	movl	%ecx, %eax
.LVL8:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	MQTTPacket_encode, .-MQTTPacket_encode
	.section	.text.unlikely.MQTTPacket_encode
.LCOLDE1:
	.section	.text.MQTTPacket_encode
.LHOTE1:
	.section	.text.unlikely.MQTTPacket_decode,"ax",@progbits
.LCOLDB2:
	.section	.text.MQTTPacket_decode,"ax",@progbits
.LHOTB2:
	.globl	MQTTPacket_decode
	.type	MQTTPacket_decode, @function
MQTTPacket_decode:
.LFB1:
	.loc 1 52 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
.LBB4:
	.loc 1 68 0
	leal	-29(%ebp), %edx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LBE4:
	.loc 1 55 0
	xorl	%ebx, %ebx
	.loc 1 54 0
	movl	$1, %esi
	.loc 1 52 0
	subl	$44, %esp
	.loc 1 52 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	movl	%eax, -44(%ebp)
	.loc 1 58 0
	movl	$0, (%edi)
	.loc 1 52 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL10:
.L18:
.LBB5:
	.loc 1 63 0
	incl	%ebx
.LVL11:
	cmpl	$5, %ebx
	je	.L17
	.loc 1 68 0
	pushl	%eax
	pushl	%eax
	pushl	$1
	pushl	%edx
	movl	%edx, -48(%ebp)
	movl	-44(%ebp), %eax
	call	*%eax
.LVL12:
	.loc 1 69 0
	addl	$16, %esp
	decl	%eax
.LVL13:
	jne	.L17
	.loc 1 71 0
	movb	-29(%ebp), %cl
.LBE5:
	.loc 1 73 0
	movl	-48(%ebp), %edx
.LBB6:
	.loc 1 71 0
	movl	%ecx, %eax
	andl	$127, %eax
	imull	%esi, %eax
	.loc 1 72 0
	sall	$7, %esi
.LVL14:
	.loc 1 71 0
	addl	%eax, (%edi)
.LBE6:
	.loc 1 73 0
	testb	%cl, %cl
	js	.L18
.L17:
	.loc 1 76 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%ebx, %eax
	je	.L19
.LVL15:
	call	__stack_chk_fail
.LVL16:
.L19:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL17:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	MQTTPacket_decode, .-MQTTPacket_decode
	.section	.text.unlikely.MQTTPacket_decode
.LCOLDE2:
	.section	.text.MQTTPacket_decode
.LHOTE2:
	.section	.text.unlikely.MQTTPacket_len,"ax",@progbits
.LCOLDB3:
	.section	.text.MQTTPacket_len,"ax",@progbits
.LHOTB3:
	.globl	MQTTPacket_len
	.type	MQTTPacket_len, @function
MQTTPacket_len:
.LFB2:
	.loc 1 80 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 80 0
	movl	8(%ebp), %eax
	.loc 1 81 0
	leal	1(%eax), %edx
.LVL19:
	.loc 1 84 0
	cmpl	$127, %edx
	jg	.L26
	.loc 1 85 0
	addl	$2, %eax
.LVL20:
	jmp	.L27
.LVL21:
.L26:
	.loc 1 86 0
	cmpl	$16383, %edx
	jg	.L28
	.loc 1 87 0
	addl	$3, %eax
.LVL22:
	jmp	.L27
.LVL23:
.L28:
	.loc 1 89 0
	leal	4(%eax), %ecx
	addl	$5, %eax
	cmpl	$2097150, %edx
	cmovle	%ecx, %eax
.LVL24:
.L27:
	.loc 1 93 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	MQTTPacket_len, .-MQTTPacket_len
	.section	.text.unlikely.MQTTPacket_len
.LCOLDE3:
	.section	.text.MQTTPacket_len
.LHOTE3:
	.section	.text.unlikely.MQTTPacket_decodeBuf,"ax",@progbits
.LCOLDB4:
	.section	.text.MQTTPacket_decodeBuf,"ax",@progbits
.LHOTB4:
	.globl	MQTTPacket_decodeBuf
	.type	MQTTPacket_decodeBuf, @function
MQTTPacket_decodeBuf:
.LFB4:
	.loc 1 109 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 110 0
	movl	8(%ebp), %eax
	.loc 1 111 0
	movl	$bufchar, 8(%ebp)
.LVL26:
	.loc 1 112 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 110 0
	movl	%eax, bufptr
	.loc 1 111 0
	jmp	MQTTPacket_decode
.LVL27:
	.cfi_endproc
.LFE4:
	.size	MQTTPacket_decodeBuf, .-MQTTPacket_decodeBuf
	.section	.text.unlikely.MQTTPacket_decodeBuf
.LCOLDE4:
	.section	.text.MQTTPacket_decodeBuf
.LHOTE4:
	.section	.text.unlikely.readInt,"ax",@progbits
.LCOLDB5:
	.section	.text.readInt,"ax",@progbits
.LHOTB5:
	.globl	readInt
	.type	readInt, @function
readInt:
.LFB5:
	.loc 1 121 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 121 0
	movl	8(%ebp), %ebx
	.loc 1 122 0
	movl	(%ebx), %edx
.LVL29:
	.loc 1 123 0
	movzbl	(%edx), %eax
	movzbl	1(%edx), %ecx
	.loc 1 124 0
	addl	$2, %edx
.LVL30:
	movl	%edx, (%ebx)
.LVL31:
	.loc 1 126 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 123 0
	sall	$8, %eax
	addl	%ecx, %eax
.LVL32:
	.loc 1 126 0
	ret
	.cfi_endproc
.LFE5:
	.size	readInt, .-readInt
	.section	.text.unlikely.readInt
.LCOLDE5:
	.section	.text.readInt
.LHOTE5:
	.section	.text.unlikely.readChar,"ax",@progbits
.LCOLDB6:
	.section	.text.readChar,"ax",@progbits
.LHOTB6:
	.globl	readChar
	.type	readChar, @function
readChar:
.LFB6:
	.loc 1 135 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 135 0
	movl	8(%ebp), %ecx
	.loc 1 136 0
	movl	(%ecx), %edx
	movb	(%edx), %al
.LVL34:
	.loc 1 137 0
	incl	%edx
	movl	%edx, (%ecx)
	.loc 1 139 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	readChar, .-readChar
	.section	.text.unlikely.readChar
.LCOLDE6:
	.section	.text.readChar
.LHOTE6:
	.section	.text.unlikely.writeChar,"ax",@progbits
.LCOLDB7:
	.section	.text.writeChar,"ax",@progbits
.LHOTB7:
	.globl	writeChar
	.type	writeChar, @function
writeChar:
.LFB7:
	.loc 1 148 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 148 0
	movl	8(%ebp), %eax
	.loc 1 149 0
	movl	12(%ebp), %ecx
	movl	(%eax), %edx
	movb	%cl, (%edx)
	.loc 1 150 0
	incl	(%eax)
	.loc 1 151 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	writeChar, .-writeChar
	.section	.text.unlikely.writeChar
.LCOLDE7:
	.section	.text.writeChar
.LHOTE7:
	.section	.text.unlikely.writeInt,"ax",@progbits
.LCOLDB8:
	.section	.text.writeInt,"ax",@progbits
.LHOTB8:
	.globl	writeInt
	.type	writeInt, @function
writeInt:
.LFB8:
	.loc 1 160 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 161 0
	movl	$256, %ebx
	.loc 1 160 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	.loc 1 161 0
	cltd
	idivl	%ebx
	movl	(%ecx), %ebx
	movb	%al, (%ebx)
	.loc 1 162 0
	movl	(%ecx), %eax
	leal	1(%eax), %ebx
	movl	%ebx, (%ecx)
	.loc 1 163 0
	movb	%dl, 1(%eax)
	.loc 1 164 0
	incl	(%ecx)
	.loc 1 165 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	writeInt, .-writeInt
	.section	.text.unlikely.writeInt
.LCOLDE8:
	.section	.text.writeInt
.LHOTE8:
	.section	.text.unlikely.writeCString,"ax",@progbits
.LCOLDB9:
	.section	.text.writeCString,"ax",@progbits
.LHOTB9:
	.globl	writeCString
	.type	writeCString, @function
writeCString:
.LFB9:
	.loc 1 174 0
	.cfi_startproc
.LVL37:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 175 0
	orl	$-1, %ecx
	.loc 1 174 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 175 0
	xorl	%eax, %eax
	movl	12(%ebp), %edi
	.loc 1 174 0
	movl	8(%ebp), %edx
	.loc 1 175 0
	repnz scasb
.LVL38:
	.loc 1 176 0
	movl	%edx, -16(%ebp)
	.loc 1 175 0
	movl	%ecx, %esi
	notl	%esi
	leal	-1(%esi), %ebx
.LVL39:
	.loc 1 176 0
	pushl	%ebx
	pushl	%edx
	call	writeInt
.LVL40:
	.loc 1 177 0
	movl	-16(%ebp), %edx
	movl	12(%ebp), %esi
	movl	%ebx, %ecx
	movl	(%edx), %edi
	rep movsb
	.loc 1 178 0
	addl	%ebx, (%edx)
	.loc 1 179 0
	popl	%edx
	popl	%ecx
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL41:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	writeCString, .-writeCString
	.section	.text.unlikely.writeCString
.LCOLDE9:
	.section	.text.writeCString
.LHOTE9:
	.section	.text.unlikely.getLenStringLen,"ax",@progbits
.LCOLDB10:
	.section	.text.getLenStringLen,"ax",@progbits
.LHOTB10:
	.globl	getLenStringLen
	.type	getLenStringLen, @function
getLenStringLen:
.LFB10:
	.loc 1 183 0
	.cfi_startproc
.LVL42:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 183 0
	movl	8(%ebp), %edx
.LVL43:
	.loc 1 186 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 185 0
	movzbl	(%edx), %eax
	movzbl	1(%edx), %edx
	sall	$8, %eax
	addl	%edx, %eax
.LVL44:
	.loc 1 186 0
	ret
	.cfi_endproc
.LFE10:
	.size	getLenStringLen, .-getLenStringLen
	.section	.text.unlikely.getLenStringLen
.LCOLDE10:
	.section	.text.getLenStringLen
.LHOTE10:
	.section	.text.unlikely.writeMQTTString,"ax",@progbits
.LCOLDB11:
	.section	.text.writeMQTTString,"ax",@progbits
.LHOTB11:
	.globl	writeMQTTString
	.type	writeMQTTString, @function
writeMQTTString:
.LFB11:
	.loc 1 190 0
	.cfi_startproc
.LVL45:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL46:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	16(%ebp), %eax
.LVL47:
	.loc 1 190 0
	movl	8(%ebp), %ebx
	.loc 1 191 0
	testl	%eax, %eax
	jle	.L46
	.loc 1 193 0
	pushl	%eax
	pushl	%ebx
	movl	%eax, -16(%ebp)
	call	writeInt
.LVL48:
	.loc 1 194 0
	movl	-16(%ebp), %eax
	movl	(%ebx), %edi
	movl	20(%ebp), %esi
	movl	%eax, %ecx
	rep movsb
	.loc 1 195 0
	addl	%eax, (%ebx)
	popl	%eax
	popl	%edx
	.loc 1 201 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL49:
.L46:
	.cfi_restore_state
	movl	12(%ebp), %eax
.LVL50:
	.loc 1 197 0
	testl	%eax, %eax
	je	.L48
	.loc 1 198 0
	movl	%ebx, 8(%ebp)
.LVL51:
	.loc 1 201 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 198 0
	jmp	writeCString
.LVL52:
.L48:
	.cfi_restore_state
	.loc 1 200 0
	movl	%ebx, 8(%ebp)
.LVL53:
	movl	$0, 12(%ebp)
.LVL54:
	.loc 1 201 0
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
	.loc 1 200 0
	jmp	writeInt
.LVL55:
	.cfi_endproc
.LFE11:
	.size	writeMQTTString, .-writeMQTTString
	.section	.text.unlikely.writeMQTTString
.LCOLDE11:
	.section	.text.writeMQTTString
.LHOTE11:
	.section	.text.unlikely.readMQTTLenString,"ax",@progbits
.LCOLDB12:
	.section	.text.readMQTTLenString,"ax",@progbits
.LHOTB12:
	.globl	readMQTTLenString
	.type	readMQTTLenString, @function
readMQTTLenString:
.LFB12:
	.loc 1 211 0
	.cfi_startproc
.LVL56:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	16(%ebp), %edi
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 211 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 215 0
	movl	%edi, %eax
	subl	(%ebx), %eax
	decl	%eax
	jg	.L52
.L54:
	.loc 1 212 0
	xorl	%eax, %eax
	jmp	.L53
.L52:
	.loc 1 217 0
	pushl	%ebx
	call	readInt
.LVL57:
	.loc 1 218 0
	movl	(%ebx), %edx
	addl	$4, %esp
	.loc 1 217 0
	movl	%eax, 4(%esi)
	.loc 1 218 0
	leal	(%edx,%eax), %ecx
	cmpl	%ecx, %edi
	jb	.L54
	.loc 1 220 0
	movl	%edx, 8(%esi)
	.loc 1 221 0
	addl	%eax, (%ebx)
.LVL58:
	.loc 1 222 0
	movl	$1, %eax
.LVL59:
.L53:
	.loc 1 225 0
	movl	$0, (%esi)
	.loc 1 227 0
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
.LFE12:
	.size	readMQTTLenString, .-readMQTTLenString
	.section	.text.unlikely.readMQTTLenString
.LCOLDE12:
	.section	.text.readMQTTLenString
.LHOTE12:
	.section	.text.unlikely.MQTTstrlen,"ax",@progbits
.LCOLDB13:
	.section	.text.MQTTstrlen,"ax",@progbits
.LHOTB13:
	.globl	MQTTstrlen
	.type	MQTTstrlen, @function
MQTTstrlen:
.LFB13:
	.loc 1 236 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	8(%ebp), %edi
.LVL60:
	.loc 1 239 0
	testl	%edi, %edi
	je	.L57
	.loc 1 240 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz scasb
.LVL61:
	movl	%ecx, %eax
	notl	%eax
	decl	%eax
.LVL62:
	jmp	.L58
.LVL63:
.L57:
	.loc 1 242 0
	movl	12(%ebp), %eax
.LVL64:
.L58:
	.loc 1 244 0
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	MQTTstrlen, .-MQTTstrlen
	.section	.text.unlikely.MQTTstrlen
.LCOLDE13:
	.section	.text.MQTTstrlen
.LHOTE13:
	.section	.text.unlikely.MQTTPacket_equals,"ax",@progbits
.LCOLDB14:
	.section	.text.MQTTPacket_equals,"ax",@progbits
.LHOTB14:
	.globl	MQTTPacket_equals
	.type	MQTTPacket_equals, @function
MQTTPacket_equals:
.LFB14:
	.loc 1 254 0
	.cfi_startproc
.LVL65:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 254 0
	movl	8(%ebp), %eax
	.loc 1 259 0
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	.L61
.LVL66:
	.loc 1 262 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%ebx, %edi
	repnz scasb
.LVL67:
	notl	%ecx
	leal	-1(%ecx), %edx
.LVL68:
	jmp	.L62
.LVL69:
.L61:
	.loc 1 266 0
	movl	8(%eax), %ebx
.LVL70:
	.loc 1 267 0
	movl	4(%eax), %edx
.LVL71:
.L62:
	.loc 1 269 0
	movl	12(%ebp), %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz scasb
.LVL72:
	.loc 1 271 0
	xorl	%eax, %eax
	.loc 1 269 0
	notl	%ecx
	decl	%ecx
.LVL73:
	.loc 1 271 0
	cmpl	%ecx, %edx
	jne	.L63
	.loc 1 271 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%edx
	pushl	12(%ebp)
	pushl	%ebx
	call	strncmp
.LVL74:
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L63:
	.loc 1 272 0 is_stmt 1 discriminator 6
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL75:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	MQTTPacket_equals, .-MQTTPacket_equals
	.section	.text.unlikely.MQTTPacket_equals
.LCOLDE14:
	.section	.text.MQTTPacket_equals
.LHOTE14:
	.section	.text.unlikely.MQTTPacket_read,"ax",@progbits
.LCOLDB15:
	.section	.text.MQTTPacket_read,"ax",@progbits
.LHOTB15:
	.globl	MQTTPacket_read
	.type	MQTTPacket_read, @function
MQTTPacket_read:
.LFB15:
	.loc 1 284 0
	.cfi_startproc
.LVL76:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 284 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	.loc 1 291 0
	pushl	$1
	.loc 1 288 0
	movl	$0, -16(%ebp)
	.loc 1 284 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL77:
	.loc 1 291 0
	pushl	%ebx
	call	*%esi
.LVL78:
	addl	$16, %esp
	decl	%eax
	je	.L67
.LVL79:
.L69:
	.loc 1 285 0
	orl	$-1, %eax
	jmp	.L68
.LVL80:
.L67:
	.loc 1 296 0
	pushl	%eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	%esi
	call	MQTTPacket_decode
.LVL81:
	.loc 1 297 0
	popl	%eax
	leal	1(%ebx), %eax
	popl	%edx
	pushl	-16(%ebp)
	pushl	%eax
	call	MQTTPacket_encode
.LVL82:
	.loc 1 300 0
	movl	-16(%ebp), %edx
	.loc 1 297 0
	incl	%eax
.LVL83:
	.loc 1 300 0
	addl	$16, %esp
	leal	(%eax,%edx), %ecx
	cmpl	12(%ebp), %ecx
	jg	.L69
	.loc 1 302 0
	addl	%ebx, %eax
.LVL84:
	pushl	%ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	*%esi
.LVL85:
	addl	$16, %esp
	cmpl	-16(%ebp), %eax
	jne	.L69
	.loc 1 305 0
	xorl	%eax, %eax
.LVL86:
	movb	(%ebx), %al
.LVL87:
	.loc 1 306 0
	shrl	$4, %eax
.LVL88:
.L68:
	.loc 1 309 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L70
	call	__stack_chk_fail
.LVL89:
.L70:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	MQTTPacket_read, .-MQTTPacket_read
	.section	.text.unlikely.MQTTPacket_read
.LCOLDE15:
	.section	.text.MQTTPacket_read
.LHOTE15:
	.section	.text.unlikely.MQTTPacket_readnb,"ax",@progbits
.LCOLDB16:
	.section	.text.MQTTPacket_readnb,"ax",@progbits
.LHOTB16:
	.globl	MQTTPacket_readnb
	.type	MQTTPacket_readnb, @function
MQTTPacket_readnb:
.LFB17:
	.loc 1 353 0
	.cfi_startproc
.LVL90:
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
	.loc 1 353 0
	movl	16(%ebp), %ebx
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL91:
	.loc 1 357 0
	movb	20(%ebx), %al
	cmpb	$1, %al
	je	.L74
	cmpb	$2, %al
	je	.L75
	testb	%al, %al
	je	.L76
	.loc 1 359 0
	movb	$0, 20(%ebx)
.L76:
	.loc 1 363 0
	pushl	%edi
	pushl	$1
	pushl	%esi
	pushl	4(%ebx)
	call	*(%ebx)
.LVL92:
	addl	$16, %esp
	cmpl	$-1, %eax
	jne	.L77
.LVL93:
.L86:
	.loc 1 354 0
	orl	$-1, %eax
	jmp	.L78
.LVL94:
.L77:
	.loc 1 365 0
	testl	%eax, %eax
	jne	.L79
.LVL95:
.L87:
	.loc 1 366 0
	xorl	%eax, %eax
	jmp	.L80
.LVL96:
.L79:
	.loc 1 368 0
	incb	20(%ebx)
	.loc 1 367 0
	movl	$0, 16(%ebx)
.LVL97:
.L74:
.LBB10:
.LBB11:
	.loc 1 322 0
	cmpl	$0, 16(%ebx)
	jne	.L81
	.loc 1 323 0
	movl	$1, 8(%ebx)
	.loc 1 324 0
	movl	$0, 12(%ebx)
.L81:
.LBB12:
	.loc 1 330 0
	leal	-29(%ebp), %edi
.L85:
	.loc 1 328 0
	movl	16(%ebx), %eax
	incl	%eax
	cmpl	$4, %eax
	movl	%eax, 16(%ebx)
	jg	.L86
	.loc 1 330 0
	pushl	%ecx
	pushl	$1
	pushl	%edi
	pushl	4(%ebx)
	call	*(%ebx)
.LVL98:
	addl	$16, %esp
	cmpl	$-1, %eax
	je	.L86
	.loc 1 332 0
	testl	%eax, %eax
	je	.L87
	.loc 1 336 0
	movb	-29(%ebp), %dl
	movl	8(%ebx), %eax
.LVL99:
	movl	%edx, %ecx
	andl	$127, %ecx
	imull	%eax, %ecx
	.loc 1 337 0
	sall	$7, %eax
	.loc 1 336 0
	addl	%ecx, 12(%ebx)
.LBE12:
	.loc 1 338 0
	testb	%dl, %dl
.LBB13:
	.loc 1 337 0
	movl	%eax, 8(%ebx)
.LBE13:
	.loc 1 338 0
	js	.L85
.L83:
.LVL100:
	.loc 1 339 0
	movl	16(%ebx), %eax
.LBE11:
.LBE10:
	.loc 1 372 0
	cmpl	$-1, %eax
	je	.L86
	.loc 1 374 0
	testl	%eax, %eax
	je	.L87
	.loc 1 376 0
	leal	1(%esi), %eax
	pushl	%edx
	pushl	%edx
	pushl	12(%ebx)
	pushl	%eax
	call	MQTTPacket_encode
.LVL101:
	incl	%eax
	.loc 1 377 0
	addl	$16, %esp
	.loc 1 376 0
	movl	%eax, 16(%ebx)
	.loc 1 377 0
	addl	12(%ebx), %eax
	cmpl	12(%ebp), %eax
	jg	.L86
	.loc 1 379 0
	incb	20(%ebx)
.L75:
	.loc 1 383 0
	pushl	%eax
	pushl	12(%ebx)
	movl	16(%ebx), %eax
	addl	%esi, %eax
	pushl	%eax
	pushl	4(%ebx)
	call	*(%ebx)
.LVL102:
	addl	$16, %esp
	cmpl	$-1, %eax
	je	.L86
	.loc 1 385 0
	testl	%eax, %eax
	je	.L87
	.loc 1 387 0
	movl	12(%ebx), %edx
	.loc 1 388 0
	addl	%eax, 16(%ebx)
	.loc 1 387 0
	subl	%eax, %edx
	.loc 1 389 0
	testl	%edx, %edx
	.loc 1 387 0
	movl	%edx, 12(%ebx)
	.loc 1 389 0
	jne	.L87
	.loc 1 392 0
	xorl	%eax, %eax
.LVL103:
	movb	(%esi), %al
.LVL104:
	.loc 1 393 0
	shrl	$4, %eax
.LVL105:
.L78:
	.loc 1 398 0
	movb	$0, 20(%ebx)
.LVL106:
.L80:
	.loc 1 400 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L88
	call	__stack_chk_fail
.LVL107:
.L88:
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
.LFE17:
	.size	MQTTPacket_readnb, .-MQTTPacket_readnb
	.section	.text.unlikely.MQTTPacket_readnb
.LCOLDE16:
	.section	.text.MQTTPacket_readnb
.LHOTE16:
	.section	.bss.bufptr,"aw",@nobits
	.align 4
	.type	bufptr, @object
	.size	bufptr, 4
bufptr:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.bufchar
.Letext_cold0:
	.file 2 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x892
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF64
	.byte	0xc
	.long	.LASF65
	.long	.LASF66
	.long	.Ldebug_ranges0+0x50
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF67
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x43
	.long	0x9b
	.uleb128 0x8
	.long	.LASF4
	.byte	0x2
	.byte	0x45
	.long	0x4f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"qos"
	.byte	0x2
	.byte	0x46
	.long	0x4f
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"dup"
	.byte	0x2
	.byte	0x47
	.long	0x4f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.long	.LASF5
	.byte	0x2
	.byte	0x48
	.long	0x4f
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x2
	.byte	0x37
	.long	0xba
	.uleb128 0xb
	.long	.LASF6
	.byte	0x2
	.byte	0x39
	.long	0xba
	.uleb128 0xb
	.long	.LASF7
	.byte	0x2
	.byte	0x49
	.long	0x56
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0xc
	.long	.LASF11
	.byte	0x2
	.byte	0x4b
	.long	0x9b
	.uleb128 0x7
	.byte	0x8
	.byte	0x2
	.byte	0x4d
	.long	0xed
	.uleb128 0xd
	.string	"len"
	.byte	0x2
	.byte	0x4f
	.long	0x48
	.byte	0
	.uleb128 0xe
	.long	.LASF9
	.byte	0x2
	.byte	0x50
	.long	0xed
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0xf3
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0xc
	.long	.LASF12
	.byte	0x2
	.byte	0x51
	.long	0xcc
	.uleb128 0x7
	.byte	0xc
	.byte	0x2
	.byte	0x53
	.long	0x126
	.uleb128 0xe
	.long	.LASF13
	.byte	0x2
	.byte	0x55
	.long	0xed
	.byte	0
	.uleb128 0xe
	.long	.LASF14
	.byte	0x2
	.byte	0x56
	.long	0xfa
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF15
	.byte	0x2
	.byte	0x57
	.long	0x105
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF17
	.uleb128 0x7
	.byte	0x18
	.byte	0x2
	.byte	0x76
	.long	0x190
	.uleb128 0xe
	.long	.LASF18
	.byte	0x2
	.byte	0x77
	.long	0x1b1
	.byte	0
	.uleb128 0xd
	.string	"sck"
	.byte	0x2
	.byte	0x78
	.long	0x1a9
	.byte	0x4
	.uleb128 0xe
	.long	.LASF19
	.byte	0x2
	.byte	0x79
	.long	0x48
	.byte	0x8
	.uleb128 0xe
	.long	.LASF20
	.byte	0x2
	.byte	0x7a
	.long	0x48
	.byte	0xc
	.uleb128 0xd
	.string	"len"
	.byte	0x2
	.byte	0x7b
	.long	0x48
	.byte	0x10
	.uleb128 0xe
	.long	.LASF21
	.byte	0x2
	.byte	0x7c
	.long	0xf3
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	0x48
	.long	0x1a9
	.uleb128 0x11
	.long	0x1a9
	.uleb128 0x11
	.long	0x1ab
	.uleb128 0x11
	.long	0x48
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.uleb128 0xf
	.byte	0x4
	.long	0xba
	.uleb128 0xf
	.byte	0x4
	.long	0x190
	.uleb128 0xc
	.long	.LASF22
	.byte	0x2
	.byte	0x7d
	.long	0x13f
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.long	.LASF24
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF26
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.long	.LASF27
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF28
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF29
	.uleb128 0xf
	.byte	0x4
	.long	0x1f9
	.uleb128 0x13
	.long	0xf3
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.byte	0x62
	.long	0x48
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0x62
	.long	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0x62
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x64
	.long	0x48
	.long	.LLST0
	.byte	0
	.uleb128 0x14
	.long	.LASF32
	.byte	0x1
	.byte	0x1c
	.long	0x48
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x297
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x1c
	.long	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x1c
	.long	0x48
	.long	.LLST1
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0x1e
	.long	0x48
	.long	.LLST2
	.uleb128 0x19
	.long	.Ldebug_ranges0+0
	.uleb128 0x17
	.string	"d"
	.byte	0x1
	.byte	0x22
	.long	0xf3
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF34
	.byte	0x1
	.byte	0x33
	.long	0x48
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x32c
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0x33
	.long	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x33
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x35
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x1
	.byte	0x36
	.long	0x48
	.long	.LLST4
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x37
	.long	0x48
	.long	.LLST5
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0x4a
	.long	.L17
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x18
	.long	0x322
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0x3d
	.long	0x48
	.long	.LLST6
	.uleb128 0x1e
	.long	.LVL12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.long	.LVL16
	.long	0x881
	.byte	0
	.uleb128 0x10
	.long	0x48
	.long	0x340
	.uleb128 0x11
	.long	0x1ab
	.uleb128 0x11
	.long	0x48
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x32c
	.uleb128 0xf
	.byte	0x4
	.long	0x48
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x4f
	.long	0x48
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x375
	.uleb128 0x18
	.long	.LASF20
	.byte	0x1
	.byte	0x4f
	.long	0x48
	.long	.LLST7
	.byte	0
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0x6c
	.long	0x48
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c8
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.byte	0x6c
	.long	0x1ab
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x6c
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LVL27
	.long	0x297
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	bufchar
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF39
	.byte	0x1
	.byte	0x78
	.long	0x48
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x78
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x7a
	.long	0x1ab
	.long	.LLST9
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x7b
	.long	0x48
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x1ab
	.uleb128 0x14
	.long	.LASF41
	.byte	0x1
	.byte	0x86
	.long	0xf3
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x445
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x86
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x88
	.long	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x23
	.long	.LASF42
	.byte	0x1
	.byte	0x93
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x475
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x93
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0x93
	.long	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.byte	0x9f
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a7
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x9f
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF44
	.byte	0x1
	.byte	0x9f
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x23
	.long	.LASF45
	.byte	0x1
	.byte	0xad
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f2
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0xad
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.byte	0xad
	.long	0x1f3
	.long	.LLST10
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0xaf
	.long	0x48
	.long	.LLST11
	.uleb128 0x1f
	.long	.LVL40
	.long	0x475
	.byte	0
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0xb6
	.long	0x48
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x529
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.byte	0xb6
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0xb8
	.long	0x48
	.long	.LLST12
	.byte	0
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.byte	0xbd
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x578
	.uleb128 0x18
	.long	.LASF40
	.byte	0x1
	.byte	0xbd
	.long	0x40c
	.long	.LLST13
	.uleb128 0x18
	.long	.LASF49
	.byte	0x1
	.byte	0xbd
	.long	0x126
	.long	.LLST14
	.uleb128 0x1f
	.long	.LVL48
	.long	0x475
	.uleb128 0x24
	.long	.LVL52
	.long	0x4a7
	.uleb128 0x24
	.long	.LVL55
	.long	0x475
	.byte	0
	.uleb128 0x14
	.long	.LASF50
	.byte	0x1
	.byte	0xd2
	.long	0x48
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d3
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.byte	0xd2
	.long	0x5d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0xd2
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0xd2
	.long	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0xd4
	.long	0x48
	.long	.LLST15
	.uleb128 0x1f
	.long	.LVL57
	.long	0x3c8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x126
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0xeb
	.long	0x48
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x610
	.uleb128 0x18
	.long	.LASF49
	.byte	0x1
	.byte	0xeb
	.long	0x126
	.long	.LLST16
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0xed
	.long	0x48
	.long	.LLST17
	.byte	0
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0xfd
	.long	0x48
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x67e
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0xfd
	.long	0x5d3
	.long	.LLST18
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.byte	0xfd
	.long	0xed
	.long	.LLST19
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.byte	0xff
	.long	0x48
	.long	.LLST20
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.value	0x100
	.long	0x48
	.long	.LLST21
	.uleb128 0x25
	.long	.LASF57
	.byte	0x1
	.value	0x101
	.long	0xed
	.long	.LLST22
	.uleb128 0x1f
	.long	.LVL74
	.long	0x88a
	.byte	0
	.uleb128 0x26
	.long	.LASF58
	.byte	0x1
	.value	0x11b
	.long	0x48
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x73b
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x11b
	.long	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF59
	.byte	0x1
	.value	0x11b
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF18
	.byte	0x1
	.value	0x11b
	.long	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"rc"
	.byte	0x1
	.value	0x11d
	.long	0x48
	.long	.LLST23
	.uleb128 0x25
	.long	.LASF60
	.byte	0x1
	.value	0x11e
	.long	0xc1
	.long	.LLST24
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x11f
	.long	0x48
	.long	.LLST25
	.uleb128 0x2a
	.long	.LASF20
	.byte	0x1
	.value	0x120
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF61
	.byte	0x1
	.value	0x133
	.long	.L68
	.uleb128 0x1e
	.long	.LVL78
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.long	.LVL81
	.long	0x297
	.uleb128 0x1f
	.long	.LVL82
	.long	0x23f
	.uleb128 0x1e
	.long	.LVL85
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.long	.LVL89
	.long	0x881
	.byte	0
	.uleb128 0x2c
	.long	.LASF68
	.byte	0x1
	.value	0x13d
	.long	0x48
	.byte	0x1
	.long	0x784
	.uleb128 0x2d
	.string	"trp"
	.byte	0x1
	.value	0x13d
	.long	0x784
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x13f
	.long	0xba
	.uleb128 0x2e
	.string	"rc"
	.byte	0x1
	.value	0x140
	.long	0x48
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x154
	.uleb128 0x30
	.uleb128 0x2e
	.string	"frc"
	.byte	0x1
	.value	0x147
	.long	0x48
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x1b7
	.uleb128 0x31
	.long	.LASF62
	.byte	0x1
	.value	0x160
	.long	0x48
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x870
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x160
	.long	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF59
	.byte	0x1
	.value	0x160
	.long	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"trp"
	.byte	0x1
	.value	0x160
	.long	0x784
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.string	"rc"
	.byte	0x1
	.value	0x162
	.long	0x48
	.long	.LLST26
	.uleb128 0x29
	.string	"frc"
	.byte	0x1
	.value	0x162
	.long	0x48
	.long	.LLST27
	.uleb128 0x25
	.long	.LASF60
	.byte	0x1
	.value	0x163
	.long	0xc1
	.long	.LLST28
	.uleb128 0x2b
	.long	.LASF61
	.byte	0x1
	.value	0x18d
	.long	.L78
	.uleb128 0x32
	.long	0x73b
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.value	0x174
	.long	0x85d
	.uleb128 0x33
	.long	0x74c
	.long	.LLST29
	.uleb128 0x34
	.long	.LBB11
	.long	.LBE11-.LBB11
	.uleb128 0x35
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x36
	.long	0x762
	.long	.LLST30
	.uleb128 0x37
	.long	0x76d
	.long	.L83
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x38
	.uleb128 0x36
	.long	0x776
	.long	.LLST31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL101
	.long	0x23f
	.uleb128 0x1f
	.long	.LVL107
	.long	0x881
	.byte	0
	.uleb128 0x38
	.long	.LASF63
	.byte	0x1
	.byte	0x60
	.long	0x1ab
	.uleb128 0x5
	.byte	0x3
	.long	bufptr
	.uleb128 0x39
	.long	.LASF69
	.long	.LASF69
	.uleb128 0x3a
	.long	.LASF70
	.long	.LASF70
	.byte	0x3
	.byte	0x27
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.long	.LFE3
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL4
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LFE0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL17
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	.LVL15
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	.LVL16-1
	.long	.LVL16
	.value	0x1
	.byte	0x53
	.long	.LVL16
	.long	.LFE1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL12
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x52
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x52
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x52
	.long	.LVL24
	.long	.LFE2
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL26
	.long	.LVL27-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x52
	.long	.LVL30
	.long	.LVL31
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	.LVL31
	.long	.LFE5
	.value	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL37
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST11:
	.long	.LVL39
	.long	.LVL41
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST12:
	.long	.LVL43
	.long	.LVL44
	.value	0x16
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.long	.LVL44
	.long	.LFE10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL45
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL52
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL46
	.long	.LVL47
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.long	.LVL47
	.long	.LVL48-1
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	.LVL48-1
	.long	.LVL49
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	.LVL49
	.long	.LVL50
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	.LVL50
	.long	.LVL54
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	.LVL54
	.long	.LFE11
	.value	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST15:
	.long	.LVL56
	.long	.LVL58
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL59
	.long	.LFE12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL60
	.long	.LVL61
	.value	0x5
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.long	.LVL63
	.long	.LVL64
	.value	0x5
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.long	0
	.long	0
.LLST17:
	.long	.LVL60
	.long	.LVL62
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
	.value	0x1
	.byte	0x50
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL64
	.long	.LFE13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL65
	.long	.LVL69
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL69
	.long	.LVL71
	.value	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LFE14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL65
	.long	.LVL72
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST20:
	.long	.LVL65
	.long	.LVL68
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x52
	.long	.LVL69
	.long	.LVL71
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL74-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST21:
	.long	.LVL65
	.long	.LVL73
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST22:
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x53
	.long	.LVL70
	.long	.LVL75
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST23:
	.long	.LVL77
	.long	.LVL88
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL88
	.long	.LVL89-1
	.value	0x1
	.byte	0x50
	.long	.LVL89
	.long	.LFE15
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL87
	.long	.LVL88
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL77
	.long	.LVL79
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL83
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL91
	.long	.LVL105
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL105
	.long	.LVL106
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL92
	.long	.LVL93
	.value	0x1
	.byte	0x50
	.long	.LVL94
	.long	.LVL95
	.value	0x1
	.byte	0x50
	.long	.LVL96
	.long	.LVL97
	.value	0x1
	.byte	0x50
	.long	.LVL102
	.long	.LVL103
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST28:
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL97
	.long	.LVL100
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST30:
	.long	.LVL97
	.long	.LVL100
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL98
	.long	.LVL99
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x9c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
	.long	.LBB4
	.long	.LBE4
	.long	.LBB5
	.long	.LBE5
	.long	.LBB6
	.long	.LBE6
	.long	0
	.long	0
	.long	.LBB12
	.long	.LBE12
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"MQTTPACKET_BUFFER_TOO_SHORT"
.LASF30:
	.string	"count"
.LASF37:
	.string	"MQTTPacket_len"
.LASF57:
	.string	"aptr"
.LASF46:
	.string	"string"
.LASF39:
	.string	"readInt"
.LASF5:
	.string	"type"
.LASF50:
	.string	"readMQTTLenString"
.LASF4:
	.string	"retain"
.LASF14:
	.string	"lenstring"
.LASF29:
	.string	"long long unsigned int"
.LASF1:
	.string	"MQTTPACKET_READ_ERROR"
.LASF23:
	.string	"long long int"
.LASF25:
	.string	"signed char"
.LASF41:
	.string	"readChar"
.LASF21:
	.string	"state"
.LASF7:
	.string	"bits"
.LASF27:
	.string	"long int"
.LASF34:
	.string	"MQTTPacket_decode"
.LASF43:
	.string	"writeInt"
.LASF62:
	.string	"MQTTPacket_readnb"
.LASF66:
	.string	"/home/stone/Documents/pca"
.LASF6:
	.string	"byte"
.LASF32:
	.string	"MQTTPacket_encode"
.LASF36:
	.string	"value"
.LASF3:
	.string	"unsigned int"
.LASF67:
	.string	"errors"
.LASF28:
	.string	"long unsigned int"
.LASF51:
	.string	"enddata"
.LASF56:
	.string	"blen"
.LASF9:
	.string	"data"
.LASF22:
	.string	"MQTTTransport"
.LASF17:
	.string	"short unsigned int"
.LASF2:
	.string	"MQTTPACKET_READ_COMPLETE"
.LASF15:
	.string	"MQTTString"
.LASF47:
	.string	"getLenStringLen"
.LASF16:
	.string	"sizetype"
.LASF48:
	.string	"writeMQTTString"
.LASF24:
	.string	"long double"
.LASF13:
	.string	"cstring"
.LASF19:
	.string	"multiplier"
.LASF38:
	.string	"MQTTPacket_decodeBuf"
.LASF40:
	.string	"pptr"
.LASF20:
	.string	"rem_len"
.LASF35:
	.string	"getcharfn"
.LASF8:
	.string	"unsigned char"
.LASF70:
	.string	"strncmp"
.LASF52:
	.string	"MQTTstrlen"
.LASF26:
	.string	"short int"
.LASF59:
	.string	"buflen"
.LASF61:
	.string	"exit"
.LASF69:
	.string	"__stack_chk_fail"
.LASF64:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF18:
	.string	"getfn"
.LASF11:
	.string	"MQTTHeader"
.LASF65:
	.string	"src/MQTTPacket.c"
.LASF12:
	.string	"MQTTLenString"
.LASF33:
	.string	"length"
.LASF10:
	.string	"char"
.LASF55:
	.string	"alen"
.LASF53:
	.string	"MQTTPacket_equals"
.LASF44:
	.string	"anInt"
.LASF42:
	.string	"writeChar"
.LASF31:
	.string	"bufchar"
.LASF54:
	.string	"bptr"
.LASF45:
	.string	"writeCString"
.LASF68:
	.string	"MQTTPacket_decodenb"
.LASF58:
	.string	"MQTTPacket_read"
.LASF63:
	.string	"bufptr"
.LASF49:
	.string	"mqttstring"
.LASF60:
	.string	"header"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"CheckSumUtils.c"
	.text
.Ltext0:
	.section	.text.unlikely.UpdateCRC8,"ax",@progbits
.LCOLDB0:
	.section	.text.UpdateCRC8,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.UpdateCRC8
.Ltext_cold0:
	.section	.text.UpdateCRC8
	.globl	UpdateCRC8
	.type	UpdateCRC8, @function
UpdateCRC8:
.LFB1:
	.file 1 "utility/digest_algorithm/CheckSumUtils.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 13 0
	movb	$8, %dl
	.loc 1 9 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL1:
	.loc 1 13 0
	movl	12(%ebp), %eax
	xorl	8(%ebp), %eax
.LVL2:
.L4:
	.loc 1 16 0
	testb	$1, %al
	je	.L2
	.loc 1 17 0
	shrb	%al
.LVL3:
	xorl	$-116, %eax
.LVL4:
	jmp	.L3
.L2:
	.loc 1 19 0
	shrb	%al
.LVL5:
.L3:
	.loc 1 15 0 discriminator 2
	decb	%dl
.LVL6:
	jne	.L4
	.loc 1 23 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	UpdateCRC8, .-UpdateCRC8
	.section	.text.unlikely.UpdateCRC8
.LCOLDE0:
	.section	.text.UpdateCRC8
.LHOTE0:
	.section	.text.unlikely.CRC8_Init,"ax",@progbits
.LCOLDB1:
	.section	.text.CRC8_Init,"ax",@progbits
.LHOTB1:
	.globl	CRC8_Init
	.type	CRC8_Init, @function
CRC8_Init:
.LFB2:
	.loc 1 27 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 28 0
	movl	8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 29 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	CRC8_Init, .-CRC8_Init
	.section	.text.unlikely.CRC8_Init
.LCOLDE1:
	.section	.text.CRC8_Init
.LHOTE1:
	.section	.text.unlikely.CRC8_Update,"ax",@progbits
.LCOLDB2:
	.section	.text.CRC8_Update,"ax",@progbits
.LHOTB2:
	.globl	CRC8_Update
	.type	CRC8_Update, @function
CRC8_Update:
.LFB3:
	.loc 1 33 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 33 0
	movl	12(%ebp), %ecx
.LVL9:
	.loc 1 35 0
	movl	16(%ebp), %esi
	.loc 1 33 0
	movl	8(%ebp), %ebx
	.loc 1 35 0
	addl	%ecx, %esi
.LVL10:
.L11:
	.loc 1 36 0
	cmpl	%esi, %ecx
	jnb	.L14
	.loc 1 37 0
	incl	%ecx
.LVL11:
	movzbl	-1(%ecx), %eax
	pushl	%eax
	movzbl	(%ebx), %eax
	pushl	%eax
	call	UpdateCRC8
.LVL12:
	popl	%edx
	popl	%edx
	movb	%al, (%ebx)
	jmp	.L11
.LVL13:
.L14:
	.loc 1 39 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL14:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	CRC8_Update, .-CRC8_Update
	.section	.text.unlikely.CRC8_Update
.LCOLDE2:
	.section	.text.CRC8_Update
.LHOTE2:
	.section	.text.unlikely.CRC8_Final,"ax",@progbits
.LCOLDB3:
	.section	.text.CRC8_Final,"ax",@progbits
.LHOTB3:
	.globl	CRC8_Final
	.type	CRC8_Final, @function
CRC8_Final:
.LFB4:
	.loc 1 43 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 45 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 46 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	CRC8_Final, .-CRC8_Final
	.section	.text.unlikely.CRC8_Final
.LCOLDE3:
	.section	.text.CRC8_Final
.LHOTE3:
	.section	.text.unlikely.UpdateCRC16,"ax",@progbits
.LCOLDB4:
	.section	.text.UpdateCRC16,"ax",@progbits
.LHOTB4:
	.globl	UpdateCRC16
	.type	UpdateCRC16, @function
UpdateCRC16:
.LFB5:
	.loc 1 52 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 54 0
	movzbl	12(%ebp), %edx
	.loc 1 53 0
	movzwl	8(%ebp), %eax
.LVL17:
	.loc 1 54 0
	orb	$1, %dh
.LVL18:
.L20:
	.loc 1 57 0
	addl	%eax, %eax
.LVL19:
	.loc 1 58 0
	addl	%edx, %edx
.LVL20:
	.loc 1 60 0
	leal	1(%eax), %ecx
	testb	$1, %dh
	cmovne	%ecx, %eax
.LVL21:
	.loc 1 63 0
	movl	%eax, %ecx
	xorl	$4129, %ecx
	testl	$65536, %eax
	cmovne	%ecx, %eax
.LVL22:
	.loc 1 65 0
	testl	$65536, %edx
	je	.L20
	.loc 1 67 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	UpdateCRC16, .-UpdateCRC16
	.section	.text.unlikely.UpdateCRC16
.LCOLDE4:
	.section	.text.UpdateCRC16
.LHOTE4:
	.section	.text.unlikely.CRC16_Init,"ax",@progbits
.LCOLDB5:
	.section	.text.CRC16_Init,"ax",@progbits
.LHOTB5:
	.globl	CRC16_Init
	.type	CRC16_Init, @function
CRC16_Init:
.LFB6:
	.loc 1 70 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 71 0
	movl	8(%ebp), %eax
	movw	$0, (%eax)
	.loc 1 72 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	CRC16_Init, .-CRC16_Init
	.section	.text.unlikely.CRC16_Init
.LCOLDE5:
	.section	.text.CRC16_Init
.LHOTE5:
	.section	.text.unlikely.CRC16_Update,"ax",@progbits
.LCOLDB6:
	.section	.text.CRC16_Update,"ax",@progbits
.LHOTB6:
	.globl	CRC16_Update
	.type	CRC16_Update, @function
CRC16_Update:
.LFB7:
	.loc 1 76 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 78 0
	movl	16(%ebp), %edi
	.loc 1 76 0
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 76 0
	movl	12(%ebp), %ebx
.LVL25:
	movl	8(%ebp), %esi
	.loc 1 78 0
	addl	%ebx, %edi
.LVL26:
.L31:
	.loc 1 79 0
	cmpl	%edi, %ebx
	jnb	.L34
	.loc 1 80 0
	incl	%ebx
.LVL27:
	movzbl	-1(%ebx), %eax
	pushl	%eax
	movzwl	(%esi), %eax
	pushl	%eax
	call	UpdateCRC16
.LVL28:
	popl	%edx
	popl	%ecx
	movw	%ax, (%esi)
	jmp	.L31
.L34:
	.loc 1 82 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL29:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL30:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	CRC16_Update, .-CRC16_Update
	.section	.text.unlikely.CRC16_Update
.LCOLDE6:
	.section	.text.CRC16_Update
.LHOTE6:
	.section	.text.unlikely.CRC16_Final,"ax",@progbits
.LCOLDB7:
	.section	.text.CRC16_Final,"ax",@progbits
.LHOTB7:
	.globl	CRC16_Final
	.type	CRC16_Final, @function
CRC16_Final:
.LFB8:
	.loc 1 86 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 87 0
	pushl	$0
	.loc 1 86 0
	movl	8(%ebp), %ebx
	.loc 1 87 0
	movzwl	(%ebx), %eax
	pushl	%eax
	call	UpdateCRC16
.LVL32:
	popl	%edx
	popl	%ecx
	.loc 1 88 0
	movzwl	%ax, %eax
	pushl	$0
	pushl	%eax
	call	UpdateCRC16
.LVL33:
	popl	%edx
	.loc 1 89 0
	movl	12(%ebp), %edx
	.loc 1 88 0
	popl	%ecx
	movw	%ax, (%ebx)
	.loc 1 90 0
	movl	-4(%ebp), %ebx
	.loc 1 89 0
	movw	%ax, (%edx)
	.loc 1 90 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	CRC16_Final, .-CRC16_Final
	.section	.text.unlikely.CRC16_Final
.LCOLDE7:
	.section	.text.CRC16_Final
.LHOTE7:
	.text
.Letext0:
	.section	.text.unlikely.UpdateCRC8
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "utility/digest_algorithm/CheckSumUtils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x361
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0xc
	.long	.LASF37
	.long	.LASF38
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x1d
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
	.byte	0x2
	.byte	0x2b
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x41
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
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x24
	.long	0x45
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x30
	.long	0x5e
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0xd8
	.long	0x85
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x5
	.byte	0x4
	.long	0xd3
	.uleb128 0x6
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x11
	.long	0xe9
	.uleb128 0x8
	.string	"crc"
	.byte	0x5
	.byte	0x12
	.long	0x8c
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x13
	.long	0xd4
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.byte	0x48
	.long	0x109
	.uleb128 0x8
	.string	"crc"
	.byte	0x5
	.byte	0x49
	.long	0x97
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x4a
	.long	0xf4
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x8
	.long	0x8c
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x166
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x8
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.string	"crc"
	.byte	0x1
	.byte	0xa
	.long	0x8c
	.long	.LLST0
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0xb
	.long	0x8c
	.long	.LLST1
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0x1a
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x1a
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xe9
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x20
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x20
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x20
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x20
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0x22
	.long	0x1f7
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.byte	0x23
	.long	0x1f7
	.long	.LLST3
	.uleb128 0xe
	.long	.LVL12
	.long	0x114
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1fd
	.uleb128 0xf
	.long	0x8c
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x2a
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x234
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x2a
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x2a
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x8c
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x33
	.long	0x97
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x289
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x33
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x33
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"crc"
	.byte	0x1
	.byte	0x35
	.long	0xa2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x36
	.long	0xa2
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x45
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x45
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x109
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.byte	0x4b
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x4b
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x4b
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x4b
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.string	"src"
	.byte	0x1
	.byte	0x4d
	.long	0x1f7
	.long	.LLST4
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.byte	0x4e
	.long	0x1f7
	.long	.LLST5
	.uleb128 0xe
	.long	.LVL28
	.long	0x23a
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x55
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x35e
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x55
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x55
	.long	0x35e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LVL32
	.long	0x23a
	.uleb128 0xe
	.long	.LVL33
	.long	0x23a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x97
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL5
	.value	0x5
	.byte	0x38
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x5
	.byte	0x39
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL6
	.long	.LFE1
	.value	0x5
	.byte	0x38
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL10
	.long	.LVL12-1
	.value	0x1
	.byte	0x51
	.long	.LVL13
	.long	.LFE3
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL14
	.value	0x1
	.byte	0x56
	.long	.LVL14
	.long	.LFE3
	.value	0x8
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL26
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL26
	.long	.LVL30
	.value	0x1
	.byte	0x57
	.long	.LVL30
	.long	.LFE7
	.value	0x8
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF15:
	.string	"size_t"
.LASF25:
	.string	"CRC8_Update"
.LASF36:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF24:
	.string	"CRC8_Init"
.LASF22:
	.string	"byte"
.LASF35:
	.string	"CRC16_Final"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"UpdateCRC16"
.LASF23:
	.string	"inContext"
.LASF8:
	.string	"long unsigned int"
.LASF30:
	.string	"outResult"
.LASF5:
	.string	"short unsigned int"
.LASF34:
	.string	"CRC16_Update"
.LASF28:
	.string	"srcEnd"
.LASF31:
	.string	"UpdateCRC8"
.LASF4:
	.string	"__uint16_t"
.LASF27:
	.string	"inLen"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"CRC16_Context"
.LASF26:
	.string	"inSrc"
.LASF11:
	.string	"unsigned int"
.LASF37:
	.string	"src/CheckSumUtils.c"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF17:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF18:
	.string	"char"
.LASF19:
	.string	"CRC8_Context"
.LASF38:
	.string	"/home/stone/Documents/pca"
.LASF29:
	.string	"CRC8_Final"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"crcIn"
.LASF33:
	.string	"CRC16_Init"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

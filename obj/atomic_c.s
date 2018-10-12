	.file	"atomic_c.c"
	.text
.Ltext0:
	.section	.text.unlikely.atomic_cas,"ax",@progbits
.LCOLDB0:
	.section	.text.atomic_cas,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.atomic_cas
.Ltext_cold0:
	.section	.text.atomic_cas
	.globl	atomic_cas
	.type	atomic_cas, @function
atomic_cas:
.LFB5:
	.file 1 "src/atomic_c.c"
	.loc 1 49 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 49 0
	movl	8(%ebp), %esi
	xorl	%ebx, %ebx
	.loc 1 52 0
	call	irq_lock
.LVL1:
	.loc 1 53 0
	movl	12(%ebp), %ecx
	cmpl	%ecx, (%esi)
	jne	.L2
	.loc 1 54 0
	movl	16(%ebp), %edx
	.loc 1 55 0
	movl	$1, %ebx
	.loc 1 54 0
	movl	%edx, (%esi)
.LVL2:
.L2:
	.loc 1 57 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL3:
	.loc 1 59 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL4:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	atomic_cas, .-atomic_cas
	.section	.text.unlikely.atomic_cas
.LCOLDE0:
	.section	.text.atomic_cas
.LHOTE0:
	.section	.text.unlikely.atomic_add,"ax",@progbits
.LCOLDB1:
	.section	.text.atomic_add,"ax",@progbits
.LHOTB1:
	.globl	atomic_add
	.type	atomic_add, @function
atomic_add:
.LFB6:
	.loc 1 61 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 61 0
	movl	8(%ebp), %esi
	.loc 1 64 0
	call	irq_lock
.LVL6:
	.loc 1 66 0
	movl	12(%ebp), %edx
	.loc 1 67 0
	subl	$12, %esp
	.loc 1 65 0
	movl	(%esi), %ebx
.LVL7:
	.loc 1 66 0
	addl	%ebx, %edx
	movl	%edx, (%esi)
	.loc 1 67 0
	pushl	%eax
	call	irq_unlock
.LVL8:
	.loc 1 69 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL9:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	atomic_add, .-atomic_add
	.section	.text.unlikely.atomic_add
.LCOLDE1:
	.section	.text.atomic_add
.LHOTE1:
	.section	.text.unlikely.atomic_sub,"ax",@progbits
.LCOLDB2:
	.section	.text.atomic_sub,"ax",@progbits
.LHOTB2:
	.globl	atomic_sub
	.type	atomic_sub, @function
atomic_sub:
.LFB7:
	.loc 1 71 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 71 0
	movl	8(%ebp), %esi
	.loc 1 74 0
	call	irq_lock
.LVL11:
	.loc 1 77 0
	subl	$12, %esp
	.loc 1 75 0
	movl	(%esi), %ebx
.LVL12:
	.loc 1 76 0
	movl	%ebx, %edx
	subl	12(%ebp), %edx
	movl	%edx, (%esi)
	.loc 1 77 0
	pushl	%eax
	call	irq_unlock
.LVL13:
	.loc 1 79 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL14:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	atomic_sub, .-atomic_sub
	.section	.text.unlikely.atomic_sub
.LCOLDE2:
	.section	.text.atomic_sub
.LHOTE2:
	.section	.text.unlikely.atomic_inc,"ax",@progbits
.LCOLDB3:
	.section	.text.atomic_inc,"ax",@progbits
.LHOTB3:
	.globl	atomic_inc
	.type	atomic_inc, @function
atomic_inc:
.LFB8:
	.loc 1 81 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 81 0
	movl	8(%ebp), %esi
	.loc 1 84 0
	call	irq_lock
.LVL16:
	.loc 1 87 0
	subl	$12, %esp
	.loc 1 85 0
	movl	(%esi), %ebx
.LVL17:
	.loc 1 86 0
	leal	1(%ebx), %edx
	movl	%edx, (%esi)
	.loc 1 87 0
	pushl	%eax
	call	irq_unlock
.LVL18:
	.loc 1 89 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL19:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	atomic_inc, .-atomic_inc
	.section	.text.unlikely.atomic_inc
.LCOLDE3:
	.section	.text.atomic_inc
.LHOTE3:
	.section	.text.unlikely.atomic_dec,"ax",@progbits
.LCOLDB4:
	.section	.text.atomic_dec,"ax",@progbits
.LHOTB4:
	.globl	atomic_dec
	.type	atomic_dec, @function
atomic_dec:
.LFB9:
	.loc 1 91 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 91 0
	movl	8(%ebp), %esi
	.loc 1 94 0
	call	irq_lock
.LVL21:
	.loc 1 97 0
	subl	$12, %esp
	.loc 1 95 0
	movl	(%esi), %ebx
.LVL22:
	.loc 1 96 0
	leal	-1(%ebx), %edx
	movl	%edx, (%esi)
	.loc 1 97 0
	pushl	%eax
	call	irq_unlock
.LVL23:
	.loc 1 99 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL24:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	atomic_dec, .-atomic_dec
	.section	.text.unlikely.atomic_dec
.LCOLDE4:
	.section	.text.atomic_dec
.LHOTE4:
	.section	.text.unlikely.atomic_get,"ax",@progbits
.LCOLDB5:
	.section	.text.atomic_get,"ax",@progbits
.LHOTB5:
	.globl	atomic_get
	.type	atomic_get, @function
atomic_get:
.LFB10:
	.loc 1 101 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 102 0
	movl	8(%ebp), %eax
	.loc 1 103 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 102 0
	movl	(%eax), %eax
	.loc 1 103 0
	ret
	.cfi_endproc
.LFE10:
	.size	atomic_get, .-atomic_get
	.section	.text.unlikely.atomic_get
.LCOLDE5:
	.section	.text.atomic_get
.LHOTE5:
	.section	.text.unlikely.atomic_set,"ax",@progbits
.LCOLDB6:
	.section	.text.atomic_set,"ax",@progbits
.LHOTB6:
	.globl	atomic_set
	.type	atomic_set, @function
atomic_set:
.LFB11:
	.loc 1 105 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 105 0
	movl	8(%ebp), %ebx
	.loc 1 108 0
	call	irq_lock
.LVL27:
	.loc 1 110 0
	movl	12(%ebp), %edx
	.loc 1 111 0
	subl	$12, %esp
	.loc 1 109 0
	movl	(%ebx), %esi
.LVL28:
	.loc 1 110 0
	movl	%edx, (%ebx)
	.loc 1 111 0
	pushl	%eax
	call	irq_unlock
.LVL29:
	.loc 1 113 0
	leal	-8(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL30:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	atomic_set, .-atomic_set
	.section	.text.unlikely.atomic_set
.LCOLDE6:
	.section	.text.atomic_set
.LHOTE6:
	.section	.text.unlikely.atomic_clear,"ax",@progbits
.LCOLDB7:
	.section	.text.atomic_clear,"ax",@progbits
.LHOTB7:
	.globl	atomic_clear
	.type	atomic_clear, @function
atomic_clear:
.LFB12:
	.loc 1 115 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 115 0
	movl	8(%ebp), %ebx
	.loc 1 118 0
	call	irq_lock
.LVL32:
	.loc 1 121 0
	subl	$12, %esp
	.loc 1 119 0
	movl	(%ebx), %esi
.LVL33:
	.loc 1 120 0
	movl	$0, (%ebx)
	.loc 1 121 0
	pushl	%eax
	call	irq_unlock
.LVL34:
	.loc 1 123 0
	leal	-8(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL35:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	atomic_clear, .-atomic_clear
	.section	.text.unlikely.atomic_clear
.LCOLDE7:
	.section	.text.atomic_clear
.LHOTE7:
	.section	.text.unlikely.atomic_or,"ax",@progbits
.LCOLDB8:
	.section	.text.atomic_or,"ax",@progbits
.LHOTB8:
	.globl	atomic_or
	.type	atomic_or, @function
atomic_or:
.LFB13:
	.loc 1 125 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 125 0
	movl	8(%ebp), %esi
	.loc 1 128 0
	call	irq_lock
.LVL37:
	.loc 1 130 0
	movl	12(%ebp), %edx
	.loc 1 131 0
	subl	$12, %esp
	.loc 1 129 0
	movl	(%esi), %ebx
.LVL38:
	.loc 1 130 0
	orl	%ebx, %edx
	movl	%edx, (%esi)
	.loc 1 131 0
	pushl	%eax
	call	irq_unlock
.LVL39:
	.loc 1 133 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL40:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	atomic_or, .-atomic_or
	.section	.text.unlikely.atomic_or
.LCOLDE8:
	.section	.text.atomic_or
.LHOTE8:
	.section	.text.unlikely.atomic_xor,"ax",@progbits
.LCOLDB9:
	.section	.text.atomic_xor,"ax",@progbits
.LHOTB9:
	.globl	atomic_xor
	.type	atomic_xor, @function
atomic_xor:
.LFB14:
	.loc 1 135 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 135 0
	movl	8(%ebp), %esi
	.loc 1 138 0
	call	irq_lock
.LVL42:
	.loc 1 140 0
	movl	12(%ebp), %edx
	.loc 1 141 0
	subl	$12, %esp
	.loc 1 139 0
	movl	(%esi), %ebx
.LVL43:
	.loc 1 140 0
	xorl	%ebx, %edx
	movl	%edx, (%esi)
	.loc 1 141 0
	pushl	%eax
	call	irq_unlock
.LVL44:
	.loc 1 143 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL45:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	atomic_xor, .-atomic_xor
	.section	.text.unlikely.atomic_xor
.LCOLDE9:
	.section	.text.atomic_xor
.LHOTE9:
	.section	.text.unlikely.atomic_and,"ax",@progbits
.LCOLDB10:
	.section	.text.atomic_and,"ax",@progbits
.LHOTB10:
	.globl	atomic_and
	.type	atomic_and, @function
atomic_and:
.LFB15:
	.loc 1 145 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 145 0
	movl	8(%ebp), %esi
	.loc 1 148 0
	call	irq_lock
.LVL47:
	.loc 1 150 0
	movl	12(%ebp), %edx
	.loc 1 151 0
	subl	$12, %esp
	.loc 1 149 0
	movl	(%esi), %ebx
.LVL48:
	.loc 1 150 0
	andl	%ebx, %edx
	movl	%edx, (%esi)
	.loc 1 151 0
	pushl	%eax
	call	irq_unlock
.LVL49:
	.loc 1 153 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL50:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	atomic_and, .-atomic_and
	.section	.text.unlikely.atomic_and
.LCOLDE10:
	.section	.text.atomic_and
.LHOTE10:
	.section	.text.unlikely.atomic_nand,"ax",@progbits
.LCOLDB11:
	.section	.text.atomic_nand,"ax",@progbits
.LHOTB11:
	.globl	atomic_nand
	.type	atomic_nand, @function
atomic_nand:
.LFB16:
	.loc 1 155 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 155 0
	movl	8(%ebp), %ebx
	.loc 1 158 0
	call	irq_lock
.LVL52:
	.loc 1 160 0
	movl	12(%ebp), %edx
	.loc 1 161 0
	subl	$12, %esp
	.loc 1 159 0
	movl	(%ebx), %esi
.LVL53:
	.loc 1 160 0
	andl	%esi, %edx
	notl	%edx
	movl	%edx, (%ebx)
	.loc 1 161 0
	pushl	%eax
	call	irq_unlock
.LVL54:
	.loc 1 163 0
	leal	-8(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL55:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	atomic_nand, .-atomic_nand
	.section	.text.unlikely.atomic_nand
.LCOLDE11:
	.section	.text.atomic_nand
.LHOTE11:
	.text
.Letext0:
	.section	.text.unlikely.atomic_cas
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4db
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF21
	.byte	0xc
	.long	.LASF22
	.long	.LASF23
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x1
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF1
	.byte	0x1
	.byte	0x2
	.long	0x25
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x2f
	.long	0x30
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xb6
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x2f
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x1
	.byte	0x2f
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x5
	.long	.LASF4
	.byte	0x1
	.byte	0x30
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x32
	.long	0xbc
	.long	.LLST0
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x33
	.long	0x30
	.long	.LLST1
	.uleb128 0x7
	.long	.LVL1
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL3
	.long	0x4d3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0x3c
	.long	0x37
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x129
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x3c
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x3c
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x3e
	.long	0xbc
	.long	.LLST2
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x3f
	.long	0x37
	.long	.LLST3
	.uleb128 0x7
	.long	.LVL6
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL8
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0x46
	.long	0x37
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x46
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x46
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x48
	.long	0xbc
	.long	.LLST4
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x49
	.long	0x37
	.long	.LLST5
	.uleb128 0x7
	.long	.LVL11
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL13
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x50
	.long	0x37
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e7
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x50
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x52
	.long	0xbc
	.long	.LLST6
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x53
	.long	0x37
	.long	.LLST7
	.uleb128 0x7
	.long	.LVL16
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL18
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0x5a
	.long	0x37
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x5a
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x5c
	.long	0xbc
	.long	.LLST8
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x5d
	.long	0x37
	.long	.LLST9
	.uleb128 0x7
	.long	.LVL21
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL23
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x64
	.long	0x37
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x267
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x64
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x26d
	.uleb128 0xa
	.long	0x25
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x68
	.long	0x37
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d8
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x68
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x68
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x6a
	.long	0xbc
	.long	.LLST10
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x6b
	.long	0x37
	.long	.LLST11
	.uleb128 0x7
	.long	.LVL27
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL29
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x72
	.long	0x37
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x330
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x72
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x74
	.long	0xbc
	.long	.LLST12
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x75
	.long	0x37
	.long	.LLST13
	.uleb128 0x7
	.long	.LVL32
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL34
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x7c
	.long	0x37
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x396
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x7c
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x7c
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x7e
	.long	0xbc
	.long	.LLST14
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x7f
	.long	0x37
	.long	.LLST15
	.uleb128 0x7
	.long	.LVL37
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL39
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x1
	.byte	0x86
	.long	0x37
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fc
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x86
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x86
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x88
	.long	0xbc
	.long	.LLST16
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x89
	.long	0x37
	.long	.LLST17
	.uleb128 0x7
	.long	.LVL42
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL44
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF17
	.byte	0x1
	.byte	0x90
	.long	0x37
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x462
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x90
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x90
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x92
	.long	0xbc
	.long	.LLST18
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x93
	.long	0x37
	.long	.LLST19
	.uleb128 0x7
	.long	.LVL47
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL49
	.long	0x4d3
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0x9a
	.long	0x37
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c8
	.uleb128 0x5
	.long	.LASF2
	.byte	0x1
	.byte	0x9a
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x9a
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x9c
	.long	0xbc
	.long	.LLST20
	.uleb128 0x6
	.string	"ret"
	.byte	0x1
	.byte	0x9d
	.long	0x37
	.long	.LLST21
	.uleb128 0x7
	.long	.LVL52
	.long	0x4c8
	.uleb128 0x7
	.long	.LVL54
	.long	0x4d3
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.long	.LASF19
	.byte	0x1
	.byte	0x2d
	.uleb128 0xb
	.long	.LASF20
	.long	.LASF20
	.byte	0x1
	.byte	0x2e
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.long	.LVL1
	.long	.LVL3-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	.LVL4
	.long	.LFE5
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LFE6
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL14
	.long	.LFE7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	.LVL19
	.long	.LFE8
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL21
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LFE9
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL27
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL28
	.long	.LVL30
	.value	0x1
	.byte	0x56
	.long	.LVL30
	.long	.LFE11
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL32
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL33
	.long	.LVL35
	.value	0x1
	.byte	0x56
	.long	.LVL35
	.long	.LFE12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL37
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL38
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL40
	.long	.LFE13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL42
	.long	.LVL44-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL43
	.long	.LVL45
	.value	0x1
	.byte	0x53
	.long	.LVL45
	.long	.LFE14
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL47
	.long	.LVL49-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL48
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	.LVL50
	.long	.LFE15
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL52
	.long	.LVL54-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL53
	.long	.LVL55
	.value	0x1
	.byte	0x56
	.long	.LVL55
	.long	.LFE16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x74
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"target"
.LASF0:
	.string	"atomic_t"
.LASF21:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF5:
	.string	"unsigned int"
.LASF1:
	.string	"atomic_val_t"
.LASF16:
	.string	"atomic_xor"
.LASF12:
	.string	"atomic_get"
.LASF7:
	.string	"atomic_add"
.LASF19:
	.string	"irq_lock"
.LASF15:
	.string	"atomic_or"
.LASF6:
	.string	"atomic_cas"
.LASF14:
	.string	"atomic_clear"
.LASF11:
	.string	"atomic_dec"
.LASF4:
	.string	"new_value"
.LASF9:
	.string	"atomic_sub"
.LASF17:
	.string	"atomic_and"
.LASF23:
	.string	"/home/stone/Documents/pca"
.LASF18:
	.string	"atomic_nand"
.LASF20:
	.string	"irq_unlock"
.LASF8:
	.string	"value"
.LASF3:
	.string	"old_value"
.LASF10:
	.string	"atomic_inc"
.LASF22:
	.string	"src/atomic_c.c"
.LASF13:
	.string	"atomic_set"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

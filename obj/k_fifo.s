	.file	"k_fifo.c"
	.text
.Ltext0:
	.section	.text.unlikely.kfifo_copy_out,"ax",@progbits
.LCOLDB0:
	.section	.text.kfifo_copy_out,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.kfifo_copy_out
.Ltext_cold0:
	.section	.text.kfifo_copy_out
	.type	kfifo_copy_out, @function
kfifo_copy_out:
.LFB17:
	.file 1 "kernel/rhino/common/k_fifo.c"
	.loc 1 90 0
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
	pushl	%ebx
	.loc 1 90 0
	movl	%ecx, %ebx
	.loc 1 94 0
	movl	8(%ebp), %esi
	.loc 1 92 0
	movl	8(%eax), %ecx
.LVL1:
	.loc 1 98 0
	movl	%edx, %edi
	.loc 1 94 0
	andl	%ecx, %esi
.LVL2:
	.loc 1 96 0
	incl	%ecx
.LVL3:
	subl	%esi, %ecx
.LVL4:
	cmpl	%ebx, %ecx
	cmova	%ebx, %ecx
	.loc 1 98 0
	addl	12(%eax), %esi
.LVL5:
	.loc 1 96 0
	movl	%ecx, -16(%ebp)
.LVL6:
	.loc 1 99 0
	subl	-16(%ebp), %ebx
.LVL7:
	.loc 1 98 0
	rep movsb
.LVL8:
	.loc 1 99 0
	movl	%ebx, %ecx
	movl	12(%eax), %esi
	rep movsb
	.loc 1 101 0
	popl	%esi
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
	.size	kfifo_copy_out, .-kfifo_copy_out
	.section	.text.unlikely.kfifo_copy_out
.LCOLDE0:
	.section	.text.kfifo_copy_out
.LHOTE0:
	.section	.text.unlikely.fifo_init,"ax",@progbits
.LCOLDB1:
	.section	.text.fifo_init,"ax",@progbits
.LHOTB1:
	.globl	fifo_init
	.type	fifo_init, @function
fifo_init:
.LFB14:
	.loc 1 22 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 29 0
	movb	$1, %al
	.loc 1 22 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 22 0
	movl	16(%ebp), %ecx
.LVL10:
	movl	8(%ebp), %edx
.LBB4:
.LBB5:
	.loc 1 18 0
	testl	%ecx, %ecx
	je	.L4
	leal	-1(%ecx), %ebx
.LVL11:
.LBE5:
.LBE4:
	.loc 1 27 0
	testl	%ebx, %ecx
	jne	.L4
	.loc 1 34 0
	movl	12(%ebp), %esi
	.loc 1 36 0
	cmpl	$1, %ecx
	.loc 1 32 0
	movl	$0, (%edx)
	.loc 1 33 0
	movl	$0, 4(%edx)
	.loc 1 34 0
	movl	%esi, 12(%edx)
	.loc 1 36 0
	ja	.L5
	.loc 1 37 0
	movl	$0, 8(%edx)
	.loc 1 38 0
	jmp	.L4
.L5:
	.loc 1 41 0
	movl	%ebx, 8(%edx)
	.loc 1 42 0
	movl	%ecx, 16(%edx)
	.loc 1 45 0
	xorl	%eax, %eax
	.loc 1 43 0
	movl	%ecx, 20(%edx)
.LVL12:
.L4:
	.loc 1 46 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	fifo_init, .-fifo_init
	.section	.text.unlikely.fifo_init
.LCOLDE1:
	.section	.text.fifo_init
.LHOTE1:
	.section	.text.unlikely.fifo_in,"ax",@progbits
.LCOLDB2:
	.section	.text.fifo_in,"ax",@progbits
.LHOTB2:
	.globl	fifo_in
	.type	fifo_in, @function
fifo_in:
.LFB16:
	.loc 1 66 0
	.cfi_startproc
.LVL13:
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
	.loc 1 66 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %edi
	movl	%edx, -28(%ebp)
	.loc 1 71 0
	call	cpu_intrpt_save
.LVL14:
.LBB10:
.LBB11:
	.loc 1 13 0
	movl	-28(%ebp), %edx
	movl	8(%edx), %ecx
	movl	4(%edx), %ebx
	movl	(%edx), %esi
.LVL15:
	addl	%ecx, %ebx
	incl	%ebx
	subl	%esi, %ebx
	cmpl	%edi, %ebx
	cmova	%edi, %ebx
.LVL16:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 55 0
	andl	%ecx, %esi
.LVL17:
	.loc 1 57 0
	incl	%ecx
.LVL18:
	subl	%esi, %ecx
.LVL19:
	cmpl	%ebx, %ecx
	cmova	%ebx, %ecx
	.loc 1 59 0
	addl	12(%edx), %esi
.LVL20:
.LBE13:
.LBE12:
	.loc 1 84 0
	subl	$12, %esp
.LBB15:
.LBB14:
	.loc 1 57 0
	movl	%ecx, -28(%ebp)
.LVL21:
	.loc 1 59 0
	movl	%esi, %edi
	movl	12(%ebp), %esi
	rep movsb
.LVL22:
	.loc 1 60 0
	movl	%ebx, %ecx
	subl	-28(%ebp), %ecx
	movl	12(%edx), %edi
	rep movsb
.LVL23:
.LBE14:
.LBE15:
	.loc 1 80 0
	addl	%ebx, (%edx)
	.loc 1 82 0
	subl	%ebx, 16(%edx)
	.loc 1 84 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL24:
	.loc 1 86 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL25:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	fifo_in, .-fifo_in
	.section	.text.unlikely.fifo_in
.LCOLDE2:
	.section	.text.fifo_in
.LHOTE2:
	.section	.text.unlikely.fifo_out_peek,"ax",@progbits
.LCOLDB3:
	.section	.text.fifo_out_peek,"ax",@progbits
.LHOTB3:
	.globl	fifo_out_peek
	.type	fifo_out_peek, @function
fifo_out_peek:
.LFB19:
	.loc 1 120 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 120 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 126 0
	call	cpu_intrpt_save
.LVL27:
	movl	%eax, %edi
.LVL28:
.LBB18:
.LBB19:
	.loc 1 108 0
	movl	4(%esi), %edx
	movl	(%esi), %eax
.LVL29:
	subl	%edx, %eax
.LVL30:
	cmpl	%eax, %ebx
	cmova	%eax, %ebx
.LVL31:
	.loc 1 114 0
	subl	$12, %esp
	movl	%esi, %eax
.LVL32:
	pushl	%edx
.LVL33:
	movl	12(%ebp), %edx
	movl	%ebx, %ecx
	call	kfifo_copy_out
.LVL34:
.LBE19:
.LBE18:
	.loc 1 130 0
	movl	%edi, (%esp)
	call	cpu_intrpt_restore
.LVL35:
	.loc 1 134 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL36:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	fifo_out_peek, .-fifo_out_peek
	.section	.text.unlikely.fifo_out_peek
.LCOLDE3:
	.section	.text.fifo_out_peek
.LHOTE3:
	.section	.text.unlikely.fifo_out,"ax",@progbits
.LCOLDB4:
	.section	.text.fifo_out,"ax",@progbits
.LHOTB4:
	.globl	fifo_out
	.type	fifo_out, @function
fifo_out:
.LFB20:
	.loc 1 137 0
	.cfi_startproc
.LVL37:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 137 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 140 0
	call	cpu_intrpt_save
.LVL38:
	movl	%eax, %edi
.LVL39:
.LBB22:
.LBB23:
	.loc 1 108 0
	movl	4(%esi), %edx
	movl	(%esi), %eax
.LVL40:
	subl	%edx, %eax
.LVL41:
	cmpl	%eax, %ebx
	cmova	%eax, %ebx
.LVL42:
	.loc 1 114 0
	subl	$12, %esp
	movl	%esi, %eax
.LVL43:
	pushl	%edx
.LVL44:
	movl	12(%ebp), %edx
	movl	%ebx, %ecx
	call	kfifo_copy_out
.LVL45:
.LBE23:
.LBE22:
	.loc 1 143 0
	addl	%ebx, 4(%esi)
	.loc 1 145 0
	addl	%ebx, 16(%esi)
	.loc 1 147 0
	movl	%edi, (%esp)
	call	cpu_intrpt_restore
.LVL46:
	.loc 1 150 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL47:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	fifo_out, .-fifo_out
	.section	.text.unlikely.fifo_out
.LCOLDE4:
	.section	.text.fifo_out
.LHOTE4:
	.section	.text.unlikely.fifo_out_all,"ax",@progbits
.LCOLDB5:
	.section	.text.fifo_out_all,"ax",@progbits
.LHOTB5:
	.globl	fifo_out_all
	.type	fifo_out_all, @function
fifo_out_all:
.LFB21:
	.loc 1 153 0
	.cfi_startproc
.LVL48:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 153 0
	movl	8(%ebp), %esi
	.loc 1 158 0
	call	cpu_intrpt_save
.LVL49:
	movl	%eax, %edi
.LVL50:
	.loc 1 160 0
	movl	20(%esi), %ebx
.LVL51:
	.loc 1 162 0
	subl	16(%esi), %ebx
.LVL52:
	jne	.L18
	.loc 1 164 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL53:
	.loc 1 165 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L19
.LVL54:
.L18:
.LBB26:
.LBB27:
	.loc 1 108 0
	movl	4(%esi), %edx
	movl	(%esi), %eax
.LVL55:
	subl	%edx, %eax
.LVL56:
	cmpl	%eax, %ebx
	cmova	%eax, %ebx
.LVL57:
	.loc 1 114 0
	subl	$12, %esp
	movl	%esi, %eax
.LVL58:
	pushl	%edx
.LVL59:
	movl	12(%ebp), %edx
	movl	%ebx, %ecx
	call	kfifo_copy_out
.LVL60:
.LBE27:
.LBE26:
	.loc 1 169 0
	addl	%ebx, 4(%esi)
	.loc 1 171 0
	addl	%ebx, 16(%esi)
	.loc 1 173 0
	movl	%edi, (%esp)
	call	cpu_intrpt_restore
.LVL61:
	.loc 1 175 0
	addl	$16, %esp
	movl	%ebx, %eax
.L19:
	.loc 1 176 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL62:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	fifo_out_all, .-fifo_out_all
	.section	.text.unlikely.fifo_out_all
.LCOLDE5:
	.section	.text.fifo_out_all
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.kfifo_copy_out
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "kernel/rhino/common/k_fifo.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5f2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF35
	.byte	0xc
	.long	.LASF36
	.long	.LASF37
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0xd8
	.long	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
	.byte	0x1b
	.long	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x41
	.long	0x85
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x14
	.long	0x4c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0x7a
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x6
	.long	.LASF38
	.byte	0x18
	.byte	0x5
	.byte	0xc
	.long	0x10d
	.uleb128 0x7
	.string	"in"
	.byte	0x5
	.byte	0xe
	.long	0x9e
	.byte	0
	.uleb128 0x7
	.string	"out"
	.byte	0x5
	.byte	0xf
	.long	0x9e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0x10
	.long	0x9e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0x11
	.long	0xb0
	.byte	0xc
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0x12
	.long	0x9e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0x13
	.long	0x9e
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x1
	.byte	0x58
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x177
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x58
	.long	0x177
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xb
	.string	"dst"
	.byte	0x1
	.byte	0x58
	.long	0xb0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x59
	.long	0x9e
	.long	.LLST0
	.uleb128 0xc
	.string	"off"
	.byte	0x1
	.byte	0x59
	.long	0x9e
	.long	.LLST1
	.uleb128 0xd
	.string	"l"
	.byte	0x1
	.byte	0x5b
	.long	0x9e
	.long	.LLST2
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.byte	0x5c
	.long	0x9e
	.long	.LLST3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0xb9
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.byte	0x10
	.long	0x93
	.byte	0x1
	.long	0x197
	.uleb128 0x11
	.string	"n"
	.byte	0x1
	.byte	0x10
	.long	0x9e
	.byte	0
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x15
	.long	0x93
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f6
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0x15
	.long	0x177
	.long	.LLST4
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x15
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF20
	.byte	0x1
	.byte	0x15
	.long	0x9e
	.long	.LLST5
	.uleb128 0x14
	.long	0x17d
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x1b
	.uleb128 0x15
	.long	0x18d
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF24
	.byte	0x1
	.byte	0xb
	.long	0x9e
	.byte	0x1
	.long	0x212
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.byte	0xb
	.long	0x177
	.byte	0
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x25f
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.byte	0x30
	.long	0x177
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x30
	.long	0x25f
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x31
	.long	0x9e
	.uleb128 0x11
	.string	"off"
	.byte	0x1
	.byte	0x31
	.long	0x9e
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0x33
	.long	0x9e
	.uleb128 0x19
	.long	.LASF20
	.byte	0x1
	.byte	0x35
	.long	0x9e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x265
	.uleb128 0x1a
	.uleb128 0x12
	.long	.LASF26
	.byte	0x1
	.byte	0x41
	.long	0x9e
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x342
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x41
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x41
	.long	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x41
	.long	0x9e
	.long	.LLST7
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0x43
	.long	0x9e
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x45
	.long	0x2c
	.long	.LLST8
	.uleb128 0x1b
	.long	0x1f6
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0x49
	.long	0x2df
	.uleb128 0x15
	.long	0x206
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	0x212
	.long	.LBB12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.long	0x32f
	.uleb128 0x15
	.long	0x23f
	.long	.LLST10
	.uleb128 0x15
	.long	0x234
	.long	.LLST11
	.uleb128 0x15
	.long	0x229
	.long	.LLST12
	.uleb128 0x15
	.long	0x21e
	.long	.LLST13
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.long	0x24a
	.long	.LLST14
	.uleb128 0x1e
	.long	0x253
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL14
	.long	0x5df
	.uleb128 0x1f
	.long	.LVL24
	.long	0x5ea
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0x67
	.long	0x9e
	.byte	0x1
	.long	0x37d
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.byte	0x67
	.long	0x177
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x68
	.long	0xb0
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x68
	.long	0x9e
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.byte	0x6a
	.long	0x9e
	.byte	0
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.byte	0x76
	.long	0x9e
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x44c
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x76
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x77
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x77
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF30
	.byte	0x1
	.byte	0x7a
	.long	0x9e
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x7c
	.long	0x2c
	.long	.LLST16
	.uleb128 0x1b
	.long	0x342
	.long	.LBB18
	.long	.LBE18-.LBB18
	.byte	0x1
	.byte	0x80
	.long	0x439
	.uleb128 0x15
	.long	0x368
	.long	.LLST17
	.uleb128 0x15
	.long	0x35d
	.long	.LLST18
	.uleb128 0x15
	.long	0x352
	.long	.LLST19
	.uleb128 0x20
	.long	.LBB19
	.long	.LBE19-.LBB19
	.uleb128 0x1e
	.long	0x373
	.long	.LLST20
	.uleb128 0x21
	.long	.LVL34
	.long	0x10d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL27
	.long	0x5df
	.uleb128 0x1f
	.long	.LVL35
	.long	0x5ea
	.byte	0
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0x88
	.long	0x9e
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x511
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x88
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x88
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x88
	.long	0x9e
	.long	.LLST21
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x8a
	.long	0x2c
	.long	.LLST22
	.uleb128 0x1b
	.long	0x342
	.long	.LBB22
	.long	.LBE22-.LBB22
	.byte	0x1
	.byte	0x8e
	.long	0x4fe
	.uleb128 0x15
	.long	0x368
	.long	.LLST23
	.uleb128 0x15
	.long	0x35d
	.long	.LLST24
	.uleb128 0x15
	.long	0x352
	.long	.LLST25
	.uleb128 0x20
	.long	.LBB23
	.long	.LBE23-.LBB23
	.uleb128 0x1e
	.long	0x373
	.long	.LLST26
	.uleb128 0x21
	.long	.LVL45
	.long	0x10d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL38
	.long	0x5df
	.uleb128 0x1f
	.long	.LVL46
	.long	0x5ea
	.byte	0
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.byte	0x98
	.long	0x9e
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x5df
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x98
	.long	0x177
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x98
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x9a
	.long	0x9e
	.long	.LLST27
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x9c
	.long	0x2c
	.long	.LLST28
	.uleb128 0x1b
	.long	0x342
	.long	.LBB26
	.long	.LBE26-.LBB26
	.byte	0x1
	.byte	0xa8
	.long	0x5c3
	.uleb128 0x15
	.long	0x368
	.long	.LLST29
	.uleb128 0x15
	.long	0x35d
	.long	.LLST30
	.uleb128 0x15
	.long	0x352
	.long	.LLST31
	.uleb128 0x20
	.long	.LBB27
	.long	.LBE27-.LBB27
	.uleb128 0x1e
	.long	0x373
	.long	.LLST32
	.uleb128 0x21
	.long	.LVL60
	.long	0x10d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL49
	.long	0x5df
	.uleb128 0x1f
	.long	.LVL53
	.long	0x5ea
	.uleb128 0x1f
	.long	.LVL61
	.long	0x5ea
	.byte	0
	.uleb128 0x23
	.long	.LASF33
	.long	.LASF33
	.byte	0x6
	.byte	0x8
	.uleb128 0x23
	.long	.LASF34
	.long	.LASF34
	.byte	0x6
	.byte	0x9
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
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.value	0x1
	.byte	0x51
	.long	.LVL1
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LFE17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL2
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	.LVL5
	.long	.LFE17
	.value	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x51
	.long	.LVL8
	.long	.LFE17
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL3
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x51
	.long	.LVL4
	.long	.LFE17
	.value	0x6
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL12
	.long	.LFE14
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL12
	.long	.LFE14
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL16
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL16
	.long	.LVL25
	.value	0x1
	.byte	0x53
	.long	.LVL25
	.long	.LFE16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL24-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL20
	.value	0x1
	.byte	0x56
	.long	.LVL20
	.long	.LVL21
	.value	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x1a
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST13:
	.long	.LVL16
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST14:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x51
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST15:
	.long	.LVL16
	.long	.LVL18
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x51
	.long	.LVL19
	.long	.LVL21
	.value	0x9
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.value	0x6
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL36
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST17:
	.long	.LVL28
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST18:
	.long	.LVL28
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST19:
	.long	.LVL28
	.long	.LVL34
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST20:
	.long	.LVL30
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL33
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL37
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST22:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL47
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST23:
	.long	.LVL39
	.long	.LVL45
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST24:
	.long	.LVL39
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST25:
	.long	.LVL39
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST26:
	.long	.LVL41
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL44
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL51
	.long	.LVL52
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL52
	.long	.LVL57
	.value	0x1
	.byte	0x53
	.long	.LVL57
	.long	.LVL59
	.value	0x8
	.byte	0x76
	.sleb128 20
	.byte	0x6
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL50
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	.LVL53-1
	.long	.LVL54
	.value	0x1
	.byte	0x57
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	.LVL55
	.long	.LVL62
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST29:
	.long	.LVL54
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST30:
	.long	.LVL54
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST31:
	.long	.LVL54
	.long	.LVL60
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST32:
	.long	.LVL56
	.long	.LVL58
	.value	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LVL59
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB12
	.long	.LBE12
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB14
	.long	.LFE14
	.long	.LFB16
	.long	.LFE16
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"is_power_of_2"
.LASF4:
	.string	"__int8_t"
.LASF26:
	.string	"fifo_in"
.LASF17:
	.string	"mask"
.LASF31:
	.string	"fifo_out"
.LASF30:
	.string	"ret_len"
.LASF21:
	.string	"fifo"
.LASF27:
	.string	"cpsr"
.LASF13:
	.string	"int8_t"
.LASF19:
	.string	"free_bytes"
.LASF39:
	.string	"kfifo_copy_out"
.LASF29:
	.string	"fifo_out_peek"
.LASF18:
	.string	"data"
.LASF20:
	.string	"size"
.LASF11:
	.string	"long unsigned int"
.LASF35:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF8:
	.string	"short unsigned int"
.LASF3:
	.string	"size_t"
.LASF14:
	.string	"uint32_t"
.LASF10:
	.string	"__uint32_t"
.LASF6:
	.string	"unsigned char"
.LASF25:
	.string	"fifo_init"
.LASF7:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"fifo_out_all"
.LASF12:
	.string	"long long unsigned int"
.LASF28:
	.string	"internal_fifo_out_peek"
.LASF15:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF34:
	.string	"cpu_intrpt_restore"
.LASF16:
	.string	"char"
.LASF37:
	.string	"/home/stone/Documents/pca"
.LASF38:
	.string	"k_fifo"
.LASF22:
	.string	"buffer"
.LASF36:
	.string	"src/k_fifo.c"
.LASF40:
	.string	"fifo_copy_in"
.LASF9:
	.string	"long int"
.LASF24:
	.string	"fifo_unused"
.LASF2:
	.string	"long double"
.LASF5:
	.string	"signed char"
.LASF33:
	.string	"cpu_intrpt_save"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

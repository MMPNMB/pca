	.file	"k_ringbuf.c"
	.text
.Ltext0:
	.section	.text.unlikely.ringbuf_is_full,"ax",@progbits
.LCOLDB0:
	.section	.text.ringbuf_is_full,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ringbuf_is_full
.Ltext_cold0:
	.section	.text.ringbuf_is_full
	.globl	ringbuf_is_full
	.type	ringbuf_is_full, @function
ringbuf_is_full:
.LFB15:
	.file 1 "kernel/rhino/core/k_ringbuf.c"
	.loc 1 182 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 182 0
	movl	8(%ebp), %edx
	.loc 1 183 0
	movl	20(%edx), %ecx
	cmpl	$1, %ecx
	jne	.L2
	.loc 1 184 0 discriminator 1
	cmpl	$4, 16(%edx)
	setbe	%al
	jmp	.L3
.L2:
	.loc 1 192 0
	xorl	%eax, %eax
	.loc 1 187 0
	testl	%ecx, %ecx
	jne	.L3
	.loc 1 184 0 discriminator 1
	movl	24(%edx), %eax
	cmpl	%eax, 16(%edx)
	setb	%al
.LVL1:
.L3:
	.loc 1 193 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	ringbuf_is_full, .-ringbuf_is_full
	.section	.text.unlikely.ringbuf_is_full
.LCOLDE0:
	.section	.text.ringbuf_is_full
.LHOTE0:
	.section	.text.unlikely.ringbuf_push,"ax",@progbits
.LCOLDB1:
	.section	.text.ringbuf_push,"ax",@progbits
.LHOTB1:
	.globl	ringbuf_push
	.type	ringbuf_push, @function
ringbuf_push:
.LFB13:
	.loc 1 24 0
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
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 24 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	.loc 1 27 0
	movl	$0, -32(%ebp)
	.loc 1 29 0
	pushl	%ebx
	.loc 1 24 0
	movl	%eax, -44(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL3:
	.loc 1 29 0
	call	ringbuf_is_full
.LVL4:
	testb	%al, %al
	popl	%edx
	je	.L8
.LVL5:
.L12:
	.loc 1 30 0
	movl	$106, %eax
	jmp	.L9
.LVL6:
.L8:
	.loc 1 33 0
	cmpl	$0, 20(%ebx)
	jne	.L10
	.loc 1 34 0
	movl	4(%ebx), %eax
	cmpl	%eax, 12(%ebx)
	jne	.L11
	.loc 1 35 0
	movl	(%ebx), %eax
	movl	%eax, 12(%ebx)
.L11:
	.loc 1 38 0
	movl	24(%ebx), %ecx
	movl	12(%ebx), %edi
	movl	-44(%ebp), %esi
	rep movsb
	.loc 1 39 0
	movl	24(%ebx), %eax
	jmp	.L28
.L10:
	.loc 1 42 0
	movl	16(%ebp), %eax
	leal	-1(%eax), %edx
	.loc 1 43 0
	movl	$5, %eax
	.loc 1 42 0
	cmpl	$-3, %edx
	ja	.L9
.LVL7:
	.loc 1 52 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 55 0
	addl	$4, %eax
	cmpl	%eax, 16(%ebx)
	jb	.L12
	.loc 1 59 0
	movl	4(%ebx), %eax
	cmpl	%eax, 12(%ebx)
	jne	.L13
	.loc 1 60 0
	movl	(%ebx), %edx
	movl	%edx, 12(%ebx)
.L13:
	.loc 1 64 0
	movl	12(%ebx), %edx
	cmpl	8(%ebx), %edx
	jb	.L20
	.loc 1 65 0 discriminator 1
	subl	%edx, %eax
.LVL8:
	leal	-1(%eax), %ecx
	cmpl	$2, %ecx
	ja	.L20
	.loc 1 66 0
	movl	%edx, %edi
	leal	-32(%ebp), %esi
	movl	%eax, %ecx
	rep movsb
	.loc 1 67 0
	movl	$4, %edx
	subl	%eax, %edx
.LVL9:
	.loc 1 68 0
	movl	(%ebx), %ecx
	.loc 1 69 0
	subl	%eax, 16(%ebx)
	.loc 1 68 0
	movl	%ecx, 12(%ebx)
	.loc 1 69 0
	jmp	.L14
.LVL10:
.L20:
	.loc 1 71 0
	xorl	%eax, %eax
	.loc 1 46 0
	movl	$4, %edx
.LVL11:
.L14:
	.loc 1 75 0
	leal	-32(%ebp,%eax), %esi
	movl	12(%ebx), %edi
	movl	%edx, %ecx
	rep movsb
	.loc 1 77 0
	movl	12(%ebx), %eax
.LVL12:
	.loc 1 76 0
	subl	%edx, 16(%ebx)
	.loc 1 77 0
	addl	%edx, %eax
	.loc 1 83 0
	movl	4(%ebx), %edx
.LVL13:
	.loc 1 77 0
	movl	%eax, 12(%ebx)
.LVL14:
	.loc 1 83 0
	cmpl	%edx, %eax
	jne	.L15
	.loc 1 84 0
	movl	(%ebx), %eax
	movl	%eax, 12(%ebx)
.L15:
	.loc 1 87 0
	movl	12(%ebx), %eax
	cmpl	8(%ebx), %eax
	jb	.L16
.LVL15:
	.loc 1 88 0 discriminator 1
	subl	%eax, %edx
.LVL16:
	je	.L16
	cmpl	%edx, 16(%ebp)
	jbe	.L16
	.loc 1 91 0
	movl	%eax, %edi
	movl	-44(%ebp), %esi
	movl	%edx, %ecx
	rep movsb
	.loc 1 92 0
	subl	%edx, 16(%ebp)
	.loc 1 93 0
	movl	(%ebx), %eax
	.loc 1 94 0
	subl	%edx, 16(%ebx)
	.loc 1 91 0
	movl	%esi, -44(%ebp)
.LVL17:
	.loc 1 93 0
	movl	%eax, 12(%ebx)
.LVL18:
.L16:
	.loc 1 97 0
	movl	12(%ebx), %edi
	movl	-44(%ebp), %esi
	movl	16(%ebp), %ecx
	.loc 1 98 0
	movl	16(%ebp), %eax
	.loc 1 97 0
	rep movsb
.LVL19:
.L28:
	.loc 1 98 0
	addl	%eax, 12(%ebx)
	.loc 1 99 0
	subl	%eax, 16(%ebx)
	.loc 1 102 0
	xorl	%eax, %eax
.L9:
	.loc 1 103 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L17
	call	__stack_chk_fail
.LVL20:
.L17:
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
.LFE13:
	.size	ringbuf_push, .-ringbuf_push
	.section	.text.unlikely.ringbuf_push
.LCOLDE1:
	.section	.text.ringbuf_push
.LHOTE1:
	.section	.text.unlikely.ringbuf_is_empty,"ax",@progbits
.LCOLDB2:
	.section	.text.ringbuf_is_empty,"ax",@progbits
.LHOTB2:
	.globl	ringbuf_is_empty
	.type	ringbuf_is_empty, @function
ringbuf_is_empty:
.LFB16:
	.loc 1 196 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 196 0
	movl	8(%ebp), %eax
	.loc 1 202 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movl	4(%eax), %edx
	subl	(%eax), %edx
	cmpl	16(%eax), %edx
	sete	%al
	ret
	.cfi_endproc
.LFE16:
	.size	ringbuf_is_empty, .-ringbuf_is_empty
	.section	.text.unlikely.ringbuf_is_empty
.LCOLDE2:
	.section	.text.ringbuf_is_empty
.LHOTE2:
	.section	.text.unlikely.ringbuf_pop,"ax",@progbits
.LCOLDB3:
	.section	.text.ringbuf_pop,"ax",@progbits
.LHOTB3:
	.globl	ringbuf_pop
	.type	ringbuf_pop, @function
ringbuf_pop:
.LFB14:
	.loc 1 106 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 106 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ebx
	.loc 1 110 0
	movl	$0, -32(%ebp)
	.loc 1 106 0
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	.loc 1 113 0
	pushl	%ebx
	.loc 1 106 0
	movl	%eax, -52(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL23:
	.loc 1 113 0
	call	ringbuf_is_empty
.LVL24:
	testb	%al, %al
	popl	%edx
	.loc 1 114 0
	movl	$107, %edx
	.loc 1 113 0
	jne	.L32
	.loc 1 117 0
	cmpl	$0, 20(%ebx)
	.loc 1 118 0
	movl	4(%ebx), %eax
	.loc 1 117 0
	jne	.L33
	.loc 1 118 0
	cmpl	%eax, 8(%ebx)
	jne	.L34
	.loc 1 119 0
	movl	(%ebx), %eax
	movl	%eax, 8(%ebx)
.L34:
	.loc 1 122 0
	movl	8(%ebx), %esi
	movl	24(%ebx), %ecx
	.loc 1 130 0
	xorl	%edx, %edx
	.loc 1 122 0
	movl	-48(%ebp), %edi
	rep movsb
	.loc 1 123 0
	movl	24(%ebx), %eax
	addl	%eax, 8(%ebx)
	.loc 1 124 0
	addl	%eax, 16(%ebx)
	.loc 1 126 0
	cmpl	$0, -52(%ebp)
	je	.L32
	.loc 1 127 0
	movl	-52(%ebp), %ecx
	movl	%eax, (%ecx)
	jmp	.L32
.L33:
.LVL25:
	.loc 1 135 0
	cmpl	%eax, 8(%ebx)
	movl	%eax, -44(%ebp)
	jne	.L35
	.loc 1 136 0
	movl	(%ebx), %eax
	movl	%eax, 8(%ebx)
.L35:
	.loc 1 139 0
	movl	8(%ebx), %esi
	movl	-44(%ebp), %edx
	subl	%esi, %edx
.LVL26:
	leal	-1(%edx), %eax
	cmpl	$2, %eax
	ja	.L42
	.loc 1 142 0
	leal	-32(%ebp), %eax
	movl	%edx, %ecx
	movl	%eax, %edi
	.loc 1 144 0
	movl	(%ebx), %eax
	.loc 1 142 0
	rep movsb
	.loc 1 145 0
	addl	%edx, 16(%ebx)
	.loc 1 144 0
	movl	%eax, 8(%ebx)
	.loc 1 145 0
	jmp	.L36
.L42:
	.loc 1 147 0
	xorl	%edx, %edx
.LVL27:
.L36:
	.loc 1 151 0
	movl	$4, %eax
	movl	8(%ebx), %esi
	subl	%edx, %eax
	leal	-32(%ebp,%edx), %edx
.LVL28:
	movl	%eax, %ecx
	movl	%edx, %edi
	rep movsb
	.loc 1 153 0
	addl	%eax, 16(%ebx)
	.loc 1 157 0
	movl	-52(%ebp), %edi
	.loc 1 159 0
	cmpl	%esi, -44(%ebp)
	.loc 1 156 0
	movl	-32(%ebp), %eax
.LVL29:
	.loc 1 152 0
	movl	%esi, 8(%ebx)
	.loc 1 157 0
	movl	%eax, (%edi)
	.loc 1 159 0
	jne	.L37
	.loc 1 160 0
	movl	(%ebx), %edx
	movl	%edx, 8(%ebx)
.L37:
	.loc 1 163 0
	movl	8(%ebx), %esi
	cmpl	12(%ebx), %esi
	jbe	.L38
	.loc 1 164 0 discriminator 1
	movl	-44(%ebp), %edx
	subl	%esi, %edx
.LVL30:
	.loc 1 163 0 discriminator 1
	cmpl	%edx, %eax
	jbe	.L38
	.loc 1 166 0
	movl	-48(%ebp), %edi
	movl	%edx, %ecx
	.loc 1 167 0
	subl	%edx, %eax
.LVL31:
	.loc 1 166 0
	rep movsb
	.loc 1 168 0
	movl	(%ebx), %ecx
	.loc 1 169 0
	addl	%edx, 16(%ebx)
	.loc 1 166 0
	movl	%edi, -48(%ebp)
.LVL32:
	.loc 1 168 0
	movl	%ecx, 8(%ebx)
.LVL33:
.L38:
	.loc 1 172 0
	movl	8(%ebx), %esi
	movl	-48(%ebp), %edi
	movl	%eax, %ecx
	rep movsb
	.loc 1 176 0
	xorl	%edx, %edx
	.loc 1 173 0
	addl	%eax, 8(%ebx)
	.loc 1 174 0
	addl	%eax, 16(%ebx)
.LVL34:
.L32:
	.loc 1 179 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%edx, %eax
	je	.L39
	call	__stack_chk_fail
.LVL35:
.L39:
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
.LFE14:
	.size	ringbuf_pop, .-ringbuf_pop
	.section	.text.unlikely.ringbuf_pop
.LCOLDE3:
	.section	.text.ringbuf_pop
.LHOTE3:
	.section	.text.unlikely.ringbuf_reset,"ax",@progbits
.LCOLDB4:
	.section	.text.ringbuf_reset,"ax",@progbits
.LHOTB4:
	.globl	ringbuf_reset
	.type	ringbuf_reset, @function
ringbuf_reset:
.LFB17:
	.loc 1 206 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 206 0
	movl	8(%ebp), %eax
	.loc 1 207 0
	movl	(%eax), %edx
	.loc 1 209 0
	movl	4(%eax), %ecx
	subl	%edx, %ecx
	.loc 1 207 0
	movl	%edx, 8(%eax)
	.loc 1 208 0
	movl	%edx, 12(%eax)
	.loc 1 209 0
	movl	%ecx, 16(%eax)
	.loc 1 212 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	ringbuf_reset, .-ringbuf_reset
	.section	.text.unlikely.ringbuf_reset
.LCOLDE4:
	.section	.text.ringbuf_reset
.LHOTE4:
	.section	.text.unlikely.ringbuf_init,"ax",@progbits
.LCOLDB5:
	.section	.text.ringbuf_init,"ax",@progbits
.LHOTB5:
	.globl	ringbuf_init
	.type	ringbuf_init, @function
ringbuf_init:
.LFB12:
	.loc 1 11 0
	.cfi_startproc
.LVL37:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 11 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 12 0
	movl	20(%ebp), %ecx
	.loc 1 13 0
	movl	%edx, (%eax)
	.loc 1 14 0
	addl	16(%ebp), %edx
	.loc 1 12 0
	movl	%ecx, 20(%eax)
	.loc 1 14 0
	movl	%edx, 4(%eax)
	.loc 1 15 0
	movl	24(%ebp), %edx
	movl	%edx, 24(%eax)
	.loc 1 17 0
	pushl	%eax
	call	ringbuf_reset
.LVL38:
	.loc 1 21 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	ringbuf_init, .-ringbuf_init
	.section	.text.unlikely.ringbuf_init
.LCOLDE5:
	.section	.text.ringbuf_init
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.ringbuf_is_full
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./kernel/rhino/core/include/k_err.h"
	.file 6 "./kernel/rhino/core/include/k_ringbuf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x505
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF101
	.byte	0xc
	.long	.LASF102
	.long	.LASF103
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x1d
	.long	0x5e
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
	.byte	0x18
	.long	0x53
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
	.byte	0x4
	.long	0x37
	.byte	0x5
	.byte	0x8
	.long	0x265
	.uleb128 0x7
	.long	.LASF17
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.uleb128 0x7
	.long	.LASF22
	.byte	0x5
	.uleb128 0x7
	.long	.LASF23
	.byte	0x6
	.uleb128 0x7
	.long	.LASF24
	.byte	0x7
	.uleb128 0x7
	.long	.LASF25
	.byte	0x8
	.uleb128 0x7
	.long	.LASF26
	.byte	0x9
	.uleb128 0x7
	.long	.LASF27
	.byte	0xa
	.uleb128 0x7
	.long	.LASF28
	.byte	0xb
	.uleb128 0x7
	.long	.LASF29
	.byte	0xc
	.uleb128 0x7
	.long	.LASF30
	.byte	0xd
	.uleb128 0x7
	.long	.LASF31
	.byte	0x64
	.uleb128 0x7
	.long	.LASF32
	.byte	0x65
	.uleb128 0x7
	.long	.LASF33
	.byte	0x66
	.uleb128 0x7
	.long	.LASF34
	.byte	0x67
	.uleb128 0x7
	.long	.LASF35
	.byte	0x68
	.uleb128 0x7
	.long	.LASF36
	.byte	0x69
	.uleb128 0x7
	.long	.LASF37
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF38
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF39
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF40
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF41
	.byte	0xca
	.uleb128 0x7
	.long	.LASF42
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF43
	.value	0x12c
	.uleb128 0x8
	.long	.LASF44
	.value	0x12d
	.uleb128 0x8
	.long	.LASF45
	.value	0x12e
	.uleb128 0x8
	.long	.LASF46
	.value	0x12f
	.uleb128 0x8
	.long	.LASF47
	.value	0x130
	.uleb128 0x8
	.long	.LASF48
	.value	0x131
	.uleb128 0x8
	.long	.LASF49
	.value	0x132
	.uleb128 0x8
	.long	.LASF50
	.value	0x133
	.uleb128 0x8
	.long	.LASF51
	.value	0x134
	.uleb128 0x8
	.long	.LASF52
	.value	0x190
	.uleb128 0x8
	.long	.LASF53
	.value	0x191
	.uleb128 0x8
	.long	.LASF54
	.value	0x192
	.uleb128 0x8
	.long	.LASF55
	.value	0x193
	.uleb128 0x8
	.long	.LASF56
	.value	0x194
	.uleb128 0x8
	.long	.LASF57
	.value	0x195
	.uleb128 0x8
	.long	.LASF58
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF59
	.value	0x258
	.uleb128 0x8
	.long	.LASF60
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF61
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF62
	.value	0x2be
	.uleb128 0x8
	.long	.LASF63
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF64
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF65
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF66
	.value	0x320
	.uleb128 0x8
	.long	.LASF67
	.value	0x321
	.uleb128 0x8
	.long	.LASF68
	.value	0x384
	.uleb128 0x8
	.long	.LASF69
	.value	0x385
	.uleb128 0x8
	.long	.LASF70
	.value	0x386
	.uleb128 0x8
	.long	.LASF71
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF72
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF73
	.value	0x44c
	.uleb128 0x8
	.long	.LASF74
	.value	0x44d
	.uleb128 0x8
	.long	.LASF75
	.value	0x44e
	.uleb128 0x8
	.long	.LASF76
	.value	0x44f
	.uleb128 0x8
	.long	.LASF77
	.value	0x450
	.uleb128 0x8
	.long	.LASF78
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF79
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF80
	.byte	0x5
	.byte	0x54
	.long	0xb9
	.uleb128 0x9
	.byte	0x1c
	.byte	0x6
	.byte	0x21
	.long	0x2cd
	.uleb128 0xa
	.string	"buf"
	.byte	0x6
	.byte	0x22
	.long	0x2cd
	.byte	0
	.uleb128 0xa
	.string	"end"
	.byte	0x6
	.byte	0x23
	.long	0x2cd
	.byte	0x4
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.byte	0x24
	.long	0x2cd
	.byte	0x8
	.uleb128 0xb
	.long	.LASF82
	.byte	0x6
	.byte	0x25
	.long	0x2cd
	.byte	0xc
	.uleb128 0xb
	.long	.LASF83
	.byte	0x6
	.byte	0x26
	.long	0x2c
	.byte	0x10
	.uleb128 0xb
	.long	.LASF84
	.byte	0x6
	.byte	0x27
	.long	0x2c
	.byte	0x14
	.uleb128 0xb
	.long	.LASF85
	.byte	0x6
	.byte	0x28
	.long	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x93
	.uleb128 0x3
	.long	.LASF86
	.byte	0x6
	.byte	0x29
	.long	0x270
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1
	.byte	0xb5
	.long	0x93
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x307
	.uleb128 0xe
	.long	.LASF89
	.byte	0x1
	.byte	0xb5
	.long	0x307
	.long	.LLST0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x2d3
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x17
	.long	0x265
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x390
	.uleb128 0xf
	.long	.LASF89
	.byte	0x1
	.byte	0x17
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF90
	.byte	0x1
	.byte	0x17
	.long	0xb0
	.long	.LLST1
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x17
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.byte	0x19
	.long	0x2c
	.long	.LLST2
	.uleb128 0x11
	.long	.LASF92
	.byte	0x1
	.byte	0x1a
	.long	0x2c
	.long	.LLST3
	.uleb128 0x12
	.long	.LASF93
	.byte	0x1
	.byte	0x1b
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LVL4
	.long	0x2de
	.uleb128 0x13
	.long	.LVL20
	.long	0x4ff
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0x3a0
	.uleb128 0x15
	.long	0xa9
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF94
	.byte	0x1
	.byte	0xc3
	.long	0x93
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c8
	.uleb128 0xf
	.long	.LASF89
	.byte	0x1
	.byte	0xc3
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF95
	.byte	0x1
	.byte	0x69
	.long	0x265
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x468
	.uleb128 0xf
	.long	.LASF89
	.byte	0x1
	.byte	0x69
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF96
	.byte	0x1
	.byte	0x69
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.long	.LASF97
	.byte	0x1
	.byte	0x69
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x11
	.long	.LASF92
	.byte	0x1
	.byte	0x6b
	.long	0x2c
	.long	.LLST4
	.uleb128 0x11
	.long	.LASF90
	.byte	0x1
	.byte	0x6c
	.long	0x2cd
	.long	.LLST5
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x6d
	.long	0x2c
	.long	.LLST6
	.uleb128 0x12
	.long	.LASF93
	.byte	0x1
	.byte	0x6e
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.byte	0x6f
	.long	0x2c
	.long	.LLST7
	.uleb128 0x13
	.long	.LVL24
	.long	0x3a0
	.uleb128 0x13
	.long	.LVL35
	.long	0x4ff
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x2c
	.uleb128 0xd
	.long	.LASF98
	.byte	0x1
	.byte	0xcd
	.long	0x265
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x496
	.uleb128 0xf
	.long	.LASF89
	.byte	0x1
	.byte	0xcd
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF99
	.byte	0x1
	.byte	0x9
	.long	0x265
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ff
	.uleb128 0xf
	.long	.LASF89
	.byte	0x1
	.byte	0x9
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0x9
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x9
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.long	.LASF84
	.byte	0x1
	.byte	0x9
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xf
	.long	.LASF100
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.long	.LVL38
	.long	0x46e
	.byte	0
	.uleb128 0x17
	.long	.LASF104
	.long	.LASF104
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL1
	.long	.LFE15
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x56
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL5
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x52
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL23
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x52
	.long	.LVL30
	.long	.LVL33
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL23
	.long	.LVL32
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x57
	.long	.LVL33
	.long	.LFE14
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST6:
	.long	.LVL23
	.long	.LVL29
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL32
	.long	.LVL34
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL23
	.long	.LVL25
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LVL34
	.value	0x2
	.byte	0x34
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB15
	.long	.LFE15
	.long	.LFB13
	.long	.LFE13
	.long	.LFB16
	.long	.LFE16
	.long	.LFB14
	.long	.LFE14
	.long	.LFB17
	.long	.LFE17
	.long	.LFB12
	.long	.LFE12
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF74:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF42:
	.string	"RHINO_INV_SCHED_WAY"
.LASF60:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF100:
	.string	"block_size"
.LASF46:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF34:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF57:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF48:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF20:
	.string	"RHINO_RUNNING"
.LASF73:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF68:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"size_t"
.LASF15:
	.string	"sizetype"
.LASF95:
	.string	"ringbuf_pop"
.LASF18:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF54:
	.string	"RHINO_BLK_TIMEOUT"
.LASF85:
	.string	"blk_size"
.LASF23:
	.string	"RHINO_NULL_PTR"
.LASF10:
	.string	"__uint32_t"
.LASF67:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF86:
	.string	"k_ringbuf_t"
.LASF33:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF81:
	.string	"head"
.LASF13:
	.string	"uint8_t"
.LASF78:
	.string	"RHINO_TASK_STACK_OVF"
.LASF70:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF38:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF44:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF88:
	.string	"ringbuf_push"
.LASF98:
	.string	"ringbuf_reset"
.LASF92:
	.string	"split_len"
.LASF1:
	.string	"long long int"
.LASF12:
	.string	"long long unsigned int"
.LASF45:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF26:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF96:
	.string	"pdata"
.LASF9:
	.string	"long int"
.LASF22:
	.string	"RHINO_INV_PARAM"
.LASF29:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF5:
	.string	"__uint8_t"
.LASF65:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF83:
	.string	"freesize"
.LASF56:
	.string	"RHINO_BLK_INV_STATE"
.LASF69:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF25:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF91:
	.string	"len_bytes"
.LASF2:
	.string	"long double"
.LASF82:
	.string	"tail"
.LASF6:
	.string	"unsigned char"
.LASF80:
	.string	"kstat_t"
.LASF94:
	.string	"ringbuf_is_empty"
.LASF3:
	.string	"signed char"
.LASF71:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF66:
	.string	"RHINO_SEM_OVF"
.LASF14:
	.string	"uint32_t"
.LASF35:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"RHINO_NO_MEM"
.LASF101:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF41:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF17:
	.string	"RHINO_SUCCESS"
.LASF102:
	.string	"src/k_ringbuf.c"
.LASF21:
	.string	"RHINO_STOPPED"
.LASF63:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF8:
	.string	"short unsigned int"
.LASF77:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF49:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF16:
	.string	"char"
.LASF24:
	.string	"RHINO_INV_ALIGN"
.LASF84:
	.string	"type"
.LASF62:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF99:
	.string	"ringbuf_init"
.LASF27:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF28:
	.string	"RHINO_KOBJ_BLK"
.LASF72:
	.string	"RHINO_TRY_AGAIN"
.LASF37:
	.string	"RHINO_RINGBUF_FULL"
.LASF79:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF90:
	.string	"data"
.LASF76:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF11:
	.string	"long unsigned int"
.LASF51:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF43:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF31:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF75:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF61:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF55:
	.string	"RHINO_BLK_DEL"
.LASF64:
	.string	"RHINO_QUEUE_FULL"
.LASF50:
	.string	"RHINO_INV_TASK_STATE"
.LASF40:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF93:
	.string	"c_len"
.LASF47:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF53:
	.string	"RHINO_BLK_ABORT"
.LASF103:
	.string	"/home/stone/Documents/pca"
.LASF87:
	.string	"ringbuf_is_full"
.LASF59:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF104:
	.string	"__stack_chk_fail"
.LASF32:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF58:
	.string	"RHINO_TIMER_STATE_INV"
.LASF39:
	.string	"RHINO_SCHED_DISABLE"
.LASF52:
	.string	"RHINO_NO_PEND_WAIT"
.LASF30:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
.LASF97:
	.string	"plen"
.LASF89:
	.string	"p_ringbuf"
.LASF19:
	.string	"RHINO_SYS_SP_ERR"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

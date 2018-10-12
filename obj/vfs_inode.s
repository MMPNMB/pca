	.file	"vfs_inode.c"
	.text
.Ltext0:
	.section	.text.unlikely.inode_init,"ax",@progbits
.LCOLDB0:
	.section	.text.inode_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.inode_init
.Ltext_cold0:
	.section	.text.inode_init
	.globl	inode_init
	.type	inode_init, @function
inode_init:
.LFB22:
	.file 1 "kernel/vfs/vfs_inode.c"
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 17 0
	movl	$g_vfs_dev_nodes, %edx
	xorl	%eax, %eax
	movl	$150, %ecx
	.loc 1 16 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 17 0
	movl	%edx, %edi
	rep stosl
	.loc 1 19 0
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	inode_init, .-inode_init
	.section	.text.unlikely.inode_init
.LCOLDE0:
	.section	.text.inode_init
.LHOTE0:
	.section	.text.unlikely.inode_alloc,"ax",@progbits
.LCOLDB1:
	.section	.text.inode_alloc,"ax",@progbits
.LHOTB1:
	.globl	inode_alloc
	.type	inode_alloc, @function
inode_alloc:
.LFB23:
	.loc 1 22 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$g_vfs_dev_nodes, %edx
	.loc 1 23 0
	xorl	%eax, %eax
	.loc 1 22 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL1:
.L5:
	.loc 1 26 0
	cmpb	$0, 16(%edx)
	je	.L4
	.loc 1 25 0
	incl	%eax
.LVL2:
	addl	$24, %edx
	cmpl	$25, %eax
	jne	.L5
	.loc 1 31 0
	movl	$-12, %eax
.LVL3:
.L4:
	.loc 1 32 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	inode_alloc, .-inode_alloc
	.section	.text.unlikely.inode_alloc
.LCOLDE1:
	.section	.text.inode_alloc
.LHOTE1:
	.section	.text.unlikely.inode_del,"ax",@progbits
.LCOLDB2:
	.section	.text.inode_del,"ax",@progbits
.LHOTB2:
	.globl	inode_del
	.type	inode_del, @function
inode_del:
.LFB24:
	.loc 1 35 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 35 0
	movl	8(%ebp), %ebx
	movl	$-16, %eax
	.loc 1 36 0
	cmpb	$0, 17(%ebx)
	jne	.L11
.LVL5:
.LBB6:
.LBB7:
	.loc 1 41 0
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 42 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL6:
	addl	$16, %esp
.L12:
	.loc 1 45 0
	movl	$0, 8(%ebx)
	.loc 1 46 0
	movl	$0, 4(%ebx)
	.loc 1 48 0
	xorl	%eax, %eax
	.loc 1 47 0
	movl	$0, 12(%ebx)
	.loc 1 48 0
	movb	$0, 16(%ebx)
.LVL7:
.L11:
.LBE7:
.LBE6:
	.loc 1 52 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	inode_del, .-inode_del
	.section	.text.unlikely.inode_del
.LCOLDE2:
	.section	.text.inode_del
.LHOTE2:
	.section	.text.unlikely.inode_open,"ax",@progbits
.LCOLDB3:
	.section	.text.inode_open,"ax",@progbits
.LHOTB3:
	.globl	inode_open
	.type	inode_open, @function
inode_open:
.LFB25:
	.loc 1 55 0
	.cfi_startproc
.LVL8:
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
	movl	$g_vfs_dev_nodes, %ebx
	subl	$28, %esp
	.loc 1 55 0
	movl	8(%ebp), %esi
.LVL9:
.L23:
	.loc 1 64 0
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	.L20
	.loc 1 67 0
	cmpb	$3, 16(%ebx)
	jne	.L21
	.loc 1 68 0
	movl	%edx, %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz scasb
	movl	%edx, -28(%ebp)
	notl	%ecx
	leal	-1(%ecx), %eax
	movl	%ecx, %edi
	pushl	%ecx
	pushl	%eax
	pushl	%esi
	pushl	%edx
	call	strncmp
.LVL10:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-28(%ebp), %edx
	jne	.L21
	.loc 1 68 0 is_stmt 0 discriminator 1
	cmpb	$47, -1(%esi,%edi)
	je	.L25
.L21:
	.loc 1 73 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	%edx
	call	strcmp
.LVL11:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L25
.L20:
	addl	$24, %ebx
.LVL12:
	.loc 1 59 0
	cmpl	$g_vfs_dev_nodes+600, %ebx
	jne	.L23
	.loc 1 78 0
	xorl	%eax, %eax
	jmp	.L22
.LVL13:
.L25:
	.loc 1 60 0
	movl	%ebx, %eax
.LVL14:
.L22:
	.loc 1 79 0
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
.LFE25:
	.size	inode_open, .-inode_open
	.section	.text.unlikely.inode_open
.LCOLDE3:
	.section	.text.inode_open
.LHOTE3:
	.section	.text.unlikely.inode_ptr_get,"ax",@progbits
.LCOLDB4:
	.section	.text.inode_ptr_get,"ax",@progbits
.LHOTB4:
	.globl	inode_ptr_get
	.type	inode_ptr_get, @function
inode_ptr_get:
.LFB26:
	.loc 1 82 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-22, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 82 0
	movl	8(%ebp), %edx
	.loc 1 83 0
	cmpl	$24, %edx
	ja	.L32
	.loc 1 87 0
	imull	$24, %edx, %edx
	movl	12(%ebp), %eax
	addl	$g_vfs_dev_nodes, %edx
	movl	%edx, (%eax)
	.loc 1 89 0
	xorl	%eax, %eax
.L32:
	.loc 1 90 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	inode_ptr_get, .-inode_ptr_get
	.section	.text.unlikely.inode_ptr_get
.LCOLDE4:
	.section	.text.inode_ptr_get
.LHOTE4:
	.section	.text.unlikely.inode_ref,"ax",@progbits
.LCOLDB5:
	.section	.text.inode_ref,"ax",@progbits
.LHOTB5:
	.globl	inode_ref
	.type	inode_ref, @function
inode_ref:
.LFB27:
	.loc 1 93 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 93 0
	movl	8(%ebp), %eax
	.loc 1 94 0
	incb	17(%eax)
	.loc 1 95 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	inode_ref, .-inode_ref
	.section	.text.unlikely.inode_ref
.LCOLDE5:
	.section	.text.inode_ref
.LHOTE5:
	.section	.text.unlikely.inode_unref,"ax",@progbits
.LCOLDB6:
	.section	.text.inode_unref,"ax",@progbits
.LHOTB6:
	.globl	inode_unref
	.type	inode_unref, @function
inode_unref:
.LFB28:
	.loc 1 98 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 98 0
	movl	8(%ebp), %edx
	.loc 1 99 0
	movb	17(%edx), %al
	testb	%al, %al
	je	.L38
	.loc 1 100 0
	decl	%eax
	movb	%al, 17(%edx)
.L38:
	.loc 1 102 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	inode_unref, .-inode_unref
	.section	.text.unlikely.inode_unref
.LCOLDE6:
	.section	.text.inode_unref
.LHOTE6:
	.section	.text.unlikely.inode_busy,"ax",@progbits
.LCOLDB7:
	.section	.text.inode_busy,"ax",@progbits
.LHOTB7:
	.globl	inode_busy
	.type	inode_busy, @function
inode_busy:
.LFB29:
	.loc 1 105 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 106 0
	movl	8(%ebp), %eax
	.loc 1 107 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 106 0
	cmpb	$0, 17(%eax)
	setne	%al
	movzbl	%al, %eax
	.loc 1 107 0
	ret
	.cfi_endproc
.LFE29:
	.size	inode_busy, .-inode_busy
	.section	.text.unlikely.inode_busy
.LCOLDE7:
	.section	.text.inode_busy
.LHOTE7:
	.section	.text.unlikely.inode_avail_count,"ax",@progbits
.LCOLDB8:
	.section	.text.inode_avail_count,"ax",@progbits
.LHOTB8:
	.globl	inode_avail_count
	.type	inode_avail_count, @function
inode_avail_count:
.LFB30:
	.loc 1 110 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$25, %edx
	.loc 1 111 0
	xorl	%eax, %eax
	.loc 1 110 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL20:
.L48:
	.loc 1 115 0
	imull	$24, %eax, %ecx
	addl	$g_vfs_dev_nodes, %ecx
	.loc 1 116 0
	cmpb	$1, 16(%ecx)
	adcl	$0, %eax
.LVL21:
	.loc 1 114 0
	decl	%edx
.LVL22:
	jne	.L48
	.loc 1 121 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	inode_avail_count, .-inode_avail_count
	.section	.text.unlikely.inode_avail_count
.LCOLDE8:
	.section	.text.inode_avail_count
.LHOTE8:
	.section	.text.unlikely.inode_reserve,"ax",@progbits
.LCOLDB9:
	.section	.text.inode_reserve,"ax",@progbits
.LHOTB9:
	.globl	inode_reserve
	.type	inode_reserve, @function
inode_reserve:
.LFB32:
	.loc 1 142 0
	.cfi_startproc
.LVL23:
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
	.loc 1 142 0
	movl	8(%ebp), %esi
	.loc 1 146 0
	testl	%esi, %esi
	je	.L55
	cmpl	$0, 12(%ebp)
	jne	.L52
.L55:
	.loc 1 146 0
	movl	$-22, %edi
	jmp	.L54
.L52:
	.loc 1 147 0
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 150 0
	cmpb	$47, (%esi)
	jne	.L55
	.loc 1 154 0
	call	inode_alloc
.LVL24:
	.loc 1 155 0
	testl	%eax, %eax
	movl	%eax, %edi
	js	.L54
.LVL25:
	.loc 1 144 0
	xorl	%edx, %edx
.LBB12:
.LBB13:
	.loc 1 83 0
	cmpl	$24, %eax
	jg	.L56
	.loc 1 87 0
	imull	$24, %eax, %eax
.LVL26:
	leal	g_vfs_dev_nodes(%eax), %edx
.LVL27:
.L56:
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	.loc 1 128 0
	xorl	%eax, %eax
	movl	%edx, -32(%ebp)
.LVL28:
	orl	$-1, %ecx
	movl	%esi, %edi
.LVL29:
	.loc 1 129 0
	subl	$12, %esp
	.loc 1 128 0
	repnz scasb
.LVL30:
	.loc 1 131 0
	movl	$-12, %edi
	.loc 1 128 0
	movl	%ecx, %ebx
	notl	%ebx
	leal	-1(%ebx), %ecx
	.loc 1 129 0
	pushl	%ebx
	.loc 1 128 0
	movl	%ecx, -28(%ebp)
.LVL31:
	.loc 1 129 0
	call	aos_malloc
.LVL32:
	.loc 1 130 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L54
	.loc 1 135 0
	movl	-32(%ebp), %edx
	.loc 1 134 0
	movl	%eax, %edi
	movl	-28(%ebp), %ecx
	rep movsb
.LVL33:
.LBE15:
.LBE14:
	.loc 1 167 0
	xorl	%edi, %edi
.LBB17:
.LBB16:
	.loc 1 135 0
	movl	%eax, 8(%edx)
	.loc 1 136 0
	movb	$0, -1(%eax,%ebx)
.LVL34:
.LBE16:
.LBE17:
	.loc 1 166 0
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
.LVL35:
.L54:
	.loc 1 168 0
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
.LFE32:
	.size	inode_reserve, .-inode_reserve
	.section	.text.unlikely.inode_reserve
.LCOLDE9:
	.section	.text.inode_reserve
.LHOTE9:
	.section	.text.unlikely.inode_release,"ax",@progbits
.LCOLDB10:
	.section	.text.inode_release,"ax",@progbits
.LHOTB10:
	.globl	inode_release
	.type	inode_release, @function
inode_release:
.LFB33:
	.loc 1 171 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 175 0
	movl	$-22, %edx
	.loc 1 171 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 171 0
	movl	8(%ebp), %eax
	.loc 1 175 0
	testl	%eax, %eax
	je	.L62
	.loc 1 177 0
	subl	$12, %esp
	pushl	%eax
	call	inode_open
.LVL37:
	addl	$16, %esp
.LVL38:
	.loc 1 178 0
	testl	%eax, %eax
	.loc 1 179 0
	movl	$-19, %edx
	.loc 1 178 0
	je	.L62
	.loc 1 182 0
	subl	$12, %esp
	pushl	%eax
	call	inode_del
.LVL39:
	addl	$16, %esp
	movl	$0, %edx
	testl	%eax, %eax
	cmovle	%eax, %edx
.LVL40:
.L62:
	.loc 1 188 0
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	inode_release, .-inode_release
	.section	.text.unlikely.inode_release
.LCOLDE10:
	.section	.text.inode_release
.LHOTE10:
	.section	.bss.g_vfs_dev_nodes,"aw",@nobits
	.align 32
	.type	g_vfs_dev_nodes, @object
	.size	g_vfs_dev_nodes, 600
g_vfs_dev_nodes:
	.zero	600
	.text
.Letext0:
	.section	.text.unlikely.inode_init
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 9 "./include/aos/types.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./include/aos/vfs.h"
	.file 12 "./kernel/vfs/include/vfs_inode.h"
	.file 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 14 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb43
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF123
	.byte	0xc
	.long	.LASF124
	.long	.LASF125
	.long	.Ldebug_ranges0+0x18
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
	.byte	0x1c
	.long	0x73
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x20
	.long	0x73
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x2c
	.long	0x73
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x36
	.long	0x65
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x3a
	.long	0x6c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x3d
	.long	0x6c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x49
	.long	0x6c
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x58
	.long	0x7a
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x64
	.long	0xa9
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x91
	.long	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF23
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0xcb
	.long	0x6c
	.uleb128 0x6
	.byte	0x4
	.long	0x11b
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x6
	.byte	0x4
	.long	0x128
	.uleb128 0x7
	.long	0x11b
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF27
	.byte	0x6
	.byte	0x28
	.long	0x73
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x71
	.long	0x93
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x76
	.long	0x9e
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x9b
	.long	0xd5
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0xad
	.long	0xeb
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0xb1
	.long	0xb4
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0xb5
	.long	0xbf
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0xb9
	.long	0xca
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0xc8
	.long	0xf6
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0xcd
	.long	0xe0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0xd2
	.long	0x10a
	.uleb128 0x8
	.long	.LASF55
	.byte	0x3c
	.byte	0x8
	.byte	0x1b
	.long	0x28a
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x1d
	.long	0x16f
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x1e
	.long	0x159
	.byte	0x2
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x1f
	.long	0x19b
	.byte	0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x20
	.long	0x1a6
	.byte	0x8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x21
	.long	0x17a
	.byte	0xa
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x22
	.long	0x185
	.byte	0xc
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x23
	.long	0x16f
	.byte	0xe
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x24
	.long	0x164
	.byte	0x10
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x32
	.long	0x138
	.byte	0x14
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x33
	.long	0x73
	.byte	0x18
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x34
	.long	0x138
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x35
	.long	0x73
	.byte	0x20
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x36
	.long	0x138
	.byte	0x24
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x37
	.long	0x73
	.byte	0x28
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x38
	.long	0x14e
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x39
	.long	0x143
	.byte	0x30
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x3a
	.long	0x28a
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.long	0x73
	.long	0x29a
	.uleb128 0xb
	.long	0x101
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x8
	.byte	0x9
	.byte	0x11
	.long	0x2ca
	.uleb128 0xc
	.string	"fd"
	.byte	0x9
	.byte	0x12
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x9
	.byte	0x13
	.long	0x65
	.byte	0x4
	.uleb128 0x9
	.long	.LASF58
	.byte	0x9
	.byte	0x14
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0x2df
	.uleb128 0xc
	.string	"hdl"
	.byte	0xa
	.byte	0x14
	.long	0x108
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF59
	.byte	0xa
	.byte	0x15
	.long	0x2ca
	.uleb128 0x3
	.long	.LASF60
	.byte	0xa
	.byte	0x18
	.long	0x2df
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.long	0x322
	.uleb128 0x9
	.long	.LASF61
	.byte	0xb
	.byte	0x11
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0xb
	.byte	0x12
	.long	0x12d
	.byte	0x4
	.uleb128 0x9
	.long	.LASF63
	.byte	0xb
	.byte	0x13
	.long	0x322
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x11b
	.long	0x331
	.uleb128 0xe
	.long	0x101
	.byte	0
	.uleb128 0x3
	.long	.LASF64
	.byte	0xb
	.byte	0x14
	.long	0x2f5
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.long	0x35d
	.uleb128 0x9
	.long	.LASF65
	.byte	0xb
	.byte	0x17
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.byte	0x18
	.long	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0xb
	.byte	0x19
	.long	0x33c
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF68
	.uleb128 0xf
	.byte	0x4
	.long	0x37
	.byte	0xc
	.byte	0x11
	.long	0x394
	.uleb128 0x10
	.long	.LASF69
	.byte	0
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.uleb128 0x10
	.long	.LASF71
	.byte	0x2
	.uleb128 0x10
	.long	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0xc
	.byte	0x2b
	.long	0x3f4
	.uleb128 0x8
	.long	.LASF74
	.byte	0x18
	.byte	0xc
	.byte	0x46
	.long	0x3f4
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x47
	.long	0x5d4
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x48
	.long	0x5e9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xc
	.byte	0x49
	.long	0x608
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xc
	.byte	0x4a
	.long	0x62e
	.byte	0xc
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x4b
	.long	0x64d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0xc
	.byte	0x4d
	.long	0x676
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0x39f
	.uleb128 0x3
	.long	.LASF81
	.byte	0xc
	.byte	0x2c
	.long	0x4b9
	.uleb128 0x8
	.long	.LASF82
	.byte	0x38
	.byte	0xc
	.byte	0x51
	.long	0x4b9
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x52
	.long	0x695
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x53
	.long	0x5e9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xc
	.byte	0x54
	.long	0x6b4
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xc
	.byte	0x55
	.long	0x6d3
	.byte	0xc
	.uleb128 0x9
	.long	.LASF83
	.byte	0xc
	.byte	0x56
	.long	0x6f2
	.byte	0x10
	.uleb128 0x9
	.long	.LASF84
	.byte	0xc
	.byte	0x57
	.long	0x5e9
	.byte	0x14
	.uleb128 0x9
	.long	.LASF55
	.byte	0xc
	.byte	0x58
	.long	0x717
	.byte	0x18
	.uleb128 0x9
	.long	.LASF85
	.byte	0xc
	.byte	0x59
	.long	0x731
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF86
	.byte	0xc
	.byte	0x5a
	.long	0x750
	.byte	0x20
	.uleb128 0x9
	.long	.LASF87
	.byte	0xc
	.byte	0x5b
	.long	0x770
	.byte	0x24
	.uleb128 0x9
	.long	.LASF88
	.byte	0xc
	.byte	0x5c
	.long	0x790
	.byte	0x28
	.uleb128 0x9
	.long	.LASF89
	.byte	0xc
	.byte	0x5d
	.long	0x7aa
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF90
	.byte	0xc
	.byte	0x5e
	.long	0x731
	.byte	0x30
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x5f
	.long	0x64d
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x404
	.uleb128 0x11
	.long	.LASF126
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.long	0x4e1
	.uleb128 0x12
	.long	.LASF91
	.byte	0xc
	.byte	0x2f
	.long	0x4e1
	.uleb128 0x12
	.long	.LASF92
	.byte	0xc
	.byte	0x30
	.long	0x4e7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x394
	.uleb128 0x6
	.byte	0x4
	.long	0x3f9
	.uleb128 0xd
	.byte	0x18
	.byte	0xc
	.byte	0x34
	.long	0x54a
	.uleb128 0xc
	.string	"ops"
	.byte	0xc
	.byte	0x35
	.long	0x4be
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0xc
	.byte	0x36
	.long	0x108
	.byte	0x4
	.uleb128 0x9
	.long	.LASF94
	.byte	0xc
	.byte	0x37
	.long	0x115
	.byte	0x8
	.uleb128 0x9
	.long	.LASF95
	.byte	0xc
	.byte	0x38
	.long	0x25
	.byte	0xc
	.uleb128 0x9
	.long	.LASF96
	.byte	0xc
	.byte	0x39
	.long	0x12d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF97
	.byte	0xc
	.byte	0x3a
	.long	0x12d
	.byte	0x11
	.uleb128 0x9
	.long	.LASF98
	.byte	0xc
	.byte	0x3b
	.long	0x2ea
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0xc
	.byte	0x3c
	.long	0x4ed
	.uleb128 0xd
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.long	0x582
	.uleb128 0x9
	.long	.LASF100
	.byte	0xc
	.byte	0x3f
	.long	0x582
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0x40
	.long	0x108
	.byte	0x4
	.uleb128 0x9
	.long	.LASF102
	.byte	0xc
	.byte	0x41
	.long	0x2c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54a
	.uleb128 0x3
	.long	.LASF103
	.byte	0xc
	.byte	0x42
	.long	0x555
	.uleb128 0x3
	.long	.LASF104
	.byte	0xc
	.byte	0x45
	.long	0x59e
	.uleb128 0x6
	.byte	0x4
	.long	0x5a4
	.uleb128 0x13
	.long	0x5b4
	.uleb128 0x14
	.long	0x5b4
	.uleb128 0x14
	.long	0x108
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x29a
	.uleb128 0x15
	.long	0x25
	.long	0x5ce
	.uleb128 0x14
	.long	0x582
	.uleb128 0x14
	.long	0x5ce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x588
	.uleb128 0x6
	.byte	0x4
	.long	0x5ba
	.uleb128 0x15
	.long	0x25
	.long	0x5e9
	.uleb128 0x14
	.long	0x5ce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5da
	.uleb128 0x15
	.long	0x190
	.long	0x608
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x108
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ef
	.uleb128 0x15
	.long	0x190
	.long	0x627
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x627
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62d
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x4
	.long	0x60e
	.uleb128 0x15
	.long	0x25
	.long	0x64d
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x25
	.uleb128 0x14
	.long	0x85
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x634
	.uleb128 0x15
	.long	0x25
	.long	0x676
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x368
	.uleb128 0x14
	.long	0x593
	.uleb128 0x14
	.long	0x5b4
	.uleb128 0x14
	.long	0x108
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x653
	.uleb128 0x15
	.long	0x25
	.long	0x695
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x67c
	.uleb128 0x15
	.long	0x190
	.long	0x6b4
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x115
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x69b
	.uleb128 0x15
	.long	0x190
	.long	0x6d3
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6ba
	.uleb128 0x15
	.long	0x164
	.long	0x6f2
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x164
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6d9
	.uleb128 0x15
	.long	0x25
	.long	0x711
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x711
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b1
	.uleb128 0x6
	.byte	0x4
	.long	0x6f8
	.uleb128 0x15
	.long	0x25
	.long	0x731
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x71d
	.uleb128 0x15
	.long	0x25
	.long	0x750
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x737
	.uleb128 0x15
	.long	0x76a
	.long	0x76a
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x35d
	.uleb128 0x6
	.byte	0x4
	.long	0x756
	.uleb128 0x15
	.long	0x78a
	.long	0x78a
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x76a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x331
	.uleb128 0x6
	.byte	0x4
	.long	0x776
	.uleb128 0x15
	.long	0x25
	.long	0x7aa
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x76a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x796
	.uleb128 0x17
	.long	.LASF105
	.byte	0x1
	.byte	0x22
	.long	0x25
	.byte	0x1
	.long	0x7cc
	.uleb128 0x18
	.long	.LASF100
	.byte	0x1
	.byte	0x22
	.long	0x582
	.byte	0
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.byte	0x51
	.long	0x25
	.byte	0x1
	.long	0x7f2
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0x51
	.long	0x25
	.uleb128 0x18
	.long	.LASF100
	.byte	0x1
	.byte	0x51
	.long	0x7f2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x582
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.byte	0xf
	.long	0x25
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.byte	0x15
	.long	0x25
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x834
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x17
	.long	0x25
	.long	.LLST0
	.byte	0
	.uleb128 0x1d
	.long	0x7b0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x86c
	.uleb128 0x1e
	.long	0x7c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LBB6
	.long	.LBE6-.LBB6
	.uleb128 0x20
	.long	0x7c0
	.long	.LLST1
	.uleb128 0x21
	.long	.LVL6
	.long	0xb18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.byte	0x36
	.long	0x582
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c2
	.uleb128 0x22
	.long	.LASF109
	.byte	0x1
	.byte	0x36
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x38
	.long	0x25
	.long	.LLST2
	.uleb128 0x23
	.long	.LASF100
	.byte	0x1
	.byte	0x39
	.long	0x582
	.long	.LLST3
	.uleb128 0x21
	.long	.LVL10
	.long	0xb24
	.uleb128 0x21
	.long	.LVL11
	.long	0xb2f
	.byte	0
	.uleb128 0x1d
	.long	0x7cc
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e6
	.uleb128 0x1e
	.long	0x7dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	0x7e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x24
	.long	.LASF110
	.byte	0x1
	.byte	0x5c
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x90a
	.uleb128 0x22
	.long	.LASF100
	.byte	0x1
	.byte	0x5c
	.long	0x582
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LASF111
	.byte	0x1
	.byte	0x61
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x92e
	.uleb128 0x22
	.long	.LASF100
	.byte	0x1
	.byte	0x61
	.long	0x582
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0x68
	.long	0x25
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x956
	.uleb128 0x22
	.long	.LASF100
	.byte	0x1
	.byte	0x68
	.long	0x582
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0x6d
	.long	0x25
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x98c
	.uleb128 0x23
	.long	.LASF114
	.byte	0x1
	.byte	0x6f
	.long	0x25
	.long	.LLST4
	.uleb128 0x1c
	.string	"e"
	.byte	0x1
	.byte	0x70
	.long	0x25
	.long	.LLST5
	.byte	0
	.uleb128 0x25
	.long	.LASF128
	.byte	0x1
	.byte	0x7b
	.long	0x25
	.byte	0x1
	.long	0x9c9
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x7b
	.long	0x122
	.uleb128 0x18
	.long	.LASF115
	.byte	0x1
	.byte	0x7b
	.long	0x7f2
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.byte	0x7d
	.long	0x2c
	.uleb128 0x26
	.string	"mem"
	.byte	0x1
	.byte	0x7e
	.long	0x108
	.byte	0
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0x8d
	.long	0x25
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xa94
	.uleb128 0x27
	.long	.LASF109
	.byte	0x1
	.byte	0x8d
	.long	0x122
	.long	.LLST6
	.uleb128 0x22
	.long	.LASF115
	.byte	0x1
	.byte	0x8d
	.long	0x7f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0x8f
	.long	0x25
	.long	.LLST7
	.uleb128 0x23
	.long	.LASF100
	.byte	0x1
	.byte	0x90
	.long	0x582
	.long	.LLST8
	.uleb128 0x28
	.long	0x7cc
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0x9f
	.long	0xa43
	.uleb128 0x20
	.long	0x7e6
	.long	.LLST9
	.uleb128 0x20
	.long	0x7dc
	.long	.LLST10
	.byte	0
	.uleb128 0x29
	.long	0x98c
	.long	.LBB14
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa1
	.long	0xa8a
	.uleb128 0x20
	.long	0x9a7
	.long	.LLST11
	.uleb128 0x20
	.long	0x99c
	.long	.LLST12
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0
	.uleb128 0x2b
	.long	0x9b2
	.long	.LLST13
	.uleb128 0x2b
	.long	0x9bd
	.long	.LLST14
	.uleb128 0x21
	.long	.LVL32
	.long	0xb3a
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LVL24
	.long	0x80d
	.byte	0
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xaa
	.long	0x25
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xaec
	.uleb128 0x22
	.long	.LASF109
	.byte	0x1
	.byte	0xaa
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xac
	.long	0x25
	.long	.LLST15
	.uleb128 0x23
	.long	.LASF100
	.byte	0x1
	.byte	0xad
	.long	0x582
	.long	.LLST16
	.uleb128 0x21
	.long	.LVL37
	.long	0x86c
	.uleb128 0x21
	.long	.LVL39
	.long	0x7b0
	.byte	0
	.uleb128 0xa
	.long	0x54a
	.long	0xafc
	.uleb128 0xb
	.long	0x101
	.byte	0x18
	.byte	0
	.uleb128 0x2c
	.long	.LASF118
	.byte	0x1
	.byte	0xd
	.long	0xaec
	.uleb128 0x5
	.byte	0x3
	.long	g_vfs_dev_nodes
	.uleb128 0x2d
	.long	.LASF129
	.byte	0xe
	.byte	0x17
	.long	0x37
	.uleb128 0x2e
	.long	.LASF119
	.long	.LASF119
	.byte	0xa
	.value	0x200
	.uleb128 0x2f
	.long	.LASF120
	.long	.LASF120
	.byte	0xd
	.byte	0x27
	.uleb128 0x2f
	.long	.LASF121
	.long	.LASF121
	.byte	0xd
	.byte	0x20
	.uleb128 0x2e
	.long	.LASF122
	.long	.LASF122
	.byte	0xa
	.value	0x1e8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	.LVL12
	.long	.LVL13
	.value	0x3
	.byte	0x73
	.sleb128 -24
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LFE30
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x5
	.byte	0x49
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.value	0x5
	.byte	0x4a
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LFE30
	.value	0x5
	.byte	0x49
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL23
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL29
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST8:
	.long	.LVL23
	.long	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL32-1
	.value	0x1
	.byte	0x52
	.long	.LVL32-1
	.long	.LVL35
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST9:
	.long	.LVL25
	.long	.LVL28
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2574
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST11:
	.long	.LVL28
	.long	.LVL34
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2574
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL28
	.long	.LVL33
	.value	0x1
	.byte	0x56
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL31
	.long	.LVL32-1
	.value	0x1
	.byte	0x51
	.long	.LVL32-1
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST14:
	.long	.LVL32
	.long	.LVL34
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB14
	.long	.LBE14
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"aos_dirent_t"
.LASF128:
	.string	"inode_set_name"
.LASF120:
	.string	"strncmp"
.LASF108:
	.string	"inode_open"
.LASF99:
	.string	"inode_t"
.LASF127:
	.string	"inode_init"
.LASF67:
	.string	"aos_dir_t"
.LASF0:
	.string	"unsigned int"
.LASF110:
	.string	"inode_ref"
.LASF52:
	.string	"st_blksize"
.LASF106:
	.string	"inode_ptr_get"
.LASF97:
	.string	"refs"
.LASF57:
	.string	"events"
.LASF111:
	.string	"inode_unref"
.LASF87:
	.string	"opendir"
.LASF84:
	.string	"sync"
.LASF24:
	.string	"__nlink_t"
.LASF71:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF94:
	.string	"i_name"
.LASF63:
	.string	"d_name"
.LASF19:
	.string	"__ino_t"
.LASF60:
	.string	"aos_mutex_t"
.LASF30:
	.string	"ino_t"
.LASF98:
	.string	"mutex"
.LASF93:
	.string	"i_arg"
.LASF50:
	.string	"st_ctime"
.LASF114:
	.string	"count"
.LASF85:
	.string	"unlink"
.LASF129:
	.string	"aos_log_level"
.LASF12:
	.string	"long long unsigned int"
.LASF53:
	.string	"st_blocks"
.LASF117:
	.string	"inode_release"
.LASF102:
	.string	"offset"
.LASF48:
	.string	"st_mtime"
.LASF101:
	.string	"f_arg"
.LASF124:
	.string	"src/vfs_inode.c"
.LASF92:
	.string	"i_fops"
.LASF125:
	.string	"/home/stone/Documents/pca"
.LASF55:
	.string	"stat"
.LASF38:
	.string	"st_dev"
.LASF4:
	.string	"size_t"
.LASF20:
	.string	"__mode_t"
.LASF62:
	.string	"d_type"
.LASF113:
	.string	"inode_avail_count"
.LASF68:
	.string	"_Bool"
.LASF43:
	.string	"st_gid"
.LASF40:
	.string	"st_mode"
.LASF90:
	.string	"mkdir"
.LASF103:
	.string	"file_t"
.LASF41:
	.string	"st_nlink"
.LASF109:
	.string	"path"
.LASF79:
	.string	"ioctl"
.LASF72:
	.string	"VFS_TYPE_FS_DEV"
.LASF80:
	.string	"poll"
.LASF59:
	.string	"aos_hdl_t"
.LASF25:
	.string	"char"
.LASF28:
	.string	"blkcnt_t"
.LASF70:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF104:
	.string	"poll_notify_t"
.LASF76:
	.string	"close"
.LASF89:
	.string	"closedir"
.LASF46:
	.string	"st_atime"
.LASF35:
	.string	"ssize_t"
.LASF83:
	.string	"lseek"
.LASF112:
	.string	"inode_busy"
.LASF26:
	.string	"uint8_t"
.LASF96:
	.string	"type"
.LASF27:
	.string	"time_t"
.LASF82:
	.string	"fs_ops"
.LASF107:
	.string	"inode_alloc"
.LASF86:
	.string	"rename"
.LASF39:
	.string	"st_ino"
.LASF1:
	.string	"long long int"
.LASF78:
	.string	"write"
.LASF122:
	.string	"aos_malloc"
.LASF16:
	.string	"__dev_t"
.LASF32:
	.string	"dev_t"
.LASF105:
	.string	"inode_del"
.LASF74:
	.string	"file_ops"
.LASF73:
	.string	"file_ops_t"
.LASF56:
	.string	"pollfd"
.LASF47:
	.string	"st_spare1"
.LASF49:
	.string	"st_spare2"
.LASF51:
	.string	"st_spare3"
.LASF54:
	.string	"st_spare4"
.LASF2:
	.string	"long double"
.LASF18:
	.string	"__gid_t"
.LASF126:
	.string	"inode_ops_t"
.LASF34:
	.string	"gid_t"
.LASF91:
	.string	"i_ops"
.LASF33:
	.string	"uid_t"
.LASF58:
	.string	"revents"
.LASF7:
	.string	"short int"
.LASF95:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF118:
	.string	"g_vfs_dev_nodes"
.LASF116:
	.string	"inode_reserve"
.LASF100:
	.string	"node"
.LASF88:
	.string	"readdir"
.LASF14:
	.string	"__blksize_t"
.LASF17:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF77:
	.string	"read"
.LASF65:
	.string	"dd_vfs_fd"
.LASF75:
	.string	"open"
.LASF23:
	.string	"sizetype"
.LASF69:
	.string	"VFS_TYPE_NOT_INIT"
.LASF11:
	.string	"long unsigned int"
.LASF37:
	.string	"nlink_t"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF123:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF29:
	.string	"blksize_t"
.LASF45:
	.string	"st_size"
.LASF61:
	.string	"d_ino"
.LASF119:
	.string	"aos_free"
.LASF42:
	.string	"st_uid"
.LASF21:
	.string	"__off_t"
.LASF22:
	.string	"_ssize_t"
.LASF66:
	.string	"dd_rsv"
.LASF3:
	.string	"signed char"
.LASF36:
	.string	"mode_t"
.LASF31:
	.string	"off_t"
.LASF8:
	.string	"short unsigned int"
.LASF13:
	.string	"__blkcnt_t"
.LASF15:
	.string	"_off_t"
.LASF44:
	.string	"st_rdev"
.LASF81:
	.string	"fs_ops_t"
.LASF115:
	.string	"inode"
.LASF121:
	.string	"strcmp"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

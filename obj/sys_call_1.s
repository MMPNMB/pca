	.file	"sys_call_1.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"r"
	.section	.text.unlikely.foo,"ax",@progbits
.LCOLDB1:
	.section	.text.foo,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.foo
.Ltext_cold0:
	.section	.text.foo
	.globl	foo
	.type	foo, @function
foo:
.LFB13:
	.file 1 "src/sys_call_1.c"
	.loc 1 5 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 8 0
	pushl	$.LC0
	pushl	8(%ebp)
	call	fopen
.LVL1:
	movl	%eax, (%esp)
	movl	%eax, %ebx
.LVL2:
	call	_IO_getc
.LVL3:
	.loc 1 10 0
	popl	%eax
	pushl	stdin
	call	feof
.LVL4:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L3
	.loc 1 10 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	stdin
	call	ferror
.LVL5:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L9
.L3:
.LBB2:
	.loc 1 11 0 is_stmt 1
	subl	$12, %esp
	pushl	$1
	jmp	.L11
.L9:
.LBE2:
	.loc 1 13 0
	subl	$12, %esp
	pushl	%ebx
	call	fclose
.LVL6:
	addl	$16, %esp
	incl	%eax
	je	.L3
	.loc 1 16 0
	subl	$12, %esp
	pushl	$0
.L11:
	call	exit
.LVL7:
	.cfi_endproc
.LFE13:
	.size	foo, .-foo
	.section	.text.unlikely.foo
.LCOLDE1:
	.section	.text.foo
.LHOTE1:
	.section	.text.unlikely.make_s,"ax",@progbits
.LCOLDB2:
	.section	.text.make_s,"ax",@progbits
.LHOTB2:
	.globl	make_s
	.type	make_s, @function
make_s:
.LFB14:
	.loc 1 25 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 27 0
	pushl	$4
	call	malloc
.LVL9:
	.loc 1 29 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L14
	.loc 1 30 0
	xorl	%eax, %eax
.LVL10:
	jmp	.L13
.LVL11:
.L14:
.LVL12:
	.loc 1 33 0
	pushl	%eax
	pushl	$40
	pushl	8(%ebp)
	pushl	$0
	call	strncpy
.LVL13:
	.loc 1 35 0
	addl	$16, %esp
.L13:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	make_s, .-make_s
	.section	.text.unlikely.make_s
.LCOLDE2:
	.section	.text.make_s
.LHOTE2:
	.text
.Letext0:
	.section	.text.unlikely.foo
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 3 "/usr/include/i386-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x468
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF62
	.byte	0xc
	.long	.LASF63
	.long	.LASF64
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd8
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x37
	.long	0x61
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x83
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x84
	.long	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0xb8
	.uleb128 0x7
	.long	.LASF45
	.byte	0x94
	.byte	0x5
	.byte	0xf1
	.long	0x235
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xf2
	.long	0x5a
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xf7
	.long	0xa0
	.byte	0x4
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xf8
	.long	0xa0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xf9
	.long	0xa0
	.byte	0xc
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xfa
	.long	0xa0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.byte	0xfb
	.long	0xa0
	.byte	0x14
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xfc
	.long	0xa0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xfd
	.long	0xa0
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.byte	0xfe
	.long	0xa0
	.byte	0x20
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x100
	.long	0xa0
	.byte	0x24
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x101
	.long	0xa0
	.byte	0x28
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x102
	.long	0xa0
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x104
	.long	0x26d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x106
	.long	0x273
	.byte	0x34
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x108
	.long	0x5a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x10c
	.long	0x5a
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x10e
	.long	0x7a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x112
	.long	0x3e
	.byte	0x44
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x113
	.long	0x4c
	.byte	0x46
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x114
	.long	0x279
	.byte	0x47
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x118
	.long	0x289
	.byte	0x48
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x121
	.long	0x8c
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x129
	.long	0x9e
	.byte	0x54
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x12a
	.long	0x9e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x12b
	.long	0x9e
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x12c
	.long	0x9e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x12e
	.long	0x25
	.byte	0x64
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x12f
	.long	0x5a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.value	0x131
	.long	0x28f
	.byte	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0x5
	.byte	0x96
	.uleb128 0x7
	.long	.LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x9c
	.long	0x26d
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0x9d
	.long	0x26d
	.byte	0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0x9e
	.long	0x273
	.byte	0x4
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xa2
	.long	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x23c
	.uleb128 0x6
	.byte	0x4
	.long	0xb8
	.uleb128 0xb
	.long	0xa6
	.long	0x289
	.uleb128 0xc
	.long	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x235
	.uleb128 0xb
	.long	0xa6
	.long	0x29f
	.uleb128 0xc
	.long	0x97
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2a5
	.uleb128 0xd
	.long	0xa6
	.uleb128 0xe
	.string	"s"
	.byte	0x28
	.byte	0x1
	.byte	0x14
	.long	0x2c1
	.uleb128 0x8
	.long	.LASF50
	.byte	0x1
	.byte	0x15
	.long	0x2c1
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x5a
	.long	0x2d1
	.uleb128 0xc
	.long	0x97
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"foo"
	.byte	0x1
	.byte	0x4
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x4
	.long	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"fp"
	.byte	0x1
	.byte	0x6
	.long	0x36c
	.long	.LLST0
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x8
	.long	0x5a
	.uleb128 0x13
	.long	.LASF53
	.byte	0x6
	.byte	0
	.long	0x31a
	.uleb128 0x14
	.long	0x5a
	.byte	0
	.uleb128 0x15
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x335
	.uleb128 0x16
	.long	.LASF53
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.long	0x5a
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LVL1
	.long	0x40f
	.uleb128 0x17
	.long	.LVL3
	.long	0x41b
	.uleb128 0x17
	.long	.LVL4
	.long	0x427
	.uleb128 0x17
	.long	.LVL5
	.long	0x433
	.uleb128 0x17
	.long	.LVL6
	.long	0x43f
	.uleb128 0x17
	.long	.LVL7
	.long	0x44a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xad
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.byte	0x18
	.long	0x3fe
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fe
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0x18
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x1a
	.long	0x3fe
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x6
	.byte	0
	.long	0x9e
	.long	0x3bb
	.uleb128 0x14
	.long	0x30
	.byte	0
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x6
	.byte	0
	.long	0xa0
	.long	0x3da
	.uleb128 0x14
	.long	0xa0
	.uleb128 0x14
	.long	0x29f
	.uleb128 0x14
	.long	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x6
	.byte	0
	.long	0x3eb
	.uleb128 0x14
	.long	0x9e
	.byte	0
	.uleb128 0x17
	.long	.LVL9
	.long	0x455
	.uleb128 0x17
	.long	.LVL13
	.long	0x460
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2aa
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x4
	.byte	0xa8
	.long	0x273
	.uleb128 0x1d
	.long	.LASF57
	.long	.LASF57
	.byte	0x4
	.value	0x110
	.uleb128 0x1d
	.long	.LASF58
	.long	.LASF58
	.byte	0x5
	.value	0x1ad
	.uleb128 0x1d
	.long	.LASF59
	.long	.LASF59
	.byte	0x4
	.value	0x33c
	.uleb128 0x1d
	.long	.LASF60
	.long	.LASF60
	.byte	0x4
	.value	0x33e
	.uleb128 0x1e
	.long	.LASF61
	.long	.LASF61
	.byte	0x4
	.byte	0xed
	.uleb128 0x1e
	.long	.LASF53
	.long	.LASF53
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.long	.LASF54
	.long	.LASF54
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.long	.LASF55
	.long	.LASF55
	.byte	0x6
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
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
	.long	.LVL2
	.long	.LVL3-1
	.value	0x1
	.byte	0x50
	.long	.LVL3-1
	.long	.LFE13
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12
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
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"_IO_buf_end"
.LASF9:
	.string	"__quad_t"
.LASF57:
	.string	"fopen"
.LASF32:
	.string	"_old_offset"
.LASF27:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF54:
	.string	"malloc"
.LASF13:
	.string	"sizetype"
.LASF37:
	.string	"_offset"
.LASF21:
	.string	"_IO_write_ptr"
.LASF16:
	.string	"_flags"
.LASF23:
	.string	"_IO_buf_base"
.LASF28:
	.string	"_markers"
.LASF18:
	.string	"_IO_read_end"
.LASF56:
	.string	"free"
.LASF51:
	.string	"make_s"
.LASF6:
	.string	"long long int"
.LASF66:
	.string	"stdin"
.LASF36:
	.string	"_lock"
.LASF11:
	.string	"long int"
.LASF33:
	.string	"_cur_column"
.LASF63:
	.string	"src/sys_call_1.c"
.LASF49:
	.string	"_pos"
.LASF53:
	.string	"exit"
.LASF48:
	.string	"_sbuf"
.LASF59:
	.string	"feof"
.LASF45:
	.string	"_IO_FILE"
.LASF61:
	.string	"fclose"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"_IO_marker"
.LASF35:
	.string	"_shortbuf"
.LASF58:
	.string	"_IO_getc"
.LASF20:
	.string	"_IO_write_base"
.LASF44:
	.string	"_unused2"
.LASF17:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF55:
	.string	"strncpy"
.LASF14:
	.string	"char"
.LASF47:
	.string	"_next"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF50:
	.string	"data"
.LASF3:
	.string	"long unsigned int"
.LASF22:
	.string	"_IO_write_end"
.LASF12:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF29:
	.string	"_chain"
.LASF26:
	.string	"_IO_backup_base"
.LASF62:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF19:
	.string	"_IO_read_base"
.LASF34:
	.string	"_vtable_offset"
.LASF52:
	.string	"lcl_s"
.LASF64:
	.string	"/home/stone/Documents/pca"
.LASF25:
	.string	"_IO_save_base"
.LASF30:
	.string	"_fileno"
.LASF15:
	.string	"FILE"
.LASF60:
	.string	"ferror"
.LASF65:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

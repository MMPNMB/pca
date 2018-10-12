	.file	"sys_call_2.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"HOME"
.LC1:
	.string	"your home dir is: %s :"
	.section	.text.unlikely.main,"ax",@progbits
.LCOLDB2:
	.section	.text.startup.main,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.main
.Ltext_cold0:
	.section	.text.startup.main
	.globl	main
	.type	main, @function
main:
.LFB20:
	.file 1 "src/sys_call_2.c"
	.loc 1 5 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$92, %esp
	.loc 1 9 0
	pushl	$.LC0
	.loc 1 5 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 9 0
	call	getenv
.LVL0:
	.loc 1 10 0
	movsbl	%al, %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL1:
.LBB6:
.LBB7:
	.file 2 "/usr/include/i386-linux-gnu/bits/stdio2.h"
	.loc 2 33 0
	leal	-76(%ebp), %ebx
.LVL2:
	subl	$12, %esp
	pushl	%eax
	pushl	$.LC1
	pushl	$64
	pushl	$1
	pushl	%ebx
	call	__sprintf_chk
.LVL3:
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 2 104 0
	addl	$20, %esp
	pushl	%ebx
	call	puts
.LVL4:
	addl	$16, %esp
.LVL5:
.L2:
.LBE9:
.LBE8:
	.loc 1 15 0
	xorl	%eax, %eax
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L3
	call	__stack_chk_fail
.LVL6:
.L3:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	main, .-main
	.section	.text.unlikely.main
.LCOLDE2:
	.section	.text.startup.main
.LHOTE2:
	.text
.Letext0:
	.section	.text.unlikely.main
.Letext_cold0:
	.file 3 "<built-in>"
	.file 4 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1be
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF19
	.byte	0xc
	.long	.LASF20
	.long	.LASF21
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.long	0x78
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.long	0x85
	.uleb128 0x5
	.long	0x78
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x66
	.long	0x4f
	.byte	0x3
	.long	0xa7
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x66
	.long	0xa7
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.long	0x7f
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x1f
	.long	0x4f
	.byte	0x3
	.long	0xd4
	.uleb128 0xa
	.string	"__s"
	.byte	0x2
	.byte	0x1f
	.long	0xd4
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x1f
	.long	0xa7
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.long	0x72
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x4
	.long	0x4f
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x176
	.uleb128 0xc
	.long	.LASF14
	.byte	0x1
	.byte	0x6
	.long	0x78
	.long	.LLST0
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0x7
	.long	0x176
	.uleb128 0x3
	.byte	0x75
	.sleb128 -76
	.uleb128 0xe
	.long	0xac
	.long	.LBB6
	.long	.LBE6-.LBB6
	.byte	0x1
	.byte	0xb
	.long	0x13d
	.uleb128 0xf
	.long	0xc7
	.long	.LLST1
	.uleb128 0xf
	.long	0xbc
	.long	.LLST2
	.uleb128 0x10
	.long	.LVL3
	.long	0x186
	.byte	0
	.uleb128 0xe
	.long	0x8a
	.long	.LBB8
	.long	.LBE8-.LBB8
	.byte	0x1
	.byte	0xc
	.long	0x163
	.uleb128 0xf
	.long	0x9a
	.long	.LLST3
	.uleb128 0x10
	.long	.LVL4
	.long	0x19d
	.byte	0
	.uleb128 0x10
	.long	.LVL0
	.long	0x1ac
	.uleb128 0x10
	.long	.LVL6
	.long	0x1b8
	.byte	0
	.uleb128 0x11
	.long	0x78
	.long	0x186
	.uleb128 0x12
	.long	0x6b
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.long	.LASF15
	.long	.LASF17
	.byte	0x3
	.byte	0
	.long	.LASF15
	.uleb128 0x14
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0x25
	.byte	0x73
	.byte	0xa
	.byte	0
	.uleb128 0x13
	.long	.LASF16
	.long	.LASF18
	.byte	0x3
	.byte	0
	.long	.LASF16
	.uleb128 0x15
	.long	.LASF23
	.long	.LASF23
	.byte	0x4
	.value	0x234
	.uleb128 0x16
	.long	.LASF24
	.long	.LASF24
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.long	.LVL3-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.value	0x6
	.byte	0x3
	.long	.LC1
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.value	0x4
	.byte	0x75
	.sleb128 -76
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+405
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB20
	.long	.LFE20
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF19:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"puts"
.LASF24:
	.string	"__stack_chk_fail"
.LASF22:
	.string	"main"
.LASF12:
	.string	"sprintf"
.LASF18:
	.string	"__builtin_puts"
.LASF3:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF23:
	.string	"getenv"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF21:
	.string	"/home/stone/Documents/pca"
.LASF8:
	.string	"long int"
.LASF2:
	.string	"short unsigned int"
.LASF11:
	.string	"printf"
.LASF17:
	.string	"__builtin___sprintf_chk"
.LASF9:
	.string	"sizetype"
.LASF5:
	.string	"short int"
.LASF20:
	.string	"src/sys_call_2.c"
.LASF13:
	.string	"__fmt"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"__sprintf_chk"
.LASF14:
	.string	"ptr_h"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

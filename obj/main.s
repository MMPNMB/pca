	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"aos framework init."
.LC1:
	.string	"[%06d]<V> "
.LC2:
	.string	"\r\n"
	.section	.text.unlikely.aos_framework_init,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_framework_init,"ax",@progbits
.LHOTB3:
	.section	.text.unlikely.aos_framework_init
.Ltext_cold0:
	.section	.text.aos_framework_init
	.globl	aos_framework_init
	.type	aos_framework_init, @function
aos_framework_init:
.LFB16:
	.file 1 "framework/common/main.c"
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 17 0
	call	aos_now_ms
.LVL0:
	pushl	%edx
	pushl	$.LC0
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL1:
	movl	$.LC0, (%esp)
	call	csp_printf
.LVL2:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL3:
	.loc 1 19 0
	call	version_init
.LVL4:
	.loc 1 33 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	aos_framework_init, .-aos_framework_init
	.section	.text.unlikely.aos_framework_init
.LCOLDE3:
	.section	.text.aos_framework_init
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.aos_framework_init
.Letext_cold0:
	.file 2 "./include/aos/kernel.h"
	.file 3 "./include/aos/internal/log_impl.h"
	.file 4 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0xc
	.long	.LASF17
	.long	.LASF18
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.byte	0xf
	.long	0x5d
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xce
	.uleb128 0x5
	.long	.LVL0
	.long	0xd9
	.uleb128 0x5
	.long	.LVL1
	.long	0xe5
	.uleb128 0x5
	.long	.LVL2
	.long	0xe5
	.uleb128 0x5
	.long	.LVL3
	.long	0xe5
	.uleb128 0x5
	.long	.LVL4
	.long	0xf0
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x4
	.byte	0x17
	.long	0x64
	.uleb128 0x7
	.long	.LASF13
	.long	.LASF13
	.byte	0x2
	.value	0x20e
	.uleb128 0x8
	.long	.LASF14
	.long	.LASF14
	.byte	0x3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF15
	.long	.LASF15
	.byte	0x1
	.byte	0xd
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF16:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF8:
	.string	"unsigned int"
.LASF13:
	.string	"aos_now_ms"
.LASF19:
	.string	"aos_framework_init"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"src/main.c"
.LASF20:
	.string	"aos_log_level"
.LASF14:
	.string	"csp_printf"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF18:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"long int"
.LASF12:
	.string	"_Bool"
.LASF15:
	.string	"version_init"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long double"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

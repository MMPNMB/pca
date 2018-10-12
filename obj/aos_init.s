	.file	"aos_init.c"
	.text
.Ltext0:
	.section	.text.unlikely.aos_kernel_init,"ax",@progbits
.LCOLDB0:
	.section	.text.aos_kernel_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.aos_kernel_init
.Ltext_cold0:
	.section	.text.aos_kernel_init
	.globl	aos_kernel_init
	.type	aos_kernel_init, @function
aos_kernel_init:
.LFB23:
	.file 1 "kernel/init/aos_init.c"
	.loc 1 242 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 242 0
	movl	8(%ebp), %ebx
	.loc 1 244 0
	call	vfs_init
.LVL1:
	.loc 1 245 0
	call	vfs_device_init
.LVL2:
	.loc 1 252 0
	call	log_no_cli_init
.LVL3:
	.loc 1 256 0
	call	aos_kv_init
.LVL4:
	.loc 1 264 0
	call	aos_loop_init
.LVL5:
	.loc 1 268 0
	call	trace_start
.LVL6:
	.loc 1 302 0
	pushl	%edx
	pushl	%edx
	pushl	4(%ebx)
	pushl	(%ebx)
	call	application_start
.LVL7:
	.loc 1 306 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	aos_kernel_init, .-aos_kernel_init
	.section	.text.unlikely.aos_kernel_init
.LCOLDE0:
	.section	.text.aos_kernel_init
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.aos_kernel_init
.Letext_cold0:
	.file 2 "./include/aos/init.h"
	.file 3 "./include/aos/yloop.h"
	.file 4 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF25
	.byte	0xc
	.long	.LASF26
	.long	.LASF27
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.long	0x7f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.long	0x79
	.uleb128 0x5
	.byte	0xc
	.byte	0x2
	.byte	0xb
	.long	0xb9
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0xc
	.long	0x25
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0xd
	.long	0x86
	.byte	0x4
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0xf
	.long	0xb9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF28
	.byte	0x2
	.byte	0x10
	.long	0x8c
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF17
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.byte	0xf1
	.long	0x25
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x147
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0xf1
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0xfb
	.uleb128 0xb
	.long	.LVL1
	.long	0x158
	.uleb128 0xb
	.long	.LVL2
	.long	0x163
	.uleb128 0xb
	.long	.LVL3
	.long	0x16e
	.uleb128 0xb
	.long	.LVL4
	.long	0x179
	.uleb128 0xb
	.long	.LVL5
	.long	0x184
	.uleb128 0xb
	.long	.LVL6
	.long	0x18f
	.uleb128 0xb
	.long	.LVL7
	.long	0x19a
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.long	0xc0
	.uleb128 0xc
	.long	.LASF31
	.byte	0x4
	.byte	0x17
	.long	0x2c
	.uleb128 0xd
	.long	.LASF18
	.long	.LASF18
	.byte	0x1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.long	.LASF19
	.byte	0x1
	.byte	0x11
	.uleb128 0xd
	.long	.LASF20
	.long	.LASF20
	.byte	0x1
	.byte	0xfb
	.uleb128 0xd
	.long	.LASF21
	.long	.LASF21
	.byte	0x1
	.byte	0x12
	.uleb128 0xd
	.long	.LASF22
	.long	.LASF22
	.byte	0x3
	.byte	0xb2
	.uleb128 0xd
	.long	.LASF23
	.long	.LASF23
	.byte	0x1
	.byte	0x15
	.uleb128 0xd
	.long	.LASF24
	.long	.LASF24
	.byte	0x1
	.byte	0x17
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB23
	.long	.LFE23
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"aos_kv_init"
.LASF28:
	.string	"kinit_t"
.LASF14:
	.string	"cli_enable"
.LASF24:
	.string	"application_start"
.LASF16:
	.string	"float"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF25:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"vfs_device_init"
.LASF17:
	.string	"double"
.LASF18:
	.string	"vfs_init"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF31:
	.string	"aos_log_level"
.LASF12:
	.string	"argc"
.LASF10:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF30:
	.string	"kinit"
.LASF11:
	.string	"char"
.LASF20:
	.string	"log_no_cli_init"
.LASF22:
	.string	"aos_loop_init"
.LASF27:
	.string	"/home/stone/Documents/pca"
.LASF5:
	.string	"short int"
.LASF13:
	.string	"argv"
.LASF29:
	.string	"aos_kernel_init"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF23:
	.string	"trace_start"
.LASF15:
	.string	"_Bool"
.LASF26:
	.string	"src/aos_init.c"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

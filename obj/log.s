	.file	"log.c"
	.text
.Ltext0:
	.section	.text.unlikely.csp_printf,"ax",@progbits
.LCOLDB0:
	.section	.text.csp_printf,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.csp_printf
.Ltext_cold0:
	.section	.text.csp_printf
	.weak	csp_printf
	.type	csp_printf, @function
csp_printf:
.LFB17:
	.file 1 "utility/log/log.c"
	.loc 1 15 0
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
	.loc 1 19 0
	pushl	$-1
	pushl	$log_mutex
	call	aos_mutex_lock
.LVL1:
	.loc 1 20 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L2
	.loc 1 21 0
	leal	12(%ebp), %eax
.LVL2:
	.loc 1 22 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	8(%ebp)
	call	vprintf
.LVL3:
	movl	%eax, %ebx
.LVL4:
	.loc 1 25 0
	movl	_impure_ptr, %eax
.LVL5:
	.loc 1 25 0
	popl	%ecx
	pushl	8(%eax)
	call	fflush
.LVL6:
	addl	$16, %esp
.LVL7:
.L2:
	.loc 1 28 0
	subl	$12, %esp
	pushl	$log_mutex
	call	aos_mutex_unlock
.LVL8:
	.loc 1 31 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL9:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	csp_printf, .-csp_printf
	.section	.text.unlikely.csp_printf
.LCOLDE0:
	.section	.text.csp_printf
.LHOTE0:
	.section	.text.unlikely.aos_set_log_level,"ax",@progbits
.LCOLDB1:
	.section	.text.aos_set_log_level,"ax",@progbits
.LHOTB1:
	.globl	aos_set_log_level
	.type	aos_set_log_level, @function
aos_set_log_level:
.LFB18:
	.loc 1 35 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 38 0
	movl	8(%ebp), %eax
	leal	-1(%eax), %edx
	xorl	%eax, %eax
	cmpl	$4, %edx
	ja	.L7
	jmp	*.L9(,%edx,4)
	.section	.rodata.aos_set_log_level,"a",@progbits
	.align 4
	.align 4
.L9:
	.long	.L15
	.long	.L16
	.long	.L17
	.long	.L18
	.long	.L13
	.section	.text.aos_set_log_level
.L13:
	.loc 1 43 0
	movl	$16, %eax
	jmp	.L12
.L18:
	.loc 1 36 0
	xorl	%eax, %eax
.L12:
.LVL11:
	.loc 1 45 0
	orl	$8, %eax
.LVL12:
	jmp	.L11
.LVL13:
.L17:
	.loc 1 36 0
	xorl	%eax, %eax
.LVL14:
.L11:
	.loc 1 47 0
	orl	$4, %eax
.LVL15:
	jmp	.L10
.LVL16:
.L16:
	.loc 1 36 0
	xorl	%eax, %eax
.LVL17:
.L10:
	.loc 1 49 0
	orl	$2, %eax
.LVL18:
	jmp	.L8
.LVL19:
.L15:
	.loc 1 36 0
	xorl	%eax, %eax
.LVL20:
.L8:
	.loc 1 51 0
	orl	$1, %eax
.LVL21:
.L7:
	.loc 1 57 0
	movl	%eax, aos_log_level
	.loc 1 58 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	aos_set_log_level, .-aos_set_log_level
	.section	.text.unlikely.aos_set_log_level
.LCOLDE1:
	.section	.text.aos_set_log_level
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"fatal"
.LC3:
	.string	"error"
.LC4:
	.string	"warn"
.LC5:
	.string	"info"
.LC6:
	.string	"debug"
.LC7:
	.string	"log level : %02x\r\n"
.LC8:
	.string	"set log level success\r\n"
.LC9:
	.string	"set log level fail\r\n"
	.section	.text.unlikely.log_cmd,"ax",@progbits
.LCOLDB10:
	.section	.text.log_cmd,"ax",@progbits
.LHOTB10:
	.type	log_cmd, @function
log_cmd:
.LFB19:
	.loc 1 61 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 62 0
	movl	$6, %ecx
	.loc 1 61 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	.loc 1 62 0
	leal	-52(%ebp), %edi
	.loc 1 61 0
	subl	$44, %esp
	.loc 1 61 0
	movl	20(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 70 0
	cmpl	$1, 16(%ebp)
	.loc 1 62 0
	rep stosl
	movl	$.LC2, -48(%ebp)
	movl	$.LC3, -44(%ebp)
	movl	$.LC4, -40(%ebp)
	movl	$.LC5, -36(%ebp)
	movl	$.LC6, -32(%ebp)
	.loc 1 70 0
	jg	.L23
	.loc 1 71 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L32
	movl	aos_log_level, %eax
	movl	$.LC7, 8(%ebp)
.LVL23:
	movl	%eax, 12(%ebp)
.LVL24:
	.loc 1 85 0
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
	.loc 1 71 0
	jmp	aos_cli_printf
.LVL25:
.L27:
	.cfi_restore_state
	.loc 1 77 0
	movl	-52(%ebp,%ebx,4), %edx
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%edx, %edi
	repnz scasb
	pushl	%eax
	notl	%ecx
	pushl	%ecx
	pushl	4(%esi)
	pushl	%edx
	call	strncmp
.LVL26:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L25
	.loc 1 76 0
	incl	%ebx
.LVL27:
.L23:
	.loc 1 76 0 is_stmt 0 discriminator 1
	cmpl	$6, %ebx
	jne	.L27
	jmp	.L33
.L25:
	.loc 1 80 0 is_stmt 1
	subl	$12, %esp
	pushl	%ebx
	call	aos_set_log_level
.LVL28:
	.loc 1 81 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L32
	movl	$.LC8, 8(%ebp)
	jmp	.L31
.L33:
	.loc 1 84 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L28
.LVL29:
.L32:
	call	__stack_chk_fail
.LVL30:
.L28:
	movl	$.LC9, 8(%ebp)
.L31:
	.loc 1 85 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL31:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 84 0
	jmp	aos_cli_printf
.LVL32:
	.cfi_endproc
.LFE19:
	.size	log_cmd, .-log_cmd
	.section	.text.unlikely.log_cmd
.LCOLDE10:
	.section	.text.log_cmd
.LHOTE10:
	.section	.text.unlikely.log_cli_init,"ax",@progbits
.LCOLDB11:
	.section	.text.log_cli_init,"ax",@progbits
.LHOTB11:
	.globl	log_cli_init
	.type	log_cli_init, @function
log_cli_init:
.LFB20:
	.loc 1 94 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 95 0
	movl	$31, aos_log_level
	.loc 1 96 0
	pushl	$1
	pushl	$log_cli_cmd
	call	aos_cli_register_commands
.LVL33:
	.loc 1 97 0
	movl	$log_mutex, (%esp)
	call	aos_mutex_new
.LVL34:
	.loc 1 98 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	log_cli_init, .-log_cli_init
	.section	.text.unlikely.log_cli_init
.LCOLDE11:
	.section	.text.log_cli_init
.LHOTE11:
	.section	.text.unlikely.log_no_cli_init,"ax",@progbits
.LCOLDB12:
	.section	.text.log_no_cli_init,"ax",@progbits
.LHOTB12:
	.globl	log_no_cli_init
	.type	log_no_cli_init, @function
log_no_cli_init:
.LFB21:
	.loc 1 102 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 103 0
	pushl	$log_mutex
	call	aos_mutex_new
.LVL35:
	.loc 1 104 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	log_no_cli_init, .-log_no_cli_init
	.section	.text.unlikely.log_no_cli_init
.LCOLDE12:
	.section	.text.log_no_cli_init
.LHOTE12:
	.globl	log_cli_cmd
	.section	.rodata.str1.1
.LC13:
	.string	"loglevel"
.LC14:
	.string	"set log level"
	.section	.data.log_cli_cmd,"aw",@progbits
	.align 4
	.type	log_cli_cmd, @object
	.size	log_cli_cmd, 12
log_cli_cmd:
	.long	.LC13
	.long	.LC14
	.long	log_cmd
	.globl	log_mutex
	.section	.bss.log_mutex,"aw",@nobits
	.align 4
	.type	log_mutex, @object
	.size	log_mutex, 4
log_mutex:
	.zero	4
	.globl	aos_log_level
	.section	.data.aos_log_level,"aw",@progbits
	.align 4
	.type	aos_log_level, @object
	.size	aos_log_level, 4
aos_log_level:
	.long	31
	.text
.Letext0:
	.section	.text.unlikely.csp_printf
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h"
	.file 7 "./include/aos/cli.h"
	.file 8 "./include/aos/kernel.h"
	.file 9 "./include/aos/log.h"
	.file 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 12 "./include/aos/internal/log_impl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbd9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF162
	.byte	0xc
	.long	.LASF163
	.long	.LASF164
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x28
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.long	.LASF165
	.long	0x3a
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x62
	.long	0x25
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x7
	.long	0x84
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x2c
	.long	0x68
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x72
	.long	0x68
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.value	0x165
	.long	0x8b
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0xe5
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xa8
	.long	0xba
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xa9
	.long	0xe5
	.byte	0
	.uleb128 0x9
	.long	0x53
	.long	0xf5
	.uleb128 0xa
	.long	0xf5
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x11d
	.uleb128 0xc
	.long	.LASF20
	.byte	0x4
	.byte	0xa5
	.long	0x84
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x4
	.byte	0xaa
	.long	0xc6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0xab
	.long	0xfc
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0xaf
	.long	0x99
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.long	.LASF24
	.byte	0x6
	.byte	0x16
	.long	0x6f
	.uleb128 0xe
	.long	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.long	0x193
	.uleb128 0xc
	.long	.LASF25
	.byte	0x6
	.byte	0x31
	.long	0x193
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.long	0x84
	.byte	0x4
	.uleb128 0xc
	.long	.LASF26
	.byte	0x6
	.byte	0x32
	.long	0x84
	.byte	0x8
	.uleb128 0xc
	.long	.LASF27
	.byte	0x6
	.byte	0x32
	.long	0x84
	.byte	0xc
	.uleb128 0xc
	.long	.LASF28
	.byte	0x6
	.byte	0x32
	.long	0x84
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.long	0x199
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x140
	.uleb128 0x9
	.long	0x135
	.long	0x1a9
	.uleb128 0xa
	.long	0xf5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.long	0x222
	.uleb128 0xc
	.long	.LASF31
	.byte	0x6
	.byte	0x39
	.long	0x84
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0x6
	.byte	0x3a
	.long	0x84
	.byte	0x4
	.uleb128 0xc
	.long	.LASF33
	.byte	0x6
	.byte	0x3b
	.long	0x84
	.byte	0x8
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.byte	0x3c
	.long	0x84
	.byte	0xc
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x3d
	.long	0x84
	.byte	0x10
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x3e
	.long	0x84
	.byte	0x14
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0x3f
	.long	0x84
	.byte	0x18
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0x40
	.long	0x84
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0x41
	.long	0x84
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF40
	.value	0x108
	.byte	0x6
	.byte	0x4a
	.long	0x262
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0x4b
	.long	0x262
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x4c
	.long	0x262
	.byte	0x80
	.uleb128 0x12
	.long	.LASF43
	.byte	0x6
	.byte	0x4e
	.long	0x135
	.value	0x100
	.uleb128 0x12
	.long	.LASF44
	.byte	0x6
	.byte	0x51
	.long	0x135
	.value	0x104
	.byte	0
	.uleb128 0x9
	.long	0x133
	.long	0x272
	.uleb128 0xa
	.long	0xf5
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.long	.LASF45
	.value	0x190
	.byte	0x6
	.byte	0x5d
	.long	0x2b0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x6
	.byte	0x5e
	.long	0x2b0
	.byte	0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.byte	0x5f
	.long	0x84
	.byte	0x4
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.byte	0x61
	.long	0x2b6
	.byte	0x8
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0x62
	.long	0x222
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x272
	.uleb128 0x9
	.long	0x2c6
	.long	0x2c6
	.uleb128 0xa
	.long	0xf5
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x2cc
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.long	0x2f2
	.uleb128 0xc
	.long	.LASF49
	.byte	0x6
	.byte	0x76
	.long	0x2f2
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x6
	.byte	0x77
	.long	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x53
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.long	0x422
	.uleb128 0xf
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.long	0x2f2
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.long	0x84
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.long	0x84
	.byte	0x8
	.uleb128 0xc
	.long	.LASF52
	.byte	0x6
	.byte	0xb9
	.long	0x5a
	.byte	0xc
	.uleb128 0xc
	.long	.LASF53
	.byte	0x6
	.byte	0xba
	.long	0x5a
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.long	0x2cd
	.byte	0x10
	.uleb128 0xc
	.long	.LASF54
	.byte	0x6
	.byte	0xbc
	.long	0x84
	.byte	0x18
	.uleb128 0xc
	.long	.LASF55
	.byte	0x6
	.byte	0xc3
	.long	0x133
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF56
	.byte	0x6
	.byte	0xc5
	.long	0x57e
	.byte	0x20
	.uleb128 0xc
	.long	.LASF57
	.byte	0x6
	.byte	0xc7
	.long	0x5ad
	.byte	0x24
	.uleb128 0xc
	.long	.LASF58
	.byte	0x6
	.byte	0xca
	.long	0x5d1
	.byte	0x28
	.uleb128 0xc
	.long	.LASF59
	.byte	0x6
	.byte	0xcb
	.long	0x5eb
	.byte	0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.long	0x2cd
	.byte	0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.long	0x2f2
	.byte	0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.long	0x84
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF60
	.byte	0x6
	.byte	0xd3
	.long	0x5f1
	.byte	0x40
	.uleb128 0xc
	.long	.LASF61
	.byte	0x6
	.byte	0xd4
	.long	0x601
	.byte	0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.long	0x2cd
	.byte	0x44
	.uleb128 0xc
	.long	.LASF62
	.byte	0x6
	.byte	0xda
	.long	0x84
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF63
	.byte	0x6
	.byte	0xdb
	.long	0xa4
	.byte	0x50
	.uleb128 0xc
	.long	.LASF64
	.byte	0x6
	.byte	0xde
	.long	0x440
	.byte	0x54
	.uleb128 0xc
	.long	.LASF65
	.byte	0x6
	.byte	0xe2
	.long	0x128
	.byte	0x58
	.uleb128 0xc
	.long	.LASF66
	.byte	0x6
	.byte	0xe4
	.long	0x11d
	.byte	0x5c
	.uleb128 0xc
	.long	.LASF67
	.byte	0x6
	.byte	0xe5
	.long	0x84
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.long	0x84
	.long	0x440
	.uleb128 0x15
	.long	0x440
	.uleb128 0x15
	.long	0x133
	.uleb128 0x15
	.long	0x578
	.uleb128 0x15
	.long	0x84
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x446
	.uleb128 0x16
	.long	.LASF68
	.value	0x424
	.byte	0x6
	.value	0x239
	.long	0x578
	.uleb128 0x17
	.long	.LASF69
	.byte	0x6
	.value	0x23b
	.long	0x84
	.byte	0
	.uleb128 0x17
	.long	.LASF70
	.byte	0x6
	.value	0x240
	.long	0x658
	.byte	0x4
	.uleb128 0x17
	.long	.LASF71
	.byte	0x6
	.value	0x240
	.long	0x658
	.byte	0x8
	.uleb128 0x17
	.long	.LASF72
	.byte	0x6
	.value	0x240
	.long	0x658
	.byte	0xc
	.uleb128 0x17
	.long	.LASF73
	.byte	0x6
	.value	0x242
	.long	0x84
	.byte	0x10
	.uleb128 0x17
	.long	.LASF74
	.byte	0x6
	.value	0x243
	.long	0x83a
	.byte	0x14
	.uleb128 0x17
	.long	.LASF75
	.byte	0x6
	.value	0x246
	.long	0x84
	.byte	0x30
	.uleb128 0x17
	.long	.LASF76
	.byte	0x6
	.value	0x247
	.long	0x84f
	.byte	0x34
	.uleb128 0x17
	.long	.LASF77
	.byte	0x6
	.value	0x249
	.long	0x84
	.byte	0x38
	.uleb128 0x17
	.long	.LASF78
	.byte	0x6
	.value	0x24b
	.long	0x860
	.byte	0x3c
	.uleb128 0x17
	.long	.LASF79
	.byte	0x6
	.value	0x24e
	.long	0x193
	.byte	0x40
	.uleb128 0x17
	.long	.LASF80
	.byte	0x6
	.value	0x24f
	.long	0x84
	.byte	0x44
	.uleb128 0x17
	.long	.LASF81
	.byte	0x6
	.value	0x250
	.long	0x193
	.byte	0x48
	.uleb128 0x17
	.long	.LASF82
	.byte	0x6
	.value	0x251
	.long	0x866
	.byte	0x4c
	.uleb128 0x17
	.long	.LASF83
	.byte	0x6
	.value	0x254
	.long	0x84
	.byte	0x50
	.uleb128 0x17
	.long	.LASF84
	.byte	0x6
	.value	0x255
	.long	0x578
	.byte	0x54
	.uleb128 0x17
	.long	.LASF85
	.byte	0x6
	.value	0x278
	.long	0x818
	.byte	0x58
	.uleb128 0x18
	.long	.LASF45
	.byte	0x6
	.value	0x27c
	.long	0x2b0
	.value	0x148
	.uleb128 0x18
	.long	.LASF86
	.byte	0x6
	.value	0x27d
	.long	0x272
	.value	0x14c
	.uleb128 0x18
	.long	.LASF87
	.byte	0x6
	.value	0x281
	.long	0x877
	.value	0x2dc
	.uleb128 0x18
	.long	.LASF88
	.byte	0x6
	.value	0x286
	.long	0x61d
	.value	0x2e0
	.uleb128 0x18
	.long	.LASF89
	.byte	0x6
	.value	0x287
	.long	0x883
	.value	0x2ec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x3a
	.uleb128 0x10
	.byte	0x4
	.long	0x422
	.uleb128 0x14
	.long	0x84
	.long	0x5a2
	.uleb128 0x15
	.long	0x440
	.uleb128 0x15
	.long	0x133
	.uleb128 0x15
	.long	0x5a2
	.uleb128 0x15
	.long	0x84
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x5a8
	.uleb128 0x19
	.long	0x3a
	.uleb128 0x10
	.byte	0x4
	.long	0x584
	.uleb128 0x14
	.long	0xaf
	.long	0x5d1
	.uleb128 0x15
	.long	0x440
	.uleb128 0x15
	.long	0x133
	.uleb128 0x15
	.long	0xaf
	.uleb128 0x15
	.long	0x84
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x5b3
	.uleb128 0x14
	.long	0x84
	.long	0x5eb
	.uleb128 0x15
	.long	0x440
	.uleb128 0x15
	.long	0x133
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x5d7
	.uleb128 0x9
	.long	0x53
	.long	0x601
	.uleb128 0xa
	.long	0xf5
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x53
	.long	0x611
	.uleb128 0xa
	.long	0xf5
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF90
	.byte	0x6
	.value	0x11f
	.long	0x2f8
	.uleb128 0x1a
	.long	.LASF91
	.byte	0xc
	.byte	0x6
	.value	0x123
	.long	0x652
	.uleb128 0x17
	.long	.LASF25
	.byte	0x6
	.value	0x125
	.long	0x652
	.byte	0
	.uleb128 0x17
	.long	.LASF92
	.byte	0x6
	.value	0x126
	.long	0x84
	.byte	0x4
	.uleb128 0x17
	.long	.LASF93
	.byte	0x6
	.value	0x127
	.long	0x658
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x61d
	.uleb128 0x10
	.byte	0x4
	.long	0x611
	.uleb128 0x1a
	.long	.LASF94
	.byte	0xe
	.byte	0x6
	.value	0x13f
	.long	0x693
	.uleb128 0x17
	.long	.LASF95
	.byte	0x6
	.value	0x140
	.long	0x693
	.byte	0
	.uleb128 0x17
	.long	.LASF96
	.byte	0x6
	.value	0x141
	.long	0x693
	.byte	0x6
	.uleb128 0x17
	.long	.LASF97
	.byte	0x6
	.value	0x142
	.long	0x61
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x61
	.long	0x6a3
	.uleb128 0xa
	.long	0xf5
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xcc
	.byte	0x6
	.value	0x259
	.long	0x7a4
	.uleb128 0x17
	.long	.LASF98
	.byte	0x6
	.value	0x25b
	.long	0x8b
	.byte	0
	.uleb128 0x17
	.long	.LASF99
	.byte	0x6
	.value	0x25c
	.long	0x578
	.byte	0x4
	.uleb128 0x17
	.long	.LASF100
	.byte	0x6
	.value	0x25d
	.long	0x7a4
	.byte	0x8
	.uleb128 0x17
	.long	.LASF101
	.byte	0x6
	.value	0x25e
	.long	0x1a9
	.byte	0x24
	.uleb128 0x17
	.long	.LASF102
	.byte	0x6
	.value	0x25f
	.long	0x84
	.byte	0x48
	.uleb128 0x17
	.long	.LASF103
	.byte	0x6
	.value	0x260
	.long	0x7d
	.byte	0x4c
	.uleb128 0x17
	.long	.LASF104
	.byte	0x6
	.value	0x261
	.long	0x65e
	.byte	0x54
	.uleb128 0x17
	.long	.LASF105
	.byte	0x6
	.value	0x262
	.long	0x11d
	.byte	0x64
	.uleb128 0x17
	.long	.LASF106
	.byte	0x6
	.value	0x263
	.long	0x11d
	.byte	0x6c
	.uleb128 0x17
	.long	.LASF107
	.byte	0x6
	.value	0x264
	.long	0x11d
	.byte	0x74
	.uleb128 0x17
	.long	.LASF108
	.byte	0x6
	.value	0x265
	.long	0x7b4
	.byte	0x7c
	.uleb128 0x17
	.long	.LASF109
	.byte	0x6
	.value	0x266
	.long	0x7c4
	.byte	0x84
	.uleb128 0x17
	.long	.LASF110
	.byte	0x6
	.value	0x267
	.long	0x84
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF111
	.byte	0x6
	.value	0x268
	.long	0x11d
	.byte	0xa0
	.uleb128 0x17
	.long	.LASF112
	.byte	0x6
	.value	0x269
	.long	0x11d
	.byte	0xa8
	.uleb128 0x17
	.long	.LASF113
	.byte	0x6
	.value	0x26a
	.long	0x11d
	.byte	0xb0
	.uleb128 0x17
	.long	.LASF114
	.byte	0x6
	.value	0x26b
	.long	0x11d
	.byte	0xb8
	.uleb128 0x17
	.long	.LASF115
	.byte	0x6
	.value	0x26c
	.long	0x11d
	.byte	0xc0
	.uleb128 0x17
	.long	.LASF116
	.byte	0x6
	.value	0x26d
	.long	0x84
	.byte	0xc8
	.byte	0
	.uleb128 0x9
	.long	0x3a
	.long	0x7b4
	.uleb128 0xa
	.long	0xf5
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.long	0x3a
	.long	0x7c4
	.uleb128 0xa
	.long	0xf5
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x3a
	.long	0x7d4
	.uleb128 0xa
	.long	0xf5
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.value	0x272
	.long	0x7f8
	.uleb128 0x17
	.long	.LASF117
	.byte	0x6
	.value	0x275
	.long	0x7f8
	.byte	0
	.uleb128 0x17
	.long	.LASF118
	.byte	0x6
	.value	0x276
	.long	0x808
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0x2f2
	.long	0x808
	.uleb128 0xa
	.long	0xf5
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x8b
	.long	0x818
	.uleb128 0xa
	.long	0xf5
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x6
	.value	0x257
	.long	0x83a
	.uleb128 0x1d
	.long	.LASF68
	.byte	0x6
	.value	0x26e
	.long	0x6a3
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x6
	.value	0x277
	.long	0x7d4
	.byte	0
	.uleb128 0x9
	.long	0x3a
	.long	0x84a
	.uleb128 0xa
	.long	0xf5
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.long	.LASF166
	.uleb128 0x10
	.byte	0x4
	.long	0x84a
	.uleb128 0x1f
	.long	0x860
	.uleb128 0x15
	.long	0x440
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x855
	.uleb128 0x10
	.byte	0x4
	.long	0x193
	.uleb128 0x1f
	.long	0x877
	.uleb128 0x15
	.long	0x84
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x87d
	.uleb128 0x10
	.byte	0x4
	.long	0x86c
	.uleb128 0x9
	.long	0x611
	.long	0x893
	.uleb128 0xa
	.long	0xf5
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	.LASF120
	.byte	0xc
	.byte	0x7
	.byte	0x16
	.long	0x8c4
	.uleb128 0xc
	.long	.LASF121
	.byte	0x7
	.byte	0x17
	.long	0x5a2
	.byte	0
	.uleb128 0xc
	.long	.LASF122
	.byte	0x7
	.byte	0x18
	.long	0x5a2
	.byte	0x4
	.uleb128 0xc
	.long	.LASF123
	.byte	0x7
	.byte	0x1a
	.long	0x8e4
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	0x8de
	.uleb128 0x15
	.long	0x578
	.uleb128 0x15
	.long	0x84
	.uleb128 0x15
	.long	0x84
	.uleb128 0x15
	.long	0x8de
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x578
	.uleb128 0x10
	.byte	0x4
	.long	0x8c4
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x13
	.long	0x8ff
	.uleb128 0xf
	.string	"hdl"
	.byte	0x8
	.byte	0x14
	.long	0x133
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF124
	.byte	0x8
	.byte	0x15
	.long	0x8ea
	.uleb128 0x2
	.long	.LASF125
	.byte	0x8
	.byte	0x18
	.long	0x8ff
	.uleb128 0x20
	.long	.LASF167
	.byte	0x4
	.long	0x84
	.byte	0xc
	.byte	0x12
	.long	0x950
	.uleb128 0x21
	.long	.LASF126
	.sleb128 -1
	.uleb128 0x22
	.long	.LASF127
	.byte	0
	.uleb128 0x22
	.long	.LASF128
	.byte	0x1
	.uleb128 0x22
	.long	.LASF129
	.byte	0x2
	.uleb128 0x22
	.long	.LASF130
	.byte	0x3
	.uleb128 0x22
	.long	.LASF131
	.byte	0x4
	.uleb128 0x22
	.long	.LASF132
	.byte	0x5
	.byte	0
	.uleb128 0x23
	.byte	0x4
	.long	0x8b
	.byte	0x9
	.byte	0xe
	.long	0x981
	.uleb128 0x22
	.long	.LASF133
	.byte	0
	.uleb128 0x22
	.long	.LASF134
	.byte	0x1
	.uleb128 0x22
	.long	.LASF135
	.byte	0x2
	.uleb128 0x22
	.long	.LASF136
	.byte	0x3
	.uleb128 0x22
	.long	.LASF137
	.byte	0x4
	.uleb128 0x22
	.long	.LASF138
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF139
	.byte	0x9
	.byte	0x15
	.long	0x950
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF140
	.uleb128 0x24
	.long	.LASF168
	.byte	0x9
	.byte	0x1b
	.long	0x84
	.byte	0x3
	.uleb128 0x25
	.long	.LASF169
	.byte	0x1
	.byte	0xe
	.long	0x84
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0a
	.uleb128 0x26
	.string	"fmt"
	.byte	0x1
	.byte	0xe
	.long	0x5a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x28
	.long	.LASF141
	.byte	0x1
	.byte	0x10
	.long	0x41
	.long	.LLST0
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.byte	0x11
	.long	0x84
	.long	.LLST1
	.uleb128 0x2a
	.long	.LVL1
	.long	0xb7b
	.uleb128 0x2a
	.long	.LVL3
	.long	0xb86
	.uleb128 0x2a
	.long	.LVL6
	.long	0xb91
	.uleb128 0x2a
	.long	.LVL8
	.long	0xb9c
	.byte	0
	.uleb128 0x2b
	.long	.LASF147
	.byte	0x1
	.byte	0x22
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xa3d
	.uleb128 0x2c
	.long	.LASF142
	.byte	0x1
	.byte	0x22
	.long	0x981
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF143
	.byte	0x1
	.byte	0x24
	.long	0x8b
	.long	.LLST2
	.byte	0
	.uleb128 0x2d
	.long	.LASF170
	.byte	0x1
	.byte	0x3c
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xad5
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.byte	0x3c
	.long	0x578
	.long	.LLST3
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.byte	0x3c
	.long	0x84
	.long	.LLST4
	.uleb128 0x2c
	.long	.LASF144
	.byte	0x1
	.byte	0x3c
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF145
	.byte	0x1
	.byte	0x3c
	.long	0x8de
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2f
	.long	.LASF146
	.byte	0x1
	.byte	0x3e
	.long	0xad5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x84
	.long	.LLST5
	.uleb128 0x30
	.long	.LVL25
	.long	0xba7
	.uleb128 0x2a
	.long	.LVL26
	.long	0xbb2
	.uleb128 0x2a
	.long	.LVL28
	.long	0xa0a
	.uleb128 0x2a
	.long	.LVL30
	.long	0xbbd
	.uleb128 0x30
	.long	.LVL32
	.long	0xba7
	.byte	0
	.uleb128 0x9
	.long	0x5a2
	.long	0xae5
	.uleb128 0xa
	.long	0xf5
	.byte	0x5
	.byte	0
	.uleb128 0x2b
	.long	.LASF148
	.byte	0x1
	.byte	0x5d
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0d
	.uleb128 0x2a
	.long	.LVL33
	.long	0xbc6
	.uleb128 0x2a
	.long	.LVL34
	.long	0xbd1
	.byte	0
	.uleb128 0x2b
	.long	.LASF149
	.byte	0x1
	.byte	0x65
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xb2c
	.uleb128 0x2a
	.long	.LVL35
	.long	0xbd1
	.byte	0
	.uleb128 0x31
	.long	.LASF150
	.byte	0x6
	.value	0x2fe
	.long	0x440
	.uleb128 0x32
	.long	.LASF151
	.byte	0x1
	.byte	0xa
	.long	0x8b
	.uleb128 0x5
	.byte	0x3
	.long	aos_log_level
	.uleb128 0x32
	.long	.LASF152
	.byte	0x1
	.byte	0xb
	.long	0x90a
	.uleb128 0x5
	.byte	0x3
	.long	log_mutex
	.uleb128 0x9
	.long	0x893
	.long	0xb6a
	.uleb128 0xa
	.long	0xf5
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF153
	.byte	0x1
	.byte	0x58
	.long	0xb5a
	.uleb128 0x5
	.byte	0x3
	.long	log_cli_cmd
	.uleb128 0x33
	.long	.LASF154
	.long	.LASF154
	.byte	0x8
	.byte	0x9e
	.uleb128 0x33
	.long	.LASF155
	.long	.LASF155
	.byte	0xa
	.byte	0xd0
	.uleb128 0x33
	.long	.LASF156
	.long	.LASF156
	.byte	0xa
	.byte	0xc0
	.uleb128 0x33
	.long	.LASF157
	.long	.LASF157
	.byte	0x8
	.byte	0xa7
	.uleb128 0x33
	.long	.LASF158
	.long	.LASF158
	.byte	0x7
	.byte	0x6c
	.uleb128 0x33
	.long	.LASF159
	.long	.LASF159
	.byte	0xb
	.byte	0x27
	.uleb128 0x34
	.long	.LASF171
	.long	.LASF171
	.uleb128 0x33
	.long	.LASF160
	.long	.LASF160
	.byte	0x7
	.byte	0x57
	.uleb128 0x33
	.long	.LASF161
	.long	.LASF161
	.byte	0x8
	.byte	0x8c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.long	.LVL2
	.long	.LVL3-1
	.value	0x1
	.byte	0x50
	.long	.LVL3-1
	.long	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LFE17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LFE18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL25
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL22
	.long	.LVL24
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL25
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL25
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
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
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
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
.LASF126:
	.string	"AOS_LL_V_NONE_BIT"
.LASF121:
	.string	"name"
.LASF40:
	.string	"_on_exit_args"
.LASF159:
	.string	"strncmp"
.LASF107:
	.string	"_wctomb_state"
.LASF156:
	.string	"fflush"
.LASF104:
	.string	"_r48"
.LASF109:
	.string	"_signal_buf"
.LASF124:
	.string	"aos_hdl_t"
.LASF11:
	.string	"unsigned int"
.LASF54:
	.string	"_lbfsize"
.LASF52:
	.string	"_flags"
.LASF69:
	.string	"_errno"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF160:
	.string	"aos_cli_register_commands"
.LASF147:
	.string	"aos_set_log_level"
.LASF56:
	.string	"_read"
.LASF111:
	.string	"_mbrlen_state"
.LASF71:
	.string	"_stdout"
.LASF15:
	.string	"_fpos_t"
.LASF47:
	.string	"_fns"
.LASF55:
	.string	"_cookie"
.LASF134:
	.string	"AOS_LL_FATAL"
.LASF131:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF29:
	.string	"_Bigint"
.LASF37:
	.string	"__tm_wday"
.LASF125:
	.string	"aos_mutex_t"
.LASF79:
	.string	"_result"
.LASF33:
	.string	"__tm_hour"
.LASF168:
	.string	"aos_get_log_level"
.LASF20:
	.string	"__count"
.LASF32:
	.string	"__tm_min"
.LASF150:
	.string	"_impure_ptr"
.LASF117:
	.string	"_nextf"
.LASF94:
	.string	"_rand48"
.LASF151:
	.string	"aos_log_level"
.LASF80:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF100:
	.string	"_asctime_buf"
.LASF51:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF90:
	.string	"__FILE"
.LASF63:
	.string	"_offset"
.LASF170:
	.string	"log_cmd"
.LASF130:
	.string	"AOS_LL_V_INFO_BIT"
.LASF164:
	.string	"/home/stone/Documents/pca"
.LASF143:
	.string	"value"
.LASF74:
	.string	"_emergency"
.LASF0:
	.string	"__gnuc_va_list"
.LASF155:
	.string	"vprintf"
.LASF31:
	.string	"__tm_sec"
.LASF38:
	.string	"__tm_yday"
.LASF73:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF129:
	.string	"AOS_LL_V_WARN_BIT"
.LASF25:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF169:
	.string	"csp_printf"
.LASF21:
	.string	"__value"
.LASF81:
	.string	"_p5s"
.LASF136:
	.string	"AOS_LL_WARN"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF105:
	.string	"_mblen_state"
.LASF2:
	.string	"char"
.LASF34:
	.string	"__tm_mday"
.LASF87:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF86:
	.string	"_atexit0"
.LASF142:
	.string	"log_level"
.LASF23:
	.string	"_flock_t"
.LASF163:
	.string	"src/log.c"
.LASF17:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF59:
	.string	"_close"
.LASF77:
	.string	"__sdidinit"
.LASF1:
	.string	"va_list"
.LASF70:
	.string	"_stdin"
.LASF102:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF133:
	.string	"AOS_LL_NONE"
.LASF49:
	.string	"_base"
.LASF82:
	.string	"_freelist"
.LASF96:
	.string	"_mult"
.LASF24:
	.string	"__ULong"
.LASF149:
	.string	"log_no_cli_init"
.LASF114:
	.string	"_wcrtomb_state"
.LASF127:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF53:
	.string	"_file"
.LASF152:
	.string	"log_mutex"
.LASF78:
	.string	"__cleanup"
.LASF22:
	.string	"_mbstate_t"
.LASF39:
	.string	"__tm_isdst"
.LASF116:
	.string	"_h_errno"
.LASF128:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF140:
	.string	"_Bool"
.LASF144:
	.string	"argc"
.LASF35:
	.string	"__tm_mon"
.LASF141:
	.string	"args"
.LASF145:
	.string	"argv"
.LASF12:
	.string	"long double"
.LASF57:
	.string	"_write"
.LASF45:
	.string	"_atexit"
.LASF66:
	.string	"_mbstate"
.LASF5:
	.string	"short int"
.LASF154:
	.string	"aos_mutex_lock"
.LASF7:
	.string	"long int"
.LASF171:
	.string	"__stack_chk_fail"
.LASF89:
	.string	"__sf"
.LASF27:
	.string	"_sign"
.LASF137:
	.string	"AOS_LL_INFO"
.LASF64:
	.string	"_data"
.LASF138:
	.string	"AOS_LL_DEBUG"
.LASF18:
	.string	"__wchb"
.LASF36:
	.string	"__tm_year"
.LASF101:
	.string	"_localtime_buf"
.LASF119:
	.string	"_unused"
.LASF153:
	.string	"log_cli_cmd"
.LASF85:
	.string	"_new"
.LASF83:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF108:
	.string	"_l64a_buf"
.LASF62:
	.string	"_blksize"
.LASF30:
	.string	"__tm"
.LASF65:
	.string	"_lock"
.LASF19:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF139:
	.string	"aos_log_level_t"
.LASF92:
	.string	"_niobs"
.LASF16:
	.string	"wint_t"
.LASF42:
	.string	"_dso_handle"
.LASF132:
	.string	"AOS_LL_V_MAX_BIT"
.LASF161:
	.string	"aos_mutex_new"
.LASF122:
	.string	"help"
.LASF84:
	.string	"_cvtbuf"
.LASF4:
	.string	"unsigned char"
.LASF135:
	.string	"AOS_LL_ERROR"
.LASF123:
	.string	"function"
.LASF162:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF48:
	.string	"__sbuf"
.LASF146:
	.string	"lvls"
.LASF91:
	.string	"_glue"
.LASF158:
	.string	"aos_cli_printf"
.LASF88:
	.string	"__sglue"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF76:
	.string	"_locale"
.LASF41:
	.string	"_fnargs"
.LASF3:
	.string	"signed char"
.LASF68:
	.string	"_reent"
.LASF6:
	.string	"short unsigned int"
.LASF165:
	.string	"__builtin_va_list"
.LASF43:
	.string	"_fntypes"
.LASF50:
	.string	"_size"
.LASF148:
	.string	"log_cli_init"
.LASF14:
	.string	"_off_t"
.LASF61:
	.string	"_nbuf"
.LASF98:
	.string	"_unused_rand"
.LASF157:
	.string	"aos_mutex_unlock"
.LASF75:
	.string	"_unspecified_locale_info"
.LASF67:
	.string	"_flags2"
.LASF167:
	.string	"log_level_bit"
.LASF44:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF166:
	.string	"__locale_t"
.LASF58:
	.string	"_seek"
.LASF72:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF60:
	.string	"_ubuf"
.LASF120:
	.string	"cli_command"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

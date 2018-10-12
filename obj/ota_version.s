	.file	"ota_version.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ota_ota_version"
	.section	.text.unlikely.ota_get_ota_version,"ax",@progbits
.LCOLDB1:
	.section	.text.ota_get_ota_version,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.ota_get_ota_version
.Ltext_cold0:
	.section	.text.ota_get_ota_version
	.globl	ota_get_ota_version
	.type	ota_get_ota_version, @function
ota_get_ota_version:
.LFB16:
	.file 1 "framework/fota/ota_version.c"
	.loc 1 20 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 22 0
	movl	$version_config+64, %edx
	movl	$16, %ecx
	.loc 1 20 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 22 0
	movl	%edx, %edi
	.loc 1 20 0
	subl	$24, %esp
	.loc 1 21 0
	movl	$64, -16(%ebp)
	.loc 1 20 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 22 0
	rep stosl
	.loc 1 23 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	%edx
	pushl	$.LC0
	call	aos_kv_get
.LVL0:
	.loc 1 26 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2
	call	__stack_chk_fail
.LVL1:
.L2:
	movl	$version_config+64, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	ota_get_ota_version, .-ota_get_ota_version
	.section	.text.unlikely.ota_get_ota_version
.LCOLDE1:
	.section	.text.ota_get_ota_version
.LHOTE1:
	.section	.text.unlikely.ota_set_ota_version,"ax",@progbits
.LCOLDB2:
	.section	.text.ota_set_ota_version,"ax",@progbits
.LHOTB2:
	.globl	ota_set_ota_version
	.type	ota_set_ota_version, @function
ota_set_ota_version:
.LFB17:
	.loc 1 29 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 29 0
	movl	8(%ebp), %eax
	.loc 1 30 0
	testl	%eax, %eax
	je	.L5
	.loc 1 33 0
	pushl	$1
	pushl	$64
	pushl	%eax
	pushl	$.LC0
	call	aos_kv_set
.LVL3:
	addl	$16, %esp
.L5:
	.loc 1 34 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	ota_set_ota_version, .-ota_set_ota_version
	.section	.text.unlikely.ota_set_ota_version
.LCOLDE2:
	.section	.text.ota_set_ota_version
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"ota_dev_version"
	.section	.text.unlikely.ota_get_dev_version,"ax",@progbits
.LCOLDB4:
	.section	.text.ota_get_dev_version,"ax",@progbits
.LHOTB4:
	.globl	ota_get_dev_version
	.type	ota_get_dev_version, @function
ota_get_dev_version:
.LFB18:
	.loc 1 37 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 39 0
	movl	$version_config, %edx
	movl	$16, %ecx
	.loc 1 37 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 39 0
	movl	%edx, %edi
	.loc 1 37 0
	subl	$24, %esp
	.loc 1 38 0
	movl	$64, -16(%ebp)
	.loc 1 37 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 39 0
	rep stosl
	.loc 1 40 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	%edx
	pushl	$.LC3
	call	aos_kv_get
.LVL4:
	.loc 1 42 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L12
	call	__stack_chk_fail
.LVL5:
.L12:
	movl	$version_config, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	ota_get_dev_version, .-ota_get_dev_version
	.section	.text.unlikely.ota_get_dev_version
.LCOLDE4:
	.section	.text.ota_get_dev_version
.LHOTE4:
	.section	.text.unlikely.ota_set_dev_version,"ax",@progbits
.LCOLDB5:
	.section	.text.ota_set_dev_version,"ax",@progbits
.LHOTB5:
	.globl	ota_set_dev_version
	.type	ota_set_dev_version, @function
ota_set_dev_version:
.LFB19:
	.loc 1 45 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 45 0
	movl	8(%ebp), %eax
	.loc 1 46 0
	testl	%eax, %eax
	je	.L14
	.loc 1 49 0
	pushl	$1
	pushl	$64
	pushl	%eax
	pushl	$.LC3
	call	aos_kv_set
.LVL7:
	addl	$16, %esp
.L14:
	.loc 1 50 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	ota_set_dev_version, .-ota_set_dev_version
	.section	.text.unlikely.ota_set_dev_version
.LCOLDE5:
	.section	.text.ota_set_dev_version
.LHOTE5:
	.section	.text.unlikely.ota_get_system_version,"ax",@progbits
.LCOLDB6:
	.section	.text.ota_get_system_version,"ax",@progbits
.LHOTB6:
	.globl	ota_get_system_version
	.type	ota_get_system_version, @function
ota_get_system_version:
.LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	aos_get_app_version
	.cfi_endproc
.LFE23:
	.size	ota_get_system_version, .-ota_get_system_version
	.section	.text.unlikely.ota_get_system_version
.LCOLDE6:
	.section	.text.ota_get_system_version
.LHOTE6:
	.section	.text.unlikely.aos_get_os_version,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_get_os_version,"ax",@progbits
.LHOTB7:
	.globl	aos_get_os_version
	.type	aos_get_os_version, @function
aos_get_os_version:
.LFB21:
	.loc 1 75 0
	.cfi_startproc
	.loc 1 75 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 84 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 82 0
	jmp	aos_get_app_version
.LVL8:
	.cfi_endproc
.LFE21:
	.size	aos_get_os_version, .-aos_get_os_version
	.section	.text.unlikely.aos_get_os_version
.LCOLDE7:
	.section	.text.aos_get_os_version
.LHOTE7:
	.globl	version_config
	.section	.bss.version_config,"aw",@nobits
	.align 32
	.type	version_config, @object
	.size	version_config, 256
version_config:
	.zero	256
	.text
.Letext0:
	.section	.text.unlikely.ota_get_ota_version
.Letext_cold0:
	.file 2 "framework/fota/ota_version.h"
	.file 3 "./include/aos/log.h"
	.file 4 "./include/aos/kv.h"
	.file 5 "./include/aos/version.h"
	.file 6 "./include/hal/sensor.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x287
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF40
	.byte	0xc
	.long	.LASF41
	.long	.LASF42
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.long	0x86
	.uleb128 0x5
	.long	0x79
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.byte	0x6
	.byte	0x48
	.long	0xf4
	.uleb128 0x7
	.long	.LASF14
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.uleb128 0x7
	.long	.LASF19
	.byte	0x5
	.uleb128 0x7
	.long	.LASF20
	.byte	0x6
	.uleb128 0x7
	.long	.LASF21
	.byte	0x7
	.uleb128 0x7
	.long	.LASF22
	.byte	0x8
	.uleb128 0x7
	.long	.LASF23
	.byte	0x9
	.uleb128 0x7
	.long	.LASF24
	.byte	0xa
	.uleb128 0x7
	.long	.LASF25
	.byte	0xb
	.uleb128 0x7
	.long	.LASF26
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x79
	.long	0x104
	.uleb128 0x9
	.long	0x72
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.value	0x100
	.byte	0x2
	.byte	0xf
	.long	0x142
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.byte	0x10
	.long	0xf4
	.byte	0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x2
	.byte	0x11
	.long	0xf4
	.byte	0x40
	.uleb128 0xb
	.long	.LASF29
	.byte	0x2
	.byte	0x12
	.long	0xf4
	.byte	0x80
	.uleb128 0xb
	.long	.LASF30
	.byte	0x2
	.byte	0x13
	.long	0xf4
	.byte	0xc0
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x2
	.byte	0x14
	.long	0x104
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0x4a
	.long	0x80
	.byte	0x1
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x13
	.long	0x80
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x193
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x15
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LVL0
	.long	0x260
	.uleb128 0x10
	.long	.LVL1
	.long	0x26b
	.byte	0
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x1c
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c0
	.uleb128 0x12
	.string	"str"
	.byte	0x1
	.byte	0x1c
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LVL3
	.long	0x274
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x24
	.long	0x80
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x26
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LVL4
	.long	0x260
	.uleb128 0x10
	.long	.LVL5
	.long	0x26b
	.byte	0
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.byte	0x2c
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x227
	.uleb128 0x12
	.string	"str"
	.byte	0x1
	.byte	0x2c
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LVL7
	.long	0x274
	.byte	0
	.uleb128 0x13
	.long	0x14d
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x244
	.uleb128 0x14
	.long	.LVL8
	.long	0x27f
	.byte	0
	.uleb128 0x15
	.long	.LASF35
	.byte	0x3
	.byte	0x17
	.long	0x2c
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x11
	.long	0x142
	.uleb128 0x5
	.byte	0x3
	.long	version_config
	.uleb128 0x17
	.long	.LASF37
	.long	.LASF37
	.byte	0x4
	.byte	0x28
	.uleb128 0x18
	.long	.LASF45
	.long	.LASF45
	.uleb128 0x17
	.long	.LASF38
	.long	.LASF38
	.byte	0x4
	.byte	0x19
	.uleb128 0x17
	.long	.LASF39
	.long	.LASF39
	.byte	0x5
	.byte	0x22
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB21
	.long	.LFE21
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"TAG_DEV_TEMP"
.LASF21:
	.string	"TAG_DEV_UV"
.LASF40:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF26:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF24:
	.string	"TAG_DEV_HR"
.LASF32:
	.string	"ota_get_dev_version"
.LASF36:
	.string	"version_config"
.LASF39:
	.string	"aos_get_app_version"
.LASF17:
	.string	"TAG_DEV_ALS"
.LASF15:
	.string	"TAG_DEV_MAG"
.LASF13:
	.string	"float"
.LASF28:
	.string	"ota_version"
.LASF34:
	.string	"ota_set_dev_version"
.LASF4:
	.string	"unsigned char"
.LASF37:
	.string	"aos_kv_get"
.LASF8:
	.string	"long unsigned int"
.LASF14:
	.string	"TAG_DEV_ACC"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"TAG_DEV_BARO"
.LASF25:
	.string	"TAG_DEV_GPS"
.LASF38:
	.string	"aos_kv_set"
.LASF18:
	.string	"TAG_DEV_PS"
.LASF27:
	.string	"dev_version"
.LASF23:
	.string	"TAG_DEV_HALL"
.LASF30:
	.string	"system_version"
.LASF41:
	.string	"src/ota_version.c"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"aos_get_os_version"
.LASF29:
	.string	"app_version"
.LASF11:
	.string	"char"
.LASF33:
	.string	"ota_set_ota_version"
.LASF35:
	.string	"aos_log_level"
.LASF10:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF45:
	.string	"__stack_chk_fail"
.LASF42:
	.string	"/home/stone/Documents/pca"
.LASF16:
	.string	"TAG_DEV_GYRO"
.LASF5:
	.string	"short int"
.LASF43:
	.string	"version_config_t"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"long double"
.LASF31:
	.string	"ota_get_ota_version"
.LASF3:
	.string	"signed char"
.LASF22:
	.string	"TAG_DEV_HUMI"
.LASF12:
	.string	"_Bool"
.LASF9:
	.string	"long long unsigned int"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

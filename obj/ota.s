	.file	"ota.c"
	.text
.Ltext0:
	.section	.text.unlikely.hal_ota_get_default_module,"ax",@progbits
.LCOLDB0:
	.section	.text.hal_ota_get_default_module,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.hal_ota_get_default_module
.Ltext_cold0:
	.section	.text.hal_ota_get_default_module
	.globl	hal_ota_get_default_module
	.type	hal_ota_get_default_module, @function
hal_ota_get_default_module:
.LFB23:
	.file 1 "kernel/hal/ota.c"
	.loc 1 11 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 13 0
	movl	ota_module, %eax
	.loc 1 11 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 13 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	hal_ota_get_default_module, .-hal_ota_get_default_module
	.section	.text.unlikely.hal_ota_get_default_module
.LCOLDE0:
	.section	.text.hal_ota_get_default_module
.LHOTE0:
	.section	.text.unlikely.hal_ota_register_module,"ax",@progbits
.LCOLDB1:
	.section	.text.hal_ota_register_module,"ax",@progbits
.LHOTB1:
	.globl	hal_ota_register_module
	.type	hal_ota_register_module, @function
hal_ota_register_module:
.LFB24:
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 17 0
	movl	8(%ebp), %eax
	.loc 1 18 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 17 0
	movl	%eax, ota_module
	.loc 1 18 0
	ret
	.cfi_endproc
.LFE24:
	.size	hal_ota_register_module, .-hal_ota_register_module
	.section	.text.unlikely.hal_ota_register_module
.LCOLDE1:
	.section	.text.hal_ota_register_module
.LHOTE1:
	.section	.text.unlikely.hal_ota_init,"ax",@progbits
.LCOLDB2:
	.section	.text.hal_ota_init,"ax",@progbits
.LHOTB2:
	.globl	hal_ota_init
	.type	hal_ota_init, @function
hal_ota_init:
.LFB25:
	.loc 1 21 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 22 0
	movl	ota_module, %eax
	pushl	8(%ebp)
	pushl	%eax
	call	*20(%eax)
.LVL2:
	.loc 1 23 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	hal_ota_init, .-hal_ota_init
	.section	.text.unlikely.hal_ota_init
.LCOLDE2:
	.section	.text.hal_ota_init
.LHOTE2:
	.section	.text.unlikely.hal_ota_write,"ax",@progbits
.LCOLDB3:
	.section	.text.hal_ota_write,"ax",@progbits
.LHOTB3:
	.globl	hal_ota_write
	.type	hal_ota_write, @function
hal_ota_write:
.LFB26:
	.loc 1 26 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 26 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	20(%ebp), %esi
	.loc 1 27 0
	testl	%eax, %eax
	jne	.L8
.LBB8:
.LBB9:
	.loc 1 12 0
	movl	ota_module, %eax
.LVL4:
.LBE9:
.LBE8:
	.loc 1 31 0
	testl	%eax, %eax
	je	.L9
.L8:
	.loc 1 31 0 discriminator 1
	movl	24(%eax), %edx
	testl	%edx, %edx
	je	.L9
	.loc 1 32 0
	movl	%esi, 20(%ebp)
.LVL5:
	movl	%ebx, 16(%ebp)
.LVL6:
	movl	%ecx, 12(%ebp)
.LVL7:
	movl	%eax, 8(%ebp)
	.loc 1 36 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL8:
	popl	%esi
	.cfi_restore 6
.LVL9:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 32 0
	jmp	*%edx
.LVL10:
.L9:
	.cfi_restore_state
	.loc 1 36 0
	popl	%ebx
	.cfi_restore 3
.LVL11:
	xorl	%eax, %eax
.LVL12:
	popl	%esi
	.cfi_restore 6
.LVL13:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	hal_ota_write, .-hal_ota_write
	.section	.text.unlikely.hal_ota_write
.LCOLDE3:
	.section	.text.hal_ota_write
.LHOTE3:
	.section	.text.unlikely.hal_ota_read,"ax",@progbits
.LCOLDB4:
	.section	.text.hal_ota_read,"ax",@progbits
.LHOTB4:
	.globl	hal_ota_read
	.type	hal_ota_read, @function
hal_ota_read:
.LFB27:
	.loc 1 39 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 39 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	20(%ebp), %esi
	.loc 1 40 0
	testl	%eax, %eax
	jne	.L17
.LBB10:
.LBB11:
	.loc 1 12 0
	movl	ota_module, %eax
.LVL15:
.LBE11:
.LBE10:
	.loc 1 44 0
	testl	%eax, %eax
	je	.L18
.L17:
	.loc 1 44 0 discriminator 1
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	.L18
	.loc 1 45 0
	movl	%esi, 20(%ebp)
.LVL16:
	movl	%ebx, 16(%ebp)
.LVL17:
	movl	%ecx, 12(%ebp)
.LVL18:
	movl	%eax, 8(%ebp)
	.loc 1 49 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL19:
	popl	%esi
	.cfi_restore 6
.LVL20:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 45 0
	jmp	*%edx
.LVL21:
.L18:
	.cfi_restore_state
	.loc 1 49 0
	popl	%ebx
	.cfi_restore 3
.LVL22:
	xorl	%eax, %eax
.LVL23:
	popl	%esi
	.cfi_restore 6
.LVL24:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	hal_ota_read, .-hal_ota_read
	.section	.text.unlikely.hal_ota_read
.LCOLDE4:
	.section	.text.hal_ota_read
.LHOTE4:
	.section	.text.unlikely.hal_ota_set_boot,"ax",@progbits
.LCOLDB5:
	.section	.text.hal_ota_set_boot,"ax",@progbits
.LHOTB5:
	.globl	hal_ota_set_boot
	.type	hal_ota_set_boot, @function
hal_ota_set_boot:
.LFB28:
	.loc 1 52 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 52 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	.loc 1 53 0
	testl	%eax, %eax
	jne	.L25
.LBB12:
.LBB13:
	.loc 1 12 0
	movl	ota_module, %eax
.LVL26:
.LBE13:
.LBE12:
	.loc 1 57 0
	testl	%eax, %eax
	je	.L26
.L25:
	.loc 1 57 0 discriminator 1
	movl	32(%eax), %edx
	testl	%edx, %edx
	je	.L26
	.loc 1 58 0
	movl	%ecx, 12(%ebp)
.LVL27:
	movl	%eax, 8(%ebp)
	.loc 1 62 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 58 0
	jmp	*%edx
.LVL28:
.L26:
	.cfi_restore_state
	.loc 1 62 0
	xorl	%eax, %eax
.LVL29:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	hal_ota_set_boot, .-hal_ota_set_boot
	.section	.text.unlikely.hal_ota_set_boot
.LCOLDE5:
	.section	.text.hal_ota_set_boot
.LHOTE5:
	.section	.bss.ota_module,"aw",@nobits
	.align 4
	.type	ota_module, @object
	.size	ota_module, 4
ota_module:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.hal_ota_get_default_module
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/aos/list.h"
	.file 5 "./include/hal/base.h"
	.file 6 "./include/hal/ota.h"
	.file 7 "./include/hal/sensor.h"
	.file 8 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3fc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF60
	.byte	0xc
	.long	.LASF61
	.long	.LASF62
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x1d
	.long	0x37
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x9e
	.uleb128 0x7
	.long	0x88
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x8
	.long	.LASF26
	.byte	0x8
	.byte	0x4
	.byte	0x1f
	.long	0xde
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x20
	.long	0xde
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x21
	.long	0xde
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb9
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x22
	.long	0xb9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF19
	.uleb128 0xa
	.byte	0x14
	.byte	0x5
	.byte	0x15
	.long	0x12f
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x16
	.long	0xe4
	.byte	0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x17
	.long	0x73
	.byte	0x8
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x18
	.long	0x98
	.byte	0xc
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x19
	.long	0x96
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x1a
	.long	0xf6
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x42
	.long	0x145
	.uleb128 0x8
	.long	.LASF27
	.byte	0x28
	.byte	0x6
	.byte	0x46
	.long	0x19a
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.byte	0x48
	.long	0x12f
	.byte	0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.byte	0x4b
	.long	0x1bf
	.byte	0x14
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.byte	0x4c
	.long	0x1f4
	.byte	0x18
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.byte	0x4e
	.long	0x1f4
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.byte	0x50
	.long	0x1bf
	.byte	0x20
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.byte	0x51
	.long	0x209
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.long	.LASF34
	.byte	0x6
	.byte	0x44
	.long	0x73
	.uleb128 0xb
	.long	0x73
	.long	0x1b9
	.uleb128 0xc
	.long	0x1b9
	.uleb128 0xc
	.long	0x96
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x13a
	.uleb128 0x6
	.byte	0x4
	.long	0x1a5
	.uleb128 0xb
	.long	0x73
	.long	0x1e3
	.uleb128 0xc
	.long	0x1b9
	.uleb128 0xc
	.long	0x1e3
	.uleb128 0xc
	.long	0x1ee
	.uleb128 0xc
	.long	0xae
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1e9
	.uleb128 0xd
	.long	0xae
	.uleb128 0x6
	.byte	0x4
	.long	0xa3
	.uleb128 0x6
	.byte	0x4
	.long	0x1c5
	.uleb128 0xb
	.long	0x73
	.long	0x209
	.uleb128 0xc
	.long	0x1b9
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1fa
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF35
	.uleb128 0xe
	.byte	0x4
	.long	0x7a
	.byte	0x7
	.byte	0x48
	.long	0x271
	.uleb128 0xf
	.long	.LASF36
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.uleb128 0xf
	.long	.LASF38
	.byte	0x2
	.uleb128 0xf
	.long	.LASF39
	.byte	0x3
	.uleb128 0xf
	.long	.LASF40
	.byte	0x4
	.uleb128 0xf
	.long	.LASF41
	.byte	0x5
	.uleb128 0xf
	.long	.LASF42
	.byte	0x6
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.uleb128 0xf
	.long	.LASF44
	.byte	0x8
	.uleb128 0xf
	.long	.LASF45
	.byte	0x9
	.uleb128 0xf
	.long	.LASF46
	.byte	0xa
	.uleb128 0xf
	.long	.LASF47
	.byte	0xb
	.uleb128 0xf
	.long	.LASF48
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0xa
	.long	0x1b9
	.byte	0x1
	.uleb128 0x11
	.long	0x271
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0xf
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b0
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0xf
	.long	0x1b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x14
	.long	0x19a
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d8
	.uleb128 0x13
	.long	.LASF50
	.byte	0x1
	.byte	0x14
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF52
	.byte	0x1
	.byte	0x19
	.long	0x19a
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x19
	.long	0x1b9
	.long	.LLST0
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x19
	.long	0x1e3
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0x19
	.long	0x1ee
	.long	.LLST2
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.byte	0x19
	.long	0xae
	.long	.LLST3
	.uleb128 0x18
	.long	0x271
	.long	.LBB8
	.long	.LBE8-.LBB8
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0x26
	.long	0x19a
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x39e
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x26
	.long	0x1b9
	.long	.LLST4
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x26
	.long	0x1e3
	.long	.LLST5
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0x26
	.long	0x1ee
	.long	.LLST6
	.uleb128 0x17
	.long	.LASF58
	.byte	0x1
	.byte	0x26
	.long	0xae
	.long	.LLST7
	.uleb128 0x18
	.long	0x271
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0x29
	.byte	0
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0x33
	.long	0x19a
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e3
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.byte	0x33
	.long	0x1b9
	.long	.LLST8
	.uleb128 0x17
	.long	.LASF50
	.byte	0x1
	.byte	0x33
	.long	0x96
	.long	.LLST9
	.uleb128 0x18
	.long	0x271
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.byte	0x8
	.long	0x1b9
	.uleb128 0x5
	.byte	0x3
	.long	ota_module
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x8
	.byte	0x17
	.long	0x7a
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL4
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL7
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL7
	.long	.LVL10-1
	.value	0x1
	.byte	0x51
	.long	.LVL10
	.long	.LFE26
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	.LVL8
	.long	.LVL10-1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x53
	.long	.LVL11
	.long	.LFE26
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL5
	.long	.LVL9
	.value	0x1
	.byte	0x56
	.long	.LVL9
	.long	.LVL10-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL10
	.long	.LVL13
	.value	0x1
	.byte	0x56
	.long	.LVL13
	.long	.LFE26
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL15
	.long	.LVL21-1
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL14
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL18
	.long	.LVL21-1
	.value	0x1
	.byte	0x51
	.long	.LVL21
	.long	.LFE27
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	.LVL19
	.long	.LVL21-1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LFE27
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL16
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL16
	.long	.LVL20
	.value	0x1
	.byte	0x56
	.long	.LVL20
	.long	.LVL21-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL21
	.long	.LVL24
	.value	0x1
	.byte	0x56
	.long	.LVL24
	.long	.LFE27
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST8:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL26
	.long	.LVL28-1
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL25
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL27
	.long	.LVL28-1
	.value	0x1
	.byte	0x51
	.long	.LVL28
	.long	.LFE28
	.value	0x1
	.byte	0x51
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"hal_ota_register_module"
.LASF48:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF31:
	.string	"ota_read"
.LASF2:
	.string	"short int"
.LASF49:
	.string	"module"
.LASF13:
	.string	"sizetype"
.LASF39:
	.string	"TAG_DEV_ALS"
.LASF38:
	.string	"TAG_DEV_GYRO"
.LASF6:
	.string	"__uint32_t"
.LASF55:
	.string	"in_buf_len"
.LASF63:
	.string	"hal_ota_get_default_module"
.LASF14:
	.string	"uint8_t"
.LASF32:
	.string	"ota_set_boot"
.LASF61:
	.string	"src/ota.c"
.LASF52:
	.string	"hal_ota_write"
.LASF35:
	.string	"float"
.LASF43:
	.string	"TAG_DEV_UV"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"long int"
.LASF28:
	.string	"base"
.LASF23:
	.string	"priv_dev"
.LASF47:
	.string	"TAG_DEV_GPS"
.LASF5:
	.string	"__uint8_t"
.LASF66:
	.string	"aos_log_level"
.LASF22:
	.string	"name"
.LASF11:
	.string	"long double"
.LASF64:
	.string	"hal_ota_init"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"TAG_DEV_TEMP"
.LASF26:
	.string	"dlist_s"
.LASF18:
	.string	"dlist_t"
.LASF44:
	.string	"TAG_DEV_HUMI"
.LASF0:
	.string	"signed char"
.LASF33:
	.string	"ota_rollback"
.LASF57:
	.string	"out_buf"
.LASF15:
	.string	"uint32_t"
.LASF53:
	.string	"off_set"
.LASF10:
	.string	"unsigned int"
.LASF45:
	.string	"TAG_DEV_HALL"
.LASF34:
	.string	"hal_stat_t"
.LASF50:
	.string	"something"
.LASF65:
	.string	"ota_module"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"TAG_DEV_BARO"
.LASF12:
	.string	"char"
.LASF29:
	.string	"init"
.LASF56:
	.string	"hal_ota_read"
.LASF20:
	.string	"list"
.LASF36:
	.string	"TAG_DEV_ACC"
.LASF19:
	.string	"_Bool"
.LASF54:
	.string	"in_buf"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"hal_module_base_t"
.LASF37:
	.string	"TAG_DEV_MAG"
.LASF30:
	.string	"ota_write"
.LASF59:
	.string	"hal_ota_set_boot"
.LASF46:
	.string	"TAG_DEV_HR"
.LASF60:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF58:
	.string	"out_buf_len"
.LASF62:
	.string	"/home/stone/Documents/pca"
.LASF21:
	.string	"magic"
.LASF16:
	.string	"prev"
.LASF27:
	.string	"hal_ota_module_s"
.LASF25:
	.string	"hal_ota_module_t"
.LASF40:
	.string	"TAG_DEV_PS"
.LASF17:
	.string	"next"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

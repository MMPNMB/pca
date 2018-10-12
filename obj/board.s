	.file	"board.c"
	.text
.Ltext0:
	.section	.text.unlikely.key_proc_work,"ax",@progbits
.LCOLDB0:
	.section	.text.key_proc_work,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.key_proc_work
.Ltext_cold0:
	.section	.text.key_proc_work
	.type	key_proc_work, @function
key_proc_work:
.LFB23:
	.file 1 "board/mk3060/board.c"
	.loc 1 115 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 116 0
	pushl	$0
	pushl	$key_poll_func
	call	aos_schedule_call
.LVL1:
	.loc 1 117 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	key_proc_work, .-key_proc_work
	.section	.text.unlikely.key_proc_work
.LCOLDE0:
	.section	.text.key_proc_work
.LHOTE0:
	.section	.text.unlikely.handle_elink_key,"ax",@progbits
.LCOLDB1:
	.section	.text.handle_elink_key,"ax",@progbits
.LHOTB1:
	.type	handle_elink_key, @function
handle_elink_key:
.LFB24:
	.loc 1 120 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 120 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 123 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	$gpio_key_boot
	call	hal_gpio_input_get
.LVL3:
	.loc 1 124 0
	addl	$16, %esp
	cmpl	$0, -16(%ebp)
	jne	.L3
	.loc 1 124 0 is_stmt 0 discriminator 1
	movl	elink_time+4, %eax
	orl	elink_time, %eax
	jne	.L3
.LVL4:
.LBB4:
.LBB5:
	.loc 1 125 0 is_stmt 1
	call	aos_now_ms
.LVL5:
	.loc 1 126 0
	subl	$12, %esp
	.loc 1 125 0
	movl	%eax, elink_time
	movl	%edx, elink_time+4
	.loc 1 126 0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$key_proc_work
	pushl	$0
	call	aos_loop_schedule_work
.LVL6:
	addl	$32, %esp
.LVL7:
.L3:
.LBE5:
.LBE4:
	.loc 1 128 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L5
	call	__stack_chk_fail
.LVL8:
.L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	handle_elink_key, .-handle_elink_key
	.section	.text.unlikely.handle_elink_key
.LCOLDE1:
	.section	.text.handle_elink_key
.LHOTE1:
	.section	.text.unlikely.key_poll_func,"ax",@progbits
.LCOLDB2:
	.section	.text.key_poll_func,"ax",@progbits
.LHOTB2:
	.type	key_poll_func, @function
key_poll_func:
.LFB22:
	.loc 1 89 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 89 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 93 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	$gpio_key_boot
	call	hal_gpio_input_get
.LVL10:
	.loc 1 95 0
	addl	$16, %esp
	cmpl	$0, -16(%ebp)
	jne	.L9
.L15:
	.loc 1 96 0
	pushl	%eax
	pushl	$0
	pushl	$key_poll_func
	pushl	$10
	call	aos_post_delayed_action
.LVL11:
	jmp	.L23
.L9:
.LVL12:
.LBB8:
.LBB9:
	.loc 1 98 0
	call	aos_now_ms
.LVL13:
	subl	elink_time, %eax
	sbbl	elink_time+4, %edx
.LVL14:
	.loc 1 99 0
	cmpl	$0, %edx
	ja	.L18
	cmpl	$6000, %eax
	jbe	.L11
.L18:
	.loc 1 100 0
	movl	$0, elink_time
	.loc 1 101 0
	pushl	%ecx
	.loc 1 100 0
	movl	$0, elink_time+4
	.loc 1 101 0
	pushl	$4
	jmp	.L22
.L11:
	.loc 1 102 0
	cmpl	$0, %edx
	ja	.L19
	cmpl	$2000, %eax
	jbe	.L13
.L19:
	.loc 1 103 0
	movl	$0, elink_time
	.loc 1 104 0
	pushl	%edx
	.loc 1 103 0
	movl	$0, elink_time+4
	.loc 1 104 0
	pushl	$3
	jmp	.L22
.L13:
	.loc 1 105 0
	cmpl	$0, %edx
	ja	.L20
	cmpl	$40, %eax
	jbe	.L15
.L20:
.LVL15:
	.loc 1 107 0
	pushl	%eax
	pushl	$2
	.loc 1 106 0
	movl	$0, elink_time
	movl	$0, elink_time+4
.L22:
	.loc 1 107 0
	pushl	$13
	pushl	$513
	call	aos_post_event
.LVL16:
.L23:
	addl	$16, %esp
.LBE9:
.LBE8:
	.loc 1 112 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L17
	call	__stack_chk_fail
.LVL17:
.L17:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	key_poll_func, .-key_poll_func
	.section	.text.unlikely.key_poll_func
.LCOLDE2:
	.section	.text.key_poll_func
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Enter QC mode\r"
	.section	.text.unlikely.board_init,"ax",@progbits
.LCOLDB4:
	.section	.text.board_init,"ax",@progbits
.LHOTB4:
	.globl	board_init
	.type	board_init, @function
board_init:
.LFB26:
	.loc 1 160 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 3, -12
	.loc 1 161 0
	movb	$7, gpio_key_boot
.LBB12:
.LBB13:
	.loc 1 133 0
	movl	$1, -16(%ebp)
	.loc 1 137 0
	pushl	$gpio_key_boot
	.loc 1 136 0
	movl	$2, gpio_key_boot+4
.LBE13:
.LBE12:
	.loc 1 160 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LBB15:
.LBB14:
	.loc 1 137 0
	call	hal_gpio_init
.LVL18:
	.loc 1 138 0
	popl	%ecx
	popl	%ebx
	leal	-16(%ebp), %ebx
	pushl	%ebx
	pushl	$gpio_key_boot
	call	hal_gpio_input_get
.LVL19:
	.loc 1 140 0
	addl	$16, %esp
	cmpl	$0, -16(%ebp)
	jne	.L26
	.loc 1 147 0
	subl	$12, %esp
	.loc 1 144 0
	movl	$1, -16(%ebp)
	.loc 1 145 0
	movb	$1, gpio_key_status
	.loc 1 147 0
	pushl	$gpio_key_status
	.loc 1 146 0
	movl	$2, gpio_key_status+4
	.loc 1 147 0
	call	hal_gpio_init
.LVL20:
	.loc 1 148 0
	popl	%eax
	popl	%edx
	pushl	%ebx
	pushl	$gpio_key_status
	call	hal_gpio_input_get
.LVL21:
	.loc 1 149 0
	addl	$16, %esp
	cmpl	$0, -16(%ebp)
	jne	.L26
	.loc 1 154 0
	subl	$12, %esp
	pushl	$.LC3
	call	puts
.LVL22:
	.loc 1 155 0
	call	qc_test
.LVL23:
	addl	$16, %esp
.L26:
.LBE14:
.LBE15:
	.loc 1 164 0
	subl	$12, %esp
	pushl	$gpio_key_boot
	call	hal_gpio_clear_irq
.LVL24:
	.loc 1 165 0
	pushl	$0
	pushl	$handle_elink_key
	pushl	$2
	pushl	$gpio_key_boot
	call	hal_gpio_enable_irq
.LVL25:
	.loc 1 166 0
	addl	$32, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L28
	call	__stack_chk_fail
.LVL26:
.L28:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	board_init, .-board_init
	.section	.text.unlikely.board_init
.LCOLDE4:
	.section	.text.board_init
.LHOTE4:
	.section	.bss.gpio_key_status,"aw",@nobits
	.align 4
	.type	gpio_key_status, @object
	.size	gpio_key_status, 12
gpio_key_status:
	.zero	12
	.section	.bss.gpio_key_boot,"aw",@nobits
	.align 4
	.type	gpio_key_boot, @object
	.size	gpio_key_boot, 12
gpio_key_boot:
	.zero	12
	.section	.bss.elink_time,"aw",@nobits
	.align 8
	.type	elink_time, @object
	.size	elink_time, 8
elink_time:
	.zero	8
	.globl	hal_partitions
	.section	.rodata.str1.1
.LC5:
	.string	"Bootloader"
.LC6:
	.string	"Application"
.LC7:
	.string	"OTA Storage"
.LC8:
	.string	"PARAMETER1"
.LC9:
	.string	"PARAMETER2"
.LC10:
	.string	"PARAMETER3"
.LC11:
	.string	"PARAMETER4"
.LC12:
	.string	"spiffs"
	.section	.rodata.hal_partitions,"a",@progbits
	.align 32
	.type	hal_partitions, @object
	.size	hal_partitions, 220
hal_partitions:
	.long	0
	.long	.LC5
	.long	0
	.long	65536
	.long	1
	.long	0
	.long	.LC6
	.long	77824
	.long	843776
	.long	3
	.zero	20
	.long	0
	.long	.LC7
	.long	750080
	.long	843776
	.long	3
	.zero	20
	.long	0
	.long	.LC8
	.long	65536
	.long	4096
	.long	3
	.long	0
	.long	.LC9
	.long	69632
	.long	4096
	.long	3
	.long	0
	.long	.LC10
	.long	73728
	.long	4096
	.long	3
	.long	0
	.long	.LC11
	.long	53248
	.long	4096
	.long	3
	.zero	20
	.long	0
	.long	.LC12
	.long	1593856
	.long	262144
	.long	3
	.text
.Letext0:
	.section	.text.unlikely.key_proc_work
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/hal/soc/flash.h"
	.file 5 "./include/hal/soc/gpio.h"
	.file 6 "./include/aos/log.h"
	.file 7 "./include/aos/yloop.h"
	.file 8 "./include/aos/kernel.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x57d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF85
	.byte	0xc
	.long	.LASF86
	.long	.LASF87
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x5b
	.long	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x3c
	.long	0x6c
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x7e
	.byte	0x4
	.byte	0x13
	.long	0x123
	.uleb128 0x7
	.long	.LASF16
	.sleb128 -1
	.uleb128 0x8
	.long	.LASF17
	.byte	0
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.uleb128 0x8
	.long	.LASF19
	.byte	0x2
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.uleb128 0x8
	.long	.LASF25
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0x9
	.uleb128 0x8
	.long	.LASF27
	.byte	0xa
	.uleb128 0x8
	.long	.LASF28
	.byte	0xb
	.uleb128 0x8
	.long	.LASF29
	.byte	0xc
	.uleb128 0x8
	.long	.LASF30
	.byte	0xd
	.uleb128 0x8
	.long	.LASF31
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x85
	.byte	0x4
	.byte	0x26
	.long	0x14e
	.uleb128 0x8
	.long	.LASF32
	.byte	0
	.uleb128 0x8
	.long	.LASF33
	.byte	0x1
	.uleb128 0x8
	.long	.LASF34
	.byte	0x2
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x2c
	.long	0x123
	.uleb128 0x9
	.byte	0x14
	.byte	0x4
	.byte	0x2e
	.long	0x19e
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x2f
	.long	0x14e
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.byte	0x30
	.long	0x19e
	.byte	0x4
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.byte	0x31
	.long	0x97
	.byte	0x8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.byte	0x32
	.long	0x97
	.byte	0xc
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.byte	0x33
	.long	0x97
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x1ab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF43
	.uleb128 0xc
	.long	0x1a4
	.uleb128 0x3
	.long	.LASF44
	.byte	0x4
	.byte	0x34
	.long	0x159
	.uleb128 0x6
	.byte	0x4
	.long	0x85
	.byte	0x5
	.byte	0xb
	.long	0x1f8
	.uleb128 0x8
	.long	.LASF45
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x1
	.uleb128 0x8
	.long	.LASF47
	.byte	0x2
	.uleb128 0x8
	.long	.LASF48
	.byte	0x3
	.uleb128 0x8
	.long	.LASF49
	.byte	0x4
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.uleb128 0x8
	.long	.LASF52
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x5
	.byte	0x1b
	.long	0x1bb
	.uleb128 0x9
	.byte	0xc
	.byte	0x5
	.byte	0x20
	.long	0x230
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x21
	.long	0x8c
	.byte	0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x5
	.byte	0x22
	.long	0x1f8
	.byte	0x4
	.uleb128 0xa
	.long	.LASF56
	.byte	0x5
	.byte	0x23
	.long	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x5
	.byte	0x24
	.long	0x203
	.uleb128 0x6
	.byte	0x4
	.long	0x85
	.byte	0x5
	.byte	0x29
	.long	0x25a
	.uleb128 0x8
	.long	.LASF58
	.byte	0x1
	.uleb128 0x8
	.long	.LASF59
	.byte	0x2
	.uleb128 0x8
	.long	.LASF60
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF62
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF63
	.uleb128 0xd
	.long	.LASF64
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	0x292
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x77
	.long	0xb4
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0x79
	.long	0x97
	.byte	0
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x2c0
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x58
	.long	0xb4
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.byte	0x5a
	.long	0x97
	.uleb128 0xf
	.long	.LASF68
	.byte	0x1
	.byte	0x5b
	.long	0xa2
	.byte	0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x1
	.byte	0x72
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x72
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LVL1
	.long	0x4f9
	.byte	0
	.uleb128 0x13
	.long	0x26f
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x35b
	.uleb128 0x14
	.long	0x27b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x348
	.uleb128 0x17
	.long	0x27b
	.long	.LLST0
	.uleb128 0x18
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x19
	.long	0x286
	.uleb128 0x12
	.long	.LVL5
	.long	0x504
	.uleb128 0x12
	.long	.LVL6
	.long	0x510
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL3
	.long	0x51b
	.uleb128 0x12
	.long	.LVL8
	.long	0x526
	.byte	0
	.uleb128 0x13
	.long	0x292
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e0
	.uleb128 0x14
	.long	0x29e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	0x2b4
	.uleb128 0x16
	.long	.LBB8
	.long	.LBE8-.LBB8
	.long	0x3c4
	.uleb128 0x17
	.long	0x29e
	.long	.LLST1
	.uleb128 0x18
	.long	.LBB9
	.long	.LBE9-.LBB9
	.uleb128 0x19
	.long	0x2a9
	.uleb128 0x1a
	.long	0x2b4
	.long	.LLST2
	.uleb128 0x12
	.long	.LVL13
	.long	0x504
	.uleb128 0x12
	.long	.LVL16
	.long	0x52f
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL10
	.long	0x51b
	.uleb128 0x12
	.long	.LVL11
	.long	0x53a
	.uleb128 0x12
	.long	.LVL17
	.long	0x526
	.byte	0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	0x407
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0x85
	.long	0x97
	.uleb128 0x1b
	.long	.LASF89
	.byte	0x9
	.byte	0
	.long	0x7e
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1c
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.byte	0x9f
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x490
	.uleb128 0x1e
	.long	0x3e0
	.long	.LBB12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa3
	.long	0x474
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0
	.uleb128 0x15
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LVL18
	.long	0x545
	.uleb128 0x12
	.long	.LVL19
	.long	0x51b
	.uleb128 0x12
	.long	.LVL20
	.long	0x545
	.uleb128 0x12
	.long	.LVL21
	.long	0x51b
	.uleb128 0x12
	.long	.LVL22
	.long	0x550
	.uleb128 0x12
	.long	.LVL23
	.long	0x55f
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL24
	.long	0x56a
	.uleb128 0x12
	.long	.LVL25
	.long	0x575
	.uleb128 0x12
	.long	.LVL26
	.long	0x526
	.byte	0
	.uleb128 0x20
	.long	.LASF70
	.byte	0x1
	.byte	0x55
	.long	0xa2
	.uleb128 0x5
	.byte	0x3
	.long	elink_time
	.uleb128 0x20
	.long	.LASF71
	.byte	0x1
	.byte	0x56
	.long	0x230
	.uleb128 0x5
	.byte	0x3
	.long	gpio_key_boot
	.uleb128 0x20
	.long	.LASF72
	.byte	0x1
	.byte	0x56
	.long	0x230
	.uleb128 0x5
	.byte	0x3
	.long	gpio_key_status
	.uleb128 0x21
	.long	.LASF73
	.byte	0x6
	.byte	0x17
	.long	0x85
	.uleb128 0x22
	.long	0x4de
	.long	0x4de
	.uleb128 0x23
	.long	0x261
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x1b0
	.uleb128 0x24
	.long	.LASF74
	.byte	0x1
	.byte	0xa
	.long	0x4f4
	.uleb128 0x5
	.byte	0x3
	.long	hal_partitions
	.uleb128 0xc
	.long	0x4ce
	.uleb128 0x25
	.long	.LASF75
	.long	.LASF75
	.byte	0x7
	.byte	0xa9
	.uleb128 0x26
	.long	.LASF76
	.long	.LASF76
	.byte	0x8
	.value	0x20e
	.uleb128 0x25
	.long	.LASF77
	.long	.LASF77
	.byte	0x7
	.byte	0xe0
	.uleb128 0x25
	.long	.LASF78
	.long	.LASF78
	.byte	0x5
	.byte	0x69
	.uleb128 0x27
	.long	.LASF91
	.long	.LASF91
	.uleb128 0x25
	.long	.LASF79
	.long	.LASF79
	.byte	0x7
	.byte	0x74
	.uleb128 0x25
	.long	.LASF80
	.long	.LASF80
	.byte	0x7
	.byte	0x93
	.uleb128 0x25
	.long	.LASF81
	.long	.LASF81
	.byte	0x5
	.byte	0x3e
	.uleb128 0x28
	.long	.LASF92
	.long	.LASF93
	.byte	0x9
	.byte	0
	.long	.LASF92
	.uleb128 0x25
	.long	.LASF82
	.long	.LASF82
	.byte	0x1
	.byte	0x4f
	.uleb128 0x25
	.long	.LASF83
	.long	.LASF83
	.byte	0x5
	.byte	0x8e
	.uleb128 0x25
	.long	.LASF84
	.long	.LASF84
	.byte	0x5
	.byte	0x77
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL4
	.long	.LVL7
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL12
	.long	.LVL16
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL14
	.long	.LVL15
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB26
	.long	.LFE26-.LFB26
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
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB22
	.long	.LFE22
	.long	.LFB26
	.long	.LFE26
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"priv"
.LASF71:
	.string	"gpio_key_boot"
.LASF93:
	.string	"__builtin_puts"
.LASF26:
	.string	"HAL_PARTITION_BT_FIRMWARE"
.LASF69:
	.string	"board_qc_check"
.LASF80:
	.string	"aos_post_delayed_action"
.LASF68:
	.string	"diff"
.LASF30:
	.string	"HAL_PARTITION_MAX"
.LASF45:
	.string	"ANALOG_MODE"
.LASF60:
	.string	"IRQ_TRIGGER_BOTH_EDGES"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"HAL_FLASH_NONE"
.LASF62:
	.string	"sizetype"
.LASF20:
	.string	"HAL_PARTITION_OTA_TEMP"
.LASF81:
	.string	"hal_gpio_init"
.LASF64:
	.string	"handle_elink_key"
.LASF33:
	.string	"HAL_FLASH_SPI"
.LASF6:
	.string	"__uint32_t"
.LASF53:
	.string	"gpio_config_t"
.LASF57:
	.string	"gpio_dev_t"
.LASF55:
	.string	"config"
.LASF16:
	.string	"HAL_PARTITION_ERROR"
.LASF46:
	.string	"IRQ_MODE"
.LASF12:
	.string	"uint8_t"
.LASF78:
	.string	"hal_gpio_input_get"
.LASF22:
	.string	"HAL_PARTITION_PARAMETER_1"
.LASF23:
	.string	"HAL_PARTITION_PARAMETER_2"
.LASF24:
	.string	"HAL_PARTITION_PARAMETER_3"
.LASF25:
	.string	"HAL_PARTITION_PARAMETER_4"
.LASF31:
	.string	"HAL_PARTITION_NONE"
.LASF59:
	.string	"IRQ_TRIGGER_FALLING_EDGE"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"partition_length"
.LASF61:
	.string	"float"
.LASF76:
	.string	"aos_now_ms"
.LASF8:
	.string	"long long int"
.LASF4:
	.string	"long int"
.LASF18:
	.string	"HAL_PARTITION_APPLICATION"
.LASF89:
	.string	"printf"
.LASF50:
	.string	"OUTPUT_PUSH_PULL"
.LASF72:
	.string	"gpio_key_status"
.LASF73:
	.string	"aos_log_level"
.LASF44:
	.string	"hal_logic_partition_t"
.LASF38:
	.string	"partition_owner"
.LASF49:
	.string	"INPUT_HIGH_IMPEDANCE"
.LASF52:
	.string	"OUTPUT_OPEN_DRAIN_PULL_UP"
.LASF66:
	.string	"gpio_value"
.LASF15:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"HAL_PARTITION_CUSTOM_1"
.LASF29:
	.string	"HAL_PARTITION_CUSTOM_2"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF39:
	.string	"partition_description"
.LASF70:
	.string	"elink_time"
.LASF47:
	.string	"INPUT_PULL_UP"
.LASF92:
	.string	"puts"
.LASF86:
	.string	"src/board.c"
.LASF3:
	.string	"short unsigned int"
.LASF65:
	.string	"key_poll_func"
.LASF43:
	.string	"char"
.LASF51:
	.string	"OUTPUT_OPEN_DRAIN_NO_PULL"
.LASF75:
	.string	"aos_schedule_call"
.LASF63:
	.string	"_Bool"
.LASF77:
	.string	"aos_loop_schedule_work"
.LASF40:
	.string	"partition_start_addr"
.LASF9:
	.string	"__uint64_t"
.LASF54:
	.string	"port"
.LASF79:
	.string	"aos_post_event"
.LASF7:
	.string	"long unsigned int"
.LASF34:
	.string	"HAL_FLASH_QSPI"
.LASF21:
	.string	"HAL_PARTITION_RF_FIRMWARE"
.LASF58:
	.string	"IRQ_TRIGGER_RISING_EDGE"
.LASF37:
	.string	"hal_flash_t"
.LASF42:
	.string	"partition_options"
.LASF74:
	.string	"hal_partitions"
.LASF67:
	.string	"level"
.LASF85:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF83:
	.string	"hal_gpio_clear_irq"
.LASF19:
	.string	"HAL_PARTITION_ATE"
.LASF90:
	.string	"board_init"
.LASF88:
	.string	"key_proc_work"
.LASF87:
	.string	"/home/stone/Documents/pca"
.LASF35:
	.string	"HAL_FLASH_MAX"
.LASF27:
	.string	"HAL_PARTITION_SPIFFS"
.LASF91:
	.string	"__stack_chk_fail"
.LASF32:
	.string	"HAL_FLASH_EMBEDDED"
.LASF17:
	.string	"HAL_PARTITION_BOOTLOADER"
.LASF48:
	.string	"INPUT_PULL_DOWN"
.LASF14:
	.string	"uint64_t"
.LASF84:
	.string	"hal_gpio_enable_irq"
.LASF5:
	.string	"__uint8_t"
.LASF82:
	.string	"qc_test"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"timing.c"
	.text
.Ltext0:
	.section	.text.unlikely.sighandler,"ax",@progbits
.LCOLDB0:
	.section	.text.sighandler,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sighandler
.Ltext_cold0:
	.section	.text.sighandler
	.type	sighandler, @function
sighandler:
.LFB19:
	.file 1 "security/mbedtls/src/timing.c"
	.loc 1 302 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 303 0
	movl	$1, mbedtls_timing_alarmed
	.loc 1 304 0
	pushl	$sighandler
	pushl	8(%ebp)
	call	signal
.LVL1:
	.loc 1 305 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	sighandler, .-sighandler
	.section	.text.unlikely.sighandler
.LCOLDE0:
	.section	.text.sighandler
.LHOTE0:
	.section	.text.unlikely.mbedtls_timing_hardclock,"ax",@progbits
.LCOLDB1:
	.section	.text.mbedtls_timing_hardclock,"ax",@progbits
.LHOTB1:
	.globl	mbedtls_timing_hardclock
	.type	mbedtls_timing_hardclock, @function
mbedtls_timing_hardclock:
.LFB17:
	.loc 1 220 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 220 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 223 0
	cmpl	$0, hardclock_init
	jne	.L4
	.loc 1 225 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	$tv_init
	call	gettimeofday
.LVL2:
	.loc 1 226 0
	movl	$1, hardclock_init
	addl	$16, %esp
.L4:
	.loc 1 229 0
	pushl	%eax
	pushl	%eax
	leal	-20(%ebp), %eax
	pushl	$0
	pushl	%eax
	call	gettimeofday
.LVL3:
	.loc 1 230 0
	movl	-20(%ebp), %eax
	subl	tv_init, %eax
	imull	$1000000, %eax, %eax
	subl	tv_init+4, %eax
	addl	-16(%ebp), %eax
	.loc 1 232 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L5
	call	__stack_chk_fail
.LVL4:
.L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	mbedtls_timing_hardclock, .-mbedtls_timing_hardclock
	.section	.text.unlikely.mbedtls_timing_hardclock
.LCOLDE1:
	.section	.text.mbedtls_timing_hardclock
.LHOTE1:
	.section	.text.unlikely.mbedtls_timing_get_timer,"ax",@progbits
.LCOLDB2:
	.section	.text.mbedtls_timing_get_timer,"ax",@progbits
.LHOTB2:
	.globl	mbedtls_timing_get_timer
	.type	mbedtls_timing_get_timer, @function
mbedtls_timing_get_timer:
.LFB18:
	.loc 1 281 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 3, -12
	.loc 1 281 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL6:
	.loc 1 286 0
	leal	-20(%ebp), %eax
	pushl	$0
	pushl	%eax
	call	gettimeofday
.LVL7:
	.loc 1 288 0
	addl	$16, %esp
	cmpl	$0, 12(%ebp)
	movl	-20(%ebp), %ecx
	movl	-16(%ebp), %eax
	je	.L9
	.loc 1 291 0
	movl	%eax, 4(%ebx)
	.loc 1 290 0
	movl	%ecx, (%ebx)
	.loc 1 292 0
	xorl	%eax, %eax
	jmp	.L10
.L9:
	.loc 1 295 0
	subl	4(%ebx), %eax
	subl	(%ebx), %ecx
	movl	$1000, %ebx
.LVL8:
	cltd
	idivl	%ebx
	imull	$1000, %ecx, %ecx
.LVL9:
	.loc 1 298 0
	addl	%ecx, %eax
.LVL10:
.L10:
	.loc 1 299 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L11
	call	__stack_chk_fail
.LVL11:
.L11:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	mbedtls_timing_get_timer, .-mbedtls_timing_get_timer
	.section	.text.unlikely.mbedtls_timing_get_timer
.LCOLDE2:
	.section	.text.mbedtls_timing_get_timer
.LHOTE2:
	.section	.text.unlikely.mbedtls_set_alarm,"ax",@progbits
.LCOLDB3:
	.section	.text.mbedtls_set_alarm,"ax",@progbits
.LHOTB3:
	.globl	mbedtls_set_alarm
	.type	mbedtls_set_alarm, @function
mbedtls_set_alarm:
.LFB20:
	.loc 1 308 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 308 0
	movl	8(%ebp), %ebx
	.loc 1 309 0
	movl	$0, mbedtls_timing_alarmed
	.loc 1 310 0
	pushl	$sighandler
	pushl	$14
	call	signal
.LVL13:
	.loc 1 311 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 1 312 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 311 0
	jmp	alarm
.LVL14:
	.cfi_endproc
.LFE20:
	.size	mbedtls_set_alarm, .-mbedtls_set_alarm
	.section	.text.unlikely.mbedtls_set_alarm
.LCOLDE3:
	.section	.text.mbedtls_set_alarm
.LHOTE3:
	.section	.text.unlikely.mbedtls_timing_set_delay,"ax",@progbits
.LCOLDB4:
	.section	.text.mbedtls_timing_set_delay,"ax",@progbits
.LHOTB4:
	.globl	mbedtls_timing_set_delay
	.type	mbedtls_timing_set_delay, @function
mbedtls_timing_set_delay:
.LFB21:
	.loc 1 320 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 320 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
.LVL16:
	.loc 1 323 0
	movl	12(%ebp), %ecx
	.loc 1 326 0
	testl	%edx, %edx
	.loc 1 324 0
	movl	%edx, 36(%eax)
	.loc 1 323 0
	movl	%ecx, 32(%eax)
	.loc 1 326 0
	je	.L15
	.loc 1 327 0
	movl	$1, 12(%ebp)
.LVL17:
	.loc 1 328 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 327 0
	jmp	mbedtls_timing_get_timer
.LVL18:
.L15:
	.cfi_restore_state
	.loc 1 328 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	mbedtls_timing_set_delay, .-mbedtls_timing_set_delay
	.section	.text.unlikely.mbedtls_timing_set_delay
.LCOLDE4:
	.section	.text.mbedtls_timing_set_delay
.LHOTE4:
	.section	.text.unlikely.mbedtls_timing_get_delay,"ax",@progbits
.LCOLDB5:
	.section	.text.mbedtls_timing_get_delay,"ax",@progbits
.LHOTB5:
	.globl	mbedtls_timing_get_delay
	.type	mbedtls_timing_get_delay, @function
mbedtls_timing_get_delay:
.LFB22:
	.loc 1 334 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 334 0
	movl	8(%ebp), %ebx
.LVL20:
	.loc 1 339 0
	orl	$-1, %edx
	.loc 1 338 0
	cmpl	$0, 36(%ebx)
	je	.L19
	.loc 1 341 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	call	mbedtls_timing_get_timer
.LVL21:
	.loc 1 343 0
	addl	$16, %esp
	cmpl	36(%ebx), %eax
	.loc 1 344 0
	movl	$2, %edx
	.loc 1 343 0
	jnb	.L19
	.loc 1 339 0
	xorl	%edx, %edx
	cmpl	32(%ebx), %eax
	setnb	%dl
.LVL22:
.L19:
	.loc 1 350 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
.LVL23:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	mbedtls_timing_get_delay, .-mbedtls_timing_get_delay
	.section	.text.unlikely.mbedtls_timing_get_delay
.LCOLDE5:
	.section	.text.mbedtls_timing_get_delay
.LHOTE5:
	.globl	mbedtls_timing_alarmed
	.section	.bss.mbedtls_timing_alarmed,"aw",@nobits
	.align 4
	.type	mbedtls_timing_alarmed, @object
	.size	mbedtls_timing_alarmed, 4
mbedtls_timing_alarmed:
	.zero	4
	.section	.bss.tv_init,"aw",@nobits
	.align 4
	.type	tv_init, @object
	.size	tv_init, 8
tv_init:
	.zero	8
	.section	.bss.hardclock_init,"aw",@nobits
	.align 4
	.type	hardclock_init, @object
	.size	hardclock_init, 4
hardclock_init:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.sighandler
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 6 "./security/mbedtls/include/mbedtls/timing.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/signal.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/time.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ae
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF46
	.byte	0xc
	.long	.LASF47
	.long	.LASF48
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
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x41
	.long	0x53
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
	.uleb128 0x4
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
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0xcc
	.long	0x41
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0x48
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x23
	.long	0x8d
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x28
	.long	0x41
	.uleb128 0x6
	.long	.LASF19
	.byte	0x8
	.byte	0x5
	.byte	0x34
	.long	0xde
	.uleb128 0x7
	.long	.LASF17
	.byte	0x5
	.byte	0x35
	.long	0xae
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.byte	0x36
	.long	0xa3
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x20
	.byte	0x6
	.byte	0x2d
	.long	0xf7
	.uleb128 0x7
	.long	.LASF21
	.byte	0x6
	.byte	0x2f
	.long	0xf7
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x2c
	.long	0x107
	.uleb128 0x9
	.long	0x84
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.byte	0x35
	.long	0x134
	.uleb128 0x7
	.long	.LASF22
	.byte	0x6
	.byte	0x37
	.long	0xde
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x6
	.byte	0x38
	.long	0x98
	.byte	0x20
	.uleb128 0x7
	.long	.LASF24
	.byte	0x6
	.byte	0x39
	.long	0x98
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x3a
	.long	0x107
	.uleb128 0x6
	.long	.LASF26
	.byte	0x8
	.byte	0x1
	.byte	0x3e
	.long	0x158
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.byte	0x40
	.long	0xb9
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.value	0x12d
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x187
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.value	0x12d
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LVL1
	.long	0x386
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x1
	.byte	0xdb
	.long	0x53
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ca
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.byte	0xdd
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xd
	.long	.LVL2
	.long	0x391
	.uleb128 0xd
	.long	.LVL3
	.long	0x391
	.uleb128 0xd
	.long	.LVL4
	.long	0x39d
	.byte	0
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.value	0x118
	.long	0x53
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x242
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.value	0x118
	.long	0x242
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.value	0x118
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.value	0x11a
	.long	0x53
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF34
	.byte	0x1
	.value	0x11b
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.value	0x11c
	.long	0x248
	.long	.LLST1
	.uleb128 0xd
	.long	.LVL7
	.long	0x391
	.uleb128 0xd
	.long	.LVL11
	.long	0x39d
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.long	0xde
	.uleb128 0x15
	.byte	0x4
	.long	0x13f
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.value	0x133
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x286
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.value	0x133
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LVL13
	.long	0x386
	.uleb128 0x17
	.long	.LVL14
	.long	0x3a6
	.byte	0
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.value	0x13f
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f5
	.uleb128 0x18
	.long	.LASF38
	.byte	0x1
	.value	0x13f
	.long	0x8b
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF23
	.byte	0x1
	.value	0x13f
	.long	0x98
	.long	.LLST3
	.uleb128 0x18
	.long	.LASF24
	.byte	0x1
	.value	0x13f
	.long	0x98
	.long	.LLST4
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.value	0x141
	.long	0x2f5
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL18
	.long	0x1ca
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.long	0x134
	.uleb128 0x10
	.long	.LASF39
	.byte	0x1
	.value	0x14d
	.long	0x68
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x34e
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.value	0x14d
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.string	"ctx"
	.byte	0x1
	.value	0x14f
	.long	0x2f5
	.long	.LLST6
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.value	0x150
	.long	0x53
	.long	.LLST7
	.uleb128 0xd
	.long	.LVL21
	.long	0x1ca
	.byte	0
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.byte	0xd8
	.long	0x68
	.uleb128 0x5
	.byte	0x3
	.long	hardclock_init
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0xd9
	.long	0xb9
	.uleb128 0x5
	.byte	0x3
	.long	tv_init
	.uleb128 0x1b
	.long	.LASF50
	.byte	0x1
	.byte	0xeb
	.long	0x381
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_timing_alarmed
	.uleb128 0x1c
	.long	0x68
	.uleb128 0x1d
	.long	.LASF43
	.long	.LASF43
	.byte	0x7
	.byte	0x1c
	.uleb128 0x1e
	.long	.LASF44
	.long	.LASF44
	.byte	0x8
	.value	0x11e
	.uleb128 0x1f
	.long	.LASF51
	.long	.LASF51
	.uleb128 0x1d
	.long	.LASF45
	.long	.LASF45
	.byte	0x9
	.byte	0x15
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
	.uleb128 0x7
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.long	.LVL9
	.long	.LVL10
	.value	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	.LVL8
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL15
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL18
	.long	.LFE21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL15
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x51
	.long	.LVL18
	.long	.LFE21
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL18
	.long	.LFE21
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL18
	.long	.LFE21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL20
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	.LVL23
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB19
	.long	.LFE19
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"mbedtls_timing_hardclock"
.LASF31:
	.string	"reset"
.LASF25:
	.string	"mbedtls_timing_delay_context"
.LASF45:
	.string	"alarm"
.LASF23:
	.string	"int_ms"
.LASF33:
	.string	"delta"
.LASF27:
	.string	"start"
.LASF49:
	.string	"sighandler"
.LASF48:
	.string	"/home/stone/Documents/pca"
.LASF36:
	.string	"mbedtls_set_alarm"
.LASF39:
	.string	"mbedtls_timing_get_delay"
.LASF43:
	.string	"signal"
.LASF29:
	.string	"mbedtls_timing_get_timer"
.LASF38:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"timer"
.LASF40:
	.string	"elapsed_ms"
.LASF46:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF51:
	.string	"__stack_chk_fail"
.LASF50:
	.string	"mbedtls_timing_alarmed"
.LASF41:
	.string	"hardclock_init"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"time_t"
.LASF12:
	.string	"__uint32_t"
.LASF19:
	.string	"timeval"
.LASF26:
	.string	"_hr_time"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF13:
	.string	"__suseconds_t"
.LASF20:
	.string	"mbedtls_timing_hr_time"
.LASF15:
	.string	"suseconds_t"
.LASF18:
	.string	"tv_usec"
.LASF42:
	.string	"tv_init"
.LASF30:
	.string	"signum"
.LASF44:
	.string	"gettimeofday"
.LASF24:
	.string	"fin_ms"
.LASF11:
	.string	"sizetype"
.LASF17:
	.string	"tv_sec"
.LASF6:
	.string	"long long int"
.LASF32:
	.string	"tv_cur"
.LASF35:
	.string	"seconds"
.LASF10:
	.string	"char"
.LASF47:
	.string	"src/timing.c"
.LASF34:
	.string	"offset"
.LASF21:
	.string	"opaque"
.LASF2:
	.string	"short int"
.LASF37:
	.string	"mbedtls_timing_set_delay"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

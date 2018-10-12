	.file	"ota_platform_os.c"
	.text
.Ltext0:
	.section	.text.unlikely.ota_malloc,"ax",@progbits
.LCOLDB0:
	.section	.text.ota_malloc,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ota_malloc
.Ltext_cold0:
	.section	.text.ota_malloc
	.globl	ota_malloc
	.type	ota_malloc, @function
ota_malloc:
.LFB32:
	.file 1 "framework/fota/platform/ota_platform_os.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 16 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 15 0
	jmp	aos_malloc
.LVL1:
	.cfi_endproc
.LFE32:
	.size	ota_malloc, .-ota_malloc
	.section	.text.unlikely.ota_malloc
.LCOLDE0:
	.section	.text.ota_malloc
.LHOTE0:
	.section	.text.unlikely.ota_free,"ax",@progbits
.LCOLDB1:
	.section	.text.ota_free,"ax",@progbits
.LHOTB1:
	.globl	ota_free
	.type	ota_free, @function
ota_free:
.LFB33:
	.loc 1 19 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 21 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 20 0
	jmp	aos_free
.LVL3:
	.cfi_endproc
.LFE33:
	.size	ota_free, .-ota_free
	.section	.text.unlikely.ota_free
.LCOLDE1:
	.section	.text.ota_free
.LHOTE1:
	.section	.text.unlikely.ota_mutex_init,"ax",@progbits
.LCOLDB2:
	.section	.text.ota_mutex_init,"ax",@progbits
.LHOTB2:
	.globl	ota_mutex_init
	.type	ota_mutex_init, @function
ota_mutex_init:
.LFB34:
	.loc 1 24 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 25 0
	pushl	$4
	call	aos_malloc
.LVL4:
	.loc 1 27 0
	addl	$16, %esp
	.loc 1 28 0
	xorl	%edx, %edx
	.loc 1 27 0
	testl	%eax, %eax
	je	.L6
	.loc 1 31 0
	subl	$12, %esp
	movl	%eax, %ebx
	pushl	%eax
	call	aos_mutex_new
.LVL5:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%ebx, %edx
	je	.L6
	.loc 1 32 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL6:
	.loc 1 33 0
	addl	$16, %esp
	xorl	%edx, %edx
.LVL7:
.L6:
	.loc 1 37 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	ota_mutex_init, .-ota_mutex_init
	.section	.text.unlikely.ota_mutex_init
.LCOLDE2:
	.section	.text.ota_mutex_init
.LHOTE2:
	.section	.text.unlikely.ota_mutex_lock,"ax",@progbits
.LCOLDB3:
	.section	.text.ota_mutex_lock,"ax",@progbits
.LHOTB3:
	.globl	ota_mutex_lock
	.type	ota_mutex_lock, @function
ota_mutex_lock:
.LFB35:
	.loc 1 40 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 41 0
	pushl	$-1
	pushl	8(%ebp)
	call	aos_mutex_lock
.LVL9:
	.loc 1 42 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	ota_mutex_lock, .-ota_mutex_lock
	.section	.text.unlikely.ota_mutex_lock
.LCOLDE3:
	.section	.text.ota_mutex_lock
.LHOTE3:
	.section	.text.unlikely.ota_mutex_unlock,"ax",@progbits
.LCOLDB4:
	.section	.text.ota_mutex_unlock,"ax",@progbits
.LHOTB4:
	.globl	ota_mutex_unlock
	.type	ota_mutex_unlock, @function
ota_mutex_unlock:
.LFB36:
	.loc 1 45 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 47 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 46 0
	jmp	aos_mutex_unlock
.LVL11:
	.cfi_endproc
.LFE36:
	.size	ota_mutex_unlock, .-ota_mutex_unlock
	.section	.text.unlikely.ota_mutex_unlock
.LCOLDE4:
	.section	.text.ota_mutex_unlock
.LHOTE4:
	.section	.text.unlikely.ota_mutex_destroy,"ax",@progbits
.LCOLDB5:
	.section	.text.ota_mutex_destroy,"ax",@progbits
.LHOTB5:
	.globl	ota_mutex_destroy
	.type	ota_mutex_destroy, @function
ota_mutex_destroy:
.LFB37:
	.loc 1 50 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 50 0
	movl	8(%ebp), %ebx
	.loc 1 51 0
	pushl	%ebx
	call	aos_mutex_free
.LVL13:
	.loc 1 52 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 1 53 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 52 0
	jmp	aos_free
.LVL14:
	.cfi_endproc
.LFE37:
	.size	ota_mutex_destroy, .-ota_mutex_destroy
	.section	.text.unlikely.ota_mutex_destroy
.LCOLDE5:
	.section	.text.ota_mutex_destroy
.LHOTE5:
	.section	.text.unlikely.ota_semaphore_init,"ax",@progbits
.LCOLDB6:
	.section	.text.ota_semaphore_init,"ax",@progbits
.LHOTB6:
	.globl	ota_semaphore_init
	.type	ota_semaphore_init, @function
ota_semaphore_init:
.LFB38:
	.loc 1 56 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 57 0
	pushl	$4
	call	aos_malloc
.LVL15:
	.loc 1 59 0
	addl	$16, %esp
	.loc 1 60 0
	xorl	%edx, %edx
	.loc 1 59 0
	testl	%eax, %eax
	je	.L19
	movl	%eax, %ebx
.LVL16:
	.loc 1 63 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	call	aos_sem_new
.LVL17:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%ebx, %edx
	je	.L19
	.loc 1 64 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL18:
	.loc 1 65 0
	addl	$16, %esp
	xorl	%edx, %edx
.LVL19:
.L19:
	.loc 1 69 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	ota_semaphore_init, .-ota_semaphore_init
	.section	.text.unlikely.ota_semaphore_init
.LCOLDE6:
	.section	.text.ota_semaphore_init
.LHOTE6:
	.section	.text.unlikely.ota_semaphore_wait,"ax",@progbits
.LCOLDB7:
	.section	.text.ota_semaphore_wait,"ax",@progbits
.LHOTB7:
	.globl	ota_semaphore_wait
	.type	ota_semaphore_wait, @function
ota_semaphore_wait:
.LFB39:
	.loc 1 72 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 74 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 73 0
	jmp	aos_sem_wait
.LVL21:
	.cfi_endproc
.LFE39:
	.size	ota_semaphore_wait, .-ota_semaphore_wait
	.section	.text.unlikely.ota_semaphore_wait
.LCOLDE7:
	.section	.text.ota_semaphore_wait
.LHOTE7:
	.section	.text.unlikely.ota_semaphore_post,"ax",@progbits
.LCOLDB8:
	.section	.text.ota_semaphore_post,"ax",@progbits
.LHOTB8:
	.globl	ota_semaphore_post
	.type	ota_semaphore_post, @function
ota_semaphore_post:
.LFB40:
	.loc 1 77 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 79 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 78 0
	jmp	aos_sem_signal
.LVL23:
	.cfi_endproc
.LFE40:
	.size	ota_semaphore_post, .-ota_semaphore_post
	.section	.text.unlikely.ota_semaphore_post
.LCOLDE8:
	.section	.text.ota_semaphore_post
.LHOTE8:
	.section	.text.unlikely.ota_semaphore_destroy,"ax",@progbits
.LCOLDB9:
	.section	.text.ota_semaphore_destroy,"ax",@progbits
.LHOTB9:
	.globl	ota_semaphore_destroy
	.type	ota_semaphore_destroy, @function
ota_semaphore_destroy:
.LFB41:
	.loc 1 82 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 82 0
	movl	8(%ebp), %ebx
	.loc 1 83 0
	pushl	%ebx
	call	aos_sem_free
.LVL25:
	.loc 1 84 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 1 85 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 84 0
	jmp	aos_free
.LVL26:
	.cfi_endproc
.LFE41:
	.size	ota_semaphore_destroy, .-ota_semaphore_destroy
	.section	.text.unlikely.ota_semaphore_destroy
.LCOLDE9:
	.section	.text.ota_semaphore_destroy
.LHOTE9:
	.section	.text.unlikely.ota_get_time_ms,"ax",@progbits
.LCOLDB10:
	.section	.text.ota_get_time_ms,"ax",@progbits
.LHOTB10:
	.globl	ota_get_time_ms
	.type	ota_get_time_ms, @function
ota_get_time_ms:
.LFB42:
	.loc 1 88 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 3, -12
	.loc 1 89 0
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	.loc 1 88 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 92 0
	leal	-20(%ebp), %eax
	pushl	$0
	pushl	%eax
	call	gettimeofday
.LVL27:
	.loc 1 94 0
	movl	-16(%ebp), %eax
	movl	$1000, %ecx
	imull	$1000, -20(%ebp), %ebx
	cltd
	idivl	%ecx
	addl	%ebx, %eax
.LVL28:
	.loc 1 96 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L31
	call	__stack_chk_fail
.LVL29:
.L31:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	ota_get_time_ms, .-ota_get_time_ms
	.section	.text.unlikely.ota_get_time_ms
.LCOLDE10:
	.section	.text.ota_get_time_ms
.LHOTE10:
	.section	.text.unlikely.ota_reboot,"ax",@progbits
.LCOLDB11:
	.section	.text.ota_reboot,"ax",@progbits
.LHOTB11:
	.globl	ota_reboot
	.type	ota_reboot, @function
ota_reboot:
.LFB43:
	.loc 1 99 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 101 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 100 0
	jmp	aos_reboot
.LVL30:
	.cfi_endproc
.LFE43:
	.size	ota_reboot, .-ota_reboot
	.section	.text.unlikely.ota_reboot
.LCOLDE11:
	.section	.text.ota_reboot
.LHOTE11:
	.section	.text.unlikely.ota_thread_exit,"ax",@progbits
.LCOLDB12:
	.section	.text.ota_thread_exit,"ax",@progbits
.LHOTB12:
	.globl	ota_thread_exit
	.type	ota_thread_exit, @function
ota_thread_exit:
.LFB44:
	.loc 1 104 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 105 0
	movl	$0, 8(%ebp)
.LVL32:
	.loc 1 106 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 105 0
	jmp	aos_task_exit
.LVL33:
	.cfi_endproc
.LFE44:
	.size	ota_thread_exit, .-ota_thread_exit
	.section	.text.unlikely.ota_thread_exit
.LCOLDE12:
	.section	.text.ota_thread_exit
.LHOTE12:
	.text
.Letext0:
	.section	.text.unlikely.ota_malloc
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "./include/aos/kernel.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/time.h"
	.file 8 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4d1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF56
	.byte	0xc
	.long	.LASF57
	.long	.LASF58
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x3f
	.long	0x68
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x41
	.long	0x7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0xcc
	.long	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x23
	.long	0x91
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x28
	.long	0x68
	.uleb128 0x6
	.long	.LASF59
	.byte	0x8
	.byte	0x4
	.byte	0x34
	.long	0xde
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0x35
	.long	0xae
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.byte	0x36
	.long	0xa3
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0x2c
	.long	0x5d
	.uleb128 0x4
	.long	.LASF20
	.byte	0x5
	.byte	0x30
	.long	0x6f
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.long	0x109
	.uleb128 0x9
	.string	"hdl"
	.byte	0x6
	.byte	0x14
	.long	0x8f
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x6
	.byte	0x15
	.long	0xf4
	.uleb128 0x4
	.long	.LASF22
	.byte	0x6
	.byte	0x18
	.long	0x109
	.uleb128 0x4
	.long	.LASF23
	.byte	0x6
	.byte	0x19
	.long	0x109
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF24
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0xd
	.long	0x8f
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x16b
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0xd
	.long	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LVL1
	.long	0x439
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x12
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a1
	.uleb128 0xf
	.string	"ptr"
	.byte	0x1
	.byte	0x12
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LVL3
	.long	0x445
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x17
	.long	0x8f
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.byte	0x19
	.long	0x1e5
	.long	.LLST0
	.uleb128 0x11
	.long	.LVL4
	.long	0x439
	.uleb128 0x11
	.long	.LVL5
	.long	0x451
	.uleb128 0x11
	.long	.LVL6
	.long	0x445
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.long	0x114
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x27
	.long	0x2c
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x21c
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x27
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LVL9
	.long	0x45c
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x2c
	.long	0x2c
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x256
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x2c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LVL11
	.long	0x467
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x31
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x28c
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x31
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LVL13
	.long	0x472
	.uleb128 0x13
	.long	.LVL14
	.long	0x445
	.byte	0
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0x37
	.long	0x8f
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d0
	.uleb128 0x14
	.string	"sem"
	.byte	0x1
	.byte	0x39
	.long	0x2d0
	.long	.LLST1
	.uleb128 0x11
	.long	.LVL15
	.long	0x439
	.uleb128 0x11
	.long	.LVL17
	.long	0x47d
	.uleb128 0x11
	.long	.LVL18
	.long	0x445
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.long	0x11f
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0x47
	.long	0x2c
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x326
	.uleb128 0xf
	.string	"sem"
	.byte	0x1
	.byte	0x47
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x47
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.long	.LVL21
	.long	0x488
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x4c
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c
	.uleb128 0xf
	.string	"sem"
	.byte	0x1
	.byte	0x4c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LVL23
	.long	0x493
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0x51
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x392
	.uleb128 0xf
	.string	"sem"
	.byte	0x1
	.byte	0x51
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LVL25
	.long	0x49e
	.uleb128 0x13
	.long	.LVL26
	.long	0x445
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.byte	0x57
	.long	0xe9
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da
	.uleb128 0x15
	.string	"tv"
	.byte	0x1
	.byte	0x59
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF39
	.byte	0x1
	.byte	0x5a
	.long	0xe9
	.long	.LLST2
	.uleb128 0x11
	.long	.LVL27
	.long	0x4a9
	.uleb128 0x11
	.long	.LVL29
	.long	0x4b5
	.byte	0
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.byte	0x62
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f9
	.uleb128 0x13
	.long	.LVL30
	.long	0x4be
	.byte	0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.byte	0x67
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.byte	0x67
	.long	0x8f
	.long	.LLST3
	.uleb128 0xc
	.long	.LVL33
	.long	0x4c9
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF60
	.byte	0x8
	.byte	0x17
	.long	0x25
	.uleb128 0x18
	.long	.LASF43
	.long	.LASF43
	.byte	0x6
	.value	0x1e8
	.uleb128 0x18
	.long	.LASF44
	.long	.LASF44
	.byte	0x6
	.value	0x200
	.uleb128 0x19
	.long	.LASF45
	.long	.LASF45
	.byte	0x6
	.byte	0x8c
	.uleb128 0x19
	.long	.LASF46
	.long	.LASF46
	.byte	0x6
	.byte	0x9e
	.uleb128 0x19
	.long	.LASF47
	.long	.LASF47
	.byte	0x6
	.byte	0xa7
	.uleb128 0x19
	.long	.LASF48
	.long	.LASF48
	.byte	0x6
	.byte	0x94
	.uleb128 0x19
	.long	.LASF49
	.long	.LASF49
	.byte	0x6
	.byte	0xbb
	.uleb128 0x19
	.long	.LASF50
	.long	.LASF50
	.byte	0x6
	.byte	0xcd
	.uleb128 0x19
	.long	.LASF51
	.long	.LASF51
	.byte	0x6
	.byte	0xd4
	.uleb128 0x19
	.long	.LASF52
	.long	.LASF52
	.byte	0x6
	.byte	0xc3
	.uleb128 0x18
	.long	.LASF53
	.long	.LASF53
	.byte	0x7
	.value	0x11e
	.uleb128 0x1a
	.long	.LASF61
	.long	.LASF61
	.uleb128 0x19
	.long	.LASF54
	.long	.LASF54
	.byte	0x6
	.byte	0x29
	.uleb128 0x19
	.long	.LASF55
	.long	.LASF55
	.byte	0x6
	.byte	0x5a
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	.LVL5-1
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL28
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LFE42
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"aos_malloc"
.LASF17:
	.string	"tv_sec"
.LASF5:
	.string	"short int"
.LASF37:
	.string	"ota_semaphore_destroy"
.LASF12:
	.string	"sizetype"
.LASF55:
	.string	"aos_task_exit"
.LASF32:
	.string	"ota_mutex_destroy"
.LASF27:
	.string	"ota_mutex_init"
.LASF57:
	.string	"src/ota_platform_os.c"
.LASF28:
	.string	"ota_mutex_lock"
.LASF33:
	.string	"ota_semaphore_init"
.LASF13:
	.string	"__suseconds_t"
.LASF21:
	.string	"aos_hdl_t"
.LASF16:
	.string	"time_t"
.LASF41:
	.string	"ota_thread_exit"
.LASF34:
	.string	"ota_semaphore_wait"
.LASF31:
	.string	"ota_free"
.LASF1:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF49:
	.string	"aos_sem_new"
.LASF60:
	.string	"aos_log_level"
.LASF47:
	.string	"aos_mutex_unlock"
.LASF2:
	.string	"long double"
.LASF52:
	.string	"aos_sem_free"
.LASF4:
	.string	"unsigned char"
.LASF53:
	.string	"gettimeofday"
.LASF18:
	.string	"tv_usec"
.LASF3:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF36:
	.string	"ota_semaphore_post"
.LASF20:
	.string	"uint32_t"
.LASF45:
	.string	"aos_mutex_new"
.LASF48:
	.string	"aos_mutex_free"
.LASF30:
	.string	"ota_mutex_unlock"
.LASF29:
	.string	"mutex"
.LASF42:
	.string	"thread"
.LASF6:
	.string	"short unsigned int"
.LASF51:
	.string	"aos_sem_signal"
.LASF14:
	.string	"char"
.LASF26:
	.string	"ota_malloc"
.LASF40:
	.string	"ota_reboot"
.LASF19:
	.string	"int32_t"
.LASF24:
	.string	"_Bool"
.LASF56:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF25:
	.string	"size"
.LASF54:
	.string	"aos_reboot"
.LASF23:
	.string	"aos_sem_t"
.LASF35:
	.string	"timeout_ms"
.LASF10:
	.string	"long unsigned int"
.LASF22:
	.string	"aos_mutex_t"
.LASF9:
	.string	"__uint32_t"
.LASF59:
	.string	"timeval"
.LASF8:
	.string	"__int32_t"
.LASF15:
	.string	"suseconds_t"
.LASF44:
	.string	"aos_free"
.LASF58:
	.string	"/home/stone/Documents/pca"
.LASF61:
	.string	"__stack_chk_fail"
.LASF38:
	.string	"ota_get_time_ms"
.LASF0:
	.string	"unsigned int"
.LASF39:
	.string	"time_ms"
.LASF46:
	.string	"aos_mutex_lock"
.LASF50:
	.string	"aos_sem_wait"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

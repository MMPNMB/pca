	.file	"select.c"
	.text
.Ltext0:
	.section	.text.unlikely.vfs_poll_notify,"ax",@progbits
.LCOLDB0:
	.section	.text.vfs_poll_notify,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.vfs_poll_notify
.Ltext_cold0:
	.section	.text.vfs_poll_notify
	.type	vfs_poll_notify, @function
vfs_poll_notify:
.LFB17:
	.file 1 "kernel/vfs/select.c"
	.loc 1 155 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	.loc 1 155 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 158 0
	leal	-24(%ebp), %eax
	pushl	$8
	.loc 1 157 0
	movl	$1, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 158 0
	pushl	%eax
	movl	12(%ebp), %eax
	pushl	(%eax)
	call	lwip_write
.LVL2:
	.loc 1 159 0
	addl	$16, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2
	call	__stack_chk_fail
.LVL3:
.L2:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	vfs_poll_notify, .-vfs_poll_notify
	.section	.text.unlikely.vfs_poll_notify
.LCOLDE0:
	.section	.text.vfs_poll_notify
.LHOTE0:
	.section	.text.unlikely.aos_poll,"ax",@progbits
.LCOLDB1:
	.section	.text.aos_poll,"ax",@progbits
.LHOTB1:
	.globl	aos_poll
	.type	aos_poll, @function
aos_poll:
.LFB25:
	.loc 1 268 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	orl	$-1, %esi
	subl	$68, %esp
	.loc 1 268 0
	movl	8(%ebp), %edi
.LBB25:
.LBB26:
	.loc 1 172 0
	pushl	$0
	pushl	$0
.LBE26:
.LBE25:
	.loc 1 268 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL5:
.LBB28:
.LBB27:
	.loc 1 172 0
	call	lwip_eventfd
.LVL6:
	.loc 1 174 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L6
	.loc 1 178 0
	movl	%eax, -48(%ebp)
.LVL7:
.LBE27:
.LBE28:
.LBB29:
	.loc 1 279 0
	movb	$0, -36(%ebp)
.LVL8:
	xorl	%eax, %eax
	movb	$0, -35(%ebp)
.LVL9:
	movb	$0, -34(%ebp)
.LVL10:
	movb	$0, -33(%ebp)
.LVL11:
	movb	$0, -32(%ebp)
.LVL12:
	movb	$0, -31(%ebp)
.LVL13:
	movb	$0, -30(%ebp)
.LVL14:
	movb	$0, -29(%ebp)
.LVL15:
.L7:
.LBE29:
.LBB30:
.LBB31:
	.loc 1 206 0
	cmpl	12(%ebp), %eax
	jge	.L40
.LVL16:
.LBB32:
	.loc 1 209 0
	movw	$0, 6(%edi,%eax,8)
.LBE32:
	.loc 1 206 0
	incl	%eax
.LVL17:
	jmp	.L7
.LVL18:
.L40:
	movl	%edi, -60(%ebp)
	movl	%edi, %esi
	xorl	%ebx, %ebx
	movl	$0, -64(%ebp)
.LVL19:
.L9:
	.loc 1 212 0
	movl	-64(%ebp), %eax
	cmpl	%eax, 12(%ebp)
	jle	.L41
.LVL20:
.LBB33:
	.loc 1 216 0
	movl	(%esi), %ecx
	cmpl	$63, %ecx
	jg	.L10
.LVL21:
	.loc 1 218 0
	movl	%ecx, %edx
	movl	$1, %eax
	shrl	$5, %edx
	sall	%cl, %eax
	orl	%eax, -36(%ebp,%edx,4)
	.loc 1 219 0
	cmpl	%ecx, %ebx
	cmovl	%ecx, %ebx
.LVL22:
	jmp	.L11
.LVL23:
.L10:
	.loc 1 223 0
	subl	$12, %esp
	pushl	%ecx
	call	get_file
.LVL24:
	.loc 1 225 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L25
	.loc 1 230 0
	movl	(%eax), %edx
	leal	-48(%ebp), %ecx
	subl	$12, %esp
	movl	(%edx), %edx
	pushl	%ecx
	pushl	%esi
	pushl	$vfs_poll_notify
	pushl	$1
	pushl	%eax
	call	*20(%edx)
.LVL25:
	addl	$32, %esp
.L11:
.LBE33:
	.loc 1 212 0
	incl	-64(%ebp)
.LVL26:
	addl	$8, %esi
.LVL27:
	jmp	.L9
.LVL28:
.L25:
.LBE31:
.LBE30:
	.loc 1 272 0
	xorl	%esi, %esi
.LVL29:
.LBB36:
.LBB35:
.LBB34:
	.loc 1 225 0
	orl	$-1, %ebx
.LVL30:
.L12:
.LBE34:
.LBE35:
.LBE36:
.LBB37:
.LBB38:
	.loc 1 239 0
	movl	$0, -64(%ebp)
	.loc 1 241 0
	xorl	%edi, %edi
.LVL31:
.L18:
	cmpl	%edi, 12(%ebp)
	jle	.L42
.LVL32:
.LBB39:
	.loc 1 245 0
	movl	-60(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$63, %eax
	jle	.L19
	.loc 1 251 0
	subl	$12, %esp
	pushl	%eax
	call	get_file
.LVL33:
	.loc 1 253 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L19
	.loc 1 257 0
	movl	(%eax), %edx
	subl	$12, %esp
	movl	(%edx), %edx
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	%eax
	call	*20(%edx)
.LVL34:
	.loc 1 260 0
	movl	-60(%ebp), %eax
	.loc 1 259 0
	addl	$32, %esp
	.loc 1 260 0
	cmpw	$1, 6(%eax)
	sbbl	$-1, -64(%ebp)
.LVL35:
.L19:
.LBE39:
	.loc 1 241 0
	incl	%edi
.LVL36:
	addl	$8, -60(%ebp)
.LVL37:
	jmp	.L18
.L42:
.LVL38:
.LBE38:
.LBE37:
	.loc 1 303 0
	addl	-64(%ebp), %esi
.LVL39:
.LBB40:
.LBB41:
	.loc 1 185 0
	subl	$12, %esp
	pushl	-48(%ebp)
	call	lwip_close
.LVL40:
.LBE41:
.LBE40:
	.loc 1 307 0
	addl	$16, %esp
	movl	$0, %eax
	testl	%ebx, %ebx
	cmovs	%eax, %esi
.LVL41:
.L6:
	.loc 1 308 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%esi, %eax
	je	.L23
	call	__stack_chk_fail
.LVL42:
.L41:
.LBB42:
.LBB43:
	.loc 1 190 0
	movl	16(%ebp), %eax
	movl	$1024, %ecx
	cltd
	idivl	%ecx
	.loc 1 195 0
	movl	-48(%ebp), %ecx
	.loc 1 190 0
	sall	$10, %edx
	movl	%eax, -44(%ebp)
	.loc 1 195 0
	movl	$1, %eax
	.loc 1 190 0
	movl	%edx, -40(%ebp)
	.loc 1 195 0
	movl	%ecx, %edx
	sall	%cl, %eax
	shrl	$5, %edx
	orl	%eax, -36(%ebp,%edx,4)
.LVL43:
	.loc 1 197 0
	cmpl	$0, 16(%ebp)
	leal	-44(%ebp), %eax
	movl	$0, %edx
	cmovs	%edx, %eax
	subl	$12, %esp
	cmpl	%ecx, %ebx
	pushl	%eax
	cmovl	%ecx, %ebx
.LVL44:
	leal	-36(%ebp), %eax
.LVL45:
	incl	%ebx
	pushl	$0
	pushl	$0
	pushl	%eax
	pushl	%ebx
.LBE43:
.LBE42:
	.loc 1 272 0
	xorl	%esi, %esi
.LBB46:
.LBB44:
	.loc 1 197 0
	call	lwip_select
.LVL46:
.LBE44:
.LBE46:
	.loc 1 288 0
	addl	$32, %esp
	testl	%eax, %eax
.LBB47:
.LBB45:
	.loc 1 197 0
	movl	%eax, %ebx
.LVL47:
.LBE45:
.LBE47:
	.loc 1 288 0
	js	.L12
	addl	$6, %edi
	xorl	%eax, %eax
.LBB48:
.LBB49:
	.loc 1 294 0
	movl	$1, %edx
.L15:
.LVL48:
.LBE49:
	.loc 1 291 0 discriminator 1
	cmpl	12(%ebp), %eax
	jge	.L43
.LVL49:
.LBB50:
	.loc 1 294 0
	movl	-6(%edi), %ecx
	.loc 1 294 0
	movl	%ecx, %esi
	shrl	$5, %esi
	movl	%esi, -64(%ebp)
	.loc 1 294 0
	movl	%edx, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	movl	-64(%ebp), %esi
	testl	%ecx, -36(%ebp,%esi,4)
	je	.L16
	.loc 1 295 0
	orw	$1, (%edi)
.L16:
.LBE50:
	.loc 1 291 0 discriminator 2
	incl	%eax
.LVL50:
	addl	$8, %edi
.LVL51:
	jmp	.L15
.LVL52:
.L43:
	movl	%ebx, %esi
	jmp	.L12
.LVL53:
.L23:
.LBE48:
	.loc 1 308 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	aos_poll, .-aos_poll
	.section	.text.unlikely.aos_poll
.LCOLDE1:
	.section	.text.aos_poll
.LHOTE1:
	.section	.text.unlikely.aos_fcntl,"ax",@progbits
.LCOLDB2:
	.section	.text.aos_fcntl,"ax",@progbits
.LHOTB2:
	.globl	aos_fcntl
	.type	aos_fcntl, @function
aos_fcntl:
.LFB26:
	.loc 1 312 0
	.cfi_startproc
.LVL54:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-22, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 312 0
	movl	8(%ebp), %edx
	.loc 1 313 0
	testl	%edx, %edx
	js	.L45
	.loc 1 325 0
	xorl	%eax, %eax
	cmpl	$64, %edx
	setge	%al
	leal	-2(%eax,%eax), %eax
.L45:
	.loc 1 326 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	aos_fcntl, .-aos_fcntl
	.section	.text.unlikely.aos_fcntl
.LCOLDE2:
	.section	.text.aos_fcntl
.LHOTE2:
	.section	.text.unlikely.aos_ioctl_in_loop,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_ioctl_in_loop,"ax",@progbits
.LHOTB3:
	.globl	aos_ioctl_in_loop
	.type	aos_ioctl_in_loop, @function
aos_ioctl_in_loop:
.LFB27:
	.loc 1 329 0
	.cfi_startproc
.LVL55:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 333 0
	movl	$64, %ebx
.LVL56:
.L54:
.LBB51:
	.loc 1 338 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL57:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L51
	.loc 1 342 0
	subl	$12, %esp
	pushl	%ebx
	call	get_file
.LVL58:
	.loc 1 344 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 342 0
	movl	%eax, %esi
.LVL59:
	.loc 1 344 0
	jne	.L52
	.loc 1 345 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL60:
	.loc 1 346 0
	addl	$16, %esp
	movl	$-2, %eax
	jmp	.L51
.LVL61:
.L52:
	.loc 1 349 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL62:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L51
.LVL63:
	.loc 1 355 0
	movl	(%esi), %eax
.LVL64:
	movl	(%eax), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	.L53
.LVL65:
.L55:
.LBE51:
	.loc 1 334 0
	incl	%ebx
.LVL66:
	.loc 1 333 0
	cmpl	$89, %ebx
	jne	.L54
	.loc 1 364 0
	xorl	%eax, %eax
	jmp	.L51
.LVL67:
.L53:
.LBB52:
	.loc 1 356 0
	pushl	%edx
.LVL68:
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	%esi
	call	*%eax
.LVL69:
	.loc 1 358 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L55
.LVL70:
.L51:
.LBE52:
	.loc 1 365 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL71:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	aos_ioctl_in_loop, .-aos_ioctl_in_loop
	.section	.text.unlikely.aos_ioctl_in_loop
.LCOLDE3:
	.section	.text.aos_ioctl_in_loop
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.vfs_poll_notify
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 10 "./include/aos/types.h"
	.file 11 "./include/aos/kernel.h"
	.file 12 "./include/aos/vfs.h"
	.file 13 "./kernel/vfs/include/vfs_inode.h"
	.file 14 "./include/aos/log.h"
	.file 15 "./kernel/protocols/net/include/lwip/sockets.h"
	.file 16 "./kernel/vfs/include/vfs_file.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe07
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF140
	.byte	0xc
	.long	.LASF141
	.long	.LASF142
	.long	.Ldebug_ranges0+0x98
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
	.byte	0x3c
	.long	0x6c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0xd8
	.long	0x85
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF15
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x1c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x20
	.long	0x4c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x2c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.long	0x3e
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x3a
	.long	0x45
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.long	0x45
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x49
	.long	0x45
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x58
	.long	0x53
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x64
	.long	0xca
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x91
	.long	0x7e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF26
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF27
	.byte	0x5
	.byte	0xcb
	.long	0x45
	.uleb128 0x3
	.long	.LASF28
	.byte	0x5
	.byte	0xcc
	.long	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF29
	.uleb128 0x3
	.long	.LASF30
	.byte	0x6
	.byte	0x23
	.long	0x136
	.uleb128 0x3
	.long	.LASF31
	.byte	0x6
	.byte	0x28
	.long	0x4c
	.uleb128 0x6
	.long	.LASF35
	.byte	0x8
	.byte	0x6
	.byte	0x34
	.long	0x183
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.byte	0x35
	.long	0x153
	.byte	0
	.uleb128 0x7
	.long	.LASF33
	.byte	0x6
	.byte	0x36
	.long	0x148
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0x2d
	.long	0x5e
	.uleb128 0x6
	.long	.LASF36
	.byte	0x8
	.byte	0x7
	.byte	0x35
	.long	0x1a7
	.uleb128 0x7
	.long	.LASF37
	.byte	0x7
	.byte	0x36
	.long	0x1a7
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x183
	.long	0x1b7
	.uleb128 0x9
	.long	0x122
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0x37
	.long	0x18e
	.uleb128 0x3
	.long	.LASF38
	.byte	0x8
	.byte	0x71
	.long	0xb4
	.uleb128 0x3
	.long	.LASF39
	.byte	0x8
	.byte	0x76
	.long	0xbf
	.uleb128 0xa
	.byte	0x4
	.long	0x141
	.uleb128 0x3
	.long	.LASF40
	.byte	0x8
	.byte	0x9b
	.long	0xf6
	.uleb128 0x3
	.long	.LASF41
	.byte	0x8
	.byte	0xad
	.long	0x10c
	.uleb128 0x3
	.long	.LASF42
	.byte	0x8
	.byte	0xb1
	.long	0xd5
	.uleb128 0x3
	.long	.LASF43
	.byte	0x8
	.byte	0xb5
	.long	0xe0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x8
	.byte	0xb9
	.long	0xeb
	.uleb128 0x3
	.long	.LASF45
	.byte	0x8
	.byte	0xc8
	.long	0x117
	.uleb128 0x3
	.long	.LASF46
	.byte	0x8
	.byte	0xcd
	.long	0x101
	.uleb128 0x3
	.long	.LASF47
	.byte	0x8
	.byte	0xd2
	.long	0x12b
	.uleb128 0xa
	.byte	0x4
	.long	0x23c
	.uleb128 0xb
	.long	0x141
	.uleb128 0x6
	.long	.LASF48
	.byte	0x3c
	.byte	0x9
	.byte	0x1b
	.long	0x31a
	.uleb128 0x7
	.long	.LASF49
	.byte	0x9
	.byte	0x1d
	.long	0x1f4
	.byte	0
	.uleb128 0x7
	.long	.LASF50
	.byte	0x9
	.byte	0x1e
	.long	0x1de
	.byte	0x2
	.uleb128 0x7
	.long	.LASF51
	.byte	0x9
	.byte	0x1f
	.long	0x220
	.byte	0x4
	.uleb128 0x7
	.long	.LASF52
	.byte	0x9
	.byte	0x20
	.long	0x22b
	.byte	0x8
	.uleb128 0x7
	.long	.LASF53
	.byte	0x9
	.byte	0x21
	.long	0x1ff
	.byte	0xa
	.uleb128 0x7
	.long	.LASF54
	.byte	0x9
	.byte	0x22
	.long	0x20a
	.byte	0xc
	.uleb128 0x7
	.long	.LASF55
	.byte	0x9
	.byte	0x23
	.long	0x1f4
	.byte	0xe
	.uleb128 0x7
	.long	.LASF56
	.byte	0x9
	.byte	0x24
	.long	0x1e9
	.byte	0x10
	.uleb128 0x7
	.long	.LASF57
	.byte	0x9
	.byte	0x32
	.long	0x153
	.byte	0x14
	.uleb128 0x7
	.long	.LASF58
	.byte	0x9
	.byte	0x33
	.long	0x4c
	.byte	0x18
	.uleb128 0x7
	.long	.LASF59
	.byte	0x9
	.byte	0x34
	.long	0x153
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF60
	.byte	0x9
	.byte	0x35
	.long	0x4c
	.byte	0x20
	.uleb128 0x7
	.long	.LASF61
	.byte	0x9
	.byte	0x36
	.long	0x153
	.byte	0x24
	.uleb128 0x7
	.long	.LASF62
	.byte	0x9
	.byte	0x37
	.long	0x4c
	.byte	0x28
	.uleb128 0x7
	.long	.LASF63
	.byte	0x9
	.byte	0x38
	.long	0x1cd
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF64
	.byte	0x9
	.byte	0x39
	.long	0x1c2
	.byte	0x30
	.uleb128 0x7
	.long	.LASF65
	.byte	0x9
	.byte	0x3a
	.long	0x31a
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.long	0x4c
	.long	0x32a
	.uleb128 0x9
	.long	0x122
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF66
	.byte	0x8
	.byte	0xa
	.byte	0x11
	.long	0x35a
	.uleb128 0xc
	.string	"fd"
	.byte	0xa
	.byte	0x12
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.long	.LASF67
	.byte	0xa
	.byte	0x13
	.long	0x3e
	.byte	0x4
	.uleb128 0x7
	.long	.LASF68
	.byte	0xa
	.byte	0x14
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0xb
	.byte	0x13
	.long	0x36f
	.uleb128 0xc
	.string	"hdl"
	.byte	0xb
	.byte	0x14
	.long	0x129
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0xb
	.byte	0x15
	.long	0x35a
	.uleb128 0x3
	.long	.LASF70
	.byte	0xb
	.byte	0x18
	.long	0x36f
	.uleb128 0xd
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.long	0x3b2
	.uleb128 0x7
	.long	.LASF71
	.byte	0xc
	.byte	0x11
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.long	.LASF72
	.byte	0xc
	.byte	0x12
	.long	0x8c
	.byte	0x4
	.uleb128 0x7
	.long	.LASF73
	.byte	0xc
	.byte	0x13
	.long	0x3b2
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x141
	.long	0x3c1
	.uleb128 0xe
	.long	0x122
	.byte	0
	.uleb128 0x3
	.long	.LASF74
	.byte	0xc
	.byte	0x14
	.long	0x385
	.uleb128 0xd
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.long	0x3ed
	.uleb128 0x7
	.long	.LASF75
	.byte	0xc
	.byte	0x17
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.long	.LASF76
	.byte	0xc
	.byte	0x18
	.long	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF77
	.byte	0xc
	.byte	0x19
	.long	0x3cc
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF78
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF79
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF80
	.uleb128 0x3
	.long	.LASF81
	.byte	0xd
	.byte	0x2b
	.long	0x46d
	.uleb128 0x6
	.long	.LASF82
	.byte	0x18
	.byte	0xd
	.byte	0x46
	.long	0x46d
	.uleb128 0x7
	.long	.LASF83
	.byte	0xd
	.byte	0x47
	.long	0x64d
	.byte	0
	.uleb128 0x7
	.long	.LASF84
	.byte	0xd
	.byte	0x48
	.long	0x662
	.byte	0x4
	.uleb128 0x7
	.long	.LASF85
	.byte	0xd
	.byte	0x49
	.long	0x681
	.byte	0x8
	.uleb128 0x7
	.long	.LASF86
	.byte	0xd
	.byte	0x4a
	.long	0x6a7
	.byte	0xc
	.uleb128 0x7
	.long	.LASF87
	.byte	0xd
	.byte	0x4b
	.long	0x6c6
	.byte	0x10
	.uleb128 0x7
	.long	.LASF88
	.byte	0xd
	.byte	0x4d
	.long	0x6ef
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.long	0x418
	.uleb128 0x3
	.long	.LASF89
	.byte	0xd
	.byte	0x2c
	.long	0x532
	.uleb128 0x6
	.long	.LASF90
	.byte	0x38
	.byte	0xd
	.byte	0x51
	.long	0x532
	.uleb128 0x7
	.long	.LASF83
	.byte	0xd
	.byte	0x52
	.long	0x70e
	.byte	0
	.uleb128 0x7
	.long	.LASF84
	.byte	0xd
	.byte	0x53
	.long	0x662
	.byte	0x4
	.uleb128 0x7
	.long	.LASF85
	.byte	0xd
	.byte	0x54
	.long	0x72d
	.byte	0x8
	.uleb128 0x7
	.long	.LASF86
	.byte	0xd
	.byte	0x55
	.long	0x74c
	.byte	0xc
	.uleb128 0x7
	.long	.LASF91
	.byte	0xd
	.byte	0x56
	.long	0x76b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF92
	.byte	0xd
	.byte	0x57
	.long	0x662
	.byte	0x14
	.uleb128 0x7
	.long	.LASF48
	.byte	0xd
	.byte	0x58
	.long	0x790
	.byte	0x18
	.uleb128 0x7
	.long	.LASF93
	.byte	0xd
	.byte	0x59
	.long	0x7aa
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF94
	.byte	0xd
	.byte	0x5a
	.long	0x7c9
	.byte	0x20
	.uleb128 0x7
	.long	.LASF95
	.byte	0xd
	.byte	0x5b
	.long	0x7e9
	.byte	0x24
	.uleb128 0x7
	.long	.LASF96
	.byte	0xd
	.byte	0x5c
	.long	0x809
	.byte	0x28
	.uleb128 0x7
	.long	.LASF97
	.byte	0xd
	.byte	0x5d
	.long	0x823
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF98
	.byte	0xd
	.byte	0x5e
	.long	0x7aa
	.byte	0x30
	.uleb128 0x7
	.long	.LASF87
	.byte	0xd
	.byte	0x5f
	.long	0x6c6
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.long	0x47d
	.uleb128 0xf
	.long	.LASF143
	.byte	0x4
	.byte	0xd
	.byte	0x2e
	.long	0x55a
	.uleb128 0x10
	.long	.LASF99
	.byte	0xd
	.byte	0x2f
	.long	0x55a
	.uleb128 0x10
	.long	.LASF100
	.byte	0xd
	.byte	0x30
	.long	0x560
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x40d
	.uleb128 0xa
	.byte	0x4
	.long	0x472
	.uleb128 0xd
	.byte	0x18
	.byte	0xd
	.byte	0x34
	.long	0x5c3
	.uleb128 0xc
	.string	"ops"
	.byte	0xd
	.byte	0x35
	.long	0x537
	.byte	0
	.uleb128 0x7
	.long	.LASF101
	.byte	0xd
	.byte	0x36
	.long	0x129
	.byte	0x4
	.uleb128 0x7
	.long	.LASF102
	.byte	0xd
	.byte	0x37
	.long	0x1d8
	.byte	0x8
	.uleb128 0x7
	.long	.LASF103
	.byte	0xd
	.byte	0x38
	.long	0x7e
	.byte	0xc
	.uleb128 0x7
	.long	.LASF104
	.byte	0xd
	.byte	0x39
	.long	0x8c
	.byte	0x10
	.uleb128 0x7
	.long	.LASF105
	.byte	0xd
	.byte	0x3a
	.long	0x8c
	.byte	0x11
	.uleb128 0x7
	.long	.LASF106
	.byte	0xd
	.byte	0x3b
	.long	0x37a
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF107
	.byte	0xd
	.byte	0x3c
	.long	0x566
	.uleb128 0xd
	.byte	0xc
	.byte	0xd
	.byte	0x3e
	.long	0x5fb
	.uleb128 0x7
	.long	.LASF108
	.byte	0xd
	.byte	0x3f
	.long	0x5fb
	.byte	0
	.uleb128 0x7
	.long	.LASF109
	.byte	0xd
	.byte	0x40
	.long	0x129
	.byte	0x4
	.uleb128 0x7
	.long	.LASF110
	.byte	0xd
	.byte	0x41
	.long	0xa2
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x5c3
	.uleb128 0x3
	.long	.LASF111
	.byte	0xd
	.byte	0x42
	.long	0x5ce
	.uleb128 0x3
	.long	.LASF112
	.byte	0xd
	.byte	0x45
	.long	0x617
	.uleb128 0xa
	.byte	0x4
	.long	0x61d
	.uleb128 0x11
	.long	0x62d
	.uleb128 0x12
	.long	0x62d
	.uleb128 0x12
	.long	0x129
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x32a
	.uleb128 0x13
	.long	0x7e
	.long	0x647
	.uleb128 0x12
	.long	0x5fb
	.uleb128 0x12
	.long	0x647
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x601
	.uleb128 0xa
	.byte	0x4
	.long	0x633
	.uleb128 0x13
	.long	0x7e
	.long	0x662
	.uleb128 0x12
	.long	0x647
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x653
	.uleb128 0x13
	.long	0x215
	.long	0x681
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x129
	.uleb128 0x12
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x668
	.uleb128 0x13
	.long	0x215
	.long	0x6a0
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x6a0
	.uleb128 0x12
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x6a6
	.uleb128 0x14
	.uleb128 0xa
	.byte	0x4
	.long	0x687
	.uleb128 0x13
	.long	0x7e
	.long	0x6c6
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x7e
	.uleb128 0x12
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x6ad
	.uleb128 0x13
	.long	0x7e
	.long	0x6ef
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x3f8
	.uleb128 0x12
	.long	0x60c
	.uleb128 0x12
	.long	0x62d
	.uleb128 0x12
	.long	0x129
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x6cc
	.uleb128 0x13
	.long	0x7e
	.long	0x70e
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x236
	.uleb128 0x12
	.long	0x7e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x6f5
	.uleb128 0x13
	.long	0x215
	.long	0x72d
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x1d8
	.uleb128 0x12
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x714
	.uleb128 0x13
	.long	0x215
	.long	0x74c
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x236
	.uleb128 0x12
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x733
	.uleb128 0x13
	.long	0x1e9
	.long	0x76b
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x1e9
	.uleb128 0x12
	.long	0x7e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x752
	.uleb128 0x13
	.long	0x7e
	.long	0x78a
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x236
	.uleb128 0x12
	.long	0x78a
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x241
	.uleb128 0xa
	.byte	0x4
	.long	0x771
	.uleb128 0x13
	.long	0x7e
	.long	0x7aa
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x236
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x796
	.uleb128 0x13
	.long	0x7e
	.long	0x7c9
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x236
	.uleb128 0x12
	.long	0x236
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x7b0
	.uleb128 0x13
	.long	0x7e3
	.long	0x7e3
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x236
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x3ed
	.uleb128 0xa
	.byte	0x4
	.long	0x7cf
	.uleb128 0x13
	.long	0x803
	.long	0x803
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x7e3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x3c1
	.uleb128 0xa
	.byte	0x4
	.long	0x7ef
	.uleb128 0x13
	.long	0x7e
	.long	0x823
	.uleb128 0x12
	.long	0x647
	.uleb128 0x12
	.long	0x7e3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x80f
	.uleb128 0x6
	.long	.LASF113
	.byte	0x4
	.byte	0x1
	.byte	0x96
	.long	0x842
	.uleb128 0xc
	.string	"efd"
	.byte	0x1
	.byte	0x97
	.long	0x7e
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF114
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.long	0x859
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0xa1
	.long	0x7e
	.byte	0
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	0x870
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0xa5
	.long	0x7e
	.byte	0
	.uleb128 0x17
	.long	.LASF144
	.byte	0x1
	.byte	0x9a
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cf
	.uleb128 0x18
	.string	"fd"
	.byte	0x1
	.byte	0x9a
	.long	0x62d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0x9a
	.long	0x129
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.byte	0x9c
	.long	0x8cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x9d
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LVL2
	.long	0xdb0
	.uleb128 0x1b
	.long	.LVL3
	.long	0xdbc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x829
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.byte	0xa9
	.long	0x7e
	.byte	0x1
	.long	0x8fc
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.byte	0xa9
	.long	0x8cf
	.uleb128 0x1e
	.string	"efd"
	.byte	0x1
	.byte	0xab
	.long	0x7e
	.byte	0
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x1
	.byte	0xc9
	.long	0x7e
	.byte	0x1
	.long	0x974
	.uleb128 0x16
	.string	"fds"
	.byte	0x1
	.byte	0xc9
	.long	0x62d
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1
	.byte	0xc9
	.long	0x7e
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0xc9
	.long	0x974
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.byte	0xc9
	.long	0x129
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.long	0x7e
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.byte	0xcc
	.long	0x7e
	.uleb128 0x20
	.long	0x95d
	.uleb128 0x1e
	.string	"pfd"
	.byte	0x1
	.byte	0xcf
	.long	0x62d
	.byte	0
	.uleb128 0x21
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.byte	0xd5
	.long	0x647
	.uleb128 0x1e
	.string	"pfd"
	.byte	0x1
	.byte	0xd6
	.long	0x62d
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1b7
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0xbc
	.long	0x7e
	.byte	0x1
	.long	0x9c1
	.uleb128 0x1d
	.long	.LASF121
	.byte	0x1
	.byte	0xbc
	.long	0x7e
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0xbc
	.long	0x974
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.byte	0xbc
	.long	0x8cf
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x1
	.byte	0xbc
	.long	0x7e
	.uleb128 0x1e
	.string	"tv"
	.byte	0x1
	.byte	0xbe
	.long	0x15e
	.byte	0
	.uleb128 0x15
	.long	.LASF124
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0x9d9
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.byte	0xb7
	.long	0x8cf
	.byte	0
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.byte	0xec
	.long	0x7e
	.byte	0x1
	.long	0xa2a
	.uleb128 0x16
	.string	"fds"
	.byte	0x1
	.byte	0xec
	.long	0x62d
	.uleb128 0x1d
	.long	.LASF119
	.byte	0x1
	.byte	0xec
	.long	0x7e
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0xee
	.long	0x7e
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xef
	.long	0x7e
	.uleb128 0x21
	.uleb128 0x1e
	.string	"f"
	.byte	0x1
	.byte	0xf2
	.long	0x647
	.uleb128 0x1e
	.string	"pfd"
	.byte	0x1
	.byte	0xf3
	.long	0x62d
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF128
	.byte	0x1
	.value	0x10b
	.long	0x7e
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb3
	.uleb128 0x23
	.string	"fds"
	.byte	0x1
	.value	0x10b
	.long	0x62d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF119
	.byte	0x1
	.value	0x10b
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF123
	.byte	0x1
	.value	0x10b
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF120
	.byte	0x1
	.value	0x10d
	.long	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x10f
	.long	0x7e
	.long	.LLST0
	.uleb128 0x27
	.long	.LASF126
	.byte	0x1
	.value	0x110
	.long	0x7e
	.long	.LLST1
	.uleb128 0x25
	.long	.LASF116
	.byte	0x1
	.value	0x111
	.long	0x829
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF145
	.byte	0x1
	.value	0x12e
	.long	.L12
	.uleb128 0x29
	.long	0x8d5
	.long	.LBB25
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x113
	.long	0xaf1
	.uleb128 0x2a
	.long	0x8e5
	.long	.LLST2
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.uleb128 0x2c
	.long	0x8f0
	.long	.LLST3
	.uleb128 0x1b
	.long	.LVL6
	.long	0xdc5
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LBB29
	.long	.LBE29-.LBB29
	.long	0xb1f
	.uleb128 0x26
	.string	"__i"
	.byte	0x1
	.value	0x117
	.long	0xa2
	.long	.LLST4
	.uleb128 0x27
	.long	.LASF127
	.byte	0x1
	.value	0x117
	.long	0x1d8
	.long	.LLST5
	.byte	0
	.uleb128 0x29
	.long	0x8fc
	.long	.LBB30
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x118
	.long	0xb98
	.uleb128 0x2e
	.long	0x92d
	.uleb128 0x2e
	.long	0x922
	.uleb128 0x2e
	.long	0x917
	.uleb128 0x2e
	.long	0x90c
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2c
	.long	0x938
	.long	.LLST6
	.uleb128 0x2c
	.long	0x941
	.long	.LLST7
	.uleb128 0x2d
	.long	.LBB32
	.long	.LBE32-.LBB32
	.long	0xb75
	.uleb128 0x2c
	.long	0x951
	.long	.LLST8
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2c
	.long	0x95e
	.long	.LLST9
	.uleb128 0x2c
	.long	0x967
	.long	.LLST10
	.uleb128 0x1b
	.long	.LVL24
	.long	0xdd1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x9d9
	.long	.LBB37
	.long	.LBE37-.LBB37
	.byte	0x1
	.value	0x12f
	.long	0xc00
	.uleb128 0x2a
	.long	0x9f4
	.long	.LLST11
	.uleb128 0x2a
	.long	0x9e9
	.long	.LLST12
	.uleb128 0x30
	.long	.LBB38
	.long	.LBE38-.LBB38
	.uleb128 0x2c
	.long	0x9ff
	.long	.LLST13
	.uleb128 0x2c
	.long	0xa08
	.long	.LLST14
	.uleb128 0x30
	.long	.LBB39
	.long	.LBE39-.LBB39
	.uleb128 0x2c
	.long	0xa14
	.long	.LLST15
	.uleb128 0x2c
	.long	0xa1d
	.long	.LLST16
	.uleb128 0x1b
	.long	.LVL33
	.long	0xdd1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x9c1
	.long	.LBB40
	.long	.LBE40-.LBB40
	.byte	0x1
	.value	0x131
	.long	0xc27
	.uleb128 0x2a
	.long	0x9cd
	.long	.LLST17
	.uleb128 0x1b
	.long	.LVL40
	.long	0xddc
	.byte	0
	.uleb128 0x29
	.long	0x97a
	.long	.LBB42
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0x11e
	.long	0xc77
	.uleb128 0x2a
	.long	0x9ab
	.long	.LLST18
	.uleb128 0x2a
	.long	0x9a0
	.long	.LLST19
	.uleb128 0x2a
	.long	0x995
	.long	.LLST20
	.uleb128 0x2a
	.long	0x98a
	.long	.LLST21
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x31
	.long	0x9b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LVL46
	.long	0xde8
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LBB48
	.long	.LBE48-.LBB48
	.long	0xca9
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x121
	.long	0x7e
	.long	.LLST22
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x68
	.uleb128 0x26
	.string	"pfd"
	.byte	0x1
	.value	0x124
	.long	0x62d
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL42
	.long	0xdbc
	.byte	0
	.uleb128 0x32
	.long	.LASF129
	.byte	0x1
	.value	0x137
	.long	0x7e
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xcfa
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.value	0x137
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.value	0x137
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x137
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x148
	.long	0x7e
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xd9a
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.value	0x148
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.value	0x148
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x14a
	.long	0x7e
	.long	.LLST24
	.uleb128 0x26
	.string	"fd"
	.byte	0x1
	.value	0x14b
	.long	0x7e
	.long	.LLST25
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x14f
	.long	0x647
	.long	.LLST26
	.uleb128 0x27
	.long	.LASF108
	.byte	0x1
	.value	0x150
	.long	0x5fb
	.long	.LLST27
	.uleb128 0x1b
	.long	.LVL57
	.long	0xdf4
	.uleb128 0x1b
	.long	.LVL58
	.long	0xdd1
	.uleb128 0x1b
	.long	.LVL60
	.long	0xdff
	.uleb128 0x1b
	.long	.LVL62
	.long	0xdff
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF131
	.byte	0xe
	.byte	0x17
	.long	0x85
	.uleb128 0x33
	.long	.LASF132
	.byte	0x1
	.byte	0x18
	.long	0x37a
	.uleb128 0x34
	.long	.LASF133
	.long	.LASF133
	.byte	0xf
	.value	0x1fd
	.uleb128 0x35
	.long	.LASF146
	.long	.LASF146
	.uleb128 0x34
	.long	.LASF134
	.long	.LASF134
	.byte	0xf
	.value	0x203
	.uleb128 0x36
	.long	.LASF135
	.long	.LASF135
	.byte	0x10
	.byte	0xe
	.uleb128 0x34
	.long	.LASF136
	.long	.LASF136
	.byte	0xf
	.value	0x1f1
	.uleb128 0x34
	.long	.LASF137
	.long	.LASF137
	.byte	0xf
	.value	0x1ff
	.uleb128 0x36
	.long	.LASF138
	.long	.LASF138
	.byte	0xb
	.byte	0x9e
	.uleb128 0x36
	.long	.LASF139
	.long	.LASF139
	.byte	0xb
	.byte	0xa7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.long	.LVL5
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL41
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	.LVL42
	.long	.LVL53
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL7
	.value	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL15
	.long	.LVL41
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL42
	.long	.LVL53
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.value	0x3
	.byte	0x91
	.sleb128 -43
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.value	0x3
	.byte	0x91
	.sleb128 -42
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.value	0x3
	.byte	0x91
	.sleb128 -41
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x3
	.byte	0x91
	.sleb128 -39
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x3
	.byte	0x91
	.sleb128 -38
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x3
	.byte	0x91
	.sleb128 -37
	.byte	0x9f
	.long	.LVL14
	.long	.LVL41
	.value	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.long	.LVL42
	.long	.LVL53
	.value	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL23
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL23
	.long	.LVL24-1
	.value	0x1
	.byte	0x50
	.long	.LVL24-1
	.long	.LVL26
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL28
	.long	.LVL30
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL17
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.value	0x9
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL24
	.long	.LVL25-1
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL27
	.value	0x1
	.byte	0x56
	.long	.LVL27
	.long	.LVL28
	.value	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST11:
	.long	.LVL30
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST12:
	.long	.LVL30
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL30
	.long	.LVL31
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL38
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST14:
	.long	.LVL30
	.long	.LVL31
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL38
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST15:
	.long	.LVL33
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL37
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST17:
	.long	.LVL39
	.long	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL42
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST19:
	.long	.LVL42
	.long	.LVL47
	.value	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL42
	.long	.LVL45
	.value	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46-1
	.value	0x1
	.byte	0x50
	.long	.LVL46-1
	.long	.LVL47
	.value	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x53
	.long	.LVL43
	.long	.LVL44
	.value	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL48
	.long	.LVL53
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST23:
	.long	.LVL49
	.long	.LVL51
	.value	0x3
	.byte	0x77
	.sleb128 -6
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.value	0x3
	.byte	0x77
	.sleb128 -14
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL57
	.long	.LVL58-1
	.value	0x1
	.byte	0x50
	.long	.LVL62
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL55
	.long	.LVL56
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL56
	.long	.LVL71
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST26:
	.long	.LVL59
	.long	.LVL60-1
	.value	0x1
	.byte	0x50
	.long	.LVL60-1
	.long	.LVL61
	.value	0x1
	.byte	0x56
	.long	.LVL61
	.long	.LVL62-1
	.value	0x1
	.byte	0x50
	.long	.LVL62-1
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST27:
	.long	.LVL63
	.long	.LVL65
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x76
	.sleb128 0
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB25
	.long	.LBE25
	.long	.LBB28
	.long	.LBE28
	.long	0
	.long	0
	.long	.LBB30
	.long	.LBE30
	.long	.LBB36
	.long	.LBE36
	.long	0
	.long	0
	.long	.LBB33
	.long	.LBE33
	.long	.LBB34
	.long	.LBE34
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB46
	.long	.LBE46
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB49
	.long	.LBE49
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LBB51
	.long	.LBE51
	.long	.LBB52
	.long	.LBE52
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF145:
	.string	"check_poll"
.LASF30:
	.string	"suseconds_t"
.LASF74:
	.string	"aos_dirent_t"
.LASF135:
	.string	"get_file"
.LASF107:
	.string	"inode_t"
.LASF114:
	.string	"setup_fd"
.LASF77:
	.string	"aos_dir_t"
.LASF11:
	.string	"unsigned int"
.LASF63:
	.string	"st_blksize"
.LASF105:
	.string	"refs"
.LASF67:
	.string	"events"
.LASF95:
	.string	"opendir"
.LASF92:
	.string	"sync"
.LASF27:
	.string	"__nlink_t"
.LASF102:
	.string	"i_name"
.LASF73:
	.string	"d_name"
.LASF119:
	.string	"nfds"
.LASF141:
	.string	"src/select.c"
.LASF22:
	.string	"__ino_t"
.LASF70:
	.string	"aos_mutex_t"
.LASF40:
	.string	"ino_t"
.LASF79:
	.string	"float"
.LASF106:
	.string	"mutex"
.LASF101:
	.string	"i_arg"
.LASF61:
	.string	"st_ctime"
.LASF93:
	.string	"unlink"
.LASF116:
	.string	"parg"
.LASF131:
	.string	"aos_log_level"
.LASF10:
	.string	"long long unsigned int"
.LASF64:
	.string	"st_blocks"
.LASF110:
	.string	"offset"
.LASF59:
	.string	"st_mtime"
.LASF109:
	.string	"f_arg"
.LASF100:
	.string	"i_fops"
.LASF142:
	.string	"/home/stone/Documents/pca"
.LASF48:
	.string	"stat"
.LASF35:
	.string	"timeval"
.LASF49:
	.string	"st_dev"
.LASF121:
	.string	"maxfd"
.LASF14:
	.string	"size_t"
.LASF138:
	.string	"aos_mutex_lock"
.LASF115:
	.string	"teardown_fd"
.LASF132:
	.string	"g_vfs_mutex"
.LASF23:
	.string	"__mode_t"
.LASF72:
	.string	"d_type"
.LASF36:
	.string	"_types_fd_set"
.LASF78:
	.string	"_Bool"
.LASF54:
	.string	"st_gid"
.LASF51:
	.string	"st_mode"
.LASF33:
	.string	"tv_usec"
.LASF9:
	.string	"__uint64_t"
.LASF120:
	.string	"rfds"
.LASF111:
	.string	"file_t"
.LASF52:
	.string	"st_nlink"
.LASF87:
	.string	"ioctl"
.LASF126:
	.string	"nset"
.LASF117:
	.string	"init_parg"
.LASF88:
	.string	"poll"
.LASF69:
	.string	"aos_hdl_t"
.LASF29:
	.string	"char"
.LASF38:
	.string	"blkcnt_t"
.LASF112:
	.string	"poll_notify_t"
.LASF84:
	.string	"close"
.LASF97:
	.string	"closedir"
.LASF57:
	.string	"st_atime"
.LASF45:
	.string	"ssize_t"
.LASF91:
	.string	"lseek"
.LASF12:
	.string	"uint8_t"
.LASF104:
	.string	"type"
.LASF31:
	.string	"time_t"
.LASF90:
	.string	"fs_ops"
.LASF137:
	.string	"lwip_select"
.LASF94:
	.string	"rename"
.LASF50:
	.string	"st_ino"
.LASF8:
	.string	"long long int"
.LASF86:
	.string	"write"
.LASF19:
	.string	"__dev_t"
.LASF130:
	.string	"aos_ioctl_in_loop"
.LASF42:
	.string	"dev_t"
.LASF118:
	.string	"pre_poll"
.LASF82:
	.string	"file_ops"
.LASF81:
	.string	"file_ops_t"
.LASF122:
	.string	"wait_io"
.LASF66:
	.string	"pollfd"
.LASF98:
	.string	"mkdir"
.LASF125:
	.string	"post_poll"
.LASF113:
	.string	"poll_arg"
.LASF136:
	.string	"lwip_close"
.LASF58:
	.string	"st_spare1"
.LASF60:
	.string	"st_spare2"
.LASF62:
	.string	"st_spare3"
.LASF65:
	.string	"st_spare4"
.LASF15:
	.string	"long double"
.LASF21:
	.string	"__gid_t"
.LASF143:
	.string	"inode_ops_t"
.LASF44:
	.string	"gid_t"
.LASF99:
	.string	"i_ops"
.LASF43:
	.string	"uid_t"
.LASF68:
	.string	"revents"
.LASF2:
	.string	"short int"
.LASF37:
	.string	"fds_bits"
.LASF103:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF129:
	.string	"aos_fcntl"
.LASF146:
	.string	"__stack_chk_fail"
.LASF108:
	.string	"node"
.LASF13:
	.string	"uint64_t"
.LASF96:
	.string	"readdir"
.LASF17:
	.string	"__blksize_t"
.LASF20:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF85:
	.string	"read"
.LASF75:
	.string	"dd_vfs_fd"
.LASF133:
	.string	"lwip_write"
.LASF83:
	.string	"open"
.LASF34:
	.string	"fd_mask"
.LASF134:
	.string	"lwip_eventfd"
.LASF32:
	.string	"tv_sec"
.LASF26:
	.string	"sizetype"
.LASF7:
	.string	"long unsigned int"
.LASF144:
	.string	"vfs_poll_notify"
.LASF124:
	.string	"deinit_parg"
.LASF47:
	.string	"nlink_t"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF140:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF123:
	.string	"timeout"
.LASF28:
	.string	"__suseconds_t"
.LASF39:
	.string	"blksize_t"
.LASF56:
	.string	"st_size"
.LASF71:
	.string	"d_ino"
.LASF53:
	.string	"st_uid"
.LASF24:
	.string	"__off_t"
.LASF25:
	.string	"_ssize_t"
.LASF76:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF46:
	.string	"mode_t"
.LASF41:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF127:
	.string	"__tmp"
.LASF128:
	.string	"aos_poll"
.LASF80:
	.string	"double"
.LASF16:
	.string	"__blkcnt_t"
.LASF18:
	.string	"_off_t"
.LASF55:
	.string	"st_rdev"
.LASF139:
	.string	"aos_mutex_unlock"
.LASF89:
	.string	"fs_ops_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"nrf_fstorage.c"
	.text
.Ltext0:
	.section	.text.unlikely.nrf_fstorage_init,"ax",@progbits
.LCOLDB0:
	.section	.text.nrf_fstorage_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.nrf_fstorage_init
.Ltext_cold0:
	.section	.text.nrf_fstorage_init
	.globl	nrf_fstorage_init
	.type	nrf_fstorage_init, @function
nrf_fstorage_init:
.LFB0:
	.file 1 "src/nrf_fstorage.c"
	.loc 1 131 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 131 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	16(%ebp), %ecx
	.loc 1 132 0
	testl	%edx, %edx
	je	.L2
	testl	%eax, %eax
	je	.L2
	.loc 1 140 0
	movl	%eax, (%edx)
	.loc 1 141 0
	movl	%ecx, 12(%ebp)
.LVL1:
	.loc 1 142 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 141 0
	movl	(%eax), %eax
.LVL2:
	jmp	*%eax
.LVL3:
.L2:
	.cfi_restore_state
	.loc 1 142 0
	movl	$14, %eax
.LVL4:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	nrf_fstorage_init, .-nrf_fstorage_init
	.section	.text.unlikely.nrf_fstorage_init
.LCOLDE0:
	.section	.text.nrf_fstorage_init
.LHOTE0:
	.section	.text.unlikely.nrf_fstorage_uninit,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_fstorage_uninit,"ax",@progbits
.LHOTB1:
	.globl	nrf_fstorage_uninit
	.type	nrf_fstorage_uninit, @function
nrf_fstorage_uninit:
.LFB1:
	.loc 1 145 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 151 0
	movl	$14, %eax
	.loc 1 145 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 145 0
	movl	8(%ebp), %ebx
	.loc 1 147 0
	testl	%ebx, %ebx
	je	.L6
	.loc 1 153 0
	movl	(%ebx), %edx
	.loc 1 157 0
	movl	$8, %eax
	.loc 1 153 0
	testl	%edx, %edx
	je	.L6
	.loc 1 159 0
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	%ebx
	call	*4(%edx)
.LVL6:
	.loc 1 160 0
	movl	$0, (%ebx)
	.loc 1 163 0
	movl	$0, 4(%ebx)
	.loc 1 166 0
	addl	$16, %esp
.LVL7:
.L6:
	.loc 1 167 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	nrf_fstorage_uninit, .-nrf_fstorage_uninit
	.section	.text.unlikely.nrf_fstorage_uninit
.LCOLDE1:
	.section	.text.nrf_fstorage_uninit
.LHOTE1:
	.section	.text.unlikely.nrf_fstorage_read,"ax",@progbits
.LCOLDB2:
	.section	.text.nrf_fstorage_read,"ax",@progbits
.LHOTB2:
	.globl	nrf_fstorage_read
	.type	nrf_fstorage_read, @function
nrf_fstorage_read:
.LFB2:
	.loc 1 172 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 172 0
	movl	8(%ebp), %edx
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	20(%ebp), %ebx
	.loc 1 173 0
	testl	%edx, %edx
	.loc 1 172 0
	movl	%eax, -28(%ebp)
	.loc 1 173 0
	je	.L14
	testl	%eax, %eax
	je	.L14
	.loc 1 181 0
	movl	(%edx), %edi
	testl	%edi, %edi
	je	.L15
	.loc 1 187 0
	testl	%ebx, %ebx
	.loc 1 189 0
	movl	$9, %eax
	.loc 1 187 0
	je	.L19
	.loc 1 191 0
	testb	$3, %cl
	.loc 1 194 0
	movl	$16, %eax
	.loc 1 191 0
	jne	.L19
.LVL9:
.LBB12:
.LBB13:
	.loc 1 318 0
	cmpl	12(%edx), %ecx
	jb	.L19
	leal	-1(%ecx,%ebx), %esi
	cmpl	16(%edx), %esi
	ja	.L19
.LVL10:
.LBE13:
.LBE12:
	.loc 1 196 0
	movl	-28(%ebp), %eax
	movl	%ebx, 20(%ebp)
.LVL11:
	movl	%ecx, 12(%ebp)
.LVL12:
	movl	%edx, 8(%ebp)
.LVL13:
	movl	%eax, 16(%ebp)
.LVL14:
	movl	8(%edi), %eax
	.loc 1 197 0
	addl	$28, %esp
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
	.loc 1 196 0
	jmp	*%eax
.LVL15:
.L14:
	.cfi_restore_state
	.loc 1 179 0
	movl	$14, %eax
	jmp	.L19
.L15:
	.loc 1 185 0
	movl	$8, %eax
.L19:
	.loc 1 197 0
	addl	$28, %esp
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
.LFE2:
	.size	nrf_fstorage_read, .-nrf_fstorage_read
	.section	.text.unlikely.nrf_fstorage_read
.LCOLDE2:
	.section	.text.nrf_fstorage_read
.LHOTE2:
	.section	.text.unlikely.nrf_fstorage_write,"ax",@progbits
.LCOLDB3:
	.section	.text.nrf_fstorage_write,"ax",@progbits
.LHOTB3:
	.globl	nrf_fstorage_write
	.type	nrf_fstorage_write, @function
nrf_fstorage_write:
.LFB3:
	.loc 1 203 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 203 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edi
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	.loc 1 204 0
	testl	%ecx, %ecx
	.loc 1 203 0
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 204 0
	je	.L25
	cmpl	$0, -32(%ebp)
	je	.L25
	.loc 1 212 0
	movl	(%ecx), %eax
	testl	%eax, %eax
	movl	%eax, -36(%ebp)
	je	.L26
	.loc 1 218 0
	cmpl	$0, -28(%ebp)
	.loc 1 220 0
	movl	$9, %esi
	.loc 1 218 0
	je	.L31
	.loc 1 218 0 is_stmt 0 discriminator 1
	movl	4(%ecx), %eax
	xorl	%edx, %edx
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	divl	4(%ebx)
	testl	%edx, %edx
	jne	.L31
	.loc 1 223 0 is_stmt 1
	movl	-32(%ebp), %eax
	.loc 1 226 0
	movl	$16, %esi
	.loc 1 223 0
	orl	%edi, %eax
	testb	$3, %al
	jne	.L31
.LVL17:
.LBB20:
.LBB21:
	.loc 1 318 0
	cmpl	12(%ecx), %edi
	jb	.L31
	movl	-28(%ebp), %eax
	leal	-1(%edi,%eax), %eax
	cmpl	16(%ecx), %eax
	ja	.L31
.LVL18:
.LBE21:
.LBE20:
	.loc 1 228 0
	movl	-40(%ebp), %eax
	movl	%edi, 12(%ebp)
.LVL19:
	movl	%ecx, 8(%ebp)
.LVL20:
	movl	%eax, 24(%ebp)
.LVL21:
	movl	-28(%ebp), %eax
	movl	%eax, 20(%ebp)
.LVL22:
	movl	-32(%ebp), %eax
	movl	%eax, 16(%ebp)
.LVL23:
	movl	-36(%ebp), %eax
	movl	12(%eax), %eax
	.loc 1 229 0
	addl	$28, %esp
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
	.loc 1 228 0
	jmp	*%eax
.LVL24:
.L25:
	.cfi_restore_state
	.loc 1 210 0
	movl	$14, %esi
	jmp	.L31
.L26:
	.loc 1 216 0
	movl	$8, %esi
.L31:
	.loc 1 229 0
	addl	$28, %esp
	movl	%esi, %eax
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
.LFE3:
	.size	nrf_fstorage_write, .-nrf_fstorage_write
	.section	.text.unlikely.nrf_fstorage_write
.LCOLDE3:
	.section	.text.nrf_fstorage_write
.LHOTE3:
	.section	.text.unlikely.nrf_fstorage_erase,"ax",@progbits
.LCOLDB4:
	.section	.text.nrf_fstorage_erase,"ax",@progbits
.LHOTB4:
	.globl	nrf_fstorage_erase
	.type	nrf_fstorage_erase, @function
nrf_fstorage_erase:
.LFB4:
	.loc 1 234 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 234 0
	movl	8(%ebp), %edx
	movl	20(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %esi
	.loc 1 235 0
	testl	%edx, %edx
	.loc 1 234 0
	movl	%eax, -28(%ebp)
	.loc 1 235 0
	je	.L37
	.loc 1 241 0
	movl	(%edx), %edi
	testl	%edi, %edi
	je	.L38
	.loc 1 247 0
	testl	%esi, %esi
	.loc 1 249 0
	movl	$9, %eax
	.loc 1 247 0
	je	.L42
	.loc 1 251 0
	movl	4(%edx), %eax
	movl	(%eax), %ebx
	leal	-1(%ebx), %eax
	movl	%eax, -32(%ebp)
	testl	%ecx, -32(%ebp)
	.loc 1 254 0
	movl	$16, %eax
	.loc 1 251 0
	jne	.L42
.LVL26:
.LBB24:
.LBB25:
	.loc 1 318 0
	cmpl	12(%edx), %ecx
	jb	.L42
	imull	%esi, %ebx
.LVL27:
	leal	-1(%ecx,%ebx), %ebx
.LVL28:
	cmpl	16(%edx), %ebx
	ja	.L42
.LVL29:
.LBE25:
.LBE24:
	.loc 1 256 0
	movl	-28(%ebp), %eax
	movl	%esi, 16(%ebp)
.LVL30:
	movl	%ecx, 12(%ebp)
.LVL31:
	movl	%edx, 8(%ebp)
.LVL32:
	movl	%eax, 20(%ebp)
.LVL33:
	movl	16(%edi), %eax
	.loc 1 257 0
	addl	$28, %esp
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
	.loc 1 256 0
	jmp	*%eax
.LVL34:
.L37:
	.cfi_restore_state
	.loc 1 239 0
	movl	$14, %eax
	jmp	.L42
.L38:
	.loc 1 245 0
	movl	$8, %eax
.L42:
	.loc 1 257 0
	addl	$28, %esp
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
.LFE4:
	.size	nrf_fstorage_erase, .-nrf_fstorage_erase
	.section	.text.unlikely.nrf_fstorage_erase
.LCOLDE4:
	.section	.text.nrf_fstorage_erase
.LHOTE4:
	.section	.text.unlikely.nrf_fstorage_rmap,"ax",@progbits
.LCOLDB5:
	.section	.text.nrf_fstorage_rmap,"ax",@progbits
.LHOTB5:
	.globl	nrf_fstorage_rmap
	.type	nrf_fstorage_rmap, @function
nrf_fstorage_rmap:
.LFB5:
	.loc 1 259 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 259 0
	movl	8(%ebp), %eax
	.loc 1 260 0
	testl	%eax, %eax
	je	.L46
	.loc 1 268 0
	movl	(%eax), %edx
	.loc 1 269 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 268 0
	movl	20(%edx), %eax
	jmp	*%eax
.LVL36:
.L46:
	.cfi_restore_state
	.loc 1 269 0
	xorl	%eax, %eax
.LVL37:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	nrf_fstorage_rmap, .-nrf_fstorage_rmap
	.section	.text.unlikely.nrf_fstorage_rmap
.LCOLDE5:
	.section	.text.nrf_fstorage_rmap
.LHOTE5:
	.section	.text.unlikely.nrf_fstorage_wmap,"ax",@progbits
.LCOLDB6:
	.section	.text.nrf_fstorage_wmap,"ax",@progbits
.LHOTB6:
	.globl	nrf_fstorage_wmap
	.type	nrf_fstorage_wmap, @function
nrf_fstorage_wmap:
.LFB6:
	.loc 1 271 0
	.cfi_startproc
.LVL38:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 271 0
	movl	8(%ebp), %eax
	.loc 1 272 0
	testl	%eax, %eax
	je	.L49
	.loc 1 280 0
	movl	(%eax), %edx
	.loc 1 281 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 280 0
	movl	24(%edx), %eax
	jmp	*%eax
.LVL39:
.L49:
	.cfi_restore_state
	.loc 1 281 0
	xorl	%eax, %eax
.LVL40:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	nrf_fstorage_wmap, .-nrf_fstorage_wmap
	.section	.text.unlikely.nrf_fstorage_wmap
.LCOLDE6:
	.section	.text.nrf_fstorage_wmap
.LHOTE6:
	.section	.text.unlikely.nrf_fstorage_is_busy,"ax",@progbits
.LCOLDB7:
	.section	.text.nrf_fstorage_is_busy,"ax",@progbits
.LHOTB7:
	.globl	nrf_fstorage_is_busy
	.type	nrf_fstorage_is_busy, @function
nrf_fstorage_is_busy:
.LFB7:
	.loc 1 284 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 284 0
	movl	8(%ebp), %eax
	.loc 1 285 0
	testl	%eax, %eax
	jne	.L52
.L54:
	movl	$__stop_fs_data, %eax
	movl	$20, %ecx
	xorl	%edx, %edx
	subl	$__start_fs_data, %eax
.LBB26:
	.loc 1 291 0 discriminator 1
	movl	$__start_fs_data, %esi
	divl	%ecx
	imull	$20, %eax, %eax
	leal	__start_fs_data(%eax), %ebx
	jmp	.L53
.LVL42:
.L52:
.LBE26:
	.loc 1 287 0
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L54
	.loc 1 310 0
	movl	%eax, 8(%ebp)
	movl	28(%edx), %eax
.LVL43:
	.loc 1 311 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 310 0
	jmp	*%eax
.LVL44:
.L59:
	.cfi_restore_state
.LBB27:
	.loc 1 294 0
	movl	(%esi), %eax
	testl	%eax, %eax
	jne	.L56
.L58:
	addl	$20, %esi
.LVL45:
.L53:
	.loc 1 291 0 discriminator 1
	cmpl	%ebx, %esi
	jne	.L59
	jmp	.L65
.LVL46:
.L56:
	.loc 1 298 0
	subl	$12, %esp
	pushl	%esi
	call	*28(%eax)
.LVL47:
	addl	$16, %esp
	testb	%al, %al
	je	.L58
	jmp	.L57
.LVL48:
.L65:
.LBE27:
	.loc 1 307 0
	xorl	%eax, %eax
.L57:
	.loc 1 311 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	nrf_fstorage_is_busy, .-nrf_fstorage_is_busy
	.section	.text.unlikely.nrf_fstorage_is_busy
.LCOLDE7:
	.section	.text.nrf_fstorage_is_busy
.LHOTE7:
	.text
.Letext0:
	.section	.text.unlikely.nrf_fstorage_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6f2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF62
	.byte	0xc
	.long	.LASF63
	.long	.LASF64
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x2
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
	.byte	0x1
	.byte	0x6
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
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x2f
	.long	0x8c
	.uleb128 0x5
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.byte	0x31
	.long	0xc1
	.uleb128 0x6
	.long	.LASF14
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x35
	.long	0xa2
	.uleb128 0x7
	.byte	0x14
	.byte	0x1
	.byte	0x36
	.long	0x110
	.uleb128 0x8
	.string	"id"
	.byte	0x1
	.byte	0x38
	.long	0xc1
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x39
	.long	0x97
	.byte	0x4
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x3a
	.long	0x8c
	.byte	0x8
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0x3b
	.long	0x8c
	.byte	0xc
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x3c
	.long	0x110
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x3
	.long	.LASF21
	.byte	0x1
	.byte	0x3d
	.long	0xcc
	.uleb128 0x3
	.long	.LASF22
	.byte	0x1
	.byte	0x3e
	.long	0x128
	.uleb128 0xb
	.byte	0x4
	.long	0x12e
	.uleb128 0xc
	.long	0x139
	.uleb128 0xd
	.long	0x139
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x112
	.uleb128 0x7
	.byte	0xc
	.byte	0x1
	.byte	0x3f
	.long	0x178
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x41
	.long	0x8c
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x42
	.long	0x8c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x44
	.long	0x178
	.byte	0x8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x46
	.long	0x178
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF27
	.uleb128 0x3
	.long	.LASF28
	.byte	0x1
	.byte	0x47
	.long	0x18a
	.uleb128 0xe
	.long	0x13f
	.uleb128 0x7
	.byte	0x14
	.byte	0x1
	.byte	0x49
	.long	0x1d4
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x4b
	.long	0x241
	.byte	0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x4c
	.long	0x24c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x4d
	.long	0x11d
	.byte	0x8
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x4e
	.long	0x8c
	.byte	0xc
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x4f
	.long	0x8c
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF65
	.byte	0x20
	.byte	0x1
	.byte	0x51
	.long	0x241
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x53
	.long	0x277
	.byte	0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x54
	.long	0x277
	.byte	0x4
	.uleb128 0x9
	.long	.LASF36
	.byte	0x1
	.byte	0x55
	.long	0x2a6
	.byte	0x8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0x56
	.long	0x2d6
	.byte	0xc
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0x57
	.long	0x2fa
	.byte	0x10
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x58
	.long	0x31f
	.byte	0x14
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x59
	.long	0x33f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF39
	.byte	0x1
	.byte	0x5b
	.long	0x354
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x247
	.uleb128 0xe
	.long	0x1d4
	.uleb128 0xb
	.byte	0x4
	.long	0x17f
	.uleb128 0x3
	.long	.LASF40
	.byte	0x1
	.byte	0x50
	.long	0x18f
	.uleb128 0x10
	.long	0x97
	.long	0x271
	.uleb128 0xd
	.long	0x271
	.uleb128 0xd
	.long	0x110
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x252
	.uleb128 0xb
	.byte	0x4
	.long	0x25d
	.uleb128 0x10
	.long	0x97
	.long	0x29b
	.uleb128 0xd
	.long	0x29b
	.uleb128 0xd
	.long	0x8c
	.uleb128 0xd
	.long	0x110
	.uleb128 0xd
	.long	0x8c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2a1
	.uleb128 0xe
	.long	0x252
	.uleb128 0xb
	.byte	0x4
	.long	0x27d
	.uleb128 0x10
	.long	0x97
	.long	0x2cf
	.uleb128 0xd
	.long	0x29b
	.uleb128 0xd
	.long	0x8c
	.uleb128 0xd
	.long	0x2cf
	.uleb128 0xd
	.long	0x8c
	.uleb128 0xd
	.long	0x110
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2d5
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x4
	.long	0x2ac
	.uleb128 0x10
	.long	0x97
	.long	0x2fa
	.uleb128 0xd
	.long	0x29b
	.uleb128 0xd
	.long	0x8c
	.uleb128 0xd
	.long	0x8c
	.uleb128 0xd
	.long	0x110
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2dc
	.uleb128 0x10
	.long	0x314
	.long	0x314
	.uleb128 0xd
	.long	0x29b
	.uleb128 0xd
	.long	0x8c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x31a
	.uleb128 0xe
	.long	0x81
	.uleb128 0xb
	.byte	0x4
	.long	0x300
	.uleb128 0x10
	.long	0x339
	.long	0x339
	.uleb128 0xd
	.long	0x29b
	.uleb128 0xd
	.long	0x8c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x81
	.uleb128 0xb
	.byte	0x4
	.long	0x325
	.uleb128 0x10
	.long	0x178
	.long	0x354
	.uleb128 0xd
	.long	0x29b
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x345
	.uleb128 0x3
	.long	.LASF41
	.byte	0x1
	.byte	0x5c
	.long	0x247
	.uleb128 0x3
	.long	.LASF42
	.byte	0x1
	.byte	0x73
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF43
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.value	0x143
	.long	0x178
	.byte	0x1
	.long	0x395
	.uleb128 0x13
	.long	.LASF19
	.byte	0x1
	.value	0x143
	.long	0x8c
	.byte	0
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.byte	0x80
	.long	0x97
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f2
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0x80
	.long	0x271
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.byte	0x81
	.long	0x3f2
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF20
	.byte	0x1
	.byte	0x82
	.long	0x110
	.long	.LLST2
	.uleb128 0x16
	.long	.LVL3
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x35a
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.byte	0x8f
	.long	0x97
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x43c
	.uleb128 0x19
	.long	.LASF44
	.byte	0x1
	.byte	0x8f
	.long	0x271
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF20
	.byte	0x1
	.byte	0x90
	.long	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"rc"
	.byte	0x1
	.byte	0x92
	.long	0x97
	.long	.LLST3
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.value	0x13a
	.long	0x178
	.byte	0x1
	.long	0x472
	.uleb128 0x13
	.long	.LASF44
	.byte	0x1
	.value	0x13a
	.long	0x29b
	.uleb128 0x13
	.long	.LASF19
	.byte	0x1
	.value	0x13b
	.long	0x8c
	.uleb128 0x1b
	.string	"len"
	.byte	0x1
	.value	0x13c
	.long	0x8c
	.byte	0
	.uleb128 0x1c
	.long	.LASF50
	.byte	0x1
	.byte	0xa8
	.long	0x97
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f3
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0xa8
	.long	0x29b
	.long	.LLST4
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0xa9
	.long	0x8c
	.long	.LLST5
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.byte	0xaa
	.long	0x110
	.long	.LLST6
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xab
	.long	0x8c
	.long	.LLST7
	.uleb128 0x1e
	.long	0x43c
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0xc0
	.uleb128 0x1f
	.long	0x465
	.long	.LLST8
	.uleb128 0x1f
	.long	0x459
	.long	.LLST9
	.uleb128 0x1f
	.long	0x44d
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF51
	.byte	0x1
	.byte	0xc6
	.long	0x97
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x583
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0xc6
	.long	0x29b
	.long	.LLST11
	.uleb128 0x15
	.long	.LASF52
	.byte	0x1
	.byte	0xc7
	.long	0x8c
	.long	.LLST12
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0xc8
	.long	0x2cf
	.long	.LLST13
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.long	0x8c
	.long	.LLST14
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.byte	0xca
	.long	0x110
	.long	.LLST15
	.uleb128 0x1e
	.long	0x43c
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.byte	0xe0
	.uleb128 0x1f
	.long	0x465
	.long	.LLST16
	.uleb128 0x1f
	.long	0x459
	.long	.LLST17
	.uleb128 0x1f
	.long	0x44d
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF55
	.byte	0x1
	.byte	0xe6
	.long	0x97
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x604
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0xe6
	.long	0x29b
	.long	.LLST19
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.byte	0xe7
	.long	0x8c
	.long	.LLST20
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xe8
	.long	0x8c
	.long	.LLST21
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.byte	0xe9
	.long	0x110
	.long	.LLST22
	.uleb128 0x1e
	.long	0x43c
	.long	.LBB24
	.long	.LBE24-.LBB24
	.byte	0x1
	.byte	0xfc
	.uleb128 0x1f
	.long	0x465
	.long	.LLST23
	.uleb128 0x1f
	.long	0x459
	.long	.LLST24
	.uleb128 0x1f
	.long	0x44d
	.long	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF57
	.byte	0x1
	.value	0x102
	.long	0x314
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x654
	.uleb128 0x21
	.long	.LASF44
	.byte	0x1
	.value	0x102
	.long	0x29b
	.long	.LLST26
	.uleb128 0x22
	.long	.LASF19
	.byte	0x1
	.value	0x102
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LVL36
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF58
	.byte	0x1
	.value	0x10e
	.long	0x339
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a4
	.uleb128 0x21
	.long	.LASF44
	.byte	0x1
	.value	0x10e
	.long	0x29b
	.long	.LLST27
	.uleb128 0x22
	.long	.LASF19
	.byte	0x1
	.value	0x10e
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LVL39
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x17
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF59
	.byte	0x1
	.value	0x11b
	.long	0x178
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x6df
	.uleb128 0x21
	.long	.LASF44
	.byte	0x1
	.value	0x11b
	.long	0x29b
	.long	.LLST28
	.uleb128 0x24
	.long	.Ldebug_ranges0+0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x123
	.long	0x8c
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF60
	.byte	0x1
	.byte	0x79
	.long	0x271
	.uleb128 0x26
	.long	.LASF61
	.byte	0x1
	.byte	0x79
	.long	0x110
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.long	.LVL0
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL3
	.long	.LFE0
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE0
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL3
	.long	.LFE0
	.value	0x1
	.byte	0x51
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
	.long	.LVL8
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL15
	.long	.LFE2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL15
	.long	.LFE2
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL15
	.long	.LFE2
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL15
	.long	.LFE2
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL24
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL24
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST13:
	.long	.LVL16
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL24
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST14:
	.long	.LVL16
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL24
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST15:
	.long	.LVL16
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	.LVL24
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST16:
	.long	.LVL17
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST17:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST18:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST19:
	.long	.LVL25
	.long	.LVL32
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL34
	.long	.LFE4
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL25
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL34
	.long	.LFE4
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST21:
	.long	.LVL25
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL34
	.long	.LFE4
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST22:
	.long	.LVL25
	.long	.LVL33
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL34
	.long	.LFE4
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST23:
	.long	.LVL26
	.long	.LVL27
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	.LVL28
	.long	.LVL29
	.value	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL26
	.long	.LVL29
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST25:
	.long	.LVL26
	.long	.LVL29
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST26:
	.long	.LVL35
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LFE5
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST27:
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LFE6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL44-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	.LVL46
	.long	.LVL48
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB26
	.long	.LBE26
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"start_addr"
.LASF18:
	.string	"result"
.LASF29:
	.string	"p_api"
.LASF22:
	.string	"nrf_fstorage_evt_handler_t"
.LASF37:
	.string	"write"
.LASF16:
	.string	"NRF_FSTORAGE_EVT_ERASE_RESULT"
.LASF40:
	.string	"nrf_fstorage_t"
.LASF51:
	.string	"nrf_fstorage_write"
.LASF48:
	.string	"addr_within_bounds"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"size_t"
.LASF17:
	.string	"nrf_fstorage_evt_id_t"
.LASF14:
	.string	"NRF_FSTORAGE_EVT_READ_RESULT"
.LASF57:
	.string	"nrf_fstorage_rmap"
.LASF47:
	.string	"addr_is_aligned32"
.LASF6:
	.string	"__uint32_t"
.LASF54:
	.string	"p_context"
.LASF56:
	.string	"page_addr"
.LASF11:
	.string	"uint8_t"
.LASF63:
	.string	"src/nrf_fstorage.c"
.LASF49:
	.string	"p_dest"
.LASF30:
	.string	"p_flash_info"
.LASF53:
	.string	"p_src"
.LASF31:
	.string	"evt_handler"
.LASF65:
	.string	"nrf_fstorage_api_s"
.LASF41:
	.string	"nrf_fstorage_api_t"
.LASF36:
	.string	"read"
.LASF23:
	.string	"erase_unit"
.LASF8:
	.string	"long long int"
.LASF24:
	.string	"program_unit"
.LASF4:
	.string	"long int"
.LASF19:
	.string	"addr"
.LASF5:
	.string	"__uint8_t"
.LASF33:
	.string	"end_addr"
.LASF55:
	.string	"nrf_fstorage_erase"
.LASF52:
	.string	"dest"
.LASF58:
	.string	"nrf_fstorage_wmap"
.LASF25:
	.string	"rmap"
.LASF28:
	.string	"nrf_fstorage_info_t"
.LASF50:
	.string	"nrf_fstorage_read"
.LASF43:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF39:
	.string	"is_busy"
.LASF35:
	.string	"uninit"
.LASF3:
	.string	"short unsigned int"
.LASF59:
	.string	"nrf_fstorage_is_busy"
.LASF34:
	.string	"init"
.LASF20:
	.string	"p_param"
.LASF27:
	.string	"_Bool"
.LASF15:
	.string	"NRF_FSTORAGE_EVT_WRITE_RESULT"
.LASF26:
	.string	"wmap"
.LASF7:
	.string	"long unsigned int"
.LASF62:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF45:
	.string	"nrf_fstorage_init"
.LASF13:
	.string	"ret_code_t"
.LASF38:
	.string	"erase"
.LASF64:
	.string	"/home/stone/Documents/pca"
.LASF46:
	.string	"nrf_fstorage_uninit"
.LASF60:
	.string	"__start_fs_data"
.LASF21:
	.string	"nrf_fstorage_evt_t"
.LASF44:
	.string	"p_fs"
.LASF61:
	.string	"__stop_fs_data"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"utils_hmac.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"parameter is Null,failed!"
.LC1:
	.string	"key_len > size(%d) of array"
	.section	.text.unlikely.utils_hmac_md5,"ax",@progbits
.LCOLDB2:
	.section	.text.utils_hmac_md5,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.utils_hmac_md5
.Ltext_cold0:
	.section	.text.utils_hmac_md5
	.globl	utils_hmac_md5
	.type	utils_hmac_md5, @function
utils_hmac_md5:
.LFB1:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils//digest/utils_hmac.c"
	.loc 1 33 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$268, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 33 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %ebx
	movl	%eax, -272(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -268(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 34 0
	testl	%ebx, %ebx
	sete	%dl
	cmpl	$0, -268(%ebp)
	sete	%al
	orb	%al, %dl
	jne	.L10
	cmpl	$0, -272(%ebp)
	jne	.L2
.L10:
	.loc 1 35 0
	pushl	$.LC0
	pushl	$2
	pushl	$35
	pushl	$__FUNCTION__.3657
	call	LITE_syslog
.LVL1:
	.loc 1 36 0
	addl	$16, %esp
	jmp	.L1
.L2:
	.loc 1 39 0
	cmpl	$64, 24(%ebp)
	jle	.L5
	.loc 1 40 0
	subl	$12, %esp
	pushl	$64
	pushl	$.LC1
	pushl	$2
	pushl	$40
	pushl	$__FUNCTION__.3657
	call	LITE_syslog
.LVL2:
	.loc 1 41 0
	addl	$32, %esp
	jmp	.L1
.L5:
	.loc 1 52 0
	leal	-92(%ebp), %edx
	.loc 1 51 0
	leal	-156(%ebp), %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	.loc 1 53 0
	movl	%ebx, %esi
	.loc 1 51 0
	rep stosl
	.loc 1 52 0
	movl	$16, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 53 0
	leal	-156(%ebp), %edi
	movl	24(%ebp), %ecx
	rep movsb
	.loc 1 54 0
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	24(%ebp), %ecx
	rep movsb
.LVL3:
.L6:
	.loc 1 58 0 discriminator 3
	xorb	$54, -156(%ebp,%eax)
	.loc 1 59 0 discriminator 3
	xorb	$92, -92(%ebp,%eax)
	.loc 1 57 0 discriminator 3
	incl	%eax
.LVL4:
	cmpl	$64, %eax
	.loc 1 58 0 discriminator 3
	leal	-156(%ebp), %esi
	.loc 1 59 0 discriminator 3
	leal	-92(%ebp), %edi
	.loc 1 57 0 discriminator 3
	jne	.L6
	.loc 1 63 0
	leal	-260(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	utils_md5_init
.LVL5:
	.loc 1 64 0
	movl	%ebx, (%esp)
	call	utils_md5_starts
.LVL6:
	.loc 1 65 0
	addl	$12, %esp
	pushl	$64
	pushl	%esi
	.loc 1 67 0
	leal	-172(%ebp), %esi
	.loc 1 65 0
	pushl	%ebx
	call	utils_md5_update
.LVL7:
	.loc 1 66 0
	addl	$12, %esp
	pushl	12(%ebp)
	pushl	-272(%ebp)
	pushl	%ebx
	call	utils_md5_update
.LVL8:
	.loc 1 67 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%ebx
	call	utils_md5_finish
.LVL9:
	.loc 1 70 0
	movl	%ebx, (%esp)
	call	utils_md5_init
.LVL10:
	.loc 1 71 0
	movl	%ebx, (%esp)
	call	utils_md5_starts
.LVL11:
	.loc 1 72 0
	addl	$12, %esp
	pushl	$64
	pushl	%edi
	pushl	%ebx
	call	utils_md5_update
.LVL12:
	.loc 1 73 0
	addl	$12, %esp
	pushl	$16
	pushl	%esi
	pushl	%ebx
	call	utils_md5_update
.LVL13:
	.loc 1 74 0
	popl	%ecx
	popl	%edi
	pushl	%esi
	pushl	%ebx
	.loc 1 76 0
	xorl	%ebx, %ebx
	.loc 1 74 0
	call	utils_md5_finish
.LVL14:
	addl	$16, %esp
.LVL15:
.L7:
	.loc 1 77 0 discriminator 3
	movb	(%esi,%ebx), %al
	subl	$12, %esp
	shrb	$4, %al
	movzbl	%al, %eax
	pushl	%eax
	call	utils_hb2hex
.LVL16:
	movl	-268(%ebp), %edx
	movb	%al, (%edx,%ebx,2)
	.loc 1 78 0 discriminator 3
	movzbl	(%esi,%ebx), %eax
	movl	%eax, (%esp)
	call	utils_hb2hex
.LVL17:
	movl	-268(%ebp), %ecx
	.loc 1 76 0 discriminator 3
	addl	$16, %esp
	.loc 1 78 0 discriminator 3
	movb	%al, 1(%ecx,%ebx,2)
	.loc 1 76 0 discriminator 3
	incl	%ebx
.LVL18:
	cmpl	$16, %ebx
	jne	.L7
.LVL19:
.L1:
	.loc 1 80 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L9
	call	__stack_chk_fail
.LVL20:
.L9:
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
.LFE1:
	.size	utils_hmac_md5, .-utils_hmac_md5
	.section	.text.unlikely.utils_hmac_md5
.LCOLDE2:
	.section	.text.utils_hmac_md5
.LHOTE2:
	.section	.text.unlikely.utils_hmac_sha1_hex,"ax",@progbits
.LCOLDB3:
	.section	.text.utils_hmac_sha1_hex,"ax",@progbits
.LHOTB3:
	.globl	utils_hmac_sha1_hex
	.type	utils_hmac_sha1_hex, @function
utils_hmac_sha1_hex:
.LFB2:
	.loc 1 83 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$284, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %ebx
	movl	%eax, -284(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -288(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 84 0
	testl	%ebx, %ebx
	sete	%dl
	cmpl	$0, -288(%ebp)
	sete	%al
	orb	%al, %dl
	jne	.L23
	cmpl	$0, -284(%ebp)
	jne	.L16
.L23:
	.loc 1 85 0
	pushl	$.LC0
	pushl	$2
	pushl	$85
	pushl	$__FUNCTION__.3676
	call	LITE_syslog
.LVL22:
	jmp	.L26
.L16:
	.loc 1 89 0
	cmpl	$64, 24(%ebp)
	jle	.L19
	.loc 1 90 0
	subl	$12, %esp
	pushl	$64
	pushl	$.LC1
	pushl	$2
	pushl	$90
	pushl	$__FUNCTION__.3676
	call	LITE_syslog
.LVL23:
	.loc 1 91 0
	addl	$32, %esp
	jmp	.L15
.L19:
	.loc 1 102 0
	leal	-92(%ebp), %edx
	.loc 1 101 0
	leal	-156(%ebp), %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	.loc 1 103 0
	movl	%ebx, %esi
	.loc 1 101 0
	rep stosl
	.loc 1 102 0
	movl	$16, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 103 0
	leal	-156(%ebp), %edi
	movl	24(%ebp), %ecx
	rep movsb
	.loc 1 104 0
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	24(%ebp), %ecx
	rep movsb
.LVL24:
.L20:
	.loc 1 108 0 discriminator 3
	xorb	$54, -156(%ebp,%eax)
	.loc 1 109 0 discriminator 3
	xorb	$92, -92(%ebp,%eax)
	.loc 1 107 0 discriminator 3
	incl	%eax
.LVL25:
	cmpl	$64, %eax
	.loc 1 108 0 discriminator 3
	leal	-156(%ebp), %esi
	.loc 1 109 0 discriminator 3
	leal	-92(%ebp), %edi
	.loc 1 107 0 discriminator 3
	jne	.L20
	.loc 1 113 0
	leal	-268(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	utils_sha1_init
.LVL26:
	.loc 1 114 0
	movl	%ebx, (%esp)
	call	utils_sha1_starts
.LVL27:
	.loc 1 115 0
	addl	$12, %esp
	pushl	$64
	pushl	%esi
	.loc 1 117 0
	leal	-176(%ebp), %esi
	.loc 1 115 0
	pushl	%ebx
	call	utils_sha1_update
.LVL28:
	.loc 1 116 0
	addl	$12, %esp
	pushl	12(%ebp)
	pushl	-284(%ebp)
	pushl	%ebx
	call	utils_sha1_update
.LVL29:
	.loc 1 117 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_finish
.LVL30:
	.loc 1 120 0
	movl	%ebx, (%esp)
	call	utils_sha1_init
.LVL31:
	.loc 1 121 0
	movl	%ebx, (%esp)
	call	utils_sha1_starts
.LVL32:
	.loc 1 122 0
	addl	$12, %esp
	pushl	$64
	pushl	%edi
	pushl	%ebx
	call	utils_sha1_update
.LVL33:
	.loc 1 123 0
	addl	$12, %esp
	pushl	$20
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_update
.LVL34:
	.loc 1 124 0
	popl	%ecx
	popl	%edi
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_finish
.LVL35:
	.loc 1 125 0
	movl	$5, %ecx
	movl	-288(%ebp), %edi
	rep movsl
.L26:
	addl	$16, %esp
.L15:
	.loc 1 126 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L22
	call	__stack_chk_fail
.LVL36:
.L22:
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
.LFE2:
	.size	utils_hmac_sha1_hex, .-utils_hmac_sha1_hex
	.section	.text.unlikely.utils_hmac_sha1_hex
.LCOLDE3:
	.section	.text.utils_hmac_sha1_hex
.LHOTE3:
	.section	.text.unlikely.utils_hmac_sha1,"ax",@progbits
.LCOLDB4:
	.section	.text.utils_hmac_sha1,"ax",@progbits
.LHOTB4:
	.globl	utils_hmac_sha1
	.type	utils_hmac_sha1, @function
utils_hmac_sha1:
.LFB3:
	.loc 1 129 0
	.cfi_startproc
.LVL37:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$284, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 129 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %ebx
	movl	%eax, -288(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -284(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 130 0
	testl	%ebx, %ebx
	sete	%dl
	cmpl	$0, -284(%ebp)
	sete	%al
	orb	%al, %dl
	jne	.L36
	cmpl	$0, -288(%ebp)
	jne	.L28
.L36:
	.loc 1 131 0
	pushl	$.LC0
	pushl	$2
	pushl	$131
	pushl	$__FUNCTION__.3692
	call	LITE_syslog
.LVL38:
	.loc 1 132 0
	addl	$16, %esp
	jmp	.L27
.L28:
	.loc 1 135 0
	cmpl	$64, 24(%ebp)
	jle	.L31
	.loc 1 136 0
	subl	$12, %esp
	pushl	$64
	pushl	$.LC1
	pushl	$2
	pushl	$136
	pushl	$__FUNCTION__.3692
	call	LITE_syslog
.LVL39:
	.loc 1 137 0
	addl	$32, %esp
	jmp	.L27
.L31:
	.loc 1 148 0
	leal	-92(%ebp), %edx
	.loc 1 147 0
	leal	-156(%ebp), %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	.loc 1 149 0
	movl	%ebx, %esi
	.loc 1 147 0
	rep stosl
	.loc 1 148 0
	movl	$16, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 149 0
	leal	-156(%ebp), %edi
	movl	24(%ebp), %ecx
	rep movsb
	.loc 1 150 0
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	24(%ebp), %ecx
	rep movsb
.LVL40:
.L32:
	.loc 1 154 0 discriminator 3
	xorb	$54, -156(%ebp,%eax)
	.loc 1 155 0 discriminator 3
	xorb	$92, -92(%ebp,%eax)
	.loc 1 153 0 discriminator 3
	incl	%eax
.LVL41:
	cmpl	$64, %eax
	.loc 1 154 0 discriminator 3
	leal	-156(%ebp), %esi
	.loc 1 155 0 discriminator 3
	leal	-92(%ebp), %edi
	.loc 1 153 0 discriminator 3
	jne	.L32
	.loc 1 159 0
	leal	-268(%ebp), %ebx
	subl	$12, %esp
	pushl	%ebx
	call	utils_sha1_init
.LVL42:
	.loc 1 160 0
	movl	%ebx, (%esp)
	call	utils_sha1_starts
.LVL43:
	.loc 1 161 0
	addl	$12, %esp
	pushl	$64
	pushl	%esi
	.loc 1 163 0
	leal	-176(%ebp), %esi
	.loc 1 161 0
	pushl	%ebx
	call	utils_sha1_update
.LVL44:
	.loc 1 162 0
	addl	$12, %esp
	pushl	12(%ebp)
	pushl	-288(%ebp)
	pushl	%ebx
	call	utils_sha1_update
.LVL45:
	.loc 1 163 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_finish
.LVL46:
	.loc 1 166 0
	movl	%ebx, (%esp)
	call	utils_sha1_init
.LVL47:
	.loc 1 167 0
	movl	%ebx, (%esp)
	call	utils_sha1_starts
.LVL48:
	.loc 1 168 0
	addl	$12, %esp
	pushl	$64
	pushl	%edi
	pushl	%ebx
	call	utils_sha1_update
.LVL49:
	.loc 1 169 0
	addl	$12, %esp
	pushl	$20
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_update
.LVL50:
	.loc 1 170 0
	popl	%ecx
	popl	%edi
	pushl	%esi
	pushl	%ebx
	.loc 1 172 0
	xorl	%ebx, %ebx
	.loc 1 170 0
	call	utils_sha1_finish
.LVL51:
	addl	$16, %esp
.LVL52:
.L33:
	.loc 1 173 0 discriminator 3
	movb	(%esi,%ebx), %al
	subl	$12, %esp
	shrb	$4, %al
	movzbl	%al, %eax
	pushl	%eax
	call	utils_hb2hex
.LVL53:
	movl	-284(%ebp), %edx
	movb	%al, (%edx,%ebx,2)
	.loc 1 174 0 discriminator 3
	movzbl	(%esi,%ebx), %eax
	movl	%eax, (%esp)
	call	utils_hb2hex
.LVL54:
	movl	-284(%ebp), %ecx
	.loc 1 172 0 discriminator 3
	addl	$16, %esp
	.loc 1 174 0 discriminator 3
	movb	%al, 1(%ecx,%ebx,2)
	.loc 1 172 0 discriminator 3
	incl	%ebx
.LVL55:
	cmpl	$20, %ebx
	jne	.L33
.LVL56:
.L27:
	.loc 1 176 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L35
	call	__stack_chk_fail
.LVL57:
.L35:
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
.LFE3:
	.size	utils_hmac_sha1, .-utils_hmac_sha1
	.section	.text.unlikely.utils_hmac_sha1
.LCOLDE4:
	.section	.text.utils_hmac_sha1
.LHOTE4:
	.section	.text.unlikely.utils_hmac_sha1_raw,"ax",@progbits
.LCOLDB5:
	.section	.text.utils_hmac_sha1_raw,"ax",@progbits
.LHOTB5:
	.globl	utils_hmac_sha1_raw
	.type	utils_hmac_sha1_raw, @function
utils_hmac_sha1_raw:
.LFB4:
	.loc 1 179 0
	.cfi_startproc
.LVL58:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$284, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 179 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %ebx
	movl	%eax, -284(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -288(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 180 0
	cmpl	$0, -288(%ebp)
	sete	%dl
	testl	%ebx, %ebx
	sete	%al
	orb	%al, %dl
	jne	.L47
	cmpl	$0, -284(%ebp)
	jne	.L41
.L47:
	.loc 1 181 0
	pushl	$.LC0
	pushl	$2
	pushl	$181
	pushl	$__FUNCTION__.3711
	call	LITE_syslog
.LVL59:
	jmp	.L50
.L41:
	.loc 1 185 0
	cmpl	$64, 24(%ebp)
	jle	.L44
	.loc 1 186 0
	subl	$12, %esp
	pushl	$64
	pushl	$.LC1
	pushl	$2
	pushl	$186
	pushl	$__FUNCTION__.3711
	call	LITE_syslog
.LVL60:
	.loc 1 187 0
	addl	$32, %esp
	jmp	.L40
.L44:
.LVL61:
.LBB4:
.LBB5:
	.loc 1 198 0
	leal	-92(%ebp), %edx
	.loc 1 197 0
	leal	-156(%ebp), %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	.loc 1 199 0
	movl	%ebx, %esi
	.loc 1 197 0
	rep stosl
	.loc 1 198 0
	movl	$16, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 199 0
	leal	-156(%ebp), %edi
	movl	24(%ebp), %ecx
	rep movsb
	.loc 1 200 0
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	24(%ebp), %ecx
	rep movsb
.LVL62:
.L45:
	.loc 1 204 0
	xorb	$54, -156(%ebp,%eax)
	.loc 1 205 0
	xorb	$92, -92(%ebp,%eax)
	.loc 1 203 0
	incl	%eax
.LVL63:
	cmpl	$64, %eax
	.loc 1 204 0
	leal	-156(%ebp), %esi
	.loc 1 205 0
	leal	-92(%ebp), %edi
	.loc 1 203 0
	jne	.L45
	.loc 1 209 0
	leal	-268(%ebp), %ebx
.LVL64:
	subl	$12, %esp
	pushl	%ebx
	call	utils_sha1_init
.LVL65:
	.loc 1 210 0
	movl	%ebx, (%esp)
	call	utils_sha1_starts
.LVL66:
	.loc 1 211 0
	addl	$12, %esp
	pushl	$64
	pushl	%esi
	.loc 1 213 0
	leal	-176(%ebp), %esi
	.loc 1 211 0
	pushl	%ebx
	call	utils_sha1_update
.LVL67:
	.loc 1 212 0
	addl	$12, %esp
	pushl	12(%ebp)
	pushl	-284(%ebp)
	pushl	%ebx
	call	utils_sha1_update
.LVL68:
	.loc 1 213 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_finish
.LVL69:
	.loc 1 216 0
	movl	%ebx, (%esp)
	call	utils_sha1_init
.LVL70:
	.loc 1 217 0
	movl	%ebx, (%esp)
	call	utils_sha1_starts
.LVL71:
	.loc 1 218 0
	addl	$12, %esp
	pushl	$64
	pushl	%edi
	pushl	%ebx
	call	utils_sha1_update
.LVL72:
	.loc 1 219 0
	addl	$12, %esp
	pushl	$20
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_update
.LVL73:
	.loc 1 220 0
	popl	%ecx
	popl	%edi
	pushl	%esi
	pushl	%ebx
	call	utils_sha1_finish
.LVL74:
	.loc 1 222 0
	movl	$5, %ecx
	movl	-288(%ebp), %edi
	rep movsl
.LVL75:
.L50:
	addl	$16, %esp
.L40:
.LBE5:
.LBE4:
	.loc 1 223 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L46
	call	__stack_chk_fail
.LVL76:
.L46:
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
.LFE4:
	.size	utils_hmac_sha1_raw, .-utils_hmac_sha1_raw
	.section	.text.unlikely.utils_hmac_sha1_raw
.LCOLDE5:
	.section	.text.utils_hmac_sha1_raw
.LHOTE5:
	.section	.text.unlikely.utils_hmac_sha1_base64,"ax",@progbits
.LCOLDB6:
	.section	.text.utils_hmac_sha1_base64,"ax",@progbits
.LHOTB6:
	.globl	utils_hmac_sha1_base64
	.type	utils_hmac_sha1_base64, @function
utils_hmac_sha1_base64:
.LFB5:
	.loc 1 226 0
	.cfi_startproc
.LVL77:
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
	.loc 1 228 0
	leal	-48(%ebp), %esi
	.loc 1 226 0
	subl	$56, %esp
	.loc 1 228 0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	%esi
	pushl	12(%ebp)
	pushl	8(%ebp)
	.loc 1 226 0
	movl	28(%ebp), %ebx
	movl	24(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 228 0
	call	utils_hmac_sha1_raw
.LVL78:
	.loc 1 231 0
	leal	-52(%ebp), %eax
	addl	$20, %esp
	pushl	%eax
	pushl	%edi
	pushl	(%ebx)
	pushl	$20
	pushl	%esi
	call	utils_base64encode
.LVL79:
	.loc 1 232 0
	movl	-52(%ebp), %eax
	.loc 1 233 0
	addl	$32, %esp
	.loc 1 232 0
	movl	%eax, (%ebx)
	.loc 1 233 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L52
	call	__stack_chk_fail
.LVL80:
.L52:
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
.LFE5:
	.size	utils_hmac_sha1_base64, .-utils_hmac_sha1_base64
	.section	.text.unlikely.utils_hmac_sha1_base64
.LCOLDE6:
	.section	.text.utils_hmac_sha1_base64
.LHOTE6:
	.section	.rodata.__FUNCTION__.3711,"a",@progbits
	.align 4
	.type	__FUNCTION__.3711, @object
	.size	__FUNCTION__.3711, 20
__FUNCTION__.3711:
	.string	"utils_hmac_sha1_raw"
	.section	.rodata.__FUNCTION__.3692,"a",@progbits
	.align 4
	.type	__FUNCTION__.3692, @object
	.size	__FUNCTION__.3692, 16
__FUNCTION__.3692:
	.string	"utils_hmac_sha1"
	.section	.rodata.__FUNCTION__.3676,"a",@progbits
	.align 4
	.type	__FUNCTION__.3676, @object
	.size	__FUNCTION__.3676, 20
__FUNCTION__.3676:
	.string	"utils_hmac_sha1_hex"
	.section	.rodata.__FUNCTION__.3657,"a",@progbits
	.align 4
	.type	__FUNCTION__.3657, @object
	.size	__FUNCTION__.3657, 15
__FUNCTION__.3657:
	.string	"utils_hmac_md5"
	.text
.Letext0:
	.section	.text.unlikely.utils_hmac_md5
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "framework/protocol/linkkit/iotkit/base/utils//digest/utils_md5.h"
	.file 5 "framework/protocol/linkkit/iotkit/base/utils//digest/utils_sha1.h"
	.file 6 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.file 7 "framework/protocol/linkkit/iotkit/base/utils//digest/utils_base64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x89d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF49
	.byte	0xc
	.long	.LASF50
	.long	.LASF51
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
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x41
	.long	0x6f
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
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x97
	.uleb128 0x6
	.long	0x8a
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x30
	.long	0x64
	.uleb128 0x7
	.long	.LASF52
	.byte	0x4
	.long	0x2c
	.byte	0x6
	.byte	0x22
	.long	0xdc
	.uleb128 0x8
	.long	.LASF14
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x48
	.long	0xec
	.uleb128 0xa
	.long	0x7d
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x58
	.byte	0x4
	.byte	0x1c
	.long	0x119
	.uleb128 0xc
	.long	.LASF20
	.byte	0x4
	.byte	0x1d
	.long	0x119
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x4
	.byte	0x1e
	.long	0x129
	.byte	0x8
	.uleb128 0xc
	.long	.LASF22
	.byte	0x4
	.byte	0x1f
	.long	0x139
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	0x9c
	.long	0x129
	.uleb128 0xa
	.long	0x7d
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	0x9c
	.long	0x139
	.uleb128 0xa
	.long	0x7d
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x48
	.long	0x149
	.uleb128 0xa
	.long	0x7d
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.long	.LASF23
	.byte	0x4
	.byte	0x20
	.long	0xec
	.uleb128 0xb
	.byte	0x5c
	.byte	0x5
	.byte	0x1d
	.long	0x181
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x1e
	.long	0x119
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x1f
	.long	0x181
	.byte	0x8
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x20
	.long	0x139
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.long	0x9c
	.long	0x191
	.uleb128 0xa
	.long	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF24
	.byte	0x5
	.byte	0x21
	.long	0x154
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	0x222
	.uleb128 0xe
	.string	"msg"
	.byte	0x1
	.byte	0xb2
	.long	0x91
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0xb2
	.long	0x25
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0xb2
	.long	0x84
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0xb2
	.long	0x91
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.byte	0xb2
	.long	0x25
	.uleb128 0x10
	.long	.LASF28
	.long	0x232
	.long	.LASF53
	.uleb128 0x11
	.long	.LASF29
	.byte	0x1
	.byte	0xbe
	.long	0x191
	.uleb128 0x11
	.long	.LASF30
	.byte	0x1
	.byte	0xbf
	.long	0x139
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.byte	0xc0
	.long	0x139
	.uleb128 0x12
	.string	"out"
	.byte	0x1
	.byte	0xc1
	.long	0x237
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.long	0x25
	.byte	0
	.uleb128 0x9
	.long	0x97
	.long	0x232
	.uleb128 0xa
	.long	0x7d
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x222
	.uleb128 0x9
	.long	0x48
	.long	0x247
	.uleb128 0xa
	.long	0x7d
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.long	.LASF32
	.byte	0x1
	.byte	0x20
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x382
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0x20
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x20
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0x20
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x20
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.byte	0x20
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF28
	.long	0x392
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3657
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x2c
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0x2d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.byte	0x2e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0x2f
	.long	0xdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x30
	.long	0x25
	.long	.LLST0
	.uleb128 0x1a
	.long	.LVL1
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL2
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL5
	.long	0x829
	.uleb128 0x1a
	.long	.LVL6
	.long	0x834
	.uleb128 0x1a
	.long	.LVL7
	.long	0x83f
	.uleb128 0x1a
	.long	.LVL8
	.long	0x83f
	.uleb128 0x1a
	.long	.LVL9
	.long	0x84a
	.uleb128 0x1a
	.long	.LVL10
	.long	0x829
	.uleb128 0x1a
	.long	.LVL11
	.long	0x834
	.uleb128 0x1a
	.long	.LVL12
	.long	0x83f
	.uleb128 0x1a
	.long	.LVL13
	.long	0x83f
	.uleb128 0x1a
	.long	.LVL14
	.long	0x84a
	.uleb128 0x1a
	.long	.LVL16
	.long	0x855
	.uleb128 0x1a
	.long	.LVL17
	.long	0x855
	.uleb128 0x1a
	.long	.LVL20
	.long	0x860
	.byte	0
	.uleb128 0x9
	.long	0x97
	.long	0x392
	.uleb128 0xa
	.long	0x7d
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.long	0x382
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x52
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c0
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0x52
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x52
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0x52
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x52
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.byte	0x52
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF28
	.long	0x4c0
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3676
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x5e
	.long	0x191
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0x5f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.byte	0x60
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0x61
	.long	0x237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x62
	.long	0x25
	.long	.LLST1
	.uleb128 0x1a
	.long	.LVL22
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL23
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL26
	.long	0x869
	.uleb128 0x1a
	.long	.LVL27
	.long	0x874
	.uleb128 0x1a
	.long	.LVL28
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL29
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL30
	.long	0x88a
	.uleb128 0x1a
	.long	.LVL31
	.long	0x869
	.uleb128 0x1a
	.long	.LVL32
	.long	0x874
	.uleb128 0x1a
	.long	.LVL33
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL34
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL35
	.long	0x88a
	.uleb128 0x1a
	.long	.LVL36
	.long	0x860
	.byte	0
	.uleb128 0x6
	.long	0x222
	.uleb128 0x13
	.long	.LASF34
	.byte	0x1
	.byte	0x80
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x600
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0x80
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0x80
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0x80
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x80
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.byte	0x80
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF28
	.long	0x610
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3692
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x8c
	.long	0x191
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x17
	.long	.LASF30
	.byte	0x1
	.byte	0x8d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.byte	0x8e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.byte	0x8f
	.long	0x237
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x90
	.long	0x25
	.long	.LLST2
	.uleb128 0x1a
	.long	.LVL38
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL39
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL42
	.long	0x869
	.uleb128 0x1a
	.long	.LVL43
	.long	0x874
	.uleb128 0x1a
	.long	.LVL44
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL45
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL46
	.long	0x88a
	.uleb128 0x1a
	.long	.LVL47
	.long	0x869
	.uleb128 0x1a
	.long	.LVL48
	.long	0x874
	.uleb128 0x1a
	.long	.LVL49
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL50
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL51
	.long	0x88a
	.uleb128 0x1a
	.long	.LVL53
	.long	0x855
	.uleb128 0x1a
	.long	.LVL54
	.long	0x855
	.uleb128 0x1a
	.long	.LVL57
	.long	0x860
	.byte	0
	.uleb128 0x9
	.long	0x97
	.long	0x610
	.uleb128 0xa
	.long	0x7d
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.long	0x600
	.uleb128 0x1b
	.long	0x19c
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x767
	.uleb128 0x1c
	.long	0x1a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	0x1d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.long	0x1df
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3711
	.uleb128 0x1e
	.long	0x1ec
	.uleb128 0x1e
	.long	0x1f7
	.uleb128 0x1e
	.long	0x202
	.uleb128 0x1e
	.long	0x20d
	.uleb128 0x1e
	.long	0x218
	.uleb128 0x1f
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x74b
	.uleb128 0x20
	.long	0x1d4
	.long	.LLST3
	.uleb128 0x20
	.long	0x1c9
	.long	.LLST4
	.uleb128 0x20
	.long	0x1be
	.long	.LLST5
	.uleb128 0x20
	.long	0x1b3
	.long	.LLST6
	.uleb128 0x20
	.long	0x1a8
	.long	.LLST7
	.uleb128 0x21
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x1d
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1d
	.long	0x1f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1d
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1d
	.long	0x20d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	0x218
	.long	.LLST8
	.uleb128 0x1d
	.long	0x1df
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3711
	.uleb128 0x1a
	.long	.LVL65
	.long	0x869
	.uleb128 0x1a
	.long	.LVL66
	.long	0x874
	.uleb128 0x1a
	.long	.LVL67
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL68
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL69
	.long	0x88a
	.uleb128 0x1a
	.long	.LVL70
	.long	0x869
	.uleb128 0x1a
	.long	.LVL71
	.long	0x874
	.uleb128 0x1a
	.long	.LVL72
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL73
	.long	0x87f
	.uleb128 0x1a
	.long	.LVL74
	.long	0x88a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL59
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL60
	.long	0x81e
	.uleb128 0x1a
	.long	.LVL76
	.long	0x860
	.byte	0
	.uleb128 0x13
	.long	.LASF35
	.byte	0x1
	.byte	0xe1
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x808
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0xe1
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF25
	.byte	0x1
	.byte	0xe1
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0xe1
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.byte	0xe1
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0xe1
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.long	.LASF36
	.byte	0x1
	.byte	0xe1
	.long	0x808
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0xe3
	.long	0x80e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF37
	.byte	0x1
	.byte	0xe6
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LVL78
	.long	0x19c
	.uleb128 0x1a
	.long	.LVL79
	.long	0x895
	.uleb128 0x1a
	.long	.LVL80
	.long	0x860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x25
	.uleb128 0x9
	.long	0x8a
	.long	0x81e
	.uleb128 0xa
	.long	0x7d
	.byte	0x13
	.byte	0
	.uleb128 0x23
	.long	.LASF38
	.long	.LASF38
	.byte	0x6
	.byte	0x34
	.uleb128 0x23
	.long	.LASF39
	.long	.LASF39
	.byte	0x4
	.byte	0x27
	.uleb128 0x23
	.long	.LASF40
	.long	.LASF40
	.byte	0x4
	.byte	0x3e
	.uleb128 0x23
	.long	.LASF41
	.long	.LASF41
	.byte	0x4
	.byte	0x47
	.uleb128 0x23
	.long	.LASF42
	.long	.LASF42
	.byte	0x4
	.byte	0x4f
	.uleb128 0x23
	.long	.LASF43
	.long	.LASF43
	.byte	0x4
	.byte	0x5e
	.uleb128 0x24
	.long	.LASF54
	.long	.LASF54
	.uleb128 0x23
	.long	.LASF44
	.long	.LASF44
	.byte	0x5
	.byte	0x28
	.uleb128 0x23
	.long	.LASF45
	.long	.LASF45
	.byte	0x5
	.byte	0x3f
	.uleb128 0x23
	.long	.LASF46
	.long	.LASF46
	.byte	0x5
	.byte	0x48
	.uleb128 0x23
	.long	.LASF47
	.long	.LASF47
	.byte	0x5
	.byte	0x50
	.uleb128 0x23
	.long	.LASF48
	.long	.LASF48
	.byte	0x7
	.byte	0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.long	.LVL3
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL24
	.long	.LVL26-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL40
	.long	.LVL42-1
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LVL56
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL61
	.long	.LVL75
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST4:
	.long	.LVL61
	.long	.LVL64
	.value	0x1
	.byte	0x53
	.long	.LVL64
	.long	.LVL75
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST5:
	.long	.LVL61
	.long	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -296
	.long	0
	.long	0
.LLST6:
	.long	.LVL61
	.long	.LVL75
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL61
	.long	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -292
	.long	0
	.long	0
.LLST8:
	.long	.LVL62
	.long	.LVL65-1
	.value	0x1
	.byte	0x50
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"LOG_EMERG_LEVEL"
.LASF26:
	.string	"digest"
.LASF21:
	.string	"state"
.LASF36:
	.string	"digest_len"
.LASF30:
	.string	"k_ipad"
.LASF47:
	.string	"utils_sha1_finish"
.LASF42:
	.string	"utils_md5_finish"
.LASF33:
	.string	"utils_hmac_sha1_hex"
.LASF16:
	.string	"LOG_ERR_LEVEL"
.LASF12:
	.string	"__uint32_t"
.LASF3:
	.string	"signed char"
.LASF41:
	.string	"utils_md5_update"
.LASF4:
	.string	"unsigned char"
.LASF18:
	.string	"LOG_INFO_LEVEL"
.LASF8:
	.string	"long unsigned int"
.LASF49:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF6:
	.string	"short unsigned int"
.LASF34:
	.string	"utils_hmac_sha1"
.LASF32:
	.string	"utils_hmac_md5"
.LASF31:
	.string	"k_opad"
.LASF44:
	.string	"utils_sha1_init"
.LASF39:
	.string	"utils_md5_init"
.LASF28:
	.string	"__FUNCTION__"
.LASF48:
	.string	"utils_base64encode"
.LASF0:
	.string	"unsigned int"
.LASF54:
	.string	"__stack_chk_fail"
.LASF46:
	.string	"utils_sha1_update"
.LASF9:
	.string	"long long unsigned int"
.LASF38:
	.string	"LITE_syslog"
.LASF52:
	.string	"_LOGLEVEL"
.LASF15:
	.string	"LOG_CRIT_LEVEL"
.LASF19:
	.string	"LOG_DEBUG_LEVEL"
.LASF20:
	.string	"total"
.LASF29:
	.string	"context"
.LASF24:
	.string	"iot_sha1_context"
.LASF10:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF53:
	.string	"utils_hmac_sha1_raw"
.LASF50:
	.string	"src/utils_hmac.c"
.LASF35:
	.string	"utils_hmac_sha1_base64"
.LASF51:
	.string	"/home/stone/Documents/pca"
.LASF5:
	.string	"short int"
.LASF22:
	.string	"buffer"
.LASF43:
	.string	"utils_hb2hex"
.LASF17:
	.string	"LOG_WARNING_LEVEL"
.LASF23:
	.string	"iot_md5_context"
.LASF27:
	.string	"key_len"
.LASF13:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF2:
	.string	"long double"
.LASF45:
	.string	"utils_sha1_starts"
.LASF40:
	.string	"utils_md5_starts"
.LASF37:
	.string	"outlen"
.LASF25:
	.string	"msg_len"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

	.file	"ali_crypto_test_hmac.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"I %s %d: hmac not support hash 384 512\n"
.LC1:
	.string	"E %s %d: get ctx size fail(%08x)\n"
.LC2:
	.string	"E %s %d: kmalloc(%08x) fail\n"
.LC3:
	.string	"E %s %d: init fail(%08x)"
.LC4:
	.string	"E %s %d: update 1th fail(%08x)"
.LC5:
	.string	"E %s %d: update 2th fail(%08x)"
.LC6:
	.string	"E %s %d: update 3th fail(%08x)"
.LC7:
	.string	"E %s %d: final fail(%08x)"
.LC8:
	.string	"E %s %d: digest fail(%08x)"
.LC9:
	.string	"hmac-sha1"
.LC10:
	.string	"E %s %d: HMAC-SHA1 test fail!\n"
.LC11:
	.string	"I %s %d: HMAC-SHA1 test success!\n"
.LC12:
	.string	"hmac-sha224"
.LC13:
	.string	"E %s %d: HMAC-SHA224 test fail!\n"
.LC14:
	.string	"I %s %d: HMAC-SHA224 test success!\n"
.LC15:
	.string	"hmac-sha256"
.LC16:
	.string	"E %s %d: HMAC-SHA256 test fail!\n"
.LC17:
	.string	"I %s %d: HMAC-SHA256 test success!\n"
.LC18:
	.string	"hmac-md5"
.LC19:
	.string	"E %s %d: HMAC-MD5 test fail!\n"
.LC20:
	.string	"I %s %d: HMAC-MD5 test success!\n"
	.section	.text.unlikely.ali_crypto_hmac_test,"ax",@progbits
.LCOLDB21:
	.section	.text.ali_crypto_hmac_test,"ax",@progbits
.LHOTB21:
	.section	.text.unlikely.ali_crypto_hmac_test
.Ltext_cold0:
	.section	.text.ali_crypto_hmac_test
	.globl	ali_crypto_hmac_test
	.type	ali_crypto_hmac_test, @function
ali_crypto_hmac_test:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/test/ali_crypto_test_hmac.c"
	.loc 1 75 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$116, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 83 0
	pushl	$0
	pushl	$6
	.loc 1 75 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL0:
	.loc 1 83 0
	call	ali_hmac_get_ctx_size
.LVL1:
	.loc 1 84 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL2:
	.loc 1 87 0
	pushl	%eax
	pushl	%eax
	leal	-96(%ebp), %eax
	pushl	%eax
	pushl	$0
	call	ali_hmac_get_ctx_size
.LVL3:
	.loc 1 88 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 91 0
	pushl	$0
	pushl	$16
	pushl	$test_key
	pushl	$6
	call	ali_hmac_init
.LVL4:
	.loc 1 92 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 95 0
	pushl	$0
	pushl	$16
	pushl	$test_key
	pushl	$0
	call	ali_hmac_init
.LVL5:
	.loc 1 96 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL6:
	.loc 1 99 0
	pushl	%eax
	pushl	$0
	pushl	$13
	pushl	$_g_test_data
	call	ali_hmac_update
.LVL7:
	.loc 1 100 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 103 0
	leal	-92(%ebp), %esi
.LVL8:
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%esi
	call	ali_hmac_final
.LVL9:
	.loc 1 104 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 107 0
	pushl	%edi
	pushl	%edi
	pushl	%esi
	pushl	$141
	pushl	$_g_test_data
	pushl	$16
	pushl	$0
	pushl	$6
	call	ali_hmac_digest
.LVL10:
	.loc 1 109 0
	addl	$32, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 112 0
	subl	$12, %esp
	pushl	$0
	call	ali_hmac_reset
.LVL11:
	.loc 1 113 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 116 0
	pushl	%ebx
	pushl	%ebx
	pushl	$0
	pushl	$0
	call	ali_hmac_copy_context
.LVL12:
	.loc 1 117 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	movl	$1, -108(%ebp)
.LVL13:
.L22:
	.loc 1 122 0
	movl	-108(%ebp), %eax
	subl	$4, %eax
	cmpl	$1, %eax
	ja	.L3
	.loc 1 123 0
	pushl	%ecx
	pushl	$123
	pushl	$__FUNCTION__.3683
	pushl	$.LC0
	jmp	.L61
.L3:
	.loc 1 126 0
	leal	-96(%ebp), %eax
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	-108(%ebp)
	call	ali_hmac_get_ctx_size
.LVL14:
	.loc 1 127 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L5
	.loc 1 128 0
	pushl	%eax
	pushl	$128
	pushl	$__FUNCTION__.3683
	pushl	$.LC1
	jmp	.L65
.L5:
	.loc 1 131 0
	movl	-96(%ebp), %ecx
	subl	$12, %esp
	pushl	%ecx
	movl	%ecx, -112(%ebp)
	call	malloc
.LVL15:
	.loc 1 132 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 131 0
	movl	%eax, %ebx
.LVL16:
	.loc 1 132 0
	movl	-112(%ebp), %ecx
	jne	.L6
	.loc 1 133 0
	pushl	%ecx
	pushl	$133
	pushl	$__FUNCTION__.3683
	pushl	$.LC2
	jmp	.L65
.L6:
	.loc 1 135 0
	xorl	%eax, %eax
.LVL17:
	movl	%ebx, %edi
	rep stosb
	.loc 1 138 0
	pushl	%ebx
	pushl	$16
	pushl	$test_key
	pushl	-108(%ebp)
	call	ali_hmac_init
.LVL18:
	.loc 1 139 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L7
	.loc 1 140 0
	pushl	%eax
	pushl	$140
	pushl	$__FUNCTION__.3683
	pushl	$.LC3
	jmp	.L62
.L7:
.LVL19:
	.loc 1 144 0
	pushl	%eax
	pushl	%ebx
	pushl	$13
	pushl	$0
	call	ali_hmac_update
.LVL20:
	.loc 1 145 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L8
.LVL21:
	.loc 1 149 0
	pushl	%eax
	pushl	%ebx
	pushl	$13
	pushl	$_g_test_data
	call	ali_hmac_update
.LVL22:
	.loc 1 150 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L10
	.loc 1 151 0
	pushl	%eax
	pushl	$151
	pushl	$__FUNCTION__.3683
	pushl	$.LC4
	jmp	.L62
.L10:
.LVL23:
	.loc 1 153 0
	pushl	%eax
	pushl	%ebx
	pushl	$63
	pushl	$_g_test_data+13
	call	ali_hmac_update
.LVL24:
	.loc 1 154 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L11
	.loc 1 155 0
	pushl	%eax
	pushl	$155
	pushl	$__FUNCTION__.3683
	pushl	$.LC5
	jmp	.L62
.L11:
.LVL25:
	.loc 1 157 0
	pushl	%eax
	pushl	%ebx
	pushl	$65
	pushl	$_g_test_data+76
	call	ali_hmac_update
.LVL26:
	.loc 1 158 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L12
	.loc 1 159 0
	pushl	%eax
	pushl	$159
	pushl	$__FUNCTION__.3683
	pushl	$.LC6
	jmp	.L62
.L12:
.LVL27:
	.loc 1 162 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	ali_hmac_final
.LVL28:
	.loc 1 163 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L13
	.loc 1 164 0
	pushl	%eax
	pushl	$164
	pushl	$__FUNCTION__.3683
	pushl	$.LC7
	jmp	.L62
.L13:
.LVL29:
	.loc 1 168 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	$141
	pushl	$_g_test_data
	pushl	$16
	pushl	$test_key
	pushl	$0
	call	ali_hmac_digest
.LVL30:
	.loc 1 170 0
	addl	$32, %esp
	testl	%eax, %eax
	je	.L8
	.loc 1 174 0
	pushl	%edi
	pushl	%edi
	pushl	%esi
	pushl	$141
	pushl	$_g_test_data
	pushl	$16
	pushl	$test_key
	pushl	-108(%ebp)
	call	ali_hmac_digest
.LVL31:
	.loc 1 176 0
	addl	$32, %esp
	testl	%eax, %eax
	je	.L14
	.loc 1 177 0
	pushl	%eax
	pushl	$177
	pushl	$__FUNCTION__.3683
	pushl	$.LC8
.LVL32:
.L62:
	call	printf
.LVL33:
	addl	$16, %esp
	jmp	.L8
.LVL34:
.L14:
	.loc 1 181 0
	pushl	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	%ebx
	call	ali_hmac_copy_context
.LVL35:
	.loc 1 182 0
	movl	%ebx, (%esp)
	call	ali_hmac_reset
.LVL36:
	.loc 1 183 0
	movl	%ebx, (%esp)
	call	free
.LVL37:
	.loc 1 186 0
	addl	$16, %esp
	cmpl	$1, -108(%ebp)
	jne	.L15
	.loc 1 187 0
	pushl	%edx
	pushl	$20
	pushl	$hmac_sha1
	pushl	%esi
	call	memcmp
.LVL38:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L16
	.loc 1 188 0
	pushl	%eax
	pushl	$20
	pushl	%esi
	pushl	$.LC9
	call	ali_crypto_print_data
.LVL39:
	.loc 1 189 0
	addl	$12, %esp
	pushl	$189
	pushl	$__FUNCTION__.3683
	pushl	$.LC10
	jmp	.L65
.L16:
	.loc 1 191 0
	pushl	%eax
	pushl	$191
	pushl	$__FUNCTION__.3683
	pushl	$.LC11
	jmp	.L61
.L15:
	.loc 1 193 0
	cmpl	$2, -108(%ebp)
	jne	.L17
	.loc 1 194 0
	pushl	%eax
	pushl	$28
	pushl	$hmac_sha224
	pushl	%esi
	call	memcmp
.LVL40:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L18
	.loc 1 195 0
	pushl	%eax
	pushl	$28
	pushl	%esi
	pushl	$.LC12
	call	ali_crypto_print_data
.LVL41:
	.loc 1 196 0
	addl	$12, %esp
	pushl	$196
	pushl	$__FUNCTION__.3683
	pushl	$.LC13
.LVL42:
.L65:
	call	printf
.LVL43:
	jmp	.L63
.LVL44:
.L18:
	.loc 1 198 0
	pushl	%eax
	pushl	$198
	pushl	$__FUNCTION__.3683
	pushl	$.LC14
	jmp	.L61
.L17:
	.loc 1 200 0
	cmpl	$3, -108(%ebp)
	jne	.L19
	.loc 1 201 0
	pushl	%eax
	pushl	$32
	pushl	$hmac_sha256
	pushl	%esi
	call	memcmp
.LVL45:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L20
	.loc 1 202 0
	pushl	%edi
	pushl	$32
	pushl	%esi
	pushl	$.LC15
	call	ali_crypto_print_data
.LVL46:
	.loc 1 203 0
	addl	$12, %esp
	pushl	$203
	pushl	$__FUNCTION__.3683
	pushl	$.LC16
	jmp	.L65
.L20:
	.loc 1 205 0
	pushl	%ebx
	pushl	$205
	pushl	$__FUNCTION__.3683
	pushl	$.LC17
	jmp	.L61
.L19:
	.loc 1 222 0
	cmpl	$6, -108(%ebp)
	jne	.L4
	.loc 1 223 0
	pushl	%ecx
	pushl	$16
	pushl	$hmac_md5
	pushl	%esi
	call	memcmp
.LVL47:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L21
	.loc 1 224 0
	pushl	%edx
	pushl	$16
	pushl	%esi
	pushl	$.LC18
	call	ali_crypto_print_data
.LVL48:
	.loc 1 225 0
	addl	$12, %esp
	pushl	$225
	pushl	$__FUNCTION__.3683
	pushl	$.LC19
	jmp	.L65
.L21:
	.loc 1 227 0
	pushl	%eax
	pushl	$227
	pushl	$__FUNCTION__.3683
	pushl	$.LC20
.L61:
	call	printf
.LVL49:
	addl	$16, %esp
.L4:
	.loc 1 121 0 discriminator 2
	incl	-108(%ebp)
.LVL50:
	cmpl	$7, -108(%ebp)
	jne	.L22
	.loc 1 232 0
	xorl	%eax, %eax
.L23:
	.loc 1 240 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L24
	call	__stack_chk_fail
.LVL51:
.L8:
	.loc 1 236 0
	subl	$12, %esp
	pushl	%ebx
	call	free
.LVL52:
.L63:
	addl	$16, %esp
.LVL53:
.L2:
	.loc 1 239 0
	orl	$-1, %eax
	jmp	.L23
.L24:
	.loc 1 240 0
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
	.size	ali_crypto_hmac_test, .-ali_crypto_hmac_test
	.section	.text.unlikely.ali_crypto_hmac_test
.LCOLDE21:
	.section	.text.ali_crypto_hmac_test
.LHOTE21:
	.section	.rodata.__FUNCTION__.3683,"a",@progbits
	.align 4
	.type	__FUNCTION__.3683, @object
	.size	__FUNCTION__.3683, 21
__FUNCTION__.3683:
	.string	"ali_crypto_hmac_test"
	.section	.data.hmac_sha256,"aw",@progbits
	.align 32
	.type	hmac_sha256, @object
	.size	hmac_sha256, 32
hmac_sha256:
	.byte	-43
	.byte	-50
	.byte	43
	.byte	-107
	.byte	-93
	.byte	-22
	.byte	112
	.byte	105
	.byte	106
	.byte	41
	.byte	-65
	.byte	-25
	.byte	-101
	.byte	-94
	.byte	-55
	.byte	24
	.byte	39
	.byte	77
	.byte	63
	.byte	-41
	.byte	-82
	.byte	-25
	.byte	-127
	.byte	-120
	.byte	42
	.byte	-25
	.byte	25
	.byte	104
	.byte	71
	.byte	7
	.byte	-93
	.byte	-77
	.section	.data.hmac_sha224,"aw",@progbits
	.align 4
	.type	hmac_sha224, @object
	.size	hmac_sha224, 28
hmac_sha224:
	.byte	28
	.byte	71
	.byte	4
	.byte	69
	.byte	-51
	.byte	-18
	.byte	0
	.byte	-102
	.byte	70
	.byte	102
	.byte	46
	.byte	30
	.byte	-73
	.byte	4
	.byte	-55
	.byte	-113
	.byte	-43
	.byte	-69
	.byte	-112
	.byte	56
	.byte	-69
	.byte	-109
	.byte	-102
	.byte	8
	.byte	71
	.byte	-25
	.byte	23
	.byte	-54
	.section	.data.hmac_sha1,"aw",@progbits
	.align 4
	.type	hmac_sha1, @object
	.size	hmac_sha1, 20
hmac_sha1:
	.byte	-27
	.byte	-33
	.byte	72
	.byte	-2
	.byte	8
	.byte	-111
	.byte	55
	.byte	-94
	.byte	85
	.byte	-107
	.byte	-68
	.byte	-13
	.byte	118
	.byte	6
	.byte	-110
	.byte	30
	.byte	84
	.byte	-104
	.byte	-32
	.byte	75
	.section	.data.hmac_md5,"aw",@progbits
	.align 4
	.type	hmac_md5, @object
	.size	hmac_md5, 16
hmac_md5:
	.byte	32
	.byte	-59
	.byte	-58
	.byte	-89
	.byte	23
	.byte	111
	.byte	39
	.byte	-2
	.byte	122
	.byte	29
	.byte	126
	.byte	-123
	.byte	91
	.byte	92
	.byte	-88
	.byte	-60
	.section	.data._g_test_data,"aw",@progbits
	.align 32
	.type	_g_test_data, @object
	.size	_g_test_data, 141
_g_test_data:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	19
	.section	.data.test_key,"aw",@progbits
	.align 4
	.type	test_key, @object
	.size	test_key, 16
test_key:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.text
.Letext0:
	.section	.text.unlikely.ali_crypto_hmac_test
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "./security/alicrypto/./libalicrypto/inc/ali_crypto.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 9 "./security/alicrypto/./libalicrypto/test/inc/ali_crypto_test.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x586
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF73
	.byte	0xc
	.long	.LASF74
	.long	.LASF75
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
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF31
	.byte	0x4
	.long	0x73
	.byte	0x5
	.byte	0xc
	.long	0x130
	.uleb128 0x6
	.long	.LASF15
	.sleb128 -65536
	.uleb128 0x6
	.long	.LASF16
	.sleb128 -65535
	.uleb128 0x6
	.long	.LASF17
	.sleb128 -65534
	.uleb128 0x6
	.long	.LASF18
	.sleb128 -65533
	.uleb128 0x6
	.long	.LASF19
	.sleb128 -65532
	.uleb128 0x6
	.long	.LASF20
	.sleb128 -65531
	.uleb128 0x6
	.long	.LASF21
	.sleb128 -65530
	.uleb128 0x6
	.long	.LASF22
	.sleb128 -65529
	.uleb128 0x6
	.long	.LASF23
	.sleb128 -65528
	.uleb128 0x6
	.long	.LASF24
	.sleb128 -65527
	.uleb128 0x6
	.long	.LASF25
	.sleb128 -65526
	.uleb128 0x6
	.long	.LASF26
	.sleb128 -65525
	.uleb128 0x6
	.long	.LASF27
	.sleb128 -65524
	.uleb128 0x6
	.long	.LASF28
	.sleb128 -65523
	.uleb128 0x7
	.long	.LASF29
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x5
	.byte	0x1c
	.long	0xa9
	.uleb128 0x5
	.long	.LASF32
	.byte	0x4
	.long	0x7a
	.byte	0x5
	.byte	0x3f
	.long	0x176
	.uleb128 0x7
	.long	.LASF33
	.byte	0
	.uleb128 0x7
	.long	.LASF34
	.byte	0x1
	.uleb128 0x7
	.long	.LASF35
	.byte	0x2
	.uleb128 0x7
	.long	.LASF36
	.byte	0x3
	.uleb128 0x7
	.long	.LASF37
	.byte	0x4
	.uleb128 0x7
	.long	.LASF38
	.byte	0x5
	.uleb128 0x8
	.string	"MD5"
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF39
	.byte	0x5
	.byte	0x47
	.long	0x13b
	.uleb128 0x9
	.byte	0x4
	.long	0x7a
	.byte	0x5
	.byte	0x49
	.long	0x1b8
	.uleb128 0x7
	.long	.LASF40
	.byte	0x10
	.uleb128 0x7
	.long	.LASF41
	.byte	0x14
	.uleb128 0x7
	.long	.LASF42
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF43
	.byte	0x20
	.uleb128 0x7
	.long	.LASF44
	.byte	0x30
	.uleb128 0x7
	.long	.LASF45
	.byte	0x40
	.uleb128 0x7
	.long	.LASF46
	.byte	0x40
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF47
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF48
	.uleb128 0xa
	.byte	0x4
	.uleb128 0xb
	.long	0x1b8
	.uleb128 0xc
	.long	.LASF76
	.byte	0x1
	.byte	0x4a
	.long	0x73
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x382
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x4c
	.long	0x130
	.long	.LLST0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x4d
	.long	0x176
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.byte	0x4e
	.long	0x1c6
	.long	.LLST2
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x4f
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xf
	.string	"md"
	.byte	0x1
	.byte	0x50
	.long	0x382
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF77
	.long	0x3a2
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3683
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.byte	0xea
	.uleb128 0x12
	.long	.LVL1
	.long	0x4f5
	.uleb128 0x12
	.long	.LVL3
	.long	0x4f5
	.uleb128 0x12
	.long	.LVL4
	.long	0x501
	.uleb128 0x12
	.long	.LVL5
	.long	0x501
	.uleb128 0x12
	.long	.LVL7
	.long	0x50d
	.uleb128 0x12
	.long	.LVL9
	.long	0x519
	.uleb128 0x12
	.long	.LVL10
	.long	0x525
	.uleb128 0x12
	.long	.LVL11
	.long	0x531
	.uleb128 0x12
	.long	.LVL12
	.long	0x53d
	.uleb128 0x12
	.long	.LVL14
	.long	0x4f5
	.uleb128 0x12
	.long	.LVL15
	.long	0x549
	.uleb128 0x12
	.long	.LVL18
	.long	0x501
	.uleb128 0x12
	.long	.LVL20
	.long	0x50d
	.uleb128 0x12
	.long	.LVL22
	.long	0x50d
	.uleb128 0x12
	.long	.LVL24
	.long	0x50d
	.uleb128 0x12
	.long	.LVL26
	.long	0x50d
	.uleb128 0x12
	.long	.LVL28
	.long	0x519
	.uleb128 0x12
	.long	.LVL30
	.long	0x525
	.uleb128 0x12
	.long	.LVL31
	.long	0x525
	.uleb128 0x12
	.long	.LVL33
	.long	0x554
	.uleb128 0x12
	.long	.LVL35
	.long	0x53d
	.uleb128 0x12
	.long	.LVL36
	.long	0x531
	.uleb128 0x12
	.long	.LVL37
	.long	0x55f
	.uleb128 0x12
	.long	.LVL38
	.long	0x56a
	.uleb128 0x12
	.long	.LVL39
	.long	0x575
	.uleb128 0x12
	.long	.LVL40
	.long	0x56a
	.uleb128 0x12
	.long	.LVL41
	.long	0x575
	.uleb128 0x12
	.long	.LVL43
	.long	0x554
	.uleb128 0x12
	.long	.LVL45
	.long	0x56a
	.uleb128 0x12
	.long	.LVL46
	.long	0x575
	.uleb128 0x12
	.long	.LVL47
	.long	0x56a
	.uleb128 0x12
	.long	.LVL48
	.long	0x575
	.uleb128 0x12
	.long	.LVL49
	.long	0x554
	.uleb128 0x12
	.long	.LVL51
	.long	0x580
	.uleb128 0x12
	.long	.LVL52
	.long	0x55f
	.byte	0
	.uleb128 0x13
	.long	0x81
	.long	0x392
	.uleb128 0x14
	.long	0x1bf
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.long	0x1c8
	.long	0x3a2
	.uleb128 0x14
	.long	0x1bf
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.long	0x392
	.uleb128 0x13
	.long	0x81
	.long	0x3b7
	.uleb128 0x14
	.long	0x1bf
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0xb
	.long	0x3a7
	.uleb128 0x5
	.byte	0x3
	.long	test_key
	.uleb128 0x13
	.long	0x81
	.long	0x3d8
	.uleb128 0x14
	.long	0x1bf
	.byte	0x8c
	.byte	0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.byte	0x10
	.long	0x3c8
	.uleb128 0x5
	.byte	0x3
	.long	_g_test_data
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0x26
	.long	0x3a7
	.uleb128 0x5
	.byte	0x3
	.long	hmac_md5
	.uleb128 0x13
	.long	0x81
	.long	0x40a
	.uleb128 0x14
	.long	0x1bf
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.byte	0x2a
	.long	0x3fa
	.uleb128 0x5
	.byte	0x3
	.long	hmac_sha1
	.uleb128 0x13
	.long	0x81
	.long	0x42b
	.uleb128 0x14
	.long	0x1bf
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.byte	0x2e
	.long	0x41b
	.uleb128 0x5
	.byte	0x3
	.long	hmac_sha224
	.uleb128 0x13
	.long	0x81
	.long	0x44c
	.uleb128 0x14
	.long	0x1bf
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x33
	.long	0x43c
	.uleb128 0x5
	.byte	0x3
	.long	hmac_sha256
	.uleb128 0x13
	.long	0x81
	.long	0x46d
	.uleb128 0x14
	.long	0x1bf
	.byte	0x2f
	.byte	0
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0x39
	.long	0x45d
	.byte	0x30
	.byte	0x26
	.byte	0x10
	.byte	0x72
	.byte	0xd
	.byte	0xf1
	.byte	0x70
	.byte	0x3
	.byte	0x40
	.byte	0x65
	.byte	0x4c
	.byte	0x94
	.byte	0xf5
	.byte	0x45
	.byte	0xbc
	.byte	0xbc
	.byte	0xcc
	.byte	0xd4
	.byte	0x17
	.byte	0xf5
	.byte	0x70
	.byte	0x81
	.byte	0xda
	.byte	0x91
	.byte	0x99
	.byte	0xe0
	.byte	0xca
	.byte	0x7a
	.byte	0x8c
	.byte	0x9c
	.byte	0x15
	.byte	0x5b
	.byte	0x22
	.byte	0xe8
	.byte	0xaa
	.byte	0x1c
	.byte	0xcf
	.byte	0xef
	.byte	0xe4
	.byte	0x6e
	.byte	0xf2
	.byte	0xfb
	.byte	0xdb
	.byte	0x6a
	.byte	0xf2
	.byte	0x22
	.byte	0xae
	.byte	0x70
	.byte	0x78
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x40
	.long	0x382
	.byte	0x40
	.byte	0x66
	.byte	0x43
	.byte	0xba
	.byte	0xfc
	.byte	0x6f
	.byte	0x9e
	.byte	0xa3
	.byte	0xf8
	.byte	0xbf
	.byte	0x3d
	.byte	0x46
	.byte	0x46
	.byte	0x26
	.byte	0xfb
	.byte	0x8f
	.byte	0xa4
	.byte	0x4
	.byte	0x4c
	.byte	0x8a
	.byte	0x7
	.byte	0xfa
	.byte	0xac
	.byte	0x1d
	.byte	0x16
	.byte	0x33
	.byte	0xe6
	.byte	0xbd
	.byte	0x65
	.byte	0x1
	.byte	0xe2
	.byte	0x44
	.byte	0x83
	.byte	0x45
	.byte	0x78
	.byte	0x25
	.byte	0xbc
	.byte	0x42
	.byte	0x4b
	.byte	0x25
	.byte	0x85
	.byte	0xe0
	.byte	0x2a
	.byte	0xb4
	.byte	0xff
	.byte	0x6b
	.byte	0x92
	.byte	0xc
	.byte	0x50
	.byte	0xdb
	.byte	0xc
	.byte	0
	.byte	0x6e
	.byte	0x4d
	.byte	0xd5
	.byte	0x5c
	.byte	0xcc
	.byte	0x4e
	.byte	0x9f
	.byte	0xba
	.byte	0x3f
	.byte	0xfd
	.byte	0x81
	.byte	0x3f
	.byte	0xb
	.uleb128 0x16
	.long	.LASF61
	.long	.LASF61
	.byte	0x5
	.value	0x1cc
	.uleb128 0x16
	.long	.LASF62
	.long	.LASF62
	.byte	0x5
	.value	0x1cd
	.uleb128 0x16
	.long	.LASF63
	.long	.LASF63
	.byte	0x5
	.value	0x1cf
	.uleb128 0x16
	.long	.LASF64
	.long	.LASF64
	.byte	0x5
	.value	0x1d0
	.uleb128 0x16
	.long	.LASF65
	.long	.LASF65
	.byte	0x5
	.value	0x1d3
	.uleb128 0x16
	.long	.LASF66
	.long	.LASF66
	.byte	0x5
	.value	0x1d1
	.uleb128 0x16
	.long	.LASF67
	.long	.LASF67
	.byte	0x5
	.value	0x1d2
	.uleb128 0x17
	.long	.LASF68
	.long	.LASF68
	.byte	0x6
	.byte	0x68
	.uleb128 0x17
	.long	.LASF69
	.long	.LASF69
	.byte	0x7
	.byte	0xc8
	.uleb128 0x17
	.long	.LASF70
	.long	.LASF70
	.byte	0x6
	.byte	0x5d
	.uleb128 0x17
	.long	.LASF71
	.long	.LASF71
	.byte	0x8
	.byte	0x1a
	.uleb128 0x17
	.long	.LASF72
	.long	.LASF72
	.byte	0x9
	.byte	0x23
	.uleb128 0x18
	.long	.LASF79
	.long	.LASF79
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12-1
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL15-1
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL31-1
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL44
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL13
	.long	.LVL50
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	.LVL51
	.long	.LVL53
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	.LVL17
	.long	.LVL37
	.value	0x1
	.byte	0x53
	.long	.LVL37
	.long	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL44
	.long	.LVL51
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	.LVL53
	.long	.LFE1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"hmac_sha384"
.LASF18:
	.string	"ALI_CRYPTO_INVALID_TYPE"
.LASF49:
	.string	"result"
.LASF63:
	.string	"ali_hmac_update"
.LASF66:
	.string	"ali_hmac_reset"
.LASF33:
	.string	"HASH_NONE"
.LASF23:
	.string	"ALI_CRYPTO_INVALID_PACKET"
.LASF54:
	.string	"_g_test_data"
.LASF2:
	.string	"short int"
.LASF37:
	.string	"SHA384"
.LASF26:
	.string	"ALI_CRYPTO_SHORT_BUFFER"
.LASF48:
	.string	"sizetype"
.LASF61:
	.string	"ali_hmac_get_ctx_size"
.LASF31:
	.string	"_ali_crypto_result"
.LASF22:
	.string	"ALI_CRYPTO_INVALID_ARG"
.LASF6:
	.string	"__uint32_t"
.LASF32:
	.string	"_hash_type_t"
.LASF40:
	.string	"MD5_HASH_SIZE"
.LASF51:
	.string	"hmac_ctx"
.LASF11:
	.string	"uint8_t"
.LASF45:
	.string	"SHA512_HASH_SIZE"
.LASF70:
	.string	"free"
.LASF0:
	.string	"signed char"
.LASF78:
	.string	"_OUT"
.LASF58:
	.string	"hmac_sha256"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"ALI_CRYPTO_INVALID_CONTEXT"
.LASF47:
	.string	"char"
.LASF72:
	.string	"ali_crypto_print_data"
.LASF4:
	.string	"long int"
.LASF69:
	.string	"printf"
.LASF34:
	.string	"SHA1"
.LASF77:
	.string	"__FUNCTION__"
.LASF53:
	.string	"test_key"
.LASF36:
	.string	"SHA256"
.LASF56:
	.string	"hmac_sha1"
.LASF25:
	.string	"ALI_CRYPTO_OUTOFMEM"
.LASF14:
	.string	"long double"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"hmac_ctx_size"
.LASF71:
	.string	"memcmp"
.LASF57:
	.string	"hmac_sha224"
.LASF41:
	.string	"SHA1_HASH_SIZE"
.LASF55:
	.string	"hmac_md5"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF5:
	.string	"__uint8_t"
.LASF21:
	.string	"ALI_CRYPTO_INVALID_AUTHENTICATION"
.LASF17:
	.string	"ALI_CRYPTO_INVALID_KEY"
.LASF68:
	.string	"malloc"
.LASF3:
	.string	"short unsigned int"
.LASF35:
	.string	"SHA224"
.LASF28:
	.string	"ALI_CRYPTO_ERR_STATE"
.LASF65:
	.string	"ali_hmac_digest"
.LASF24:
	.string	"ALI_CRYPTO_LENGTH_ERR"
.LASF50:
	.string	"type"
.LASF20:
	.string	"ALI_CRYPTO_INVALID_PADDING"
.LASF62:
	.string	"ali_hmac_init"
.LASF29:
	.string	"ALI_CRYPTO_SUCCESS"
.LASF13:
	.string	"size_t"
.LASF74:
	.string	"src/ali_crypto_test_hmac.c"
.LASF15:
	.string	"ALI_CRYPTO_ERROR"
.LASF43:
	.string	"SHA256_HASH_SIZE"
.LASF30:
	.string	"ali_crypto_result"
.LASF46:
	.string	"MAX_HASH_SIZE"
.LASF7:
	.string	"long unsigned int"
.LASF39:
	.string	"hash_type_t"
.LASF44:
	.string	"SHA384_HASH_SIZE"
.LASF27:
	.string	"ALI_CRYPTO_NULL"
.LASF42:
	.string	"SHA224_HASH_SIZE"
.LASF67:
	.string	"ali_hmac_copy_context"
.LASF73:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF16:
	.string	"ALI_CRYPTO_NOSUPPORT"
.LASF60:
	.string	"hmac_sha512"
.LASF75:
	.string	"/home/stone/Documents/pca"
.LASF79:
	.string	"__stack_chk_fail"
.LASF76:
	.string	"ali_crypto_hmac_test"
.LASF64:
	.string	"ali_hmac_final"
.LASF38:
	.string	"SHA512"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

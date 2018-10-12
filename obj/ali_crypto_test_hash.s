	.file	"ali_crypto_test_hash.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"I %s %d: hash not support hash 384 512\n"
.LC1:
	.string	"E %s %d: get ctx size fail(%08x)\n"
.LC2:
	.string	"E %s %d: malloc(%d) fail\n"
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
	.string	"sha1"
.LC10:
	.string	"E %s %d: SHA1 test fail!"
.LC11:
	.string	"I %s %d: SHA1 test success!\n"
.LC12:
	.string	"sha224"
.LC13:
	.string	"E %s %d: SHA224 test fail!\n"
.LC14:
	.string	"I %s %d: SHA224 test success!\n"
.LC15:
	.string	"sha256"
.LC16:
	.string	"E %s %d: SHA256 test fail!\n"
.LC17:
	.string	"I %s %d: SHA256 test success!\n"
.LC18:
	.string	"md5"
.LC19:
	.string	"E %s %d: md5 test fail!\n"
.LC20:
	.string	"I %s %d: md5 test success!\n"
	.section	.text.unlikely.ali_crypto_hash_test,"ax",@progbits
.LCOLDB21:
	.section	.text.ali_crypto_hash_test,"ax",@progbits
.LHOTB21:
	.section	.text.unlikely.ali_crypto_hash_test
.Ltext_cold0:
	.section	.text.ali_crypto_hash_test
	.globl	ali_crypto_hash_test
	.type	ali_crypto_hash_test, @function
ali_crypto_hash_test:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/test/ali_crypto_test_hash.c"
	.loc 1 69 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$180, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 69 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL0:
	.loc 1 78 0
	leal	-160(%ebp), %eax
	pushl	%eax
	pushl	$0
	call	ali_hash_get_ctx_size
.LVL1:
	.loc 1 79 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 84 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	$0
	call	ali_hash_get_ctx_size
.LVL2:
	.loc 1 85 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL3:
	.loc 1 90 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	call	ali_hash_init
.LVL4:
	.loc 1 91 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL5:
	.loc 1 96 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	call	ali_hash_init
.LVL6:
	.loc 1 97 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL7:
	.loc 1 102 0
	pushl	%eax
	pushl	$0
	pushl	$13
	pushl	$_g_test_data
	call	ali_hash_update
.LVL8:
	.loc 1 103 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL9:
	.loc 1 108 0
	pushl	%eax
	pushl	$-1
	pushl	$13
	pushl	$0
	call	ali_hash_update
.LVL10:
	.loc 1 109 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 114 0
	leal	-156(%ebp), %esi
.LVL11:
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%esi
	call	ali_hash_final
.LVL12:
	.loc 1 115 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
.LVL13:
	.loc 1 120 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%esi
	call	ali_hash_final
.LVL14:
	.loc 1 121 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 126 0
	subl	$12, %esp
	pushl	$0
	call	ali_hash_reset
.LVL15:
	.loc 1 127 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 132 0
	pushl	%edi
	pushl	%edi
	pushl	$0
	pushl	$0
	call	ali_hash_copy_context
.LVL16:
	.loc 1 133 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	movl	$1, -172(%ebp)
.LVL17:
.L26:
	.loc 1 138 0
	movl	-172(%ebp), %eax
	subl	$4, %eax
	cmpl	$1, %eax
	ja	.L3
	.loc 1 139 0
	pushl	%ebx
	pushl	$139
	pushl	$__FUNCTION__.3683
	pushl	$.LC0
	jmp	.L65
.L3:
	.loc 1 142 0
	leal	-160(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	-172(%ebp)
	call	ali_hash_get_ctx_size
.LVL18:
	.loc 1 143 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L5
	.loc 1 144 0
	pushl	%eax
	pushl	$144
	pushl	$__FUNCTION__.3683
	pushl	$.LC1
	jmp	.L69
.L5:
	.loc 1 147 0
	movl	-160(%ebp), %ecx
	subl	$12, %esp
	pushl	%ecx
	movl	%ecx, -176(%ebp)
	call	malloc
.LVL19:
	.loc 1 148 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 147 0
	movl	%eax, %ebx
.LVL20:
	.loc 1 148 0
	movl	-176(%ebp), %ecx
	jne	.L6
	.loc 1 149 0
	pushl	%ecx
	pushl	$149
	pushl	$__FUNCTION__.3683
	pushl	$.LC2
	jmp	.L69
.L6:
	.loc 1 151 0
	xorl	%eax, %eax
.LVL21:
	movl	%ebx, %edi
	rep stosb
	.loc 1 153 0
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	-172(%ebp)
	call	ali_hash_init
.LVL22:
	.loc 1 154 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L7
	.loc 1 155 0
	pushl	%eax
	pushl	$155
	pushl	$__FUNCTION__.3683
	pushl	$.LC3
	jmp	.L66
.L7:
.LVL23:
	.loc 1 158 0
	pushl	%eax
	pushl	%ebx
	pushl	$13
	pushl	$_g_test_data
	call	ali_hash_update
.LVL24:
	.loc 1 159 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L9
	.loc 1 160 0
	pushl	%eax
	pushl	$160
	pushl	$__FUNCTION__.3683
	pushl	$.LC4
	jmp	.L66
.L9:
.LVL25:
	.loc 1 162 0
	pushl	%eax
	pushl	%ebx
	pushl	$63
	pushl	$_g_test_data+13
	call	ali_hash_update
.LVL26:
	.loc 1 163 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L10
	.loc 1 164 0
	pushl	%eax
	pushl	$164
	pushl	$__FUNCTION__.3683
	pushl	$.LC5
	jmp	.L66
.L10:
.LVL27:
	.loc 1 166 0
	pushl	%eax
	pushl	%ebx
	pushl	$65
	pushl	$_g_test_data+76
	call	ali_hash_update
.LVL28:
	.loc 1 167 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L11
	.loc 1 168 0
	pushl	%eax
	pushl	$168
	pushl	$__FUNCTION__.3683
	pushl	$.LC6
	jmp	.L66
.L11:
.LVL29:
	.loc 1 171 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	ali_hash_final
.LVL30:
	.loc 1 172 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L12
	.loc 1 173 0
	pushl	%eax
	pushl	$173
	pushl	$__FUNCTION__.3683
	pushl	$.LC7
	jmp	.L66
.L12:
	.loc 1 176 0
	leal	-92(%ebp), %eax
.LVL31:
	pushl	%eax
	pushl	$141
	pushl	$_g_test_data
	pushl	-172(%ebp)
	call	ali_hash_digest
.LVL32:
	.loc 1 177 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L13
	.loc 1 178 0
	pushl	%eax
	pushl	$178
	pushl	$__FUNCTION__.3683
	pushl	$.LC8
.LVL33:
.L66:
	call	printf
.LVL34:
	addl	$16, %esp
	jmp	.L8
.LVL35:
.L13:
.LVL36:
	.loc 1 182 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ebx
	call	ali_hash_copy_context
.LVL37:
	.loc 1 183 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L8
	.loc 1 188 0
	subl	$12, %esp
	pushl	%ebx
	call	ali_hash_reset
.LVL38:
	.loc 1 189 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L8
	.loc 1 193 0
	subl	$12, %esp
	pushl	%ebx
	call	free
.LVL39:
	.loc 1 196 0
	addl	$16, %esp
	cmpl	$1, -172(%ebp)
	jne	.L15
	.loc 1 197 0
	pushl	%eax
	pushl	$20
	pushl	$hash_sha1
	pushl	%esi
	call	memcmp
.LVL40:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L16
	.loc 1 198 0 discriminator 1
	leal	-92(%ebp), %eax
	pushl	%edi
	pushl	$20
	pushl	$hash_sha1
	pushl	%eax
	call	memcmp
.LVL41:
	addl	$16, %esp
	.loc 1 197 0 discriminator 1
	testl	%eax, %eax
	je	.L17
.L16:
	.loc 1 199 0
	pushl	%ebx
	pushl	$20
	pushl	%esi
	pushl	$.LC9
	call	ali_crypto_print_data
.LVL42:
	.loc 1 200 0
	addl	$12, %esp
	pushl	$200
	pushl	$__FUNCTION__.3683
	pushl	$.LC10
	jmp	.L69
.L17:
	.loc 1 202 0
	pushl	%ecx
	pushl	$202
	pushl	$__FUNCTION__.3683
	pushl	$.LC11
	jmp	.L65
.L15:
	.loc 1 204 0
	cmpl	$2, -172(%ebp)
	jne	.L18
	.loc 1 205 0
	pushl	%edx
	pushl	$28
	pushl	$hash_sha224
	pushl	%esi
	call	memcmp
.LVL43:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L19
	.loc 1 206 0 discriminator 1
	pushl	%eax
	leal	-92(%ebp), %eax
	pushl	$28
	pushl	$hash_sha224
	pushl	%eax
	call	memcmp
.LVL44:
	addl	$16, %esp
	.loc 1 205 0 discriminator 1
	testl	%eax, %eax
	je	.L20
.L19:
	.loc 1 207 0
	pushl	%eax
	pushl	$28
	pushl	%esi
	pushl	$.LC12
	call	ali_crypto_print_data
.LVL45:
	.loc 1 208 0
	addl	$12, %esp
	pushl	$208
	pushl	$__FUNCTION__.3683
	pushl	$.LC13
.LVL46:
.L69:
	call	printf
.LVL47:
	jmp	.L67
.LVL48:
.L20:
	.loc 1 210 0
	pushl	%eax
	pushl	$210
	pushl	$__FUNCTION__.3683
	pushl	$.LC14
	jmp	.L65
.L18:
	.loc 1 212 0
	cmpl	$3, -172(%ebp)
	jne	.L21
	.loc 1 213 0
	pushl	%eax
	pushl	$32
	pushl	$hash_sha256
	pushl	%esi
	call	memcmp
.LVL49:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L22
	.loc 1 214 0 discriminator 1
	pushl	%eax
	leal	-92(%ebp), %eax
	pushl	$32
	pushl	$hash_sha256
	pushl	%eax
	call	memcmp
.LVL50:
	addl	$16, %esp
	.loc 1 213 0 discriminator 1
	testl	%eax, %eax
	je	.L23
.L22:
	.loc 1 215 0
	pushl	%eax
	pushl	$32
	pushl	%esi
	pushl	$.LC15
	call	ali_crypto_print_data
.LVL51:
	.loc 1 216 0
	addl	$12, %esp
	pushl	$216
	pushl	$__FUNCTION__.3683
	pushl	$.LC16
	jmp	.L69
.L23:
	.loc 1 218 0
	pushl	%edi
	pushl	$218
	pushl	$__FUNCTION__.3683
	pushl	$.LC17
	jmp	.L65
.L21:
	.loc 1 238 0
	cmpl	$6, -172(%ebp)
	jne	.L4
	.loc 1 239 0
	pushl	%ebx
	pushl	$16
	pushl	$hash_md5
	pushl	%esi
	call	memcmp
.LVL52:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L24
	.loc 1 240 0 discriminator 1
	leal	-92(%ebp), %eax
	pushl	%ecx
	pushl	$16
	pushl	$hash_md5
	pushl	%eax
	call	memcmp
.LVL53:
	addl	$16, %esp
	.loc 1 239 0 discriminator 1
	testl	%eax, %eax
	je	.L25
.L24:
	.loc 1 241 0
	pushl	%edx
	pushl	$16
	pushl	%esi
	pushl	$.LC18
	call	ali_crypto_print_data
.LVL54:
	.loc 1 242 0
	addl	$12, %esp
	pushl	$242
	pushl	$__FUNCTION__.3683
	pushl	$.LC19
	jmp	.L69
.L25:
	.loc 1 244 0
	pushl	%eax
	pushl	$244
	pushl	$__FUNCTION__.3683
	pushl	$.LC20
.L65:
	call	printf
.LVL55:
	addl	$16, %esp
.L4:
	.loc 1 137 0 discriminator 2
	incl	-172(%ebp)
.LVL56:
	cmpl	$7, -172(%ebp)
	jne	.L26
	.loc 1 249 0
	xorl	%eax, %eax
.L27:
	.loc 1 257 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L28
	call	__stack_chk_fail
.LVL57:
.L8:
	.loc 1 253 0
	subl	$12, %esp
	pushl	%ebx
	call	free
.LVL58:
.L67:
	addl	$16, %esp
.LVL59:
.L2:
	.loc 1 256 0
	orl	$-1, %eax
	jmp	.L27
.L28:
	.loc 1 257 0
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
	.size	ali_crypto_hash_test, .-ali_crypto_hash_test
	.section	.text.unlikely.ali_crypto_hash_test
.LCOLDE21:
	.section	.text.ali_crypto_hash_test
.LHOTE21:
	.section	.rodata.__FUNCTION__.3683,"a",@progbits
	.align 4
	.type	__FUNCTION__.3683, @object
	.size	__FUNCTION__.3683, 21
__FUNCTION__.3683:
	.string	"ali_crypto_hash_test"
	.section	.data.hash_sha256,"aw",@progbits
	.align 32
	.type	hash_sha256, @object
	.size	hash_sha256, 32
hash_sha256:
	.byte	59
	.byte	127
	.byte	82
	.byte	-82
	.byte	91
	.byte	-24
	.byte	9
	.byte	25
	.byte	2
	.byte	26
	.byte	-125
	.byte	-115
	.byte	-52
	.byte	-58
	.byte	1
	.byte	-61
	.byte	118
	.byte	65
	.byte	34
	.byte	100
	.byte	75
	.byte	28
	.byte	53
	.byte	-94
	.byte	-99
	.byte	-45
	.byte	-59
	.byte	118
	.byte	54
	.byte	-41
	.byte	-38
	.byte	95
	.section	.data.hash_sha224,"aw",@progbits
	.align 4
	.type	hash_sha224, @object
	.size	hash_sha224, 28
hash_sha224:
	.byte	54
	.byte	-108
	.byte	54
	.byte	-7
	.byte	-44
	.byte	-23
	.byte	-66
	.byte	89
	.byte	-69
	.byte	89
	.byte	92
	.byte	115
	.byte	74
	.byte	-16
	.byte	-24
	.byte	82
	.byte	72
	.byte	9
	.byte	-124
	.byte	66
	.byte	-20
	.byte	-128
	.byte	-37
	.byte	-122
	.byte	90
	.byte	81
	.byte	68
	.byte	58
	.section	.data.hash_sha1,"aw",@progbits
	.align 4
	.type	hash_sha1, @object
	.size	hash_sha1, 20
hash_sha1:
	.byte	84
	.byte	29
	.byte	111
	.byte	110
	.byte	70
	.byte	126
	.byte	-2
	.byte	29
	.byte	-88
	.byte	102
	.byte	6
	.byte	52
	.byte	-80
	.byte	33
	.byte	61
	.byte	101
	.byte	-72
	.byte	-92
	.byte	2
	.byte	-54
	.section	.data.hash_md5,"aw",@progbits
	.align 4
	.type	hash_md5, @object
	.size	hash_md5, 16
hash_md5:
	.byte	-107
	.byte	121
	.byte	-94
	.byte	70
	.byte	-114
	.byte	-68
	.byte	91
	.byte	-42
	.byte	69
	.byte	87
	.byte	-69
	.byte	79
	.byte	-81
	.byte	-82
	.byte	90
	.byte	5
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
	.text
.Letext0:
	.section	.text.unlikely.ali_crypto_hash_test
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
	.long	0x5a0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF74
	.byte	0xc
	.long	.LASF75
	.long	.LASF76
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x1b
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x1d
	.long	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x14
	.long	0x25
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x18
	.long	0x37
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0xd8
	.long	0x7a
	.uleb128 0x3
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
	.uleb128 0x2
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
	.uleb128 0x2
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF48
	.uleb128 0xa
	.byte	0x4
	.uleb128 0xb
	.long	0x1b8
	.uleb128 0xc
	.long	.LASF77
	.byte	0x1
	.byte	0x44
	.long	0x73
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ad
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x46
	.long	0x130
	.long	.LLST0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x47
	.long	0x176
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.byte	0x48
	.long	0x1c6
	.long	.LLST2
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x49
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0x4a
	.long	0x3ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.byte	0x4b
	.long	0x3ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF78
	.long	0x3cd
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3683
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.byte	0xfb
	.uleb128 0x11
	.long	.LVL1
	.long	0x50f
	.uleb128 0x11
	.long	.LVL2
	.long	0x50f
	.uleb128 0x11
	.long	.LVL4
	.long	0x51b
	.uleb128 0x11
	.long	.LVL6
	.long	0x51b
	.uleb128 0x11
	.long	.LVL8
	.long	0x527
	.uleb128 0x11
	.long	.LVL10
	.long	0x527
	.uleb128 0x11
	.long	.LVL12
	.long	0x533
	.uleb128 0x11
	.long	.LVL14
	.long	0x533
	.uleb128 0x11
	.long	.LVL15
	.long	0x53f
	.uleb128 0x11
	.long	.LVL16
	.long	0x54b
	.uleb128 0x11
	.long	.LVL18
	.long	0x50f
	.uleb128 0x11
	.long	.LVL19
	.long	0x557
	.uleb128 0x11
	.long	.LVL22
	.long	0x51b
	.uleb128 0x11
	.long	.LVL24
	.long	0x527
	.uleb128 0x11
	.long	.LVL26
	.long	0x527
	.uleb128 0x11
	.long	.LVL28
	.long	0x527
	.uleb128 0x11
	.long	.LVL30
	.long	0x533
	.uleb128 0x11
	.long	.LVL32
	.long	0x562
	.uleb128 0x11
	.long	.LVL34
	.long	0x56e
	.uleb128 0x11
	.long	.LVL37
	.long	0x54b
	.uleb128 0x11
	.long	.LVL38
	.long	0x53f
	.uleb128 0x11
	.long	.LVL39
	.long	0x579
	.uleb128 0x11
	.long	.LVL40
	.long	0x584
	.uleb128 0x11
	.long	.LVL41
	.long	0x584
	.uleb128 0x11
	.long	.LVL42
	.long	0x58f
	.uleb128 0x11
	.long	.LVL43
	.long	0x584
	.uleb128 0x11
	.long	.LVL44
	.long	0x584
	.uleb128 0x11
	.long	.LVL45
	.long	0x58f
	.uleb128 0x11
	.long	.LVL47
	.long	0x56e
	.uleb128 0x11
	.long	.LVL49
	.long	0x584
	.uleb128 0x11
	.long	.LVL50
	.long	0x584
	.uleb128 0x11
	.long	.LVL51
	.long	0x58f
	.uleb128 0x11
	.long	.LVL52
	.long	0x584
	.uleb128 0x11
	.long	.LVL53
	.long	0x584
	.uleb128 0x11
	.long	.LVL54
	.long	0x58f
	.uleb128 0x11
	.long	.LVL55
	.long	0x56e
	.uleb128 0x11
	.long	.LVL57
	.long	0x59a
	.uleb128 0x11
	.long	.LVL58
	.long	0x579
	.byte	0
	.uleb128 0x12
	.long	0x8c
	.long	0x3bd
	.uleb128 0x13
	.long	0x1bf
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.long	0x1c8
	.long	0x3cd
	.uleb128 0x13
	.long	0x1bf
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.long	0x3bd
	.uleb128 0x12
	.long	0x8c
	.long	0x3e2
	.uleb128 0x13
	.long	0x1bf
	.byte	0x8c
	.byte	0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0xa
	.long	0x3d2
	.uleb128 0x5
	.byte	0x3
	.long	_g_test_data
	.uleb128 0x12
	.long	0x8c
	.long	0x403
	.uleb128 0x13
	.long	0x1bf
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.byte	0x20
	.long	0x3f3
	.uleb128 0x5
	.byte	0x3
	.long	hash_md5
	.uleb128 0x12
	.long	0x81
	.long	0x424
	.uleb128 0x13
	.long	0x1bf
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.byte	0x24
	.long	0x414
	.uleb128 0x5
	.byte	0x3
	.long	hash_sha1
	.uleb128 0x12
	.long	0x8c
	.long	0x445
	.uleb128 0x13
	.long	0x1bf
	.byte	0x1b
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x28
	.long	0x435
	.uleb128 0x5
	.byte	0x3
	.long	hash_sha224
	.uleb128 0x12
	.long	0x8c
	.long	0x466
	.uleb128 0x13
	.long	0x1bf
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1
	.byte	0x2d
	.long	0x456
	.uleb128 0x5
	.byte	0x3
	.long	hash_sha256
	.uleb128 0x12
	.long	0x8c
	.long	0x487
	.uleb128 0x13
	.long	0x1bf
	.byte	0x2f
	.byte	0
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x33
	.long	0x477
	.byte	0x30
	.byte	0x21
	.byte	0xc7
	.byte	0x5
	.byte	0xb3
	.byte	0x37
	.byte	0x66
	.byte	0xf3
	.byte	0xb5
	.byte	0xd
	.byte	0x51
	.byte	0xf5
	.byte	0xf
	.byte	0x91
	.byte	0xfc
	.byte	0xa1
	.byte	0xcf
	.byte	0x78
	.byte	0x35
	.byte	0x82
	.byte	0x77
	.byte	0xfd
	.byte	0x2c
	.byte	0x31
	.byte	0xbb
	.byte	0x8a
	.byte	0x26
	.byte	0x6f
	.byte	0x2a
	.byte	0x82
	.byte	0x52
	.byte	0x1a
	.byte	0x70
	.byte	0xfd
	.byte	0xfc
	.byte	0xa2
	.byte	0xb7
	.byte	0xee
	.byte	0x7f
	.byte	0xb5
	.byte	0xfd
	.byte	0x9e
	.byte	0x20
	.byte	0x36
	.byte	0x91
	.byte	0xc6
	.byte	0xd6
	.byte	0x54
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.byte	0x3a
	.long	0x3ad
	.byte	0x40
	.byte	0x9e
	.byte	0xca
	.byte	0x2a
	.byte	0x96
	.byte	0x1
	.byte	0x48
	.byte	0xf
	.byte	0xa2
	.byte	0x6b
	.byte	0x99
	.byte	0x27
	.byte	0x1a
	.byte	0x7f
	.byte	0x72
	.byte	0xe3
	.byte	0xa4
	.byte	0xee
	.byte	0x2f
	.byte	0x8
	.byte	0x92
	.byte	0x2e
	.byte	0xdb
	.byte	0xf7
	.byte	0x19
	.byte	0xd8
	.byte	0xcd
	.byte	0xcb
	.byte	0xfc
	.byte	0x8b
	.byte	0x56
	.byte	0x8c
	.byte	0x4
	.byte	0xfb
	.byte	0xb3
	.byte	0x69
	.byte	0xdf
	.byte	0x26
	.byte	0xfb
	.byte	0xb
	.byte	0x9f
	.byte	0xbe
	.byte	0x1d
	.byte	0x42
	.byte	0xbd
	.byte	0x39
	.byte	0x87
	.byte	0x52
	.byte	0x16
	.byte	0x42
	.byte	0xac
	.byte	0x62
	.byte	0x57
	.byte	0x94
	.byte	0x59
	.byte	0xa4
	.byte	0xce
	.byte	0x8d
	.byte	0x69
	.byte	0x78
	.byte	0xb7
	.byte	0xf8
	.byte	0x95
	.byte	0xb8
	.byte	0x78
	.uleb128 0x15
	.long	.LASF62
	.long	.LASF62
	.byte	0x5
	.value	0x1be
	.uleb128 0x15
	.long	.LASF63
	.long	.LASF63
	.byte	0x5
	.value	0x1bf
	.uleb128 0x15
	.long	.LASF64
	.long	.LASF64
	.byte	0x5
	.value	0x1c0
	.uleb128 0x15
	.long	.LASF65
	.long	.LASF65
	.byte	0x5
	.value	0x1c1
	.uleb128 0x15
	.long	.LASF66
	.long	.LASF66
	.byte	0x5
	.value	0x1c2
	.uleb128 0x15
	.long	.LASF67
	.long	.LASF67
	.byte	0x5
	.value	0x1c3
	.uleb128 0x16
	.long	.LASF68
	.long	.LASF68
	.byte	0x6
	.byte	0x68
	.uleb128 0x15
	.long	.LASF69
	.long	.LASF69
	.byte	0x5
	.value	0x1c5
	.uleb128 0x16
	.long	.LASF70
	.long	.LASF70
	.byte	0x7
	.byte	0xc8
	.uleb128 0x16
	.long	.LASF71
	.long	.LASF71
	.byte	0x6
	.byte	0x5d
	.uleb128 0x16
	.long	.LASF72
	.long	.LASF72
	.byte	0x8
	.byte	0x1a
	.uleb128 0x16
	.long	.LASF73
	.long	.LASF73
	.byte	0x9
	.byte	0x23
	.uleb128 0x17
	.long	.LASF80
	.long	.LASF80
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2-1
	.value	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL11
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
	.long	.LVL15
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19-1
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
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LVL48
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL17
	.long	.LVL56
	.value	0x3
	.byte	0x75
	.sleb128 -172
	.long	.LVL57
	.long	.LVL59
	.value	0x3
	.byte	0x75
	.sleb128 -172
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL39
	.value	0x1
	.byte	0x53
	.long	.LVL39
	.long	.LVL46
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL48
	.long	.LVL57
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.value	0x1
	.byte	0x53
	.long	.LVL59
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
.LASF69:
	.string	"ali_hash_digest"
.LASF49:
	.string	"result"
.LASF66:
	.string	"ali_hash_reset"
.LASF77:
	.string	"ali_crypto_hash_test"
.LASF57:
	.string	"hash_sha1"
.LASF33:
	.string	"HASH_NONE"
.LASF11:
	.string	"int8_t"
.LASF23:
	.string	"ALI_CRYPTO_INVALID_PACKET"
.LASF55:
	.string	"_g_test_data"
.LASF4:
	.string	"short int"
.LASF67:
	.string	"ali_hash_copy_context"
.LASF26:
	.string	"ALI_CRYPTO_SHORT_BUFFER"
.LASF48:
	.string	"sizetype"
.LASF60:
	.string	"hash_sha384"
.LASF31:
	.string	"_ali_crypto_result"
.LASF56:
	.string	"hash_md5"
.LASF22:
	.string	"ALI_CRYPTO_INVALID_ARG"
.LASF32:
	.string	"_hash_type_t"
.LASF37:
	.string	"SHA384"
.LASF40:
	.string	"MD5_HASH_SIZE"
.LASF12:
	.string	"uint8_t"
.LASF18:
	.string	"ALI_CRYPTO_INVALID_TYPE"
.LASF63:
	.string	"ali_hash_init"
.LASF45:
	.string	"SHA512_HASH_SIZE"
.LASF71:
	.string	"free"
.LASF79:
	.string	"_OUT"
.LASF72:
	.string	"memcmp"
.LASF65:
	.string	"ali_hash_final"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"ALI_CRYPTO_INVALID_CONTEXT"
.LASF47:
	.string	"char"
.LASF52:
	.string	"hash_ctx_size"
.LASF59:
	.string	"hash_sha256"
.LASF6:
	.string	"long int"
.LASF70:
	.string	"printf"
.LASF34:
	.string	"SHA1"
.LASF78:
	.string	"__FUNCTION__"
.LASF64:
	.string	"ali_hash_update"
.LASF36:
	.string	"SHA256"
.LASF25:
	.string	"ALI_CRYPTO_OUTOFMEM"
.LASF14:
	.string	"long double"
.LASF62:
	.string	"ali_hash_get_ctx_size"
.LASF3:
	.string	"unsigned char"
.LASF27:
	.string	"ALI_CRYPTO_NULL"
.LASF53:
	.string	"hash"
.LASF41:
	.string	"SHA1_HASH_SIZE"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF50:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF58:
	.string	"hash_sha224"
.LASF75:
	.string	"src/ali_crypto_test_hash.c"
.LASF21:
	.string	"ALI_CRYPTO_INVALID_AUTHENTICATION"
.LASF17:
	.string	"ALI_CRYPTO_INVALID_KEY"
.LASF68:
	.string	"malloc"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"SHA224"
.LASF0:
	.string	"__int8_t"
.LASF28:
	.string	"ALI_CRYPTO_ERR_STATE"
.LASF24:
	.string	"ALI_CRYPTO_LENGTH_ERR"
.LASF20:
	.string	"ALI_CRYPTO_INVALID_PADDING"
.LASF29:
	.string	"ALI_CRYPTO_SUCCESS"
.LASF13:
	.string	"size_t"
.LASF15:
	.string	"ALI_CRYPTO_ERROR"
.LASF43:
	.string	"SHA256_HASH_SIZE"
.LASF30:
	.string	"ali_crypto_result"
.LASF46:
	.string	"MAX_HASH_SIZE"
.LASF73:
	.string	"ali_crypto_print_data"
.LASF7:
	.string	"long unsigned int"
.LASF39:
	.string	"hash_type_t"
.LASF44:
	.string	"SHA384_HASH_SIZE"
.LASF42:
	.string	"SHA224_HASH_SIZE"
.LASF74:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF51:
	.string	"hash_ctx"
.LASF16:
	.string	"ALI_CRYPTO_NOSUPPORT"
.LASF54:
	.string	"hash_all"
.LASF76:
	.string	"/home/stone/Documents/pca"
.LASF80:
	.string	"__stack_chk_fail"
.LASF61:
	.string	"hash_sha512"
.LASF1:
	.string	"__uint8_t"
.LASF38:
	.string	"SHA512"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

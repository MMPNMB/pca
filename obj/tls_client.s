	.file	"tls_client.c"
	.text
.Ltext0:
	.section	.text.unlikely.handle_event,"ax",@progbits
.LCOLDB0:
	.section	.text.handle_event,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.handle_event
.Ltext_cold0:
	.section	.text.handle_event
	.type	handle_event, @function
handle_event:
.LFB36:
	.file 1 "example/tls/tls_client.c"
	.loc 1 223 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 223 0
	movl	8(%ebp), %eax
	.loc 1 224 0
	cmpw	$2, 4(%eax)
	jne	.L1
	.loc 1 228 0
	cmpw	$5, 6(%eax)
	jne	.L1
.LVL1:
.LBB4:
.LBB5:
	.loc 1 232 0
	pushl	%eax
	pushl	12(%ebp)
	pushl	$app_delayed_action
	pushl	$1000
	call	aos_post_delayed_action
.LVL2:
	addl	$16, %esp
.LVL3:
.L1:
.LBE5:
.LBE4:
	.loc 1 233 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	handle_event, .-handle_event
	.section	.text.unlikely.handle_event
.LCOLDE0:
	.section	.text.handle_event
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"creat socket fail - errno: %d\n"
.LC2:
	.string	"get host by name fail - errno: %d\n"
.LC3:
	.string	"socket connect fail - errno: %d\n"
	.section	.text.unlikely.network_socket_create,"ax",@progbits
.LCOLDB4:
	.section	.text.network_socket_create,"ax",@progbits
.LHOTB4:
	.globl	network_socket_create
	.type	network_socket_create, @function
network_socket_create:
.LFB32:
	.loc 1 57 0
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
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 62 0
	movl	$1, -48(%ebp)
	.loc 1 57 0
	movl	8(%ebp), %esi
	.loc 1 65 0
	pushl	$0
	pushl	$1
	pushl	$2
	.loc 1 57 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 65 0
	call	lwip_socket
.LVL5:
	.loc 1 66 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L6
	.loc 1 67 0
	call	__errno
.LVL6:
	.loc 1 67 0
	pushl	%edi
	pushl	%edi
	pushl	(%eax)
	pushl	$.LC1
	call	printf
.LVL7:
	.loc 1 68 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L7
.LVL8:
.L6:
	.loc 1 71 0
	subl	$12, %esp
	movl	%eax, %ebx
	pushl	%esi
	call	lwip_gethostbyname
.LVL9:
	.loc 1 72 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L8
	.loc 1 73 0
	call	__errno
.LVL10:
	.loc 1 73 0
	pushl	%esi
	pushl	%esi
	pushl	(%eax)
	pushl	$.LC2
	jmp	.L16
.LVL11:
.L8:
	.loc 1 77 0
	leal	-44(%ebp), %esi
	movl	%eax, -60(%ebp)
	movl	$4, %ecx
	xorl	%eax, %eax
.LVL12:
	.loc 1 79 0
	subl	$12, %esp
	.loc 1 77 0
	movl	%esi, %edi
	rep stosl
	.loc 1 79 0
	movzwl	12(%ebp), %eax
	.loc 1 78 0
	movb	$2, -43(%ebp)
	.loc 1 79 0
	pushl	%eax
	call	lwip_htons
.LVL13:
	.loc 1 80 0
	movl	-60(%ebp), %edx
	.loc 1 79 0
	movw	%ax, -42(%ebp)
	.loc 1 80 0
	movl	16(%edx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	.loc 1 82 0
	movl	$4, (%esp)
	.loc 1 80 0
	movl	%eax, -40(%ebp)
	.loc 1 82 0
	leal	-48(%ebp), %eax
	pushl	%eax
	pushl	$4102
	pushl	$4095
	pushl	%ebx
	call	lwip_setsockopt
.LVL14:
	addl	$32, %esp
.L11:
	.loc 1 86 0
	pushl	%ecx
	pushl	$16
	pushl	%esi
	pushl	%ebx
	call	lwip_connect
.LVL15:
	.loc 1 87 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L10
	.loc 1 87 0 discriminator 1
	call	__errno
.LVL16:
	.loc 1 87 0 discriminator 1
	cmpl	$4, (%eax)
	je	.L11
	.loc 1 88 0
	call	__errno
.LVL17:
	.loc 1 88 0
	pushl	%edx
	pushl	%edx
	pushl	(%eax)
	pushl	$.LC3
.LVL18:
.L16:
.L9:
	call	printf
.LVL19:
	.loc 1 89 0
	addl	$16, %esp
	.loc 1 96 0
	subl	$12, %esp
	pushl	%ebx
	call	lwip_close
.LVL20:
	.loc 1 98 0
	addl	$16, %esp
	orl	$-1, %eax
.LVL21:
.L7:
	.loc 1 99 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L12
	call	__stack_chk_fail
.LVL22:
.L10:
	.loc 1 93 0
	movl	%ebx, %eax
.LVL23:
	jmp	.L7
.LVL24:
.L12:
	.loc 1 99 0
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
.LFE32:
	.size	network_socket_create, .-network_socket_create
	.section	.text.unlikely.network_socket_create
.LCOLDE4:
	.section	.text.network_socket_create
.LHOTE4:
	.section	.text.unlikely.network_socket_destroy,"ax",@progbits
.LCOLDB5:
	.section	.text.network_socket_destroy,"ax",@progbits
.LHOTB5:
	.globl	network_socket_destroy
	.type	network_socket_destroy, @function
network_socket_destroy:
.LFB33:
	.loc 1 102 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 102 0
	movl	8(%ebp), %eax
	.loc 1 103 0
	testl	%eax, %eax
	je	.L17
	.loc 1 110 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 107 0
	jmp	lwip_close
.LVL26:
.L17:
	.cfi_restore_state
	.loc 1 110 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	network_socket_destroy, .-network_socket_destroy
	.section	.text.unlikely.network_socket_destroy
.LCOLDE5:
	.section	.text.network_socket_destroy
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"===========> TLS Client Sample start."
.LC7:
	.string	"http client connect fail"
.LC8:
	.string	"network socket create ok"
.LC9:
	.string	"ssl connect fail"
.LC10:
	.string	"mbedtls ssl connect ok"
.LC11:
	.string	"ssl send fail"
.LC12:
	.string	"mbedtls ssl send ok"
.LC13:
	.string	"ssl recv fail"
.LC14:
	.string	"mbedtls ssl recv ok"
.LC15:
	.string	"<=========== TLS Client Sample End.\n"
	.section	.text.unlikely.app_delayed_action,"ax",@progbits
.LCOLDB16:
	.section	.text.app_delayed_action,"ax",@progbits
.LHOTB16:
	.type	app_delayed_action, @function
app_delayed_action:
.LFB35:
	.loc 1 210 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$184, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 211 0
	pushl	$.LC6
	.loc 1 210 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 211 0
	call	puts
.LVL28:
.LBB8:
.LBB9:
	.loc 1 154 0
	popl	%edx
	popl	%ecx
	pushl	$443
	pushl	server_name
	call	network_socket_create
.LVL29:
	.loc 1 158 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L21
	.loc 1 159 0
	subl	$12, %esp
	pushl	$.LC7
	call	puts
.LVL30:
	jmp	.L40
.LVL31:
.L21:
	.loc 1 162 0
	subl	$12, %esp
	movl	%eax, %ebx
	pushl	$.LC8
	call	puts
.LVL32:
	.loc 1 166 0
	movl	tls_test_ca_pem, %edx
	xorl	%eax, %eax
	orl	$-1, %ecx
	.loc 1 165 0
	addl	$12, %esp
	.loc 1 166 0
	movl	%edx, %edi
	repnz scasb
	notl	%ecx
	decl	%ecx
	.loc 1 165 0
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	call	mbedtls_ssl_connect
.LVL33:
	.loc 1 167 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 165 0
	movl	%eax, %esi
.LVL34:
	.loc 1 167 0
	jne	.L23
	.loc 1 168 0
	subl	$12, %esp
	pushl	$.LC9
	call	puts
.LVL35:
	jmp	.L39
.LVL36:
.L23:
	.loc 1 171 0
	subl	$12, %esp
	pushl	$.LC10
	call	puts
.LVL37:
	.loc 1 174 0
	addl	$12, %esp
	pushl	$17
	pushl	$alink_req_data
	pushl	%esi
	call	mbedtls_ssl_send
.LVL38:
	.loc 1 176 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L25
	.loc 1 177 0
	subl	$12, %esp
	pushl	$.LC11
	jmp	.L41
.L25:
	.loc 1 180 0
	subl	$12, %esp
	.loc 1 184 0
	leal	-156(%ebp), %edi
	.loc 1 180 0
	pushl	$.LC12
	call	puts
.LVL39:
	addl	$16, %esp
.L28:
	.loc 1 184 0
	pushl	%eax
	pushl	$128
	pushl	%edi
	pushl	%esi
	call	mbedtls_ssl_recv
.LVL40:
	.loc 1 185 0
	addl	$16, %esp
	.loc 1 184 0
	movl	%eax, %edx
.LVL41:
	.loc 1 185 0
	shrl	$31, %eax
.LVL42:
	je	.L27
	cmpl	$-11, %edx
	je	.L27
	.loc 1 186 0
	subl	$12, %esp
	pushl	$.LC13
.LVL43:
.L41:
	call	puts
.LVL44:
	addl	$16, %esp
	jmp	.L26
.LVL45:
.L27:
	.loc 1 189 0
	subl	$12, %esp
	movl	%edx, -172(%ebp)
	pushl	$.LC14
	call	puts
.LVL46:
	.loc 1 191 0
	movl	-172(%ebp), %edx
	addl	$16, %esp
	testl	%edx, %edx
	js	.L28
.LVL47:
.L26:
	.loc 1 195 0
	subl	$12, %esp
	pushl	%esi
	call	mbedtls_ssl_close
.LVL48:
.L39:
	addl	$16, %esp
	.loc 1 198 0
	testl	%ebx, %ebx
	je	.L22
	.loc 1 200 0
	subl	$12, %esp
	pushl	%ebx
	call	network_socket_destroy
.LVL49:
.L40:
	addl	$16, %esp
.L22:
.LBE9:
.LBE8:
	.loc 1 213 0
	subl	$12, %esp
	pushl	$.LC15
	call	puts
.LVL50:
	.loc 1 220 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L29
	call	__stack_chk_fail
.LVL51:
.L29:
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
.LFE35:
	.size	app_delayed_action, .-app_delayed_action
	.section	.text.unlikely.app_delayed_action
.LCOLDE16:
	.section	.text.app_delayed_action
.LHOTE16:
	.section	.text.unlikely.application_start,"ax",@progbits
.LCOLDB17:
	.section	.text.application_start,"ax",@progbits
.LHOTB17:
	.globl	application_start
	.type	application_start, @function
application_start:
.LFB37:
	.loc 1 236 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 237 0
	pushl	$4
	call	aos_malloc
.LVL52:
	.loc 1 240 0
	addl	$12, %esp
	.loc 1 238 0
	movl	$0, (%eax)
	.loc 1 240 0
	pushl	%eax
	pushl	$handle_event
	pushl	$2
	call	aos_register_event_filter
.LVL53:
	.loc 1 242 0
	call	netmgr_init
.LVL54:
	.loc 1 244 0
	movl	$1, (%esp)
	call	netmgr_start
.LVL55:
	.loc 1 249 0
	call	aos_loop_run
.LVL56:
	.loc 1 253 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	application_start, .-application_start
	.section	.text.unlikely.application_start
.LCOLDE17:
	.section	.text.application_start
.LHOTE17:
	.globl	alink_req_data
	.section	.data.alink_req_data,"aw",@progbits
	.align 4
	.type	alink_req_data, @object
	.size	alink_req_data, 17
alink_req_data:
	.byte	87
	.byte	83
	.byte	70
	.byte	49
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.globl	server_port
	.section	.rodata.server_port,"a",@progbits
	.align 4
	.type	server_port, @object
	.size	server_port, 4
server_port:
	.long	443
	.globl	server_name
	.section	.rodata.str1.1
.LC18:
	.string	"alink.tcp.aliyun.com"
	.section	.data.server_name,"aw",@progbits
	.align 4
	.type	server_name, @object
	.size	server_name, 4
server_name:
	.long	.LC18
	.globl	tls_test_ca_pem
	.section	.rodata.str1.1
.LC19:
	.ascii	"-----BEGIN CERTIFICATE-----\nMIIDtzCCAp+gAwIBAgIJAOxbLdldR1+"
	.ascii	"SMA0GCSqGSIb3DQEBBQUAMHIxCzAJBgNV\nBAYTAkNOMREwDwYDVQQIDAh6a"
	.ascii	"GVqaWFuZzERMA8GA1UEBwwIaGFuZ3pob3UxEDAO\nBgNVBAoMB2FsaWJhYmE"
	.ascii	"xDjAMBgNVBAsMBXl1bm9zMRswGQYDVQQDDBIqLnNtYXJ0\nLmFsaXl1bi5jb"
	.ascii	"20wHhcNMTQwOTE3MDI0OTM0WhcNMjQwOTE0MDI0OTM0WjByMQsw\nCQYDVQQ"
	.ascii	"GEwJDTjERMA8GA1UECAwIemhlamlhbmcxETAPBgNVBAcMCGhhbmd6aG91\nM"
	.ascii	"RAwDgYDVQQKDAdhbGliYWJhMQ4wDAYDVQQLDAV5dW5vczEbMBkGA1UEAwwSK"
	.ascii	"i5z\nbWFydC5hbGl5dW4uY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMII"
	.ascii	"BCgKCAQEA\npwFEj4onz7YZ0ESpG7BNZmuK4KJgGMlFHnEL3AT1YtvB7DGeP"
	.ascii	"TNsW9hX3WYsaqy7\n+4PyzJgfNJY3WQr6uPv/EMwqlYMO0F8kg9AmFepuicH"
	.ascii	"h5JvCeTJciG7OH/8qHhEB\n3b3w35un5YxUXuffw3SiFTj+vnFdc3Yj9pBv+"
	.ascii	"+0nsDvl6l8TSkJMnRLY8lRzzi1T\nrbdsDeNXLnfeThElMPFeI1h+s7amt2k"
	.ascii	"tBGnv6HAg7a9OehUI8uTpFZ7559Yf8Dpm\nMDijYc6LLLSE6OO5C7im0pg8I"
	.ascii	"Ru6oZo1F5raK5gbRU/QI7K58IuIo+k4+clcvtko\nCk4RkwdvC8cc0u5mJ8m"
	.ascii	"XJwIDAQABo1AwTjAdBgNVHQ4EFgQUw6RWDo81JEoy+Vnf\nvMTvRsLkZ30wH"
	.ascii	"wYDVR0jBBgwFoAUw6RWDo81JEoy+VnfvMTvRsLkZ30wDAYDVR0T\nBAUwAwE"
	.ascii	"B/zANBgkqhkiG9w0BAQUFAAOCAQEAS2UQtfguKHnlxH9jpfJUyGKFoaTT\n8"
	.ascii	"/XhPW3CW9c++zDrgNq920iQ42Yl9zB58iJ/v0w6n9quTtIta6QD72ssEJtWc"
	.ascii	"2v2\nrwu14WJB5tGhBRagMvtF7p/56K"
	.string	"Yxib0p3fqjaE3Neer5r8Mgb6oI13tHbf0WT4JM\nGJCLsDoz4ZwvemLISeonZVSVIezs0BDU/TeEK2kIeUDB14FR6fY/U4ovS/v+han8\nNLhWorEpB1p2sgnSPgSVc6ZPHHyjIQOcWdn56vnOf41rLF/zqjD0Sn7YgceAd5OT\nrJ/t7PbiC/sn8SR7+0ATOMh0vRSA9HuuvoDz0adMhoFnba2FwiENfsLlhw==\n-----END CERTIFICATE-----\n"
	.section	.data.tls_test_ca_pem,"aw",@progbits
	.align 4
	.type	tls_test_ca_pem, @object
	.size	tls_test_ca_pem, 4
tls_test_ca_pem:
	.long	.LC19
	.text
.Letext0:
	.section	.text.unlikely.handle_event
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 5 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 6 "./include/aos/yloop.h"
	.file 7 "./kernel/protocols/net/include/lwip/inet.h"
	.file 8 "./kernel/protocols/net/include/lwip/sockets.h"
	.file 9 "./kernel/protocols/net/include/lwip/netdb.h"
	.file 10 "./include/aos/log.h"
	.file 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h"
	.file 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 13 "./kernel/protocols/net/include/lwip/def.h"
	.file 14 "./include/aos/mbedtls_ssl.h"
	.file 15 "./include/aos/kernel.h"
	.file 16 "./framework/netmgr/include/netmgr.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x704
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF83
	.byte	0xc
	.long	.LASF84
	.long	.LASF85
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x2b
	.long	0x45
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
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x24
	.long	0x3a
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x49
	.long	0x53
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x4e
	.long	0x3a
	.uleb128 0x6
	.byte	0x4
	.long	0x91
	.uleb128 0x6
	.byte	0x4
	.long	0xd0
	.uleb128 0x7
	.long	0x91
	.uleb128 0x8
	.long	0x91
	.long	0xe5
	.uleb128 0x9
	.long	0x88
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF19
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x31
	.long	0x2c
	.uleb128 0x6
	.byte	0x4
	.long	0xc4
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.byte	0x41
	.long	0x149
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0x43
	.long	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0x45
	.long	0x98
	.byte	0x4
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.byte	0x47
	.long	0x98
	.byte	0x6
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0x49
	.long	0x5e
	.byte	0x8
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x4b
	.long	0x5e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x6
	.byte	0x4c
	.long	0x104
	.uleb128 0x6
	.byte	0x4
	.long	0x149
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF27
	.uleb128 0xc
	.long	.LASF30
	.byte	0x4
	.byte	0x7
	.byte	0x3a
	.long	0x17a
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.byte	0x3b
	.long	0xae
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x8
	.byte	0x40
	.long	0xf3
	.uleb128 0xc
	.long	.LASF31
	.byte	0x10
	.byte	0x8
	.byte	0x4a
	.long	0x1ce
	.uleb128 0xb
	.long	.LASF32
	.byte	0x8
	.byte	0x4b
	.long	0xf3
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x8
	.byte	0x4c
	.long	0x17a
	.byte	0x1
	.uleb128 0xb
	.long	.LASF34
	.byte	0x8
	.byte	0x4d
	.long	0xb9
	.byte	0x2
	.uleb128 0xb
	.long	.LASF35
	.byte	0x8
	.byte	0x4e
	.long	0x161
	.byte	0x4
	.uleb128 0xb
	.long	.LASF36
	.byte	0x8
	.byte	0x50
	.long	0xd5
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x10
	.byte	0x8
	.byte	0x5f
	.long	0x1ff
	.uleb128 0xb
	.long	.LASF38
	.byte	0x8
	.byte	0x60
	.long	0xf3
	.byte	0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x8
	.byte	0x61
	.long	0x17a
	.byte	0x1
	.uleb128 0xb
	.long	.LASF40
	.byte	0x8
	.byte	0x62
	.long	0x1ff
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x91
	.long	0x20f
	.uleb128 0x9
	.long	0x88
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x14
	.byte	0x9
	.byte	0x5d
	.long	0x258
	.uleb128 0xb
	.long	.LASF42
	.byte	0x9
	.byte	0x5e
	.long	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x9
	.byte	0x5f
	.long	0xfe
	.byte	0x4
	.uleb128 0xb
	.long	.LASF44
	.byte	0x9
	.byte	0x61
	.long	0x73
	.byte	0x8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x9
	.byte	0x62
	.long	0x73
	.byte	0xc
	.uleb128 0xb
	.long	.LASF46
	.byte	0x9
	.byte	0x63
	.long	0xfe
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x73
	.uleb128 0xc
	.long	.LASF47
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.long	0x276
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.byte	0x13
	.long	0x73
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	0x299
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.byte	0xde
	.long	0x154
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0xde
	.long	0x8f
	.byte	0
	.uleb128 0x10
	.long	0x276
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e2
	.uleb128 0x11
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	0x28d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LBB4
	.long	.LBE4-.LBB4
	.uleb128 0x13
	.long	0x282
	.long	.LLST0
	.uleb128 0x13
	.long	0x28d
	.long	.LLST1
	.uleb128 0x14
	.long	.LVL2
	.long	0x624
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0x38
	.long	0x8f
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e1
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.byte	0x38
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x38
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x3a
	.long	0x73
	.long	.LLST2
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.byte	0x3b
	.long	0x73
	.long	.LLST3
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0x3c
	.long	0x3e1
	.long	.LLST4
	.uleb128 0x19
	.long	.LASF54
	.byte	0x1
	.byte	0x3d
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.byte	0x3e
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.byte	0x5f
	.long	.L9
	.uleb128 0x14
	.long	.LVL5
	.long	0x62f
	.uleb128 0x14
	.long	.LVL6
	.long	0x63b
	.uleb128 0x14
	.long	.LVL7
	.long	0x646
	.uleb128 0x14
	.long	.LVL9
	.long	0x651
	.uleb128 0x14
	.long	.LVL10
	.long	0x63b
	.uleb128 0x14
	.long	.LVL13
	.long	0x65c
	.uleb128 0x14
	.long	.LVL14
	.long	0x667
	.uleb128 0x14
	.long	.LVL15
	.long	0x673
	.uleb128 0x14
	.long	.LVL16
	.long	0x63b
	.uleb128 0x14
	.long	.LVL17
	.long	0x63b
	.uleb128 0x14
	.long	.LVL19
	.long	0x646
	.uleb128 0x14
	.long	.LVL20
	.long	0x67f
	.uleb128 0x14
	.long	.LVL22
	.long	0x68b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x20f
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x65
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x1
	.byte	0x65
	.long	0x8f
	.long	.LLST5
	.uleb128 0x1d
	.long	.LVL26
	.long	0x67f
	.uleb128 0x1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	0x45e
	.uleb128 0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x91
	.long	0x73
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.byte	0x92
	.long	0x45e
	.uleb128 0x20
	.long	.LASF52
	.byte	0x1
	.byte	0x93
	.long	0x8f
	.uleb128 0x1f
	.string	"ssl"
	.byte	0x1
	.byte	0x94
	.long	0x8f
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.byte	0xc1
	.byte	0
	.uleb128 0x8
	.long	0x91
	.long	0x46e
	.uleb128 0x9
	.long	0x88
	.byte	0x7f
	.byte	0
	.uleb128 0x22
	.long	.LASF89
	.byte	0x1
	.byte	0xd1
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x569
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.byte	0xd1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	0x41e
	.long	.LBB8
	.long	.LBE8-.LBB8
	.byte	0x1
	.byte	0xd4
	.long	0x54d
	.uleb128 0x12
	.long	.LBB9
	.long	.LBE9-.LBB9
	.uleb128 0x25
	.long	0x42a
	.long	.LLST6
	.uleb128 0x26
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x25
	.long	0x440
	.long	.LLST7
	.uleb128 0x25
	.long	0x44b
	.long	.LLST8
	.uleb128 0x27
	.long	0x456
	.uleb128 0x14
	.long	.LVL29
	.long	0x2e2
	.uleb128 0x14
	.long	.LVL30
	.long	0x694
	.uleb128 0x14
	.long	.LVL32
	.long	0x694
	.uleb128 0x14
	.long	.LVL33
	.long	0x6a3
	.uleb128 0x14
	.long	.LVL35
	.long	0x694
	.uleb128 0x14
	.long	.LVL37
	.long	0x694
	.uleb128 0x14
	.long	.LVL38
	.long	0x6ae
	.uleb128 0x14
	.long	.LVL39
	.long	0x694
	.uleb128 0x14
	.long	.LVL40
	.long	0x6b9
	.uleb128 0x14
	.long	.LVL44
	.long	0x694
	.uleb128 0x14
	.long	.LVL46
	.long	0x694
	.uleb128 0x14
	.long	.LVL48
	.long	0x6c4
	.uleb128 0x14
	.long	.LVL49
	.long	0x3e7
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL28
	.long	0x694
	.uleb128 0x14
	.long	.LVL50
	.long	0x694
	.uleb128 0x14
	.long	.LVL51
	.long	0x68b
	.byte	0
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0xeb
	.long	0x73
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bf
	.uleb128 0x18
	.long	.LASF47
	.byte	0x1
	.byte	0xed
	.long	0x5bf
	.long	.LLST9
	.uleb128 0x14
	.long	.LVL52
	.long	0x6cf
	.uleb128 0x14
	.long	.LVL53
	.long	0x6db
	.uleb128 0x14
	.long	.LVL54
	.long	0x6e6
	.uleb128 0x14
	.long	.LVL55
	.long	0x6f1
	.uleb128 0x14
	.long	.LVL56
	.long	0x6fc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x25d
	.uleb128 0x28
	.long	.LASF60
	.byte	0xa
	.byte	0x17
	.long	0x7a
	.uleb128 0x29
	.long	.LASF61
	.byte	0x1
	.byte	0x16
	.long	0xca
	.uleb128 0x5
	.byte	0x3
	.long	tls_test_ca_pem
	.uleb128 0x29
	.long	.LASF62
	.byte	0x1
	.byte	0x2d
	.long	0xca
	.uleb128 0x5
	.byte	0x3
	.long	server_name
	.uleb128 0x29
	.long	.LASF63
	.byte	0x1
	.byte	0x2e
	.long	0x258
	.uleb128 0x5
	.byte	0x3
	.long	server_port
	.uleb128 0x8
	.long	0x2c
	.long	0x613
	.uleb128 0x9
	.long	0x88
	.byte	0x10
	.byte	0
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x30
	.long	0x603
	.uleb128 0x5
	.byte	0x3
	.long	alink_req_data
	.uleb128 0x2a
	.long	.LASF65
	.long	.LASF65
	.byte	0x6
	.byte	0x93
	.uleb128 0x2b
	.long	.LASF66
	.long	.LASF66
	.byte	0x8
	.value	0x1fc
	.uleb128 0x2a
	.long	.LASF67
	.long	.LASF67
	.byte	0xb
	.byte	0xf
	.uleb128 0x2a
	.long	.LASF68
	.long	.LASF68
	.byte	0xc
	.byte	0xc8
	.uleb128 0x2a
	.long	.LASF69
	.long	.LASF69
	.byte	0x9
	.byte	0x7a
	.uleb128 0x2a
	.long	.LASF70
	.long	.LASF70
	.byte	0xd
	.byte	0x56
	.uleb128 0x2b
	.long	.LASF71
	.long	.LASF71
	.byte	0x8
	.value	0x1f0
	.uleb128 0x2b
	.long	.LASF72
	.long	.LASF72
	.byte	0x8
	.value	0x1f2
	.uleb128 0x2b
	.long	.LASF73
	.long	.LASF73
	.byte	0x8
	.value	0x1f1
	.uleb128 0x2c
	.long	.LASF90
	.long	.LASF90
	.uleb128 0x2d
	.long	.LASF91
	.long	.LASF92
	.byte	0x11
	.byte	0
	.long	.LASF91
	.uleb128 0x2a
	.long	.LASF74
	.long	.LASF74
	.byte	0xe
	.byte	0x1b
	.uleb128 0x2a
	.long	.LASF75
	.long	.LASF75
	.byte	0xe
	.byte	0x26
	.uleb128 0x2a
	.long	.LASF76
	.long	.LASF76
	.byte	0xe
	.byte	0x31
	.uleb128 0x2a
	.long	.LASF77
	.long	.LASF77
	.byte	0xe
	.byte	0x3a
	.uleb128 0x2b
	.long	.LASF78
	.long	.LASF78
	.byte	0xf
	.value	0x1e8
	.uleb128 0x2a
	.long	.LASF79
	.long	.LASF79
	.byte	0x6
	.byte	0x5e
	.uleb128 0x2a
	.long	.LASF80
	.long	.LASF80
	.byte	0x10
	.byte	0x58
	.uleb128 0x2a
	.long	.LASF81
	.long	.LASF81
	.byte	0x10
	.byte	0x5a
	.uleb128 0x2a
	.long	.LASF82
	.long	.LASF82
	.byte	0x6
	.byte	0xbe
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.long	.LVL1
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL15
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	.LVL9-1
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL18
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL22
	.long	.LVL24
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST5:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL26
	.long	.LFE33
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL28
	.long	.LVL38
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x52
	.long	.LVL45
	.long	.LVL46-1
	.value	0x1
	.byte	0x52
	.long	.LVL46-1
	.long	.LVL47
	.value	0x3
	.byte	0x91
	.sleb128 -180
	.long	0
	.long	0
.LLST7:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30-1
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32-1
	.value	0x1
	.byte	0x50
	.long	.LVL32-1
	.long	.LVL49
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL28
	.long	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL35-1
	.long	.LVL36
	.value	0x1
	.byte	0x56
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37-1
	.long	.LVL49
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL52
	.long	.LVL53-1
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB36
	.long	.LFE36
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB35
	.long	.LFE35
	.long	.LFB37
	.long	.LFE37
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"long double"
.LASF50:
	.string	"net_addr"
.LASF74:
	.string	"mbedtls_ssl_connect"
.LASF92:
	.string	"__builtin_puts"
.LASF75:
	.string	"mbedtls_ssl_send"
.LASF78:
	.string	"aos_malloc"
.LASF73:
	.string	"lwip_close"
.LASF77:
	.string	"mbedtls_ssl_close"
.LASF65:
	.string	"aos_post_delayed_action"
.LASF38:
	.string	"sa_len"
.LASF57:
	.string	"tls_client_sample"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"sizetype"
.LASF88:
	.string	"_out"
.LASF56:
	.string	"handle_event"
.LASF44:
	.string	"h_addrtype"
.LASF6:
	.string	"__uint32_t"
.LASF49:
	.string	"event"
.LASF5:
	.string	"__uint16_t"
.LASF45:
	.string	"h_length"
.LASF41:
	.string	"hostent"
.LASF24:
	.string	"value"
.LASF23:
	.string	"code"
.LASF33:
	.string	"sin_family"
.LASF15:
	.string	"uint32_t"
.LASF32:
	.string	"sin_len"
.LASF69:
	.string	"lwip_gethostbyname"
.LASF18:
	.string	"float"
.LASF8:
	.string	"long long int"
.LASF4:
	.string	"long int"
.LASF84:
	.string	"src/tls_client.c"
.LASF68:
	.string	"printf"
.LASF66:
	.string	"lwip_socket"
.LASF52:
	.string	"tcp_fd"
.LASF60:
	.string	"aos_log_level"
.LASF59:
	.string	"application_start"
.LASF35:
	.string	"sin_addr"
.LASF82:
	.string	"aos_loop_run"
.LASF1:
	.string	"unsigned char"
.LASF29:
	.string	"sa_family_t"
.LASF86:
	.string	"_err"
.LASF64:
	.string	"alink_req_data"
.LASF0:
	.string	"signed char"
.LASF36:
	.string	"sin_zero"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF89:
	.string	"app_delayed_action"
.LASF72:
	.string	"lwip_connect"
.LASF28:
	.string	"s_addr"
.LASF91:
	.string	"puts"
.LASF79:
	.string	"aos_register_event_filter"
.LASF21:
	.string	"time"
.LASF70:
	.string	"lwip_htons"
.LASF54:
	.string	"saddr"
.LASF40:
	.string	"sa_data"
.LASF81:
	.string	"netmgr_start"
.LASF80:
	.string	"netmgr_init"
.LASF55:
	.string	"opt_val"
.LASF13:
	.string	"char"
.LASF14:
	.string	"uint16_t"
.LASF63:
	.string	"server_port"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"_Bool"
.LASF16:
	.string	"in_addr_t"
.LASF83:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF42:
	.string	"h_name"
.LASF26:
	.string	"input_event_t"
.LASF51:
	.string	"port"
.LASF7:
	.string	"long unsigned int"
.LASF76:
	.string	"mbedtls_ssl_recv"
.LASF19:
	.string	"double"
.LASF62:
	.string	"server_name"
.LASF34:
	.string	"sin_port"
.LASF20:
	.string	"u8_t"
.LASF58:
	.string	"network_socket_create"
.LASF17:
	.string	"in_port_t"
.LASF39:
	.string	"sa_family"
.LASF61:
	.string	"tls_test_ca_pem"
.LASF47:
	.string	"cookie"
.LASF30:
	.string	"in_addr"
.LASF46:
	.string	"h_addr_list"
.LASF85:
	.string	"/home/stone/Documents/pca"
.LASF48:
	.string	"flag"
.LASF87:
	.string	"network_socket_destroy"
.LASF90:
	.string	"__stack_chk_fail"
.LASF71:
	.string	"lwip_setsockopt"
.LASF53:
	.string	"host"
.LASF43:
	.string	"h_aliases"
.LASF25:
	.string	"extra"
.LASF31:
	.string	"sockaddr_in"
.LASF37:
	.string	"sockaddr"
.LASF67:
	.string	"__errno"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

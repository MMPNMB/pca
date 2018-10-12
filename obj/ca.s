	.file	"ca.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDdTCCAl2gAwIBAgILBAAAAAABF"
	.ascii	"Utaw5QwDQYJKoZIhvcNAQEFBQAwVzELMAkG\r\nA1UEBhMCQkUxGTAXBgNVB"
	.ascii	"AoTEEdsb2JhbFNpZ24gbnYtc2ExEDAOBgNVBAsTB1Jv\r\nb3QgQ0ExGzAZB"
	.ascii	"gNVBAMTEkdsb2JhbFNpZ24gUm9vdCBDQTAeFw05ODA5MDExMjAw\r\nMDBaF"
	.ascii	"w0yODAxMjgxMjAwMDBaMFcxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9i\r"
	.ascii	"\nYWxTaWduIG52LXNhMRAwDgYDVQQLEwdSb290IENBMRswGQYDVQQDExJHbG"
	.ascii	"9iYWxT\r\naWduIFJvb3QgQ0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwgg"
	.ascii	"EKAoIBAQDaDuaZ\r\njc6j40+Kfvvxi4Mla+pIH/EqsLmVEQS98GPR4mdmzx"
	.ascii	"zdzxtIK+6NiY6arymAZavp\r\nxy0Sy6scTHAHoT0KMM0VjU/43dSMUBUc71"
	.ascii	"DuxC73/OlS8pF94G3VNTCOXkNz8kHp\r\n1Wrjsok6Vjk4bwY8iGlbKk3Fp1"
	.ascii	"S4bInMm/k8yuX9ifUSPJJ4ltbcdG6TRGHRjcdG\r\nsnUOhugZitVtbNV4Fp"
	.ascii	"Wi6cgKOOvyJBNPc1STE4U6G7weNLWLBYy5d4ux2x8gkasJ\r\nU26Qzns3dL"
	.ascii	"lwR5EiUWMWea6xrkEmCMgZK9FGqkjWZCrXgzT/LCrBbBlDSgeF59N8\r\n9i"
	.ascii	"Fo7+ryUp9/k5DPAgMBAAGjQjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf"
	.ascii	"8E\r\nBTADAQH/MB0GA1UdDgQWBBRge2YaRQ2XyolQL30EzTSo//z9SzANBg"
	.ascii	"kqhkiG9w0B\r\nAQUFAAOCAQEA1nPnfE920I2/7LqivjTFKDK1fPxsnCwrvQ"
	.ascii	"meU79rXqoRSLblCKOz\r\nyj1hTdNGCbM+w6DjY1Ub8rrvrTnhQ7k4o+Yvii"
	.ascii	"Y776BQVvnGCv04zcQLcFGUl5gE\r\n38Nfl"
	.string	"NUVyRRBnMRddWQVDf9VMOyGj/8N7yy5Y0b2qvzfvGn9LhJIZJrglfCm7ymP\r\nAbEVtQwdpf5pLGkkeB6zpxxxYu7KyJesF12KwvhHhm4qxFYxldBniYUr+WymXUad\r\nDKqC5JlR3XC321Y9YeRq4VzW9v493kHMB65jUr9TU/Qr6cf9tveCX4XSQRjbgbME\r\nHMUfpIBvFSDJ3gyICh3WZlXi/EjJKSZp4A==\r\n-----END CERTIFICATE-----"
	.section	.text.unlikely.iotx_ca_get,"ax",@progbits
.LCOLDB1:
	.section	.text.iotx_ca_get,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.iotx_ca_get
.Ltext_cold0:
	.section	.text.iotx_ca_get
	.globl	iotx_ca_get
	.type	iotx_ca_get, @function
iotx_ca_get:
.LFB0:
	.file 1 "framework/protocol/linkkit/iotkit/iotkit-system/src/ca.c"
	.loc 1 51 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 57 0
	movl	$.LC0, %eax
	.loc 1 51 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 57 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	iotx_ca_get, .-iotx_ca_get
	.section	.text.unlikely.iotx_ca_get
.LCOLDE1:
	.section	.text.iotx_ca_get
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.iotx_ca_get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF12
	.byte	0xc
	.long	.LASF13
	.long	.LASF14
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.long	0x86
	.uleb128 0x5
	.long	0x79
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x32
	.long	0x80
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x17
	.long	0xb2
	.uleb128 0x6
	.byte	0x3
	.long	.LC0
	.byte	0x9f
	.uleb128 0x5
	.long	0x80
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"long long int"
.LASF12:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"src/ca.c"
.LASF8:
	.string	"long unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"char"
.LASF16:
	.string	"iotx_ca_crt"
.LASF4:
	.string	"unsigned char"
.LASF15:
	.string	"iotx_ca_get"
.LASF14:
	.string	"/home/stone/Documents/pca"
.LASF7:
	.string	"long int"
.LASF6:
	.string	"short unsigned int"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"long double"
.LASF5:
	.string	"short int"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits

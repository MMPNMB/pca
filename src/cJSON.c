# 1 "utility/cjson/cJSON.c"
# 1 "/home/stone/Documents/Ali_IOT//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "utility/cjson/cJSON.c"
# 32 "utility/cjson/cJSON.c"
#pragma GCC visibility push(default)







# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 1 3
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 2 3
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 149 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4

# 149 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 426 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 1 3
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_types.h" 2 3
# 25 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 26 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 357 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;



typedef unsigned long __clock_t;


typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 766 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 46 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 2 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3




# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 18 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_locale.h" 1 3
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);






char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);


void explicit_bzero (void *, size_t);
int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);
# 86 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
char *rindex (const char *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


int strcasecmp (const char *, const char *);






char *strdup (const char *);

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t);

char *_strndup_r (struct _reent *, const char *, size_t);
# 121 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 192 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/string.h" 1 3
# 193 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3


# 41 "utility/cjson/cJSON.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 1 3
# 36 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 37 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h" 1 3 4
# 40 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 61 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 63 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3

# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h" 1 3
# 20 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 65 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/endian.h" 1 3





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_endian.h" 1 3
# 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/endian.h" 2 3
# 68 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 1 3
# 25 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_sigset.h" 1 3
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 26 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h" 1 3
# 35 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef long time_t;
# 52 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 1 3
# 38 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timespec.h" 1 3
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 2 3
# 58 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 28 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 3
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 71 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 3


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 69 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;
# 87 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 135 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 236 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef __int64_t sbintime_t;
# 465 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/types.h" 1 3
# 466 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3
# 62 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stdio.h" 1 3
# 80 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3
# 181 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 257 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 284 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
# 339 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;



int renameat (int, const char *, int, const char *);






int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 574 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 598 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
# 684 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 767 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3

# 42 "utility/cjson/cJSON.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 1 3






# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 2 3







union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 109 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);




extern int finite (double);
extern int finitef (float);
extern int finitel (long double);
extern int isinff (float);
extern int isnanf (float);





extern int isinf (double);




extern int isnan (double);
# 173 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
    typedef float float_t;
    typedef double double_t;
# 217 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 313 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);
# 445 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern float nexttowardf (float, long double);
extern double nexttoward (double, long double);
extern long double nexttowardl (long double, long double);
extern long double logbl (long double);
extern long double log2l (long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 526 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
extern double drem (double, double);
extern float dremf (float, float);



extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);



extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);



extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);
# 588 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
extern int *__signgam (void);
# 601 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
struct exception

{
  int type;
  char *name;
  double arg1;
  double arg2;
  double retval;
  int err;
};




extern int matherr (struct exception *e);
# 665 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3
enum __fdlibm_version
{
  __fdlibm_ieee = -1,
  __fdlibm_svid,
  __fdlibm_xopen,
  __fdlibm_posix
};




extern enum __fdlibm_version __fdlib_version;
# 685 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/math.h" 3

# 43 "utility/cjson/cJSON.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/alloca.h" 1 3
# 23 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);






int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 186 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void * __arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 219 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int __attribute__((__nonnull__(1))) posix_memalign (void **, size_t, size_t);


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 306 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
void qsort_r (void * __base, size_t __nmemb, size_t __size, void * __thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 316 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2)));
int at_quick_exit(void (*)(void));
_Noreturn void
 quick_exit(int);



# 44 "utility/cjson/cJSON.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/float.h" 1 3 4
# 45 "utility/cjson/cJSON.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/limits.h" 1 3 4
# 34 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/limits.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/syslimits.h" 1 3 4






# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/limits.h" 1 3 4
# 168 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/limits.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/limits.h" 1 3 4
# 169 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/limits.h" 2 3 4
# 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/syslimits.h" 2 3 4
# 35 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include-fixed/limits.h" 2 3 4
# 46 "utility/cjson/cJSON.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/ctype.h" 1 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/ctype.h" 3


int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);





extern int isalnum_l (int __c, locale_t __l);
extern int isalpha_l (int __c, locale_t __l);
extern int isblank_l (int __c, locale_t __l);
extern int iscntrl_l (int __c, locale_t __l);
extern int isdigit_l (int __c, locale_t __l);
extern int isgraph_l (int __c, locale_t __l);
extern int islower_l (int __c, locale_t __l);
extern int isprint_l (int __c, locale_t __l);
extern int ispunct_l (int __c, locale_t __l);
extern int isspace_l (int __c, locale_t __l);
extern int isupper_l (int __c, locale_t __l);
extern int isxdigit_l(int __c, locale_t __l);
extern int tolower_l (int __c, locale_t __l);
extern int toupper_l (int __c, locale_t __l);



extern int isascii_l (int __c, locale_t __l);
extern int toascii_l (int __c, locale_t __l);
# 69 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/ctype.h" 3
const char *__locale_ctype_ptr (void);
# 103 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/ctype.h" 3
const char *__locale_ctype_ptr_l (locale_t);
# 165 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/ctype.h" 3
extern const char _ctype_[];


# 47 "utility/cjson/cJSON.c" 2
# 56 "utility/cjson/cJSON.c"
#pragma GCC visibility pop


# 1 "./utility/cjson/include/cJSON.h" 1
# 35 "./utility/cjson/include/cJSON.h"
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 36 "./utility/cjson/include/cJSON.h" 2
# 52 "./utility/cjson/include/cJSON.h"

# 52 "./utility/cjson/include/cJSON.h"
typedef struct cJSON {

    struct cJSON* next;
    struct cJSON* prev;

    struct cJSON* child;


    int type;


    char* valuestring;




    int valueint;


    char* string;




    double valuedouble;
} cJSON;

typedef struct cJSON_Hooks {
    void* (*malloc_fn)(size_t sz);
    void (*free_fn)(void* ptr);
} cJSON_Hooks;

typedef int cJSON_bool;
# 136 "./utility/cjson/include/cJSON.h"
const char* cJSON_Version(void);


void cJSON_InitHooks(cJSON_Hooks* hooks);



cJSON* cJSON_Parse(const char* value);


cJSON* cJSON_ParseWithOpts(const char* value, const char** return_parse_end,
        cJSON_bool require_null_terminated);


char* cJSON_Print(const cJSON* item);

char* cJSON_PrintUnformatted(const cJSON* item);

char* cJSON_PrintBuffered(const cJSON* item, int prebuffer, cJSON_bool fmt);


cJSON_bool cJSON_PrintPreallocated(cJSON* item, char* buffer, const int length, const cJSON_bool format);

void cJSON_Delete(cJSON* c);


int cJSON_GetArraySize(const cJSON* array);

cJSON* cJSON_GetArrayItem(const cJSON* array, int index);

cJSON* cJSON_GetObjectItem(const cJSON* const object, const char* const string);
cJSON* cJSON_GetObjectItemCaseSensitive(const cJSON* const object, const char* const string);
cJSON_bool cJSON_HasObjectItem(const cJSON* object, const char* string);

const char* cJSON_GetErrorPtr(void);


cJSON_bool cJSON_IsInvalid(const cJSON* const item);
cJSON_bool cJSON_IsFalse(const cJSON* const item);
cJSON_bool cJSON_IsTrue(const cJSON* const item);
cJSON_bool cJSON_IsBool(const cJSON* const item);
cJSON_bool cJSON_IsNull(const cJSON* const item);
cJSON_bool cJSON_IsNumber(const cJSON* const item);
cJSON_bool cJSON_IsString(const cJSON* const item);
cJSON_bool cJSON_IsArray(const cJSON* const item);
cJSON_bool cJSON_IsObject(const cJSON* const item);
cJSON_bool cJSON_IsRaw(const cJSON* const item);


cJSON* cJSON_CreateNull(void);
cJSON* cJSON_CreateTrue(void);
cJSON* cJSON_CreateFalse(void);
cJSON* cJSON_CreateBool(cJSON_bool boolean);
cJSON* cJSON_CreateNumber(double num);
cJSON* cJSON_CreateString(const char* string);

cJSON* cJSON_CreateRaw(const char* raw);
cJSON* cJSON_CreateArray(void);
cJSON* cJSON_CreateObject(void);


cJSON* cJSON_CreateIntArray(const int* numbers, int count);
cJSON* cJSON_CreateFloatArray(const float* numbers, int count);
cJSON* cJSON_CreateDoubleArray(const double* numbers, int count);
cJSON* cJSON_CreateStringArray(const char** strings, int count);


void cJSON_AddItemToArray(cJSON* array, cJSON* item);
void cJSON_AddItemToObject(cJSON* object, const char* string, cJSON* item);



void cJSON_AddItemToObjectCS(cJSON* object, const char* string, cJSON* item);

void cJSON_AddItemReferenceToArray(cJSON* array, cJSON* item);
void cJSON_AddItemReferenceToObject(cJSON* object, const char* string, cJSON* item);


cJSON* cJSON_DetachItemViaPointer(cJSON* parent, cJSON* const item);
cJSON* cJSON_DetachItemFromArray(cJSON* array, int which);
void cJSON_DeleteItemFromArray(cJSON* array, int which);
cJSON* cJSON_DetachItemFromObject(cJSON* object, const char* string);
cJSON* cJSON_DetachItemFromObjectCaseSensitive(cJSON* object, const char* string);
void cJSON_DeleteItemFromObject(cJSON* object, const char* string);
void cJSON_DeleteItemFromObjectCaseSensitive(cJSON* object, const char* string);


void cJSON_InsertItemInArray(cJSON* array, int which,
        cJSON* newitem);
cJSON_bool cJSON_ReplaceItemViaPointer(cJSON* const parent, cJSON* const item, cJSON* replacement);
void cJSON_ReplaceItemInArray(cJSON* array, int which, cJSON* newitem);
void cJSON_ReplaceItemInObject(cJSON* object, const char* string, cJSON* newitem);
void cJSON_ReplaceItemInObjectCaseSensitive(cJSON* object, const char* string, cJSON* newitem);


cJSON* cJSON_Duplicate(const cJSON* item, cJSON_bool recurse);





cJSON_bool cJSON_Compare(const cJSON* const a, const cJSON* const b, const cJSON_bool case_sensitive);


void cJSON_Minify(char* json);
# 254 "./utility/cjson/include/cJSON.h"
double cJSON_SetNumberHelper(cJSON* object, double number);






void* cJSON_malloc(size_t size);
void cJSON_free(void* object);
# 60 "utility/cjson/cJSON.c" 2





typedef struct {
    const unsigned char* json;
    size_t position;
} error;
static error global_error = { 
# 69 "utility/cjson/cJSON.c" 3 4
                             ((void *)0)
# 69 "utility/cjson/cJSON.c"
                                 , 0 };

const char* cJSON_GetErrorPtr(void)
{
    return (const char*)(global_error.json + global_error.position);
}






const char* cJSON_Version(void)
{
    static char version[15];
    sprintf(version, "%i.%i.%i", 1, 6, 0);

    return version;
}


static int case_insensitive_strcmp(const unsigned char* string1, const unsigned char* string2)
{
    if ((string1 == 
# 92 "utility/cjson/cJSON.c" 3 4
                   ((void *)0)
# 92 "utility/cjson/cJSON.c"
                       ) || (string2 == 
# 92 "utility/cjson/cJSON.c" 3 4
                                        ((void *)0)
# 92 "utility/cjson/cJSON.c"
                                            ))
        return 1;

    if (string1 == string2)
        return 0;

    for (; 
# 98 "utility/cjson/cJSON.c" 3
          __extension__ ({ __typeof__ (
# 98 "utility/cjson/cJSON.c"
          *string1
# 98 "utility/cjson/cJSON.c" 3
          ) __x = (
# 98 "utility/cjson/cJSON.c"
          *string1
# 98 "utility/cjson/cJSON.c" 3
          ); (((((__locale_ctype_ptr ())+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) 
# 98 "utility/cjson/cJSON.c"
                            == 
# 98 "utility/cjson/cJSON.c" 3
                               __extension__ ({ __typeof__ (
# 98 "utility/cjson/cJSON.c"
                               *string2
# 98 "utility/cjson/cJSON.c" 3
                               ) __x = (
# 98 "utility/cjson/cJSON.c"
                               *string2
# 98 "utility/cjson/cJSON.c" 3
                               ); (((((__locale_ctype_ptr ())+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;})
# 98 "utility/cjson/cJSON.c"
                                                ; (void)string1++, string2++) {
        if (*string1 == '\0')
            return 0;
    }

    return 
# 103 "utility/cjson/cJSON.c" 3
          __extension__ ({ __typeof__ (
# 103 "utility/cjson/cJSON.c"
          *string1
# 103 "utility/cjson/cJSON.c" 3
          ) __x = (
# 103 "utility/cjson/cJSON.c"
          *string1
# 103 "utility/cjson/cJSON.c" 3
          ); (((((__locale_ctype_ptr ())+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;}) 
# 103 "utility/cjson/cJSON.c"
                            - 
# 103 "utility/cjson/cJSON.c" 3
                              __extension__ ({ __typeof__ (
# 103 "utility/cjson/cJSON.c"
                              *string2
# 103 "utility/cjson/cJSON.c" 3
                              ) __x = (
# 103 "utility/cjson/cJSON.c"
                              *string2
# 103 "utility/cjson/cJSON.c" 3
                              ); (((((__locale_ctype_ptr ())+sizeof(""[__x]))[(int)(__x)])&(01|02))==01) ? (int) __x - 'A' + 'a' : (int) __x;})
# 103 "utility/cjson/cJSON.c"
                                               ;
}

typedef struct internal_hooks {
    void* (*allocate)(size_t size);
    void (*deallocate)(void* pointer);
    void* (*reallocate)(void* pointer, size_t size);
} internal_hooks;
# 127 "utility/cjson/cJSON.c"
# 1 "./include/aos/kernel.h" 1







# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 9 "./include/aos/kernel.h" 2
# 19 "./include/aos/kernel.h"
typedef struct {
    void *hdl;
} aos_hdl_t;

typedef aos_hdl_t aos_task_t;
typedef aos_hdl_t aos_mutex_t;
typedef aos_hdl_t aos_sem_t;
typedef aos_hdl_t aos_queue_t;
typedef aos_hdl_t aos_timer_t;
typedef aos_hdl_t aos_work_t;
typedef aos_hdl_t aos_event_t;

typedef struct {
    void *hdl;
    void *stk;
} aos_workqueue_t;

typedef unsigned int aos_task_key_t;




void aos_reboot(void);






int aos_get_hz(void);






const char *aos_version_get(void);
# 67 "./include/aos/kernel.h"
int aos_task_new(const char *name, void (*fn)(void *), void *arg, int stack_size);
# 82 "./include/aos/kernel.h"
int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *), void *arg,
                     int stack_size, int prio);






void aos_task_exit(int code);






const char *aos_task_name(void);
# 106 "./include/aos/kernel.h"
int aos_task_key_create(aos_task_key_t *key);






void aos_task_key_delete(aos_task_key_t key);
# 123 "./include/aos/kernel.h"
int aos_task_setspecific(aos_task_key_t key, void *vp);






void *aos_task_getspecific(aos_task_key_t key);
# 140 "./include/aos/kernel.h"
int aos_mutex_new(aos_mutex_t *mutex);







void aos_mutex_free(aos_mutex_t *mutex);
# 158 "./include/aos/kernel.h"
int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
# 167 "./include/aos/kernel.h"
int aos_mutex_unlock(aos_mutex_t *mutex);
# 176 "./include/aos/kernel.h"
int aos_mutex_is_valid(aos_mutex_t *mutex);
# 187 "./include/aos/kernel.h"
int aos_sem_new(aos_sem_t *sem, int count);







void aos_sem_free(aos_sem_t *sem);
# 205 "./include/aos/kernel.h"
int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);






void aos_sem_signal(aos_sem_t *sem);
# 221 "./include/aos/kernel.h"
int aos_sem_is_valid(aos_sem_t *sem);






void aos_sem_signal_all(aos_sem_t *sem);
# 240 "./include/aos/kernel.h"
int aos_event_new(aos_event_t *event, unsigned int flags);
# 251 "./include/aos/kernel.h"
void aos_event_free(aos_event_t *event);
# 272 "./include/aos/kernel.h"
int aos_event_get(aos_event_t *event, unsigned int flags, unsigned char opt,
                       unsigned int *actl_flags, unsigned int timeout);
# 286 "./include/aos/kernel.h"
int aos_event_set(aos_event_t *event, unsigned int flags, unsigned char opt);
# 299 "./include/aos/kernel.h"
int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size, int max_msg);






void aos_queue_free(aos_queue_t *queue);
# 317 "./include/aos/kernel.h"
int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
# 329 "./include/aos/kernel.h"
int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg, unsigned int *size);
# 338 "./include/aos/kernel.h"
int aos_queue_is_valid(aos_queue_t *queue);
# 347 "./include/aos/kernel.h"
void *aos_queue_buf_ptr(aos_queue_t *queue);
# 360 "./include/aos/kernel.h"
int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *),
                  void *arg, int ms, int repeat);
# 375 "./include/aos/kernel.h"
int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                  void *arg, int ms, int repeat, unsigned char auto_run);






void aos_timer_free(aos_timer_t *timer);
# 392 "./include/aos/kernel.h"
int aos_timer_start(aos_timer_t *timer);
# 401 "./include/aos/kernel.h"
int aos_timer_stop(aos_timer_t *timer);
# 411 "./include/aos/kernel.h"
int aos_timer_change(aos_timer_t *timer, int ms);
# 422 "./include/aos/kernel.h"
int aos_workqueue_create(aos_workqueue_t *workqueue, int pri, int stack_size);
# 434 "./include/aos/kernel.h"
int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);






void aos_work_destroy(aos_work_t *work);
# 451 "./include/aos/kernel.h"
int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
# 460 "./include/aos/kernel.h"
int aos_work_sched(aos_work_t *work);
# 469 "./include/aos/kernel.h"
int aos_work_cancel(aos_work_t *work);
# 479 "./include/aos/kernel.h"
void *aos_realloc(void *mem, unsigned int size);
# 488 "./include/aos/kernel.h"
void *aos_malloc(unsigned int size);
# 497 "./include/aos/kernel.h"
void *aos_zalloc(unsigned int size);







void aos_alloc_trace(void *addr, size_t allocator);






void aos_free(void *mem);






long long aos_now(void);






long long aos_now_ms(void);






void aos_msleep(int ms);




void aos_init(void);




void aos_start(void);
# 128 "utility/cjson/cJSON.c" 2





static internal_hooks global_hooks = { aos_malloc, aos_free, aos_realloc };

static unsigned char* cJSON_strdup(const unsigned char* string, const internal_hooks* const hooks)
{
    size_t length = 0;
    unsigned char* copy = 
# 138 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 138 "utility/cjson/cJSON.c"
                             ;

    if (string == 
# 140 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 140 "utility/cjson/cJSON.c"
                     )
        return 
# 141 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 141 "utility/cjson/cJSON.c"
                  ;

    length = strlen((const char*)string) + sizeof("");
    copy = (unsigned char*)hooks->allocate(length);
    if (copy == 
# 145 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 145 "utility/cjson/cJSON.c"
                   )
        return 
# 146 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 146 "utility/cjson/cJSON.c"
                  ;
    memcpy(copy, string, length);

    return copy;
}

void cJSON_InitHooks(cJSON_Hooks* hooks)
{
    if (hooks == 
# 154 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 154 "utility/cjson/cJSON.c"
                    ) {

        global_hooks.allocate = malloc;
        global_hooks.deallocate = free;
        global_hooks.reallocate = realloc;
        return;
    }

    global_hooks.allocate = malloc;
    if (hooks->malloc_fn != 
# 163 "utility/cjson/cJSON.c" 3 4
                           ((void *)0)
# 163 "utility/cjson/cJSON.c"
                               )
        global_hooks.allocate = hooks->malloc_fn;

    global_hooks.deallocate = free;
    if (hooks->free_fn != 
# 167 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 167 "utility/cjson/cJSON.c"
                             )
        global_hooks.deallocate = hooks->free_fn;


    global_hooks.reallocate = 
# 171 "utility/cjson/cJSON.c" 3 4
                             ((void *)0)
# 171 "utility/cjson/cJSON.c"
                                 ;
    if ((global_hooks.allocate == malloc) && (global_hooks.deallocate == free))
        global_hooks.reallocate = realloc;
}


static cJSON* cJSON_New_Item(const internal_hooks* const hooks)
{
    cJSON* node = (cJSON*)hooks->allocate(sizeof(cJSON));
    if (node)
        memset(node, '\0', sizeof(cJSON));

    return node;
}


void cJSON_Delete(cJSON* item)
{
    cJSON* next = 
# 189 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 189 "utility/cjson/cJSON.c"
                     ;
    while (item != 
# 190 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 190 "utility/cjson/cJSON.c"
                      ) {
        next = item->next;
        if (!(item->type & 256) && (item->child != 
# 192 "utility/cjson/cJSON.c" 3 4
                                                                ((void *)0)
# 192 "utility/cjson/cJSON.c"
                                                                    ))
            cJSON_Delete(item->child);
        if (!(item->type & 256) && (item->valuestring != 
# 194 "utility/cjson/cJSON.c" 3 4
                                                                      ((void *)0)
# 194 "utility/cjson/cJSON.c"
                                                                          )) {

            global_hooks.deallocate(item->valuestring);

        }
        if (!(item->type & 512) && (item->string != 
# 199 "utility/cjson/cJSON.c" 3 4
                                                                   ((void *)0)
# 199 "utility/cjson/cJSON.c"
                                                                       )) {

            global_hooks.deallocate(item->string);

        }
        global_hooks.deallocate(item);
        item = next;
    }
}


static unsigned char get_decimal_point(void)
{




    return '.';

}

typedef struct {
    const unsigned char* content;
    size_t length;
    size_t offset;
    size_t depth;
    internal_hooks hooks;
} parse_buffer;
# 237 "utility/cjson/cJSON.c"
static cJSON_bool parse_number(cJSON* const item, parse_buffer* const input_buffer)
{
    double number = 0;
    unsigned char* after_end = 
# 240 "utility/cjson/cJSON.c" 3 4
                              ((void *)0)
# 240 "utility/cjson/cJSON.c"
                                  ;
    unsigned char number_c_string[64];
    unsigned char decimal_point = get_decimal_point();
    size_t i = 0;

    if ((input_buffer == 
# 245 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 245 "utility/cjson/cJSON.c"
                            ) || (input_buffer->content == 
# 245 "utility/cjson/cJSON.c" 3 4
                                                           ((void *)0)
# 245 "utility/cjson/cJSON.c"
                                                               ))
        return ((cJSON_bool)0);




    for (i = 0; (i < (sizeof(number_c_string) - 1)) && ((input_buffer != 
# 251 "utility/cjson/cJSON.c" 3 4
                                                      ((void *)0)
# 251 "utility/cjson/cJSON.c"
                                                      ) && (((input_buffer)->offset + i) < (input_buffer)->length)); i++) {
        switch (((input_buffer)->content + (input_buffer)->offset)[i]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        case '+':
        case '-':
        case 'e':
        case 'E':
            number_c_string[i] = ((input_buffer)->content + (input_buffer)->offset)[i];
            break;

        case '.':
            number_c_string[i] = decimal_point;
            break;

        default:
            goto loop_end;
        }
    }
loop_end:
    number_c_string[i] = '\0';

    number = strtod((const char*)number_c_string, (char**)&after_end);
    if (number_c_string == after_end) {
        return ((cJSON_bool)0);
    }

    item->valuedouble = number;


    if (number >= 0x7fffffff)
        item->valueint = 0x7fffffff;
    else if (number <= 
# 291 "utility/cjson/cJSON.c" 3 4
                      (-0x7fffffff - 1)
# 291 "utility/cjson/cJSON.c"
                             )
        item->valueint = 
# 292 "utility/cjson/cJSON.c" 3 4
                        (-0x7fffffff - 1)
# 292 "utility/cjson/cJSON.c"
                               ;
    else
        item->valueint = (int)number;

    item->type = (1 << 3);

    input_buffer->offset += (size_t)(after_end - number_c_string);
    return ((cJSON_bool)1);
}


double cJSON_SetNumberHelper(cJSON* object, double number)
{
    if (number >= 0x7fffffff)
        object->valueint = 0x7fffffff;
    else if (number <= 
# 307 "utility/cjson/cJSON.c" 3 4
                      (-0x7fffffff - 1)
# 307 "utility/cjson/cJSON.c"
                             )
        object->valueint = 
# 308 "utility/cjson/cJSON.c" 3 4
                          (-0x7fffffff - 1)
# 308 "utility/cjson/cJSON.c"
                                 ;
    else
        object->valueint = (int)number;

    return object->valuedouble = number;
}

typedef struct {
    unsigned char* buffer;
    size_t length;
    size_t offset;
    size_t depth;
    cJSON_bool noalloc;
    cJSON_bool format;
    internal_hooks hooks;
} printbuffer;


static unsigned char* ensure(printbuffer* const p, size_t needed)
{
    unsigned char* newbuffer = 
# 328 "utility/cjson/cJSON.c" 3 4
                              ((void *)0)
# 328 "utility/cjson/cJSON.c"
                                  ;
    size_t newsize = 0;

    if ((p == 
# 331 "utility/cjson/cJSON.c" 3 4
             ((void *)0)
# 331 "utility/cjson/cJSON.c"
                 ) || (p->buffer == 
# 331 "utility/cjson/cJSON.c" 3 4
                                    ((void *)0)
# 331 "utility/cjson/cJSON.c"
                                        ))
        return 
# 332 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 332 "utility/cjson/cJSON.c"
                  ;

    if ((p->length > 0) && (p->offset >= p->length)) {

        return 
# 336 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 336 "utility/cjson/cJSON.c"
                  ;
    }

    if (needed > 0x7fffffff) {

        return 
# 341 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 341 "utility/cjson/cJSON.c"
                  ;
    }

    needed += p->offset + 1;
    if (needed <= p->length)
        return p->buffer + p->offset;

    if (p->noalloc)
        return 
# 349 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 349 "utility/cjson/cJSON.c"
                  ;


    if (needed > (0x7fffffff / 2)) {

        if (needed <= 0x7fffffff)
            newsize = 0x7fffffff;
        else
            return 
# 357 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 357 "utility/cjson/cJSON.c"
                      ;
    } else
        newsize = needed * 2;

    if (p->hooks.reallocate != 
# 361 "utility/cjson/cJSON.c" 3 4
                              ((void *)0)
# 361 "utility/cjson/cJSON.c"
                                  ) {

        newbuffer = (unsigned char*)p->hooks.reallocate(p->buffer, newsize);
        if (newbuffer == 
# 364 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 364 "utility/cjson/cJSON.c"
                            ) {
            p->hooks.deallocate(p->buffer);
            p->length = 0;
            p->buffer = 
# 367 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 367 "utility/cjson/cJSON.c"
                           ;

            return 
# 369 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 369 "utility/cjson/cJSON.c"
                      ;
        }
    } else {

        newbuffer = (unsigned char*)p->hooks.allocate(newsize);
        if (!newbuffer) {
            p->hooks.deallocate(p->buffer);
            p->length = 0;
            p->buffer = 
# 377 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 377 "utility/cjson/cJSON.c"
                           ;

            return 
# 379 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 379 "utility/cjson/cJSON.c"
                      ;
        }
        if (newbuffer)
            memcpy(newbuffer, p->buffer, p->offset + 1);
        p->hooks.deallocate(p->buffer);
    }
    p->length = newsize;
    p->buffer = newbuffer;

    return newbuffer + p->offset;
}


static void update_offset(printbuffer* const buffer)
{
    const unsigned char* buffer_pointer = 
# 394 "utility/cjson/cJSON.c" 3 4
                                         ((void *)0)
# 394 "utility/cjson/cJSON.c"
                                             ;
    if ((buffer == 
# 395 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 395 "utility/cjson/cJSON.c"
                      ) || (buffer->buffer == 
# 395 "utility/cjson/cJSON.c" 3 4
                                              ((void *)0)
# 395 "utility/cjson/cJSON.c"
                                                  ))
        return;
    buffer_pointer = buffer->buffer + buffer->offset;

    buffer->offset += strlen((const char*)buffer_pointer);
}


static cJSON_bool print_number(const cJSON* const item, printbuffer* const output_buffer)
{
    unsigned char* output_pointer = 
# 405 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 405 "utility/cjson/cJSON.c"
                                       ;
    double d = item->valuedouble;
    int length = 0;
    size_t i = 0;
    unsigned char number_buffer[26];
    unsigned char decimal_point = get_decimal_point();
    double test;

    if (output_buffer == 
# 413 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 413 "utility/cjson/cJSON.c"
                            )
        return ((cJSON_bool)0);


    if ((d * 0) != 0)
        length = sprintf((char*)number_buffer, "null");
    else {

        length = sprintf((char*)number_buffer, "%1.15g", d);


        if ((sscanf((char*)number_buffer, "%lg", &test) != 1) || ((double)test != d)) {

            length = sprintf((char*)number_buffer, "%1.17g", d);
        }
    }


    if ((length < 0) || (length > (int)(sizeof(number_buffer) - 1)))
        return ((cJSON_bool)0);


    output_pointer = ensure(output_buffer, (size_t)length);
    if (output_pointer == 
# 436 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 436 "utility/cjson/cJSON.c"
                             )
        return ((cJSON_bool)0);



    for (i = 0; i < ((size_t)length); i++) {
        if (number_buffer[i] == decimal_point) {
            output_pointer[i] = '.';
            continue;
        }

        output_pointer[i] = number_buffer[i];
    }
    output_pointer[i] = '\0';

    output_buffer->offset += (size_t)length;

    return ((cJSON_bool)1);
}


static unsigned parse_hex4(const unsigned char* const input)
{
    unsigned int h = 0;
    size_t i = 0;

    for (i = 0; i < 4; i++) {

        if ((input[i] >= '0') && (input[i] <= '9'))
            h += (unsigned int) input[i] - '0';
        else if ((input[i] >= 'A') && (input[i] <= 'F'))
            h += (unsigned int) 10 + input[i] - 'A';
        else if ((input[i] >= 'a') && (input[i] <= 'f'))
            h += (unsigned int) 10 + input[i] - 'a';
        else
            return 0;

        if (i < 3) {

            h = h << 4;
        }
    }

    return h;
}



static unsigned char utf16_literal_to_utf8(const unsigned char* const input_pointer, const unsigned char* const input_end, unsigned char** output_pointer)
{
    long unsigned int codepoint = 0;
    unsigned int first_code = 0;
    const unsigned char* first_sequence = input_pointer;
    unsigned char utf8_length = 0;
    unsigned char utf8_position = 0;
    unsigned char sequence_length = 0;
    unsigned char first_byte_mark = 0;

    if ((input_end - first_sequence) < 6) {

        goto fail;
    }


    first_code = parse_hex4(first_sequence + 2);


    if (((first_code >= 0xDC00) && (first_code <= 0xDFFF)))
        goto fail;


    if ((first_code >= 0xD800) && (first_code <= 0xDBFF)) {
        const unsigned char* second_sequence = first_sequence + 6;
        unsigned int second_code = 0;
        sequence_length = 12;

        if ((input_end - second_sequence) < 6) {

            goto fail;
        }

        if ((second_sequence[0] != '\\') || (second_sequence[1] != 'u')) {

            goto fail;
        }


        second_code = parse_hex4(second_sequence + 2);

        if ((second_code < 0xDC00) || (second_code > 0xDFFF)) {

            goto fail;
        }



        codepoint = 0x10000 + (((first_code & 0x3FF) << 10) | (second_code & 0x3FF));
    } else {
        sequence_length = 6;
        codepoint = first_code;
    }




    if (codepoint < 0x80) {

        utf8_length = 1;
    } else if (codepoint < 0x800) {

        utf8_length = 2;
        first_byte_mark = 0xC0;
    } else if (codepoint < 0x10000) {

        utf8_length = 3;
        first_byte_mark = 0xE0;
    } else if (codepoint <= 0x10FFFF) {

        utf8_length = 4;
        first_byte_mark = 0xF0;
    } else {

        goto fail;
    }


    for (utf8_position = (unsigned char)(utf8_length - 1); utf8_position > 0; utf8_position--) {

        (*output_pointer)[utf8_position] = (unsigned char)((codepoint | 0x80) & 0xBF);
        codepoint >>= 6;
    }

    if (utf8_length > 1)
        (*output_pointer)[0] = (unsigned char)((codepoint | first_byte_mark) & 0xFF);
    else
        (*output_pointer)[0] = (unsigned char)(codepoint & 0x7F);

    *output_pointer += utf8_length;

    return sequence_length;

fail:
    return 0;
}


static cJSON_bool parse_string(cJSON* const item, parse_buffer* const input_buffer)
{
    const unsigned char* input_pointer = ((input_buffer)->content + (input_buffer)->offset) + 1;
    const unsigned char* input_end = ((input_buffer)->content + (input_buffer)->offset) + 1;

    unsigned char* output_pointer = 
# 587 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 587 "utility/cjson/cJSON.c"
                                       ;

    unsigned char* output = 
# 589 "utility/cjson/cJSON.c" 3 4
                           ((void *)0)
# 589 "utility/cjson/cJSON.c"
                               ;


    if (((input_buffer)->content + (input_buffer)->offset)[0] != '\"')
        goto fail;

    {


        size_t allocation_length = 0;

        size_t skipped_bytes = 0;
        while (((size_t)(input_end - input_buffer->content) < input_buffer->length) && (*input_end != '\"')) {

            if (input_end[0] == '\\') {
                if ((size_t)(input_end + 1 - input_buffer->content) >= input_buffer->length) {

                    goto fail;
                }
                skipped_bytes++;
                input_end++;
            }
            input_end++;
        }
        if (((size_t)(input_end - input_buffer->content) >= input_buffer->length) || (*input_end != '\"')) {
            goto fail;
        }


        allocation_length = (size_t)(input_end - ((input_buffer)->content + (input_buffer)->offset)) - skipped_bytes;

        output = (unsigned char*)input_buffer->hooks.allocate(allocation_length + sizeof(""));
        if (output == 
# 621 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 621 "utility/cjson/cJSON.c"
                         ) {
            goto fail;
        }

    }

    output_pointer = output;

    while (input_pointer < input_end) {
        if (*input_pointer != '\\')
            *output_pointer++ = *input_pointer++;

        else {
            unsigned char sequence_length = 2;
            if ((input_end - input_pointer) < 1)
                goto fail;

            switch (input_pointer[1]) {
            case 'b':
                *output_pointer++ = '\b';
                break;
            case 'f':
                *output_pointer++ = '\f';
                break;
            case 'n':
                *output_pointer++ = '\n';
                break;
            case 'r':
                *output_pointer++ = '\r';
                break;
            case 't':
                *output_pointer++ = '\t';
                break;
            case '\"':
            case '\\':
            case '/':
                *output_pointer++ = input_pointer[1];
                break;


            case 'u':
                sequence_length = utf16_literal_to_utf8(input_pointer, input_end, &output_pointer);
                if (sequence_length == 0) {

                    goto fail;
                }
                break;

            default:
                goto fail;
            }
            input_pointer += sequence_length;
        }
    }


    *output_pointer = '\0';



    item->type = (1 << 4);
    item->valuestring = (char*)output;




    input_buffer->offset = (size_t)(input_end - input_buffer->content);
    input_buffer->offset++;

    return ((cJSON_bool)1);

fail:

    if (output != 
# 694 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 694 "utility/cjson/cJSON.c"
                     )
        input_buffer->hooks.deallocate(output);

    if (input_pointer != 
# 697 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 697 "utility/cjson/cJSON.c"
                            )
        input_buffer->offset = (size_t)(input_pointer - input_buffer->content);

    return ((cJSON_bool)0);
}


static cJSON_bool print_string_ptr(const unsigned char* const input, printbuffer* const output_buffer)
{
    const unsigned char* input_pointer = 
# 706 "utility/cjson/cJSON.c" 3 4
                                        ((void *)0)
# 706 "utility/cjson/cJSON.c"
                                            ;
    unsigned char* output = 
# 707 "utility/cjson/cJSON.c" 3 4
                           ((void *)0)
# 707 "utility/cjson/cJSON.c"
                               ;
    unsigned char* output_pointer = 
# 708 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 708 "utility/cjson/cJSON.c"
                                       ;
    size_t output_length = 0;

    size_t escape_characters = 0;

    if (output_buffer == 
# 713 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 713 "utility/cjson/cJSON.c"
                            )
        return ((cJSON_bool)0);


    if (input == 
# 717 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 717 "utility/cjson/cJSON.c"
                    ) {
        output = ensure(output_buffer, sizeof("\"\""));
        if (output == 
# 719 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 719 "utility/cjson/cJSON.c"
                         )
            return ((cJSON_bool)0);
        strcpy((char*)output, "\"\"");

        return ((cJSON_bool)1);
    }


    for (input_pointer = input; *input_pointer; input_pointer++) {
        switch (*input_pointer) {
        case '\"':
        case '\\':
        case '\b':
        case '\f':
        case '\n':
        case '\r':
        case '\t':

            escape_characters++;
            break;
        default:
            if (*input_pointer < 32) {

                escape_characters += 5;
            }
            break;
        }
    }
    output_length = (size_t)(input_pointer - input) + escape_characters;

    output = ensure(output_buffer, output_length + sizeof("\"\""));
    if (output == 
# 750 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 750 "utility/cjson/cJSON.c"
                     )
        return ((cJSON_bool)0);


    if (escape_characters == 0) {
        output[0] = '\"';
        memcpy(output + 1, input, output_length);
        output[output_length + 1] = '\"';
        output[output_length + 2] = '\0';

        return ((cJSON_bool)1);
    }

    output[0] = '\"';
    output_pointer = output + 1;

    for (input_pointer = input; *input_pointer != '\0'; (void)input_pointer++, output_pointer++) {
        if ((*input_pointer > 31) && (*input_pointer != '\"') && (*input_pointer != '\\')) {

            *output_pointer = *input_pointer;
        } else {

            *output_pointer++ = '\\';
            switch (*input_pointer) {
            case '\\':
                *output_pointer = '\\';
                break;
            case '\"':
                *output_pointer = '\"';
                break;
            case '\b':
                *output_pointer = 'b';
                break;
            case '\f':
                *output_pointer = 'f';
                break;
            case '\n':
                *output_pointer = 'n';
                break;
            case '\r':
                *output_pointer = 'r';
                break;
            case '\t':
                *output_pointer = 't';
                break;
            default:

                sprintf((char*)output_pointer, "u%04x", *input_pointer);
                output_pointer += 4;
                break;
            }
        }
    }
    output[output_length + 1] = '\"';
    output[output_length + 2] = '\0';

    return ((cJSON_bool)1);
}


static cJSON_bool print_string(const cJSON* const item, printbuffer* const p)
{
    return print_string_ptr((unsigned char*)item->valuestring, p);
}


static cJSON_bool parse_value(cJSON* const item, parse_buffer* const input_buffer);
static cJSON_bool print_value(const cJSON* const item, printbuffer* const output_buffer);
static cJSON_bool parse_array(cJSON* const item, parse_buffer* const input_buffer);
static cJSON_bool print_array(const cJSON* const item, printbuffer* const output_buffer);
static cJSON_bool parse_object(cJSON* const item, parse_buffer* const input_buffer);
static cJSON_bool print_object(const cJSON* const item, printbuffer* const output_buffer);


static parse_buffer* buffer_skip_whitespace(parse_buffer* const buffer)
{
    if ((buffer == 
# 826 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 826 "utility/cjson/cJSON.c"
                      ) || (buffer->content == 
# 826 "utility/cjson/cJSON.c" 3 4
                                               ((void *)0)
# 826 "utility/cjson/cJSON.c"
                                                   ))
        return 
# 827 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 827 "utility/cjson/cJSON.c"
                  ;

    while (((buffer != 
# 829 "utility/cjson/cJSON.c" 3 4
          ((void *)0)
# 829 "utility/cjson/cJSON.c"
          ) && (((buffer)->offset + 0) < (buffer)->length)) && (((buffer)->content + (buffer)->offset)[0] <= 32))
        buffer->offset++;

    if (buffer->offset == buffer->length)
        buffer->offset--;

    return buffer;
}


static parse_buffer* skip_utf8_bom(parse_buffer* const buffer)
{
    if ((buffer == 
# 841 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 841 "utility/cjson/cJSON.c"
                      ) || (buffer->content == 
# 841 "utility/cjson/cJSON.c" 3 4
                                               ((void *)0)
# 841 "utility/cjson/cJSON.c"
                                                   ) || (buffer->offset != 0))
        return 
# 842 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 842 "utility/cjson/cJSON.c"
                  ;

    if (((buffer != 
# 844 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 844 "utility/cjson/cJSON.c"
       ) && (((buffer)->offset + 4) < (buffer)->length)) && (strncmp((const char*)((buffer)->content + (buffer)->offset), "\xEF\xBB\xBF", 3) == 0))
        buffer->offset += 3;

    return buffer;
}


cJSON* cJSON_ParseWithOpts(const char* value, const char** return_parse_end, cJSON_bool require_null_terminated)
{
    parse_buffer buffer = { 0, 0, 0, 0, { 0, 0, 0 } };
    cJSON* item = 
# 854 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 854 "utility/cjson/cJSON.c"
                     ;


    global_error.json = 
# 857 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 857 "utility/cjson/cJSON.c"
                           ;
    global_error.position = 0;

    if (value == 
# 860 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 860 "utility/cjson/cJSON.c"
                    )
        goto fail;

    buffer.content = (const unsigned char*)value;
    buffer.length = strlen((const char*)value) + sizeof("");
    buffer.offset = 0;
    buffer.hooks = global_hooks;

    item = cJSON_New_Item(&global_hooks);
    if (item == 
# 869 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 869 "utility/cjson/cJSON.c"
                   )
        goto fail;

    if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer)))) {

        goto fail;
    }


    if (require_null_terminated) {
        buffer_skip_whitespace(&buffer);
        if ((buffer.offset >= buffer.length) || ((&buffer)->content + (&buffer)->offset)[0] != '\0')
            goto fail;
    }
    if (return_parse_end)
        *return_parse_end = (const char*)((&buffer)->content + (&buffer)->offset);

    return item;

fail:
    if (item != 
# 889 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 889 "utility/cjson/cJSON.c"
                   )
        cJSON_Delete(item);

    if (value != 
# 892 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 892 "utility/cjson/cJSON.c"
                    ) {
        error local_error;
        local_error.json = (const unsigned char*)value;
        local_error.position = 0;

        if (buffer.offset < buffer.length)
            local_error.position = buffer.offset;
        else if (buffer.length > 0)
            local_error.position = buffer.length - 1;

        if (return_parse_end != 
# 902 "utility/cjson/cJSON.c" 3 4
                               ((void *)0)
# 902 "utility/cjson/cJSON.c"
                                   )
            *return_parse_end = (const char*)local_error.json + local_error.position;

        global_error = local_error;
    }

    return 
# 908 "utility/cjson/cJSON.c" 3 4
          ((void *)0)
# 908 "utility/cjson/cJSON.c"
              ;
}


cJSON* cJSON_Parse(const char* value)
{
    return cJSON_ParseWithOpts(value, 0, 0);
}



static unsigned char* print(const cJSON* const item, cJSON_bool format, const internal_hooks* const hooks)
{
    printbuffer buffer[1];
    unsigned char* printed = 
# 922 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 922 "utility/cjson/cJSON.c"
                                ;

    memset(buffer, 0, sizeof(buffer));


    buffer->buffer = (unsigned char*) hooks->allocate(256);
    buffer->format = format;
    buffer->hooks = *hooks;
    if (buffer->buffer == 
# 930 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 930 "utility/cjson/cJSON.c"
                             )
        goto fail;


    if (!print_value(item, buffer))
        goto fail;
    update_offset(buffer);


    if (hooks->reallocate != 
# 939 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 939 "utility/cjson/cJSON.c"
                                ) {
        printed = (unsigned char*) hooks->reallocate(buffer->buffer, buffer->length);
        buffer->buffer = 
# 941 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 941 "utility/cjson/cJSON.c"
                            ;
        if (printed == 
# 942 "utility/cjson/cJSON.c" 3 4
                      ((void *)0)
# 942 "utility/cjson/cJSON.c"
                          )
            goto fail;
    } else {
        printed = (unsigned char*) hooks->allocate(buffer->offset + 1);
        if (printed == 
# 946 "utility/cjson/cJSON.c" 3 4
                      ((void *)0)
# 946 "utility/cjson/cJSON.c"
                          )
            goto fail;
        memcpy(printed, buffer->buffer, ((buffer->length < buffer->offset + 1) ? buffer->length : buffer->offset + 1));
        printed[buffer->offset] = '\0';


        hooks->deallocate(buffer->buffer);
    }

    return printed;

fail:
    if (buffer->buffer != 
# 958 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 958 "utility/cjson/cJSON.c"
                             )
        hooks->deallocate(buffer->buffer);

    if (printed != 
# 961 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 961 "utility/cjson/cJSON.c"
                      )
        hooks->deallocate(printed);

    return 
# 964 "utility/cjson/cJSON.c" 3 4
          ((void *)0)
# 964 "utility/cjson/cJSON.c"
              ;
}


char* cJSON_Print(const cJSON* item)
{
    return (char*)print(item, ((cJSON_bool)1), &global_hooks);
}

char* cJSON_PrintUnformatted(const cJSON* item)
{
    return (char*)print(item, ((cJSON_bool)0), &global_hooks);
}

char* cJSON_PrintBuffered(const cJSON* item, int prebuffer, cJSON_bool fmt)
{
    printbuffer p = { 0, 0, 0, 0, 0, 0, { 0, 0, 0 } };

    if (prebuffer < 0)
        return 
# 983 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 983 "utility/cjson/cJSON.c"
                  ;

    p.buffer = (unsigned char*)global_hooks.allocate((size_t)prebuffer);
    if (!p.buffer)
        return 
# 987 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 987 "utility/cjson/cJSON.c"
                  ;

    p.length = (size_t)prebuffer;
    p.offset = 0;
    p.noalloc = ((cJSON_bool)0);
    p.format = fmt;
    p.hooks = global_hooks;

    if (!print_value(item, &p)) {
        global_hooks.deallocate(p.buffer);
        return 
# 997 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 997 "utility/cjson/cJSON.c"
                  ;
    }

    return (char*)p.buffer;
}

cJSON_bool cJSON_PrintPreallocated(cJSON* item, char* buf, const int len, const cJSON_bool fmt)
{
    printbuffer p = { 0, 0, 0, 0, 0, 0, { 0, 0, 0 } };

    if ((len < 0) || (buf == 
# 1007 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 1007 "utility/cjson/cJSON.c"
                                ))
        return ((cJSON_bool)0);

    p.buffer = (unsigned char*)buf;
    p.length = (size_t)len;
    p.offset = 0;
    p.noalloc = ((cJSON_bool)1);
    p.format = fmt;
    p.hooks = global_hooks;

    return print_value(item, &p);
}


static cJSON_bool parse_value(cJSON* const item, parse_buffer* const input_buffer)
{
    if ((input_buffer == 
# 1023 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 1023 "utility/cjson/cJSON.c"
                            ) || (input_buffer->content == 
# 1023 "utility/cjson/cJSON.c" 3 4
                                                           ((void *)0)
# 1023 "utility/cjson/cJSON.c"
                                                               )) {
        return ((cJSON_bool)0);
    }



    if (((input_buffer != 
# 1029 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1029 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 4) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "null", 4) == 0)) {
        item->type = (1 << 2);
        input_buffer->offset += 4;
        return ((cJSON_bool)1);
    }

    if (((input_buffer != 
# 1035 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1035 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 5) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "false", 5) == 0)) {
        item->type = (1 << 0);
        input_buffer->offset += 5;
        return ((cJSON_bool)1);
    }

    if (((input_buffer != 
# 1041 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1041 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 4) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "true", 4) == 0)) {
        item->type = (1 << 1);
        item->valueint = 1;
        input_buffer->offset += 4;
        return ((cJSON_bool)1);
    }

    if (((input_buffer != 
# 1048 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1048 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '\"'))
        return parse_string(item, input_buffer);

    if (((input_buffer != 
# 1051 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1051 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && ((((input_buffer)->content + (input_buffer)->offset)[0] == '-') || ((((input_buffer)->content + (input_buffer)->offset)[0] >= '0') &&
            (((input_buffer)->content + (input_buffer)->offset)[0] <= '9'))))
        return parse_number(item, input_buffer);

    if (((input_buffer != 
# 1055 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1055 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '['))
        return parse_array(item, input_buffer);

    if (((input_buffer != 
# 1058 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1058 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '{'))
        return parse_object(item, input_buffer);

    return ((cJSON_bool)0);
}


static cJSON_bool print_value(const cJSON* const item, printbuffer* const output_buffer)
{
    unsigned char* output = 
# 1067 "utility/cjson/cJSON.c" 3 4
                           ((void *)0)
# 1067 "utility/cjson/cJSON.c"
                               ;

    if ((item == 
# 1069 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1069 "utility/cjson/cJSON.c"
                    ) || (output_buffer == 
# 1069 "utility/cjson/cJSON.c" 3 4
                                           ((void *)0)
# 1069 "utility/cjson/cJSON.c"
                                               ))
        return ((cJSON_bool)0);

    switch ((item->type) & 0xFF) {
    case (1 << 2):
        output = ensure(output_buffer, 5);
        if (output == 
# 1075 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1075 "utility/cjson/cJSON.c"
                         )
            return ((cJSON_bool)0);
        strcpy((char*)output, "null");
        return ((cJSON_bool)1);

    case (1 << 0):
        output = ensure(output_buffer, 6);
        if (output == 
# 1082 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1082 "utility/cjson/cJSON.c"
                         )
            return ((cJSON_bool)0);
        strcpy((char*)output, "false");
        return ((cJSON_bool)1);

    case (1 << 1):
        output = ensure(output_buffer, 5);
        if (output == 
# 1089 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1089 "utility/cjson/cJSON.c"
                         )
            return ((cJSON_bool)0);
        strcpy((char*)output, "true");
        return ((cJSON_bool)1);

    case (1 << 3):
        return print_number(item, output_buffer);

    case (1 << 7): {
        size_t raw_length = 0;
        if (item->valuestring == 
# 1099 "utility/cjson/cJSON.c" 3 4
                                ((void *)0)
# 1099 "utility/cjson/cJSON.c"
                                    ) {
            if (!output_buffer->noalloc)
                output_buffer->hooks.deallocate(output_buffer->buffer);
            return ((cJSON_bool)0);
        }

        raw_length = strlen(item->valuestring) + sizeof("");
        output = ensure(output_buffer, raw_length);
        if (output == 
# 1107 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1107 "utility/cjson/cJSON.c"
                         )
            return ((cJSON_bool)0);
        memcpy(output, item->valuestring, raw_length);
        return ((cJSON_bool)1);
    }

    case (1 << 4):
        return print_string(item, output_buffer);

    case (1 << 5):
        return print_array(item, output_buffer);

    case (1 << 6):
        return print_object(item, output_buffer);

    default:
        return ((cJSON_bool)0);
    }
}


static cJSON_bool parse_array(cJSON* const item, parse_buffer* const input_buffer)
{
    cJSON* head = 
# 1130 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 1130 "utility/cjson/cJSON.c"
                     ;
    cJSON* current_item = 
# 1131 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1131 "utility/cjson/cJSON.c"
                             ;

    if (input_buffer->depth >= 1000) {
        return ((cJSON_bool)0);
    }
    input_buffer->depth++;

    if (((input_buffer)->content + (input_buffer)->offset)[0] != '[') {

        goto fail;
    }

    input_buffer->offset++;
    buffer_skip_whitespace(input_buffer);
    if (((input_buffer != 
# 1145 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1145 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ']')) {

        goto success;
    }


    if ((!((input_buffer != 
# 1151 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1151 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)))) {
        input_buffer->offset--;
        goto fail;
    }


    input_buffer->offset--;

    do {

        cJSON* new_item = cJSON_New_Item(&(input_buffer->hooks));
        if (new_item == 
# 1162 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 1162 "utility/cjson/cJSON.c"
                           ) {
            goto fail;
        }


        if (head == 
# 1167 "utility/cjson/cJSON.c" 3 4
                   ((void *)0)
# 1167 "utility/cjson/cJSON.c"
                       ) {

            current_item = head = new_item;
        } else {

            current_item->next = new_item;
            new_item->prev = current_item;
            current_item = new_item;
        }


        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_value(current_item, input_buffer)) {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);
    } while (((input_buffer != 
# 1184 "utility/cjson/cJSON.c" 3 4
            ((void *)0)
# 1184 "utility/cjson/cJSON.c"
            ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ','));

    if ((!((input_buffer != 
# 1186 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1186 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || ((input_buffer)->content + (input_buffer)->offset)[0] != ']') {
        goto fail;
    }

success:
    input_buffer->depth--;

    item->type = (1 << 5);
    item->child = head;

    input_buffer->offset++;

    return ((cJSON_bool)1);

fail:
    if (head != 
# 1201 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 1201 "utility/cjson/cJSON.c"
                   )
        cJSON_Delete(head);

    return ((cJSON_bool)0);
}


static cJSON_bool print_array(const cJSON* const item, printbuffer* const output_buffer)
{
    unsigned char* output_pointer = 
# 1210 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 1210 "utility/cjson/cJSON.c"
                                       ;
    size_t length = 0;
    cJSON* current_element = item->child;

    if (output_buffer == 
# 1214 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 1214 "utility/cjson/cJSON.c"
                            )
        return ((cJSON_bool)0);



    output_pointer = ensure(output_buffer, 1);
    if (output_pointer == 
# 1220 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1220 "utility/cjson/cJSON.c"
                             )
        return ((cJSON_bool)0);

    *output_pointer = '[';
    output_buffer->offset++;
    output_buffer->depth++;

    while (current_element != 
# 1227 "utility/cjson/cJSON.c" 3 4
                             ((void *)0)
# 1227 "utility/cjson/cJSON.c"
                                 ) {
        if (!print_value(current_element, output_buffer))
            return ((cJSON_bool)0);
        update_offset(output_buffer);
        if (current_element->next) {
            length = (size_t)(output_buffer->format ? 2 : 1);
            output_pointer = ensure(output_buffer, length + 1);
            if (output_pointer == 
# 1234 "utility/cjson/cJSON.c" 3 4
                                 ((void *)0)
# 1234 "utility/cjson/cJSON.c"
                                     )
                return ((cJSON_bool)0);
            *output_pointer++ = ',';
            if (output_buffer->format)
                *output_pointer++ = ' ';
            *output_pointer = '\0';
            output_buffer->offset += length;
        }
        current_element = current_element->next;
    }

    output_pointer = ensure(output_buffer, 2);
    if (output_pointer == 
# 1246 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1246 "utility/cjson/cJSON.c"
                             )
        return ((cJSON_bool)0);
    *output_pointer++ = ']';
    *output_pointer = '\0';
    output_buffer->depth--;

    return ((cJSON_bool)1);
}


static cJSON_bool parse_object(cJSON* const item, parse_buffer* const input_buffer)
{
    cJSON* head = 
# 1258 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 1258 "utility/cjson/cJSON.c"
                     ;
    cJSON* current_item = 
# 1259 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1259 "utility/cjson/cJSON.c"
                             ;

    if (input_buffer->depth >= 1000) {
        return ((cJSON_bool)0);
    }
    input_buffer->depth++;

    if ((!((input_buffer != 
# 1266 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1266 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != '{')) {
        goto fail;
    }

    input_buffer->offset++;
    buffer_skip_whitespace(input_buffer);
    if (((input_buffer != 
# 1272 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1272 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '}')) {
        goto success;
    }


    if ((!((input_buffer != 
# 1277 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1277 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length)))) {
        input_buffer->offset--;
        goto fail;
    }


    input_buffer->offset--;

    do {

        cJSON* new_item = cJSON_New_Item(&(input_buffer->hooks));
        if (new_item == 
# 1288 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 1288 "utility/cjson/cJSON.c"
                           ) {
            goto fail;
        }


        if (head == 
# 1293 "utility/cjson/cJSON.c" 3 4
                   ((void *)0)
# 1293 "utility/cjson/cJSON.c"
                       ) {

            current_item = head = new_item;
        } else {

            current_item->next = new_item;
            new_item->prev = current_item;
            current_item = new_item;
        }


        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_string(current_item, input_buffer)) {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);


        current_item->string = current_item->valuestring;



        current_item->valuestring = 
# 1316 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 1316 "utility/cjson/cJSON.c"
                                       ;

        if ((!((input_buffer != 
# 1318 "utility/cjson/cJSON.c" 3 4
           ((void *)0)
# 1318 "utility/cjson/cJSON.c"
           ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != ':')) {
            goto fail;
        }


        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_value(current_item, input_buffer)) {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);
    } while (((input_buffer != 
# 1329 "utility/cjson/cJSON.c" 3 4
            ((void *)0)
# 1329 "utility/cjson/cJSON.c"
            ) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ','));

    if ((!((input_buffer != 
# 1331 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 1331 "utility/cjson/cJSON.c"
       ) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != '}')) {
        goto fail;
    }

success:
    input_buffer->depth--;

    item->type = (1 << 6);
    item->child = head;

    input_buffer->offset++;
    return ((cJSON_bool)1);

fail:
    if (head != 
# 1345 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 1345 "utility/cjson/cJSON.c"
                   )
        cJSON_Delete(head);

    return ((cJSON_bool)0);
}


static cJSON_bool print_object(const cJSON* const item, printbuffer* const output_buffer)
{
    unsigned char* output_pointer = 
# 1354 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 1354 "utility/cjson/cJSON.c"
                                       ;
    size_t length = 0;
    cJSON* current_item = item->child;

    if (output_buffer == 
# 1358 "utility/cjson/cJSON.c" 3 4
                        ((void *)0)
# 1358 "utility/cjson/cJSON.c"
                            )
        return ((cJSON_bool)0);


    length = (size_t)(output_buffer->format ? 2 : 1);
    output_pointer = ensure(output_buffer, length + 1);
    if (output_pointer == 
# 1364 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1364 "utility/cjson/cJSON.c"
                             )
        return ((cJSON_bool)0);

    *output_pointer++ = '{';
    output_buffer->depth++;
    if (output_buffer->format)
        *output_pointer++ = '\n';
    output_buffer->offset += length;

    while (current_item) {
        if (output_buffer->format) {
            size_t i;
            output_pointer = ensure(output_buffer, output_buffer->depth);
            if (output_pointer == 
# 1377 "utility/cjson/cJSON.c" 3 4
                                 ((void *)0)
# 1377 "utility/cjson/cJSON.c"
                                     )
                return ((cJSON_bool)0);
            for (i = 0; i < output_buffer->depth; i++)
                *output_pointer++ = '\t';
            output_buffer->offset += output_buffer->depth;
        }


        if (!print_string_ptr((unsigned char*)current_item->string, output_buffer))
            return ((cJSON_bool)0);
        update_offset(output_buffer);

        length = (size_t)(output_buffer->format ? 2 : 1);
        output_pointer = ensure(output_buffer, length);
        if (output_pointer == 
# 1391 "utility/cjson/cJSON.c" 3 4
                             ((void *)0)
# 1391 "utility/cjson/cJSON.c"
                                 )
            return ((cJSON_bool)0);
        *output_pointer++ = ':';
        if (output_buffer->format)
            *output_pointer++ = '\t';
        output_buffer->offset += length;


        if (!print_value(current_item, output_buffer))
            return ((cJSON_bool)0);
        update_offset(output_buffer);


        length = (size_t)((output_buffer->format ? 1 : 0) + (current_item->next ? 1 : 0));
        output_pointer = ensure(output_buffer, length + 1);
        if (output_pointer == 
# 1406 "utility/cjson/cJSON.c" 3 4
                             ((void *)0)
# 1406 "utility/cjson/cJSON.c"
                                 )
            return ((cJSON_bool)0);
        if (current_item->next)
            *output_pointer++ = ',';

        if (output_buffer->format)
            *output_pointer++ = '\n';
        *output_pointer = '\0';
        output_buffer->offset += length;

        current_item = current_item->next;
    }

    output_pointer = ensure(output_buffer, output_buffer->format ? (output_buffer->depth + 1) : 2);
    if (output_pointer == 
# 1420 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1420 "utility/cjson/cJSON.c"
                             )
        return ((cJSON_bool)0);
    if (output_buffer->format) {
        size_t i;
        for (i = 0; i < (output_buffer->depth - 1); i++)
            *output_pointer++ = '\t';
    }
    *output_pointer++ = '}';
    *output_pointer = '\0';
    output_buffer->depth--;

    return ((cJSON_bool)1);
}


int cJSON_GetArraySize(const cJSON* array)
{
    cJSON* child = 
# 1437 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1437 "utility/cjson/cJSON.c"
                      ;
    size_t size = 0;

    if (array == 
# 1440 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1440 "utility/cjson/cJSON.c"
                    )
        return 0;

    child = array->child;

    while (child != 
# 1445 "utility/cjson/cJSON.c" 3 4
                   ((void *)0)
# 1445 "utility/cjson/cJSON.c"
                       ) {
        size++;
        child = child->next;
    }



    return (int)size;
}

static cJSON* get_array_item(const cJSON* array, size_t index)
{
    cJSON* current_child = 
# 1457 "utility/cjson/cJSON.c" 3 4
                          ((void *)0)
# 1457 "utility/cjson/cJSON.c"
                              ;

    if (array == 
# 1459 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1459 "utility/cjson/cJSON.c"
                    )
        return 
# 1460 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1460 "utility/cjson/cJSON.c"
                  ;

    current_child = array->child;
    while ((current_child != 
# 1463 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 1463 "utility/cjson/cJSON.c"
                                ) && (index > 0)) {
        index--;
        current_child = current_child->next;
    }

    return current_child;
}

cJSON* cJSON_GetArrayItem(const cJSON* array, int index)
{
    if (index < 0)
        return 
# 1474 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1474 "utility/cjson/cJSON.c"
                  ;

    return get_array_item(array, (size_t)index);
}

static cJSON* get_object_item(const cJSON* const object, const char* const name, const cJSON_bool case_sensitive)
{
    cJSON* current_element = 
# 1481 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 1481 "utility/cjson/cJSON.c"
                                ;

    if ((object == 
# 1483 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1483 "utility/cjson/cJSON.c"
                      ) || (name == 
# 1483 "utility/cjson/cJSON.c" 3 4
                                    ((void *)0)
# 1483 "utility/cjson/cJSON.c"
                                        ))
        return 
# 1484 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1484 "utility/cjson/cJSON.c"
                  ;

    current_element = object->child;
    if (case_sensitive) {
        while ((current_element != 
# 1488 "utility/cjson/cJSON.c" 3 4
                                  ((void *)0)
# 1488 "utility/cjson/cJSON.c"
                                      ) && (strcmp(name, current_element->string) != 0))
            current_element = current_element->next;
    } else {

        while ((current_element != 
# 1492 "utility/cjson/cJSON.c" 3 4
                                  ((void *)0)
# 1492 "utility/cjson/cJSON.c"
                                      ) && (case_insensitive_strcmp((const unsigned char*)name, (const unsigned char*)(current_element->string)) != 0))



        {
            current_element = current_element->next;
        }
    }

    return current_element;
}

cJSON* cJSON_GetObjectItem(const cJSON* const object, const char* const string)
{
    return get_object_item(object, string, ((cJSON_bool)0));
}

cJSON* cJSON_GetObjectItemCaseSensitive(const cJSON* const object, const char* const string)
{
    return get_object_item(object, string, ((cJSON_bool)1));
}

cJSON_bool cJSON_HasObjectItem(const cJSON* object, const char* string)
{
    return cJSON_GetObjectItem(object, string) ? 1 : 0;
}


static void suffix_object(cJSON* prev, cJSON* item)
{
    prev->next = item;
    item->prev = prev;
}


static cJSON* create_reference(const cJSON* item, const internal_hooks* const hooks)
{
    cJSON* reference = 
# 1529 "utility/cjson/cJSON.c" 3 4
                      ((void *)0)
# 1529 "utility/cjson/cJSON.c"
                          ;
    if (item == 
# 1530 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 1530 "utility/cjson/cJSON.c"
                   )
        return 
# 1531 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1531 "utility/cjson/cJSON.c"
                  ;

    reference = cJSON_New_Item(hooks);
    if (reference == 
# 1534 "utility/cjson/cJSON.c" 3 4
                    ((void *)0)
# 1534 "utility/cjson/cJSON.c"
                        )
        return 
# 1535 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1535 "utility/cjson/cJSON.c"
                  ;

    memcpy(reference, item, sizeof(cJSON));
    reference->string = 
# 1538 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 1538 "utility/cjson/cJSON.c"
                           ;
    reference->type |= 256;
    reference->next = reference->prev = 
# 1540 "utility/cjson/cJSON.c" 3 4
                                       ((void *)0)
# 1540 "utility/cjson/cJSON.c"
                                           ;
    return reference;
}


void cJSON_AddItemToArray(cJSON* array, cJSON* item)
{
    cJSON* child = 
# 1547 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1547 "utility/cjson/cJSON.c"
                      ;

    if ((item == 
# 1549 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1549 "utility/cjson/cJSON.c"
                    ) || (array == 
# 1549 "utility/cjson/cJSON.c" 3 4
                                   ((void *)0)
# 1549 "utility/cjson/cJSON.c"
                                       ))
        return;

    child = array->child;

    if (child == 
# 1554 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1554 "utility/cjson/cJSON.c"
                    ) {

        array->child = item;
    } else {

        while (child->next)
            child = child->next;
        suffix_object(child, item);
    }
}

void cJSON_AddItemToObject(cJSON* object, const char* string, cJSON* item)
{
    if (item == 
# 1567 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 1567 "utility/cjson/cJSON.c"
                   )
        return;


    cJSON_AddItemToObjectCS(object, (char*)cJSON_strdup((const unsigned char*)string, &global_hooks), item);

    item->type &= ~512;
}


#pragma GCC diagnostic push


#pragma GCC diagnostic ignored "-Wcast-qual"



void cJSON_AddItemToObjectCS(cJSON* object, const char* string, cJSON* item)
{
    if ((item == 
# 1586 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1586 "utility/cjson/cJSON.c"
                    ) || (string == 
# 1586 "utility/cjson/cJSON.c" 3 4
                                    ((void *)0)
# 1586 "utility/cjson/cJSON.c"
                                        ))
        return;
    if (!(item->type & 512) && item->string)
        global_hooks.deallocate(item->string);
    item->string = (char*)string;
    item->type |= 512;
    cJSON_AddItemToArray(object, item);
}

#pragma GCC diagnostic pop


void cJSON_AddItemReferenceToArray(cJSON* array, cJSON* item)
{
    if (array == 
# 1600 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1600 "utility/cjson/cJSON.c"
                    )
        return;

    cJSON_AddItemToArray(array, create_reference(item, &global_hooks));
}

void cJSON_AddItemReferenceToObject(cJSON* object, const char* string, cJSON* item)
{
    if ((object == 
# 1608 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1608 "utility/cjson/cJSON.c"
                      ) || (string == 
# 1608 "utility/cjson/cJSON.c" 3 4
                                      ((void *)0)
# 1608 "utility/cjson/cJSON.c"
                                          ))
        return;

    cJSON_AddItemToObject(object, string, create_reference(item, &global_hooks));
}

cJSON* cJSON_DetachItemViaPointer(cJSON* parent, cJSON* const item)
{
    if ((parent == 
# 1616 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1616 "utility/cjson/cJSON.c"
                      ) || (item == 
# 1616 "utility/cjson/cJSON.c" 3 4
                                    ((void *)0)
# 1616 "utility/cjson/cJSON.c"
                                        ))
        return 
# 1617 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1617 "utility/cjson/cJSON.c"
                  ;

    if (item->prev != 
# 1619 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1619 "utility/cjson/cJSON.c"
                         ) {

        item->prev->next = item->next;
    }
    if (item->next != 
# 1623 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1623 "utility/cjson/cJSON.c"
                         ) {

        item->next->prev = item->prev;
    }

    if (item == parent->child) {

        parent->child = item->next;
    }

    item->prev = 
# 1633 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1633 "utility/cjson/cJSON.c"
                    ;
    item->next = 
# 1634 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1634 "utility/cjson/cJSON.c"
                    ;

    return item;
}

cJSON* cJSON_DetachItemFromArray(cJSON* array, int which)
{
    if (which < 0)
        return 
# 1642 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1642 "utility/cjson/cJSON.c"
                  ;

    return cJSON_DetachItemViaPointer(array, get_array_item(array, (size_t)which));
}

void cJSON_DeleteItemFromArray(cJSON* array, int which)
{
    cJSON_Delete(cJSON_DetachItemFromArray(array, which));
}

cJSON* cJSON_DetachItemFromObject(cJSON* object, const char* string)
{
    cJSON* to_detach = cJSON_GetObjectItem(object, string);

    return cJSON_DetachItemViaPointer(object, to_detach);
}

cJSON* cJSON_DetachItemFromObjectCaseSensitive(cJSON* object, const char* string)
{
    cJSON* to_detach = cJSON_GetObjectItemCaseSensitive(object, string);

    return cJSON_DetachItemViaPointer(object, to_detach);
}

void cJSON_DeleteItemFromObject(cJSON* object, const char* string)
{
    cJSON_Delete(cJSON_DetachItemFromObject(object, string));
}

void cJSON_DeleteItemFromObjectCaseSensitive(cJSON* object, const char* string)
{
    cJSON_Delete(cJSON_DetachItemFromObjectCaseSensitive(object, string));
}


void cJSON_InsertItemInArray(cJSON* array, int which, cJSON* newitem)
{
    cJSON* after_inserted = 
# 1679 "utility/cjson/cJSON.c" 3 4
                           ((void *)0)
# 1679 "utility/cjson/cJSON.c"
                               ;

    if (which < 0)
        return;

    after_inserted = get_array_item(array, (size_t)which);
    if (after_inserted == 
# 1685 "utility/cjson/cJSON.c" 3 4
                         ((void *)0)
# 1685 "utility/cjson/cJSON.c"
                             ) {
        cJSON_AddItemToArray(array, newitem);
        return;
    }

    newitem->next = after_inserted;
    newitem->prev = after_inserted->prev;
    after_inserted->prev = newitem;
    if (after_inserted == array->child)
        array->child = newitem;
    else
        newitem->prev->next = newitem;
}

cJSON_bool cJSON_ReplaceItemViaPointer(cJSON* const parent, cJSON* const item, cJSON* replacement)
{
    if ((parent == 
# 1701 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1701 "utility/cjson/cJSON.c"
                      ) || (replacement == 
# 1701 "utility/cjson/cJSON.c" 3 4
                                           ((void *)0)
# 1701 "utility/cjson/cJSON.c"
                                               ) || (item == 
# 1701 "utility/cjson/cJSON.c" 3 4
                                                             ((void *)0)
# 1701 "utility/cjson/cJSON.c"
                                                                 ))
        return ((cJSON_bool)0);

    if (replacement == item)
        return ((cJSON_bool)1);

    replacement->next = item->next;
    replacement->prev = item->prev;

    if (replacement->next != 
# 1710 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 1710 "utility/cjson/cJSON.c"
                                )
        replacement->next->prev = replacement;
    if (replacement->prev != 
# 1712 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 1712 "utility/cjson/cJSON.c"
                                )
        replacement->prev->next = replacement;
    if (parent->child == item)
        parent->child = replacement;

    item->next = 
# 1717 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1717 "utility/cjson/cJSON.c"
                    ;
    item->prev = 
# 1718 "utility/cjson/cJSON.c" 3 4
                ((void *)0)
# 1718 "utility/cjson/cJSON.c"
                    ;
    cJSON_Delete(item);

    return ((cJSON_bool)1);
}

void cJSON_ReplaceItemInArray(cJSON* array, int which, cJSON* newitem)
{
    if (which < 0)
        return;

    cJSON_ReplaceItemViaPointer(array, get_array_item(array, (size_t)which), newitem);
}

static cJSON_bool replace_item_in_object(cJSON* object, const char* string, cJSON* replacement, cJSON_bool case_sensitive)
{
    if ((replacement == 
# 1734 "utility/cjson/cJSON.c" 3 4
                       ((void *)0)
# 1734 "utility/cjson/cJSON.c"
                           ) || (string == 
# 1734 "utility/cjson/cJSON.c" 3 4
                                           ((void *)0)
# 1734 "utility/cjson/cJSON.c"
                                               ))
        return ((cJSON_bool)0);


    if (!(replacement->type & 512) && (replacement->string != 
# 1738 "utility/cjson/cJSON.c" 3 4
                                                                             ((void *)0)
# 1738 "utility/cjson/cJSON.c"
                                                                                 ))
        cJSON_free(replacement->string);
    replacement->string = (char*)cJSON_strdup((const unsigned char*)string, &global_hooks);
    replacement->type &= ~512;

    cJSON_ReplaceItemViaPointer(object, get_object_item(object, string, case_sensitive), replacement);

    return ((cJSON_bool)1);
}

void cJSON_ReplaceItemInObject(cJSON* object, const char* string, cJSON* newitem)
{
    replace_item_in_object(object, string, newitem, ((cJSON_bool)0));
}

void cJSON_ReplaceItemInObjectCaseSensitive(cJSON* object, const char* string, cJSON* newitem)
{
    replace_item_in_object(object, string, newitem, ((cJSON_bool)1));
}


cJSON* cJSON_CreateNull(void)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item)
        item->type = (1 << 2);

    return item;
}

cJSON* cJSON_CreateTrue(void)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item)
        item->type = (1 << 1);

    return item;
}

cJSON* cJSON_CreateFalse(void)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item)
        item->type = (1 << 0);

    return item;
}

cJSON* cJSON_CreateBool(cJSON_bool b)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item)
        item->type = b ? (1 << 1) : (1 << 0);

    return item;
}

cJSON* cJSON_CreateNumber(double num)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item) {
        item->type = (1 << 3);
        item->valuedouble = num;


        if (num >= 0x7fffffff)
            item->valueint = 0x7fffffff;
        else if (num <= 
# 1805 "utility/cjson/cJSON.c" 3 4
                       (-0x7fffffff - 1)
# 1805 "utility/cjson/cJSON.c"
                              )
            item->valueint = 
# 1806 "utility/cjson/cJSON.c" 3 4
                            (-0x7fffffff - 1)
# 1806 "utility/cjson/cJSON.c"
                                   ;
        else
            item->valueint = (int)num;
    }

    return item;
}

cJSON* cJSON_CreateString(const char* string)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item) {
        item->type = (1 << 4);
        item->valuestring = (char*)cJSON_strdup((const unsigned char*)string, &global_hooks);
        if (!item->valuestring) {
            cJSON_Delete(item);
            return 
# 1822 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1822 "utility/cjson/cJSON.c"
                      ;
        }
    }

    return item;
}

cJSON* cJSON_CreateRaw(const char* raw)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item) {
        item->type = (1 << 7);
        item->valuestring = (char*)cJSON_strdup((const unsigned char*)raw, &global_hooks);
        if (!item->valuestring) {
            cJSON_Delete(item);
            return 
# 1837 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1837 "utility/cjson/cJSON.c"
                      ;
        }
    }

    return item;
}

cJSON* cJSON_CreateArray(void)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item)
        item->type = (1 << 5);

    return item;
}

cJSON* cJSON_CreateObject(void)
{
    cJSON* item = cJSON_New_Item(&global_hooks);
    if (item)
        item->type = (1 << 6);

    return item;
}


cJSON* cJSON_CreateIntArray(const int* numbers, int count)
{
    size_t i = 0;
    cJSON* n = 
# 1866 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1866 "utility/cjson/cJSON.c"
                  ;
    cJSON* p = 
# 1867 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1867 "utility/cjson/cJSON.c"
                  ;
    cJSON* a = 
# 1868 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1868 "utility/cjson/cJSON.c"
                  ;

    if ((count < 0) || (numbers == 
# 1870 "utility/cjson/cJSON.c" 3 4
                                  ((void *)0)
# 1870 "utility/cjson/cJSON.c"
                                      ))
        return 
# 1871 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1871 "utility/cjson/cJSON.c"
                  ;

    a = cJSON_CreateArray();
    for (i = 0; a && (i < (size_t)count); i++) {
        n = cJSON_CreateNumber(numbers[i]);
        if (!n) {
            cJSON_Delete(a);
            return 
# 1878 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1878 "utility/cjson/cJSON.c"
                      ;
        }
        if (!i)
            a->child = n;
        else
            suffix_object(p, n);
        p = n;
    }

    return a;
}

cJSON* cJSON_CreateFloatArray(const float* numbers, int count)
{
    size_t i = 0;
    cJSON* n = 
# 1893 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1893 "utility/cjson/cJSON.c"
                  ;
    cJSON* p = 
# 1894 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1894 "utility/cjson/cJSON.c"
                  ;
    cJSON* a = 
# 1895 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1895 "utility/cjson/cJSON.c"
                  ;

    if ((count < 0) || (numbers == 
# 1897 "utility/cjson/cJSON.c" 3 4
                                  ((void *)0)
# 1897 "utility/cjson/cJSON.c"
                                      ))
        return 
# 1898 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1898 "utility/cjson/cJSON.c"
                  ;

    a = cJSON_CreateArray();

    for (i = 0; a && (i < (size_t)count); i++) {
        n = cJSON_CreateNumber((double)numbers[i]);
        if (!n) {
            cJSON_Delete(a);
            return 
# 1906 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1906 "utility/cjson/cJSON.c"
                      ;
        }
        if (!i)
            a->child = n;
        else
            suffix_object(p, n);
        p = n;
    }

    return a;
}

cJSON* cJSON_CreateDoubleArray(const double* numbers, int count)
{
    size_t i = 0;
    cJSON* n = 
# 1921 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1921 "utility/cjson/cJSON.c"
                  ;
    cJSON* p = 
# 1922 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1922 "utility/cjson/cJSON.c"
                  ;
    cJSON* a = 
# 1923 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1923 "utility/cjson/cJSON.c"
                  ;

    if ((count < 0) || (numbers == 
# 1925 "utility/cjson/cJSON.c" 3 4
                                  ((void *)0)
# 1925 "utility/cjson/cJSON.c"
                                      ))
        return 
# 1926 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1926 "utility/cjson/cJSON.c"
                  ;

    a = cJSON_CreateArray();

    for (i = 0; a && (i < (size_t)count); i++) {
        n = cJSON_CreateNumber(numbers[i]);
        if (!n) {
            cJSON_Delete(a);
            return 
# 1934 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1934 "utility/cjson/cJSON.c"
                      ;
        }
        if (!i)
            a->child = n;
        else
            suffix_object(p, n);
        p = n;
    }

    return a;
}

cJSON* cJSON_CreateStringArray(const char** strings, int count)
{
    size_t i = 0;
    cJSON* n = 
# 1949 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1949 "utility/cjson/cJSON.c"
                  ;
    cJSON* p = 
# 1950 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1950 "utility/cjson/cJSON.c"
                  ;
    cJSON* a = 
# 1951 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1951 "utility/cjson/cJSON.c"
                  ;

    if ((count < 0) || (strings == 
# 1953 "utility/cjson/cJSON.c" 3 4
                                  ((void *)0)
# 1953 "utility/cjson/cJSON.c"
                                      ))
        return 
# 1954 "utility/cjson/cJSON.c" 3 4
              ((void *)0)
# 1954 "utility/cjson/cJSON.c"
                  ;

    a = cJSON_CreateArray();

    for (i = 0; a && (i < (size_t)count); i++) {
        n = cJSON_CreateString(strings[i]);
        if (!n) {
            cJSON_Delete(a);
            return 
# 1962 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1962 "utility/cjson/cJSON.c"
                      ;
        }
        if (!i)
            a->child = n;
        else
            suffix_object(p, n);
        p = n;
    }

    return a;
}


cJSON* cJSON_Duplicate(const cJSON* item, cJSON_bool recurse)
{
    cJSON* newitem = 
# 1977 "utility/cjson/cJSON.c" 3 4
                    ((void *)0)
# 1977 "utility/cjson/cJSON.c"
                        ;
    cJSON* child = 
# 1978 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 1978 "utility/cjson/cJSON.c"
                      ;
    cJSON* next = 
# 1979 "utility/cjson/cJSON.c" 3 4
                 ((void *)0)
# 1979 "utility/cjson/cJSON.c"
                     ;
    cJSON* newchild = 
# 1980 "utility/cjson/cJSON.c" 3 4
                     ((void *)0)
# 1980 "utility/cjson/cJSON.c"
                         ;


    if (!item)
        goto fail;

    newitem = cJSON_New_Item(&global_hooks);
    if (!newitem)
        goto fail;

    newitem->type = item->type & (~256);
    newitem->valueint = item->valueint;
    newitem->valuedouble = item->valuedouble;
    if (item->valuestring) {
        newitem->valuestring = (char*)cJSON_strdup((unsigned char*)item->valuestring, &global_hooks);
        if (!newitem->valuestring)
            goto fail;
    }
    if (item->string) {
        newitem->string = (item->type & 512) ? item->string : (char*)cJSON_strdup((unsigned char*)item->string, &global_hooks);
        if (!newitem->string)
            goto fail;
    }

    if (!recurse)
        return newitem;

    child = item->child;
    while (child != 
# 2008 "utility/cjson/cJSON.c" 3 4
                   ((void *)0)
# 2008 "utility/cjson/cJSON.c"
                       ) {
        newchild = cJSON_Duplicate(child, ((cJSON_bool)1));
        if (!newchild)
            goto fail;
        if (next != 
# 2012 "utility/cjson/cJSON.c" 3 4
                   ((void *)0)
# 2012 "utility/cjson/cJSON.c"
                       ) {

            next->next = newchild;
            newchild->prev = next;
            next = newchild;
        } else {

            newitem->child = newchild;
            next = newchild;
        }
        child = child->next;
    }

    return newitem;

fail:
    if (newitem != 
# 2028 "utility/cjson/cJSON.c" 3 4
                  ((void *)0)
# 2028 "utility/cjson/cJSON.c"
                      )
        cJSON_Delete(newitem);

    return 
# 2031 "utility/cjson/cJSON.c" 3 4
          ((void *)0)
# 2031 "utility/cjson/cJSON.c"
              ;
}

void cJSON_Minify(char* json)
{
    unsigned char* into = (unsigned char*)json;

    if (json == 
# 2038 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2038 "utility/cjson/cJSON.c"
                   )
        return;

    while (*json) {
        if (*json == ' ')
            json++;
        else if (*json == '\t') {

            json++;
        } else if (*json == '\r')
            json++;
        else if (*json == '\n')
            json++;
        else if ((*json == '/') && (json[1] == '/')) {

            while (*json && (*json != '\n'))
                json++;
        } else if ((*json == '/') && (json[1] == '*')) {

            while (*json && !((*json == '*') && (json[1] == '/')))
                json++;
            json += 2;
        } else if (*json == '\"') {

            *into++ = (unsigned char) * json++;
            while (*json && (*json != '\"')) {
                if (*json == '\\')
                    *into++ = (unsigned char) * json++;
                *into++ = (unsigned char) * json++;
            }
            *into++ = (unsigned char) * json++;
        } else {

            *into++ = (unsigned char) * json++;
        }
    }


    *into = '\0';
}

cJSON_bool cJSON_IsInvalid(const cJSON* const item)
{
    if (item == 
# 2081 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2081 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (0);
}

cJSON_bool cJSON_IsFalse(const cJSON* const item)
{
    if (item == 
# 2089 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2089 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 0);
}

cJSON_bool cJSON_IsTrue(const cJSON* const item)
{
    if (item == 
# 2097 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2097 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xff) == (1 << 1);
}


cJSON_bool cJSON_IsBool(const cJSON* const item)
{
    if (item == 
# 2106 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2106 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & ((1 << 1) | (1 << 0))) != 0;
}
cJSON_bool cJSON_IsNull(const cJSON* const item)
{
    if (item == 
# 2113 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2113 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 2);
}

cJSON_bool cJSON_IsNumber(const cJSON* const item)
{
    if (item == 
# 2121 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2121 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 3);
}

cJSON_bool cJSON_IsString(const cJSON* const item)
{
    if (item == 
# 2129 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2129 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 4);
}

cJSON_bool cJSON_IsArray(const cJSON* const item)
{
    if (item == 
# 2137 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2137 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 5);
}

cJSON_bool cJSON_IsObject(const cJSON* const item)
{
    if (item == 
# 2145 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2145 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 6);
}

cJSON_bool cJSON_IsRaw(const cJSON* const item)
{
    if (item == 
# 2153 "utility/cjson/cJSON.c" 3 4
               ((void *)0)
# 2153 "utility/cjson/cJSON.c"
                   )
        return ((cJSON_bool)0);

    return (item->type & 0xFF) == (1 << 7);
}

cJSON_bool cJSON_Compare(const cJSON* const a, const cJSON* const b, const cJSON_bool case_sensitive)
{
    if ((a == 
# 2161 "utility/cjson/cJSON.c" 3 4
             ((void *)0)
# 2161 "utility/cjson/cJSON.c"
                 ) || (b == 
# 2161 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 2161 "utility/cjson/cJSON.c"
                                ) || ((a->type & 0xFF) != (b->type & 0xFF)) || cJSON_IsInvalid(a))
        return ((cJSON_bool)0);


    switch (a->type & 0xFF) {
    case (1 << 0):
    case (1 << 1):
    case (1 << 2):
    case (1 << 3):
    case (1 << 4):
    case (1 << 7):
    case (1 << 5):
    case (1 << 6):
        break;

    default:
        return ((cJSON_bool)0);
    }


    if (a == b)
        return ((cJSON_bool)1);

    switch (a->type & 0xFF) {

    case (1 << 0):
    case (1 << 1):
    case (1 << 2):
        return ((cJSON_bool)1);

    case (1 << 3):
        if (a->valuedouble == b->valuedouble)
            return ((cJSON_bool)1);
        return ((cJSON_bool)0);

    case (1 << 4):
    case (1 << 7):
        if ((a->valuestring == 
# 2198 "utility/cjson/cJSON.c" 3 4
                              ((void *)0)
# 2198 "utility/cjson/cJSON.c"
                                  ) || (b->valuestring == 
# 2198 "utility/cjson/cJSON.c" 3 4
                                                          ((void *)0)
# 2198 "utility/cjson/cJSON.c"
                                                              ))
            return ((cJSON_bool)0);
        if (strcmp(a->valuestring, b->valuestring) == 0)
            return ((cJSON_bool)1);

        return ((cJSON_bool)0);

    case (1 << 5): {
        cJSON* a_element = a->child;
        cJSON* b_element = b->child;

        for (; (a_element != 
# 2209 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 2209 "utility/cjson/cJSON.c"
                                ) && (b_element != 
# 2209 "utility/cjson/cJSON.c" 3 4
                                                   ((void *)0)
# 2209 "utility/cjson/cJSON.c"
                                                       );) {
            if (!cJSON_Compare(a_element, b_element, case_sensitive))
                return ((cJSON_bool)0);

            a_element = a_element->next;
            b_element = b_element->next;
        }


        if (a_element != b_element)
            return ((cJSON_bool)0);

        return ((cJSON_bool)1);
    }

    case (1 << 6): {
        cJSON* a_element = 
# 2225 "utility/cjson/cJSON.c" 3 4
                          ((void *)0)
# 2225 "utility/cjson/cJSON.c"
                              ;
        cJSON* b_element = 
# 2226 "utility/cjson/cJSON.c" 3 4
                          ((void *)0)
# 2226 "utility/cjson/cJSON.c"
                              ;
        for(a_element = (a != 
# 2227 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 2227 "utility/cjson/cJSON.c"
       ) ? (a)->child : 
# 2227 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 2227 "utility/cjson/cJSON.c"
       ; a_element != 
# 2227 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 2227 "utility/cjson/cJSON.c"
       ; a_element = a_element->next) {

            b_element = get_object_item(b, a_element->string, case_sensitive);
            if (b_element == 
# 2230 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 2230 "utility/cjson/cJSON.c"
                                )
                return ((cJSON_bool)0);

            if (!cJSON_Compare(a_element, b_element, case_sensitive))
                return ((cJSON_bool)0);
        }



        for(b_element = (b != 
# 2239 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 2239 "utility/cjson/cJSON.c"
       ) ? (b)->child : 
# 2239 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 2239 "utility/cjson/cJSON.c"
       ; b_element != 
# 2239 "utility/cjson/cJSON.c" 3 4
       ((void *)0)
# 2239 "utility/cjson/cJSON.c"
       ; b_element = b_element->next) {
            a_element = get_object_item(a, b_element->string, case_sensitive);
            if (a_element == 
# 2241 "utility/cjson/cJSON.c" 3 4
                            ((void *)0)
# 2241 "utility/cjson/cJSON.c"
                                )
                return ((cJSON_bool)0);

            if (!cJSON_Compare(b_element, a_element, case_sensitive))
                return ((cJSON_bool)0);
        }

        return ((cJSON_bool)1);
    }

    default:
        return ((cJSON_bool)0);
    }
}

void* cJSON_malloc(size_t size)
{
    return global_hooks.allocate(size);
}

void cJSON_free(void* object)
{
    global_hooks.deallocate(object);
}

# 1 "kernel/vcall/aos/aos_rhino.c"
# 1 "/home/stone/Documents/Ali_IOT//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kernel/vcall/aos/aos_rhino.c"




# 1 "./kernel/rhino/core/include/k_api.h" 1
# 12 "./kernel/rhino/core/include/k_api.h"
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
# 13 "./kernel/rhino/core/include/k_api.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 1 3 4
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 49 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 201 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h" 3 4
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
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 130 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int intmax_t;
# 139 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 2 3 4
# 14 "./kernel/rhino/core/include/k_api.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 1 3
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 1 3
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_types.h" 1 3
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


# 15 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./board/mk3060/./k_config.h" 1
# 16 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_default_config.h" 1
# 17 "./kernel/rhino/core/include/k_api.h" 2
# 1 "././platform/arch/arm/armv5/./gcc/k_types.h" 1
# 14 "././platform/arch/arm/armv5/./gcc/k_types.h"

# 14 "././platform/arch/arm/armv5/./gcc/k_types.h"
typedef char name_t;
typedef uint32_t sem_count_t;
typedef uint32_t cpu_stack_t;
typedef uint32_t hr_timer_t;
typedef uint32_t lr_timer_t;
typedef uint32_t mutex_nested_t;
typedef uint8_t suspend_nested_t;
typedef uint64_t ctx_switch_t;
typedef uint32_t cpu_cpsr_t;
# 18 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_err.h" 1







typedef enum {
    RHINO_SUCCESS = 0u,
    RHINO_SYS_FATAL_ERR,
    RHINO_SYS_SP_ERR,
    RHINO_RUNNING,
    RHINO_STOPPED,
    RHINO_INV_PARAM,
    RHINO_NULL_PTR,
    RHINO_INV_ALIGN,
    RHINO_KOBJ_TYPE_ERR,
    RHINO_KOBJ_DEL_ERR,
    RHINO_KOBJ_DOCKER_EXIST,
    RHINO_KOBJ_BLK,
    RHINO_KOBJ_SET_FULL,
    RHINO_NOTIFY_FUNC_EXIST,

    RHINO_MM_POOL_SIZE_ERR = 100u,
    RHINO_MM_ALLOC_SIZE_ERR,
    RHINO_MM_FREE_ADDR_ERR,
    RHINO_MM_CORRUPT_ERR,
    RHINO_DYN_MEM_PROC_ERR,
    RHINO_NO_MEM,
    RHINO_RINGBUF_FULL,
    RHINO_RINGBUF_EMPTY,

    RHINO_SCHED_DISABLE = 200u,
    RHINO_SCHED_ALREADY_ENABLED,
    RHINO_SCHED_LOCK_COUNT_OVF,
    RHINO_INV_SCHED_WAY,

    RHINO_TASK_INV_STACK_SIZE = 300u,
    RHINO_TASK_NOT_SUSPENDED,
    RHINO_TASK_DEL_NOT_ALLOWED,
    RHINO_TASK_SUSPEND_NOT_ALLOWED,
    RHINO_SUSPENDED_COUNT_OVF,
    RHINO_BEYOND_MAX_PRI,
    RHINO_PRI_CHG_NOT_ALLOWED,
    RHINO_INV_TASK_STATE,
    RHINO_IDLE_TASK_EXIST,

    RHINO_NO_PEND_WAIT = 400u,
    RHINO_BLK_ABORT,
    RHINO_BLK_TIMEOUT,
    RHINO_BLK_DEL,
    RHINO_BLK_INV_STATE,
    RHINO_BLK_POOL_SIZE_ERR,

    RHINO_TIMER_STATE_INV = 500u,

    RHINO_NO_THIS_EVENT_OPT = 600u,

    RHINO_BUF_QUEUE_INV_SIZE = 700u,
    RHINO_BUF_QUEUE_SIZE_ZERO,
    RHINO_BUF_QUEUE_FULL,
    RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW,
    RHINO_QUEUE_FULL,
    RHINO_QUEUE_NOT_FULL,

    RHINO_SEM_OVF = 800u,
    RHINO_SEM_TASK_WAITING,

    RHINO_MUTEX_NOT_RELEASED_BY_OWNER = 900u,
    RHINO_MUTEX_OWNER_NESTED,
    RHINO_MUTEX_NESTED_OVF,

    RHINO_NOT_CALLED_BY_INTRPT = 1000u,
    RHINO_TRY_AGAIN,

    RHINO_WORKQUEUE_EXIST = 1100u,
    RHINO_WORKQUEUE_NOT_EXIST,
    RHINO_WORKQUEUE_WORK_EXIST,
    RHINO_WORKQUEUE_BUSY,
    RHINO_WORKQUEUE_WORK_RUNNING,

    RHINO_TASK_STACK_OVF = 1200u,
    RHINO_INTRPT_STACK_OVF
} kstat_t;

typedef void (*krhino_err_proc_t)(kstat_t err);

extern krhino_err_proc_t g_err_proc;
# 19 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_critical.h" 1
# 20 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_spin_lock.h" 1







typedef struct {



    cpu_cpsr_t cpsr;
} kspinlock_t;
# 21 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_sys.h" 1
# 18 "./kernel/rhino/core/include/k_sys.h"
typedef uint64_t sys_time_t;
typedef int64_t sys_time_i_t;
typedef uint64_t idle_count_t;
typedef uint64_t tick_t;
typedef int64_t tick_i_t;
# 36 "./kernel/rhino/core/include/k_sys.h"
kstat_t krhino_init(void);





kstat_t krhino_start(void);





kstat_t krhino_intrpt_enter(void);




void krhino_intrpt_exit(void);




void krhino_intrpt_stack_ovf_check(void);




tick_t krhino_next_sleep_ticks_get(void);





size_t krhino_global_space_get(void);





uint32_t krhino_version_get(void);
# 22 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_bitmap.h" 1
# 33 "./kernel/rhino/core/include/k_bitmap.h"
static inline void krhino_bitmap_set(uint32_t *bitmap, int32_t nr)
{
    bitmap[((nr) >> 5U)] |= (1UL << (32U - 1U - ((nr) & 0X0000001F)));
}







static inline void krhino_bitmap_clear(uint32_t *bitmap, int32_t nr)
{
    bitmap[((nr) >> 5U)] &= ~(1UL << (32U - 1U - ((nr) & 0X0000001F)));
}



static inline uint8_t krhino_clz32(uint32_t x)
{
    uint8_t n = 0;

    if (x == 0) {
        return 32;
    }

    if ((x & 0XFFFF0000) == 0) {
        x <<= 16;
        n += 16;
    }
    if ((x & 0XFF000000) == 0) {
        x <<= 8;
        n += 8;
    }
    if ((x & 0XF0000000) == 0) {
        x <<= 4;
        n += 4;
    }
    if ((x & 0XC0000000) == 0) {
        x <<= 2;
        n += 2;
    }
    if ((x & 0X80000000) == 0) {
        n += 1;
    }

    return n;
}



static inline uint8_t krhino_ctz32(uint32_t x)
{
    uint8_t n = 0;

    if (x == 0) {
        return 32;
    }

    if ((x & 0X0000FFFF) == 0) {
        x >>= 16;
        n += 16;
    }
    if ((x & 0X000000FF) == 0) {
        x >>= 8;
        n += 8;
    }
    if ((x & 0X0000000F) == 0) {
        x >>= 4;
        n += 4;
    }
    if ((x & 0X00000003) == 0) {
        x >>= 2;
        n += 2;
    }
    if ((x & 0X00000001) == 0) {
        n += 1;
    }

    return n;
}







static inline int32_t krhino_find_first_bit(uint32_t *bitmap)
{
    int32_t nr = 0;
    uint32_t tmp = 0;

    while (*bitmap == 0UL) {
        nr += 32U;
        bitmap++;
    }

    tmp = *bitmap;


    if (!(tmp & 0XFFFF0000)) {
        tmp <<= 16;
        nr += 16;
    }

    if (!(tmp & 0XFF000000)) {
        tmp <<= 8;
        nr += 8;
    }

    if (!(tmp & 0XF0000000)) {
        tmp <<= 4;
        nr += 4;
    }

    if (!(tmp & 0XC0000000)) {
        tmp <<= 2;
        nr += 2;
    }

    if (!(tmp & 0X80000000)) {
        nr += 1;
    }




    return nr;
}
# 23 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_list.h" 1







typedef struct klist_s {
    struct klist_s *next;
    struct klist_s *prev;
} klist_t;



static inline void klist_init(klist_t *list_head)
{
    list_head->next = list_head;
    list_head->prev = list_head;
}

static inline uint8_t is_klist_empty(klist_t *list)
{
    return (list->next == list);
}

static inline void klist_insert(klist_t *head, klist_t *element)
{
    element->prev = head->prev;
    element->next = head;

    head->prev->next = element;
    head->prev = element;
}

static inline void klist_add(klist_t *head, klist_t *element)
{
    element->prev = head;
    element->next = head->next;

    head->next->prev = element;
    head->next = element;
}

static inline void klist_rm(klist_t *element)
{
    element->prev->next = element->next;
    element->next->prev = element->prev;
}

static inline void klist_rm_init(klist_t *element)
{
    element->prev->next = element->next;
    element->next->prev = element->prev;

    element->next = element->prev = element;
}
# 24 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_obj.h" 1







typedef enum {
    BLK_POLICY_PRI = 0u,
    BLK_POLICY_FIFO
} blk_policy_t;

typedef enum {
    BLK_FINISH = 0,
    BLK_ABORT,
    BLK_TIMEOUT,
    BLK_DEL,
    BLK_INVALID
} blk_state_t;

typedef enum {
    RHINO_OBJ_TYPE_NONE = 0,
    RHINO_SEM_OBJ_TYPE,
    RHINO_MUTEX_OBJ_TYPE,
    RHINO_QUEUE_OBJ_TYPE,
    RHINO_BUF_QUEUE_OBJ_TYPE,
    RHINO_TIMER_OBJ_TYPE,
    RHINO_EVENT_OBJ_TYPE,
    RHINO_MM_OBJ_TYPE
} kobj_type_t;

typedef struct blk_obj {
    klist_t blk_list;
    const name_t *name;
    blk_policy_t blk_policy;
    kobj_type_t obj_type;
} blk_obj_t;

typedef struct {
    klist_t task_head;
    klist_t mutex_head;


    klist_t mblkpool_head;



    klist_t sem_head;



    klist_t queue_head;



    klist_t event_head;



    klist_t buf_queue_head;

} kobj_list_t;
# 25 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_sched.h" 1
# 13 "./kernel/rhino/core/include/k_sched.h"
typedef struct {
    klist_t *cur_list_item[62];
    uint32_t task_bit_map[((62 + 31) / 32)];
    uint8_t highest_pri;
} runqueue_t;





kstat_t krhino_sched_disable(void);





kstat_t krhino_sched_enable(void);
# 26 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_task.h" 1







typedef enum {
    K_SEED,
    K_RDY,
    K_PEND,
    K_SUSPENDED,
    K_PEND_SUSPENDED,
    K_SLEEP,
    K_SLEEP_SUSPENDED,
    K_DELETED,
} task_stat_t;



typedef struct {


    void *task_stack;

    const name_t *task_name;


    void *user_info[2];


    cpu_stack_t *task_stack_base;
    uint32_t stack_size;
    klist_t task_list;


    suspend_nested_t suspend_count;


    struct mutex_s *mutex_list;


    klist_t task_stats_item;


    klist_t tick_list;
    tick_t tick_match;
    tick_t tick_remain;
    klist_t *tick_head;

    void *msg;


    size_t bq_msg_size;


    task_stat_t task_state;
    blk_state_t blk_state;


    blk_obj_t *blk_obj;


    struct sem_s *task_sem_obj;
# 86 "./kernel/rhino/core/include/k_task.h"
    uint32_t time_slice;
    uint32_t time_total;



    uint32_t pend_flags;
    void *pend_info;
    uint8_t pend_option;



    uint8_t sched_policy;


    uint8_t cpu_num;







    uint8_t prio;

    uint8_t b_prio;
    uint8_t mm_alloc_flag;
} ktask_t;

typedef void (*task_entry_t)(void *arg);
# 129 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_create(ktask_t *task, const name_t *name, void *arg,
                           uint8_t prio, tick_t ticks, cpu_stack_t *stack_buf,
                           size_t stack_size, task_entry_t entry, uint8_t autorun);
# 157 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_dyn_create(ktask_t **task, const name_t *name, void *arg,
                               uint8_t pri,
                               tick_t ticks, size_t stack,
                               task_entry_t entry, uint8_t autorun);
# 175 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_del(ktask_t *task);






kstat_t krhino_task_dyn_del(ktask_t *task);
# 192 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_sleep(tick_t dly);





kstat_t krhino_task_yield(void);





ktask_t *krhino_cur_task_get(void);







kstat_t krhino_task_suspend(ktask_t *task);






kstat_t krhino_task_resume(ktask_t *task);
# 228 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_stack_min_free(ktask_t *task, size_t *free);
# 237 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_stack_cur_free(ktask_t *task, size_t *free);
# 246 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_pri_change(ktask_t *task, uint8_t pri, uint8_t *old_pri);







kstat_t krhino_task_wait_abort(ktask_t *task);
# 264 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_time_slice_set(ktask_t *task, size_t slice);







kstat_t krhino_sched_policy_set(ktask_t *task, uint8_t policy);







kstat_t krhino_sched_policy_get(ktask_t *task, uint8_t *policy);
# 290 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_info_set(ktask_t *task, size_t idx, void *info);







kstat_t krhino_task_info_get(ktask_t *task, size_t idx, void **info);






void krhino_task_deathbed(void);
# 27 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_ringbuf.h" 1
# 33 "./kernel/rhino/core/include/k_ringbuf.h"
typedef struct {
    uint8_t *buf;
    uint8_t *end;
    uint8_t *head;
    uint8_t *tail;
    size_t freesize;
    size_t type;
    size_t blk_size;
} k_ringbuf_t;
# 28 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_queue.h" 1
# 11 "./kernel/rhino/core/include/k_queue.h"
typedef struct {
    void **queue_start;
    size_t size;
    size_t cur_num;
    size_t peak_num;
} msg_q_t;

typedef struct {
    msg_q_t msg_q;
    klist_t *pend_entry;
} msg_info_t;

typedef struct queue_s {
    blk_obj_t blk_obj;
    k_ringbuf_t ringbuf;
    msg_q_t msg_q;

    klist_t queue_item;

    uint8_t mm_alloc_flag;
} kqueue_t;
# 41 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_create(kqueue_t *queue, const name_t *name, void **start,
                            size_t msg_num);






kstat_t krhino_queue_del(kqueue_t *queue);
# 59 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_dyn_create(kqueue_t **queue, const name_t *name,
                                size_t msg_num);






kstat_t krhino_queue_dyn_del(kqueue_t *queue);
# 76 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_back_send(kqueue_t *queue, void *msg);







kstat_t krhino_queue_all_send(kqueue_t *queue, void *msg);
# 93 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_recv(kqueue_t *queue, tick_t ticks, void **msg);






kstat_t krhino_queue_is_full(kqueue_t *queue);






kstat_t krhino_queue_flush(kqueue_t *queue);







kstat_t krhino_queue_info_get(kqueue_t *queue, msg_info_t *info);
# 29 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_buf_queue.h" 1







typedef struct {
    blk_obj_t blk_obj;
    void *buf;
    k_ringbuf_t ringbuf;
    size_t max_msg_size;
    size_t cur_num;
    size_t peak_num;
    size_t min_free_buf_size;

    klist_t buf_queue_item;

    uint8_t mm_alloc_flag;
} kbuf_queue_t;

typedef struct {
    size_t buf_size;
    size_t max_msg_size;
    size_t cur_num;
    size_t peak_num;
    size_t free_buf_size;
    size_t min_free_buf_size;
} kbuf_queue_info_t;
# 40 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_create(kbuf_queue_t *queue, const name_t *name,
                                void *buf,
                                size_t size, size_t max_msg);
# 53 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_fix_buf_queue_create(kbuf_queue_t *queue, const name_t *name,
                                    void *buf, size_t msg_size, size_t msg_num);






kstat_t krhino_buf_queue_del(kbuf_queue_t *queue);
# 72 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_dyn_create(kbuf_queue_t **queue, const name_t *name,
                                    size_t size, size_t max_msg);






kstat_t krhino_buf_queue_dyn_del(kbuf_queue_t *queue);
# 90 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_send(kbuf_queue_t *queue, void *msg, size_t size);
# 101 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_recv(kbuf_queue_t *queue, tick_t ticks, void *msg,
                              size_t *size);






kstat_t krhino_buf_queue_flush(kbuf_queue_t *queue);
# 118 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_info_get(kbuf_queue_t *queue, kbuf_queue_info_t *info);
# 30 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_sem.h" 1
# 11 "./kernel/rhino/core/include/k_sem.h"
typedef struct sem_s {
    blk_obj_t blk_obj;
    sem_count_t count;
    sem_count_t peak_count;

    klist_t sem_item;

    uint8_t mm_alloc_flag;
} ksem_t;
# 28 "./kernel/rhino/core/include/k_sem.h"
kstat_t krhino_sem_create(ksem_t *sem, const name_t *name, sem_count_t count);






kstat_t krhino_sem_del(ksem_t *sem);
# 45 "./kernel/rhino/core/include/k_sem.h"
kstat_t krhino_sem_dyn_create(ksem_t **sem, const name_t *name,
                              sem_count_t count);






kstat_t krhino_sem_dyn_del(ksem_t *sem);







kstat_t krhino_sem_give(ksem_t *sem);






kstat_t krhino_sem_give_all(ksem_t *sem);







kstat_t krhino_sem_take(ksem_t *sem, tick_t ticks);







kstat_t krhino_sem_count_set(ksem_t *sem, sem_count_t count);







kstat_t krhino_sem_count_get(ksem_t *sem, sem_count_t *count);
# 31 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_task_sem.h" 1
# 16 "./kernel/rhino/core/include/k_task_sem.h"
kstat_t krhino_task_sem_create(ktask_t *task, ksem_t *sem, const name_t *name,
                               size_t count);






kstat_t krhino_task_sem_del(ktask_t *task);






kstat_t krhino_task_sem_give(ktask_t *task);






kstat_t krhino_task_sem_take(tick_t ticks);







kstat_t krhino_task_sem_count_set(ktask_t *task, sem_count_t count);







kstat_t krhino_task_sem_count_get(ktask_t *task, sem_count_t *count);
# 32 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mutex.h" 1







typedef struct mutex_s {
    blk_obj_t blk_obj;
    ktask_t *mutex_task;
    struct mutex_s *mutex_list;
    mutex_nested_t owner_nested;


    klist_t mutex_item;


    uint8_t mm_alloc_flag;
} kmutex_t;







kstat_t krhino_mutex_create(kmutex_t *mutex, const name_t *name);






kstat_t krhino_mutex_del(kmutex_t *mutex);
# 43 "./kernel/rhino/core/include/k_mutex.h"
kstat_t krhino_mutex_dyn_create(kmutex_t **mutex, const name_t *name);






kstat_t krhino_mutex_dyn_del(kmutex_t *mutex);
# 59 "./kernel/rhino/core/include/k_mutex.h"
kstat_t krhino_mutex_lock(kmutex_t *mutex, tick_t ticks);






kstat_t krhino_mutex_unlock(kmutex_t *mutex);
# 33 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_timer.h" 1







enum {
    TIMER_CMD_CB = 0u,
    TIMER_CMD_START,
    TIMER_CMD_STOP,
    TIMER_CMD_CHG,
    TIMER_ARG_CHG,
    TIMER_ARG_CHG_AUTO,
    TIMER_CMD_DEL,
    TIMER_CMD_DYN_DEL
};

typedef void (*timer_cb_t)(void *timer, void *arg);

typedef struct {
    klist_t timer_list;
    klist_t *to_head;
    const name_t *name;
    timer_cb_t cb;
    void *timer_cb_arg;
    sys_time_t match;
    sys_time_t remain;
    sys_time_t init_count;
    sys_time_t round_ticks;
    void *priv;
    kobj_type_t obj_type;
    uint8_t timer_state;
    uint8_t mm_alloc_flag;
} ktimer_t;

typedef struct {
    ktimer_t *timer;
    uint8_t cb_num;
    sys_time_t first;
    union {
        sys_time_t round;
        void *arg;
    } u;
} k_timer_queue_cb;

typedef enum {
    TIMER_DEACTIVE = 0u,
    TIMER_ACTIVE
} k_timer_state_t;
# 63 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_create(ktimer_t *timer, const name_t *name, timer_cb_t cb,
                            sys_time_t first, sys_time_t round, void *arg, uint8_t auto_run);






kstat_t krhino_timer_del(ktimer_t *timer);
# 85 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_dyn_create(ktimer_t **timer, const name_t *name,
                                timer_cb_t cb,
                                sys_time_t first, sys_time_t round, void *arg, uint8_t auto_run);





kstat_t krhino_timer_dyn_del(ktimer_t *timer);







kstat_t krhino_timer_start(ktimer_t *timer);






kstat_t krhino_timer_stop(ktimer_t *timer);
# 117 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_change(ktimer_t *timer, sys_time_t first, sys_time_t round);
# 126 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_arg_change_auto(ktimer_t *timer, void *arg);







kstat_t krhino_timer_arg_change(ktimer_t *timer, void *arg);
# 34 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_time.h" 1
# 12 "./kernel/rhino/core/include/k_time.h"
void krhino_tick_proc(void);





sys_time_t krhino_sys_time_get(void);





sys_time_t krhino_sys_tick_get(void);






tick_t krhino_ms_to_ticks(sys_time_t ms);






sys_time_t krhino_ticks_to_ms(tick_t ticks);
# 35 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_event.h" 1







typedef struct {
    blk_obj_t blk_obj;
    uint32_t flags;


    klist_t event_item;


    uint8_t mm_alloc_flag;
} kevent_t;
# 34 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_create(kevent_t *event, const name_t *name, uint32_t flags);






kstat_t krhino_event_del(kevent_t *event);
# 51 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_dyn_create(kevent_t **event, const name_t *name,
                                uint32_t flags);






kstat_t krhino_event_dyn_del(kevent_t *event);
# 71 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_get(kevent_t *event, uint32_t flags, uint8_t opt,
                         uint32_t *actl_flags, tick_t ticks);
# 81 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_set(kevent_t *event, uint32_t flags, uint8_t opt);
# 36 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_stats.h" 1
# 9 "./kernel/rhino/core/include/k_stats.h"
void kobj_list_init(void);






void krhino_stack_ovf_check(void);
# 37 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mm_debug.h" 1
# 15 "./kernel/rhino/core/include/k_mm_debug.h"
typedef struct {
    void *start;
    void *end;
} mm_scan_region_t;


# 1 "./kernel/rhino/core/include/k_mm.h" 1
# 78 "./kernel/rhino/core/include/k_mm.h"
typedef struct free_ptr_struct {
    struct k_mm_list_struct *prev;
    struct k_mm_list_struct *next;
} free_ptr_t;

typedef struct k_mm_list_struct {

    size_t dye;
    size_t owner;

    struct k_mm_list_struct *prev;


    size_t buf_size;
    union {
        struct free_ptr_struct free_ptr;
        uint8_t buffer[1];
    } mbinfo;
} k_mm_list_t;

typedef struct k_mm_region_info_struct {
    k_mm_list_t *end;
    struct k_mm_region_info_struct *next;
} k_mm_region_info_t;


typedef struct {



    kspinlock_t mm_lock;

    k_mm_region_info_t *regioninfo;

    void *fix_pool;


    size_t used_size;
    size_t maxused_size;
    size_t free_size;

    size_t alloc_times[(19 - 6 + 2)];


    uint32_t free_bitmap;


    k_mm_list_t *freelist[(19 - 6 + 2)];
} k_mm_head;

kstat_t krhino_init_mm_head(k_mm_head **ppmmhead, void *addr, size_t len );
kstat_t krhino_deinit_mm_head(k_mm_head *mmhead);
kstat_t krhino_add_mm_region(k_mm_head *mmhead, void *addr, size_t len);

void *k_mm_alloc(k_mm_head *mmhead, size_t size);
void k_mm_free(k_mm_head *mmhead, void *ptr);
void *k_mm_realloc(k_mm_head *mmhead, void *oldmem, size_t new_size);






void *krhino_mm_alloc(size_t size);





void krhino_mm_free(void *ptr);







void *krhino_mm_realloc(void *oldmem, size_t newsize);
# 22 "./kernel/rhino/core/include/k_mm_debug.h" 2

void krhino_owner_attach(k_mm_head *mmhead, void *addr, size_t allocator);


uint32_t krhino_mm_leak_region_init(void *start, void *end);

uint32_t dumpsys_mm_info_func(uint32_t len);

uint32_t dump_mmleak(void);
# 38 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mm_blk.h" 1







typedef struct {
    const name_t *pool_name;
    void *pool_end;
    void *pool_start;
    size_t blk_size;
    size_t blk_avail;
    size_t blk_whole;
    uint8_t *avail_list;
    kspinlock_t blk_lock;

    klist_t mblkpool_stats_item;

} mblk_pool_t;
# 31 "./kernel/rhino/core/include/k_mm_blk.h"
kstat_t krhino_mblk_pool_init(mblk_pool_t *pool, const name_t *name,
                              void *pool_start,
                              size_t blk_size, size_t pool_size);







kstat_t krhino_mblk_alloc(mblk_pool_t *pool, void **blk);







kstat_t krhino_mblk_free(mblk_pool_t *pool, void *blk);
# 39 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mm_region.h" 1







typedef struct {
    uint8_t *start;
    size_t len;
} k_mm_region_t;
# 40 "./kernel/rhino/core/include/k_api.h" 2

# 1 "./kernel/rhino/core/include/k_workqueue.h" 1
# 11 "./kernel/rhino/core/include/k_workqueue.h"
typedef void (*work_handle_t)(void *arg);

typedef struct {
    klist_t work_node;
    work_handle_t handle;
    void *arg;
    tick_t dly;
    ktimer_t *timer;
    void *wq;
    uint8_t work_exit;
} kwork_t;

typedef struct {
    klist_t workqueue_node;
    klist_t work_list;
    kwork_t *work_current;
    const name_t *name;
    ktask_t worker;
    ksem_t sem;
} kworkqueue_t;
# 41 "./kernel/rhino/core/include/k_workqueue.h"
kstat_t krhino_workqueue_create(kworkqueue_t *workqueue, const name_t *name,
                                uint8_t pri, cpu_stack_t *stack_buf, size_t stack_size);
# 52 "./kernel/rhino/core/include/k_workqueue.h"
kstat_t krhino_work_init(kwork_t *work, work_handle_t handle, void *arg,
                         tick_t dly);







kstat_t krhino_work_run(kworkqueue_t *workqueue, kwork_t *work);






kstat_t krhino_work_sched(kwork_t *work);






kstat_t krhino_work_cancel(kwork_t *work);
# 42 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_internal.h" 1







extern kstat_t g_sys_stat;
extern uint8_t g_idle_task_spawned[1];

extern runqueue_t g_ready_queue;


extern uint8_t g_sched_lock[1];
extern uint8_t g_intrpt_nested_level[1];


extern ktask_t *g_preferred_ready_task[1];


extern ktask_t *g_active_task[1];


extern ktask_t g_idle_task[1];
extern idle_count_t g_idle_count[1];
extern cpu_stack_t g_idle_task_stack[1][200];


extern tick_t g_tick_count;
extern klist_t g_tick_head;


extern kobj_list_t g_kobj_list;



extern klist_t g_timer_head;
extern sys_time_t g_timer_count;
extern ktask_t g_timer_task;
extern cpu_stack_t g_timer_task_stack[300];
extern kbuf_queue_t g_timer_queue;
extern k_timer_queue_cb timer_queue_cb[20];
# 74 "./kernel/rhino/core/include/k_internal.h"
extern ksem_t g_res_sem;
extern klist_t g_res_list;
extern ktask_t g_dyn_task;
extern cpu_stack_t g_dyn_task_stack[256];



extern klist_t g_workqueue_list_head;
extern kmutex_t g_workqueue_mutex;
extern kworkqueue_t g_workqueue_default;
extern cpu_stack_t g_workqueue_stack[768];



extern k_mm_head *g_kmm_head;
# 115 "./kernel/rhino/core/include/k_internal.h"
typedef struct {
    size_t cnt;
    void *res[4];
    klist_t res_list;
} res_free_t;

ktask_t *preferred_cpu_ready_task_get(runqueue_t *rq, uint8_t cpu_num);

void core_sched(void);
void runqueue_init(runqueue_t *rq);

void ready_list_add(runqueue_t *rq, ktask_t *task);
void ready_list_add_head(runqueue_t *rq, ktask_t *task);
void ready_list_add_tail(runqueue_t *rq, ktask_t *task);
void ready_list_rm(runqueue_t *rq, ktask_t *task);
void ready_list_head_to_tail(runqueue_t *rq, ktask_t *task);

void time_slice_update(void);
void timer_task_sched(void);

void pend_list_reorder(ktask_t *task);
void pend_task_wakeup(ktask_t *task);
void pend_to_blk_obj(blk_obj_t *blk_obj, ktask_t *task, tick_t timeout);
void pend_task_rm(ktask_t *task);

kstat_t pend_state_end_proc(ktask_t *task);

void idle_task(void *p_arg);
void idle_count_set(idle_count_t value);
idle_count_t idle_count_get(void);

void tick_list_init(void);
void tick_task_start(void);
void tick_list_rm(ktask_t *task);
void tick_list_insert(ktask_t *task, tick_t time);
void tick_list_update(tick_i_t ticks);

uint8_t mutex_pri_limit(ktask_t *tcb, uint8_t pri);
void mutex_task_pri_reset(ktask_t *tcb);
uint8_t mutex_pri_look(ktask_t *tcb, kmutex_t *mutex_rel);

kstat_t task_pri_change(ktask_t *task, uint8_t new_pri);

void k_err_proc(kstat_t err);

void ktimer_init(void);

void intrpt_disable_measure_start(void);
void intrpt_disable_measure_stop(void);
void dyn_mem_proc_task_start(void);
void cpu_usage_stats_start(void);

kstat_t ringbuf_init(k_ringbuf_t *p_ringbuf, void *buf, size_t len, size_t type,
                     size_t block_size);
kstat_t ringbuf_reset(k_ringbuf_t *p_ringbuf);
kstat_t ringbuf_push(k_ringbuf_t *p_ringbuf, void *data, size_t len);
kstat_t ringbuf_head_push(k_ringbuf_t *p_ringbuf, void *data, size_t len);
kstat_t ringbuf_pop(k_ringbuf_t *p_ringbuf, void *pdata, size_t *plen);
uint8_t ringbuf_is_full(k_ringbuf_t *p_ringbuf);
uint8_t ringbuf_is_empty(k_ringbuf_t *p_ringbuf);
void workqueue_init(void);
void k_mm_init(void);
# 43 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_trace.h" 1
# 44 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_soc.h" 1
# 35 "./kernel/rhino/core/include/k_soc.h"
void soc_err_proc(kstat_t err);

size_t soc_get_cur_sp(void);
# 45 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_hook.h" 1
# 46 "./kernel/rhino/core/include/k_api.h" 2
# 1 "././platform/arch/arm/armv5/./gcc/port.h" 1







size_t cpu_intrpt_save(void);
void cpu_intrpt_restore(size_t cpsr);
void cpu_intrpt_switch(void);
void cpu_task_switch(void);
void cpu_first_task_start(void);
void *cpu_task_stack_init(cpu_stack_t *base, size_t size, void *arg, task_entry_t entry);

static inline uint8_t cpu_cur_get(void)
{
    return 0;
}
# 47 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_endian.h" 1
# 48 "./kernel/rhino/core/include/k_api.h" 2
# 6 "kernel/vcall/aos/aos_rhino.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/errno.h" 1 3





# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/errno.h" 3
typedef int error_t;



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h" 3
extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/errno.h" 2 3
# 7 "kernel/vcall/aos/aos_rhino.c" 2
# 1 "./include/aos/aos.h" 1
# 12 "./include/aos/aos.h"
# 1 "./include/aos/types.h" 1
# 9 "./include/aos/types.h"
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 10 "./include/aos/types.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/unistd.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 1 3
# 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
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
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 2 3

# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 2 3

extern char **environ;

void _exit (int __status ) __attribute__ ((__noreturn__));

int access (const char *__path, int __amode );
unsigned alarm (unsigned __secs );
int chdir (const char *__path );
int chmod (const char *__path, mode_t __mode );

int chown (const char *__path, uid_t __owner, gid_t __group );


int chroot (const char *__path );

int close (int __fildes );

size_t confstr (int __name, char *__buf, size_t __len);
# 44 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
int daemon (int nochdir, int noclose);

int dup (int __fildes );
int dup2 (int __fildes, int __fildes2 );
# 56 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
void endusershell (void);




int execl (const char *__path, const char *, ... );
int execle (const char *__path, const char *, ... );
int execlp (const char *__file, const char *, ... );

int execlpe (const char *__file, const char *, ... );

int execv (const char *__path, char * const __argv[] );
int execve (const char *__path, char * const __argv[], char * const __envp[] );
int execvp (const char *__file, char * const __argv[] );




int faccessat (int __dirfd, const char *__path, int __mode, int __flags);


int fchdir (int __fildes);

int fchmod (int __fildes, mode_t __mode );

int fchown (int __fildes, uid_t __owner, gid_t __group );


int fchownat (int __dirfd, const char *__path, uid_t __owner, gid_t __group, int __flags);


int fexecve (int __fd, char * const __argv[], char * const __envp[] );

pid_t fork (void );
long fpathconf (int __fd, int __name );
int fsync (int __fd);
int fdatasync (int __fd);



char * getcwd (char *__buf, size_t __size );

int getdomainname (char *__name, size_t __len);


int getentropy (void *, size_t);


gid_t getegid (void );
uid_t geteuid (void );
gid_t getgid (void );

int getgroups (int __gidsetsize, gid_t __grouplist[] );

long gethostid (void);

char * getlogin (void );



char * getpass (const char *__prompt);
int getpagesize (void);

int getpeereid (int, uid_t *, gid_t *);

pid_t getpgid (pid_t);
pid_t getpgrp (void );
pid_t getpid (void );
pid_t getppid (void );

pid_t getsid (pid_t);


uid_t getuid (void );


char * getusershell (void);


char * getwd (char *__buf );


int iruserok (unsigned long raddr, int superuser, const char *ruser, const char *luser);

int isatty (int __fildes );

int issetugid (void);


int lchown (const char *__path, uid_t __owner, gid_t __group );

int link (const char *__path1, const char *__path2 );

int linkat (int __dirfd1, const char *__path1, int __dirfd2, const char *__path2, int __flags );

int nice (int __nice_value );

off_t lseek (int __fildes, off_t __offset, int __whence );






int lockf (int __fd, int __cmd, off_t __len);

long pathconf (const char *__path, int __name );
int pause (void );

int pthread_atfork (void (*)(void), void (*)(void), void (*)(void));

int pipe (int __fildes[2] );



ssize_t pread (int __fd, void *__buf, size_t __nbytes, off_t __offset);
ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, off_t __offset);
int read (int __fd, void *__buf, size_t __nbyte );

int rresvport (int *__alport);
int revoke (char *__path);

int rmdir (const char *__path );

int ruserok (const char *rhost, int superuser, const char *ruser, const char *luser);

void * sbrk (ptrdiff_t __incr);


int setegid (gid_t __gid );
int seteuid (uid_t __uid );

int setgid (gid_t __gid );


int setgroups (int ngroups, const gid_t *grouplist );


int sethostname (const char *, size_t);

int setpgid (pid_t __pid, pid_t __pgid );
int setpgrp (void );

int setregid (gid_t __rgid, gid_t __egid);
int setreuid (uid_t __ruid, uid_t __euid);

pid_t setsid (void );

int setuid (uid_t __uid );


void setusershell (void);

unsigned sleep (unsigned int __seconds );
void swab (const void *restrict, void *restrict, ssize_t);
long sysconf (int __name );
pid_t tcgetpgrp (int __fildes );
int tcsetpgrp (int __fildes, pid_t __pgrp_id );
char * ttyname (int __fildes );
int ttyname_r (int, char *, size_t);
int unlink (const char *__path );
int usleep (useconds_t __useconds);
int vhangup (void );
int write (int __fd, const void *__buf, size_t __nbyte );






extern char *optarg;
extern int optind, opterr, optopt;
int getopt(int, char * const [], const char *);
extern int optreset;



pid_t vfork (void );
# 257 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
int ftruncate (int __fd, off_t __length);
int truncate (const char *, off_t __length);
# 278 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
ssize_t readlink (const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                   ;
int symlink (const char *__name1, const char *__name2);


ssize_t readlinkat (int __dirfd1, const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                     ;
int symlinkat (const char *, int, const char *);
int unlinkat (int, const char *, int);
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/unistd.h" 2 3
# 11 "./include/aos/types.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/fcntl.h" 1 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/fcntl.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_default_fcntl.h" 1 3
# 163 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_default_fcntl.h" 3
struct flock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
};




struct eflock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
 long l_rpid;
 long l_rsys;
};



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 1 3
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 1 3
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 2 3


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/time.h" 1 3
# 20 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 2 3
# 35 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;


extern size_t strftime_l (char *restrict _s, size_t _maxsize,
     const char *restrict _fmt,
     const struct tm *restrict _t, locale_t _l);


char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;


# 101 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
void tzset (void);

void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 154 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
extern long _timezone;
extern int _daylight;


extern char *_tzname[2];
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 2 3
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
# 50 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
  time_t st_atime;
  long st_spare1;
  time_t st_mtime;
  long st_spare2;
  time_t st_ctime;
  long st_spare3;
  blksize_t st_blksize;
  blkcnt_t st_blocks;
  long st_spare4[2];


};
# 147 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
int chmod ( const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat ( int __fd, struct stat *__sbuf );
int mkdir ( const char *_path, mode_t __mode );
int mkfifo ( const char *__path, mode_t __mode );
int stat ( const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask ( mode_t __mask );







int fchmodat (int, const char *, mode_t, int);
int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);
int mknodat (int, const char *, mode_t, dev_t);
int utimensat (int, const char *, const struct timespec *, int);


int futimens (int, const struct timespec *);
# 189 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_default_fcntl.h" 2 3

extern int open (const char *, int, ...);

extern int openat (int, const char *, int, ...);

extern int creat (const char *, mode_t);
extern int fcntl (int, int, ...);

extern int flock (int, int);
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/fcntl.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/fcntl.h" 2 3
# 12 "./include/aos/types.h" 2






# 17 "./include/aos/types.h"
struct pollfd {
    int fd;
    short events;
    short revents;
};
# 13 "./include/aos/aos.h" 2
# 1 "./include/aos/cli.h" 1
# 18 "./include/aos/cli.h"
typedef void (*FUNCPTR)(void);



struct cli_command {
    const char *name;
    const char *help;

    void (*function)(char *pcWriteBuffer, int xWriteBufferLen, int argc, char **argv);
};

struct cli_st {
    int initialized;
    int echo_disabled;

    const struct cli_command *commands[64];

    unsigned int num_commands;
    unsigned int bp;

    char inbuf[256];
    char outbuf[2048];

    int his_idx;
    int his_cur;
    char history[5][256];
};
# 141 "./include/aos/cli.h"
static inline int aos_cli_register_command(const struct cli_command *command)
{
    return 0;
}

static inline int aos_cli_unregister_command(const struct cli_command *command)
{
    return 0;
}

static inline int aos_cli_register_commands(const struct cli_command *commands,
                                            int num_commands)
{
    return 0;
}

static inline int aos_cli_unregister_commands(const struct cli_command *commands,
                                              int num_commands)
{
    return 0;
}



static inline int aos_cli_init(void)
{
    return 0;
}

static inline int aos_cli_stop(void)
{
    return 0;
}
# 14 "./include/aos/aos.h" 2
# 1 "./include/aos/cloud.h" 1







enum {
    CLOUD_CONNECTED,
    CLOUD_DISCONNECTED,
    GET_DEVICE_STATUS,
    SET_DEVICE_STATUS,
    GET_DEVICE_RAWDATA,
    SET_DEVICE_RAWDATA,
    UPGRADE_DEVICE,
    CANCEL_UPGRADE_DEVICE,
    GET_SUB_DEVICE_STATUS,
    SET_SUB_DEVICE_STATUS,
    MAX_EVENT_TYPE,
};

typedef void (*aos_cloud_cb_t)(int event, const char *json_buffer);
# 32 "./include/aos/cloud.h"
int aos_cloud_register_callback(int cb_type, aos_cloud_cb_t cb);
# 44 "./include/aos/cloud.h"
int aos_cloud_report(const char *method,
                     const char *json_buffer,
                     void (*done_cb)(void *),
                     void *arg);







void aos_cloud_trigger(int cb_type, const char *json_buffer);






void aos_cloud_register_backend(int (*report)(const char *method, const char *json_buffer));
# 15 "./include/aos/aos.h" 2
# 1 "./include/aos/debug.h" 1
# 16 "./include/aos/aos.h" 2
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
# 17 "./include/aos/aos.h" 2
# 1 "./include/aos/kv.h" 1
# 25 "./include/aos/kv.h"
int aos_kv_set(const char *key, const void *value, int len, int sync);
# 40 "./include/aos/kv.h"
int aos_kv_get(const char *key, void *buffer, int *buffer_len);
# 49 "./include/aos/kv.h"
int aos_kv_del(const char *key);
# 18 "./include/aos/aos.h" 2
# 1 "./include/aos/list.h" 1
# 31 "./include/aos/list.h"
typedef struct dlist_s {
    struct dlist_s *prev;
    struct dlist_s *next;
} dlist_t;

static inline void __dlist_add(dlist_t *node, dlist_t *prev, dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 56 "./include/aos/list.h"
static inline void dlist_add(dlist_t *node, dlist_t *queue)
{
    __dlist_add(node, queue, queue->next);
}

static inline void dlist_add_tail(dlist_t *node, dlist_t *queue)
{
    __dlist_add(node, queue->prev, queue);
}

static inline void dlist_del(dlist_t *node)
{
    dlist_t *prev = node->prev;
    dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void dlist_init(dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_AOS_DLIST_HEAD(dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int dlist_empty(const dlist_t *head)
{
    return head->next == head;
}
# 185 "./include/aos/list.h"
static inline int dlist_entry_number(dlist_t *queue)
{
 int num;
 dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 213 "./include/aos/list.h"
typedef struct slist_s {
    struct slist_s *next;
} slist_t;

static inline void slist_add(slist_t *node, slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void slist_add_tail(slist_t *node, slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    slist_add(node, head);
}

static inline void slist_del(slist_t *node, slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int slist_empty(const slist_t *head)
{
    return !head->next;
}

static inline void slist_init(slist_t *head)
{
    head->next = 0;
}
# 322 "./include/aos/list.h"
static inline int slist_entry_number(slist_t *queue)
{
 int num;
    slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 19 "./include/aos/aos.h" 2
# 1 "./include/aos/log.h" 1
# 12 "./include/aos/log.h"
# 1 "./include/aos/internal/log_impl.h" 1
# 12 "./include/aos/internal/log_impl.h"
extern unsigned int aos_log_level;
static inline unsigned int aos_log_get_level(void)
{
    return aos_log_level;
}

enum log_level_bit {
    AOS_LL_V_NONE_BIT = -1,
    AOS_LL_V_FATAL_BIT,
    AOS_LL_V_ERROR_BIT,
    AOS_LL_V_WARN_BIT,
    AOS_LL_V_INFO_BIT,
    AOS_LL_V_DEBUG_BIT,
    AOS_LL_V_MAX_BIT
};
# 52 "./include/aos/internal/log_impl.h"
extern int csp_printf(const char *fmt, ...);
# 80 "./include/aos/internal/log_impl.h"
int csp_printf(const char *fmt, ...);
# 13 "./include/aos/log.h" 2

typedef enum {
    AOS_LL_NONE,
    AOS_LL_FATAL,
    AOS_LL_ERROR,
    AOS_LL_WARN,
    AOS_LL_INFO,
    AOS_LL_DEBUG,
} aos_log_level_t;

extern unsigned int aos_log_level;



static inline int aos_get_log_level(void)
{
    return aos_log_level;
}






void aos_set_log_level(aos_log_level_t log_level);
# 20 "./include/aos/aos.h" 2
# 1 "./include/aos/vfs.h" 1
# 16 "./include/aos/vfs.h"
typedef struct {
    int d_ino;
    uint8_t d_type;
    char d_name[];
} aos_dirent_t;

typedef struct {
    int dd_vfs_fd;
    int dd_rsv;
} aos_dir_t;
# 35 "./include/aos/vfs.h"
int aos_open(const char *path, int flags);
# 44 "./include/aos/vfs.h"
int aos_close(int fd);
# 55 "./include/aos/vfs.h"
ssize_t aos_read(int fd, void *buf, size_t nbytes);
# 66 "./include/aos/vfs.h"
ssize_t aos_write(int fd, const void *buf, size_t nbytes);
# 77 "./include/aos/vfs.h"
int aos_ioctl(int fd, int cmd, unsigned long arg);
# 89 "./include/aos/vfs.h"
int aos_poll(struct pollfd *fds, int nfds, int timeout);
# 100 "./include/aos/vfs.h"
int aos_fcntl(int fd, int cmd, int val);
# 114 "./include/aos/vfs.h"
off_t aos_lseek(int fd, off_t offset, int whence);
# 123 "./include/aos/vfs.h"
int aos_sync(int fd);
# 133 "./include/aos/vfs.h"
int aos_stat(const char *path, struct stat *st);
# 142 "./include/aos/vfs.h"
int aos_unlink(const char *path);
# 152 "./include/aos/vfs.h"
int aos_rename(const char *oldpath, const char *newpath);
# 161 "./include/aos/vfs.h"
aos_dir_t *aos_opendir(const char *path);
# 170 "./include/aos/vfs.h"
int aos_closedir(aos_dir_t *dir);
# 179 "./include/aos/vfs.h"
aos_dirent_t *aos_readdir(aos_dir_t *dir);
# 188 "./include/aos/vfs.h"
int aos_mkdir(const char *path);
# 21 "./include/aos/aos.h" 2
# 1 "./include/aos/version.h" 1
# 13 "./include/aos/version.h"
const char *aos_get_product_model(void);






const char *aos_get_os_version(void);






const char *aos_get_kernel_version(void);






const char *aos_get_app_version(void);






const char *aos_get_device_name(void);




void dump_sys_info(void);
# 22 "./include/aos/aos.h" 2
# 1 "./include/aos/yloop.h" 1
# 14 "./include/aos/yloop.h"
# 1 "./include/aos/internal/event_type_code.h" 1
# 15 "./include/aos/yloop.h" 2
# 65 "./include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 94 "./include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 105 "./include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 116 "./include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 127 "./include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 136 "./include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 147 "./include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 156 "./include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 169 "./include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 211 "./include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 224 "./include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 234 "./include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 23 "./include/aos/aos.h" 2
# 1 "./include/aos/errno.h" 1
# 24 "./include/aos/aos.h" 2
# 1 "./include/aos/init.h" 1







# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdbool.h" 1 3 4
# 9 "./include/aos/init.h" 2


typedef struct {
    int argc;
    char **argv;

    
# 15 "./include/aos/init.h" 3 4
   _Bool 
# 15 "./include/aos/init.h"
        cli_enable;
} kinit_t;

extern int aos_kernel_init(kinit_t *kinit);
# 25 "./include/aos/aos.h" 2
# 8 "kernel/vcall/aos/aos_rhino.c" 2
# 1 "kernel/vcall/aos/errno_mapping.h" 1
# 9 "kernel/vcall/aos/aos_rhino.c" 2







static unsigned int used_bitmap;

extern void hal_reboot(void);
void aos_reboot(void)
{
    hal_reboot();
}

int aos_get_hz(void)
{
    return 500;
}

const char *aos_version_get(void)
{
    return "AOS-R-1.3.1";
}


int aos_task_new(const char *name, void (*fn)(void *), void *arg,
                 int stack_size)
{
    int ret;

    ktask_t *task_handle = 
# 40 "kernel/vcall/aos/aos_rhino.c" 3 4
                          ((void *)0)
# 40 "kernel/vcall/aos/aos_rhino.c"
                              ;

    ret = (int)krhino_task_dyn_create(&task_handle, name, arg, 32, 0,
                                      stack_size / sizeof(cpu_stack_t), fn, 1u);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 48 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 48 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 48 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 48 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 48 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 48 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 48 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 48 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 48 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 48 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 48 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 48 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *), void *arg,
                     int stack_size, int prio)
{
    int ret;
    ret = (int)krhino_task_dyn_create((ktask_t **)(&(task->hdl)), name, arg, prio, 0,
                                      stack_size / sizeof(cpu_stack_t), fn, 1u);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 61 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 61 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 61 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 61 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 61 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 61 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 61 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 61 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 61 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 61 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 61 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 61 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

void aos_task_exit(int code)
{
    (void)code;

    krhino_task_dyn_del(
# 68 "kernel/vcall/aos/aos_rhino.c" 3 4
                       ((void *)0)
# 68 "kernel/vcall/aos/aos_rhino.c"
                           );
}


const char *aos_task_name(void)
{
    return krhino_cur_task_get()->task_name;
}

int aos_task_key_create(aos_task_key_t *key)
{
    int i;

    for (i = 2 - 1; i >= 0; i--) {
        if (!((1 << i) & used_bitmap)) {
            used_bitmap |= 1 << i;
            *key = i;

            return 0;
        }
    }

    return -
# 90 "kernel/vcall/aos/aos_rhino.c" 3
           22
# 90 "kernel/vcall/aos/aos_rhino.c"
                 ;
}

void aos_task_key_delete(aos_task_key_t key)
{
    if (key >= 2) {
        return;
    }

    used_bitmap &= ~(1 << key);
}


int aos_task_setspecific(aos_task_key_t key, void *vp)
{
    int ret;
    ret = krhino_task_info_set(krhino_cur_task_get(), key, vp);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 111 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 111 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 111 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 111 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 111 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 111 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 111 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 111 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 111 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 111 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 111 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 111 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

void *aos_task_getspecific(aos_task_key_t key)
{
    void *vp = 
# 116 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 116 "kernel/vcall/aos/aos_rhino.c"
                  ;

    krhino_task_info_get(krhino_cur_task_get(), key, &vp);

    return vp;
}



int aos_mutex_new(aos_mutex_t *mutex)
{
    kstat_t ret;
    kmutex_t *m;

    if (mutex == 
# 130 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 130 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 131 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 131 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    m = aos_malloc(sizeof(kmutex_t));
    if (m == 
# 135 "kernel/vcall/aos/aos_rhino.c" 3 4
            ((void *)0)
# 135 "kernel/vcall/aos/aos_rhino.c"
                ) {
        return -
# 136 "kernel/vcall/aos/aos_rhino.c" 3
               12
# 136 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_mutex_create(m, "AOS");
    if (ret != RHINO_SUCCESS) {
        aos_free(m);
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 142 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 142 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 142 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 142 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 142 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 142 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 142 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 142 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 142 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 142 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 142 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 142 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    mutex->hdl = m;

    return 0;
}

void aos_mutex_free(aos_mutex_t *mutex)
{
    if (mutex == 
# 152 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 152 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return;
    }

    krhino_mutex_del(mutex->hdl);

    aos_free(mutex->hdl);

    mutex->hdl = 
# 160 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 160 "kernel/vcall/aos/aos_rhino.c"
                    ;
}

int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout)
{
    kstat_t ret;

    if (mutex == 
# 167 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 167 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 168 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 168 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    if (timeout == 0xffffffffu) {
        ret = krhino_mutex_lock(mutex->hdl, ((uint64_t)-1));
    } else {
        ret = krhino_mutex_lock(mutex->hdl, krhino_ms_to_ticks(timeout));
    }


    if (ret == RHINO_MUTEX_OWNER_NESTED) {
        ret = RHINO_SUCCESS;
    }

    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 186 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 186 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 186 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 186 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 186 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 186 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 186 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 186 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 186 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 186 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 186 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 186 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_mutex_unlock(aos_mutex_t *mutex)
{
    kstat_t ret;

    if (mutex == 
# 193 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 193 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 194 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 194 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_mutex_unlock(mutex->hdl);

    if (ret == RHINO_MUTEX_OWNER_NESTED) {
        ret = RHINO_SUCCESS;
    }

    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 207 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 207 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 207 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 207 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 207 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 207 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 207 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 207 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 207 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 207 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 207 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 207 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_mutex_is_valid(aos_mutex_t *mutex)
{
    kmutex_t *k_mutex;

    if (mutex == 
# 214 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 214 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return 0;
    }

    k_mutex = mutex->hdl;

    if (k_mutex == 
# 220 "kernel/vcall/aos/aos_rhino.c" 3 4
                  ((void *)0)
# 220 "kernel/vcall/aos/aos_rhino.c"
                      ) {
        return 0;
    }

    return 1;
}



int aos_sem_new(aos_sem_t *sem, int count)
{
    kstat_t ret;
    ksem_t *s;

    if (sem == 
# 234 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 234 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return -
# 235 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 235 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    s = aos_malloc(sizeof(ksem_t));
    if (s == 
# 239 "kernel/vcall/aos/aos_rhino.c" 3 4
            ((void *)0)
# 239 "kernel/vcall/aos/aos_rhino.c"
                ) {
        return -
# 240 "kernel/vcall/aos/aos_rhino.c" 3
               12
# 240 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_sem_create(s, "AOS", count);
    if (ret != RHINO_SUCCESS) {
        aos_free(s);
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 246 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 246 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 246 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 246 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 246 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 246 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 246 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 246 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 246 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 246 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 246 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 246 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    sem->hdl = s;

    return 0;
}

void aos_sem_free(aos_sem_t *sem)
{
    if (sem == 
# 256 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 256 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return;
    }

    krhino_sem_del(sem->hdl);

    aos_free(sem->hdl);

    sem->hdl = 
# 264 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 264 "kernel/vcall/aos/aos_rhino.c"
                  ;
}

int aos_sem_wait(aos_sem_t *sem, unsigned int timeout)
{
    kstat_t ret;

    if (sem == 
# 271 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 271 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return -
# 272 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 272 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    if (timeout == 0xffffffffu) {
        ret = krhino_sem_take(sem->hdl, ((uint64_t)-1));
    } else {
        ret = krhino_sem_take(sem->hdl, krhino_ms_to_ticks(timeout));
    }

    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 285 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 285 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 285 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 285 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 285 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 285 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 285 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 285 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 285 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 285 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 285 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 285 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

void aos_sem_signal(aos_sem_t *sem)
{
    if (sem == 
# 290 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 290 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return;
    }

    krhino_sem_give(sem->hdl);
}

int aos_sem_is_valid(aos_sem_t *sem)
{
    ksem_t *k_sem;

    if (sem == 
# 301 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 301 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return 0;
    }

    k_sem = sem->hdl;

    if (k_sem == 
# 307 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 307 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return 0;
    }

    return 1;
}

void aos_sem_signal_all(aos_sem_t *sem)
{
    if (sem == 
# 316 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 316 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return;
    }

    krhino_sem_give_all(sem->hdl);
}





int aos_event_new(aos_event_t *event, unsigned int flags)
{
    int ret;
    ret = (int)krhino_event_dyn_create((kevent_t **)(&(event->hdl)), "AOS", flags);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 335 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 335 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 335 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 335 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 335 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 335 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 335 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 335 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 335 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 335 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 335 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 335 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

void aos_event_free(aos_event_t *event)
{
    if (event == 
# 340 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 340 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return;
    }

    (void)krhino_event_dyn_del(event->hdl);

    event->hdl = 
# 346 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 346 "kernel/vcall/aos/aos_rhino.c"
                    ;
}

int aos_event_get
(
    aos_event_t *event,
    unsigned int flags,
    unsigned char opt,
    unsigned int *actl_flags,
    unsigned int timeout
)
{
    kstat_t ret;

    if (event == 
# 360 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 360 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 361 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 361 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    if (timeout == 0xffffffffu) {
        ret = krhino_event_get(event->hdl, flags, opt, actl_flags, ((uint64_t)-1));
    } else {
        ret = krhino_event_get(event->hdl, flags, opt, actl_flags, krhino_ms_to_ticks(timeout));
    }

    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 374 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 374 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 374 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 374 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 374 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 374 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 374 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 374 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 374 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 374 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 374 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 374 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_event_set(aos_event_t *event, unsigned int flags, unsigned char opt)
{
    kstat_t ret;

    if (event == 
# 381 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 381 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 382 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 382 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_event_set(event->hdl, flags, opt);

    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 391 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 391 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 391 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 391 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 391 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 391 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 391 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 391 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 391 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 391 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 391 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 391 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}




int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size, int max_msg)
{
    kstat_t ret;
    kbuf_queue_t *q;

    if ((queue == 
# 402 "kernel/vcall/aos/aos_rhino.c" 3 4
                 ((void *)0)
# 402 "kernel/vcall/aos/aos_rhino.c"
                     ) || (buf == 
# 402 "kernel/vcall/aos/aos_rhino.c" 3 4
                                  ((void *)0)
# 402 "kernel/vcall/aos/aos_rhino.c"
                                      )) {
        return -
# 403 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 403 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    q = aos_malloc(sizeof(kbuf_queue_t));
    if (q == 
# 407 "kernel/vcall/aos/aos_rhino.c" 3 4
            ((void *)0)
# 407 "kernel/vcall/aos/aos_rhino.c"
                ) {
        return -
# 408 "kernel/vcall/aos/aos_rhino.c" 3
               12
# 408 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_buf_queue_create(q, "AOS", buf, size, max_msg);
    if (ret != RHINO_SUCCESS) {
        aos_free(q);
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 414 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 414 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 414 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 414 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 414 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 414 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 414 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 414 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 414 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 414 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 414 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 414 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    queue->hdl = q;

    return 0;
}

void aos_queue_free(aos_queue_t *queue)
{
    if (queue == 
# 424 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 424 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return;
    }

    krhino_buf_queue_del(queue->hdl);

    aos_free(queue->hdl);

    queue->hdl = 
# 432 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 432 "kernel/vcall/aos/aos_rhino.c"
                    ;
}

int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size)
{
    int ret;

    if ((queue == 
# 439 "kernel/vcall/aos/aos_rhino.c" 3 4
                 ((void *)0)
# 439 "kernel/vcall/aos/aos_rhino.c"
                     ) || (msg == 
# 439 "kernel/vcall/aos/aos_rhino.c" 3 4
                                  ((void *)0)
# 439 "kernel/vcall/aos/aos_rhino.c"
                                      )) {
        return -
# 440 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 440 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_buf_queue_send(queue->hdl, msg, size);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 448 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 448 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 448 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 448 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 448 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 448 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 448 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 448 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 448 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 448 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 448 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 448 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg,
                   unsigned int *size)
{
    int ret;

    if (queue == 
# 456 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 456 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 457 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 457 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_buf_queue_recv(queue->hdl, krhino_ms_to_ticks(ms), msg, size);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 465 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 465 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 465 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 465 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 465 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 465 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 465 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 465 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 465 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 465 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 465 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 465 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_queue_is_valid(aos_queue_t *queue)
{
    kbuf_queue_t *k_queue;

    if (queue == 
# 472 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 472 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return 0;
    }

    k_queue = queue->hdl;

    if (k_queue == 
# 478 "kernel/vcall/aos/aos_rhino.c" 3 4
                  ((void *)0)
# 478 "kernel/vcall/aos/aos_rhino.c"
                      ) {
        return 0;
    }

    return 1;
}

void *aos_queue_buf_ptr(aos_queue_t *queue)
{
    if (!aos_queue_is_valid(queue)) {
        return 
# 488 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 488 "kernel/vcall/aos/aos_rhino.c"
                  ;
    }

    return ((kbuf_queue_t *)queue->hdl)->buf;
}



int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *),
                  void *arg, int ms, int repeat)
{
    kstat_t ret;

    if (timer == 
# 501 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 501 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 502 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 502 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    if (repeat == 0) {
        ret = krhino_timer_dyn_create(((ktimer_t **)(&timer->hdl)), "AOS", (timer_cb_t)fn, krhino_ms_to_ticks(ms), 0, arg, 1);
    } else {
        ret = krhino_timer_dyn_create(((ktimer_t **)(&timer->hdl)), "AOS", (timer_cb_t)fn, krhino_ms_to_ticks(ms), krhino_ms_to_ticks(ms),
                                      arg, 1);
    }

    if (ret != RHINO_SUCCESS) {
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 513 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 513 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 513 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 513 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 513 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 513 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 513 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 513 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 513 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 513 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 513 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 513 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    return 0;
}

int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                      void *arg, int ms, int repeat, unsigned char auto_run)
{
    kstat_t ret;

    if (timer == 
# 524 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 524 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 525 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 525 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    if (repeat == 0) {
        ret = krhino_timer_dyn_create(((ktimer_t **)(&timer->hdl)), "AOS", (timer_cb_t)fn, krhino_ms_to_ticks(ms), 0, arg, auto_run);
    } else {
        ret = krhino_timer_dyn_create(((ktimer_t **)(&timer->hdl)), "AOS", (timer_cb_t)fn, krhino_ms_to_ticks(ms), krhino_ms_to_ticks(ms),
                                      arg, auto_run);
    }

    if (ret != RHINO_SUCCESS) {
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 536 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 536 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 536 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 536 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 536 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 536 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 536 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 536 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 536 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 536 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 536 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 536 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    return 0;
}

void aos_timer_free(aos_timer_t *timer)
{
    if (timer == 
# 544 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 544 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return;
    }

    krhino_timer_dyn_del(timer->hdl);
    timer->hdl = 
# 549 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 549 "kernel/vcall/aos/aos_rhino.c"
                    ;
}

int aos_timer_start(aos_timer_t *timer)
{
    int ret;

    if (timer == 
# 556 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 556 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 557 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 557 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_timer_start(timer->hdl);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 565 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 565 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 565 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 565 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 565 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 565 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 565 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 565 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 565 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 565 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 565 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 565 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_timer_stop(aos_timer_t *timer)
{
    int ret;

    if (timer == 
# 572 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 572 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 573 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 573 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_timer_stop(timer->hdl);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 581 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 581 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 581 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 581 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 581 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 581 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 581 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 581 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 581 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 581 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 581 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 581 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_timer_change(aos_timer_t *timer, int ms)
{
    int ret;

    if (timer == 
# 588 "kernel/vcall/aos/aos_rhino.c" 3 4
                ((void *)0)
# 588 "kernel/vcall/aos/aos_rhino.c"
                    ) {
        return -
# 589 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 589 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_timer_change(timer->hdl, krhino_ms_to_ticks(ms), krhino_ms_to_ticks(ms));
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 597 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 597 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 597 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 597 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 597 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 597 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 597 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 597 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 597 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 597 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 597 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 597 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}



int aos_workqueue_create(aos_workqueue_t *workqueue, int pri, int stack_size)
{
    kstat_t ret;

    cpu_stack_t *stk;
    kworkqueue_t *wq;

    if (workqueue == 
# 609 "kernel/vcall/aos/aos_rhino.c" 3 4
                    ((void *)0)
# 609 "kernel/vcall/aos/aos_rhino.c"
                        ) {
        return -
# 610 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 610 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    if (stack_size < sizeof(cpu_stack_t)) {
        return -
# 614 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 614 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    stk = aos_malloc(stack_size);
    if (stk == 
# 618 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 618 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return -
# 619 "kernel/vcall/aos/aos_rhino.c" 3
               12
# 619 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    wq = aos_malloc(sizeof(kworkqueue_t));
    if (wq == 
# 623 "kernel/vcall/aos/aos_rhino.c" 3 4
             ((void *)0)
# 623 "kernel/vcall/aos/aos_rhino.c"
                 ) {
        aos_free(stk);
        return -
# 625 "kernel/vcall/aos/aos_rhino.c" 3
               12
# 625 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_workqueue_create(wq, "AOS", pri, stk,
                                  stack_size / sizeof(cpu_stack_t));
    if (ret != RHINO_SUCCESS) {
        aos_free(wq);
        aos_free(stk);
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 633 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 633 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 633 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 633 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 633 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 633 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 633 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 633 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 633 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 633 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 633 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 633 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    workqueue->hdl = wq;
    workqueue->stk = stk;

    return 0;
}

int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly)
{
    kstat_t ret;
    kwork_t *w;

    if (work == 
# 647 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 647 "kernel/vcall/aos/aos_rhino.c"
                   ) {
        return -
# 648 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 648 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    w = aos_malloc(sizeof(kwork_t));
    if (w == 
# 652 "kernel/vcall/aos/aos_rhino.c" 3 4
            ((void *)0)
# 652 "kernel/vcall/aos/aos_rhino.c"
                ) {
        return -
# 653 "kernel/vcall/aos/aos_rhino.c" 3
               12
# 653 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_work_init(w, fn, arg, krhino_ms_to_ticks(dly));
    if (ret != RHINO_SUCCESS) {
        aos_free(w);
        { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 659 "kernel/vcall/aos/aos_rhino.c" 3
       14
# 659 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 659 "kernel/vcall/aos/aos_rhino.c" 3
       22
# 659 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_BLK: return -
# 659 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 659 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_NO_MEM: return -
# 659 "kernel/vcall/aos/aos_rhino.c" 3
       12
# 659 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 659 "kernel/vcall/aos/aos_rhino.c" 3
       1
# 659 "kernel/vcall/aos/aos_rhino.c"
       ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 659 "kernel/vcall/aos/aos_rhino.c" 3
       11
# 659 "kernel/vcall/aos/aos_rhino.c"
       ; default: return -1; } };
    }

    work->hdl = w;

    return 0;
}

void aos_work_destroy(aos_work_t *work)
{
    kwork_t *w;

    if (work == 
# 671 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 671 "kernel/vcall/aos/aos_rhino.c"
                   ) {
        return;
    }

    w = work->hdl;

    if (w->timer != 
# 677 "kernel/vcall/aos/aos_rhino.c" 3 4
                   ((void *)0)
# 677 "kernel/vcall/aos/aos_rhino.c"
                       ) {
        krhino_timer_stop(w->timer);
        krhino_timer_dyn_del(w->timer);
    }

    aos_free(work->hdl);
    work->hdl = 
# 683 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 683 "kernel/vcall/aos/aos_rhino.c"
                   ;
}

int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work)
{
    int ret;

    if ((workqueue == 
# 690 "kernel/vcall/aos/aos_rhino.c" 3 4
                     ((void *)0)
# 690 "kernel/vcall/aos/aos_rhino.c"
                         ) || (work == 
# 690 "kernel/vcall/aos/aos_rhino.c" 3 4
                                       ((void *)0)
# 690 "kernel/vcall/aos/aos_rhino.c"
                                           )) {
        return -
# 691 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 691 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_work_run(workqueue->hdl, work->hdl);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 699 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 699 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 699 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 699 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 699 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 699 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 699 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 699 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 699 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 699 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 699 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 699 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_work_sched(aos_work_t *work)
{
    int ret;

    if (work == 
# 706 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 706 "kernel/vcall/aos/aos_rhino.c"
                   ) {
        return -
# 707 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 707 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_work_sched(work->hdl);
    if (ret == RHINO_SUCCESS) {
        return 0;
    }

    { switch(ret) { case RHINO_SYS_SP_ERR: case RHINO_NULL_PTR: case RHINO_MM_FREE_ADDR_ERR: return -
# 715 "kernel/vcall/aos/aos_rhino.c" 3
   14
# 715 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_INV_PARAM: case RHINO_INV_ALIGN: case RHINO_KOBJ_TYPE_ERR: case RHINO_MM_POOL_SIZE_ERR: case RHINO_MM_ALLOC_SIZE_ERR: case RHINO_INV_SCHED_WAY: case RHINO_TASK_INV_STACK_SIZE: case RHINO_BEYOND_MAX_PRI: case RHINO_BUF_QUEUE_INV_SIZE: case RHINO_BUF_QUEUE_SIZE_ZERO: case RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW: case RHINO_QUEUE_FULL: case RHINO_QUEUE_NOT_FULL: case RHINO_SEM_OVF: case RHINO_WORKQUEUE_EXIST: case RHINO_WORKQUEUE_NOT_EXIST: case RHINO_WORKQUEUE_WORK_EXIST: return -
# 715 "kernel/vcall/aos/aos_rhino.c" 3
   22
# 715 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_BLK: return -
# 715 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 715 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_NO_MEM: return -
# 715 "kernel/vcall/aos/aos_rhino.c" 3
   12
# 715 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_KOBJ_DEL_ERR: case RHINO_SCHED_DISABLE: case RHINO_SCHED_ALREADY_ENABLED: case RHINO_SCHED_LOCK_COUNT_OVF: case RHINO_TASK_NOT_SUSPENDED: case RHINO_TASK_DEL_NOT_ALLOWED: case RHINO_TASK_SUSPEND_NOT_ALLOWED: case RHINO_SUSPENDED_COUNT_OVF: case RHINO_PRI_CHG_NOT_ALLOWED: case RHINO_NOT_CALLED_BY_INTRPT: case RHINO_NO_THIS_EVENT_OPT: case RHINO_TIMER_STATE_INV: case RHINO_BUF_QUEUE_FULL: case RHINO_SEM_TASK_WAITING: case RHINO_MUTEX_NOT_RELEASED_BY_OWNER: case RHINO_WORKQUEUE_WORK_RUNNING: return -
# 715 "kernel/vcall/aos/aos_rhino.c" 3
   1
# 715 "kernel/vcall/aos/aos_rhino.c"
   ; case RHINO_TRY_AGAIN: case RHINO_WORKQUEUE_BUSY: return -
# 715 "kernel/vcall/aos/aos_rhino.c" 3
   11
# 715 "kernel/vcall/aos/aos_rhino.c"
   ; default: return -1; } };
}

int aos_work_cancel(aos_work_t *work)
{
    int ret;

    if (work == 
# 722 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 722 "kernel/vcall/aos/aos_rhino.c"
                   ) {
        return -
# 723 "kernel/vcall/aos/aos_rhino.c" 3
               22
# 723 "kernel/vcall/aos/aos_rhino.c"
                     ;
    }

    ret = krhino_work_cancel(work->hdl);
    if (ret != RHINO_SUCCESS) {
        return -
# 728 "kernel/vcall/aos/aos_rhino.c" 3
               16
# 728 "kernel/vcall/aos/aos_rhino.c"
                    ;
    }

    return 0;
}



void *aos_zalloc(unsigned int size)
{
    void *tmp = 
# 738 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 738 "kernel/vcall/aos/aos_rhino.c"
                   ;
    if (size == 0) {
        return 
# 740 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 740 "kernel/vcall/aos/aos_rhino.c"
                  ;
    }


    if ((size & (1u << (sizeof(unsigned int) * 8 - 1))) == 0) {
        tmp = krhino_mm_alloc(size | (1u << (sizeof(unsigned int) * 8 - 1)));





        krhino_owner_attach(g_kmm_head, tmp, (size_t)__builtin_return_address(0));


    } else {
        tmp = krhino_mm_alloc(size);
    }





    if (tmp) {
        memset(tmp, 0, size);
    }

    return tmp;
}

void *aos_malloc(unsigned int size)
{
    void *tmp = 
# 771 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 771 "kernel/vcall/aos/aos_rhino.c"
                   ;

    if (size == 0) {
        return 
# 774 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 774 "kernel/vcall/aos/aos_rhino.c"
                  ;
    }


    if ((size & (1u << (sizeof(unsigned int) * 8 - 1))) == 0) {
        tmp = krhino_mm_alloc(size | (1u << (sizeof(unsigned int) * 8 - 1)));





        krhino_owner_attach(g_kmm_head, tmp, (size_t)__builtin_return_address(0));


    } else {
        tmp = krhino_mm_alloc(size);
    }





    return tmp;
}

void *aos_realloc(void *mem, unsigned int size)
{
    void *tmp = 
# 801 "kernel/vcall/aos/aos_rhino.c" 3 4
               ((void *)0)
# 801 "kernel/vcall/aos/aos_rhino.c"
                   ;


    if ((size & (1u << (sizeof(unsigned int) * 8 - 1))) == 0) {
        tmp = krhino_mm_realloc(mem, size | (1u << (sizeof(unsigned int) * 8 - 1)));





        krhino_owner_attach(g_kmm_head, tmp, (size_t)__builtin_return_address(0));


    } else {
        tmp = krhino_mm_realloc(mem, size);
    }





    return tmp;
}

void aos_alloc_trace(void *addr, size_t allocator)
{

    krhino_owner_attach(g_kmm_head, addr, allocator);

}

void aos_free(void *mem)
{
    if (mem == 
# 834 "kernel/vcall/aos/aos_rhino.c" 3 4
              ((void *)0)
# 834 "kernel/vcall/aos/aos_rhino.c"
                  ) {
        return;
    }

    krhino_mm_free(mem);
}


long long aos_now(void)
{
    return krhino_sys_time_get() * 1000 * 1000;
}

long long aos_now_ms(void)
{
    return krhino_sys_time_get();
}

void aos_msleep(int ms)
{
    krhino_task_sleep(krhino_ms_to_ticks(ms));
}

void aos_init(void)
{
    krhino_init();
}

void aos_start(void)
{
    krhino_start();
}

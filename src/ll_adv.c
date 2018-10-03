typedef int ptrdiff_t;
typedef unsigned int size_t;
typedef unsigned int wchar_t;
typedef struct {
	long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
	long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short int __int16_t;
typedef short unsigned int __uint16_t;
typedef long int __int32_t;
typedef long unsigned int __uint32_t;
typedef long long int __int64_t;
typedef long long unsigned int __uint64_t;
typedef signed char __int_least8_t;
typedef unsigned char __uint_least8_t;
typedef short int __int_least16_t;
typedef short unsigned int __uint_least16_t;
typedef long int __int_least32_t;
typedef long unsigned int __uint_least32_t;
typedef long long int __int_least64_t;
typedef long long unsigned int __uint_least64_t;
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
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
typedef __uint32_t __mode_t;
__extension__ typedef long long _off64_t;
typedef _off_t __off_t;
typedef _off64_t __loff_t;
typedef long __key_t;
typedef long _fpos_t;
typedef unsigned int __size_t;
typedef signed int _ssize_t;
typedef _ssize_t __ssize_t;
typedef unsigned int wint_t;
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
typedef unsigned long __ULong;
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
struct _atexit {
	struct _atexit *_next;
	int _ind;
	void (*_fns[32])(void);
	struct _on_exit_args _on_exit_args;
};
struct __sbuf {
	unsigned char *_base;
	int _size;
};
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
typedef struct __sFILE __FILE;
struct _glue
{
	struct _glue *_next;
	int _niobs;
	__FILE *_iobs;
};
struct _rand48 {
	unsigned short _seed[3];
	unsigned short _mult[3];
	unsigned short _add;
};
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
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;
void _reclaim_reent (struct _reent *);
struct __locale_t;
typedef struct __locale_t *locale_t;
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
char *rindex (const char *, int);
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
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
	typedef __int_least8_t int_least8_t;
	typedef __uint_least8_t uint_least8_t;
	typedef __int_least16_t int_least16_t;
	typedef __uint_least16_t uint_least16_t;
	typedef __int_least32_t int_least32_t;
	typedef __uint_least32_t uint_least32_t;
	typedef __int_least64_t int_least64_t;
	typedef __uint_least64_t uint_least64_t;
	typedef int int_fast8_t;
	typedef unsigned int uint_fast8_t;
	typedef int int_fast16_t;
	typedef unsigned int uint_fast16_t;
	typedef int int_fast32_t;
	typedef unsigned int uint_fast32_t;
	typedef long long int int_fast64_t;
	typedef long long unsigned int uint_fast64_t;
	typedef long long int intmax_t;
	typedef long long unsigned int uintmax_t;
	typedef signed char s8_t;
	typedef signed short s16_t;
	typedef signed int s32_t;
	typedef signed long long s64_t;
	typedef unsigned char u8_t;
	typedef unsigned short u16_t;
	typedef unsigned int u32_t;
	typedef unsigned long long u64_t;
	struct _snode {
		struct _snode *next;
	};
typedef struct _snode sys_snode_t;
struct _slist {
	sys_snode_t *head;
	sys_snode_t *tail;
};
typedef struct _slist sys_slist_t;
static inline void sys_slist_init(sys_slist_t *list)
{
	list->head = 
		((void *)0)
		;
	list->tail = 
		((void *)0)
		;
}
static inline 
	_Bool 
sys_slist_is_empty(sys_slist_t *list)
{
	return (!list->head);
}
static inline sys_snode_t *sys_slist_peek_head(sys_slist_t *list)
{
	return list->head;
}
static inline sys_snode_t *sys_slist_peek_tail(sys_slist_t *list)
{
	return list->tail;
}
static inline sys_snode_t *sys_slist_peek_next_no_check(sys_snode_t *node)
{
	return node->next;
}
static inline sys_snode_t *sys_slist_peek_next(sys_snode_t *node)
{
	return node ? sys_slist_peek_next_no_check(node) : 
		((void *)0)
		;
}
static inline void sys_slist_prepend(sys_slist_t *list,
		sys_snode_t *node)
{
	node->next = list->head;
	list->head = node;
	if (!list->tail) {
		list->tail = list->head;
	}
}
static inline void sys_slist_append(sys_slist_t *list,
		sys_snode_t *node)
{
	node->next = 
		((void *)0)
		;
	if (!list->tail) {
		list->tail = node;
		list->head = node;
	} else {
		list->tail->next = node;
		list->tail = node;
	}
}
static inline void sys_slist_append_list(sys_slist_t *list,
		void *head, void *tail)
{
	if (!list->tail) {
		list->head = (sys_snode_t *)head;
		list->tail = (sys_snode_t *)tail;
	} else {
		list->tail->next = (sys_snode_t *)head;
		list->tail = (sys_snode_t *)tail;
	}
}
static inline void sys_slist_merge_slist(sys_slist_t *list,
		sys_slist_t *list_to_append)
{
	sys_slist_append_list(list, list_to_append->head,
			list_to_append->tail);
	sys_slist_init(list_to_append);
}
static inline void sys_slist_insert(sys_slist_t *list,
		sys_snode_t *prev,
		sys_snode_t *node)
{
	if (!prev) {
		sys_slist_prepend(list, node);
	} else if (!prev->next) {
		sys_slist_append(list, node);
	} else {
		node->next = prev->next;
		prev->next = node;
	}
}
static inline sys_snode_t *sys_slist_get_not_empty(sys_slist_t *list)
{
	sys_snode_t *node = list->head;
	list->head = node->next;
	if (list->tail == node) {
		list->tail = list->head;
	}
	return node;
}
static inline sys_snode_t *sys_slist_get(sys_slist_t *list)
{
	return sys_slist_is_empty(list) ? 
		((void *)0) 
		: sys_slist_get_not_empty(list);
}
static inline void sys_slist_remove(sys_slist_t *list,
		sys_snode_t *prev_node,
		sys_snode_t *node)
{
	if (!prev_node) {
		list->head = node->next;
		if (list->tail == node) {
			list->tail = list->head;
		}
	} else {
		prev_node->next = node->next;
		if (list->tail == node) {
			list->tail = prev_node;
		}
	}
	node->next = 
		((void *)0)
		;
}
static inline 
	_Bool 
sys_slist_find_and_remove(sys_slist_t *list,
		sys_snode_t *node)
{
	sys_snode_t *prev = 
		((void *)0)
		;
	sys_snode_t *test;
	for (test = sys_slist_peek_head(list); test; test = sys_slist_peek_next(test)) {
		if (test == node) {
			sys_slist_remove(list, prev, node);
			return 
				1
				;
		}
		prev = test;
	}
	return 
		0
		;
}
struct _dnode {
	union {
		struct _dnode *head;
		struct _dnode *next;
	};
	union {
		struct _dnode *tail;
		struct _dnode *prev;
	};
};
typedef struct _dnode sys_dlist_t;
typedef struct _dnode sys_dnode_t;
static inline void sys_dlist_init(sys_dlist_t *list)
{
	list->head = (sys_dnode_t *)list;
	list->tail = (sys_dnode_t *)list;
}
static inline int sys_dlist_is_head(sys_dlist_t *list, sys_dnode_t *node)
{
	return list->head == node;
}
static inline int sys_dlist_is_tail(sys_dlist_t *list, sys_dnode_t *node)
{
	return list->tail == node;
}
static inline int sys_dlist_is_empty(sys_dlist_t *list)
{
	return list->head == list;
}
static inline int sys_dlist_has_multiple_nodes(sys_dlist_t *list)
{
	return list->head != list->tail;
}
static inline sys_dnode_t *sys_dlist_peek_head(sys_dlist_t *list)
{
	return sys_dlist_is_empty(list) ? 
		((void *)0) 
		: list->head;
}
static inline sys_dnode_t *sys_dlist_peek_head_not_empty(sys_dlist_t *list)
{
	return list->head;
}
static inline sys_dnode_t *sys_dlist_peek_next_no_check(sys_dlist_t *list,
		sys_dnode_t *node)
{
	return (node == list->tail) ? 
		((void *)0) 
		: node->next;
}
static inline sys_dnode_t *sys_dlist_peek_next(sys_dlist_t *list,
		sys_dnode_t *node)
{
	return node ? sys_dlist_peek_next_no_check(list, node) : 
		((void *)0)
		;
}
static inline sys_dnode_t *sys_dlist_peek_tail(sys_dlist_t *list)
{
	return sys_dlist_is_empty(list) ? 
		((void *)0) 
		: list->tail;
}
static inline void sys_dlist_append(sys_dlist_t *list, sys_dnode_t *node)
{
	node->next = list;
	node->prev = list->tail;
	list->tail->next = node;
	list->tail = node;
}
static inline void sys_dlist_prepend(sys_dlist_t *list, sys_dnode_t *node)
{
	node->next = list->head;
	node->prev = list;
	list->head->prev = node;
	list->head = node;
}
static inline void sys_dlist_insert_after(sys_dlist_t *list,
		sys_dnode_t *insert_point, sys_dnode_t *node)
{
	if (!insert_point) {
		sys_dlist_prepend(list, node);
	} else {
		node->next = insert_point->next;
		node->prev = insert_point;
		insert_point->next->prev = node;
		insert_point->next = node;
	}
}
static inline void sys_dlist_insert_before(sys_dlist_t *list,
		sys_dnode_t *insert_point, sys_dnode_t *node)
{
	if (!insert_point) {
		sys_dlist_append(list, node);
	} else {
		node->prev = insert_point->prev;
		node->next = insert_point;
		insert_point->prev->next = node;
		insert_point->prev = node;
	}
}
static inline void sys_dlist_insert_at(sys_dlist_t *list, sys_dnode_t *node,
		int (*cond)(sys_dnode_t *, void *), void *data)
{
	if (sys_dlist_is_empty(list)) {
		sys_dlist_append(list, node);
	} else {
		sys_dnode_t *pos = sys_dlist_peek_head(list);
		while (pos && !cond(pos, data)) {
			pos = sys_dlist_peek_next(list, pos);
		}
		sys_dlist_insert_before(list, pos, node);
	}
}
static inline void sys_dlist_remove(sys_dnode_t *node)
{
	node->prev->next = node->next;
	node->next->prev = node->prev;
}
static inline sys_dnode_t *sys_dlist_get(sys_dlist_t *list)
{
	sys_dnode_t *node;
	if (sys_dlist_is_empty(list)) {
		return 
			((void *)0)
			;
	}
	node = list->head;
	sys_dlist_remove(node);
	return node;
}
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
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t;
typedef unsigned long __sigset_t;
typedef __suseconds_t suseconds_t;
typedef long time_t;
struct timeval {
	time_t tv_sec;
	suseconds_t tv_usec;
};
struct timespec {
	time_t tv_sec;
	long tv_nsec;
};
struct itimerspec {
	struct timespec it_interval;
	struct timespec it_value;
};
typedef __sigset_t sigset_t;
typedef unsigned long fd_mask;
typedef struct _types_fd_set {
	fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
	;
int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)
	;
	typedef __uint32_t in_addr_t;
	typedef __uint16_t in_port_t;
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
	typedef long daddr_t;
	typedef char * caddr_t;
	typedef __fsblkcnt_t fsblkcnt_t;
	typedef __fsfilcnt_t fsfilcnt_t;
	typedef __id_t id_t;
	typedef __ino_t ino_t;
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
	typedef __int64_t sbintime_t;
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
int aos_task_new(const char *name, void (*fn)(void *), void *arg, int stack_size);
int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *), void *arg,
		int stack_size, int prio);
void aos_task_exit(int code);
const char *aos_task_name(void);
int aos_task_key_create(aos_task_key_t *key);
void aos_task_key_delete(aos_task_key_t key);
int aos_task_setspecific(aos_task_key_t key, void *vp);
void *aos_task_getspecific(aos_task_key_t key);
int aos_mutex_new(aos_mutex_t *mutex);
void aos_mutex_free(aos_mutex_t *mutex);
int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
int aos_mutex_unlock(aos_mutex_t *mutex);
int aos_mutex_is_valid(aos_mutex_t *mutex);
int aos_sem_new(aos_sem_t *sem, int count);
void aos_sem_free(aos_sem_t *sem);
int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);
void aos_sem_signal(aos_sem_t *sem);
int aos_sem_is_valid(aos_sem_t *sem);
void aos_sem_signal_all(aos_sem_t *sem);
int aos_event_new(aos_event_t *event, unsigned int flags);
void aos_event_free(aos_event_t *event);
int aos_event_get(aos_event_t *event, unsigned int flags, unsigned char opt,
		unsigned int *actl_flags, unsigned int timeout);
int aos_event_set(aos_event_t *event, unsigned int flags, unsigned char opt);
int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size, int max_msg);
void aos_queue_free(aos_queue_t *queue);
int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg, unsigned int *size);
int aos_queue_is_valid(aos_queue_t *queue);
void *aos_queue_buf_ptr(aos_queue_t *queue);
int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *),
		void *arg, int ms, int repeat);
int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
		void *arg, int ms, int repeat, unsigned char auto_run);
void aos_timer_free(aos_timer_t *timer);
int aos_timer_start(aos_timer_t *timer);
int aos_timer_stop(aos_timer_t *timer);
int aos_timer_change(aos_timer_t *timer, int ms);
int aos_workqueue_create(aos_workqueue_t *workqueue, int pri, int stack_size);
int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);
void aos_work_destroy(aos_work_t *work);
int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
int aos_work_sched(aos_work_t *work);
int aos_work_cancel(aos_work_t *work);
void *aos_realloc(void *mem, unsigned int size);
void *aos_malloc(unsigned int size);
void *aos_zalloc(unsigned int size);
void aos_alloc_trace(void *addr, size_t allocator);
void aos_free(void *mem);
long long aos_now(void);
long long aos_now_ms(void);
void aos_msleep(int ms);
void aos_init(void);
void aos_start(void);
extern int csp_printf(const char *fmt, ...);
int csp_printf(const char *fmt, ...);
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
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
	;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
	;
	typedef char name_t;
	typedef uint32_t sem_count_t;
	typedef uint32_t cpu_stack_t;
	typedef uint32_t hr_timer_t;
	typedef uint32_t lr_timer_t;
	typedef uint32_t mutex_nested_t;
	typedef uint8_t suspend_nested_t;
	typedef uint64_t ctx_switch_t;
	typedef uint32_t cpu_cpsr_t;
	typedef aos_queue_t _queue_t;
	typedef aos_sem_t _sem_t;
	typedef aos_task_t _task_t;
	typedef cpu_stack_t _stack_element_t;
	typedef aos_mutex_t _mutex_t;
	enum {
		LOG_LEVEL_NONE = 0,
		LOG_LEVEL_FATAL,
		LOG_LEVEL_ERROR,
		LOG_LEVEL_WARN,
		LOG_LEVEL_INFO,
		LOG_LEVEL_DEBUG,
		LOG_LEVEL_MAX_BIT
	};
typedef sys_dlist_t _wait_q_t;
struct k_queue {
	_queue_t *_queue;
	sys_dlist_t poll_events;
};
extern void k_queue_init(struct k_queue *queue);
extern void k_queue_cancel_wait(struct k_queue *queue);
extern void k_queue_append(struct k_queue *queue, void *data);
extern void k_queue_prepend(struct k_queue *queue, void *data);
extern void k_queue_insert(struct k_queue *queue, void *prev, void *data);
extern void k_queue_append_list(struct k_queue *queue, void *head, void *tail);
extern void *k_queue_get(struct k_queue *queue, s32_t timeout);
extern int k_queue_is_empty(struct k_queue *queue);
struct k_lifo {
	struct k_queue _queue;
};
struct k_fifo {
	struct k_queue _queue;
};
struct k_sem {
	_sem_t sem;
	sys_dlist_t poll_events;
};
int k_sem_init(struct k_sem *sem, unsigned int initial_count, unsigned int limit);
int k_sem_take(struct k_sem *sem, uint32_t timeout);
int k_sem_give(struct k_sem *sem);
int k_sem_delete(struct k_sem *sem);
unsigned int k_sem_count_get(struct k_sem *sem);
struct k_mutex {
	_mutex_t mutex;
	sys_dlist_t poll_events;
};
typedef void (*k_timer_handler_t)(void *timer, void *args);
typedef struct k_timer {
	aos_timer_t timer;
	k_timer_handler_t handler;
	void *args;
	uint32_t timeout;
	uint32_t start_ms;
} k_timer_t;
void k_timer_init(k_timer_t *timer, k_timer_handler_t handle, void *args);
void k_timer_start(k_timer_t *timer, uint32_t timeout);
void k_timer_stop(k_timer_t *timer);
int64_t k_uptime_get();
inline u32_t k_uptime_get_32(void)
{
	return (u32_t)aos_now_ms();
}
struct k_thread {
	_task_t task;
};
typedef _stack_element_t k_thread_stack_t;
inline void k_call_stacks_analyze(void) { }
static inline char *K_THREAD_STACK_BUFFER(k_thread_stack_t *sym)
{
	return (char *)sym;
}
typedef void (*k_thread_entry_t)(void *p1, void *p2, void *p3);
int k_thread_create(struct k_thread *new_thread, k_thread_stack_t *stack,
		size_t stack_size, k_thread_entry_t entry,
		void *p1, void *p2, void *p3,
		int prio, u32_t options, s32_t delay);
int k_yield();
unsigned int irq_lock();
void irq_unlock(unsigned int key);
typedef int atomic_t;
typedef atomic_t atomic_val_t;
extern int atomic_cas(atomic_t *target, atomic_val_t old_value,
		atomic_val_t new_value);
extern atomic_val_t atomic_add(atomic_t *target, atomic_val_t value);
extern atomic_val_t atomic_sub(atomic_t *target, atomic_val_t value);
extern atomic_val_t atomic_inc(atomic_t *target);
extern atomic_val_t atomic_dec(atomic_t *target);
extern atomic_val_t atomic_get(const atomic_t *target);
extern atomic_val_t atomic_set(atomic_t *target, atomic_val_t value);
extern atomic_val_t atomic_clear(atomic_t *target);
extern atomic_val_t atomic_or(atomic_t *target, atomic_val_t value);
extern atomic_val_t atomic_xor(atomic_t *target, atomic_val_t value);
extern atomic_val_t atomic_and(atomic_t *target, atomic_val_t value);
extern atomic_val_t atomic_nand(atomic_t *target, atomic_val_t value);
static inline int atomic_test_bit(const atomic_t *target, int bit)
{
	atomic_val_t val = atomic_get(((target) + ((bit) / (sizeof(atomic_val_t) * 8))));
	return (1 & (val >> (bit & ((sizeof(atomic_val_t) * 8) - 1))));
}
static inline int atomic_test_and_clear_bit(atomic_t *target, int bit)
{
	atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
	atomic_val_t old;
	old = atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
	return (old & mask) != 0;
}
static inline int atomic_test_and_set_bit(atomic_t *target, int bit)
{
	atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
	atomic_val_t old;
	old = atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
	return (old & mask) != 0;
}
static inline void atomic_clear_bit(atomic_t *target, int bit)
{
	atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
	atomic_and(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), ~mask);
}
static inline void atomic_set_bit(atomic_t *target, int bit)
{
	atomic_val_t mask = (1 << ((bit) & ((sizeof(atomic_val_t) * 8) - 1)));
	atomic_or(((target) + ((bit) / (sizeof(atomic_val_t) * 8))), mask);
}
struct k_work_q {
	struct k_fifo fifo;
};
int k_work_q_start();
enum {
	K_WORK_STATE_PENDING,
};
struct k_work;
typedef void (*k_work_handler_t)(struct k_work *work);
struct k_work {
	void *_reserved;
	k_work_handler_t handler;
	atomic_t flags[1];
};
int k_work_init(struct k_work *work, k_work_handler_t handler);
void k_work_submit(struct k_work *work);
struct k_delayed_work {
	struct k_work work;
	struct k_work_q *work_q;
	k_timer_t timer;
};
void k_delayed_work_init(struct k_delayed_work *work, k_work_handler_t handler);
int k_delayed_work_submit(struct k_delayed_work *work, uint32_t delay);
int k_delayed_work_cancel(struct k_delayed_work *work);
s32_t k_delayed_work_remaining_get(struct k_delayed_work *work);
enum _poll_types_bits {
	_POLL_TYPE_IGNORE,
	_POLL_TYPE_SIGNAL,
	_POLL_TYPE_SEM_AVAILABLE,
	_POLL_TYPE_DATA_AVAILABLE,
	_POLL_NUM_TYPES
};
enum _poll_states_bits {
	_POLL_STATE_NOT_READY,
	_POLL_STATE_SIGNALED,
	_POLL_STATE_SEM_AVAILABLE,
	_POLL_STATE_DATA_AVAILABLE,
	_POLL_NUM_STATES
};
struct k_poll_event {
	sys_dnode_t _node;
	struct _poller *poller;
	u32_t tag:8;
	u32_t type:_POLL_NUM_TYPES;
	u32_t state:_POLL_NUM_STATES;
	u32_t mode:1;
	u32_t unused:(32 - (0 + 8 + _POLL_NUM_TYPES + _POLL_NUM_STATES + 1 ));
	union {
		void *obj;
		struct k_poll_signal *signal;
		struct k_sem *sem;
		struct k_fifo *fifo;
		struct k_queue *queue;
	};
};
struct k_poll_signal {
	sys_dlist_t poll_events;
	unsigned int signaled;
	int result;
};
extern int k_poll_signal(struct k_poll_signal *signal, int result);
extern int k_poll(struct k_poll_event *events, int num_events, s32_t timeout);
extern void k_poll_event_init(struct k_poll_event *event, u32_t type, int mode, void *obj);
enum k_poll_modes {
	K_POLL_MODE_NOTIFY_ONLY = 0,
	K_POLL_NUM_MODES
};
void k_sleep(s32_t duration);
unsigned int find_msb_set(u32_t op);
unsigned int find_lsb_set(u32_t op);
static inline int is_power_of_two(unsigned int x)
{
	return (x != 0) && !(x & (x - 1));
}
static inline s64_t arithmetic_shift_right(s64_t value, u8_t shift)
{
	s64_t sign_ext;
	if (shift == 0) {
		return value;
	}
	sign_ext = (value >> 63) & 1;
	sign_ext = -sign_ext;
	return (value >> shift) | (sign_ext << (64 - shift));
}
typedef struct {
	u8_t val[6];
} bt_addr_t;
typedef struct {
	u8_t type;
	bt_addr_t a;
} bt_addr_le_t;
static inline int bt_addr_cmp(const bt_addr_t *a, const bt_addr_t *b)
{
	return memcmp(a, b, sizeof(*a));
}
static inline int bt_addr_le_cmp(const bt_addr_le_t *a, const bt_addr_le_t *b)
{
	return memcmp(a, b, sizeof(*a));
}
static inline void bt_addr_copy(bt_addr_t *dst, const bt_addr_t *src)
{
	memcpy(dst, src, sizeof(*dst));
}
static inline void bt_addr_le_copy(bt_addr_le_t *dst, const bt_addr_le_t *src)
{
	memcpy(dst, src, sizeof(*dst));
}
int bt_addr_le_create_nrpa(bt_addr_le_t *addr);
int bt_addr_le_create_static(bt_addr_le_t *addr);
static inline 
	_Bool 
bt_addr_le_is_rpa(const bt_addr_le_t *addr)
{
	if (addr->type != 0x01) {
		return 
			0
			;
	}
	return (((&addr->a)->val[5] & 0xc0) == 0x40);
}
static inline 
	_Bool 
bt_addr_le_is_identity(const bt_addr_le_t *addr)
{
	if (addr->type == 0x00) {
		return 
			1
			;
	}
	return (((&addr->a)->val[5] & 0xc0) == 0xc0);
}
struct bt_hci_evt_hdr {
	u8_t evt;
	u8_t len;
} 
__attribute__((__packed__))
	;
	struct bt_hci_acl_hdr {
		u16_t handle;
		u16_t len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cmd_hdr {
		u16_t opcode;
		u8_t param_len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_op_inquiry {
		u8_t lap[3];
		u8_t length;
		u8_t num_rsp;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_connect {
		bt_addr_t bdaddr;
		u16_t packet_type;
		u8_t pscan_rep_mode;
		u8_t reserved;
		u16_t clock_offset;
		u8_t allow_role_switch;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_disconnect {
		u16_t handle;
		u8_t reason;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_connect_cancel {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_connect_cancel {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_accept_conn_req {
		bt_addr_t bdaddr;
		u8_t role;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_setup_sync_conn {
		u16_t handle;
		u32_t tx_bandwidth;
		u32_t rx_bandwidth;
		u16_t max_latency;
		u16_t content_format;
		u8_t retrans_effort;
		u16_t pkt_type;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_accept_sync_conn_req {
		bt_addr_t bdaddr;
		u32_t tx_bandwidth;
		u32_t rx_bandwidth;
		u16_t max_latency;
		u16_t content_format;
		u8_t retrans_effort;
		u16_t pkt_type;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_reject_conn_req {
		bt_addr_t bdaddr;
		u8_t reason;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_link_key_reply {
		bt_addr_t bdaddr;
		u8_t link_key[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_link_key_neg_reply {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_pin_code_reply {
		bt_addr_t bdaddr;
		u8_t pin_len;
		u8_t pin_code[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_pin_code_reply {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_pin_code_neg_reply {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_pin_code_neg_reply {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_auth_requested {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_set_conn_encrypt {
		u16_t handle;
		u8_t encrypt;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_remote_name_request {
		bt_addr_t bdaddr;
		u8_t pscan_rep_mode;
		u8_t reserved;
		u16_t clock_offset;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_remote_name_cancel {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_remote_name_cancel {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_remote_features {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_remote_ext_features {
		u16_t handle;
		u8_t page;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_remote_version_info {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_io_capability_reply {
		bt_addr_t bdaddr;
		u8_t capability;
		u8_t oob_data;
		u8_t authentication;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_user_confirm_reply {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_user_confirm_reply {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_user_passkey_reply {
		bt_addr_t bdaddr;
		u32_t passkey;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_user_passkey_neg_reply {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_io_capability_neg_reply {
		bt_addr_t bdaddr;
		u8_t reason;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_set_event_mask {
		u8_t events[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_write_local_name {
		u8_t local_name[248];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_tx_power_level {
		u16_t handle;
		u8_t type;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_tx_power_level {
		u8_t status;
		u16_t handle;
		s8_t tx_power_level;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_set_ctl_to_host_flow {
		u8_t flow_enable;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_host_buffer_size {
		u16_t acl_mtu;
		u8_t sco_mtu;
		u16_t acl_pkts;
		u16_t sco_pkts;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_handle_count {
		u16_t handle;
		u16_t count;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_host_num_completed_packets {
		u8_t num_handles;
		struct bt_hci_handle_count h[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_write_inquiry_mode {
		u8_t mode;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_write_ssp_mode {
		u8_t mode;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_set_event_mask_page_2 {
		u8_t events_page_2[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_write_le_host_supp {
		u8_t le;
		u8_t simul;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_write_sc_host_supp {
		u8_t sc_support;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_auth_payload_timeout {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_auth_payload_timeout {
		u8_t status;
		u16_t handle;
		u16_t auth_payload_timeout;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_write_auth_payload_timeout {
		u16_t handle;
		u16_t auth_payload_timeout;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_write_auth_payload_timeout {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_local_version_info {
		u8_t status;
		u8_t hci_version;
		u16_t hci_revision;
		u8_t lmp_version;
		u16_t manufacturer;
		u16_t lmp_subversion;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_supported_commands {
		u8_t status;
		u8_t commands[64];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_local_ext_features {
		u8_t page;
	};
struct bt_hci_rp_read_local_ext_features {
	u8_t status;
	u8_t page;
	u8_t max_page;
	u8_t ext_features[8];
} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_local_features {
		u8_t status;
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_buffer_size {
		u8_t status;
		u16_t acl_max_len;
		u8_t sco_max_len;
		u16_t acl_max_num;
		u16_t sco_max_num;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_bd_addr {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_rssi {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_rssi {
		u8_t status;
		u16_t handle;
		s8_t rssi;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_read_encryption_key_size {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_read_encryption_key_size {
		u8_t status;
		u16_t handle;
		u8_t key_size;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_event_mask {
		u8_t events[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_buffer_size {
		u8_t status;
		u16_t le_max_len;
		u8_t le_max_num;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_local_features {
		u8_t status;
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_random_address {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_adv_param {
		u16_t min_interval;
		u16_t max_interval;
		u8_t type;
		u8_t own_addr_type;
		bt_addr_le_t direct_addr;
		u8_t channel_map;
		u8_t filter_policy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_chan_tx_power {
		u8_t status;
		s8_t tx_power_level;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_adv_data {
		u8_t len;
		u8_t data[31];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_scan_rsp_data {
		u8_t len;
		u8_t data[31];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_adv_enable {
		u8_t enable;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_scan_param {
		u8_t scan_type;
		u16_t interval;
		u16_t window;
		u8_t addr_type;
		u8_t filter_policy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_scan_enable {
		u8_t enable;
		u8_t filter_dup;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_create_conn {
		u16_t scan_interval;
		u16_t scan_window;
		u8_t filter_policy;
		bt_addr_le_t peer_addr;
		u8_t own_addr_type;
		u16_t conn_interval_min;
		u16_t conn_interval_max;
		u16_t conn_latency;
		u16_t supervision_timeout;
		u16_t min_ce_len;
		u16_t max_ce_len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_wl_size {
		u8_t status;
		u8_t wl_size;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_add_dev_to_wl {
		bt_addr_le_t addr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_rem_dev_from_wl {
		bt_addr_le_t addr;
	} 
__attribute__((__packed__))
	;
	struct hci_cp_le_conn_update {
		u16_t handle;
		u16_t conn_interval_min;
		u16_t conn_interval_max;
		u16_t conn_latency;
		u16_t supervision_timeout;
		u16_t min_ce_len;
		u16_t max_ce_len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_host_chan_classif {
		u8_t ch_map[5];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_read_chan_map {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_chan_map {
		u8_t status;
		u16_t handle;
		u8_t ch_map[5];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_read_remote_features {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_encrypt {
		u8_t key[16];
		u8_t plaintext[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_encrypt {
		u8_t status;
		u8_t enc_data[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_rand {
		u8_t status;
		u8_t rand[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_start_encryption {
		u16_t handle;
		u64_t rand;
		u16_t ediv;
		u8_t ltk[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_ltk_req_reply {
		u16_t handle;
		u8_t ltk[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_ltk_req_reply {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_ltk_req_neg_reply {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_ltk_req_neg_reply {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_supp_states {
		u8_t status;
		u8_t le_states[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_rx_test {
		u8_t rx_ch;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_tx_test {
		u8_t tx_ch;
		u8_t test_data_len;
		u8_t pkt_payload;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_test_end {
		u8_t status;
		u16_t rx_pkt_count;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_conn_param_req_reply {
		u16_t handle;
		u16_t interval_min;
		u16_t interval_max;
		u16_t latency;
		u16_t timeout;
		u16_t min_ce_len;
		u16_t max_ce_len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_conn_param_req_reply {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_conn_param_req_neg_reply {
		u16_t handle;
		u8_t reason;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_conn_param_req_neg_reply {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_data_len {
		u16_t handle;
		u16_t tx_octets;
		u16_t tx_time;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_set_data_len {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_default_data_len {
		u8_t status;
		u16_t max_tx_octets;
		u16_t max_tx_time;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_write_default_data_len {
		u16_t max_tx_octets;
		u16_t max_tx_time;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_generate_dhkey {
		u8_t key[64];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_add_dev_to_rl {
		bt_addr_le_t peer_id_addr;
		u8_t peer_irk[16];
		u8_t local_irk[16];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_rem_dev_from_rl {
		bt_addr_le_t peer_id_addr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_rl_size {
		u8_t status;
		u8_t rl_size;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_read_peer_rpa {
		bt_addr_le_t peer_id_addr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_peer_rpa {
		u8_t status;
		bt_addr_t peer_rpa;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_read_local_rpa {
		bt_addr_le_t peer_id_addr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_local_rpa {
		u8_t status;
		bt_addr_t local_rpa;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_addr_res_enable {
		u8_t enable;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_rpa_timeout {
		u16_t rpa_timeout;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_max_data_len {
		u8_t status;
		u16_t max_tx_octets;
		u16_t max_tx_time;
		u16_t max_rx_octets;
		u16_t max_rx_time;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_read_phy {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_phy {
		u8_t status;
		u16_t handle;
		u8_t tx_phy;
		u8_t rx_phy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_default_phy {
		u8_t all_phys;
		u8_t tx_phys;
		u8_t rx_phys;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_phy {
		u16_t handle;
		u8_t all_phys;
		u8_t tx_phys;
		u8_t rx_phys;
		u16_t phy_opts;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_enh_rx_test {
		u8_t rx_ch;
		u8_t phy;
		u8_t mod_index;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_enh_tx_test {
		u8_t tx_ch;
		u8_t test_data_len;
		u8_t pkt_payload;
		u8_t phy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_adv_set_random_addr {
		u8_t handle;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_ext_adv_param {
		u8_t handle;
		u16_t props;
		u8_t prim_min_interval[3];
		u8_t prim_max_interval[3];
		u8_t prim_channel_map;
		u8_t own_addr_type;
		bt_addr_le_t peer_addr;
		u8_t filter_policy;
		s8_t tx_power;
		u8_t prim_adv_phy;
		u8_t sec_adv_max_skip;
		u8_t sec_adv_phy;
		u8_t sid;
		u8_t scan_req_notify_enable;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_set_ext_adv_param {
		u8_t status;
		s8_t tx_power;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_ext_adv_data {
		u8_t handle;
		u8_t op;
		u8_t frag_pref;
		u8_t len;
		u8_t data[251];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_ext_scan_rsp_data {
		u8_t handle;
		u8_t op;
		u8_t frag_pref;
		u8_t len;
		u8_t data[251];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_ext_adv_set {
		u8_t handle;
		u16_t duration;
		u8_t max_ext_adv_evts;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_ext_adv_enable {
		u8_t enable;
		u8_t set_num;
		struct bt_hci_ext_adv_set s[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_max_adv_data_len {
		u8_t status;
		u16_t max_adv_data_len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_num_adv_sets {
		u8_t status;
		u8_t num_sets;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_remove_adv_set {
		u8_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_per_adv_param {
		u8_t handle;
		u16_t min_interval;
		u16_t max_interval;
		u16_t props;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_per_adv_data {
		u8_t handle;
		u8_t op;
		u8_t len;
		u8_t data[251];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_per_adv_enable {
		u8_t enable;
		u8_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_ext_scan_phy {
		u8_t type;
		u16_t interval;
		u16_t window;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_ext_scan_param {
		u8_t own_addr_type;
		u8_t filter_policy;
		u8_t phys;
		struct bt_hci_ext_scan_phy p[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_ext_scan_enable {
		u8_t enable;
		u8_t filter_dup;
		u16_t duration;
		u16_t period;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_ext_conn_phy {
		u16_t interval;
		u16_t window;
		u16_t conn_interval_min;
		u16_t conn_interval_max;
		u16_t conn_latency;
		u16_t supervision_timeout;
		u16_t min_ce_len;
		u16_t max_ce_len;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_ext_create_conn {
		u8_t filter_policy;
		u8_t own_addr_type;
		bt_addr_le_t peer_addr;
		u8_t phys;
		struct bt_hci_ext_conn_phy p[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_per_adv_create_sync {
		u8_t filter_policy;
		u8_t sid;
		bt_addr_le_t addr;
		u16_t skip;
		u16_t sync_timeout;
		u8_t unused;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_per_adv_terminate_sync {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_add_dev_to_per_adv_list {
		bt_addr_le_t addr;
		u8_t sid;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_rem_dev_from_per_adv_list {
		bt_addr_le_t addr;
		u8_t sid;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_per_adv_list_size {
		u8_t status;
		u8_t list_size;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_tx_power {
		u8_t status;
		s8_t min_tx_power;
		s8_t max_tx_power;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_rp_le_read_rf_path_comp {
		u8_t status;
		s16_t tx_path_comp;
		s16_t rx_path_comp;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_write_rf_path_comp {
		s16_t tx_path_comp;
		s16_t rx_path_comp;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_cp_le_set_privacy_mode {
		bt_addr_le_t id_addr;
		u8_t mode;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_inquiry_complete {
		u8_t status;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_conn_complete {
		u8_t status;
		u16_t handle;
		bt_addr_t bdaddr;
		u8_t link_type;
		u8_t encr_enabled;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_conn_request {
		bt_addr_t bdaddr;
		u8_t dev_class[3];
		u8_t link_type;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_disconn_complete {
		u8_t status;
		u16_t handle;
		u8_t reason;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_auth_complete {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_remote_name_req_complete {
		u8_t status;
		bt_addr_t bdaddr;
		u8_t name[248];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_encrypt_change {
		u8_t status;
		u16_t handle;
		u8_t encrypt;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_remote_features {
		u8_t status;
		u16_t handle;
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_remote_version_info {
		u8_t status;
		u16_t handle;
		u8_t version;
		u16_t manufacturer;
		u16_t subversion;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_cmd_complete {
		u8_t ncmd;
		u16_t opcode;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_cc_status {
		u8_t status;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_cmd_status {
		u8_t status;
		u8_t ncmd;
		u16_t opcode;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_role_change {
		u8_t status;
		bt_addr_t bdaddr;
		u8_t role;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_num_completed_packets {
		u8_t num_handles;
		struct bt_hci_handle_count h[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_pin_code_req {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_link_key_req {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_link_key_notify {
		bt_addr_t bdaddr;
		u8_t link_key[16];
		u8_t key_type;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_data_buf_overflow {
		u8_t link_type;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_inquiry_result_with_rssi {
		bt_addr_t addr;
		u8_t pscan_rep_mode;
		u8_t reserved;
		u8_t cod[3];
		u16_t clock_offset;
		s8_t rssi;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_remote_ext_features {
		u8_t status;
		u16_t handle;
		u8_t page;
		u8_t max_page;
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_sync_conn_complete {
		u8_t status;
		u16_t handle;
		bt_addr_t bdaddr;
		u8_t link_type;
		u8_t tx_interval;
		u8_t retansmission_window;
		u16_t rx_pkt_length;
		u16_t tx_pkt_length;
		u8_t air_mode;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_extended_inquiry_result {
		u8_t num_reports;
		bt_addr_t addr;
		u8_t pscan_rep_mode;
		u8_t reserved;
		u8_t cod[3];
		u16_t clock_offset;
		s8_t rssi;
		u8_t eir[240];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_encrypt_key_refresh_complete {
		u8_t status;
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_io_capa_req {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_io_capa_resp {
		bt_addr_t bdaddr;
		u8_t capability;
		u8_t oob_data;
		u8_t authentication;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_user_confirm_req {
		bt_addr_t bdaddr;
		u32_t passkey;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_user_passkey_req {
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_ssp_complete {
		u8_t status;
		bt_addr_t bdaddr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_user_passkey_notify {
		bt_addr_t bdaddr;
		u32_t passkey;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_meta_event {
		u8_t subevent;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_auth_payload_timeout_exp {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_conn_complete {
		u8_t status;
		u16_t handle;
		u8_t role;
		bt_addr_le_t peer_addr;
		u16_t interval;
		u16_t latency;
		u16_t supv_timeout;
		u8_t clock_accuracy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_advertising_info {
		u8_t evt_type;
		bt_addr_le_t addr;
		u8_t length;
		u8_t data[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_advertising_report {
		u8_t num_reports;
		struct bt_hci_evt_le_advertising_info adv_info[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_conn_update_complete {
		u8_t status;
		u16_t handle;
		u16_t interval;
		u16_t latency;
		u16_t supv_timeout;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_remote_feat_complete {
		u8_t status;
		u16_t handle;
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_ltk_request {
		u16_t handle;
		u64_t rand;
		u16_t ediv;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_conn_param_req {
		u16_t handle;
		u16_t interval_min;
		u16_t interval_max;
		u16_t latency;
		u16_t timeout;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_data_len_change {
		u16_t handle;
		u16_t max_tx_octets;
		u16_t max_tx_time;
		u16_t max_rx_octets;
		u16_t max_rx_time;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_p256_public_key_complete {
		u8_t status;
		u8_t key[64];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_generate_dhkey_complete {
		u8_t status;
		u8_t dhkey[32];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_enh_conn_complete {
		u8_t status;
		u16_t handle;
		u8_t role;
		bt_addr_le_t peer_addr;
		bt_addr_t local_rpa;
		bt_addr_t peer_rpa;
		u16_t interval;
		u16_t latency;
		u16_t supv_timeout;
		u8_t clock_accuracy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_direct_adv_info {
		u8_t evt_type;
		bt_addr_le_t addr;
		bt_addr_le_t dir_addr;
		s8_t rssi;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_direct_adv_report {
		u8_t num_reports;
		struct bt_hci_evt_le_direct_adv_info direct_adv_info[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_phy_update_complete {
		u8_t status;
		u16_t handle;
		u8_t tx_phy;
		u8_t rx_phy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_ext_advertising_info {
		u8_t evt_type;
		bt_addr_le_t addr;
		u8_t prim_phy;
		u8_t sec_phy;
		u8_t sid;
		s8_t tx_power;
		s8_t rssi;
		u16_t interval;
		bt_addr_le_t direct_addr;
		u8_t length;
		u8_t data[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_ext_advertising_report {
		u8_t num_reports;
		struct bt_hci_evt_le_ext_advertising_info adv_info[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_per_adv_sync_established {
		u8_t status;
		u16_t handle;
		u8_t sid;
		bt_addr_le_t adv_addr;
		u8_t phy;
		u16_t interval;
		u8_t clock_accuracy;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_per_advertising_report {
		u16_t handle;
		s8_t tx_power;
		s8_t rssi;
		u8_t unused;
		u8_t data_status;
		u8_t length;
		u8_t data[0];
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_per_adv_sync_lost {
		u16_t handle;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_per_adv_set_terminated {
		u8_t status;
		u8_t adv_handle;
		u16_t conn_handle;
		u8_t num_completed_ext_adv_evts;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_scan_req_received {
		u8_t handle;
		bt_addr_le_t addr;
	} 
__attribute__((__packed__))
	;
	struct bt_hci_evt_le_chan_sel_algo {
		u16_t handle;
		u8_t chan_sel_algo;
	} 
__attribute__((__packed__))
	;
	u8_t util_ones_count_get(u8_t *octets, u8_t octets_len);
	struct pdu_adv_payload_adv_ind {
		u8_t addr[6];
		u8_t data[31];
	} 
__attribute__((__packed__))
	;
	struct pdu_adv_payload_direct_ind {
		u8_t adv_addr[6];
		u8_t tgt_addr[6];
	} 
__attribute__((__packed__))
	;
	struct pdu_adv_payload_scan_rsp {
		u8_t addr[6];
		u8_t data[31];
	} 
__attribute__((__packed__))
	;
	struct pdu_adv_payload_scan_req {
		u8_t scan_addr[6];
		u8_t adv_addr[6];
	} 
__attribute__((__packed__))
	;
	struct pdu_adv_payload_connect_ind {
		u8_t init_addr[6];
		u8_t adv_addr[6];
		struct {
			u8_t access_addr[4];
			u8_t crc_init[3];
			u8_t win_size;
			u16_t win_offset;
			u16_t interval;
			u16_t latency;
			u16_t timeout;
			u8_t chan_map[5];
			u8_t hop:5;
			u8_t sca:3;
		} 
		__attribute__((__packed__)) 
			lldata;
	} 
__attribute__((__packed__))
	;
	enum pdu_adv_type {
		PDU_ADV_TYPE_ADV_IND = 0x00,
		PDU_ADV_TYPE_DIRECT_IND = 0x01,
		PDU_ADV_TYPE_NONCONN_IND = 0x02,
		PDU_ADV_TYPE_SCAN_REQ = 0x03,
		PDU_ADV_TYPE_AUX_SCAN_REQ = PDU_ADV_TYPE_SCAN_REQ,
		PDU_ADV_TYPE_SCAN_RSP = 0x04,
		PDU_ADV_TYPE_CONNECT_IND = 0x05,
		PDU_ADV_TYPE_AUX_CONNECT_REQ = PDU_ADV_TYPE_CONNECT_IND,
		PDU_ADV_TYPE_SCAN_IND = 0x06,
		PDU_ADV_TYPE_EXT_IND = 0x07,
		PDU_ADV_TYPE_AUX_ADV_IND = PDU_ADV_TYPE_EXT_IND,
		PDU_ADV_TYPE_AUX_SCAN_RSP = PDU_ADV_TYPE_EXT_IND,
		PDU_ADV_TYPE_AUX_SYNC_IND = PDU_ADV_TYPE_EXT_IND,
		PDU_ADV_TYPE_AUX_CHAIN_IND = PDU_ADV_TYPE_EXT_IND,
		PDU_ADV_TYPE_AUX_CONNECT_RSP = 0x08,
	} 
__attribute__((__packed__))
	;
	struct pdu_adv {
		u8_t type:4;
		u8_t rfu:1;
		u8_t chan_sel:1;
		u8_t tx_addr:1;
		u8_t rx_addr:1;
		u8_t len:8;
		union {
			struct pdu_adv_payload_adv_ind adv_ind;
			struct pdu_adv_payload_direct_ind direct_ind;
			struct pdu_adv_payload_scan_req scan_req;
			struct pdu_adv_payload_scan_rsp scan_rsp;
			struct pdu_adv_payload_connect_ind connect_ind;
		} 
		__attribute__((__packed__)) 
			payload;
	} 
__attribute__((__packed__))
	;
	enum pdu_data_llid {
		PDU_DATA_LLID_RESV = 0x00,
		PDU_DATA_LLID_DATA_CONTINUE = 0x01,
		PDU_DATA_LLID_DATA_START = 0x02,
		PDU_DATA_LLID_CTRL = 0x03,
	};
enum pdu_data_llctrl_type {
	PDU_DATA_LLCTRL_TYPE_CONN_UPDATE_IND = 0x00,
	PDU_DATA_LLCTRL_TYPE_CHAN_MAP_IND = 0x01,
	PDU_DATA_LLCTRL_TYPE_TERMINATE_IND = 0x02,
	PDU_DATA_LLCTRL_TYPE_ENC_REQ = 0x03,
	PDU_DATA_LLCTRL_TYPE_ENC_RSP = 0x04,
	PDU_DATA_LLCTRL_TYPE_START_ENC_REQ = 0x05,
	PDU_DATA_LLCTRL_TYPE_START_ENC_RSP = 0x06,
	PDU_DATA_LLCTRL_TYPE_UNKNOWN_RSP = 0x07,
	PDU_DATA_LLCTRL_TYPE_FEATURE_REQ = 0x08,
	PDU_DATA_LLCTRL_TYPE_FEATURE_RSP = 0x09,
	PDU_DATA_LLCTRL_TYPE_PAUSE_ENC_REQ = 0x0A,
	PDU_DATA_LLCTRL_TYPE_PAUSE_ENC_RSP = 0x0B,
	PDU_DATA_LLCTRL_TYPE_VERSION_IND = 0x0C,
	PDU_DATA_LLCTRL_TYPE_REJECT_IND = 0x0D,
	PDU_DATA_LLCTRL_TYPE_SLAVE_FEATURE_REQ = 0x0E,
	PDU_DATA_LLCTRL_TYPE_CONN_PARAM_REQ = 0x0F,
	PDU_DATA_LLCTRL_TYPE_CONN_PARAM_RSP = 0x10,
	PDU_DATA_LLCTRL_TYPE_REJECT_EXT_IND = 0x11,
	PDU_DATA_LLCTRL_TYPE_PING_REQ = 0x12,
	PDU_DATA_LLCTRL_TYPE_PING_RSP = 0x13,
	PDU_DATA_LLCTRL_TYPE_LENGTH_REQ = 0x14,
	PDU_DATA_LLCTRL_TYPE_LENGTH_RSP = 0x15,
	PDU_DATA_LLCTRL_TYPE_PHY_REQ = 0x16,
	PDU_DATA_LLCTRL_TYPE_PHY_RSP = 0x17,
	PDU_DATA_LLCTRL_TYPE_PHY_UPD_IND = 0x18,
	PDU_DATA_LLCTRL_TYPE_MIN_USED_CHAN_IND = 0x19,
};
struct pdu_data_llctrl_conn_update_ind {
	u8_t win_size;
	u16_t win_offset;
	u16_t interval;
	u16_t latency;
	u16_t timeout;
	u16_t instant;
} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_chan_map_ind {
		u8_t chm[5];
		u16_t instant;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_terminate_ind {
		u8_t error_code;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_enc_req {
		u8_t rand[8];
		u8_t ediv[2];
		u8_t skdm[8];
		u8_t ivm[4];
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_enc_rsp {
		u8_t skds[8];
		u8_t ivs[4];
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_unknown_rsp {
		u8_t type;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_feature_req {
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_feature_rsp {
		u8_t features[8];
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_version_ind {
		u8_t version_number;
		u16_t company_id;
		u16_t sub_version_number;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_reject_ind {
		u8_t error_code;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_conn_param_req {
		u16_t interval_min;
		u16_t interval_max;
		u16_t latency;
		u16_t timeout;
		u8_t preferred_periodicity;
		u16_t reference_conn_event_count;
		u16_t offset0;
		u16_t offset1;
		u16_t offset2;
		u16_t offset3;
		u16_t offset4;
		u16_t offset5;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_conn_param_rsp {
		u16_t interval_min;
		u16_t interval_max;
		u16_t latency;
		u16_t timeout;
		u8_t preferred_periodicity;
		u16_t reference_conn_event_count;
		u16_t offset0;
		u16_t offset1;
		u16_t offset2;
		u16_t offset3;
		u16_t offset4;
		u16_t offset5;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_reject_ext_ind {
		u8_t reject_opcode;
		u8_t error_code;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_length_req_rsp {
		u16_t max_rx_octets;
		u16_t max_rx_time;
		u16_t max_tx_octets;
		u16_t max_tx_time;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_phy_req_rsp {
		u8_t tx_phys;
		u8_t rx_phys;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_phy_upd_ind {
		u8_t m_to_s_phy;
		u8_t s_to_m_phy;
		u16_t instant;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl_min_used_chans_ind {
		u8_t phys;
		u8_t min_used_chans;
	} 
__attribute__((__packed__))
	;
	struct pdu_data_llctrl {
		u8_t opcode;
		union {
			struct pdu_data_llctrl_conn_update_ind conn_update_ind;
			struct pdu_data_llctrl_chan_map_ind chan_map_ind;
			struct pdu_data_llctrl_terminate_ind terminate_ind;
			struct pdu_data_llctrl_enc_req enc_req;
			struct pdu_data_llctrl_enc_rsp enc_rsp;
			struct pdu_data_llctrl_unknown_rsp unknown_rsp;
			struct pdu_data_llctrl_feature_req feature_req;
			struct pdu_data_llctrl_feature_rsp feature_rsp;
			struct pdu_data_llctrl_version_ind version_ind;
			struct pdu_data_llctrl_reject_ind reject_ind;
			struct pdu_data_llctrl_feature_req slave_feature_req;
			struct pdu_data_llctrl_conn_param_req conn_param_req;
			struct pdu_data_llctrl_conn_param_rsp conn_param_rsp;
			struct pdu_data_llctrl_reject_ext_ind reject_ext_ind;
			struct pdu_data_llctrl_length_req_rsp length_req;
			struct pdu_data_llctrl_length_req_rsp length_rsp;
			struct pdu_data_llctrl_phy_req_rsp phy_req;
			struct pdu_data_llctrl_phy_req_rsp phy_rsp;
			struct pdu_data_llctrl_phy_upd_ind phy_upd_ind;
			struct pdu_data_llctrl_min_used_chans_ind min_used_chans_ind;
		} 
		__attribute__((__packed__)) 
			ctrldata;
	} 
__attribute__((__packed__))
	;
	struct pdu_data {
		u8_t ll_id:2;
		u8_t nesn:1;
		u8_t sn:1;
		u8_t md:1;
		u8_t rfu:3;
		u8_t len:8;
		u8_t resv:8;
		union {
			u8_t lldata[1];
			struct pdu_data_llctrl llctrl;
		} 
		__attribute__((__packed__)) 
			payload;
	} 
__attribute__((__packed__))
	;
	struct radio_adv_data {
		u8_t data[2][(
				__builtin_offsetof (
					struct pdu_adv
					, 
					payload
					) 
				+ 37)];
		u8_t first;
		u8_t last;
	};
struct radio_pdu_node_tx {
	void *next;
	u8_t pdu_data[1];
};
enum radio_pdu_node_rx_type {
	NODE_RX_TYPE_NONE,
	NODE_RX_TYPE_DC_PDU,
	NODE_RX_TYPE_REPORT,
	NODE_RX_TYPE_CONNECTION,
	NODE_RX_TYPE_TERMINATE,
	NODE_RX_TYPE_CONN_UPDATE,
	NODE_RX_TYPE_ENC_REFRESH,
	NODE_RX_TYPE_CHAN_SEL_ALGO,
	NODE_RX_TYPE_PHY_UPDATE,
};
struct radio_le_conn_cmplt {
	u8_t status;
	u8_t role;
	u8_t peer_addr_type;
	u8_t peer_addr[6];
	u16_t interval;
	u16_t latency;
	u16_t timeout;
	u8_t mca;
} 
__attribute__((__packed__))
	;
	struct radio_le_conn_update_cmplt {
		u8_t status;
		u16_t interval;
		u16_t latency;
		u16_t timeout;
	} 
__attribute__((__packed__))
	;
	struct radio_le_chan_sel_algo {
		u8_t chan_sel_algo;
	} 
__attribute__((__packed__))
	;
	struct radio_le_phy_upd_cmplt {
		u8_t status;
		u8_t tx;
		u8_t rx;
	} 
__attribute__((__packed__))
	;
	struct radio_pdu_node_rx_hdr {
		union {
			sys_snode_t node;
			void *next;
			void *link;
			u8_t packet_release_last;
		} onion;
		enum radio_pdu_node_rx_type type;
		u16_t handle;
	};
struct radio_pdu_node_rx {
	struct radio_pdu_node_rx_hdr hdr;
	u8_t pdu_data[1];
};
u32_t radio_init(void *hf_clock, u8_t sca, u8_t connection_count_max,
		u8_t rx_count_max, u8_t tx_count_max,
		u16_t packet_data_octets_max,
		u16_t packet_tx_data_size, u8_t *mem_radio,
		u16_t mem_size);
struct device *radio_hf_clock_get(void);
void radio_ticks_active_to_start_set(u32_t ticks_active_to_start);
struct radio_adv_data *radio_adv_data_get(void);
struct radio_adv_data *radio_scan_data_get(void);
u32_t radio_adv_enable(u16_t interval, u8_t chan_map, u8_t filter_policy,
		u8_t rl_idx);
u32_t radio_adv_disable(void);
u32_t radio_adv_is_enabled(void);
u32_t radio_adv_filter_pol_get(void);
u32_t radio_scan_enable(u8_t type, u8_t init_addr_type, u8_t *init_addr,
		u16_t interval, u16_t window, u8_t filter_policy,
		u8_t rpa_gen, u8_t rl_idx);
u32_t radio_scan_disable(void);
u32_t radio_scan_is_enabled(void);
u32_t radio_scan_filter_pol_get(void);
u32_t radio_connect_enable(u8_t adv_addr_type, u8_t *adv_addr,
		u16_t interval, u16_t latency,
		u16_t timeout);
u8_t radio_rx_get(struct radio_pdu_node_rx **radio_pdu_node_rx,
		u16_t *handle);
void radio_rx_dequeue(void);
void radio_rx_mem_release(struct radio_pdu_node_rx **radio_pdu_node_rx);
u8_t radio_rx_fc_set(u16_t handle, u8_t fc);
u8_t radio_rx_fc_get(u16_t *handle);
struct radio_pdu_node_tx *radio_tx_mem_acquire(void);
void radio_tx_mem_release(struct radio_pdu_node_tx *pdu_data_node_tx);
u32_t radio_tx_mem_enqueue(u16_t handle,
		struct radio_pdu_node_tx *pdu_data_node_tx);
extern void radio_active_callback(u8_t active);
extern void radio_event_callback(void);
extern void ll_adv_scan_state_cb(u8_t bm);
int ll_init(struct k_sem *sem_rx);
void ll_reset(void);
void ll_radio_state_abort(void);
u32_t ll_radio_state_is_idle(void);
u8_t *ll_addr_get(u8_t addr_type, u8_t *p_bdaddr);
void ll_addr_set(u8_t addr_type, u8_t const *const p_bdaddr);
u32_t ll_adv_params_set(u16_t interval, u8_t adv_type,
		u8_t own_addr_type, u8_t direct_addr_type,
		u8_t const *const direct_addr, u8_t chan_map,
		u8_t filter_policy);
void ll_adv_data_set(u8_t len, u8_t const *const p_data);
void ll_scan_data_set(u8_t len, u8_t const *const p_data);
u32_t ll_adv_enable(u8_t enable);
u32_t ll_scan_params_set(u8_t type, u16_t interval, u16_t window,
		u8_t own_addr_type, u8_t filter_policy);
u32_t ll_scan_enable(u8_t enable);
u32_t ll_wl_size_get(void);
u32_t ll_wl_clear(void);
u32_t ll_wl_add(bt_addr_le_t *addr);
u32_t ll_wl_remove(bt_addr_le_t *addr);
void ll_rl_id_addr_get(u8_t rl_idx, u8_t *id_addr_type, u8_t *id_addr);
u32_t ll_rl_size_get(void);
u32_t ll_rl_clear(void);
u32_t ll_rl_add(bt_addr_le_t *id_addr, const u8_t pirk[16],
		const u8_t lirk[16]);
u32_t ll_rl_remove(bt_addr_le_t *id_addr);
void ll_rl_crpa_set(u8_t id_addr_type, u8_t *id_addr, u8_t rl_idx, u8_t *crpa);
u32_t ll_rl_crpa_get(bt_addr_le_t *id_addr, bt_addr_t *crpa);
u32_t ll_rl_lrpa_get(bt_addr_le_t *id_addr, bt_addr_t *lrpa);
u32_t ll_rl_enable(u8_t enable);
void ll_rl_timeout_set(u16_t timeout);
u32_t ll_priv_mode_set(bt_addr_le_t *id_addr, u8_t mode);
u32_t ll_create_connection(u16_t scan_interval, u16_t scan_window,
		u8_t filter_policy, u8_t peer_addr_type,
		u8_t *p_peer_addr, u8_t own_addr_type,
		u16_t interval, u16_t latency,
		u16_t timeout);
u32_t ll_connect_disable(void);
u32_t ll_conn_update(u16_t handle, u8_t cmd, u8_t status,
		u16_t interval, u16_t latency,
		u16_t timeout);
u32_t ll_chm_update(u8_t *chm);
u32_t ll_chm_get(u16_t handle, u8_t *chm);
u32_t ll_enc_req_send(u16_t handle, u8_t *rand, u8_t *ediv,
		u8_t *ltk);
u32_t ll_start_enc_req_send(u16_t handle, u8_t err_code,
		u8_t const *const ltk);
u32_t ll_feature_req_send(u16_t handle);
u32_t ll_version_ind_send(u16_t handle);
u32_t ll_terminate_ind_send(u16_t handle, u8_t reason);
void ll_timeslice_ticker_id_get(u8_t * const instance_index, u8_t * const user_id);
u32_t ll_rssi_get(u16_t handle, u8_t *rssi);
u32_t ll_tx_power_level_get(u16_t handle, u8_t type, s8_t *tx_power_level);
void ll_tx_power_get(s8_t *min, s8_t *max);
u32_t ll_phy_get(u16_t handle, u8_t *tx, u8_t *rx);
u32_t ll_phy_default_set(u8_t tx, u8_t rx);
u32_t ll_phy_req_send(u16_t handle, u8_t tx, u8_t flags, u8_t rx);
typedef enum {
	Reset_IRQn = -15,
	NonMaskableInt_IRQn = -14,
	HardFault_IRQn = -13,
	MemoryManagement_IRQn = -12,
	BusFault_IRQn = -11,
	UsageFault_IRQn = -10,
	SVCall_IRQn = -5,
	DebugMonitor_IRQn = -4,
	PendSV_IRQn = -2,
	SysTick_IRQn = -1,
	POWER_CLOCK_IRQn = 0,
	RADIO_IRQn = 1,
	UARTE0_UART0_IRQn = 2,
	SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn= 3,
	SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn= 4,
	NFCT_IRQn = 5,
	GPIOTE_IRQn = 6,
	SAADC_IRQn = 7,
	TIMER0_IRQn = 8,
	TIMER1_IRQn = 9,
	TIMER2_IRQn = 10,
	RTC0_IRQn = 11,
	TEMP_IRQn = 12,
	RNG_IRQn = 13,
	ECB_IRQn = 14,
	CCM_AAR_IRQn = 15,
	WDT_IRQn = 16,
	RTC1_IRQn = 17,
	QDEC_IRQn = 18,
	COMP_LPCOMP_IRQn = 19,
	SWI0_EGU0_IRQn = 20,
	SWI1_EGU1_IRQn = 21,
	SWI2_EGU2_IRQn = 22,
	SWI3_EGU3_IRQn = 23,
	SWI4_EGU4_IRQn = 24,
	SWI5_EGU5_IRQn = 25,
	TIMER3_IRQn = 26,
	TIMER4_IRQn = 27,
	PWM0_IRQn = 28,
	PDM_IRQn = 29,
	MWU_IRQn = 32,
	PWM1_IRQn = 33,
	PWM2_IRQn = 34,
	SPIM2_SPIS2_SPI2_IRQn = 35,
	RTC2_IRQn = 36,
	I2S_IRQn = 37,
	FPU_IRQn = 38,
	USBD_IRQn = 39,
	UARTE1_IRQn = 40,
	QSPI_IRQn = 41,
	CRYPTOCELL_IRQn = 42,
	PWM3_IRQn = 45,
	SPIM3_IRQn = 47
} IRQn_Type;
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
	__asm volatile ("cpsie i" : : : "memory");
}
__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
	__asm volatile ("cpsid i" : : : "memory");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_CONTROL(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, control" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline void __set_CONTROL(uint32_t control)
{
	__asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_IPSR(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, ipsr" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_APSR(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, apsr" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_xPSR(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, xpsr" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_PSP(void)
{
	register uint32_t result;
	__asm volatile ("MRS %0, psp\n" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline void __set_PSP(uint32_t topOfProcStack)
{
	__asm volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_MSP(void)
{
	register uint32_t result;
	__asm volatile ("MRS %0, msp\n" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline void __set_MSP(uint32_t topOfMainStack)
{
	__asm volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_PRIMASK(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, primask" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline void __set_PRIMASK(uint32_t priMask)
{
	__asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
__attribute__( ( always_inline ) ) static inline void __enable_fault_irq(void)
{
	__asm volatile ("cpsie f" : : : "memory");
}
__attribute__( ( always_inline ) ) static inline void __disable_fault_irq(void)
{
	__asm volatile ("cpsid f" : : : "memory");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_BASEPRI(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, basepri" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline void __set_BASEPRI(uint32_t value)
{
	__asm volatile ("MSR basepri, %0" : : "r" (value) : "memory");
}
__attribute__( ( always_inline ) ) static inline void __set_BASEPRI_MAX(uint32_t value)
{
	__asm volatile ("MSR basepri_max, %0" : : "r" (value) : "memory");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_FAULTMASK(void)
{
	uint32_t result;
	__asm volatile ("MRS %0, faultmask" : "=r" (result) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline void __set_FAULTMASK(uint32_t faultMask)
{
	__asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
__attribute__( ( always_inline ) ) static inline uint32_t __get_FPSCR(void)
{
	return(0);
}
__attribute__( ( always_inline ) ) static inline void __set_FPSCR(uint32_t fpscr)
{
}
__attribute__((always_inline)) static inline void __NOP(void)
{
	__asm volatile ("nop");
}
__attribute__((always_inline)) static inline void __WFI(void)
{
	__asm volatile ("wfi");
}
__attribute__((always_inline)) static inline void __WFE(void)
{
	__asm volatile ("wfe");
}
__attribute__((always_inline)) static inline void __SEV(void)
{
	__asm volatile ("sev");
}
__attribute__((always_inline)) static inline void __ISB(void)
{
	__asm volatile ("isb 0xF":::"memory");
}
__attribute__((always_inline)) static inline void __DSB(void)
{
	__asm volatile ("dsb 0xF":::"memory");
}
__attribute__((always_inline)) static inline void __DMB(void)
{
	__asm volatile ("dmb 0xF":::"memory");
}
__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{
	return __builtin_bswap32(value);
}
__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
	uint32_t result;
	__asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
	return(result);
}
__attribute__((always_inline)) static inline int32_t __REVSH(int32_t value)
{
	return (short)__builtin_bswap16(value);
}
__attribute__((always_inline)) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
	return (op1 >> op2) | (op1 << (32U - op2));
}
__attribute__((always_inline)) static inline uint32_t __RBIT(uint32_t value)
{
	uint32_t result;
	__asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
	return(result);
}
__attribute__((always_inline)) static inline uint8_t __LDREXB(volatile uint8_t *addr)
{
	uint32_t result;
	__asm volatile ("ldrexb %0, %1" : "=r" (result) : "Q" (*addr) );
	return ((uint8_t) result);
}
__attribute__((always_inline)) static inline uint16_t __LDREXH(volatile uint16_t *addr)
{
	uint32_t result;
	__asm volatile ("ldrexh %0, %1" : "=r" (result) : "Q" (*addr) );
	return ((uint16_t) result);
}
__attribute__((always_inline)) static inline uint32_t __LDREXW(volatile uint32_t *addr)
{
	uint32_t result;
	__asm volatile ("ldrex %0, %1" : "=r" (result) : "Q" (*addr) );
	return(result);
}
__attribute__((always_inline)) static inline uint32_t __STREXB(uint8_t value, volatile uint8_t *addr)
{
	uint32_t result;
	__asm volatile ("strexb %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
	return(result);
}
__attribute__((always_inline)) static inline uint32_t __STREXH(uint16_t value, volatile uint16_t *addr)
{
	uint32_t result;
	__asm volatile ("strexh %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
	return(result);
}
__attribute__((always_inline)) static inline uint32_t __STREXW(uint32_t value, volatile uint32_t *addr)
{
	uint32_t result;
	__asm volatile ("strex %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" (value) );
	return(result);
}
__attribute__((always_inline)) static inline void __CLREX(void)
{
	__asm volatile ("clrex" ::: "memory");
}
__attribute__((always_inline)) static inline uint32_t __RRX(uint32_t value)
{
	uint32_t result;
	__asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
	return(result);
}
__attribute__((always_inline)) static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
	uint32_t result;
	__asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*addr) );
	return ((uint8_t) result);
}
__attribute__((always_inline)) static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
	uint32_t result;
	__asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*addr) );
	return ((uint16_t) result);
}
__attribute__((always_inline)) static inline uint32_t __LDRT(volatile uint32_t *addr)
{
	uint32_t result;
	__asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*addr) );
	return(result);
}
__attribute__((always_inline)) static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{
	__asm volatile ("strbt %1, %0" : "=Q" (*addr) : "r" ((uint32_t)value) );
}
__attribute__((always_inline)) static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{
	__asm volatile ("strht %1, %0" : "=Q" (*addr) : "r" ((uint32_t)value) );
}
__attribute__((always_inline)) static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{
	__asm volatile ("strt %1, %0" : "=Q" (*addr) : "r" (value) );
}
__attribute__( ( always_inline ) ) static inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
	uint32_t result;
	__asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UXTB16(uint32_t op1)
{
	uint32_t result;
	__asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SXTB16(uint32_t op1)
{
	uint32_t result;
	__asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
	uint32_t result;
	__asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
	uint32_t result;
	__asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
	union llreg_u{
		uint32_t w32[2];
		uint64_t w64;
	} llr;
	llr.w64 = acc;
	__asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );
	return(llr.w64);
}
__attribute__( ( always_inline ) ) static inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
	union llreg_u{
		uint32_t w32[2];
		uint64_t w64;
	} llr;
	llr.w64 = acc;
	__asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );
	return(llr.w64);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
	uint32_t result;
	__asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
	uint32_t result;
	__asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
	union llreg_u{
		uint32_t w32[2];
		uint64_t w64;
	} llr;
	llr.w64 = acc;
	__asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );
	return(llr.w64);
}
__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
	union llreg_u{
		uint32_t w32[2];
		uint64_t w64;
	} llr;
	llr.w64 = acc;
	__asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );
	return(llr.w64);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
	uint32_t result;
	__asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline int32_t __QADD( int32_t op1, int32_t op2)
{
	int32_t result;
	__asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline int32_t __QSUB( int32_t op1, int32_t op2)
{
	int32_t result;
	__asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
	return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
	int32_t result;
	__asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
	return(result);
}
typedef union
{
	struct
	{
		uint32_t _reserved0:16;
		uint32_t GE:4;
		uint32_t _reserved1:7;
		uint32_t Q:1;
		uint32_t V:1;
		uint32_t C:1;
		uint32_t Z:1;
		uint32_t N:1;
	} b;
	uint32_t w;
} APSR_Type;
typedef union
{
	struct
	{
		uint32_t ISR:9;
		uint32_t _reserved0:23;
	} b;
	uint32_t w;
} IPSR_Type;
typedef union
{
	struct
	{
		uint32_t ISR:9;
		uint32_t _reserved0:7;
		uint32_t GE:4;
		uint32_t _reserved1:4;
		uint32_t T:1;
		uint32_t IT:2;
		uint32_t Q:1;
		uint32_t V:1;
		uint32_t C:1;
		uint32_t Z:1;
		uint32_t N:1;
	} b;
	uint32_t w;
} xPSR_Type;
typedef union
{
	struct
	{
		uint32_t nPRIV:1;
		uint32_t SPSEL:1;
		uint32_t FPCA:1;
		uint32_t _reserved0:29;
	} b;
	uint32_t w;
} CONTROL_Type;
typedef struct
{
	volatile uint32_t ISER[8U];
	uint32_t RESERVED0[24U];
	volatile uint32_t ICER[8U];
	uint32_t RSERVED1[24U];
	volatile uint32_t ISPR[8U];
	uint32_t RESERVED2[24U];
	volatile uint32_t ICPR[8U];
	uint32_t RESERVED3[24U];
	volatile uint32_t IABR[8U];
	uint32_t RESERVED4[56U];
	volatile uint8_t IP[240U];
	uint32_t RESERVED5[644U];
	volatile uint32_t STIR;
} NVIC_Type;
typedef struct
{
	volatile const uint32_t CPUID;
	volatile uint32_t ICSR;
	volatile uint32_t VTOR;
	volatile uint32_t AIRCR;
	volatile uint32_t SCR;
	volatile uint32_t CCR;
	volatile uint8_t SHP[12U];
	volatile uint32_t SHCSR;
	volatile uint32_t CFSR;
	volatile uint32_t HFSR;
	volatile uint32_t DFSR;
	volatile uint32_t MMFAR;
	volatile uint32_t BFAR;
	volatile uint32_t AFSR;
	volatile const uint32_t PFR[2U];
	volatile const uint32_t DFR;
	volatile const uint32_t ADR;
	volatile const uint32_t MMFR[4U];
	volatile const uint32_t ISAR[5U];
	uint32_t RESERVED0[5U];
	volatile uint32_t CPACR;
} SCB_Type;
typedef struct
{
	uint32_t RESERVED0[1U];
	volatile const uint32_t ICTR;
	volatile uint32_t ACTLR;
} SCnSCB_Type;
typedef struct
{
	volatile uint32_t CTRL;
	volatile uint32_t LOAD;
	volatile uint32_t VAL;
	volatile const uint32_t CALIB;
} SysTick_Type;
typedef struct
{
	volatile union
	{
		volatile uint8_t u8;
		volatile uint16_t u16;
		volatile uint32_t u32;
	} PORT [32U];
	uint32_t RESERVED0[864U];
	volatile uint32_t TER;
	uint32_t RESERVED1[15U];
	volatile uint32_t TPR;
	uint32_t RESERVED2[15U];
	volatile uint32_t TCR;
	uint32_t RESERVED3[29U];
	volatile uint32_t IWR;
	volatile const uint32_t IRR;
	volatile uint32_t IMCR;
	uint32_t RESERVED4[43U];
	volatile uint32_t LAR;
	volatile const uint32_t LSR;
	uint32_t RESERVED5[6U];
	volatile const uint32_t PID4;
	volatile const uint32_t PID5;
	volatile const uint32_t PID6;
	volatile const uint32_t PID7;
	volatile const uint32_t PID0;
	volatile const uint32_t PID1;
	volatile const uint32_t PID2;
	volatile const uint32_t PID3;
	volatile const uint32_t CID0;
	volatile const uint32_t CID1;
	volatile const uint32_t CID2;
	volatile const uint32_t CID3;
} ITM_Type;
typedef struct
{
	volatile uint32_t CTRL;
	volatile uint32_t CYCCNT;
	volatile uint32_t CPICNT;
	volatile uint32_t EXCCNT;
	volatile uint32_t SLEEPCNT;
	volatile uint32_t LSUCNT;
	volatile uint32_t FOLDCNT;
	volatile const uint32_t PCSR;
	volatile uint32_t COMP0;
	volatile uint32_t MASK0;
	volatile uint32_t FUNCTION0;
	uint32_t RESERVED0[1U];
	volatile uint32_t COMP1;
	volatile uint32_t MASK1;
	volatile uint32_t FUNCTION1;
	uint32_t RESERVED1[1U];
	volatile uint32_t COMP2;
	volatile uint32_t MASK2;
	volatile uint32_t FUNCTION2;
	uint32_t RESERVED2[1U];
	volatile uint32_t COMP3;
	volatile uint32_t MASK3;
	volatile uint32_t FUNCTION3;
} DWT_Type;
typedef struct
{
	volatile uint32_t SSPSR;
	volatile uint32_t CSPSR;
	uint32_t RESERVED0[2U];
	volatile uint32_t ACPR;
	uint32_t RESERVED1[55U];
	volatile uint32_t SPPR;
	uint32_t RESERVED2[131U];
	volatile const uint32_t FFSR;
	volatile uint32_t FFCR;
	volatile const uint32_t FSCR;
	uint32_t RESERVED3[759U];
	volatile const uint32_t TRIGGER;
	volatile const uint32_t FIFO0;
	volatile const uint32_t ITATBCTR2;
	uint32_t RESERVED4[1U];
	volatile const uint32_t ITATBCTR0;
	volatile const uint32_t FIFO1;
	volatile uint32_t ITCTRL;
	uint32_t RESERVED5[39U];
	volatile uint32_t CLAIMSET;
	volatile uint32_t CLAIMCLR;
	uint32_t RESERVED7[8U];
	volatile const uint32_t DEVID;
	volatile const uint32_t DEVTYPE;
} TPI_Type;
typedef struct
{
	volatile const uint32_t TYPE;
	volatile uint32_t CTRL;
	volatile uint32_t RNR;
	volatile uint32_t RBAR;
	volatile uint32_t RASR;
	volatile uint32_t RBAR_A1;
	volatile uint32_t RASR_A1;
	volatile uint32_t RBAR_A2;
	volatile uint32_t RASR_A2;
	volatile uint32_t RBAR_A3;
	volatile uint32_t RASR_A3;
} MPU_Type;
typedef struct
{
	uint32_t RESERVED0[1U];
	volatile uint32_t FPCCR;
	volatile uint32_t FPCAR;
	volatile uint32_t FPDSCR;
	volatile const uint32_t MVFR0;
	volatile const uint32_t MVFR1;
} FPU_Type;
typedef struct
{
	volatile uint32_t DHCSR;
	volatile uint32_t DCRSR;
	volatile uint32_t DCRDR;
	volatile uint32_t DEMCR;
} CoreDebug_Type;
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
	uint32_t reg_value;
	uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
	reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
	reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
	reg_value = (reg_value |
			((uint32_t)0x5FAUL << 16U) |
			(PriorityGroupTmp << 8U) );
	((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
	return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
	((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
	((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
	return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
	((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
	((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
	return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
	if ((int32_t)(IRQn) < 0)
	{
		((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
	}
	else
	{
		((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
	}
}
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{
	if ((int32_t)(IRQn) < 0)
	{
		return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 3)));
	}
	else
	{
		return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)] >> (8U - 3)));
	}
}
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
	uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
	uint32_t PreemptPriorityBits;
	uint32_t SubPriorityBits;
	PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
	SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));
	return (
			((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
			((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
	       );
}
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
	uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
	uint32_t PreemptPriorityBits;
	uint32_t SubPriorityBits;
	PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
	SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));
	*pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
	*pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}
static inline void NVIC_SystemReset(void)
{
	__DSB();
	((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
	(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
	(1UL << 2U) );
	__DSB();
	for (;;)
	{
		__NOP();
	}
}
static inline uint32_t SysTick_Config(uint32_t ticks)
{
	if ((ticks - 1UL) > (0xFFFFFFUL ))
	{
		return (1UL);
	}
	((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
	NVIC_SetPriority (SysTick_IRQn, (1UL << 3) - 1UL);
	((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
	((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
		(1UL << 1U) |
		(1UL );
	return (0UL);
}
extern volatile int32_t ITM_RxBuffer;
static inline uint32_t ITM_SendChar (uint32_t ch)
{
	if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
			((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
	{
		while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
		{
			__NOP();
		}
		((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
	}
	return (ch);
}
static inline int32_t ITM_ReceiveChar (void)
{
	int32_t ch = -1;
	if (ITM_RxBuffer != 0x5AA55AA5U)
	{
		ch = ITM_RxBuffer;
		ITM_RxBuffer = 0x5AA55AA5U;
	}
	return (ch);
}
static inline int32_t ITM_CheckChar (void)
{
	if (ITM_RxBuffer == 0x5AA55AA5U)
	{
		return (0);
	}
	else
	{
		return (1);
	}
}
extern uint32_t SystemCoreClock;
extern void SystemInit (void);
extern void SystemCoreClockUpdate (void);
typedef struct {
	volatile const uint32_t PART;
	volatile const uint32_t VARIANT;
	volatile const uint32_t PACKAGE;
	volatile const uint32_t RAM;
	volatile const uint32_t FLASH;
	volatile uint32_t UNUSED0[3];
} FICR_INFO_Type;
typedef struct {
	volatile const uint32_t A0;
	volatile const uint32_t A1;
	volatile const uint32_t A2;
	volatile const uint32_t A3;
	volatile const uint32_t A4;
	volatile const uint32_t A5;
	volatile const uint32_t B0;
	volatile const uint32_t B1;
	volatile const uint32_t B2;
	volatile const uint32_t B3;
	volatile const uint32_t B4;
	volatile const uint32_t B5;
	volatile const uint32_t T0;
	volatile const uint32_t T1;
	volatile const uint32_t T2;
	volatile const uint32_t T3;
	volatile const uint32_t T4;
} FICR_TEMP_Type;
typedef struct {
	volatile const uint32_t TAGHEADER0;
	volatile const uint32_t TAGHEADER1;
	volatile const uint32_t TAGHEADER2;
	volatile const uint32_t TAGHEADER3;
} FICR_NFC_Type;
typedef struct {
	volatile uint32_t POWER;
	volatile uint32_t POWERSET;
	volatile uint32_t POWERCLR;
	volatile const uint32_t RESERVED0;
} POWER_RAM_Type;
typedef struct {
	volatile uint32_t RTS;
	volatile uint32_t TXD;
	volatile uint32_t CTS;
	volatile uint32_t RXD;
} UARTE_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} UARTE_RXD_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} UARTE_TXD_Type;
typedef struct {
	volatile uint32_t RTS;
	volatile uint32_t TXD;
	volatile uint32_t CTS;
	volatile uint32_t RXD;
} UART_PSEL_Type;
typedef struct {
	volatile uint32_t SCK;
	volatile uint32_t MOSI;
	volatile uint32_t MISO;
	volatile uint32_t CSN;
} SPIM_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
	volatile uint32_t LIST;
} SPIM_RXD_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
	volatile uint32_t LIST;
} SPIM_TXD_Type;
typedef struct {
	volatile uint32_t RXDELAY;
	volatile uint32_t CSNDUR;
} SPIM_IFTIMING_Type;
typedef struct {
	volatile uint32_t SCK;
	volatile uint32_t MISO;
	volatile uint32_t MOSI;
	volatile uint32_t CSN;
} SPIS_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} SPIS_RXD_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} SPIS_TXD_Type;
typedef struct {
	volatile uint32_t SCL;
	volatile uint32_t SDA;
} TWIM_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
	volatile uint32_t LIST;
} TWIM_RXD_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
	volatile uint32_t LIST;
} TWIM_TXD_Type;
typedef struct {
	volatile uint32_t SCL;
	volatile uint32_t SDA;
} TWIS_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} TWIS_RXD_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} TWIS_TXD_Type;
typedef struct {
	volatile uint32_t SCK;
	volatile uint32_t MOSI;
	volatile uint32_t MISO;
} SPI_PSEL_Type;
typedef struct {
	volatile uint32_t SCL;
	volatile uint32_t SDA;
} TWI_PSEL_Type;
typedef struct {
	volatile uint32_t RX;
} NFCT_FRAMESTATUS_Type;
typedef struct {
	volatile uint32_t FRAMECONFIG;
	volatile uint32_t AMOUNT;
} NFCT_TXD_Type;
typedef struct {
	volatile uint32_t FRAMECONFIG;
	volatile const uint32_t AMOUNT;
} NFCT_RXD_Type;
typedef struct {
	volatile uint32_t LIMITH;
	volatile uint32_t LIMITL;
} SAADC_EVENTS_CH_Type;
typedef struct {
	volatile uint32_t PSELP;
	volatile uint32_t PSELN;
	volatile uint32_t CONFIG;
	volatile uint32_t LIMIT;
} SAADC_CH_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} SAADC_RESULT_Type;
typedef struct {
	volatile uint32_t LED;
	volatile uint32_t A;
	volatile uint32_t B;
} QDEC_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t CNT;
	volatile uint32_t REFRESH;
	volatile uint32_t ENDDELAY;
	volatile const uint32_t RESERVED1[4];
} PWM_SEQ_Type;
typedef struct {
	volatile uint32_t OUT[4];
} PWM_PSEL_Type;
typedef struct {
	volatile uint32_t CLK;
	volatile uint32_t DIN;
} PDM_PSEL_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
} PDM_SAMPLE_Type;
typedef struct {
	volatile uint32_t ADDR;
	volatile uint32_t SIZE;
	volatile uint32_t PERM;
	volatile uint32_t UNUSED0;
} ACL_ACL_Type;
typedef struct {
	volatile uint32_t EN;
	volatile uint32_t DIS;
} PPI_TASKS_CHG_Type;
typedef struct {
	volatile uint32_t EEP;
	volatile uint32_t TEP;
} PPI_CH_Type;
typedef struct {
	volatile uint32_t TEP;
} PPI_FORK_Type;
typedef struct {
	volatile uint32_t WA;
	volatile uint32_t RA;
} MWU_EVENTS_REGION_Type;
typedef struct {
	volatile uint32_t WA;
	volatile uint32_t RA;
} MWU_EVENTS_PREGION_Type;
typedef struct {
	volatile uint32_t SUBSTATWA;
	volatile uint32_t SUBSTATRA;
} MWU_PERREGION_Type;
typedef struct {
	volatile uint32_t START;
	volatile uint32_t END;
	volatile const uint32_t RESERVED2[2];
} MWU_REGION_Type;
typedef struct {
	volatile const uint32_t START;
	volatile const uint32_t END;
	volatile uint32_t SUBS;
	volatile const uint32_t RESERVED3;
} MWU_PREGION_Type;
typedef struct {
	volatile uint32_t MODE;
	volatile uint32_t RXEN;
	volatile uint32_t TXEN;
	volatile uint32_t MCKEN;
	volatile uint32_t MCKFREQ;
	volatile uint32_t RATIO;
	volatile uint32_t SWIDTH;
	volatile uint32_t ALIGN;
	volatile uint32_t FORMAT;
	volatile uint32_t CHANNELS;
} I2S_CONFIG_Type;
typedef struct {
	volatile uint32_t PTR;
} I2S_RXD_Type;
typedef struct {
	volatile uint32_t PTR;
} I2S_TXD_Type;
typedef struct {
	volatile uint32_t MAXCNT;
} I2S_RXTXD_Type;
typedef struct {
	volatile uint32_t MCK;
	volatile uint32_t SCK;
	volatile uint32_t LRCK;
	volatile uint32_t SDIN;
	volatile uint32_t SDOUT;
} I2S_PSEL_Type;
typedef struct {
	volatile const uint32_t EPIN[8];
	volatile const uint32_t RESERVED4;
	volatile const uint32_t EPOUT[8];
} USBD_HALTED_Type;
typedef struct {
	volatile uint32_t EPOUT[8];
	volatile const uint32_t ISOOUT;
} USBD_SIZE_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
	volatile const uint32_t RESERVED5[2];
} USBD_EPIN_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} USBD_ISOIN_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
	volatile const uint32_t RESERVED6[2];
} USBD_EPOUT_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t MAXCNT;
	volatile const uint32_t AMOUNT;
} USBD_ISOOUT_Type;
typedef struct {
	volatile uint32_t SRC;
	volatile uint32_t DST;
	volatile uint32_t CNT;
} QSPI_READ_Type;
typedef struct {
	volatile uint32_t DST;
	volatile uint32_t SRC;
	volatile uint32_t CNT;
} QSPI_WRITE_Type;
typedef struct {
	volatile uint32_t PTR;
	volatile uint32_t LEN;
} QSPI_ERASE_Type;
typedef struct {
	volatile uint32_t SCK;
	volatile uint32_t CSN;
	volatile const uint32_t RESERVED7;
	volatile uint32_t IO0;
	volatile uint32_t IO1;
	volatile uint32_t IO2;
	volatile uint32_t IO3;
} QSPI_PSEL_Type;
typedef struct {
	volatile const uint32_t RESERVED0[4];
	volatile const uint32_t CODEPAGESIZE;
	volatile const uint32_t CODESIZE;
	volatile const uint32_t RESERVED1[18];
	volatile const uint32_t DEVICEID[2];
	volatile const uint32_t RESERVED2[6];
	volatile const uint32_t ER[4];
	volatile const uint32_t IR[4];
	volatile const uint32_t DEVICEADDRTYPE;
	volatile const uint32_t DEVICEADDR[2];
	volatile const uint32_t RESERVED3[21];
	FICR_INFO_Type INFO;
	volatile const uint32_t RESERVED4[185];
	FICR_TEMP_Type TEMP;
	volatile const uint32_t RESERVED5[2];
	FICR_NFC_Type NFC;
} NRF_FICR_Type;
typedef struct {
	volatile uint32_t UNUSED0;
	volatile uint32_t UNUSED1;
	volatile uint32_t UNUSED2;
	volatile const uint32_t RESERVED0;
	volatile uint32_t UNUSED3;
	volatile uint32_t NRFFW[15];
	volatile uint32_t NRFHW[12];
	volatile uint32_t CUSTOMER[32];
	volatile const uint32_t RESERVED1[64];
	volatile uint32_t PSELRESET[2];
	volatile uint32_t APPROTECT;
	volatile uint32_t NFCPINS;
	volatile uint32_t DEBUGCTRL;
	volatile const uint32_t RESERVED2[59];
	volatile uint32_t DCDCDRIVE0;
	volatile uint32_t REGOUT0;
} NRF_UICR_Type;
typedef struct {
	volatile const uint32_t RESERVED0[30];
	volatile uint32_t TASKS_CONSTLAT;
	volatile uint32_t TASKS_LOWPWR;
	volatile const uint32_t RESERVED1[34];
	volatile uint32_t EVENTS_POFWARN;
	volatile const uint32_t RESERVED2[2];
	volatile uint32_t EVENTS_SLEEPENTER;
	volatile uint32_t EVENTS_SLEEPEXIT;
	volatile uint32_t EVENTS_USBDETECTED;
	volatile uint32_t EVENTS_USBREMOVED;
	volatile uint32_t EVENTS_USBPWRRDY;
	volatile const uint32_t RESERVED3[119];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED4[61];
	volatile uint32_t RESETREAS;
	volatile const uint32_t RESERVED5[9];
	volatile const uint32_t RAMSTATUS;
	volatile const uint32_t RESERVED6[3];
	volatile const uint32_t USBREGSTATUS;
	volatile const uint32_t RESERVED7[49];
	volatile uint32_t SYSTEMOFF;
	volatile const uint32_t RESERVED8[3];
	volatile uint32_t POFCON;
	volatile const uint32_t RESERVED9[2];
	volatile uint32_t GPREGRET;
	volatile uint32_t GPREGRET2;
	volatile const uint32_t RESERVED10[21];
	volatile uint32_t DCDCEN;
	volatile const uint32_t RESERVED11;
	volatile uint32_t DCDCEN0;
	volatile const uint32_t RESERVED12[47];
	volatile const uint32_t MAINREGSTATUS;
	volatile const uint32_t RESERVED13[175];
	POWER_RAM_Type RAM[9];
} NRF_POWER_Type;
typedef struct {
	volatile uint32_t TASKS_HFCLKSTART;
	volatile uint32_t TASKS_HFCLKSTOP;
	volatile uint32_t TASKS_LFCLKSTART;
	volatile uint32_t TASKS_LFCLKSTOP;
	volatile uint32_t TASKS_CAL;
	volatile uint32_t TASKS_CTSTART;
	volatile uint32_t TASKS_CTSTOP;
	volatile const uint32_t RESERVED0[57];
	volatile uint32_t EVENTS_HFCLKSTARTED;
	volatile uint32_t EVENTS_LFCLKSTARTED;
	volatile const uint32_t RESERVED1;
	volatile uint32_t EVENTS_DONE;
	volatile uint32_t EVENTS_CTTO;
	volatile const uint32_t RESERVED2[5];
	volatile uint32_t EVENTS_CTSTARTED;
	volatile uint32_t EVENTS_CTSTOPPED;
	volatile const uint32_t RESERVED3[117];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED4[63];
	volatile const uint32_t HFCLKRUN;
	volatile const uint32_t HFCLKSTAT;
	volatile const uint32_t RESERVED5;
	volatile const uint32_t LFCLKRUN;
	volatile const uint32_t LFCLKSTAT;
	volatile const uint32_t LFCLKSRCCOPY;
	volatile const uint32_t RESERVED6[62];
	volatile uint32_t LFCLKSRC;
	volatile const uint32_t RESERVED7[3];
	volatile uint32_t HFXODEBOUNCE;
	volatile const uint32_t RESERVED8[3];
	volatile uint32_t CTIV;
	volatile const uint32_t RESERVED9[8];
	volatile uint32_t TRACECONFIG;
	volatile const uint32_t RESERVED10[21];
	volatile uint32_t LFRCMODE;
} NRF_CLOCK_Type;
typedef struct {
	volatile uint32_t TASKS_TXEN;
	volatile uint32_t TASKS_RXEN;
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_DISABLE;
	volatile uint32_t TASKS_RSSISTART;
	volatile uint32_t TASKS_RSSISTOP;
	volatile uint32_t TASKS_BCSTART;
	volatile uint32_t TASKS_BCSTOP;
	volatile uint32_t TASKS_EDSTART;
	volatile uint32_t TASKS_EDSTOP;
	volatile uint32_t TASKS_CCASTART;
	volatile uint32_t TASKS_CCASTOP;
	volatile const uint32_t RESERVED0[51];
	volatile uint32_t EVENTS_READY;
	volatile uint32_t EVENTS_ADDRESS;
	volatile uint32_t EVENTS_PAYLOAD;
	volatile uint32_t EVENTS_END;
	volatile uint32_t EVENTS_DISABLED;
	volatile uint32_t EVENTS_DEVMATCH;
	volatile uint32_t EVENTS_DEVMISS;
	volatile uint32_t EVENTS_RSSIEND;
	volatile const uint32_t RESERVED1[2];
	volatile uint32_t EVENTS_BCMATCH;
	volatile const uint32_t RESERVED2;
	volatile uint32_t EVENTS_CRCOK;
	volatile uint32_t EVENTS_CRCERROR;
	volatile uint32_t EVENTS_FRAMESTART;
	volatile uint32_t EVENTS_EDEND;
	volatile uint32_t EVENTS_EDSTOPPED;
	volatile uint32_t EVENTS_CCAIDLE;
	volatile uint32_t EVENTS_CCABUSY;
	volatile uint32_t EVENTS_CCASTOPPED;
	volatile uint32_t EVENTS_RATEBOOST;
	volatile uint32_t EVENTS_TXREADY;
	volatile uint32_t EVENTS_RXREADY;
	volatile uint32_t EVENTS_MHRMATCH;
	volatile const uint32_t RESERVED3[3];
	volatile uint32_t EVENTS_PHYEND;
	volatile const uint32_t RESERVED4[36];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED5[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED6[61];
	volatile const uint32_t CRCSTATUS;
	volatile const uint32_t RESERVED7;
	volatile const uint32_t RXMATCH;
	volatile const uint32_t RXCRC;
	volatile const uint32_t DAI;
	volatile const uint32_t PDUSTAT;
	volatile const uint32_t RESERVED8[59];
	volatile uint32_t PACKETPTR;
	volatile uint32_t FREQUENCY;
	volatile uint32_t TXPOWER;
	volatile uint32_t MODE;
	volatile uint32_t PCNF0;
	volatile uint32_t PCNF1;
	volatile uint32_t BASE0;
	volatile uint32_t BASE1;
	volatile uint32_t PREFIX0;
	volatile uint32_t PREFIX1;
	volatile uint32_t TXADDRESS;
	volatile uint32_t RXADDRESSES;
	volatile uint32_t CRCCNF;
	volatile uint32_t CRCPOLY;
	volatile uint32_t CRCINIT;
	volatile const uint32_t RESERVED9;
	volatile uint32_t TIFS;
	volatile const uint32_t RSSISAMPLE;
	volatile const uint32_t RESERVED10;
	volatile const uint32_t STATE;
	volatile uint32_t DATAWHITEIV;
	volatile const uint32_t RESERVED11[2];
	volatile uint32_t BCC;
	volatile const uint32_t RESERVED12[39];
	volatile uint32_t DAB[8];
	volatile uint32_t DAP[8];
	volatile uint32_t DACNF;
	volatile uint32_t MHRMATCHCONF;
	volatile uint32_t MHRMATCHMAS;
	volatile const uint32_t RESERVED13;
	volatile uint32_t MODECNF0;
	volatile const uint32_t RESERVED14[3];
	volatile uint32_t SFD;
	volatile uint32_t EDCNT;
	volatile uint32_t EDSAMPLE;
	volatile uint32_t CCACTRL;
	volatile const uint32_t RESERVED15[611];
	volatile uint32_t POWER;
} NRF_RADIO_Type;
typedef struct {
	volatile uint32_t TASKS_STARTRX;
	volatile uint32_t TASKS_STOPRX;
	volatile uint32_t TASKS_STARTTX;
	volatile uint32_t TASKS_STOPTX;
	volatile const uint32_t RESERVED0[7];
	volatile uint32_t TASKS_FLUSHRX;
	volatile const uint32_t RESERVED1[52];
	volatile uint32_t EVENTS_CTS;
	volatile uint32_t EVENTS_NCTS;
	volatile uint32_t EVENTS_RXDRDY;
	volatile const uint32_t RESERVED2;
	volatile uint32_t EVENTS_ENDRX;
	volatile const uint32_t RESERVED3[2];
	volatile uint32_t EVENTS_TXDRDY;
	volatile uint32_t EVENTS_ENDTX;
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED4[7];
	volatile uint32_t EVENTS_RXTO;
	volatile const uint32_t RESERVED5;
	volatile uint32_t EVENTS_RXSTARTED;
	volatile uint32_t EVENTS_TXSTARTED;
	volatile const uint32_t RESERVED6;
	volatile uint32_t EVENTS_TXSTOPPED;
	volatile const uint32_t RESERVED7[41];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED8[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED9[93];
	volatile uint32_t ERRORSRC;
	volatile const uint32_t RESERVED10[31];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED11;
	UARTE_PSEL_Type PSEL;
	volatile const uint32_t RESERVED12[3];
	volatile uint32_t BAUDRATE;
	volatile const uint32_t RESERVED13[3];
	UARTE_RXD_Type RXD;
	volatile const uint32_t RESERVED14;
	UARTE_TXD_Type TXD;
	volatile const uint32_t RESERVED15[7];
	volatile uint32_t CONFIG;
} NRF_UARTE_Type;
typedef struct {
	volatile uint32_t TASKS_STARTRX;
	volatile uint32_t TASKS_STOPRX;
	volatile uint32_t TASKS_STARTTX;
	volatile uint32_t TASKS_STOPTX;
	volatile const uint32_t RESERVED0[3];
	volatile uint32_t TASKS_SUSPEND;
	volatile const uint32_t RESERVED1[56];
	volatile uint32_t EVENTS_CTS;
	volatile uint32_t EVENTS_NCTS;
	volatile uint32_t EVENTS_RXDRDY;
	volatile const uint32_t RESERVED2[4];
	volatile uint32_t EVENTS_TXDRDY;
	volatile const uint32_t RESERVED3;
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED4[7];
	volatile uint32_t EVENTS_RXTO;
	volatile const uint32_t RESERVED5[46];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED6[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED7[93];
	volatile uint32_t ERRORSRC;
	volatile const uint32_t RESERVED8[31];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED9;
	UART_PSEL_Type PSEL;
	volatile const uint32_t RXD;
	volatile uint32_t TXD;
	volatile const uint32_t RESERVED10;
	volatile uint32_t BAUDRATE;
	volatile const uint32_t RESERVED11[17];
	volatile uint32_t CONFIG;
} NRF_UART_Type;
typedef struct {
	volatile const uint32_t RESERVED0[4];
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED1;
	volatile uint32_t TASKS_SUSPEND;
	volatile uint32_t TASKS_RESUME;
	volatile const uint32_t RESERVED2[56];
	volatile uint32_t EVENTS_STOPPED;
	volatile const uint32_t RESERVED3[2];
	volatile uint32_t EVENTS_ENDRX;
	volatile const uint32_t RESERVED4;
	volatile uint32_t EVENTS_END;
	volatile const uint32_t RESERVED5;
	volatile uint32_t EVENTS_ENDTX;
	volatile const uint32_t RESERVED6[10];
	volatile uint32_t EVENTS_STARTED;
	volatile const uint32_t RESERVED7[44];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED8[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED9[61];
	volatile uint32_t STALLSTAT;
	volatile const uint32_t RESERVED10[63];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED11;
	SPIM_PSEL_Type PSEL;
	volatile const uint32_t RESERVED12[3];
	volatile uint32_t FREQUENCY;
	volatile const uint32_t RESERVED13[3];
	SPIM_RXD_Type RXD;
	SPIM_TXD_Type TXD;
	volatile uint32_t CONFIG;
	volatile const uint32_t RESERVED14[2];
	SPIM_IFTIMING_Type IFTIMING;
	volatile uint32_t CSNPOL;
	volatile uint32_t PSELDCX;
	volatile uint32_t DCXCNT;
	volatile const uint32_t RESERVED15[19];
	volatile uint32_t ORC;
} NRF_SPIM_Type;
typedef struct {
	volatile const uint32_t RESERVED0[9];
	volatile uint32_t TASKS_ACQUIRE;
	volatile uint32_t TASKS_RELEASE;
	volatile const uint32_t RESERVED1[54];
	volatile uint32_t EVENTS_END;
	volatile const uint32_t RESERVED2[2];
	volatile uint32_t EVENTS_ENDRX;
	volatile const uint32_t RESERVED3[5];
	volatile uint32_t EVENTS_ACQUIRED;
	volatile const uint32_t RESERVED4[53];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED5[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED6[61];
	volatile const uint32_t SEMSTAT;
	volatile const uint32_t RESERVED7[15];
	volatile uint32_t STATUS;
	volatile const uint32_t RESERVED8[47];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED9;
	SPIS_PSEL_Type PSEL;
	volatile const uint32_t RESERVED10[7];
	SPIS_RXD_Type RXD;
	volatile const uint32_t RESERVED11;
	SPIS_TXD_Type TXD;
	volatile const uint32_t RESERVED12;
	volatile uint32_t CONFIG;
	volatile const uint32_t RESERVED13;
	volatile uint32_t DEF;
	volatile const uint32_t RESERVED14[24];
	volatile uint32_t ORC;
} NRF_SPIS_Type;
typedef struct {
	volatile uint32_t TASKS_STARTRX;
	volatile const uint32_t RESERVED0;
	volatile uint32_t TASKS_STARTTX;
	volatile const uint32_t RESERVED1[2];
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED2;
	volatile uint32_t TASKS_SUSPEND;
	volatile uint32_t TASKS_RESUME;
	volatile const uint32_t RESERVED3[56];
	volatile uint32_t EVENTS_STOPPED;
	volatile const uint32_t RESERVED4[7];
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED5[8];
	volatile uint32_t EVENTS_SUSPENDED;
	volatile uint32_t EVENTS_RXSTARTED;
	volatile uint32_t EVENTS_TXSTARTED;
	volatile const uint32_t RESERVED6[2];
	volatile uint32_t EVENTS_LASTRX;
	volatile uint32_t EVENTS_LASTTX;
	volatile const uint32_t RESERVED7[39];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED8[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED9[110];
	volatile uint32_t ERRORSRC;
	volatile const uint32_t RESERVED10[14];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED11;
	TWIM_PSEL_Type PSEL;
	volatile const uint32_t RESERVED12[5];
	volatile uint32_t FREQUENCY;
	volatile const uint32_t RESERVED13[3];
	TWIM_RXD_Type RXD;
	TWIM_TXD_Type TXD;
	volatile const uint32_t RESERVED14[13];
	volatile uint32_t ADDRESS;
} NRF_TWIM_Type;
typedef struct {
	volatile const uint32_t RESERVED0[5];
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED1;
	volatile uint32_t TASKS_SUSPEND;
	volatile uint32_t TASKS_RESUME;
	volatile const uint32_t RESERVED2[3];
	volatile uint32_t TASKS_PREPARERX;
	volatile uint32_t TASKS_PREPARETX;
	volatile const uint32_t RESERVED3[51];
	volatile uint32_t EVENTS_STOPPED;
	volatile const uint32_t RESERVED4[7];
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED5[9];
	volatile uint32_t EVENTS_RXSTARTED;
	volatile uint32_t EVENTS_TXSTARTED;
	volatile const uint32_t RESERVED6[4];
	volatile uint32_t EVENTS_WRITE;
	volatile uint32_t EVENTS_READ;
	volatile const uint32_t RESERVED7[37];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED8[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED9[113];
	volatile uint32_t ERRORSRC;
	volatile const uint32_t MATCH;
	volatile const uint32_t RESERVED10[10];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED11;
	TWIS_PSEL_Type PSEL;
	volatile const uint32_t RESERVED12[9];
	TWIS_RXD_Type RXD;
	volatile const uint32_t RESERVED13;
	TWIS_TXD_Type TXD;
	volatile const uint32_t RESERVED14[14];
	volatile uint32_t ADDRESS[2];
	volatile const uint32_t RESERVED15;
	volatile uint32_t CONFIG;
	volatile const uint32_t RESERVED16[10];
	volatile uint32_t ORC;
} NRF_TWIS_Type;
typedef struct {
	volatile const uint32_t RESERVED0[66];
	volatile uint32_t EVENTS_READY;
	volatile const uint32_t RESERVED1[126];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[125];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED3;
	SPI_PSEL_Type PSEL;
	volatile const uint32_t RESERVED4;
	volatile const uint32_t RXD;
	volatile uint32_t TXD;
	volatile const uint32_t RESERVED5;
	volatile uint32_t FREQUENCY;
	volatile const uint32_t RESERVED6[11];
	volatile uint32_t CONFIG;
} NRF_SPI_Type;
typedef struct {
	volatile uint32_t TASKS_STARTRX;
	volatile const uint32_t RESERVED0;
	volatile uint32_t TASKS_STARTTX;
	volatile const uint32_t RESERVED1[2];
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED2;
	volatile uint32_t TASKS_SUSPEND;
	volatile uint32_t TASKS_RESUME;
	volatile const uint32_t RESERVED3[56];
	volatile uint32_t EVENTS_STOPPED;
	volatile uint32_t EVENTS_RXDREADY;
	volatile const uint32_t RESERVED4[4];
	volatile uint32_t EVENTS_TXDSENT;
	volatile const uint32_t RESERVED5;
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED6[4];
	volatile uint32_t EVENTS_BB;
	volatile const uint32_t RESERVED7[3];
	volatile uint32_t EVENTS_SUSPENDED;
	volatile const uint32_t RESERVED8[45];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED9[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED10[110];
	volatile uint32_t ERRORSRC;
	volatile const uint32_t RESERVED11[14];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED12;
	TWI_PSEL_Type PSEL;
	volatile const uint32_t RESERVED13[2];
	volatile const uint32_t RXD;
	volatile uint32_t TXD;
	volatile const uint32_t RESERVED14;
	volatile uint32_t FREQUENCY;
	volatile const uint32_t RESERVED15[24];
	volatile uint32_t ADDRESS;
} NRF_TWI_Type;
typedef struct {
	volatile uint32_t TASKS_ACTIVATE;
	volatile uint32_t TASKS_DISABLE;
	volatile uint32_t TASKS_SENSE;
	volatile uint32_t TASKS_STARTTX;
	volatile const uint32_t RESERVED0[3];
	volatile uint32_t TASKS_ENABLERXDATA;
	volatile const uint32_t RESERVED1;
	volatile uint32_t TASKS_GOIDLE;
	volatile uint32_t TASKS_GOSLEEP;
	volatile const uint32_t RESERVED2[53];
	volatile uint32_t EVENTS_READY;
	volatile uint32_t EVENTS_FIELDDETECTED;
	volatile uint32_t EVENTS_FIELDLOST;
	volatile uint32_t EVENTS_TXFRAMESTART;
	volatile uint32_t EVENTS_TXFRAMEEND;
	volatile uint32_t EVENTS_RXFRAMESTART;
	volatile uint32_t EVENTS_RXFRAMEEND;
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED3[2];
	volatile uint32_t EVENTS_RXERROR;
	volatile uint32_t EVENTS_ENDRX;
	volatile uint32_t EVENTS_ENDTX;
	volatile const uint32_t RESERVED4;
	volatile uint32_t EVENTS_AUTOCOLRESSTARTED;
	volatile const uint32_t RESERVED5[3];
	volatile uint32_t EVENTS_COLLISION;
	volatile uint32_t EVENTS_SELECTED;
	volatile uint32_t EVENTS_STARTED;
	volatile const uint32_t RESERVED6[43];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED7[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED8[62];
	volatile uint32_t ERRORSTATUS;
	volatile const uint32_t RESERVED9;
	NFCT_FRAMESTATUS_Type FRAMESTATUS;
	volatile const uint32_t NFCTAGSTATE;
	volatile const uint32_t RESERVED10[10];
	volatile const uint32_t FIELDPRESENT;
	volatile const uint32_t RESERVED11[49];
	volatile uint32_t FRAMEDELAYMIN;
	volatile uint32_t FRAMEDELAYMAX;
	volatile uint32_t FRAMEDELAYMODE;
	volatile uint32_t PACKETPTR;
	volatile uint32_t MAXLEN;
	NFCT_TXD_Type TXD;
	NFCT_RXD_Type RXD;
	volatile const uint32_t RESERVED12[26];
	volatile uint32_t NFCID1_LAST;
	volatile uint32_t NFCID1_2ND_LAST;
	volatile uint32_t NFCID1_3RD_LAST;
	volatile uint32_t AUTOCOLRESCONFIG;
	volatile uint32_t SENSRES;
	volatile uint32_t SELRES;
} NRF_NFCT_Type;
typedef struct {
	volatile uint32_t TASKS_OUT[8];
	volatile const uint32_t RESERVED0[4];
	volatile uint32_t TASKS_SET[8];
	volatile const uint32_t RESERVED1[4];
	volatile uint32_t TASKS_CLR[8];
	volatile const uint32_t RESERVED2[32];
	volatile uint32_t EVENTS_IN[8];
	volatile const uint32_t RESERVED3[23];
	volatile uint32_t EVENTS_PORT;
	volatile const uint32_t RESERVED4[97];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED5[129];
	volatile uint32_t CONFIG[8];
} NRF_GPIOTE_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_SAMPLE;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_CALIBRATEOFFSET;
	volatile const uint32_t RESERVED0[60];
	volatile uint32_t EVENTS_STARTED;
	volatile uint32_t EVENTS_END;
	volatile uint32_t EVENTS_DONE;
	volatile uint32_t EVENTS_RESULTDONE;
	volatile uint32_t EVENTS_CALIBRATEDONE;
	volatile uint32_t EVENTS_STOPPED;
	SAADC_EVENTS_CH_Type EVENTS_CH[8];
	volatile const uint32_t RESERVED1[106];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[61];
	volatile const uint32_t STATUS;
	volatile const uint32_t RESERVED3[63];
	volatile uint32_t ENABLE;
	volatile const uint32_t RESERVED4[3];
	SAADC_CH_Type CH[8];
	volatile const uint32_t RESERVED5[24];
	volatile uint32_t RESOLUTION;
	volatile uint32_t OVERSAMPLE;
	volatile uint32_t SAMPLERATE;
	volatile const uint32_t RESERVED6[12];
	SAADC_RESULT_Type RESULT;
} NRF_SAADC_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_COUNT;
	volatile uint32_t TASKS_CLEAR;
	volatile uint32_t TASKS_SHUTDOWN;
	volatile const uint32_t RESERVED0[11];
	volatile uint32_t TASKS_CAPTURE[6];
	volatile const uint32_t RESERVED1[58];
	volatile uint32_t EVENTS_COMPARE[6];
	volatile const uint32_t RESERVED2[42];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED3[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED4[126];
	volatile uint32_t MODE;
	volatile uint32_t BITMODE;
	volatile const uint32_t RESERVED5;
	volatile uint32_t PRESCALER;
	volatile const uint32_t RESERVED6[11];
	volatile uint32_t CC[6];
} NRF_TIMER_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_CLEAR;
	volatile uint32_t TASKS_TRIGOVRFLW;
	volatile const uint32_t RESERVED0[60];
	volatile uint32_t EVENTS_TICK;
	volatile uint32_t EVENTS_OVRFLW;
	volatile const uint32_t RESERVED1[14];
	volatile uint32_t EVENTS_COMPARE[4];
	volatile const uint32_t RESERVED2[109];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[13];
	volatile uint32_t EVTEN;
	volatile uint32_t EVTENSET;
	volatile uint32_t EVTENCLR;
	volatile const uint32_t RESERVED4[110];
	volatile const uint32_t COUNTER;
	volatile uint32_t PRESCALER;
	volatile const uint32_t RESERVED5[13];
	volatile uint32_t CC[4];
} NRF_RTC_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED0[62];
	volatile uint32_t EVENTS_DATARDY;
	volatile const uint32_t RESERVED1[128];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[127];
	volatile const int32_t TEMP;
	volatile const uint32_t RESERVED3[5];
	volatile uint32_t A0;
	volatile uint32_t A1;
	volatile uint32_t A2;
	volatile uint32_t A3;
	volatile uint32_t A4;
	volatile uint32_t A5;
	volatile const uint32_t RESERVED4[2];
	volatile uint32_t B0;
	volatile uint32_t B1;
	volatile uint32_t B2;
	volatile uint32_t B3;
	volatile uint32_t B4;
	volatile uint32_t B5;
	volatile const uint32_t RESERVED5[2];
	volatile uint32_t T0;
	volatile uint32_t T1;
	volatile uint32_t T2;
	volatile uint32_t T3;
	volatile uint32_t T4;
} NRF_TEMP_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED0[62];
	volatile uint32_t EVENTS_VALRDY;
	volatile const uint32_t RESERVED1[63];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED2[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[126];
	volatile uint32_t CONFIG;
	volatile const uint32_t VALUE;
} NRF_RNG_Type;
typedef struct {
	volatile uint32_t TASKS_STARTECB;
	volatile uint32_t TASKS_STOPECB;
	volatile const uint32_t RESERVED0[62];
	volatile uint32_t EVENTS_ENDECB;
	volatile uint32_t EVENTS_ERRORECB;
	volatile const uint32_t RESERVED1[127];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[126];
	volatile uint32_t ECBDATAPTR;
} NRF_ECB_Type;
typedef struct {
	volatile uint32_t TASKS_KSGEN;
	volatile uint32_t TASKS_CRYPT;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_RATEOVERRIDE;
	volatile const uint32_t RESERVED0[60];
	volatile uint32_t EVENTS_ENDKSGEN;
	volatile uint32_t EVENTS_ENDCRYPT;
	volatile uint32_t EVENTS_ERROR;
	volatile const uint32_t RESERVED1[61];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED2[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[61];
	volatile const uint32_t MICSTATUS;
	volatile const uint32_t RESERVED4[63];
	volatile uint32_t ENABLE;
	volatile uint32_t MODE;
	volatile uint32_t CNFPTR;
	volatile uint32_t INPTR;
	volatile uint32_t OUTPTR;
	volatile uint32_t SCRATCHPTR;
	volatile uint32_t MAXPACKETSIZE;
	volatile uint32_t RATEOVERRIDE;
} NRF_CCM_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile const uint32_t RESERVED0;
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED1[61];
	volatile uint32_t EVENTS_END;
	volatile uint32_t EVENTS_RESOLVED;
	volatile uint32_t EVENTS_NOTRESOLVED;
	volatile const uint32_t RESERVED2[126];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[61];
	volatile const uint32_t STATUS;
	volatile const uint32_t RESERVED4[63];
	volatile uint32_t ENABLE;
	volatile uint32_t NIRK;
	volatile uint32_t IRKPTR;
	volatile const uint32_t RESERVED5;
	volatile uint32_t ADDRPTR;
	volatile uint32_t SCRATCHPTR;
} NRF_AAR_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile const uint32_t RESERVED0[63];
	volatile uint32_t EVENTS_TIMEOUT;
	volatile const uint32_t RESERVED1[128];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[61];
	volatile const uint32_t RUNSTATUS;
	volatile const uint32_t REQSTATUS;
	volatile const uint32_t RESERVED3[63];
	volatile uint32_t CRV;
	volatile uint32_t RREN;
	volatile uint32_t CONFIG;
	volatile const uint32_t RESERVED4[60];
	volatile uint32_t RR[8];
} NRF_WDT_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_READCLRACC;
	volatile uint32_t TASKS_RDCLRACC;
	volatile uint32_t TASKS_RDCLRDBL;
	volatile const uint32_t RESERVED0[59];
	volatile uint32_t EVENTS_SAMPLERDY;
	volatile uint32_t EVENTS_REPORTRDY;
	volatile uint32_t EVENTS_ACCOF;
	volatile uint32_t EVENTS_DBLRDY;
	volatile uint32_t EVENTS_STOPPED;
	volatile const uint32_t RESERVED1[59];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED2[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[125];
	volatile uint32_t ENABLE;
	volatile uint32_t LEDPOL;
	volatile uint32_t SAMPLEPER;
	volatile const int32_t SAMPLE;
	volatile uint32_t REPORTPER;
	volatile const int32_t ACC;
	volatile const int32_t ACCREAD;
	QDEC_PSEL_Type PSEL;
	volatile uint32_t DBFEN;
	volatile const uint32_t RESERVED4[5];
	volatile uint32_t LEDPRE;
	volatile const uint32_t ACCDBL;
	volatile const uint32_t ACCDBLREAD;
} NRF_QDEC_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_SAMPLE;
	volatile const uint32_t RESERVED0[61];
	volatile uint32_t EVENTS_READY;
	volatile uint32_t EVENTS_DOWN;
	volatile uint32_t EVENTS_UP;
	volatile uint32_t EVENTS_CROSS;
	volatile const uint32_t RESERVED1[60];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED2[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[61];
	volatile const uint32_t RESULT;
	volatile const uint32_t RESERVED4[63];
	volatile uint32_t ENABLE;
	volatile uint32_t PSEL;
	volatile uint32_t REFSEL;
	volatile uint32_t EXTREFSEL;
	volatile const uint32_t RESERVED5[8];
	volatile uint32_t TH;
	volatile uint32_t MODE;
	volatile uint32_t HYST;
} NRF_COMP_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_SAMPLE;
	volatile const uint32_t RESERVED0[61];
	volatile uint32_t EVENTS_READY;
	volatile uint32_t EVENTS_DOWN;
	volatile uint32_t EVENTS_UP;
	volatile uint32_t EVENTS_CROSS;
	volatile const uint32_t RESERVED1[60];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED2[64];
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[61];
	volatile const uint32_t RESULT;
	volatile const uint32_t RESERVED4[63];
	volatile uint32_t ENABLE;
	volatile uint32_t PSEL;
	volatile uint32_t REFSEL;
	volatile uint32_t EXTREFSEL;
	volatile const uint32_t RESERVED5[4];
	volatile uint32_t ANADETECT;
	volatile const uint32_t RESERVED6[5];
	volatile uint32_t HYST;
} NRF_LPCOMP_Type;
typedef struct {
	volatile const uint32_t UNUSED;
} NRF_SWI_Type;
typedef struct {
	volatile uint32_t TASKS_TRIGGER[16];
	volatile const uint32_t RESERVED0[48];
	volatile uint32_t EVENTS_TRIGGERED[16];
	volatile const uint32_t RESERVED1[112];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
} NRF_EGU_Type;
typedef struct {
	volatile const uint32_t RESERVED0;
	volatile uint32_t TASKS_STOP;
	volatile uint32_t TASKS_SEQSTART[2];
	volatile uint32_t TASKS_NEXTSTEP;
	volatile const uint32_t RESERVED1[60];
	volatile uint32_t EVENTS_STOPPED;
	volatile uint32_t EVENTS_SEQSTARTED[2];
	volatile uint32_t EVENTS_SEQEND[2];
	volatile uint32_t EVENTS_PWMPERIODEND;
	volatile uint32_t EVENTS_LOOPSDONE;
	volatile const uint32_t RESERVED2[56];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED3[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED4[125];
	volatile uint32_t ENABLE;
	volatile uint32_t MODE;
	volatile uint32_t COUNTERTOP;
	volatile uint32_t PRESCALER;
	volatile uint32_t DECODER;
	volatile uint32_t LOOP;
	volatile const uint32_t RESERVED5[2];
	PWM_SEQ_Type SEQ[2];
	PWM_PSEL_Type PSEL;
} NRF_PWM_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED0[62];
	volatile uint32_t EVENTS_STARTED;
	volatile uint32_t EVENTS_STOPPED;
	volatile uint32_t EVENTS_END;
	volatile const uint32_t RESERVED1[125];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[125];
	volatile uint32_t ENABLE;
	volatile uint32_t PDMCLKCTRL;
	volatile uint32_t MODE;
	volatile const uint32_t RESERVED3[3];
	volatile uint32_t GAINL;
	volatile uint32_t GAINR;
	volatile uint32_t RATIO;
	volatile const uint32_t RESERVED4[7];
	PDM_PSEL_Type PSEL;
	volatile const uint32_t RESERVED5[6];
	PDM_SAMPLE_Type SAMPLE;
} NRF_PDM_Type;
typedef struct {
	volatile const uint32_t RESERVED0[256];
	volatile const uint32_t READY;
	volatile const uint32_t RESERVED1;
	volatile const uint32_t READYNEXT;
	volatile const uint32_t RESERVED2[62];
	volatile uint32_t CONFIG;
	union {
		volatile uint32_t ERASEPAGE;
		volatile uint32_t ERASEPCR1;
	};
	volatile uint32_t ERASEALL;
	volatile uint32_t ERASEPCR0;
	volatile uint32_t ERASEUICR;
	volatile const uint32_t RESERVED3[10];
	volatile uint32_t ICACHECNF;
	volatile const uint32_t RESERVED4;
	volatile uint32_t IHIT;
	volatile uint32_t IMISS;
} NRF_NVMC_Type;
typedef struct {
	volatile const uint32_t RESERVED0[512];
	ACL_ACL_Type ACL[8];
} NRF_ACL_Type;
typedef struct {
	PPI_TASKS_CHG_Type TASKS_CHG[6];
	volatile const uint32_t RESERVED0[308];
	volatile uint32_t CHEN;
	volatile uint32_t CHENSET;
	volatile uint32_t CHENCLR;
	volatile const uint32_t RESERVED1;
	PPI_CH_Type CH[20];
	volatile const uint32_t RESERVED2[148];
	volatile uint32_t CHG[6];
	volatile const uint32_t RESERVED3[62];
	PPI_FORK_Type FORK[32];
} NRF_PPI_Type;
typedef struct {
	volatile const uint32_t RESERVED0[64];
	MWU_EVENTS_REGION_Type EVENTS_REGION[4];
	volatile const uint32_t RESERVED1[16];
	MWU_EVENTS_PREGION_Type EVENTS_PREGION[2];
	volatile const uint32_t RESERVED2[100];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[5];
	volatile uint32_t NMIEN;
	volatile uint32_t NMIENSET;
	volatile uint32_t NMIENCLR;
	volatile const uint32_t RESERVED4[53];
	MWU_PERREGION_Type PERREGION[2];
	volatile const uint32_t RESERVED5[64];
	volatile uint32_t REGIONEN;
	volatile uint32_t REGIONENSET;
	volatile uint32_t REGIONENCLR;
	volatile const uint32_t RESERVED6[57];
	MWU_REGION_Type REGION[4];
	volatile const uint32_t RESERVED7[32];
	MWU_PREGION_Type PREGION[2];
} NRF_MWU_Type;
typedef struct {
	volatile uint32_t TASKS_START;
	volatile uint32_t TASKS_STOP;
	volatile const uint32_t RESERVED0[63];
	volatile uint32_t EVENTS_RXPTRUPD;
	volatile uint32_t EVENTS_STOPPED;
	volatile const uint32_t RESERVED1[2];
	volatile uint32_t EVENTS_TXPTRUPD;
	volatile const uint32_t RESERVED2[122];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED3[125];
	volatile uint32_t ENABLE;
	I2S_CONFIG_Type CONFIG;
	volatile const uint32_t RESERVED4[3];
	I2S_RXD_Type RXD;
	volatile const uint32_t RESERVED5;
	I2S_TXD_Type TXD;
	volatile const uint32_t RESERVED6[3];
	I2S_RXTXD_Type RXTXD;
	volatile const uint32_t RESERVED7[3];
	I2S_PSEL_Type PSEL;
} NRF_I2S_Type;
typedef struct {
	volatile const uint32_t UNUSED;
} NRF_FPU_Type;
typedef struct {
	volatile const uint32_t RESERVED0;
	volatile uint32_t TASKS_STARTEPIN[8];
	volatile uint32_t TASKS_STARTISOIN;
	volatile uint32_t TASKS_STARTEPOUT[8];
	volatile uint32_t TASKS_STARTISOOUT;
	volatile uint32_t TASKS_EP0RCVOUT;
	volatile uint32_t TASKS_EP0STATUS;
	volatile uint32_t TASKS_EP0STALL;
	volatile uint32_t TASKS_DPDMDRIVE;
	volatile uint32_t TASKS_DPDMNODRIVE;
	volatile const uint32_t RESERVED1[40];
	volatile uint32_t EVENTS_USBRESET;
	volatile uint32_t EVENTS_STARTED;
	volatile uint32_t EVENTS_ENDEPIN[8];
	volatile uint32_t EVENTS_EP0DATADONE;
	volatile uint32_t EVENTS_ENDISOIN;
	volatile uint32_t EVENTS_ENDEPOUT[8];
	volatile uint32_t EVENTS_ENDISOOUT;
	volatile uint32_t EVENTS_SOF;
	volatile uint32_t EVENTS_USBEVENT;
	volatile uint32_t EVENTS_EP0SETUP;
	volatile uint32_t EVENTS_EPDATA;
	volatile uint32_t EVENTS_ACCESSFAULT;
	volatile const uint32_t RESERVED2[38];
	volatile uint32_t SHORTS;
	volatile const uint32_t RESERVED3[63];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED4[61];
	volatile uint32_t EVENTCAUSE;
	volatile const uint32_t BUSSTATE;
	volatile const uint32_t RESERVED5[6];
	USBD_HALTED_Type HALTED;
	volatile const uint32_t RESERVED6;
	volatile uint32_t EPSTATUS;
	volatile uint32_t EPDATASTATUS;
	volatile const uint32_t USBADDR;
	volatile const uint32_t RESERVED7[3];
	volatile const uint32_t BMREQUESTTYPE;
	volatile const uint32_t BREQUEST;
	volatile const uint32_t WVALUEL;
	volatile const uint32_t WVALUEH;
	volatile const uint32_t WINDEXL;
	volatile const uint32_t WINDEXH;
	volatile const uint32_t WLENGTHL;
	volatile const uint32_t WLENGTHH;
	USBD_SIZE_Type SIZE;
	volatile const uint32_t RESERVED8[15];
	volatile uint32_t ENABLE;
	volatile uint32_t USBPULLUP;
	volatile uint32_t DPDMVALUE;
	volatile uint32_t DTOGGLE;
	volatile uint32_t EPINEN;
	volatile uint32_t EPOUTEN;
	volatile uint32_t EPSTALL;
	volatile uint32_t ISOSPLIT;
	volatile const uint32_t FRAMECNTR;
	volatile const uint32_t RESERVED9[2];
	volatile uint32_t LOWPOWER;
	volatile uint32_t ISOINCONFIG;
	volatile const uint32_t RESERVED10[51];
	USBD_EPIN_Type EPIN[8];
	USBD_ISOIN_Type ISOIN;
	volatile const uint32_t RESERVED11[21];
	USBD_EPOUT_Type EPOUT[8];
	USBD_ISOOUT_Type ISOOUT;
} NRF_USBD_Type;
typedef struct {
	volatile uint32_t TASKS_ACTIVATE;
	volatile uint32_t TASKS_READSTART;
	volatile uint32_t TASKS_WRITESTART;
	volatile uint32_t TASKS_ERASESTART;
	volatile uint32_t TASKS_DEACTIVATE;
	volatile const uint32_t RESERVED0[59];
	volatile uint32_t EVENTS_READY;
	volatile const uint32_t RESERVED1[127];
	volatile uint32_t INTEN;
	volatile uint32_t INTENSET;
	volatile uint32_t INTENCLR;
	volatile const uint32_t RESERVED2[125];
	volatile uint32_t ENABLE;
	QSPI_READ_Type READ;
	QSPI_WRITE_Type WRITE;
	QSPI_ERASE_Type ERASE;
	QSPI_PSEL_Type PSEL;
	volatile uint32_t XIPOFFSET;
	volatile uint32_t IFCONFIG0;
	volatile const uint32_t RESERVED3[46];
	volatile uint32_t IFCONFIG1;
	volatile const uint32_t STATUS;
	volatile const uint32_t RESERVED4[3];
	volatile uint32_t DPMDUR;
	volatile const uint32_t RESERVED5[3];
	volatile uint32_t ADDRCONF;
	volatile const uint32_t RESERVED6[3];
	volatile uint32_t CINSTRCONF;
	volatile uint32_t CINSTRDAT0;
	volatile uint32_t CINSTRDAT1;
	volatile uint32_t IFTIMING;
} NRF_QSPI_Type;
typedef struct {
	volatile const uint32_t RESERVED0[321];
	volatile uint32_t OUT;
	volatile uint32_t OUTSET;
	volatile uint32_t OUTCLR;
	volatile const uint32_t IN;
	volatile uint32_t DIR;
	volatile uint32_t DIRSET;
	volatile uint32_t DIRCLR;
	volatile uint32_t LATCH;
	volatile uint32_t DETECTMODE;
	volatile const uint32_t RESERVED1[118];
	volatile uint32_t PIN_CNF[32];
} NRF_GPIO_Type;
typedef struct {
	volatile const uint32_t RESERVED0[320];
	volatile uint32_t ENABLE;
} NRF_CRYPTOCELL_Type;
static inline unsigned int gcc_current_sp(void)
{
	register unsigned sp __asm("sp");
	return sp;
}
struct ll_filter {
	u8_t enable_bitmask;
	u8_t addr_type_bitmask;
	u8_t bdaddr[8][6];
};
void ll_filter_reset(
		_Bool 
		init);
void ll_filters_adv_update(u8_t adv_fp);
void ll_filters_scan_update(u8_t scan_fp);
struct ll_filter *ctrl_filter_get(
		_Bool 
		whitelist);
bt_addr_t *ctrl_lrpa_get(u8_t rl_idx);
u8_t *ctrl_irks_get(u8_t *count);
u8_t ctrl_rl_idx(
		_Bool 
		whitelist, u8_t devmatch_id);
u8_t ctrl_rl_irk_idx(u8_t irkmatch_id);
_Bool 
ctrl_irk_whitelisted(u8_t rl_idx);
_Bool 
ctrl_rl_enabled(void);
void ll_rl_rpa_update(
		_Bool 
		timeout);
u8_t ll_rl_find(u8_t id_addr_type, u8_t *id_addr, u8_t *free);
_Bool 
ctrl_rl_addr_allowed(u8_t id_addr_type, u8_t *id_addr, u8_t *rl_idx);
_Bool 
ctrl_rl_addr_resolve(u8_t id_addr_type, u8_t *id_addr, u8_t rl_idx);
_Bool 
ctrl_rl_idx_allowed(u8_t irkmatch_ok, u8_t rl_idx);
void ll_rl_pdu_adv_update(u8_t idx, struct pdu_adv *pdu);
struct ll_adv_set {
	u8_t chan_map:3;
	u8_t filter_policy:2;
	u16_t interval;
};
struct ll_adv_set *ll_adv_set_get(void);
static struct ll_adv_set ll_adv;
struct ll_adv_set *ll_adv_set_get(void)
{
	return &ll_adv;
}
u32_t ll_adv_params_set(u16_t interval, u8_t adv_type,
		u8_t own_addr_type, u8_t direct_addr_type,
		u8_t const *const direct_addr, u8_t chan_map,
		u8_t filter_policy)
{
	u8_t const pdu_adv_type[] = {PDU_ADV_TYPE_ADV_IND,
		PDU_ADV_TYPE_DIRECT_IND,
		PDU_ADV_TYPE_SCAN_IND,
		PDU_ADV_TYPE_NONCONN_IND,
		PDU_ADV_TYPE_DIRECT_IND};
	struct radio_adv_data *radio_adv_data;
	struct pdu_adv *pdu;
	if (radio_adv_is_enabled()) {
		return 0x0c;
	}
	if (adv_type != 0x01) {
		ll_adv.interval = interval;
	} else {
		ll_adv.interval = 0;
	}
	ll_adv.chan_map = chan_map;
	ll_adv.filter_policy = filter_policy;
	radio_adv_data = radio_adv_data_get();
	pdu = (struct pdu_adv *)&radio_adv_data->data[radio_adv_data->last][0];
	pdu->type = pdu_adv_type[adv_type];
	pdu->rfu = 0;
	if (1 &&
			((pdu->type == PDU_ADV_TYPE_ADV_IND) ||
			 (pdu->type == PDU_ADV_TYPE_DIRECT_IND))) {
		pdu->chan_sel = 1;
	} else {
		pdu->chan_sel = 0;
	}
	pdu->tx_addr = own_addr_type & 0x1;
	pdu->rx_addr = 0;
	if (pdu->type == PDU_ADV_TYPE_DIRECT_IND) {
		pdu->rx_addr = direct_addr_type;
		memcpy(&pdu->payload.direct_ind.tgt_addr[0], direct_addr,
				6);
		pdu->len = sizeof(struct pdu_adv_payload_direct_ind);
	} else if (pdu->len == 0) {
		pdu->len = 6;
	}
	radio_adv_data = radio_scan_data_get();
	pdu = (struct pdu_adv *)&radio_adv_data->data[radio_adv_data->last][0];
	pdu->type = PDU_ADV_TYPE_SCAN_RSP;
	pdu->rfu = 0;
	pdu->chan_sel = 0;
	pdu->tx_addr = own_addr_type & 0x1;
	pdu->rx_addr = 0;
	if (pdu->len == 0) {
		pdu->len = 6;
	}
	return 0;
}
void ll_adv_data_set(u8_t len, u8_t const *const data)
{
	struct radio_adv_data *radio_adv_data;
	struct pdu_adv *prev;
	struct pdu_adv *pdu;
	u8_t last;
	radio_adv_data = radio_adv_data_get();
	prev = (struct pdu_adv *)&radio_adv_data->data[radio_adv_data->last][0];
	if ((prev->type == PDU_ADV_TYPE_DIRECT_IND) ||
			(0 &&
			 (prev->type == PDU_ADV_TYPE_EXT_IND))) {
		return;
	}
	if (radio_adv_data->first == radio_adv_data->last) {
		last = radio_adv_data->last + 1;
		if (last == 2) {
			last = 0;
		}
	} else {
		last = radio_adv_data->last;
	}
	pdu = (struct pdu_adv *)&radio_adv_data->data[last][0];
	pdu->type = prev->type;
	pdu->rfu = 0;
	if (1) {
		pdu->chan_sel = prev->chan_sel;
	} else {
		pdu->chan_sel = 0;
	}
	pdu->tx_addr = prev->tx_addr;
	pdu->rx_addr = prev->rx_addr;
	memcpy(&pdu->payload.adv_ind.addr[0],
			&prev->payload.adv_ind.addr[0], 6);
	memcpy(&pdu->payload.adv_ind.data[0], data, len);
	pdu->len = 6 + len;
	radio_adv_data->last = last;
}
void ll_scan_data_set(u8_t len, u8_t const *const data)
{
	struct radio_adv_data *radio_scan_data;
	struct pdu_adv *prev;
	struct pdu_adv *pdu;
	u8_t last;
	radio_scan_data = radio_scan_data_get();
	if (radio_scan_data->first == radio_scan_data->last) {
		last = radio_scan_data->last + 1;
		if (last == 2) {
			last = 0;
		}
	} else {
		last = radio_scan_data->last;
	}
	prev = (struct pdu_adv *)
		&radio_scan_data->data[radio_scan_data->last][0];
	pdu = (struct pdu_adv *)&radio_scan_data->data[last][0];
	pdu->type = PDU_ADV_TYPE_SCAN_RSP;
	pdu->rfu = 0;
	pdu->chan_sel = 0;
	pdu->tx_addr = prev->tx_addr;
	pdu->rx_addr = 0;
	pdu->len = 6 + len;
	memcpy(&pdu->payload.scan_rsp.addr[0],
			&prev->payload.scan_rsp.addr[0], 6);
	memcpy(&pdu->payload.scan_rsp.data[0], data, len);
	radio_scan_data->last = last;
}
u32_t ll_adv_enable(u8_t enable)
{
	struct radio_adv_data *radio_scan_data;
	struct radio_adv_data *radio_adv_data;
	u8_t rl_idx = 0xFF;
	struct pdu_adv *pdu_scan;
	struct pdu_adv *pdu_adv;
	u32_t status;
	if (!enable) {
		return radio_adv_disable();
	} else if (radio_adv_is_enabled()) {
		return 0;
	}
	radio_adv_data = radio_adv_data_get();
	radio_scan_data = radio_scan_data_get();
	pdu_adv = (struct pdu_adv *)&radio_adv_data->data
		[radio_adv_data->last][0];
	pdu_scan = (struct pdu_adv *)&radio_scan_data->data
		[radio_scan_data->last][0];
	if (0) {
	} else {
		_Bool 
			priv = 
			0
			;
		if (!priv) {
			memcpy(&pdu_adv->payload.adv_ind.addr[0],
					ll_addr_get(pdu_adv->tx_addr, 
						((void *)0)
						), 6);
			memcpy(&pdu_scan->payload.scan_rsp.addr[0],
					ll_addr_get(pdu_adv->tx_addr, 
						((void *)0)
						), 6);
		}
	}
	status = radio_adv_enable(ll_adv.interval, ll_adv.chan_map,
			ll_adv.filter_policy, rl_idx);
	return status;
}

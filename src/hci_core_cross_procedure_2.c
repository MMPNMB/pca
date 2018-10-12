typedef long unsigned int __uint32_t;
typedef __uint32_t uint32_t ;
typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef unsigned int u32_t;
enum k_poll_modes {

        K_POLL_MODE_NOTIFY_ONLY = 0,

        K_POLL_NUM_MODES
};
enum _poll_states_bits {
    _POLL_STATE_DATA_AVAILABLE,
    _POLL_NUM_STATES
};
enum _poll_types_bits {
    _POLL_TYPE_DATA_AVAILABLE,
    _POLL_NUM_TYPES
};
struct k_poll_event {
    u32_t tag:8;
    u32_t type:_POLL_NUM_TYPES;
    u32_t state:_POLL_NUM_STATES;
    u32_t mode:1;
    u32_t unused:(1);
    union {
        void *obj;
    };
};
typedef uint32_t _stack_element_t;

struct k_fifo {

};
struct net_buf {
 u8_t pool_id;
 u16_t size;
 u8_t __buf[0] __attribute__((__aligned__(sizeof(int))));

};
static inline void *net_buf_user_data(struct net_buf *buf)
{
 return (void *)(((unsigned long)((buf->__buf + buf->size)) + ((unsigned long)sizeof(int) - 1)) & ~((unsigned long)sizeof(int) - 1));
}
typedef void (*bt_ready_cb_t)(int err);
enum {
 BT_EVENT_CMD_TX,
};
struct bt_dev {
 struct k_fifo cmd_tx_queue;
};
struct k_thread {

};
extern struct bt_dev bt_dev;
static struct k_thread tx_thread_data;
static _stack_element_t tx_thread_stack[(200) + 0];


struct cmd_data {
 u8_t status;

 struct k_sem *sync;
};

extern struct net_buf_pool hci_cmd_pool;

static void hci_cmd_done(u8_t status, struct net_buf *buf)
{
 
 if (net_buf_pool_get(buf->pool_id) != &hci_cmd_pool) {

  return;
 }

 if (((struct cmd_data *)net_buf_user_data(buf))->sync) {
  ((struct cmd_data *)net_buf_user_data(buf))->status = status;
  k_sem_give(((struct cmd_data *)net_buf_user_data(buf))->sync);
 }
}


static int send_cmd(void)
{
 struct net_buf *buf;
 buf = net_buf_get(&bt_dev.cmd_tx_queue, 0);
 if (0) {
  return bt_hci_ecc_send(buf);
 }
 if (1) {
  hci_cmd_done(0x1f,((void *)0));
 }
}

static void hci_tx_thread(void *p1, void *p2, void *p3)
{
        static struct k_poll_event events[(2 + (1 * 2))] = {
                { .type = 3, .tag = BT_EVENT_CMD_TX, .state = 0, .mode = K_POLL_MODE_NOTIFY_ONLY, .unused = 0, { .obj = &bt_dev.cmd_tx_queue }, }
                                                        ,
        };
 while (1) {
  events[0].state = 0;
  switch (events->state) {
  case 4:
   if (0) {
    send_cmd();//can not inline
   //end
   }
   break;
  }

 }
}

int bt_enable(bt_ready_cb_t cb)
{
 k_thread_create(&tx_thread_data, tx_thread_stack,
   sizeof(tx_thread_stack),
   hci_tx_thread, ((void *)0), ((void *)0), ((void *)0),20,0, 0);
 return 0;
}


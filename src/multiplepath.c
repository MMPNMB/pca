
typedef unsigned char uint8_t;
typedef short unsigned int uint16_t;
typedef long unsigned int uint32_t;

typedef struct {
 
} NRF_UARTE_Type;
typedef struct {
  
} NRF_UART_Type;

typedef struct
{
    union
    {
    NRF_UARTE_Type * p_uarte;
    NRF_UART_Type * p_uart;
    void * p_reg;
    } reg;

    uint8_t drv_inst_idx;
} nrf_drv_uart_t;

typedef struct
{
    uint8_t * p_buf;
    uint16_t buf_size_mask;
} app_fifo_t;

static nrf_drv_uart_t app_uart_inst = { .reg = {(1 == 1 ? (void *)((NRF_UARTE_Type *) 0x40002000UL) : (void *)((NRF_UART_Type *) 0x40002000UL))}, .drv_inst_idx = 0,};
static app_fifo_t m_tx_fifo;
static uint8_t tx_buffer[1];
uint32_t app_uart_putall(void)
{
    uint32_t err_code;
    if (err_code == ((0x0) + 0))
    {
        if (!nrf_drv_uart_tx_in_progress(&app_uart_inst))
        {
            if (app_fifo_get(&m_tx_fifo, tx_buffer) == ((0x0) + 0))
            {
                err_code = nrf_drv_uart_tx(&app_uart_inst, tx_buffer, 1);
            }
        }
    }
    return err_code;
}

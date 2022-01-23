#ifndef __SERIAL_H__
#define __SERIAL_H__
#ifdef __cplusplus
extern "C" {
#endif

#define  CS_SUCCESS              (0)                   //成功
#define  ERR_CS_BASE             (-100)                //错误号码基数
#define  ERR_CS_OPEN_COM         (ERR_CS_BASE + (-1))  //打开串口失败
#define  ERR_CS_NOT_OPEN         (ERR_CS_BASE + (-2))  //串口未打开
#define  ERR_CS_READLN           (ERR_CS_BASE + (-3))  //读长度指定错误
#define  ERR_CS_READ             (ERR_CS_BASE + (-4))  //读动作错误
#define  ERR_CS_WRITELN          (ERR_CS_BASE + (-5))  //写长度指定错误
#define  ERR_CS_WRITE            (ERR_CS_BASE + (-6))  //写动作错误
#define  ERR_CS_BPS              (ERR_CS_BASE + (-7))  //波特率指定错误
#define  ERR_CS_SETATTR          (ERR_CS_BASE + (-8))  //设置属性失败
#define  ERR_CS_DEVLEN           (ERR_CS_BASE + (-9))  //设备名超长

typedef struct {
    int  fd;
    int  bps;
    int  parity;
    int  databit;
    int  stopbit;
    char port[32];   
} serial_t;

int  serial_init(serial_t *ser, const char *dev, int bps);
int  serial_open(serial_t *ser);
void serial_close(serial_t *ser);
void serial_clear(serial_t *ser);
int  serial_read(serial_t *ser, char *s, int ln);
int  serial_write(serial_t *ser, char *s, int ln);

#ifdef __cplusplus
}
#endif
#endif //__SERIAL_H__

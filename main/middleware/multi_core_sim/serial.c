#ifdef __cplusplus
extern "C" {
#endif

#include <unistd.h>
#include <fcntl.h>
#include <termio.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>

#include "serial.h"

/**
 * @brief Set the attr object
 *
 * @param fd
 * @param bps
 * @return int 0:success <0: fail
 */
int set_attr(int fd, int bps)
{
    struct termios tios;
    int speed;
    int modemcontrl;

    memset(&tios, 0, sizeof(tios));

    switch (bps) {
    case 300:
        speed = B300;
        break;
    case 600:
        speed = B600;
        break;
    case 1200:
        speed = B1200;
        break;
    case 1800:
        speed = B1800;
        break;
    case 2400:
        speed = B2400;
        break;
    case 4800:
        speed = B4800;
        break;
    case 9600:
        speed = B9600;
        break;
    case 19200:
        speed = B19200;
        break;
    case 38400:
        speed = B38400;
        break;
    case 57600:
        speed = B57600;
        break;
    case 115200:
        speed = B115200;
        break;
    case 921600:
        speed = B921600;
        break;
    case 3000000:
        speed = B3000000;
        break;
    default:
        return ERR_CS_BPS;
    }

    tcgetattr(fd, &tios);

    tios.c_cflag     &= ~(CSIZE | CSTOPB | PARENB);
    tios.c_cflag     |= CS8 | CREAD | HUPCL | CLOCAL;

    tios.c_iflag      = IGNBRK | IGNPAR;
    tios.c_oflag      = 0;
    tios.c_lflag      = 0;
    tios.c_cc[VMIN]   = 0;
    tios.c_cc[VTIME]  = 1;

    cfsetospeed(&tios, speed);
    cfsetispeed(&tios, speed);

    if (tcsetattr(fd, TCSAFLUSH, &tios) < 0) 
		return ERR_CS_SETATTR;

    modemcontrl = TIOCM_DTR;
    ioctl(fd, TIOCMBIS, &modemcontrl);
    modemcontrl = TIOCM_RTS;
    ioctl(fd, TIOCMBIS, &modemcontrl);

    return 0;
}

/**
 * @brief
 *
 * @param ser
 * @param dev
 * @param bps
 * @return int 0:success <0: fail
 */
int serial_init(serial_t *ser, const char *dev, int bps)
{
    if (strlen(dev) > (sizeof(ser->port) - 1)) return ERR_CS_DEVLEN;

    ser->fd = -1;
    ser->bps = bps;
    ser->parity = 0;
    ser->databit = 8;
    ser->stopbit = 1;
    memset(ser->port, 0, sizeof(ser->port));
    strcpy(ser->port, dev);

    return CS_SUCCESS;
}

/**
 * @brief
 *
 * @param cs
 * @return int 0:success <0: fail
 */
int serial_open(serial_t *ser)
{
    int ret;

    //如果串口已经打开，则先关闭，再打开
    if (ser->fd != -1) close(ser->fd);

    ser->fd = open(ser->port, O_RDWR | O_SYNC);  // | O_NDELAY |O_SYNC

    if (ser->fd < 0)  return ERR_CS_OPEN_COM;

    ret = set_attr(ser->fd, ser->bps);

    return ret;
}

/**
 * @brief
 *
 * @param cs
 */

void serial_close(serial_t *ser)
{
    if (ser->fd != -1) close(ser->fd);
    ser->fd = -1;
}

/**
 * @brief clear cached data
 *
 * @param cs
 */
void serial_clear(serial_t *ser)
{
    tcflush(ser->fd, TCIOFLUSH);
}

/**
 * @brief 从串口读取指定长度数据, 返回实际读到的数据长度。此方法采用阻塞方式读取串口数据,
        如果串口当前没有数据,则立即返回
 *
 * @param ser
 * @param s
 * @param ln
 * @return int
 */

int serial_read(serial_t *ser, char *s, int ln)
{
    int ready_read_ln = 0, cur_read_ln;

    //if( ser->fd < 0) return ERR_CS_NOT_OPEN;
    //if( ln< 1)          return ERR_CS_READLN;
    if (ser->fd < 0) return 0;
    if (ln < 1)          return 0;

    while (1) {
        cur_read_ln = read(ser->fd, s + ready_read_ln, ln - ready_read_ln);
        //if( cur_read_ln < 0) return ERR_CS_READ;
        if (cur_read_ln < 0) return 0;

        if (cur_read_ln == 0)  {
            printf("[%s] no data\n", __func__);
            return ready_read_ln;
        }
        ready_read_ln = ready_read_ln + cur_read_ln;
    }
    return ready_read_ln;
}

/**
 * @brief 向串口发送数据,分段发送,每次发送100字节数据
 *
 * @param ser
 * @param s
 * @param ln
 * @return int >0 实际发送的数据长度 <0 fail
 */
int serial_write(serial_t *ser, char *s, int ln)
{
    int ready_write_ln = 0, cur_write_ln, tmp_ln;

    if (ser->fd < 0) return ERR_CS_NOT_OPEN;
    if (ln < 1)          return ERR_CS_WRITELN;

    while (1 == 1) {
        if ((ln - ready_write_ln) > 100)
            cur_write_ln = 100;
        else cur_write_ln = ln - ready_write_ln;

        tmp_ln = write(ser->fd, s + ready_write_ln, cur_write_ln);
        if (tmp_ln < 0) return ERR_CS_WRITE;

        ready_write_ln = ready_write_ln + tmp_ln;
        if (ready_write_ln == ln) break;

    }
    return ready_write_ln;
}
#ifdef __cplusplus
}
#endif
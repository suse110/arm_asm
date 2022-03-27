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
// https://www.cnblogs.com/mylinux/p/5632359.html

int set_port_attr (int fd,int  baudrate, int  databit, unsigned int stopbit, char parity, int vtime,int vmin );
static void set_baudrate (struct termios *opt, unsigned int baudrate);
static void set_data_bit (struct termios *opt, unsigned int databit);
static void set_stopbit (struct termios *opt, unsigned int  stopbit);
static void set_parity (struct termios *opt, char parity);
/*
struct termios {
    tcflag_t c_iflag; // 输入参数 
    tcflag_t c_oflag; // 输出参数 
    tcflag_t c_cflag; // 控制参数
    tcflag_t c_ispeed; // 输入波特率  v
    tcflag_t c_ospeed; // 输出波特率 
    cc_t c_line; // 线控制 
    cc_t c_cc[NCCS]; // 控制字符
};
       
*/
//设置终端属性的时候注意,有的项目是通过与&,而有的项目是通过或|. 不要混淆误解.
int  set_port_attr (int fd,int  baudrate, int  databit, unsigned int stopbit, char parity, int vtime,int vmin )
{
    struct termios opt;
    tcgetattr(fd, &opt);       //获取初始设置
    
    set_baudrate(&opt, baudrate);
    set_data_bit(&opt, databit);
    set_parity(&opt, parity);
    set_stopbit(&opt, stopbit);
    
    opt.c_cflag &= ~CRTSCTS;// 不使用硬件流控制
    opt.c_cflag |= CLOCAL | CREAD; //CLOCAL--忽略 modem 控制线,本地连线, 不具数据机控制功能, CREAD--使能接收标志

/*
    IXON--启用输出的 XON/XOFF 流控制
    IXOFF--启用输入的 XON/XOFF 流控制
    IXANY--允许任何字符来重新开始输出
    IGNCR--忽略输入中的回车
    */
    opt.c_iflag &= ~(IXON | IXOFF | IXANY);
    opt.c_oflag &= ~OPOST; //启用输出处理
    /*
    ICANON--启用标准模式 (canonical mode)。允许使用特殊字符 EOF, EOL,
            EOL2, ERASE, KILL, LNEXT, REPRINT, STATUS, 和 WERASE，以及按行的缓冲。
    ECHO--回显输入字符
    ECHOE--如果同时设置了 ICANON，字符 ERASE 擦除前一个输入字符，WERASE 擦除前一个词
    ISIG--当接受到字符 INTR, QUIT, SUSP, 或 DSUSP 时，产生相应的信号
    */
    opt.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);
    opt.c_cc[VMIN] = vmin; //设置非规范模式下的超时时长和最小字符数：
    opt.c_cc[VTIME] = vtime; //VTIME与VMIN配合使用，是指限定的传输或等待的最长时间
    
    tcflush (fd, TCIFLUSH);                    /* TCIFLUSH-- update the options and do it NOW */
    return (tcsetattr (fd, TCSANOW, &opt)); /* TCSANOW--改变立即发生 */
}
  
//自定义set_baudrate()函数
//使用set_baudrate()函数设置串口输入/输出波特率为115200的代码为：set_baudrate(&opt, B115200));
//通常来说，串口的输入和输出波特率都设置为同一个值,如果要分开设置,就要分别调用cfsetispeed , cfsetospeed
static void set_baudrate (struct termios *opt, unsigned int baudrate)
{
    unsigned int  speed;
    switch (baudrate) {
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
        speed = B115200;
    }
    cfsetispeed(opt, speed);
    cfsetospeed(opt, speed);
}

//自定义set_stopbit函数
//在set_stopbit()函数中，stopbit参数可以取值为：“1”（1位停止位）、“1.5”（1.5位停止位）和“2”（2位停止位）。
static void set_stopbit (struct termios *opt, unsigned int  stopbit)
{
    if (stopbit == 1) {
        opt->c_cflag &= ~CSTOPB;                                                           /* 1位停止位t             */                                                       /* 1.5位停止位            */
    }else if (stopbit == 2) {
        opt->c_cflag |= CSTOPB;                                                            /* 2 位停止位             */
    }else {
        opt->c_cflag &= ~CSTOPB;                                                           /* 1 位停止位             */
    }
}

//set_data_bit函数
//CSIZE--字符长度掩码。取值为 CS5, CS6, CS7, 或 CS8
static void set_data_bit (struct termios *opt, unsigned int databit)
{
    opt->c_cflag &= ~CSIZE;
    switch (databit) {
    case 8:
        opt->c_cflag |= CS8;
        break;
    case 7:
        opt->c_cflag |= CS7;
        break;
    case 6:
        opt->c_cflag |= CS6;
        break;
    case 5:
        opt->c_cflag |= CS5;
        break;
    default:
        opt->c_cflag |= CS8;
break;
    }
}

//set_parity函数
//在set_parity函数中，parity参数可以取值为：‘N’和‘n’（无奇偶校验）、‘E’和‘e’（表示偶校验）、‘O’和‘o’（表示奇校验）。
static void set_parity (struct termios *opt, char parity)
{
    switch (parity) {
    case 'N':                                                                                   /* 无校验          */
    case 'n':
        opt->c_cflag &= ~PARENB;
        break;
    case 'E':                                                                                   /* 偶校验          */
    case 'e':
        opt->c_cflag |= PARENB;
        opt->c_cflag &= ~PARODD;
        // opt->c_iflag |= (INPCK|ISTRIP);
        break;
    case 'O':                                                                                   /* 奇校验           */
    case 'o':
        opt->c_cflag |= PARENB;
        opt->c_cflag |= ~PARODD;
        // opt->c_iflag |= (INPCK|ISTRIP);
        break;
    default:                                                                                    /* 其它选择为无校验 */
        opt->c_cflag &= ~PARENB;
        break;
    }
}

/**
 * @brief Set the attr object
 *
 * @param fd
 * @param bps
 * @return int 0:success <0: fail
 */
int set_attr(int fd, int nSpeed, int nBits, int nParity, int nStop)
{
    struct termios tios;
    int speed;
    int modemcontrl;

    memset(&tios, 0, sizeof(tios));

    switch (nSpeed) {
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
    ser->fd = open(ser->port, O_RDWR | O_NOCTTY | O_NDELAY);  // | O_NDELAY |O_SYNC

    //如果串口已经打开，则先关闭，再打开
    if (ser->fd < -1) {
        perror(ser->port);
        return -1;
    }

    if (fcntl(ser->fd, F_SETFL, 0) < 0) {
        printf("[%s] fcntl fail\n", __func__);
    } else {
        printf("[%s] fcntl=%d\n", __func__, fcntl(ser->fd, F_SETFL, 0));
    }

    if (isatty(ser->fd) == 0) {
        printf("[%s] not terminal device\n", __func__);
        close(ser->fd);
        return -1;
    }
    //VTIME:读取一个字符等待1*(1/10)s
    //VMIN:读取字符最少个数为1
    if (set_port_attr(ser->fd, ser->bps, ser->databit, ser->parity, ser->stopbit, 1, 1) == -1) {
        fprintf(stderr, "set opt err\n");
        close(ser->fd);
        exit(1);
    }

    tcflush(ser->fd, TCIOFLUSH);
    fcntl(ser->fd, F_SETFL, 0);//串口阻塞
    return 0;
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

int serial_read(serial_t *ser, char *s, int ln, int timeout)
{
    int len, fs_sel;
    fd_set fs_read;
    struct timeval time;

    time.tv_sec = timeout / 1000; //set the rcv wait time
    time.tv_usec = timeout % 1000 * 1000; //100000 0.1s

    FD_ZERO(&fs_read);//需要每次清空，否则检测不到变化
    FD_SET(ser->fd, &fs_read);
    //超时等待就绪，>0:就绪描述字的正数目， -1：error 0：超时
    fs_sel = select(ser->fd + 1, &fs_read, NULL, NULL, &time);
    if (fs_sel) {
        len = read(ser->fd, s, ln);
        return len;
    } else {
        return -1;
    }
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
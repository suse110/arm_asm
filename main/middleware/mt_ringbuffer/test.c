#include "mt_ringbuffer.h"
#include <pthread.h>

int main(int argc, char const *argv[])
{
    
    ringbuffer_t rb;
    ringbuffer_alloc(&rb, 1024);
    /*
    （1）thread参数是新线程的标识符,为一个整型。
    （2）attr参数用于设置新线程的属性。给传递NULL表示设置为默认线程属性。
    （3）start_routine和arg参数分别指定新线程将运行的函数和参数。start_routine返回时,这个线程就退出了
    （4）返回值:成功返回0,失败返回错误号。
    线程id的类型是thread_t,它只在当前进程中保证是唯一的,在不同的系统中thread_t这个类型有不同的实现，调用pthread_self()可以获得当前线程的id
    进程id的类型时pid_t,每个进程的id在整个系统中是唯一的,调用getpid()可以获得当前进程的id,是一个正整数值。
    int pthread_create(pthread_t * thread, const pthread_arrt_t* attr,void*(*start_routine)(void *), void* arg);
    */

    /*
    终止线程———pthread_cancel函数和pthread_exit函数
    终止某个线程而不终止整个进程,可以有三种方法:
    1. 从线程函数return。这种方法对主线程不适应,从main函数return相当于调用exit。
    2. 一个线程可以调用pthread_cancel终止同一进程中的另一个线程。
    3. 线程可以调用pthread_exit终止自己
    int pthread_cancel(pthread_t thread);
    */

    pthread_create();

    ringbuffer_free(&rb);

    return 0;
}

#include "mt_ringbuffer.h"
#include <pthread.h>
#include "hexdump.h"
#include "CuTest.h"


bool rb_memcheck(uint8_t *buffer1, uint8_t *buffer2, uint32_t length)
{
    for (uint32_t i=0; i < length; i++) {
        if (buffer1[i] != buffer2[i]) {
            return false;
        }
    }
    return true;
}

void test_rb_write_1(CuTest* tc)
{
    uint32_t wlen;
    uint32_t rlen;

    #define RINGBUFFER_TEST_SIZE 10
    uint8_t wbuffer[RINGBUFFER_TEST_SIZE];
    uint8_t rbuffer[RINGBUFFER_TEST_SIZE];
    ringbuffer_t rb;
    for (size_t i = 0; i < RINGBUFFER_TEST_SIZE; i++) {
        wbuffer[i] = i;
    }
    #define RINGBUFFER_SIZE 16

    ringbuffer_alloc(&rb, RINGBUFFER_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.capacity);
    CuAssertIntEquals(tc, 0, rb.size);
    CuAssertIntEquals(tc, rb.mask, rb.capacity - 1);
    CuAssertIntEquals(tc, 0, rb.wptr.head);
    CuAssertIntEquals(tc, 0, rb.wptr.tail);
    CuAssertIntEquals(tc, 0, rb.rptr.head);
    CuAssertIntEquals(tc, 0, rb.rptr.tail);
    
    memset(rbuffer, 0, RINGBUFFER_TEST_SIZE);
    // printf("****************************write 1**************************************\n");
    wlen = ringbuffer_write(&rb, wbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, 0, rb.rptr.head);
    CuAssertIntEquals(tc, 0, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, wlen);
    // ringbuffer_dump(&rb);
    // printf("****************************write 2**************************************\n");
    wlen = ringbuffer_write(&rb, wbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, 0, rb.rptr.head);
    CuAssertIntEquals(tc, 0, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE - RINGBUFFER_TEST_SIZE, wlen);
    // ringbuffer_dump(&rb);
    // printf("****************************read 1**************************************\n");
  
    rlen = ringbuffer_read(&rb, rbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rb.rptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rlen);
    CuAssertIntEquals(tc, true, rb_memcheck(rbuffer, wbuffer, rlen));
    // hexdump(rbuffer, rlen);
    // ringbuffer_dump(&rb);
    // printf("****************************read 2**************************************\n");
    rlen = ringbuffer_read(&rb, rbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.rptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE - RINGBUFFER_TEST_SIZE, rlen);
    CuAssertIntEquals(tc, true, rb_memcheck(rbuffer, wbuffer, rlen));
    // hexdump(rbuffer, rlen);
    // ringbuffer_dump(&rb);
    // printf("****************************write 3**************************************\n");
    wlen = ringbuffer_write(&rb, wbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.rptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, wlen);

    // ringbuffer_dump(&rb);
    // printf("****************************read 3**************************************\n");
 
    rlen = ringbuffer_read(&rb, rbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.rptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rlen);
    CuAssertIntEquals(tc, true, rb_memcheck(rbuffer, wbuffer, rlen));

    // hexdump(rbuffer, rlen);
    // ringbuffer_dump(&rb);
    // printf("****************************write 4**************************************\n");
    
    wlen = ringbuffer_write(&rb, wbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + 2*RINGBUFFER_TEST_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + 2*RINGBUFFER_TEST_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.rptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + RINGBUFFER_TEST_SIZE, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, wlen);

    // ringbuffer_dump(&rb);
    // printf("****************************read 4**************************************\n");
    rlen = ringbuffer_read(&rb, rbuffer, RINGBUFFER_TEST_SIZE);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + 2*RINGBUFFER_TEST_SIZE, rb.wptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + 2*RINGBUFFER_TEST_SIZE, rb.wptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + 2*RINGBUFFER_TEST_SIZE, rb.rptr.head);
    CuAssertIntEquals(tc, RINGBUFFER_SIZE + 2*RINGBUFFER_TEST_SIZE, rb.rptr.tail);
    CuAssertIntEquals(tc, RINGBUFFER_TEST_SIZE, rlen);
    CuAssertIntEquals(tc, true, rb_memcheck(rbuffer, wbuffer, rlen));
    // hexdump(rbuffer, rlen);
    // ringbuffer_dump(&rb);
    ringbuffer_free(&rb);

}

CuSuite* CuGetSuite(void)
{
	CuSuite* suite = CuSuiteNew();

	SUITE_ADD_TEST(suite, test_rb_write_1);
	// SUITE_ADD_TEST(suite, test_rb_write_2);
    return suite;
}

void RunAllTests(void)
{
	CuString *output = CuStringNew();
	CuSuite* suite = CuSuiteNew();

	CuSuiteAddSuite(suite, CuGetSuite());

	CuSuiteRun(suite);
	CuSuiteSummary(suite, output);
	CuSuiteDetails(suite, output);
	printf("%s\n", output->buffer);
    CuStringDelete(output);
    CuSuiteDelete(suite);
}

int main(int argc, char const *argv[])
{

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
   // pthread_create();

    RunAllTests();
    return 0;
}

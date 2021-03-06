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
    ???1???thread??????????????????????????????,??????????????????
    ???2???attr????????????????????????????????????????????????NULL????????????????????????????????????
    ???3???start_routine???arg?????????????????????????????????????????????????????????start_routine?????????,????????????????????????
    ???4????????????:????????????0,????????????????????????
    ??????id????????????thread_t,??????????????????????????????????????????,?????????????????????thread_t???????????????????????????????????????pthread_self()???????????????????????????id
    ??????id????????????pid_t,???????????????id??????????????????????????????,??????getpid()???????????????????????????id,????????????????????????
    int pthread_create(pthread_t * thread, const pthread_arrt_t* attr,void*(*start_routine)(void *), void* arg);
    */

    /*
    ?????????????????????pthread_cancel?????????pthread_exit??????
    ??????????????????????????????????????????,?????????????????????:
    1. ???????????????return????????????????????????????????????,???main??????return???????????????exit???
    2. ????????????????????????pthread_cancel??????????????????????????????????????????
    3. ??????????????????pthread_exit????????????
    int pthread_cancel(pthread_t thread);
    */
   // pthread_create();

    RunAllTests();
    return 0;
}
